BOOL sub_100049B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10005B16C();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void sub_100049C24()
{
  sub_10000AE68();
  v1 = v0;
  v2 = type metadata accessor for Sport();
  sub_10000AC48();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000ADA0();
  v8 = v7 - v6;
  if (*(v1 + 16))
  {
    sub_10005AF24();
    sub_100059CC8(v9, 255, v10);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = v1 + 56;
    v18 = v1;
    sub_10005B16C();
    v14 = ~v13;
    do
    {
      v15 = v12 & v14;
      if (((1 << (v12 & v14)) & *(v11 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v4 + 16))(v8, *(v18 + 48) + *(v4 + 72) * v15, v2);
      sub_10005AF24();
      sub_100059CC8(&qword_1000DC4E8, 255, v16);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v4 + 8))(v8, v2);
      v12 = v15 + 1;
    }

    while ((v17 & 1) == 0);
  }

  sub_10000AE50();
}

uint64_t sub_100049DE4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, Hasher.init(_seed:)(), sub_100065350(v15, v3), Hasher._finalize()(), sub_10005B16C(), v6 = v5 & ~v4, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v4;
    while (1)
    {
      v8 = 0xEC00000076742E65;
      v9 = 0x6C7070612E6D6F63;
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v9 = 0xD000000000000010;
          v8 = 0x80000001000B03E0;
          break;
        case 2:
          v9 = 0xD000000000000011;
          v8 = 0x80000001000B0400;
          break;
        case 3:
          break;
        default:
          v9 = 0xD000000000000010;
          v8 = 0x80000001000B03C0;
          break;
      }

      v10 = 0x6C7070612E6D6F63;
      v11 = 0xEC00000076742E65;
      switch(v3)
      {
        case 1:
          v10 = 0xD000000000000010;
          v11 = 0x80000001000B03E0;
          break;
        case 2:
          v10 = 0xD000000000000011;
          v11 = 0x80000001000B0400;
          break;
        case 3:
          break;
        default:
          v10 = 0xD000000000000010;
          v11 = 0x80000001000B03C0;
          break;
      }

      if (v9 == v10 && v8 == v11)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10004A020(uint64_t a1)
{
  v43 = type metadata accessor for SportsActivityAttributes();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v36[1] = v1;
  v51 = _swiftEmptyArrayStorage;
  sub_100017CA0(0, v5, 0);
  v6 = v51;
  result = sub_10001F0AC(a1);
  v10 = result;
  v11 = 0;
  v12 = a1 + 64;
  v40 = a1;
  v41 = (v3 + 8);
  v37 = a1 + 72;
  v38 = v5;
  v39 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_24;
      }

      v44 = v9;
      v45 = v11;
      v46 = v8;

      v50 = v6;
      v14 = v42;
      Activity.attributes.getter();
      v15 = SportsActivityAttributes.canonicalId.getter();
      v48 = v16;
      v49 = v15;
      v17 = *v41;
      v18 = v43;
      (*v41)(v14, v43);
      Activity.attributes.getter();
      v19 = SportsActivityAttributes.bundleId.getter();
      v47 = v20;
      v21 = v14;
      v6 = v50;
      v17(v21, v18);

      v51 = v6;
      v23 = v6[2];
      v22 = v6[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_100017CA0((v22 > 1), v23 + 1, 1);
        v6 = v51;
      }

      v6[2] = v23 + 1;
      v24 = &v6[4 * v23];
      v25 = v48;
      v24[4] = v49;
      v24[5] = v25;
      v26 = v47;
      v24[6] = v19;
      v24[7] = v26;
      a1 = v40;
      v27 = 1 << *(v40 + 32);
      if (v10 >= v27)
      {
        goto LABEL_25;
      }

      v12 = v39;
      v28 = *(v39 + 8 * v13);
      if ((v28 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v40 + 36) != v46)
      {
        goto LABEL_27;
      }

      v29 = v28 & (-2 << (v10 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v30 = v38;
      }

      else
      {
        v31 = v13 << 6;
        v32 = v13 + 1;
        v30 = v38;
        v33 = (v37 + 8 * v13);
        while (v32 < (v27 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_10001F0EC(v10, v46, v44 & 1);
            v27 = __clz(__rbit64(v34)) + v31;
            goto LABEL_18;
          }
        }

        result = sub_10001F0EC(v10, v46, v44 & 1);
      }

LABEL_18:
      v11 = v45 + 1;
      if (v45 + 1 == v30)
      {
        return v6;
      }

      v9 = 0;
      v8 = *(a1 + 36);
      v10 = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10004A374(uint64_t a1)
{
  v49 = type metadata accessor for SportsActivityAttributes();
  v3 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v39 - v6;
  v7 = type metadata accessor for SportsActivityManagedContext(0);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v39 = v1;
  v57 = _swiftEmptyArrayStorage;
  sub_100017CC0(0, v10, 0);
  v11 = v57;
  result = sub_10001F0AC(a1);
  v15 = 0;
  v16 = a1 + 64;
  v43 = a1;
  v44 = (v3 + 8);
  v40 = a1 + 72;
  v41 = v10;
  v42 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v17 = result >> 6;
      if ((*(v16 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v13)
      {
        goto LABEL_24;
      }

      v52 = v13;
      v53 = 1 << result;
      v50 = v14;
      v51 = v15;
      v56 = result;

      v18 = v9;
      v19 = v47;
      Activity.attributes.getter();
      v20 = SportsActivityAttributes.canonicalId.getter();
      v54 = v21;
      v55 = v20;
      v22 = v11;
      v23 = *v44;
      v24 = v49;
      (*v44)(v19, v49);
      v25 = v48;
      Activity.attributes.getter();
      SportsActivityAttributes.createdDate.getter();
      v26 = v25;
      v9 = v18;
      v23(v26, v24);
      v11 = v22;

      v27 = v54;
      *v18 = v55;
      v18[1] = v27;
      v57 = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_100017CC0(v28 > 1, v29 + 1, 1);
        v11 = v57;
      }

      v11[2] = v29 + 1;
      sub_10005AB04(v9, v11 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v29);
      a1 = v43;
      v30 = 1 << *(v43 + 32);
      result = v56;
      if (v56 >= v30)
      {
        goto LABEL_25;
      }

      v16 = v42;
      v31 = *(v42 + 8 * v17);
      if ((v31 & v53) == 0)
      {
        goto LABEL_26;
      }

      if (*(v43 + 36) != v52)
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v56 & 0x3F));
      if (v32)
      {
        v30 = __clz(__rbit64(v32)) | v56 & 0x7FFFFFFFFFFFFFC0;
        v33 = v41;
      }

      else
      {
        v34 = v17 << 6;
        v35 = v17 + 1;
        v33 = v41;
        v36 = (v40 + 8 * v17);
        while (v35 < (v30 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_10001F0EC(v56, v52, v50 & 1);
            v30 = __clz(__rbit64(v37)) + v34;
            goto LABEL_18;
          }
        }

        sub_10001F0EC(v56, v52, v50 & 1);
      }

LABEL_18:
      v15 = v51 + 1;
      if (v51 + 1 == v33)
      {
        return v11;
      }

      v14 = 0;
      v13 = *(a1 + 36);
      result = v30;
      if (v30 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_10004A77C()
{
  sub_10000AE68();
  sub_10005B1C0();
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v5);
  sub_10000ACFC();
  __chkstk_darwin(v6);
  sub_10005B124(v7, v16);
  v8 = type metadata accessor for TaskPriority();
  v9 = sub_10005B07C();
  v11 = sub_100008B84(v9, v10, v8);

  if (v11 == 1)
  {
    sub_10001BB44(v1, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10005B334();
    (*(v12 + 8))(v1, v8);
  }

  v13 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10001BB44(v3, &qword_1000DC5A8, &qword_1000AAFD0);
    sub_10005B070();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_10005B070();
  v14 = swift_allocObject();
  sub_10005B39C(v14);
  swift_task_create();

  sub_10001BB44(v3, &qword_1000DC5A8, &qword_1000AAFD0);

LABEL_9:
  sub_10000AE50();
}

void sub_10004A9F4()
{
  sub_10000AE68();
  sub_10005B1C0();
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v5);
  sub_10000ACFC();
  __chkstk_darwin(v6);
  sub_10005B124(v7, v16);
  v8 = type metadata accessor for TaskPriority();
  v9 = sub_10005B07C();
  v11 = sub_100008B84(v9, v10, v8);

  if (v11 == 1)
  {
    sub_10001BB44(v1, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10005B334();
    (*(v12 + 8))(v1, v8);
  }

  v13 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10001BB44(v3, &qword_1000DC5A8, &qword_1000AAFD0);
    sub_10005B070();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_10005B070();
  v14 = swift_allocObject();
  sub_10005B39C(v14);
  swift_task_create();

  sub_10001BB44(v3, &qword_1000DC5A8, &qword_1000AAFD0);

LABEL_9:
  sub_10000AE50();
}

uint64_t sub_10004AC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_1000459F8(a3, v24 - v10, &qword_1000DC5A8, &qword_1000AAFD0);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100008B84(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10001BB44(v11, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
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
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100003998(&qword_1000DDAF0, &qword_1000AC590);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001BB44(a3, &qword_1000DC5A8, &qword_1000AAFD0);

      return v21;
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

  sub_10001BB44(a3, &qword_1000DC5A8, &qword_1000AAFD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_100003998(&qword_1000DDAF0, &qword_1000AC590);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10004AF5C(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_1000CF280, v3);
  sub_10001C1DC();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t sub_10004AFAC(char a1)
{
  v65 = type metadata accessor for Date();
  sub_10000AC48();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000ADA0();
  v64 = v6 - v5;
  v57 = sub_100003998(&qword_1000DDB38, &qword_1000AC630);
  sub_10000AC48();
  v50 = v7;
  sub_10000ACFC();
  __chkstk_darwin(v8);
  sub_10000ADEC();
  v49 = v9;
  v55 = sub_100003998(&qword_1000DDB40, &qword_1000AC638);
  sub_10000AC48();
  v53 = v10;
  sub_10000ACFC();
  __chkstk_darwin(v11);
  sub_10000ADEC();
  v51 = v12;
  v56 = sub_100003998(&qword_1000DDB48, &qword_1000AC640);
  sub_10000AC48();
  v54 = v13;
  sub_10000ACFC();
  __chkstk_darwin(v14);
  sub_10000ADEC();
  v52 = v15;
  sub_100003998(&qword_1000DDB50, &qword_1000AC648);
  sub_10000AC48();
  v60 = v17;
  v61 = v16;
  sub_10000ACFC();
  __chkstk_darwin(v18);
  sub_10000ADEC();
  v58 = v19;
  sub_10005B25C(*(v1 + 104) + 16, v78);

  v21 = sub_10004A020(v20);

  v22 = *(v21 + 16);
  v23 = _swiftEmptyArrayStorage;
  v62 = v1;
  if (v22)
  {
    v77 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v63 = (v3 + 8);
    v24 = v21 + 56;
    while (1)
    {
      v25 = *(v24 - 24);
      v26 = *(v24 - 16);
      v27 = qword_1000DB9C0;

      if (v27 != -1)
      {
        swift_once();
      }

      sub_10000BC30(qword_1000E6CC8 + 24, v71);
      sub_10000BC8C(v71, v74);
      v28 = v71[5];
      sub_10000BC8C(&v72, &v75);
      sub_10000BC8C(&v73, v76);
      v74[5] = v28;
      v76[5] = 0xD000000000000011;
      v76[6] = 0x80000001000B0480;
      v76[7] = v25;
      v76[8] = v26;

      Date.init()();
      Date.timeIntervalSince1970.getter();
      v30 = v29;
      result = (*v63)(v64, v65);
      v32 = v30 * 1000.0;
      if (COERCE__INT64(fabs(v30 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v32 <= -1.0)
      {
        goto LABEL_12;
      }

      if (v32 >= 1.84467441e19)
      {
        goto LABEL_13;
      }

      v76[9] = v32;
      v33 = type metadata accessor for ActivityAuthorization();
      v34 = [objc_allocWithZone(v33) init];
      v35 = sub_1000499E0();
      v66 = v22;
      v37 = v36;
      v70[3] = v33;
      v70[4] = &off_1000D1900;
      v70[0] = v34;
      type metadata accessor for ActivityCapUtility();
      sub_10005B19C();
      v38 = swift_allocObject();
      v39 = sub_10000B90C(v70, v33);
      __chkstk_darwin(v39);
      sub_10000ADA0();
      v42 = (v41 - v40);
      (*(v43 + 16))(v41 - v40);
      v44 = *v42;
      v68 = v33;
      v69 = &off_1000D1900;

      *&v67 = v44;
      sub_10000BCF0(v71);
      sub_10000A8F8(&v67, v38 + 16);
      *(v38 + 56) = v35;
      *(v38 + 64) = v37;
      sub_100008A94(v70);
      v76[10] = v38;
      sub_10002F5FC();

      sub_10003248C(v74);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v24 += 32;
      v22 = v66 - 1;
      if (v66 == 1)
      {
        v23 = v77;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:
    v71[0] = v23;
    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    v45 = sub_10001BFB0();
    sub_100003998(v45, v46);
    sub_10005A6D8(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
    sub_10005A6D8(&qword_1000DDB60, &qword_1000DDB58, &unk_1000AC650);
    Publishers.MergeMany.init<A>(_:)();
    sub_10005A6D8(&qword_1000DDB68, &qword_1000DDB38, &qword_1000AC630);
    Publisher.collect()();
    (*(v50 + 8))(v49, v57);
    v47 = swift_allocObject();
    *(v47 + 16) = v21;
    *(v47 + 24) = a1 & 1;
    static Subscribers.Demand.unlimited.getter();
    sub_10005A6D8(&qword_1000DDB70, &qword_1000DDB40, &qword_1000AC638);
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v53 + 8))(v51, v55);
    sub_10005A6D8(&qword_1000DDB78, &qword_1000DDB48, &qword_1000AC640);
    Publisher.collect()();
    (*(v54 + 8))(v52, v56);
    sub_10005B070();
    v48 = swift_allocObject();
    *(v48 + 16) = a1 & 1;
    *(v48 + 24) = v62;
    sub_10005A6D8(&qword_1000DDB80, &qword_1000DDB50, &qword_1000AC648);

    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v60 + 8))(v58, v61);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10004B8B0(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

_BYTE *sub_10004B8D8()
{
  result = sub_100059744(&off_1000CF2D0);
  qword_1000E6CF8 = result;
  return result;
}

uint64_t sub_10004B900(uint64_t a1, uint64_t a2)
{
  result = sub_10005B274();
  switch(v3)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_10004B99C(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_1000CEE40, v3);
  sub_10001C1DC();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10004BA08@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004B99C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004BA38@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_10004B900(*v2, a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004BA88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004AF5C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004BAB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004B8B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ActivityState.description.getter()
{
  v1 = type metadata accessor for ActivityState();
  sub_10000AC48();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000ADA0();
  (*(v3 + 16))(v6 - v5, v0, v1);
  v7 = sub_10001C6B0();
  v9 = v8(v7);
  if (v9 == enum case for ActivityState.active(_:))
  {
    return 0x657669746341;
  }

  if (v9 == enum case for ActivityState.ended(_:) || v9 == enum case for ActivityState.dismissed(_:))
  {
    return 0x6465646E45;
  }

  if (v9 == enum case for ActivityState.stale(_:))
  {
    return 0x656C617453;
  }

  v12 = sub_10001C6B0();
  v13(v12);
  return 0x6E776F6E6B6E55;
}

uint64_t sub_10004BC60(void *a1)
{
  v2 = v1;
  v3 = a1;
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  *(v1 + 64) = &_swiftEmptySetSingleton;
  sub_10000BC8C(a1, v1 + 24);
  sub_10004C0B4();
  sub_100008614(v3, v3[3]);
  dispatch thunk of PersistentStorable.replaceActivities(activeIds:dismissedIds:)();
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v7 = 136315394;

    v8 = Array.description.getter();
    v9 = v3;
    v11 = v10;

    v12 = sub_1000170D4(v8, v11, v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;

    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_1000170D4(v13, v15, v18);

    *(v7 + 14) = v16;
    v3 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "ActivityStore: initialized with active activities:%s, dismissed activities:%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10004C564();
  sub_100008A94(v3);
  return v2;
}

void *sub_10004C0B4()
{
  v43 = type metadata accessor for ActivityState();
  v0 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SportsActivityAttributes();
  v2 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  v5 = static Activity.activities.getter();
  result = sub_10001BE20(v5);
  v39 = result;
  if (!result)
  {

    return _swiftEmptyArrayStorage;
  }

  v7 = 0;
  v32 = v5 & 0xFFFFFFFFFFFFFF8;
  v37 = (v2 + 8);
  v38 = v5 & 0xC000000000000001;
  v36 = (v0 + 88);
  v35 = enum case for ActivityState.active(_:);
  v33 = enum case for ActivityState.dismissed(_:);
  v34 = enum case for ActivityState.ended(_:);
  v31 = enum case for ActivityState.stale(_:);
  v30 = (v0 + 8);
  v8 = _swiftEmptyArrayStorage;
  v41 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v38)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v32 + 16))
      {
        goto LABEL_37;
      }
    }

    v9 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      break;
    }

    Activity.attributes.getter();
    v10 = SportsActivityAttributes.canonicalId.getter();
    v12 = v11;
    (*v37)(v4, v40);
    v13 = v42;
    dispatch thunk of Activity.activityState.getter();
    v14 = (*v36)(v13, v43);
    if (v14 != v35)
    {
      if (v14 == v34 || v14 == v33)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = v41;
        }

        else
        {
          sub_100016520();
        }

        v20 = v18[2];
        v19 = v18[3];
        v41 = v18;
        if (v20 >= v19 >> 1)
        {
          sub_100016520();
          v41 = v28;
        }

        v21 = v41;
        v41[2] = v20 + 1;
        v16 = &v21[2 * v20];
        goto LABEL_24;
      }

      if (v14 != v31)
      {

        if (qword_1000DBA38 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_100007DE8(v22, qword_1000E6D90);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Unused case, this could cause serious regressions!", v25, 2u);
        }

        result = (*v30)(v42, v43);
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100016520();
      v8 = v26;
    }

    v15 = v8[2];
    if (v15 >= v8[3] >> 1)
    {
      sub_100016520();
      v8 = v27;
    }

    v8[2] = v15 + 1;
    v16 = &v8[2 * v15];
LABEL_24:
    v16[4] = v10;
    v16[5] = v12;
LABEL_25:
    ++v7;
    if (v9 == v39)
    {

      return v8;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10004C564()
{
  v0 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v25 - v4;
  v5 = type metadata accessor for ActivityState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  v9 = static Activity.activities.getter();
  result = sub_10001BE20(v9);
  if (!result)
  {
  }

  v11 = result;
  if (result >= 1)
  {
    v12 = 0;
    v33 = v9 & 0xC000000000000001;
    v31 = (v6 + 88);
    v32 = enum case for ActivityState.active(_:);
    v26 = (v6 + 8);
    v27 = result;
    v28 = v9;
    v29 = v5;
    do
    {
      if (v33)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      dispatch thunk of Activity.activityState.getter();
      v14 = (*v31)(v8, v5);
      if (v14 == v32)
      {
        v15 = type metadata accessor for TaskPriority();
        v16 = v34;
        sub_100008E2C(v34, 1, 1, v15);
        v17 = swift_allocObject();
        v17[2] = 0;
        v17[3] = 0;
        v18 = v30;
        v17[4] = v13;
        v17[5] = v18;
        sub_1000459F8(v16, v2, &qword_1000DC5A8, &qword_1000AAFD0);
        LODWORD(v16) = sub_100008B84(v2, 1, v15);

        if (v16 == 1)
        {
          sub_10001BB44(v2, &qword_1000DC5A8, &qword_1000AAFD0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(*(v15 - 8) + 8))(v2, v15);
        }

        v19 = v2;
        v20 = v17[2];
        swift_unknownObjectRetain();

        if (v20)
        {
          swift_getObjectType();
          v21 = dispatch thunk of Actor.unownedExecutor.getter();
          v23 = v22;
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        sub_10001BB44(v34, &qword_1000DC5A8, &qword_1000AAFD0);
        v24 = swift_allocObject();
        *(v24 + 16) = &unk_1000AC5F8;
        *(v24 + 24) = v17;
        if (v23 | v21)
        {
          v35 = 0;
          v36 = 0;
          v37 = v21;
          v38 = v23;
        }

        v5 = v29;
        v2 = v19;
        swift_task_create();

        v11 = v27;
        v9 = v28;
      }

      else
      {

        (*v26)(v8, v5);
      }

      ++v12;
    }

    while (v11 != v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for ActivityState();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_100003998(&qword_1000DDB10, &qword_1000AC5C0);
  v5[8] = swift_task_alloc();
  v7 = sub_100003998(&qword_1000DDB18, &qword_1000AC5C8);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_100003998(&qword_1000DDB20, &unk_1000AC5D0);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10004CB8C);
}

uint64_t sub_10004CB8C()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B21C();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  v1 = sub_10005AEA4();
  v2(v1);
  v3 = enum case for ActivityState.ended(_:);
  *(v0 + 136) = enum case for ActivityState.active(_:);
  *(v0 + 140) = v3;
  v4 = enum case for ActivityState.stale(_:);
  *(v0 + 144) = enum case for ActivityState.dismissed(_:);
  *(v0 + 148) = v4;
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 120) = v5;
  *v5 = v6;
  sub_10005AD7C(v5);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v9);
}

uint64_t sub_10004CC80()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_10001C740();

  return _swift_task_switch(v7);
}

uint64_t sub_10004CD94()
{
  sub_10005B2D0();
  sub_10001C524();
  v1 = *(v0 + 40);
  v2 = sub_10005B07C();
  if (sub_100008B84(v2, v3, v1) == 1)
  {
    v4 = sub_10005B1A8();
    v5(v4);

    sub_10001BEDC();
    sub_10001C74C();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v15 = *(v0 + 136);
  v16 = sub_10005B108();
  v17(v16);
  v18 = sub_10000AF64();
  v20 = v19(v18);
  if (v20 == v15)
  {
    goto LABEL_6;
  }

  if (v20 == *(v0 + 140) || v20 == *(v0 + 144))
  {
    if (qword_1000DB9F0 == -1)
    {
LABEL_14:
      sub_10001C74C();

      return _swift_task_switch(v24);
    }

LABEL_25:
    sub_10005AD48();
    swift_once();
    goto LABEL_14;
  }

  if (v20 == *(v0 + 148))
  {
LABEL_6:
    if (qword_1000DB9F0 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v21, v22);
  }

  v26 = type metadata accessor for Logger();
  sub_10005B0AC(v26, qword_1000E6D90);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (sub_10005B3BC(v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    sub_10005B37C(&_mh_execute_header, v30, v31, "Unused case, this could cause serious regressions!");
    sub_10000B008(v29);
  }

  v32 = sub_10005B088();
  v33(v32);
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 120) = v34;
  *v34 = v35;
  sub_10005AD7C(v34);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v36, v37, v38);
}

uint64_t sub_10004D030()
{
  sub_10001BEC4();
  *(v0 + 16) = *(v0 + 128);
  v1 = sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10005B0C4(v1);

  return swift_willThrowTypedImpl();
}

uint64_t sub_10004D0A8()
{
  sub_10001BEC4();
  sub_10004D1D8(*(v0 + 24));
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 120) = v1;
  *v1 = v2;
  v3 = sub_10005AD7C(v1);

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v5);
}

uint64_t sub_10004D140()
{
  sub_10001BEC4();
  sub_10004D838(*(v0 + 24));
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 120) = v1;
  *v1 = v2;
  v3 = sub_10005AD7C(v1);

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v5);
}

void sub_10004D1D8(uint64_t a1)
{
  v3 = type metadata accessor for ActivityState();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsActivityAttributes();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Activity.attributes.getter();
  v9 = SportsActivityAttributes.canonicalId.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v38 = v1[2];
  sub_100086D80(a1, v9, v11);
  v1[2] = v38;
  swift_endAccess();
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100007DE8(v12, qword_1000E6D90);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v13;
    v17 = v16;
    v39[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = Activity.id.getter();
    v20 = sub_1000170D4(v18, v19, v39);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1000170D4(v9, v11, v39);
    _os_log_impl(&_mh_execute_header, v14, v15, "ActivityStore: writing activity '%s' for '%s' to persistence", v17, 0x16u);
    swift_arrayDestroy();
  }

  sub_100008614(v1 + 3, v1[6]);
  dispatch thunk of PersistentStorable.writeActivity(activityId:)();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = v34;
    dispatch thunk of Activity.activityState.getter();
    v25 = ActivityState.description.getter();
    v27 = v26;
    (*(v35 + 8))(v24, v36);
    v28 = sub_1000170D4(v25, v27, v39);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;

    sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
    v29 = Dictionary.description.getter();
    v31 = v30;

    v32 = sub_1000170D4(v29, v31, v39);

    *(v23 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "ActivityStore: write complete with state %s. Active activities: %s", v23, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10004D838(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityState();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsActivityAttributes();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Activity.attributes.getter();
  v12 = SportsActivityAttributes.canonicalId.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_10007B938(v12, v14);
  swift_endAccess();

  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v65 = v12;
  v15 = type metadata accessor for Logger();
  sub_100007DE8(v15, qword_1000E6D90);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v63 = v1;
  v64 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = Activity.id.getter();
    v22 = sub_1000170D4(v20, v21, v67);

    *(v19 + 4) = v22;
    v23 = v65;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1000170D4(v23, v14, v67);
    _os_log_impl(&_mh_execute_header, v16, v17, "ActivityStore: removing activity '%s' for '%s' from persistence", v19, 0x16u);
    swift_arrayDestroy();
    v2 = v63;
  }

  sub_100008614((v2 + 24), *(v2 + 48));
  dispatch thunk of PersistentStorable.removeActivity(activityId:)();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v26 = 136315650;
    v27 = Activity.id.getter();
    v29 = sub_1000170D4(v27, v28, v67);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1000170D4(v65, v14, v67);
    *(v26 + 22) = 2080;
    v30 = v57;
    dispatch thunk of Activity.activityState.getter();
    v31 = ActivityState.description.getter();
    v33 = v32;
    (*(v58 + 8))(v30, v59);
    v34 = sub_1000170D4(v31, v33, v67);

    *(v26 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "ActivityStore: unregistering activity '%s' with canonicalId '%s' at state %s", v26, 0x20u);
    swift_arrayDestroy();
  }

  if (qword_1000DB9C0 != -1)
  {
    swift_once();
  }

  sub_10000BC30(qword_1000E6CC8 + 24, v67);
  sub_10000BC8C(v67, v70);
  v35 = v67[5];
  sub_10000BC8C(&v68, &v71);
  sub_10000BC8C(&v69, v72);
  v70[5] = v35;
  v72[5] = 0xD000000000000011;
  v72[6] = 0x80000001000B0480;
  v72[7] = v65;
  v72[8] = v14;

  v36 = v60;
  v37 = Date.init()();
  sub_10008C99C(v37);
  v39 = v38;
  (*(v61 + 8))(v36, v62);
  v72[9] = v39;
  v40 = type metadata accessor for ActivityAuthorization();
  v41 = [objc_allocWithZone(v40) init];
  v42 = sub_1000499E0();
  v44 = v43;
  v66[3] = v40;
  v66[4] = &off_1000D1900;
  v66[0] = v41;
  type metadata accessor for ActivityCapUtility();
  v45 = swift_allocObject();
  v46 = sub_10000B90C(v66, v40);
  v47 = __chkstk_darwin(v46);
  v49 = (&v56 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49, v47);
  v51 = *v49;
  v45[5] = v40;
  v45[6] = &off_1000D1900;
  v45[2] = v51;
  v45[7] = v42;
  v45[8] = v44;
  sub_100008A94(v66);

  sub_10000BCF0(v67);
  v72[10] = v45;
  v67[0] = sub_10002F5FC();
  v52 = swift_allocObject();
  *(v52 + 16) = v65;
  *(v52 + 24) = v14;
  v53 = swift_allocObject();
  v54 = v63;
  *(v53 + 16) = v64;
  *(v53 + 24) = v54;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10005A6D8(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_10003248C(v70);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10004E208(void *a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    swift_errorRetain();
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100007DE8(v5, qword_1000E6D48);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_1000170D4(a2, a3, &v12);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_1000170D4(v9, v10, &v12);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Tempo /unregister failed for id=%s with error=%s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10004E404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ActivityState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100007DE8(v7, qword_1000E6D90);

  v20 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v8))
  {
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315394;
    dispatch thunk of Activity.activityState.getter();
    v10 = ActivityState.description.getter();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    v13 = sub_1000170D4(v10, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_beginAccess();

    sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = sub_1000170D4(v14, v16, &v21);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v20, v8, "ActivityStore: unregister complete with state %s. Active activities: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v20;
  }
}

uint64_t sub_10004E6F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_100017538(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10004E78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 168) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v8 = type metadata accessor for ActivityUIDismissalPolicy();
  *(v6 + 104) = v8;
  *(v6 + 112) = *(v8 - 8);
  *(v6 + 120) = swift_task_alloc();
  sub_100003998(&qword_1000DDB30, &unk_1000AC5E0);
  *(v6 + 128) = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  *(v6 + 136) = qword_1000E6D00;

  return _swift_task_switch(sub_10004E930);
}

void sub_10004E930()
{
  v1 = sub_10004E6F4(*(v0 + 32), *(v0 + 40));
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *(v0 + 128);
    if (*(v0 + 168))
    {
      v3 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
      sub_10001C2AC();
      v4 = sub_10005B03C();
      v5(v4);
      sub_10005B354();
      sub_100008E2C(v6, v7, v8, v3);
      static ActivityUIDismissalPolicy.immediate.getter();
      sub_10005B18C(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      *v9 = v0;
      v10 = sub_10004EF58;
    }

    else
    {
      v13 = *(v0 + 96);
      v14 = *(v0 + 72);
      v15 = *(v0 + 80);
      v16 = *(v0 + 48);
      v17 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
      sub_10001C2AC();
      (*(v18 + 16))(v2, v16, v17);
      sub_10005B354();
      sub_100008E2C(v19, v20, v21, v17);
      static Date.now.getter();
      static Date.+ infix(_:_:)();
      v22 = *(v15 + 8);
      v23 = sub_10005B2B8();
      v22(v23);
      static ActivityUIDismissalPolicy.after(_:)();
      (v22)(v13, v14);
      sub_10005B18C(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
      v9 = swift_task_alloc();
      *(v0 + 152) = v9;
      *v9 = v0;
      v10 = sub_10004EBB0;
    }

    v9[1] = v10;
    sub_10005B308(*(v0 + 128));
    sub_10005B1D8();

    __asm { BR              X2 }
  }

  sub_10005AEB4();
  sub_10005B1D8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10004EBB0()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10001BF54();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;

  v5 = sub_10005AEA4();
  v6(v5);
  sub_10001BB44(v2, &qword_1000DDB30, &unk_1000AC5E0);
  sub_10001BF60();
  sub_10001C74C();

  return _swift_task_switch(v7);
}

void sub_10004ED28()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v1._countAndFlagsBits = 0x207265746661;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  Double.write<A>(to:)();
  v2._countAndFlagsBits = 115;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v3, v4);
  }

  v5 = type metadata accessor for Logger();
  sub_10005B0AC(v5, qword_1000E6D90);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v11 = sub_10005B3EC();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1000170D4(v9, v8, &v18);
    *(v10 + 12) = 2080;
    v12 = sub_10000AF64();
    v15 = sub_1000170D4(v12, v13, v14);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "LiveActivityManager.destroyActivity: activity for '%s' destroyed %s", v10, 0x16u);
    swift_arrayDestroy();
    sub_10000B008(v11);
    sub_10005AED8();
  }

  else
  {
  }

  sub_10005AEB4();
  sub_10005B1D8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10004EF58()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10001BF54();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;

  v5 = sub_10005AEA4();
  v6(v5);
  sub_10001BB44(v2, &qword_1000DDB30, &unk_1000AC5E0);
  sub_10001BF60();
  sub_10001C74C();

  return _swift_task_switch(v7);
}

uint64_t sub_10004F0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = v3;
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, a2, a3);
  }

  v4 = type metadata accessor for Logger();
  sub_10005B0AC(v4, qword_1000E6D90);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v3 + 32);
    v7 = *(v3 + 40);
    v9 = swift_slowAlloc();
    v14 = sub_10005B3EC();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000170D4(v8, v7, &v14);
    *(v9 + 12) = 2080;
    v10 = sub_1000170D4(0x74616964656D6D69, 0xEB00000000796C65, &v14);

    *(v9 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "LiveActivityManager.destroyActivity: activity for '%s' destroyed %s", v9, 0x16u);
    swift_arrayDestroy();
    sub_10005AED8();
    sub_10005AFC4();
  }

  else
  {
  }

  v11 = sub_10005AEB4();

  return v12(v11);
}

uint64_t sub_10004F2CC()
{

  sub_100008A94((v0 + 24));

  return v0;
}

uint64_t sub_10004F2FC()
{
  v0 = sub_10004F2CC();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10004F350()
{
  type metadata accessor for LiveActivityActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1000E6D00 = v0;
  return result;
}

uint64_t sub_10004F3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10004F40C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LiveActivityActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

void sub_10004F444()
{
  sub_100003998(&qword_1000DDAA8, &unk_1000AC510);
  v0 = type metadata accessor for Sport();
  sub_10000AC48();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AB8E0;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, enum case for Sport.baseball(_:), v0);
  v8(v7 + v4, enum case for Sport.basketball(_:), v0);
  v8(v7 + 2 * v4, enum case for Sport.football(_:), v0);
  v8(v7 + 3 * v4, enum case for Sport.hockey(_:), v0);
  v8(v7 + 4 * v4, enum case for Sport.soccer(_:), v0);
  sub_100015300();
  qword_1000E6D08 = v9;
}

void sub_10004F5B8(uint64_t a1)
{
  type metadata accessor for LiveActivityManager();
  v1 = swift_allocObject();
  sub_10004F888();
  qword_1000E6D10 = v1;
}

uint64_t sub_10004F60C(uint64_t a1, uint64_t a2)
{
  if ((sub_10004F7BC(a1, a2) & 1) == 0)
  {
    return 0;
  }

  sub_10000AF64();
  return dispatch thunk of ActivityAuthorization.areActivitiesEnabled(forBundleId:)() & 1;
}

uint64_t sub_10004F658(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatus();
  sub_10000AC48();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  ActivityAuthorizationInfo.activityAuthorizationStatus(for:)();
  (*(v4 + 104))(v7, enum case for ActivityAuthorizationInfo.ActivityAuthorizationStatus.alwaysAllow(_:), v2);
  v11 = static ActivityAuthorizationInfo.ActivityAuthorizationStatus.== infix(_:_:)();
  v12 = *(v4 + 8);
  v12(v7, v2);
  v12(v10, v2);
  return v11 & 1;
}

id sub_10004F7BC(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(LSApplicationRecord);

  v4 = sub_100058D5C(a1, a2, 1);
  v6 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 supportsLiveActivities];

  return v5;
}

void sub_10004F888()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v4 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v4);
  sub_10000ACFC();
  __chkstk_darwin(v5);
  *(v0 + 56) = 0;
  *(v0 + 64) = &_swiftEmptySetSingleton;
  *(v0 + 72) = 0;
  v6 = type metadata accessor for ActivityAuthorization();
  *(v0 + 80) = [objc_allocWithZone(v6) init];
  type metadata accessor for ActivityAuthorizationInfo();
  swift_allocObject();
  *(v0 + 88) = ActivityAuthorizationInfo.init()();
  v7 = [objc_allocWithZone(v6) init];
  v8 = sub_1000499E0();
  v10 = v9;
  v38 = v6;
  v39 = &off_1000D1900;
  v37[0] = v7;
  type metadata accessor for ActivityCapUtility();
  sub_10005B19C();
  v11 = swift_allocObject();
  v12 = sub_10000B90C(v37, v6);
  __chkstk_darwin(v12);
  sub_10000ADA0();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  v17 = *v15;
  v11[5] = v6;
  v11[6] = &off_1000D1900;
  v11[2] = v17;
  v11[7] = v8;
  v11[8] = v10;
  sub_100008A94(v37);
  *(v1 + 96) = v11;
  sub_1000459F8(v3, &v35, &qword_1000DCF18, &qword_1000AC470);
  if (v36)
  {
    sub_10000A8F8(&v35, v37);
  }

  else
  {
    v18 = type metadata accessor for PersistentStore();
    v19 = PersistentStore.__allocating_init()();
    v38 = v18;
    v39 = &protocol witness table for PersistentStore;
    v37[0] = v19;
    if (v36)
    {
      sub_10001BB44(&v35, &qword_1000DCF18, &qword_1000AC470);
    }
  }

  sub_10000BC8C(v37, v1 + 16);
  sub_10000BC8C(v37, &v35);
  type metadata accessor for ActivityStore();
  sub_10005B19C();
  swift_allocObject();
  *(v1 + 104) = sub_10004BC60(&v35);
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v20, v21);
  }

  v22 = type metadata accessor for Logger();
  sub_100007DE8(v22, qword_1000E6D90);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (sub_10005B3BC(v24))
  {
    v25 = sub_10001C4D0();
    v26 = sub_10003FC24();
    *&v35 = v26;
    *v25 = 136315138;
    v27 = sub_1000499E0();
    v29 = sub_1000170D4(v27, v28, &v35);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Current target app is: %s", v25, 0xCu);
    sub_100008A94(v26);
    sub_10000B008(v26);
    sub_10005AED8();
  }

  type metadata accessor for TaskPriority();
  sub_100045E00();
  sub_100008E2C(v30, v31, v32, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v1;

  sub_100045DBC();
  sub_10004A77C();

  sub_10004FE9C();
  sub_10001BB44(v3, &qword_1000DCF18, &qword_1000AC470);
  sub_100008A94(v37);
  sub_10000AE50();
}

uint64_t sub_10004FD14()
{
  sub_10001BEC4();
  sub_10004FD6C();
  sub_10001BEDC();

  return v0();
}

uint64_t sub_10004FD6C()
{
  type metadata accessor for InternalSettings();
  swift_initStaticObject();
  sub_100084324();
  swift_allocObject();
  swift_weakInit();
  sub_100003998(&qword_1000DDAC0, &qword_1000AC538);
  sub_10005A6D8(&qword_1000DDAC8, &qword_1000DDAC0, &qword_1000AC538);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10004FE9C()
{
  v1 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4._countAndFlagsBits = sub_1000499E0();
  ActivityAuthorizationInfo.subscribeToActivityAuthorizationStatusUpdates(for:)(v4);
  if (v5)
  {
  }

  v7 = type metadata accessor for TaskPriority();
  sub_100008E2C(v3, 1, 1, v7);
  v8 = qword_1000DB9F0;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1000E6D00;
  v11 = sub_100059CC8(&qword_1000DDA50, v9, type metadata accessor for LiveActivityActor);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v0;

  sub_10004A77C();
  *(v0 + 56) = v13;
}

uint64_t sub_100050044()
{
  if (*(v0 + 56))
  {

    Task.cancel()();
  }

  sub_100008A94((v0 + 16));

  return v0;
}

uint64_t sub_1000500D4()
{
  sub_100050044();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_100050174(char *a1, uint64_t a2)
{
  v3 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for TaskPriority();
    sub_100008E2C(v5, 1, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v8;
    *(v10 + 40) = v6;
    sub_10004A77C();
  }

  return result;
}

uint64_t sub_100050284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_1000502A8);
}

uint64_t sub_1000502A8()
{
  sub_10001BEC4();
  if (qword_1000DB9F0 != -1)
  {
    sub_10005AD48();
    swift_once();
  }

  return _swift_task_switch(sub_10005032C);
}

uint64_t sub_10005032C()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  sub_10001BEDC();
  return v1();
}

uint64_t sub_100050358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatus();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_100003998(&qword_1000DDA58, &unk_1000AC498);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates.Iterator();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v4[14] = qword_1000E6D00;

  return _swift_task_switch(sub_100050540);
}

uint64_t sub_100050540()
{
  sub_10005B2D0();
  sub_10001C524();
  ActivityAuthorizationInfo.activityAuthorizationStatusUpdates.getter();
  ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates.makeAsyncIterator()();
  v1 = sub_10005AEA4();
  v2(v1);
  sub_10005AE08();
  *(v0 + 120) = sub_100059CC8(v3, v4, v5);
  sub_10005AF54();
  sub_100059CC8(v6, 255, v7);
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 128) = v8;
  *v8 = v9;
  sub_10005AE70(v8);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v11, v12);
}

uint64_t sub_100050644()
{
  sub_10001BF48();
  sub_10005B2C4();
  sub_10001BE74();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 136) = v1;

  sub_10005B314();
  v5 = *(v4 + 112);
  if (v1)
  {
    if (v5)
    {
      ObjectType = swift_getObjectType();
      sub_10005B404(ObjectType);
      sub_10005B2AC();
    }

    else
    {
      sub_10005B2E4();
    }

    v8 = sub_100050974;
  }

  else
  {
    if (v5)
    {
      v7 = swift_getObjectType();
      sub_10005B404(v7);
      sub_10005B2AC();
    }

    else
    {
      sub_10005B2E4();
    }

    v8 = sub_10005079C;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_1000507B4()
{
  v1 = v0[7];
  v2 = sub_100003998(&qword_1000DDA68, &qword_1000AC4A8);
  if (sub_100008B84(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    sub_10001BEDC();

    return v3();
  }

  else
  {
    v5 = v0[6];
    v6 = *v1;
    v7 = v1[1];
    (*(v0[5] + 32))(v5, v1 + *(v2 + 48), v0[4]);
    sub_1000509EC(v5, v6, v7);

    v8 = sub_10005B03C();
    v9(v8);
    sub_10005AF54();
    sub_100059CC8(v10, 255, v11);
    swift_task_alloc();
    sub_100029D94();
    v0[16] = v12;
    *v12 = v13;
    v14 = sub_10005AE70(v12);

    return dispatch thunk of AsyncIteratorProtocol.next()(v14, v15, v16);
  }
}

uint64_t sub_100050974()
{
  sub_10001BEC4();
  *(v0 + 16) = *(v0 + 136);
  v1 = sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10005B0C4(v1);

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000509EC(char *a1, unint64_t a2, unint64_t a3)
{
  v76 = a1;
  v75 = a2;
  v4 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v66 - v8;
  v72 = type metadata accessor for SportsActivityAttributes();
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  if (qword_1000DBA38 != -1)
  {
LABEL_50:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100007DE8(v19, qword_1000E6D90);
  v74 = *(v11 + 16);
  v74(v18, v76, v10);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v68 = v21;
  v22 = os_log_type_enabled(v20, v21);
  v73 = a3;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v69 = v11;
    v24 = v23;
    v84[0] = swift_slowAlloc();
    *v24 = 136315394;
    v74(v15, v18, v10);
    v25 = String.init<A>(describing:)();
    v66 = v20;
    v26 = v25;
    v28 = v27;
    v29 = *(v69 + 8);
    v29(v18, v10);
    v30 = sub_1000170D4(v26, v28, v84);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1000170D4(v75, a3, v84);
    v31 = v66;
    _os_log_impl(&_mh_execute_header, v66, v68, "Received activity authorization status update %s for bundle %s", v24, 0x16u);
    swift_arrayDestroy();

    v11 = v69;
  }

  else
  {

    v29 = *(v11 + 8);
    v29(v18, v10);
  }

  a3 = v77;
  v32 = v70;
  v74(v70, v76, v10);
  result = (*(v11 + 88))(v32, v10);
  if (result != enum case for ActivityAuthorizationInfo.ActivityAuthorizationStatus.noAuthorization(_:))
  {
    if (result != enum case for ActivityAuthorizationInfo.ActivityAuthorizationStatus.allow(_:) && result != enum case for ActivityAuthorizationInfo.ActivityAuthorizationStatus.alwaysAllow(_:))
    {
      return (v29)(v32, v10);
    }

    if (sub_100066914())
    {
      LODWORD(v74) = 1;
    }

    else
    {
      LODWORD(v74) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v35 = v78;

    v18 = *(a3 + 104);
    swift_beginAccess();
    v36 = *(v18 + 2);
    v15 = v36 + 64;
    v37 = *(v36 + 8);
    v83 = _swiftEmptyArrayStorage;
    v38 = 1 << v36[32];
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v11 = v39 & v37;
    v40 = (v38 + 63) >> 6;
    v41 = (v67 + 8);
    v76 = v36;

    v10 = 0;
    while (1)
    {
      while (1)
      {
        if (!v11)
        {
          while (1)
          {
            v42 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
              goto LABEL_50;
            }

            if (v42 >= v40)
            {
              break;
            }

            v11 = *&v15[8 * v42];
            ++v10;
            if (v11)
            {
              v10 = v42;
              goto LABEL_22;
            }
          }

          v49 = v83;
          result = sub_10001BE20(v83);
          if (!result)
          {
          }

          v50 = result;
          if (result >= 1)
          {
            v51 = 0;
            v75 = v49 & 0xC000000000000001;
            v76 = v49;
            LODWORD(v74) = v74 & 1;
            v52 = v77;
            do
            {
              if (v75)
              {
                v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v53 = *&v49[8 * v51 + 32];
              }

              v54 = type metadata accessor for TaskPriority();
              sub_100008E2C(v35, 1, 1, v54);
              v55 = qword_1000DB9F0;

              v57 = v35;
              if (v55 != -1)
              {
                swift_once();
              }

              v58 = qword_1000E6D00;
              v59 = sub_100059CC8(&qword_1000DDA50, v56, type metadata accessor for LiveActivityActor);
              v60 = swift_allocObject();
              *(v60 + 16) = v58;
              *(v60 + 24) = v59;
              *(v60 + 32) = v52;
              *(v60 + 40) = v53;
              *(v60 + 48) = v74;
              sub_1000459F8(v57, v6, &qword_1000DC5A8, &qword_1000AAFD0);
              LODWORD(v59) = sub_100008B84(v6, 1, v54);

              if (v59 == 1)
              {
                sub_10001BB44(v6, &qword_1000DC5A8, &qword_1000AAFD0);
              }

              else
              {
                TaskPriority.rawValue.getter();
                (*(*(v54 - 8) + 8))(v6, v54);
              }

              v61 = *(v60 + 16);
              swift_unknownObjectRetain();

              if (v61)
              {
                swift_getObjectType();
                v62 = dispatch thunk of Actor.unownedExecutor.getter();
                v64 = v63;
                swift_unknownObjectRelease();
              }

              else
              {
                v62 = 0;
                v64 = 0;
              }

              v35 = v78;
              sub_10001BB44(v78, &qword_1000DC5A8, &qword_1000AAFD0);
              v65 = swift_allocObject();
              *(v65 + 16) = &unk_1000AC4C0;
              *(v65 + 24) = v60;
              if (v64 | v62)
              {
                v79 = 0;
                v80 = 0;
                v81 = v62;
                v82 = v64;
              }

              v52 = v77;
              ++v51;
              swift_task_create();

              v49 = v76;
            }

            while (v50 != v51);
          }

          __break(1u);
          return result;
        }

LABEL_22:
        v43 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v18 = *(*(v76 + 7) + ((v10 << 9) | (8 * v43)));

        v44 = v71;
        Activity.attributes.getter();
        v45 = SportsActivityAttributes.bundleId.getter();
        v47 = v46;
        (*v41)(v44, v72);
        if (v45 != v75 || v47 != v73)
        {
          break;
        }

LABEL_29:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a3 = *(v83 + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v35 = v78;
      }

      a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (a3)
      {
        goto LABEL_29;
      }

      v35 = v78;
    }
  }

  return result;
}

uint64_t sub_100051318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = type metadata accessor for SportsActivityAttributes();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = qword_1000E6D00;

  return _swift_task_switch(sub_100051414);
}

uint64_t sub_100051414()
{
  v25 = v0;
  sub_100008614((v0[2] + 16), *(v0[2] + 40));
  Activity.attributes.getter();
  SportsActivityAttributes.canonicalId.getter();
  v1 = sub_10005B088();
  v3 = v2;
  v2(v1);
  sub_10005B348();
  v4 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  v0[8] = v4;

  if (v4)
  {
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1000516A4;
    sub_10005B354();

    return sub_100051824();
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v5, v6);
    }

    v9 = type metadata accessor for Logger();
    sub_10005B0AC(v9, qword_1000E6D90);

    v10 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_10005B3D4())
    {
      v11 = sub_10001C4D0();
      v12 = sub_10003FC24();
      v24 = v12;
      *v11 = 136315138;
      Activity.attributes.getter();
      v13 = SportsActivityAttributes.canonicalId.getter();
      v15 = v14;
      v16 = sub_10005B2B8();
      v3(v16);
      v17 = sub_1000170D4(v13, v15, &v24);

      *(v11 + 4) = v17;
      sub_10005B00C();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      sub_100008A94(v12);
      sub_10000B008(v12);
      sub_10000B008(v11);
    }

    sub_10001BEDC();

    return v23();
  }
}

uint64_t sub_1000516A4()
{
  sub_10001BF48();
  sub_10005B2C4();
  v2 = *v1;
  sub_10001BE74();
  *v3 = v2;

  sub_10005B314();
  if (v0)
  {
  }

  sub_10005B2F0();

  return _swift_task_switch(v4);
}

uint64_t sub_1000517C4()
{
  sub_10001BEC4();

  sub_10001BEDC();

  return v1();
}

uint64_t sub_100051824()
{
  sub_10001BEC4();
  *(v1 + 202) = v2;
  *(v1 + 201) = v3;
  *(v1 + 200) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v0;
  v6 = type metadata accessor for SportingEventProgressStatus();
  *(v1 + 64) = v6;
  sub_10000AC84(v6);
  *(v1 + 72) = v7;
  *(v1 + 80) = sub_100029D20();
  v8 = type metadata accessor for Date();
  *(v1 + 88) = v8;
  sub_10000AC84(v8);
  *(v1 + 96) = v9;
  *(v1 + 104) = sub_10005B294();
  *(v1 + 112) = swift_task_alloc();
  v10 = sub_100029C4C();

  return _swift_task_switch(v10);
}

uint64_t sub_10005192C()
{
  sub_10001BEC4();
  if (qword_1000DB9F0 != -1)
  {
    sub_10005AD48();
    swift_once();
  }

  *(v0 + 120) = qword_1000E6D00;

  return _swift_task_switch(sub_1000519B4);
}

uint64_t sub_1000519D8()
{
  sub_10001BEC4();
  *(v0 + 136) = SportingEventSubscription.canonicalId.getter();
  *(v0 + 144) = v1;
  sub_10005B2F0();

  return _swift_task_switch(v2);
}

uint64_t sub_100051A40()
{
  sub_10001BEC4();
  v0[19] = sub_10004E6F4(v0[17], v0[18]);

  v1 = sub_100029C4C();

  return _swift_task_switch(v1);
}

uint64_t sub_100051AB0()
{
  v64 = v0;
  v1 = v0[14];
  if (!v0[19])
  {

    sub_10001BE84();
    sub_10005B0E4();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[11];
  v3 = v0[12];
  v4 = COERCE_DOUBLE(SportingEventSubscription.liveActivityTTLSeconds.getter());
  if (v5)
  {
    v6 = -1.0;
  }

  else
  {
    v6 = v4;
  }

  static Date.now.getter();
  SportingEventSubscription.updatedAt.getter();
  Date.timeIntervalSince(_:)();
  v8 = v7;
  v9 = *(v3 + 8);
  v10 = sub_10001BFB0();
  v9(v10);
  (v9)(v1, v2);
  if (v6 > -1.0 || v8 > 14400.0)
  {
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v34._countAndFlagsBits = 0x73736572676F7270;
    v34._object = 0xEF20737574617453;
    String.append(_:)(v34);
    v35 = SportingEventSubscription.sportingEventDetails.getter();
    SportingEvent.progressStatus.getter();

    SportingEventProgressStatus.rawValue.getter();
    v36 = sub_10005B088();
    v37(v36);
    v38._countAndFlagsBits = sub_10001BFB0();
    String.append(_:)(v38);

    v39._object = 0x80000001000B2090;
    v39._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v39);
    Double.write<A>(to:)();
    v43 = v0[2];
    v42 = v0[3];
    if (v8 <= 14400.0)
    {
      v0[4] = 0;
      v0[5] = 0xE000000000000000;
      v46._countAndFlagsBits = 0x207265746661;
      v46._object = 0xE600000000000000;
      String.append(_:)(v46);
      Double.write<A>(to:)();
      v47._countAndFlagsBits = 115;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      v45 = v0[4];
      v44 = v0[5];
    }

    else
    {
      v44 = 0xEB00000000796C65;
      v45 = 0x74616964656D6D69;
    }

    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v40, v41);
    }

    v48 = v0[6];
    v49 = type metadata accessor for Logger();
    sub_10005B0AC(v49, qword_1000E6D90);
    v50 = v48;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_10003FC24();
      v62 = v43;
      v63[0] = swift_slowAlloc();
      v54 = v63[0];
      *v53 = 136315650;
      v55 = SportingEventSubscription.canonicalId.getter();
      v57 = sub_1000170D4(v55, v56, v63);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = sub_1000170D4(v45, v44, v63);

      *(v53 + 14) = v58;
      *(v53 + 22) = 2080;
      sub_1000170D4(v62, v42, v63);
      sub_10001C1DC();

      *(v53 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Destroying activity for '%s' %s: %s", v53, 0x20u);
      swift_arrayDestroy();
      sub_10000B008(v54);
      sub_10000B008(v53);
    }

    else
    {
    }

    SportingEventSubscription.canonicalId.getter();
    v0[20] = v59;
    v60 = swift_task_alloc();
    v0[21] = v60;
    *v60 = v0;
    v60[1] = sub_1000520C8;
    sub_10005B0E4();

    return sub_10005625C();
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v11, v12);
    }

    v13 = v0[6];
    v14 = type metadata accessor for Logger();
    sub_10005B0AC(v14, qword_1000E6D90);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = sub_10003FC24();
      v63[0] = v19;
      *v18 = 136315394;
      v20 = SportingEventSubscription.canonicalId.getter();
      v22 = sub_1000170D4(v20, v21, v63);

      *(v18 + 4) = v22;
      *(v18 + 12) = 1024;
      *(v18 + 14) = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updating activity '%s', isStale: %{BOOL}d", v18, 0x12u);
      sub_100008A94(v19);
      sub_10005AED8();
      sub_10005AFC4();
    }

    v23 = swift_task_alloc();
    v0[23] = v23;
    *v23 = v0;
    v23[1] = sub_100052240;
    sub_10005B0E4();

    return sub_100054B7C(v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1000520C8()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BED0();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  sub_10001C740();

  return _swift_task_switch(v7);
}

uint64_t sub_1000521CC()
{
  sub_10001BEC4();

  sub_10001BE84();

  return v0();
}

uint64_t sub_100052240()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_10001C740();

  return _swift_task_switch(v7);
}

uint64_t sub_10005233C()
{
  sub_10001BF48();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_1000523C4()
{
  sub_10001BF48();

  sub_10001BEDC();

  return v0();
}

void sub_100052444(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v12 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v12);
  sub_10000ACFC();
  __chkstk_darwin(v13);
  sub_10000ADEC();
  v56 = v14;
  v15 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  sub_10000AC48();
  v57 = v16;
  sub_10000ACFC();
  __chkstk_darwin(v17);
  sub_10000ADEC();
  v61 = v18;
  v19 = type metadata accessor for URL();
  sub_10000AC48();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_10000ADA0();
  v25 = v24 - v23;
  type metadata accessor for SportsActivityAttributes();
  sub_10000AC48();
  v59 = v27;
  v60 = v26;
  __chkstk_darwin(v26);
  sub_10000ADA0();
  v30 = v29 - v28;
  if (sub_100052954(a1, a2))
  {
    sub_100045BF8();
    swift_allocError();
    v32 = xmmword_1000AC250;
LABEL_9:
    *v31 = v32;
    swift_willThrow();
    return;
  }

  v54 = v21;
  v55 = v19;
  v53 = v15;
  if ((sub_100066914() & 1) == 0)
  {
    sub_10005AE4C();
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100008614((v8 + 16), *(v8 + 40));
  v33 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (!v33)
  {
    sub_100045BF8();
    swift_allocError();
    v32 = xmmword_1000AC240;
    goto LABEL_9;
  }

  v34 = v33;
  if (a4)
  {
    v35 = a6;
    v36 = sub_10004F658(a5, a6) ^ 1;
  }

  else
  {
    LOBYTE(v36) = 0;
    v35 = a6;
  }

  sub_100052990(v35, a7, a8, v30);
  if (v64)
  {
  }

  else
  {
    sub_100052BD8();

    sub_100008614((v8 + 16), *(v8 + 40));
    dispatch thunk of PersistentStorable.subscriptionsStoreURL(isConventionalOrUnified:)();
    v37 = v61;
    sub_100052F9C(v34, v25, a3 & 1, v36 & 1, v61);
    sub_100053B78(v30, a5, a6, v61);
    if (a4)
    {
      type metadata accessor for TaskPriority();
      sub_100045E00();
      sub_100008E2C(v38, v39, v40, v41);
      v42 = qword_1000DB9F0;

      v43 = v34;
      if (v42 != -1)
      {
        sub_10005AD48();
        swift_once();
      }

      v44 = qword_1000E6D00;
      sub_10005AE08();
      v48 = sub_100059CC8(v45, v46, v47);
      v49 = swift_allocObject();
      *(v49 + 16) = v44;
      *(v49 + 24) = v48;
      *(v49 + 32) = v9;
      *(v49 + 40) = v43;
      *(v49 + 48) = v36 & 1;

      v50 = sub_100045DBC();
      sub_10004AC64(v50, v51, v56, v52, v49);

      v37 = v61;
    }

    else
    {
    }

    (*(v57 + 8))(v37, v53);
    (*(v54 + 8))(v25, v55);
    (*(v59 + 8))(v30, v60);
  }
}

BOOL sub_100052954(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004E6F4(a1, a2);
  if (v2)
  {
  }

  return v2 != 0;
}

void sub_100052990(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v22 = a6;
  v23 = a3;
  v6 = type metadata accessor for SportsActivityAttributes();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Sport();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DB9F8 != -1)
  {
    swift_once();
  }

  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  sub_100049C24();
  v17 = v16;
  (*(v13 + 8))(v15, v12);
  if (v17)
  {
    v18 = v26;
    sub_10007C37C();
    if (v18)
    {
      return;
    }

    v8 = v11;
  }

  else
  {
    v19 = v26;
    sub_10007C8C8();
    if (v19)
    {
      return;
    }
  }

  (*(v21 + 32))(v22, v8, v6);
}

void sub_100052BD8()
{
  v39 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  sub_10000AC48();
  v1 = v0;
  sub_10000ACFC();
  __chkstk_darwin(v2);
  sub_10000ADEC();
  v38 = v3;
  v37 = type metadata accessor for SportsActivityAttributes();
  sub_10000AC48();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000ADA0();
  v36 = v10 - v9;
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v7, v8);
  }

  v11 = type metadata accessor for Logger();
  sub_10005B0AC(v11, qword_1000E6D90);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_10001C4D0();
    v15 = sub_10003FC24();
    v40 = v15;
    *v14 = 136315138;
    sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
    static Activity.activities.getter();
    v16 = Array.description.getter();
    v18 = v17;

    v19 = sub_1000170D4(v16, v18, &v40);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "ActivityKit activities: %s", v14, 0xCu);
    sub_100008A94(v15);
    sub_10000B008(v15);
    sub_10000B008(v14);
  }

  sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  v20 = static Activity.activities.getter();
  v21 = sub_10001BE20(v20);
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v40 = _swiftEmptyArrayStorage;
  sub_100017BE0(0, v21 & ~(v21 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = v40;
    v35 = v22;
    v25 = (v5 + 8);
    v26 = (v1 + 8);
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      Activity.attributes.getter();
      v27 = SportsActivityAttributes.canonicalId.getter();
      v29 = v28;
      (*v25)(v36, v37);
      dispatch thunk of Activity.content.getter();
      ActivityContent.relevanceScore.getter();
      v31 = v30;

      (*v26)(v38, v39);
      v40 = v24;
      v33 = v24[2];
      v32 = v24[3];
      if (v33 >= v32 >> 1)
      {
        sub_100017BE0(v32 > 1, v33 + 1, 1);
        v24 = v40;
      }

      ++v23;
      v24[2] = v33 + 1;
      v34 = &v24[3 * v33];
      v34[4] = v27;
      v34[5] = v29;
      v34[6] = v31;
    }

    while (v35 != v23);
LABEL_14:

    return;
  }

  __break(1u);
}

uint64_t sub_100052F9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v92 = a4;
  v76 = a3;
  v90 = a5;
  v91 = a2;
  v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v7 - 8);
  v89 = &v72 - v8;
  v9 = type metadata accessor for URL();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v83 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsActivityContender();
  __chkstk_darwin(v11 - 8);
  v82 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v81 = &v72 - v14;
  v78 = type metadata accessor for SportsActivityContentState.EventInfoState();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003998(&qword_1000DDA70, &qword_1000AC4F0);
  __chkstk_darwin(v16 - 8);
  v79 = &v72 - v17;
  v18 = sub_100003998(&qword_1000DDA78, &qword_1000AC4F8);
  __chkstk_darwin(v18 - 8);
  v94 = &v72 - v19;
  v20 = type metadata accessor for SportsActivityContentState();
  v87 = *(v20 - 8);
  v88 = v20;
  __chkstk_darwin(v20);
  v86 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v95 = &v72 - v23;
  v24 = sub_100003998(&qword_1000DDA80, &qword_1000AC500);
  __chkstk_darwin(v24 - 8);
  v26 = &v72 - v25;
  v73 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v75 = &v72 - v27;
  v28 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  __chkstk_darwin(v28 - 8);
  v30 = &v72 - v29;
  v31 = type metadata accessor for SportingEventSubscription.Metadata();
  v74 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Sport();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DB9F8 != -1)
  {
    swift_once();
  }

  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  sub_100049C24();
  v39 = v38;
  (*(v35 + 8))(v37, v34);
  if (v39)
  {
    SportingEventSubscription.metadata.getter();
    if (sub_100008B84(v30, 1, v31) == 1)
    {
      sub_10001BB44(v30, &qword_1000DD218, &unk_1000ABE10);
      sub_100045BF8();
      swift_allocError();
      *v40 = xmmword_1000AC260;
      return swift_willThrow();
    }

    else
    {
      v66 = v74;
      (*(v74 + 32))(v33, v30, v31);
      v96[3] = v31;
      v96[4] = &off_1000D3BA0;
      v67 = sub_10003F5B0(v96);
      (*(v66 + 16))(v67, v33, v31);
      v68 = enum case for SportingEventPlayLevel.session(_:);
      v69 = type metadata accessor for SportingEventPlayLevel();
      (*(*(v69 - 8) + 104))(v26, v68, v69);
      sub_100008E2C(v26, 0, 1, v69);
      v70 = v75;
      v71 = v93;
      sub_10007CCA0(a1, v91, v96, v26, 0, v76 & 1, v92 & 1, v75);
      sub_10001BB44(v26, &qword_1000DDA80, &qword_1000AC500);
      (*(v66 + 8))(v33, v31);
      if (v71)
      {
        return sub_100008A94(v96);
      }

      else
      {
        sub_100008A94(v96);
        return (*(v72 + 32))(v90, v70, v73);
      }
    }
  }

  else
  {
    v42 = type metadata accessor for SportsActivityClock();
    sub_100008E2C(v94, 1, 1, v42);
    v43 = type metadata accessor for SportsActivityPlay();
    v44 = v79;
    sub_100008E2C(v79, 1, 1, v43);
    v45 = v80;
    (*(v77 + 104))(v80, enum case for SportsActivityContentState.EventInfoState.preGame(_:), v78);
    type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
    sub_100059CC8(&qword_1000DC4C0, 255, &type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName);
    Dictionary.init(dictionaryLiteral:)();
    v46 = v81;
    SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();
    Dictionary.init(dictionaryLiteral:)();
    v47 = v82;
    SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();
    v48 = SportingEventSubscription.shouldDisplayPlayByPlay.getter();
    v49 = v83;
    (*(v84 + 16))(v83, v91, v85);
    SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)(v94, v44, v45, 0, 0, 0, v46, v47, v48 & 1, v49, v92 & 1);
    if (qword_1000DBA38 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100007DE8(v50, qword_1000E6D90);
    v51 = a1;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v96[0] = v55;
      *v54 = 136315138;
      v56 = SportingEventSubscription.canonicalId.getter();
      v58 = sub_1000170D4(v56, v57, v96);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "Creating dummy activity content for event '%s'", v54, 0xCu);
      sub_100008A94(v55);
    }

    v60 = v88;
    v59 = v89;
    v61 = v87;
    v62 = v95;
    (*(v87 + 16))(v86, v95, v88);
    v63 = SportingEventSubscription.heartbeatSessionsTTLSeconds.getter();
    if (v64)
    {
      v65 = type metadata accessor for Date();
      sub_100008E2C(v59, 1, 1, v65);
    }

    else
    {
      sub_10007FAD0(*&v63);
    }

    sub_100059CC8(&qword_1000DDA90, 255, &type metadata accessor for SportsActivityContentState);
    sub_100059CC8(&qword_1000DDA98, 255, &type metadata accessor for SportsActivityContentState);
    sub_100059CC8(&qword_1000DDAA0, 255, &type metadata accessor for SportsActivityContentState);
    ActivityContent.init(state:staleDate:relevanceScore:)();
    return (*(v61 + 8))(v62, v60);
  }
}

uint64_t sub_100053B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v56 = a1;
  v53 = type metadata accessor for ActivityAuthorizationError();
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v47 - v8;
  __chkstk_darwin(v9);
  v52 = &v47 - v10;
  v11 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v11 - 8);
  v50 = &v47 - v12;
  v55 = type metadata accessor for ActivityPresentationOptions();
  v13 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  sub_100003998(&qword_1000DDAF8, &qword_1000AC5A0);
  v16 = type metadata accessor for ActivityContentSource.Request();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000AA5B0;
  v20 = v19 + v18;
  v21 = (v20 + *(sub_100003998(&qword_1000DDB00, &qword_1000AC5A8) + 48));

  static PushActivityContentSource.externalRequest.getter();
  *v21 = a2;
  v21[1] = a3;
  (*(v17 + 104))(v20, enum case for ActivityContentSource.Request.push(_:), v16);
  static ActivityPresentationOptions.ActivityPresentationDestination.defaultDestinations.getter();
  ActivityPresentationOptions.init(destinations:)();
  v22 = v58;
  v23 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  if (v22)
  {
    (*(v13 + 8))(v15, v55);

    v59 = v22;
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    v24 = v52;
    v25 = v53;
    if (swift_dynamicCast())
    {

      v26 = v48;
      v27 = v49;
      (*(v48 + 32))(v49, v24, v25);
      v28 = v47;
      (*(v26 + 16))(v47, v27, v25);
      v29 = (*(v26 + 88))(v28, v25);
      if (v29 == enum case for ActivityAuthorizationError.globalMaximumExceeded(_:))
      {
        sub_10005A1D0();
        swift_allocError();
        *v30 = xmmword_1000AC280;
        swift_willThrow();
        (*(v26 + 8))(v27, v25);
      }

      else
      {
        v42 = v29;
        v43 = enum case for ActivityAuthorizationError.targetMaximumExceeded(_:);
        sub_10005A1D0();
        swift_allocError();
        v45 = (v26 + 8);
        if (v42 == v43)
        {
          *v44 = xmmword_1000AC270;
          swift_willThrow();
          (*v45)(v27, v25);
        }

        else
        {
          *v44 = 0;
          *(v44 + 8) = 0;
          swift_willThrow();
          v46 = *v45;
          (*v45)(v27, v25);
          v46(v28, v25);
        }
      }
    }

    else
    {

      sub_10005A1D0();
      swift_allocError();
      *v41 = 0;
      v41[1] = 0;
      swift_willThrow();
    }
  }

  else
  {
    v31 = v23;
    (*(v13 + 8))(v15, v55);

    v32 = v51;

    sub_10004D1D8(v33);
    v34 = type metadata accessor for TaskPriority();
    sub_100008E2C(v50, 1, 1, v34);
    v35 = qword_1000DB9F0;

    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_1000E6D00;
    v38 = sub_100059CC8(&qword_1000DDA50, v36, type metadata accessor for LiveActivityActor);
    v39 = swift_allocObject();
    v39[2] = v37;
    v39[3] = v38;
    v39[4] = v31;
    v39[5] = v32;

    sub_10004A77C();
  }
}

uint64_t sub_1000541E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v3[3] = qword_1000E6D00;
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_1000542D4;

  return sub_100051824();
}

uint64_t sub_1000542D4()
{
  sub_10001BF48();
  sub_10005B2C4();
  sub_10001BED0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v0;

  sub_10005B314();
  if (v0)
  {
  }

  sub_10005B2F0();

  return _swift_task_switch(v4);
}

uint64_t sub_1000543F8()
{
  **(v0 + 16) = *(v0 + 40) != 0;
  sub_10001BEDC();
  return v1();
}

uint64_t sub_10005442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for ActivityState();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_100003998(&qword_1000DDB10, &qword_1000AC5C0);
  v5[8] = swift_task_alloc();
  v7 = sub_100003998(&qword_1000DDB18, &qword_1000AC5C8);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_100003998(&qword_1000DDB20, &unk_1000AC5D0);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v5[15] = qword_1000E6D00;

  return _swift_task_switch(sub_10005462C);
}

uint64_t sub_10005462C()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B21C();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  v1 = sub_10005AEA4();
  v2(v1);
  sub_10005AE08();
  *(v0 + 128) = sub_100059CC8(v3, v4, v5);
  v6 = enum case for ActivityState.ended(_:);
  *(v0 + 152) = enum case for ActivityState.active(_:);
  *(v0 + 156) = v6;
  v7 = enum case for ActivityState.stale(_:);
  *(v0 + 160) = enum case for ActivityState.dismissed(_:);
  *(v0 + 164) = v7;
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 136) = v8;
  *v8 = v9;
  sub_10005ADEC(v8);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v11, v12);
}

uint64_t sub_100054760()
{
  sub_10001BF48();
  sub_10005B2C4();
  sub_10001BE74();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 144) = v1;

  sub_10005B314();
  v5 = *(v4 + 120);
  if (v1)
  {
    if (v5)
    {
      ObjectType = swift_getObjectType();
      sub_10005B404(ObjectType);
      sub_10005B2AC();
    }

    else
    {
      sub_10005B2E4();
    }

    v8 = sub_100054B04;
  }

  else
  {
    if (v5)
    {
      v7 = swift_getObjectType();
      sub_10005B404(v7);
      sub_10005B2AC();
    }

    else
    {
      sub_10005B2E4();
    }

    v8 = sub_1000548B8;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_1000548D0()
{
  sub_10005B2D0();
  sub_10001C524();
  v1 = *(v0 + 40);
  v2 = sub_10005B07C();
  if (sub_100008B84(v2, v3, v1) == 1)
  {
    v4 = sub_10005B1A8();
    v5(v4);

    sub_10001BEDC();
    sub_10001C74C();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v15 = *(v0 + 152);
  v16 = sub_10005B108();
  v17(v16);
  v18 = sub_10000AF64();
  v20 = v19(v18);
  if (v20 != v15)
  {
    if (v20 == *(v0 + 156) || v20 == *(v0 + 160))
    {
      sub_10004D838(*(v0 + 24));
      goto LABEL_19;
    }

    if (v20 != *(v0 + 164))
    {
      if (qword_1000DBA38 != -1)
      {
        sub_10005AD5C(&qword_1000DBA38, v21, v22);
      }

      v24 = type metadata accessor for Logger();
      sub_10005B0AC(v24, qword_1000E6D90);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (sub_10005B3BC(v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        sub_10005B37C(&_mh_execute_header, v28, v29, "Unused case, this could cause serious regressions!");
        sub_10000B008(v27);
      }

      v30 = sub_10005B088();
      v31(v30);
      goto LABEL_19;
    }
  }

  sub_10004D1D8(*(v0 + 24));
LABEL_19:
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 136) = v32;
  *v32 = v33;
  sub_10005ADEC(v32);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v34, v35, v36);
}

uint64_t sub_100054B04()
{
  sub_10001BEC4();
  *(v0 + 16) = *(v0 + 144);
  v1 = sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10005B0C4(v1);

  return swift_willThrowTypedImpl();
}

uint64_t sub_100054B7C(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  *(v7 + 256) = a2;
  *(v7 + 264) = v6;
  *(v7 + 595) = a6;
  *(v7 + 594) = a5;
  *(v7 + 593) = a4;
  *(v7 + 592) = a3;
  *(v7 + 248) = a1;
  v8 = type metadata accessor for SportsActivityAttributes();
  *(v7 + 272) = v8;
  *(v7 + 280) = *(v8 - 8);
  *(v7 + 288) = swift_task_alloc();
  v9 = type metadata accessor for LocalizedStringResource();
  *(v7 + 296) = v9;
  *(v7 + 304) = *(v9 - 8);
  *(v7 + 312) = swift_task_alloc();
  sub_100003998(&qword_1000DDAB8, &qword_1000AC520);
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  *(v7 + 352) = swift_task_alloc();
  type metadata accessor for SportsActivityContender();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  v10 = type metadata accessor for SportsActivityContentState.EventInfoState();
  *(v7 + 376) = v10;
  *(v7 + 384) = *(v10 - 8);
  *(v7 + 392) = swift_task_alloc();
  sub_100003998(&qword_1000DDA70, &qword_1000AC4F0);
  *(v7 + 400) = swift_task_alloc();
  sub_100003998(&qword_1000DDA78, &qword_1000AC4F8);
  *(v7 + 408) = swift_task_alloc();
  v11 = type metadata accessor for SportsActivityContentState();
  *(v7 + 416) = v11;
  *(v7 + 424) = *(v11 - 8);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  sub_100003998(&qword_1000DDA80, &qword_1000AC500);
  *(v7 + 448) = swift_task_alloc();
  v12 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  *(v7 + 456) = v12;
  *(v7 + 464) = *(v12 - 8);
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v7 + 496) = v13;
  *(v7 + 504) = *(v13 - 8);
  *(v7 + 512) = swift_task_alloc();
  *(v7 + 520) = swift_task_alloc();
  v14 = type metadata accessor for Sport();
  *(v7 + 528) = v14;
  *(v7 + 536) = *(v14 - 8);
  *(v7 + 544) = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  *(v7 + 552) = qword_1000E6D00;

  return _swift_task_switch(sub_100055060);
}

uint64_t sub_100055060(uint64_t a1)
{
  v151 = v1;
  if (*(v1 + 595))
  {
    sub_10005B048();
    sub_10005AFE0();

    sub_10001BE84();

    return v2();
  }

  else
  {
    v3 = *(v1 + 593);
    SportingEventSubscription.canonicalId.getter();
    sub_100052BD8();
    sub_10005AECC();
    sub_100091AD4(v4, v5, v6, v3);

    if ((sub_100066914() & 1) == 0)
    {
      sub_10005AE4C();
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    if (qword_1000DB9F8 != -1)
    {
      sub_10005B01C(&qword_1000DB9F8, v7, v8);
    }

    v9 = *(v1 + 264);
    SportingEventSubscription.sport.getter();
    Sport.init(rawValue:)();
    sub_100049C24();
    v11 = v10;
    v12 = sub_10005B03C();
    v13(v12);
    sub_100008614((v9 + 16), *(v9 + 40));
    sub_10005AECC();
    dispatch thunk of PersistentStorable.subscriptionsStoreURL(isConventionalOrUnified:)();
    v14 = &unk_1000DB000;
    v147 = v11;
    if (v11)
    {
      v15 = *(v1 + 264);
      *(v1 + 80) = *(v1 + 272);
      *(v1 + 88) = &off_1000D3BC8;
      sub_10003F5B0((v1 + 56));
      Activity.attributes.getter();
      if (*(v15 + 72) == 1)
      {
        static SportsActivityAttributes.filteredPlayLevel.getter();
        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v68 = *(v1 + 520);
      v69 = *(v1 + 480);
      v70 = *(v1 + 448);
      v71 = *(v1 + 594);
      v72 = *(v1 + 592);
      v73 = *(v1 + 256);
      v74 = type metadata accessor for SportingEventPlayLevel();
      sub_100008E2C(v70, v16, 1, v74);
      sub_10007CCA0(v73, v68, (v1 + 56), v70, v72, v71, 0, v69);
      sub_10001BB44(*(v1 + 448), &qword_1000DDA80, &qword_1000AC500);
      sub_100008A94((v1 + 56));
      v80 = sub_10001C6B0();
      v81(v80);
    }

    else
    {
      v17 = *(v1 + 504);
      v18 = *(v1 + 512);
      v142 = *(v1 + 496);
      v144 = *(v1 + 520);
      v19 = *(v1 + 384);
      v20 = *(v1 + 392);
      v22 = *(v1 + 368);
      v21 = *(v1 + 376);
      v23 = *(v1 + 360);
      v141 = *(v1 + 592);
      type metadata accessor for SportsActivityClock();
      sub_100045E00();
      sub_100008E2C(v24, v25, v26, v27);
      type metadata accessor for SportsActivityPlay();
      sub_100045E00();
      sub_100008E2C(v28, v29, v30, v31);
      (*(v19 + 104))(v20, enum case for SportsActivityContentState.EventInfoState.preGame(_:), v21);
      type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
      sub_10005AF3C();
      sub_100059CC8(v32, 255, v33);
      sub_10000AF64();
      v34 = Dictionary.init(dictionaryLiteral:)();
      sub_10005B150(v34, v35, v34);
      sub_10000AF64();
      v36 = Dictionary.init(dictionaryLiteral:)();
      v37 = v23;
      sub_10005B150(v36, v38, v36);
      LOBYTE(v23) = SportingEventSubscription.shouldDisplayPlayByPlay.getter();
      v40 = *(v17 + 16);
      v39 = (v17 + 16);
      v40(v18, v144, v142);
      HIBYTE(v140) = v141;
      LOBYTE(v140) = v23 & 1;
      sub_10005B320();
      SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)(v41, v42, v43, v44, v45, v46, v22, v37, v140, v18, 0);
      if (qword_1000DBA38 != -1)
      {
        sub_10005AD5C(&qword_1000DBA38, v47, v48);
      }

      v49 = *(v1 + 256);
      v50 = type metadata accessor for Logger();
      sub_10005B0AC(v50, qword_1000E6D90);
      v51 = v49;
      v52 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (sub_10005B3D4())
      {
        v53 = sub_10001C4D0();
        v54 = sub_10003FC24();
        v150[0] = v54;
        *v53 = 136315138;
        v55 = SportingEventSubscription.canonicalId.getter();
        v39 = sub_1000170D4(v55, v56, v150);

        *(v53 + 4) = v39;
        sub_10005B00C();
        _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
        sub_100008A94(v54);
        sub_10005AFC4();
        sub_10000B008(v53);
      }

      (*(*(v1 + 424) + 16))(*(v1 + 432), *(v1 + 440), *(v1 + 416));
      v62 = SportingEventSubscription.heartbeatSessionsTTLSeconds.getter();
      if (v63)
      {
        type metadata accessor for Date();
        sub_100045E00();
        sub_100008E2C(v64, v65, v66, v67);
      }

      else
      {
        sub_10007FAD0(*&v62);
      }

      v76 = *(v1 + 440);
      v77 = *(v1 + 416);
      v78 = *(v1 + 424);
      sub_10005AF0C();
      sub_100059CC8(v79, 255, v39);
      sub_10005AF98(&qword_1000DDA98);
      sub_10005AF6C(&qword_1000DDAA0);
      ActivityContent.init(state:staleDate:relevanceScore:)();
      (*(v78 + 8))(v76, v77);
      v14 = &unk_1000DB000;
    }

    v82 = *(v1 + 592);
    v83 = type metadata accessor for AlertConfiguration();
    sub_100045E00();
    sub_100008E2C(v84, v85, v86, v83);
    if (v82 == 1)
    {
      if (v147)
      {
        *(v1 + 40) = *(v1 + 272);
        *(v1 + 48) = &off_1000D3BC8;
        sub_10003F5B0((v1 + 16));
        Activity.attributes.getter();
        sub_10007E3F4();
        sub_100008A94((v1 + 16));
        v89 = (v1 + 336);
      }

      else
      {
        sub_10007EB70();
        v89 = (v1 + 328);
      }

      sub_100059A9C(*v89, *(v1 + 344));
      if (v14[327] != -1)
      {
        sub_10005AD5C(&qword_1000DBA38, v90, v91);
      }

      v92 = type metadata accessor for Logger();
      sub_10005B0AC(v92, qword_1000E6D90);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v150[0] = sub_10005B3EC();
        *v95 = 136315394;
        swift_beginAccess();
        v96 = sub_10005B07C();
        if (sub_100008B84(v96, v97, v83))
        {
          swift_endAccess();
          v98 = 0;
          v99 = 0xE000000000000000;
        }

        else
        {
          v101 = *(v1 + 304);
          v100 = *(v1 + 312);
          v148 = *(v1 + 296);
          AlertConfiguration.title.getter();
          swift_endAccess();
          v98 = LocalizedStringResource.key.getter();
          v99 = v102;
          (*(v101 + 8))(v100, v148);
          v14 = &unk_1000DB000;
        }

        v103 = *(v1 + 344);
        v104 = sub_1000170D4(v98, v99, v150);

        *(v95 + 4) = v104;
        *(v95 + 12) = 2080;
        swift_beginAccess();
        if (sub_100008B84(v103, 1, v83))
        {
          swift_endAccess();
          v105 = 0;
          v106 = 0xE000000000000000;
        }

        else
        {
          v108 = *(v1 + 304);
          v107 = *(v1 + 312);
          v109 = *(v1 + 296);
          AlertConfiguration.body.getter();
          swift_endAccess();
          v105 = LocalizedStringResource.key.getter();
          v106 = v110;
          (*(v108 + 8))(v107, v109);
          v14 = &unk_1000DB000;
        }

        v111 = sub_1000170D4(v105, v106, v150);

        *(v95 + 14) = v111;
        _os_log_impl(&_mh_execute_header, v93, v94, "Alert Title: %s, Body: %s", v95, 0x16u);
        swift_arrayDestroy();
        sub_10005AED8();
        sub_10000B008(v95);
      }
    }

    if (v14[327] != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v87, v88);
    }

    v112 = type metadata accessor for Logger();
    *(v1 + 560) = sub_10005B0AC(v112, qword_1000E6D90);

    v113 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (sub_10005B3D4())
    {
      v146 = *(v1 + 488);
      v114 = *(v1 + 280);
      v115 = *(v1 + 288);
      v145 = *(v1 + 272);
      v143 = *(v1 + 592);
      v116 = swift_slowAlloc();
      v150[0] = sub_10005B3EC();
      *v116 = 136315906;
      v117 = Activity.id.getter();
      v119 = sub_1000170D4(v117, v118, v150);

      *(v116 + 4) = v119;
      *(v116 + 12) = 1024;
      *(v116 + 14) = v143;
      *(v116 + 18) = 2080;
      Activity.attributes.getter();
      v120 = SportsActivityAttributes.canonicalId.getter();
      v122 = v121;
      (*(v114 + 8))(v115, v145);
      v123 = sub_1000170D4(v120, v122, v150);

      *(v116 + 20) = v123;
      *(v116 + 28) = 2048;
      sub_10005B25C(v146, v1 + 144);
      ActivityContent.relevanceScore.getter();
      *(v116 + 30) = v124;
      sub_10005B00C();
      _os_log_impl(v125, v126, v127, v128, v129, 0x26u);
      swift_arrayDestroy();
      sub_10005AFC4();
      sub_10000B008(v116);
    }

    v130 = *(v1 + 344);
    sub_10005B25C(*(v1 + 488), v1 + 96);
    v131 = sub_10005B17C();
    v132(v131);
    sub_10005B25C(v130, v1 + 120);
    v133 = sub_10001BFB0();
    sub_1000459F8(v133, v134, v135, v136);
    sub_10005B18C(&async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:));
    v149 = v137;
    v138 = swift_task_alloc();
    *(v1 + 568) = v138;
    *v138 = v1;
    v138[1] = sub_100055E24;
    v139 = sub_10005B308(*(v1 + 472));

    return v149(v139);
  }
}

uint64_t sub_100055E24()
{
  sub_10001C524();
  sub_10001BF54();
  v2 = v1;
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *(v4 + 320);
  v7 = *v0;
  sub_10001BE74();
  *v8 = v7;

  sub_10001BB44(v6, &qword_1000DDAB8, &qword_1000AC520);
  *(v2 + 576) = *(v5 + 8);
  *(v2 + 584) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = sub_10005B03C();
  v10(v9);
  v11 = sub_10001BF60();

  return _swift_task_switch(v11);
}

void sub_100055FB4()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[72];
  v5 = v0[65];
  v7 = v0[62];
  v6 = v0[63];
  v8 = v0[61];
  v9 = v0[57];
  v20 = v0[43];
  if (v3)
  {
    v19 = v0[57];
    v10 = sub_10001C4D0();
    v18 = v4;
    v11 = sub_10003FC24();
    v21 = v11;
    *v10 = 136315138;
    v12 = Activity.id.getter();
    v17 = v8;
    v14 = sub_1000170D4(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Updates complete for activity '%s'", v10, 0xCu);
    sub_100008A94(v11);
    sub_10000B008(v11);
    sub_10000B008(v10);

    (*(v6 + 8))(v5, v7);
    sub_10001BB44(v20, &qword_1000DDAB8, &qword_1000AC520);
    v18(v17, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    sub_10001BB44(v20, &qword_1000DDAB8, &qword_1000AC520);
    v4(v8, v9);
  }

  sub_10005B048();

  sub_10001BE84();
  sub_10005B360();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10005625C()
{
  sub_10001BEC4();
  *(v1 + 323) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  *(v1 + 322) = v4;
  *(v1 + 321) = v5;
  *(v1 + 320) = v6;
  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  v9 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v9);
  *(v1 + 88) = sub_100029D20();
  v10 = type metadata accessor for SportsActivityContender();
  sub_10001C3C4(v10);
  *(v1 + 96) = sub_10005B294();
  *(v1 + 104) = swift_task_alloc();
  v11 = type metadata accessor for SportsActivityContentState.EventInfoState();
  *(v1 + 112) = v11;
  sub_10000AC84(v11);
  *(v1 + 120) = v12;
  *(v1 + 128) = sub_100029D20();
  v13 = sub_100003998(&qword_1000DDA70, &qword_1000AC4F0);
  sub_10001C3C4(v13);
  *(v1 + 136) = sub_100029D20();
  v14 = sub_100003998(&qword_1000DDA78, &qword_1000AC4F8);
  sub_10001C3C4(v14);
  *(v1 + 144) = sub_100029D20();
  v15 = type metadata accessor for SportsActivityContentState();
  *(v1 + 152) = v15;
  sub_10000AC84(v15);
  *(v1 + 160) = v16;
  *(v1 + 168) = sub_10005B294();
  *(v1 + 176) = swift_task_alloc();
  v17 = sub_100003998(&qword_1000DDA80, &qword_1000AC500);
  sub_10001C3C4(v17);
  *(v1 + 184) = sub_100029D20();
  v18 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  *(v1 + 192) = v18;
  sub_10000AC84(v18);
  *(v1 + 200) = v19;
  *(v1 + 208) = sub_10005B294();
  *(v1 + 216) = swift_task_alloc();
  v20 = type metadata accessor for URL();
  *(v1 + 224) = v20;
  sub_10000AC84(v20);
  *(v1 + 232) = v21;
  *(v1 + 240) = sub_10005B294();
  *(v1 + 248) = swift_task_alloc();
  v22 = type metadata accessor for Sport();
  *(v1 + 256) = v22;
  sub_10000AC84(v22);
  *(v1 + 264) = v23;
  *(v1 + 272) = sub_100029D20();
  v24 = sub_100029C4C();

  return _swift_task_switch(v24);
}

uint64_t sub_100056550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100029DC8();
  if (*(v16 + 322))
  {
    sub_10005AE28();
    sub_10005B240();

    sub_10001BE84();
    sub_100029DAC();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    if (qword_1000DB9F0 != -1)
    {
      sub_10005AD48();
      swift_once();
    }

    *(v16 + 280) = qword_1000E6D00;
    sub_100029DAC();

    return _swift_task_switch(v26);
  }
}

uint64_t sub_1000566B0()
{
  sub_10001BEC4();
  v0[37] = sub_10004E6F4(v0[7], v0[8]);
  v1 = sub_100029C4C();

  return _swift_task_switch(v1);
}

uint64_t sub_100056714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100029DC8();
  if (*(v16 + 296))
  {
    if (sub_100066914())
    {
      v17 = 1;
    }

    else
    {
      sub_10005AE4C();
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    *(v16 + 324) = v17 & 1;

    sub_100029C4C();
    sub_100029DAC();

    return _swift_task_switch(v27);
  }

  else
  {
    sub_10005AE28();
    sub_10005B240();

    sub_10001BE84();
    sub_100029DAC();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_100056850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100029DC8();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  sub_100008614((*(v24 + 80) + 16), *(*(v24 + 80) + 40));
  sub_10000AF64();
  v27 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  *(v24 + 304) = v27;
  if (v27)
  {
    sub_100052BD8();

    if (qword_1000DB9F8 != -1)
    {
      sub_10005B01C(&qword_1000DB9F8, v30, v31);
    }

    SportingEventSubscription.sport.getter();
    Sport.init(rawValue:)();
    sub_100049C24();
    *(v24 + 325) = v32 & 1;
    v33 = sub_10005B088();
    v34(v33);
    sub_100029C4C();
    sub_100029DAC();

    return _swift_task_switch(v35);
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v28, v29);
    }

    v37 = type metadata accessor for Logger();
    sub_10005B0AC(v37, qword_1000E6D90);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = *(v24 + 56);
      v40 = *(v24 + 64);
      v42 = sub_10001C4D0();
      v43 = sub_10003FC24();
      a13 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1000170D4(v41, v40, &a13);
      _os_log_impl(&_mh_execute_header, v38, v39, "Could not find a subscription when destroying live activity: %s", v42, 0xCu);
      sub_100008A94(v43);
      sub_10000B008(v43);
      sub_10005AED8();
    }

    else
    {
    }

    sub_10005AE28();
    v56 = v44;
    v57 = v45;
    v58 = v46;
    v59 = *(v24 + 88);

    sub_10001BE84();
    sub_100029DAC();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, v56, v57, v58, v59, a13, a14, a15, a16);
  }
}

uint64_t sub_100056B04()
{
  v80 = v0;
  v1 = *(v0 + 325);
  sub_100008614((*(v0 + 80) + 16), *(*(v0 + 80) + 40));
  sub_10005AECC();
  dispatch thunk of PersistentStorable.subscriptionsStoreURL(isConventionalOrUnified:)();
  if (v1 == 1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 321);
    v4 = *(v0 + 320);
    *(v0 + 40) = type metadata accessor for SportsActivityAttributes();
    *(v0 + 48) = &off_1000D3BC8;
    sub_10003F5B0((v0 + 16));
    Activity.attributes.getter();
    v5 = enum case for SportingEventPlayLevel.session(_:);
    v6 = type metadata accessor for SportingEventPlayLevel();
    sub_10001C2AC();
    (*(v7 + 104))(v2, v5, v6);
    sub_10005B354();
    sub_100008E2C(v8, v9, v10, v6);
    v11 = sub_10005B088();
    sub_10007CCA0(v11, v12, v13, v2, v4, v3, 0, v14);
    sub_10001BB44(*(v0 + 184), &qword_1000DDA80, &qword_1000AC500);
    sub_100008A94((v0 + 16));
    sub_10005AECC();
    v65();
  }

  else
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 232);
    v77 = *(v0 + 224);
    v78 = *(v0 + 248);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v75 = *(v0 + 96);
    v76 = *(v0 + 320);
    type metadata accessor for SportsActivityClock();
    sub_100045E00();
    sub_100008E2C(v21, v22, v23, v24);
    type metadata accessor for SportsActivityPlay();
    sub_100045E00();
    sub_100008E2C(v25, v26, v27, v28);
    (*(v17 + 104))(v18, enum case for SportsActivityContentState.EventInfoState.preGame(_:), v19);
    type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
    sub_10005AF3C();
    sub_100059CC8(v29, 255, v30);
    sub_10005B17C();
    v31 = Dictionary.init(dictionaryLiteral:)();
    sub_10005B150(v31, v32, v31);
    sub_10005B17C();
    v33 = Dictionary.init(dictionaryLiteral:)();
    sub_10005B150(v33, v34, v33);
    LOBYTE(v19) = SportingEventSubscription.shouldDisplayPlayByPlay.getter();
    (*(v16 + 16))(v15, v78, v77);
    HIBYTE(v74) = v76;
    LOBYTE(v74) = v19 & 1;
    sub_10005B320();
    SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)(v35, v36, v37, v38, v39, v40, v20, v75, v74, v15, 0);
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v41, v42);
    }

    v43 = *(v0 + 304);
    v44 = type metadata accessor for Logger();
    sub_10005B0AC(v44, qword_1000E6D90);
    v45 = v43;
    v46 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (sub_10005B3D4())
    {
      v47 = sub_10001C4D0();
      v48 = sub_10003FC24();
      v79 = v48;
      *v47 = 136315138;
      v49 = SportingEventSubscription.canonicalId.getter();
      v20 = sub_1000170D4(v49, v50, &v79);

      *(v47 + 4) = v20;
      sub_10005B00C();
      _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
      sub_100008A94(v48);
      sub_10005AFC4();
      sub_10000B008(v47);
    }

    (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 176), *(v0 + 152));
    v56 = SportingEventSubscription.heartbeatSessionsTTLSeconds.getter();
    if (v57)
    {
      type metadata accessor for Date();
      sub_100045E00();
      sub_100008E2C(v58, v59, v60, v61);
    }

    else
    {
      sub_10007FAD0(*&v56);
    }

    sub_10005AF0C();
    sub_100059CC8(v62, 255, v20);
    sub_10005AF98(&qword_1000DDA98);
    sub_10005AF6C(&qword_1000DDAA0);
    sub_10001BFB0();
    ActivityContent.init(state:staleDate:relevanceScore:)();
    v63 = sub_10001C6B0();
    v64(v63);
  }

  v66 = swift_task_alloc();
  *(v0 + 312) = v66;
  *v66 = v0;
  v66[1] = sub_100057130;
  sub_10005B308(*(v0 + 56));
  sub_10005B360();

  return sub_10004E78C(v67, v68, v69, v70, v71);
}

uint64_t sub_100057130()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 326) = v3;

  v4 = sub_100029C4C();

  return _swift_task_switch(v4);
}

uint64_t sub_10005721C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  if (*(v0 + 326) == 1)
  {

    v5 = sub_10005B2B8();
    v6(v5);
    (*(v3 + 8))(v2, v4);
    sub_10005AE28();

    sub_10001BE84();
  }

  else
  {
    sub_100045BF8();
    swift_allocError();
    *v8 = xmmword_1000AC290;
    swift_willThrow();

    v9 = sub_10005B2B8();
    v10(v9);
    (*(v3 + 8))(v2, v4);
    sub_10005B240();

    sub_10001BEDC();
  }

  return v7();
}

void sub_100057468()
{
  sub_10000AE68();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v9);
  sub_10000ACFC();
  __chkstk_darwin(v10);
  type metadata accessor for TaskPriority();
  sub_100045E00();
  sub_100008E2C(v11, v12, v13, v14);
  v15 = qword_1000DB9F0;

  if (v15 != -1)
  {
    sub_10005AD48();
    swift_once();
  }

  v16 = qword_1000E6D00;
  sub_10005AE08();
  v20 = sub_100059CC8(v17, v18, v19);
  sub_10005B19C();
  v21 = swift_allocObject();
  v21[2] = v16;
  v21[3] = v20;
  v21[4] = v4;
  v21[5] = v2;
  v21[6] = v0;
  v21[7] = v8;
  v21[8] = v6;

  sub_100045DBC();
  sub_10004A77C();

  sub_10000AE50();
}

uint64_t sub_1000575C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_100057660);
}

uint64_t sub_100057660()
{
  sub_10001BF48();
  v1 = v0[2];
  v2 = sub_100052954(v0[5], v0[6]);
  v1(v2);
  sub_10001BEDC();

  return v3();
}

uint64_t sub_1000576D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100003998(&qword_1000DCF70, &unk_1000AB920);
  v89 = *(v8 - 8);
  __chkstk_darwin(v8);
  v77 = v65 - v9;
  v87 = sub_100003998(&qword_1000DCF78, &qword_1000ABE00);
  v10 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = v65 - v11;
  v68 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v12 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v65 - v13;
  v14 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v14 - 8);
  v85 = v65 - v15;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  __chkstk_darwin(ActivityOperation);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v65[1] = a4;
    v93 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = a3;
    v22 = 0;
    v88 = v18 + 32;
    v84 = (v89 + 8);
    v83 = (v10 + 8);
    v72 = v21 & 1;
    v23 = 0xE300000000000000;
    if (v21)
    {
      v23 = 0xE400000000000000;
    }

    v71 = v23;
    v70 = 0x80000001000B0480;
    v69 = v17 + 392;
    v66 = (v12 + 8);
    v24 = (a2 + 56);
    v75 = v21;
    v73 = v8;
    v25 = v77;
    v89 = v19;
    v74 = a2;
    do
    {
      if (*(v88 + v22) == 1 && v22 < *(a2 + 16))
      {
        v26 = *(v24 - 2);
        v81 = *(v24 - 3);
        v28 = *(v24 - 1);
        v27 = *v24;
        v29 = qword_1000DB9C0;
        v82 = v26;

        if (v29 != -1)
        {
          swift_once();
        }

        sub_10000BC30(qword_1000E6CC8 + 24, v91);
        v30 = type metadata accessor for Date();
        sub_100008E2C(v85, 1, 1, v30);
        sub_10000BC30(v91, v17);
        sub_10006F7C0(v17 + 23);
        if (qword_1000DB9B8 != -1)
        {
          swift_once();
        }

        v31 = qword_1000E6CC0;
        *(v17 + 31) = type metadata accessor for BagProvider();
        *(v17 + 32) = &off_1000D0860;
        *(v17 + 28) = v31;
        v32 = type metadata accessor for AccountManager();
        v33 = swift_allocObject();
        *(v17 + 36) = v32;
        *(v17 + 37) = &off_1000D0550;
        *(v17 + 33) = v33;
        v34 = v91[5];
        sub_10000BC8C(v92, (v17 + 312));
        if (v75)
        {
          v35 = 0;
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
        }

        v40 = ActivityOperation;
        sub_1000459F8(v85, &v17[*(ActivityOperation + 48)], &qword_1000DC5A0, &unk_1000AB0E0);
        *(v17 + 38) = v34;
        v17[352] = v35 & 1;
        *(v17 + 45) = 0;
        *(v17 + 46) = 0;
        *(v17 + 47) = 0;
        *(v17 + 48) = 1;
        v41 = v69;
        *v69 = 0u;
        v41[1] = 0u;
        v41[2] = 0u;
        v41[3] = 0u;
        v41[4] = 0u;
        *(v17 + 60) = 0;
        *(v17 + 61) = 0;
        *(v17 + 59) = 1;
        v17[496] = 0;
        v42 = &v17[v40[13]];
        *v42 = 0xD000000000000011;
        *(v42 + 1) = v70;
        v43 = &v17[v40[14]];
        v80 = v28;
        *v43 = v28;
        v43[1] = v27;
        v44 = &v17[v40[15]];
        v45 = v82;
        *v44 = v81;
        *(v44 + 1) = v45;
        v17[v40[16]] = v72;
        v81 = v40[17];
        v46 = type metadata accessor for ActivityAuthorization();
        v47 = objc_allocWithZone(v46);

        v48 = [v47 init];
        v79 = sub_1000499E0();
        v78 = v49;
        v90[4] = &off_1000D1900;
        v90[3] = v46;
        v90[0] = v48;
        type metadata accessor for ActivityCapUtility();
        v50 = swift_allocObject();
        v51 = sub_10000B90C(v90, v46);
        v52 = __chkstk_darwin(v51);
        v54 = (v65 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v55 + 16))(v54, v52);
        v56 = *v54;
        v50[5] = v46;
        v50[6] = &off_1000D1900;
        v50[2] = v56;
        v57 = v78;
        v50[7] = v79;
        v50[8] = v57;
        sub_100008A94(v90);

        sub_10001BB44(v85, &qword_1000DC5A0, &unk_1000AB0E0);
        sub_10000BCF0(v91);
        *&v17[v81] = v50;
        if (qword_1000DBA00 != -1)
        {
          swift_once();
        }

        v58 = v80;
        v59 = sub_10004F60C(v80, v27);
        a2 = v74;
        v8 = v73;
        v25 = v77;
        v39 = v89;
        if (v59)
        {
          sub_10008CEC0();
        }

        else
        {
          sub_100045BF8();
          v60 = swift_allocError();
          *v61 = v58;
          v61[1] = v27;
          v91[0] = v60;

          sub_100003998(&qword_1000DC470, &qword_1000AA620);
          v62 = v67;
          Fail.init(error:)();
          sub_10005A6D8(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
          v63 = v68;
          Publisher.eraseToAnyPublisher()();
          (*v66)(v62, v63);
        }

        sub_10005A71C(v17);
      }

      else
      {
        LOBYTE(v91[0]) = 0;
        Just.init(_:)();
        sub_100003998(&qword_1000DC470, &qword_1000AA620);
        v36 = v86;
        Just.setFailureType<A>(to:)();
        (*v84)(v25, v8);
        sub_10005A6D8(&qword_1000DCFC0, &qword_1000DCF78, &qword_1000ABE00);
        v37 = v87;
        Publisher.eraseToAnyPublisher()();
        v38 = v36;
        v39 = v89;
        (*v83)(v38, v37);
      }

      ++v22;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v24 += 4;
    }

    while (v39 != v22);
    v20 = v93;
  }

  v91[0] = v20;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_100003998(&qword_1000DDB58, &unk_1000AC650);
  sub_10005A6D8(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  sub_10005A6D8(&qword_1000DDB60, &qword_1000DDB58, &unk_1000AC650);
  return Publishers.MergeMany.init<A>(_:)();
}

void sub_1000581B4(uint64_t *a1, char a2, uint64_t a3)
{
  LOBYTE(v4) = a2;
  v5 = 0;
  v6 = *(*a1 + 16);
  v50 = *a1 + 32;
  while (v6 != v5)
  {
    v7 = *a1 + v5++;
    if ((*(v7 + 32) & 1) == 0)
    {
      if (qword_1000DBA38 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100007DE8(v8, qword_1000E6D90);

      oslog = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(oslog, v9))
      {
        v44 = oslog;
        goto LABEL_37;
      }

      v45 = v9;
      v10 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v10 = 136315394;
      if (v4)
      {
        v11 = 1751607656;
      }

      else
      {
        v11 = 7827308;
      }

      if (v4)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE300000000000000;
      }

      v13 = sub_1000170D4(v11, v12, v57);

      *(v10 + 4) = v13;
      v46 = v10;
      *(v10 + 12) = 2080;
      v56 = _swiftEmptyArrayStorage;
      sub_100017B68(0, v6, 0);
      v14 = *(a3 + 104);
      v15 = _swiftEmptyArrayStorage;
      v49 = v14;
      swift_beginAccess();
      v4 = 0;
      v16 = 0;
      v48 = v6;
      while (1)
      {
        v54 = 0;
        v55 = 0xE000000000000000;
        v17 = *(v49 + 16);
        v18 = *(v17 + 16);
        if (v18)
        {
          sub_100003998(&qword_1000DC430, &qword_1000AA610);
          v19 = swift_allocObject();
          v20 = j__malloc_size(v19);
          v19[2] = v18;
          v19[3] = 2 * ((v20 - 32) / 16);
          loga = sub_100059DF8(&v53, v19 + 4, v18, v17);
          v21 = v53;

          sub_10001B8A0(v21);
          if (loga != v18)
          {
            goto LABEL_41;
          }

          v6 = v48;
        }

        else
        {
          v19 = _swiftEmptyArrayStorage;
        }

        if (v16 >= v19[2])
        {
          break;
        }

        v22 = v19[v4 / 8 + 4];
        v23 = v19[v4 / 8 + 5];

        v24._countAndFlagsBits = v22;
        v24._object = v23;
        String.append(_:)(v24);

        v25._countAndFlagsBits = 8250;
        v25._object = 0xE200000000000000;
        String.append(_:)(v25);
        if (*(v50 + v16))
        {
          v26 = 0x53534543435553;
        }

        else
        {
          v26 = 0x4552554C494146;
        }

        v27 = 0xE700000000000000;
        String.append(_:)(*&v26);

        v28 = v54;
        v29 = v55;
        v56 = v15;
        v31 = v15[2];
        v30 = v15[3];
        if (v31 >= v30 >> 1)
        {
          sub_100017B68((v30 > 1), v31 + 1, 1);
          v15 = v56;
        }

        ++v16;
        v15[2] = v31 + 1;
        v32 = &v15[2 * v31];
        v32[4] = v28;
        v32[5] = v29;
        v4 += 16;
        if (v6 == v16)
        {
          v40 = Array.description.getter();
          v42 = v41;

          v43 = sub_1000170D4(v40, v42, v57);

          *(v46 + 14) = v43;
          _os_log_impl(&_mh_execute_header, oslog, v45, "    Error switching to %s \n\n    %s", v46, 0x16u);
          swift_arrayDestroy();

          v44 = oslog;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (qword_1000DBA38 == -1)
  {
    goto LABEL_27;
  }

LABEL_42:
  swift_once();
LABEL_27:
  v33 = type metadata accessor for Logger();
  sub_100007DE8(v33, qword_1000E6D90);
  log = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(log, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v53 = v36;
    *v35 = 136315138;
    if (v4)
    {
      v37 = 1751607656;
    }

    else
    {
      v37 = 7827308;
    }

    if (v4)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE300000000000000;
    }

    v39 = sub_1000170D4(v37, v38, &v53);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, log, v34, "Successfully switched to %s", v35, 0xCu);
    sub_100008A94(v36);

    v44 = log;
    goto LABEL_39;
  }

  v44 = log;
LABEL_37:

LABEL_39:
}

uint64_t sub_100058748()
{
  sub_10001BEC4();
  *(v1 + 137) = v2;
  *(v1 + 136) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = type metadata accessor for SportsActivityContentState();
  *(v1 + 32) = v5;
  sub_10000AC84(v5);
  *(v1 + 40) = v6;
  *(v1 + 48) = sub_100029D20();
  v7 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  *(v1 + 56) = v7;
  sub_10000AC84(v7);
  *(v1 + 64) = v8;
  *(v1 + 72) = sub_100029D20();
  v9 = sub_100029C4C();

  return _swift_task_switch(v9);
}

uint64_t sub_10005884C()
{
  sub_10001BEC4();
  if (qword_1000DB9F0 != -1)
  {
    sub_10005AD48();
    swift_once();
  }

  *(v0 + 80) = qword_1000E6D00;

  return _swift_task_switch(sub_1000588D4);
}

uint64_t sub_1000588F8()
{
  sub_10001BEC4();
  *(v0 + 96) = SportingEventSubscription.canonicalId.getter();
  *(v0 + 104) = v1;
  sub_10005B2F0();

  return _swift_task_switch(v2);
}

uint64_t sub_100058960()
{
  sub_10001BEC4();
  v0[14] = sub_10004E6F4(v0[12], v0[13]);

  v1 = sub_100029C4C();

  return _swift_task_switch(v1);
}

uint64_t sub_1000589D0(uint64_t a1)
{
  if (v1[14])
  {
    dispatch thunk of Activity.content.getter();
    ActivityContent.state.getter();
    v2 = sub_10005B088();
    v3(v2);
    SportsActivityContentState.isWaitingForUserConsent.getter();
    v4 = sub_10001BFB0();
    v5(v4);
    v6 = swift_task_alloc();
    v1[15] = v6;
    *v6 = v1;
    v6[1] = sub_100058B30;
    sub_10005B308(v1[2]);

    return sub_100051824();
  }

  else
  {

    sub_10001BE84();

    return v8();
  }
}

uint64_t sub_100058B30()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_10001C740();

  return _swift_task_switch(v7);
}

uint64_t sub_100058C2C()
{
  sub_10001BEC4();

  sub_10001BE84();

  return v0();
}

uint64_t sub_100058C98()
{
  sub_10001BEC4();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_100058D0C(uint64_t a1)
{
  sub_10005B1F8(a1);

  sub_10004A374(v2);
  sub_10001C1DC();

  return v1;
}

id sub_100058D5C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_100058E38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_100058EA4()
{
  sub_10001BF48();
  sub_10005B094();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10003FBF8(v2);
  *v3 = v4;
  v5 = sub_10005ADD4(v3);

  return sub_10004FCF4(v5, v6, v7, v1);
}

uint64_t sub_100058F38(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  v1 = Array.description.getter();

  return v1;
}

uint64_t sub_100058FA0()
{
  sub_10001BF48();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  v4[1] = sub_10005908C;

  return v7(v1);
}

uint64_t sub_10005908C()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001BE84();

  return v3();
}

uint64_t sub_10005916C()
{
  sub_10001BF48();
  sub_10005B094();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10003FBF8(v2);
  *v3 = v4;
  v5 = sub_10005ADD4(v3);

  return sub_100050358(v5, v6, v7, v1);
}

uint64_t sub_100059208()
{
  sub_10001C524();
  sub_10005B094();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_10003FBF8(v2);
  *v3 = v4;
  sub_10005ADD4(v3);
  sub_10005B348();

  return sub_100051318(v5, v6, v7, v8, v9, v1);
}

Swift::Int sub_1000592AC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
  sub_10005B2FC();
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_100059438()
{
  sub_10000AE68();
  v1 = v0;
  v2 = type metadata accessor for MetricsFieldExclusionRequest();
  sub_10000AC48();
  v36 = v3;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v31 - v8;
  if (*(v1 + 16) && (sub_100003998(&qword_1000DDAD8, &unk_1000AC560), sub_10005B2FC(), v9 = static _SetStorage.allocate(capacity:)(), v10 = v9, (v35 = *(v1 + 16)) != 0))
  {
    v11 = 0;
    v39 = v9 + 56;
    v12 = *(v36 + 80);
    v33 = v1;
    v34 = v1 + ((v12 + 32) & ~v12);
    v38 = v36 + 16;
    v13 = (v36 + 8);
    v32 = (v36 + 32);
    while (v11 < *(v1 + 16))
    {
      v14 = *(v36 + 72);
      v37 = v11 + 1;
      v15 = *(v36 + 16);
      v15(v40, v34 + v14 * v11, v2);
      sub_10005AEF4();
      sub_100059CC8(&qword_1000DDAE0, 255, v16);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = ~(-1 << *(v10 + 32));
      while (1)
      {
        v19 = v17 & v18;
        v20 = (v17 & v18) >> 6;
        v21 = *(v39 + 8 * v20);
        v22 = 1 << (v17 & v18);
        if ((v22 & v21) == 0)
        {
          break;
        }

        v23 = v10;
        v15(v6, *(v10 + 48) + v19 * v14, v2);
        sub_10005AEF4();
        sub_100059CC8(&qword_1000DDAE8, 255, v24);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v26 = *v13;
        (*v13)(v6, v2);
        if (v25)
        {
          v26(v40, v2);
          v10 = v23;
          goto LABEL_12;
        }

        v17 = v19 + 1;
        v10 = v23;
      }

      v27 = v40;
      *(v39 + 8 * v20) = v22 | v21;
      (*v32)(*(v10 + 48) + v19 * v14, v27, v2);
      v28 = *(v10 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_15;
      }

      *(v10 + 16) = v30;
LABEL_12:
      v11 = v37;
      v1 = v33;
      if (v37 == v35)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_10000AE50();
  }
}

_BYTE *sub_100059744(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100003998(&qword_1000DDAD0, &qword_1000AC550);
    v2 = static _SetStorage.allocate(capacity:)();
    v3 = v2;
    v25 = *(v1 + 16);
    if (v25)
    {
      v4 = 0;
      v5 = v2 + 56;
      v23 = v1;
      v24 = v1 + 32;
      do
      {
        if (v4 >= *(v1 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          JUMPOUT(0x100059A6CLL);
        }

        v6 = *(v24 + v4);
        v26 = v4 + 1;
        Hasher.init(_seed:)();
        String.hash(into:)();

        v7 = Hasher._finalize()();
        v8 = ~(-1 << v3[32]);
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) != 0)
        {
          while (1)
          {
            v13 = 0xEC00000076742E65;
            v14 = 0x6C7070612E6D6F63;
            switch(*(*(v3 + 6) + v9))
            {
              case 1:
                v14 = 0xD000000000000010;
                v13 = 0x80000001000B03E0;
                break;
              case 2:
                v14 = 0xD000000000000011;
                v13 = 0x80000001000B0400;
                break;
              case 3:
                break;
              default:
                v14 = 0xD000000000000010;
                v13 = 0x80000001000B03C0;
                break;
            }

            v15 = 0x6C7070612E6D6F63;
            v16 = 0xEC00000076742E65;
            switch(v6)
            {
              case 1:
                v15 = 0xD000000000000010;
                v16 = 0x80000001000B03E0;
                break;
              case 2:
                v15 = 0xD000000000000011;
                v16 = 0x80000001000B0400;
                break;
              case 3:
                break;
              default:
                v15 = 0xD000000000000010;
                v16 = 0x80000001000B03C0;
                break;
            }

            if (v14 == v15 && v13 == v16)
            {
              break;
            }

            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v18)
            {
              goto LABEL_23;
            }

            v9 = (v9 + 1) & v8;
            v10 = v9 >> 6;
            v11 = *(v5 + 8 * (v9 >> 6));
            v12 = 1 << v9;
            if ((v11 & (1 << v9)) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          *(v5 + 8 * v10) = v11 | v12;
          *(*(v3 + 6) + v9) = v6;
          v19 = *(v3 + 2);
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_28;
          }

          *(v3 + 2) = v21;
        }

LABEL_23:
        v4 = v26;
        v1 = v23;
      }

      while (v26 != v25);
    }
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}

uint64_t sub_100059A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DDAB8, &qword_1000AC520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100059B0C()
{
  sub_10001BF48();
  sub_10005B0A0();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

uint64_t sub_100059B9C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059BE4()
{
  swift_unknownObjectRelease();

  v0 = sub_10001C6B0();

  return _swift_deallocObject(v0, v1, 7);
}

uint64_t sub_100059C2C(uint64_t a1)
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B094();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  sub_10005ADD4(v2);
  sub_10001C74C();

  return sub_100050284(v4, v5, v6, v7, v8);
}

uint64_t sub_100059CC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_10005B2FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100059D0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100059D54()
{
  sub_10001C524();
  sub_10005B094();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  sub_10005ADD4(v1);
  sub_10005B348();

  return sub_1000541E4(v3, v4, v5);
}

void *sub_100059DF8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100059F54(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10005A048;

  return v5(v2 + 32);
}

uint64_t sub_10005A048()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = v1;
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_10001BE74();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_10001BE84();

  return v8();
}

uint64_t sub_10005A140()
{
  sub_10001BF48();
  sub_10005B0A0();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

unint64_t sub_10005A1D0()
{
  result = qword_1000DDB08;
  if (!qword_1000DDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDB08);
  }

  return result;
}

uint64_t sub_10005A22C(uint64_t a1)
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B094();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  sub_10005ADD4(v2);
  sub_10001C74C();

  return sub_10005442C(v4, v5, v6, v7, v8);
}

uint64_t sub_10005A2C4()
{

  sub_10005B070();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005A300()
{

  sub_10005B070();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005A344()
{
  swift_unknownObjectRelease();

  v0 = sub_10001C6B0();

  return _swift_deallocObject(v0, v1, 7);
}

uint64_t sub_10005A394(uint64_t a1)
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B094();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  sub_10005ADD4(v2);
  sub_10001C74C();

  return sub_10004C9C4(v4, v5, v6, v7, v8);
}

uint64_t sub_10005A42C()
{
  swift_unknownObjectRelease();

  sub_10005B19C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005A478()
{
  sub_10005B094();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = sub_10003FBF8(v4);
  *v5 = v6;
  sub_10005ADD4(v5);
  sub_10005B348();

  return sub_1000575C0(v7, v8, v9, v10, v11, v1, v2, v3);
}

uint64_t sub_10005A534()
{

  sub_10005B070();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005A568()
{
  sub_10001BF48();
  sub_10005B0A0();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

uint64_t sub_10005A5F8()
{
  sub_10001BF48();
  sub_10005B0A0();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

uint64_t sub_10005A688()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10005A6D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000089A8(a2, a3);
    sub_10005B2FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005A71C(uint64_t a1)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  (*(*(ActivityOperation - 8) + 8))(a1, ActivityOperation);
  return a1;
}

uint64_t getEnumTagSinglePayload for LiveActivityTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LiveActivityTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10005A8CCLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveActivityUpdateLimit(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005A9D0);
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

unint64_t sub_10005AA0C()
{
  result = qword_1000DDB88;
  if (!qword_1000DDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDB88);
  }

  return result;
}

unint64_t sub_10005AA64()
{
  result = qword_1000DDB90;
  if (!qword_1000DDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDB90);
  }

  return result;
}

uint64_t type metadata accessor for SportsActivityManagedContext(uint64_t a1)
{
  result = qword_1000DDBF0;
  if (!qword_1000DDBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005AB04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsActivityManagedContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005AB7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 20);

    return sub_100008B84(v9, a2, v8);
  }
}

uint64_t sub_10005AC18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005AC98(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005AD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_10005ADB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10005A6D8(a1, a2, a3);
}

uint64_t sub_10005AED8()
{
}

uint64_t sub_10005AF6C(unint64_t *a1)
{

  return sub_100059CC8(a1, 255, v1);
}

uint64_t sub_10005AF98(unint64_t *a1)
{

  return sub_100059CC8(a1, 255, v1);
}

uint64_t sub_10005AFC4()
{
}

void sub_10005AFE0()
{
  v2 = *(v0 + 288);
  *(v1 - 112) = *(v0 + 312);
  *(v1 - 104) = v2;
}

uint64_t sub_10005B01C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_10005B0C4(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_10005B124@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1000459F8(v2, &a2 - a1, v3, v4);
}

uint64_t sub_10005B150(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();
}

uint64_t sub_10005B1F8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10005B21C()
{

  return dispatch thunk of Activity.activityStateUpdates.getter();
}

uint64_t sub_10005B240()
{
}

uint64_t sub_10005B25C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_10005B294()
{

  return swift_task_alloc();
}

void sub_10005B37C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10005B39C(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

BOOL sub_10005B3BC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_10005B3D4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10005B3EC()
{

  return swift_slowAlloc();
}

uint64_t sub_10005B404(uint64_t a1)
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

uint64_t sub_10005B41C(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v56 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_1000261E8(v27, &qword_1000DBD08, &qword_1000AA690))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_100032628(*(a1 + 56) + 32 * v12, v54 + 8);
    LOBYTE(v54[0]) = v13;
    v51 = v54[0];
    v52 = v54[1];
    v53 = v55;
    sub_100032628(&v51 + 8, &v33);
    if (v35)
    {
      sub_100008EA8(&v33, &v48);
      v44 = v51;
      v45 = v52;
      v46 = v53;
      sub_100008EA8(&v48, &v41);
      v20 = v2[2];
      if (v2[3] <= v20)
      {
        sub_1000A1D80(v20 + 1, 1, v14, v15, v16, v17, v18, v19, v32, v33, *(&v33 + 1), v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, v48, *(&v48 + 1), v49, v50, v51, *(&v51 + 1));
      }

      v2 = v56;
      v21 = v44;
      Hasher.init(_seed:)();
      sub_100083914(v21);
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = (v2 + 8);
      v23 = -1 << *(v2 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v2[(v24 >> 6) + 8]) == 0)
      {
        v28 = 0;
        v29 = (63 - v23) >> 6;
        while (++v25 != v29 || (v28 & 1) == 0)
        {
          v30 = v25 == v29;
          if (v25 == v29)
          {
            v25 = 0;
          }

          v28 |= v30;
          v31 = *&v22[8 * v25];
          if (v31 != -1)
          {
            v26 = __clz(__rbit64(~v31)) + (v25 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v2[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
      *(v2[6] + v26) = v21;
      sub_100008EA8(&v41, (v2[7] + 32 * v26));
      ++v2[2];
      v27 = (&v44 + 8);
    }

    else
    {
      sub_1000261E8(&v51, &qword_1000DD030, &unk_1000AC840);
      v27 = &v33;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005B6D4()
{
  v1 = v0;
  type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  sub_10005D7A8();
  v52 = v2;
  v51 = *(v3 + 64);
  __chkstk_darwin(v4);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  sub_10000BD44();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v54 = sub_100003998(&qword_1000DDC28, &qword_1000AC800);
  sub_10000BD44();
  v57 = v15;
  __chkstk_darwin(v16);
  v49 = &v47 - v17;
  sub_100003998(&qword_1000DDC30, &qword_1000AC808);
  sub_10000BD44();
  v55 = v18;
  v56 = v19;
  __chkstk_darwin(v18);
  v53 = &v47 - v20;
  v21 = sub_100008614((v0 + 8), *(v0 + 32));
  v22 = v14;
  v48 = v14;
  URL.appendingPathComponent(_:)();
  v23 = sub_10005BCA0();
  v47 = sub_100008614(v21, v21[3]);
  v24 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v6;
  v26 = (*(v8 + 16))(v24, v22, v6);
  v29 = sub_1000698CC(v26, v27, v28);
  v30 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v32 + v30;
  v34 = v25;
  (*(v8 + 32))(v33, v24, v25);
  *(v32 + v31) = v29;
  v35 = v21[5];

  v36 = sub_10005CDFC(sub_10005BF74, v32, v23, 0, v35, v47);
  swift_bridgeObjectRelease_n();

  (*(v8 + 8))(v48, v34);
  v58 = v36;
  v37 = v50;
  sub_10005D14C(v1, v50);
  v38 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v39 = swift_allocObject();
  sub_10005D1B4(v37, v39 + v38);
  sub_100003998(&qword_1000DDC38, &qword_1000AC810);
  sub_10000A6FC(&qword_1000DDC40, &qword_1000DDC38, &qword_1000AC810, &protocol conformance descriptor for AnyPublisher<A, B>);
  v40 = v49;
  Publisher.catch<A>(_:)();

  sub_10005D14C(v1, v37);
  v41 = swift_allocObject();
  sub_10005D1B4(v37, v41 + v38);
  sub_10000A6FC(&qword_1000DDC48, &qword_1000DDC28, &qword_1000AC800, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v43 = v53;
  v42 = v54;
  Publisher.tryMap<A>(_:)();

  (*(v57 + 8))(v40, v42);
  sub_10000A6FC(&qword_1000DDC50, &qword_1000DDC30, &qword_1000AC808, &protocol conformance descriptor for Publishers.TryMap<A, B>);
  v44 = v55;
  v45 = Publisher.eraseToAnyPublisher()();
  (*(v56 + 8))(v43, v44);
  return v45;
}

uint64_t type metadata accessor for SubscriptionFetchFullApsMessageOperation(uint64_t a1)
{
  result = qword_1000DDCE0;
  if (!qword_1000DDCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005BCA0()
{
  v1 = v0;
  v19 = type metadata accessor for Date();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v1[6];
  v7 = v1[7];
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  v9 = *(v1 + *(FullApsMessageOperation + 32));
  sub_100008614((v5 + 16), *(v5 + 40));
  v10 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB8E0;
  *(inited + 32) = 3;
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 72) = 8;

  v12 = Date.init()();
  sub_10008C99C(v12);
  v14 = v13;
  (*(v2 + 8))(v4, v19);
  *(inited + 104) = &type metadata for UInt64;
  *(inited + 80) = v14;
  *(inited + 112) = 9;
  v15 = *(v1 + *(FullApsMessageOperation + 40));
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v15;
  *(inited + 152) = 44;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = v9;
  *(inited + 192) = 45;
  *(inited + 224) = &type metadata for EventType.EventName;
  *(inited + 200) = 4;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v16 = Dictionary.init(dictionaryLiteral:)();
  v17 = sub_10005B41C(v16);

  return v17;
}

uint64_t sub_10005BEE4()
{
  type metadata accessor for URL();
  sub_100026794();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_10005BF74()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10001E55C(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10005C004@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100003998(&qword_1000DDC58, &unk_1000AC818);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  __chkstk_darwin(FullApsMessageOperation - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100007DE8(v14, qword_1000E6D30);
  sub_10005D14C(a2, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = a3;
    v32 = v18;
    v19 = v18;
    *v17 = 136315138;
    v20 = v7;
    v21 = v6;
    v30 = v9;
    v22 = v13;
    v24 = *(v12 + 6);
    v23 = *(v12 + 7);

    sub_10005D40C(v12);
    v25 = v24;
    v6 = v21;
    v7 = v20;
    v26 = sub_1000170D4(v25, v23, &v32);
    v13 = v22;
    v9 = v30;

    *(v17 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to parse full APS message for canonical id: %s.", v17, 0xCu);
    sub_100008A94(v19);
    a3 = v31;
  }

  else
  {

    sub_10005D40C(v12);
  }

  v32 = v13;
  swift_errorRetain();
  sub_100003998(&qword_1000DBDF0, &qword_1000AA710);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DDC60, &qword_1000DDC58, &unk_1000AC818, &protocol conformance descriptor for Fail<A, B>);
  v27 = Publisher.eraseToAnyPublisher()();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v27;
  return result;
}

void sub_10005C330(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v7 - 8);
  v9 = v77 - v8;
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  __chkstk_darwin(FullApsMessageOperation);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = v77 - v14;
  __chkstk_darwin(v15);
  v17 = v77 - v16;
  v18 = *(a1 + *(sub_100003998(&qword_1000DBDF0, &qword_1000AA710) + 40));
  v19 = *(v18 + *(*v18 + 184));
  if (sub_10001BE20(v19))
  {
    v80 = a3;
    sub_1000835D4();
    v81 = v3;
    v78 = v9;
    v79 = v12;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v19 + 32);
    }

    v21 = v20;
    v22 = *a2;
    v24 = a2[6];
    v23 = a2[7];
    v25 = *(FullApsMessageOperation + 32);
    v82 = a2;
    v26 = *(a2 + v25);
    sub_100008614((v22 + 16), *(v22 + 40));
    v77[1] = v26;
    v27 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
    if (v27)
    {
      v28 = v27;
      v29 = v27;
      v30 = v21;
      sub_10005CB18(v18, v21, v28);

      v31 = SportingEvent.partialSportingEvent.getter();
      v32 = dispatch thunk of SportingEvent.versionNumber.getter();

      v33 = SportingEventSubscription.sportingEventDetails.getter();
      v34 = dispatch thunk of SportingEvent.versionNumber.getter();

      if (v32 >= v34)
      {
        v70 = SportingEvent.partialSportingEvent.getter();
        v71 = type metadata accessor for Date();
        v72 = v78;
        sub_100008E2C(v78, 1, 1, v71);
        SportingEventSubscription.update(sportingEventDetails:updatedAt:)();

        sub_1000261E8(v72, &qword_1000DC5A0, &unk_1000AB0E0);
        sub_100008614((v22 + 16), *(v22 + 40));
        v73 = v81;
        dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
        if (v73)
        {

          return;
        }
      }

      else
      {
        if (qword_1000DBA18 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100007DE8(v35, qword_1000E6D30);
        v36 = v85;
        sub_10005D14C(v82, v85);
        v37 = v29;
        v38 = v21;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v83 = v42;
          *v41 = 136315650;
          v43 = *(v36 + 48);
          v44 = *(v36 + 56);

          sub_10005D40C(v36);
          v45 = sub_1000170D4(v43, v44, &v83);

          *(v41 + 4) = v45;
          *(v41 + 12) = 2048;
          v46 = SportingEvent.partialSportingEvent.getter();
          v47 = dispatch thunk of SportingEvent.versionNumber.getter();

          *(v41 + 14) = v47;
          *(v41 + 22) = 2048;
          v48 = SportingEventSubscription.sportingEventDetails.getter();
          v49 = dispatch thunk of SportingEvent.versionNumber.getter();

          *(v41 + 24) = v49;
          _os_log_impl(&_mh_execute_header, v39, v40, "Skipped stale subscription when fetching full APS message for canonical id: %s. (%ld < %ld)", v41, 0x20u);
          sub_100008A94(v42);
        }

        else
        {

          sub_10005D40C(v36);
        }
      }

      *v80 = 1;
    }

    else
    {
      v85 = v23;
      v58 = v21;
      if (qword_1000DBA18 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100007DE8(v59, qword_1000E6D30);
      v60 = v79;
      sub_10005D14C(v82, v79);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v83 = v64;
        *v63 = 136315138;
        v65 = v58;
        v66 = *(v60 + 48);
        v67 = *(v60 + 56);

        sub_10005D40C(v60);
        v68 = v66;
        v58 = v65;
        v69 = sub_1000170D4(v68, v67, &v83);

        *(v63 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v61, v62, "Missing subscription when fetching full APS message for canonical id: %s.", v63, 0xCu);
        sub_100008A94(v64);
      }

      else
      {

        sub_10005D40C(v60);
      }

      v74 = v85;
      v83 = 0;
      v84 = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      v75._countAndFlagsBits = 0xD000000000000046;
      v75._object = 0x80000001000B20B0;
      String.append(_:)(v75);
      v76._countAndFlagsBits = v24;
      v76._object = v74;
      String.append(_:)(v76);
      sub_100029E04(3u, v83, v84);

      swift_willThrow();
    }
  }

  else
  {
    if (qword_1000DBA18 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100007DE8(v50, qword_1000E6D30);
    sub_10005D14C(a2, v17);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v83 = v54;
      *v53 = 136315138;
      v55 = *(v17 + 6);
      v56 = *(v17 + 7);

      sub_10005D40C(v17);
      v57 = sub_1000170D4(v55, v56, &v83);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "Missing event with canonical id %s in full APS message.", v53, 0xCu);
      sub_100008A94(v54);
    }

    else
    {

      sub_10005D40C(v17);
    }

    sub_100029E04(5u, 0xD000000000000014, 0x80000001000B2100);
    swift_willThrow();
  }
}

void sub_10005CB18(void *a1, void *a2, uint64_t a3)
{
  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007DE8(v6, qword_1000E6D30);
  swift_retain_n();
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136316418;
    v11 = SportingEvent.canonicalId.getter();
    v13 = sub_1000170D4(v11, v12, &v23);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = SportingEvent.version.getter();
    v16 = sub_1000170D4(v14, v15, &v23);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2048;
    Date.timeIntervalSince1970.getter();
    *(v10 + 24) = v17;
    *(v10 + 32) = 2048;
    v18 = a1[2];

    *(v10 + 34) = v18;

    *(v10 + 42) = 2080;
    *(v10 + 44) = sub_1000170D4(a1[5], a1[6], &v23);
    *(v10 + 52) = 2048;
    v19 = *(a1 + qword_1000E6E00);
    if (*(a1 + qword_1000E6E00 + 8))
    {
      v19 = -1.0;
    }

    *(v10 + 54) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "=== Fetched full APS message for %s, version %s, message timestamp %f, type %ld, tempoSessionId %s, liveActivityTtl %f ===", v10, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
  }

  type metadata accessor for ApsMessageProcessingOperation(0);
  sub_100092B94(v7, a3);
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "=== End full APS message ===", v21, 2u);
  }
}

uint64_t sub_10005CDFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = sub_100003998(&qword_1000DDC68, &unk_1000AC828);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v22 - v12;
  v28[3] = &type metadata for AMSApiRequest;
  v28[4] = &off_1000D0740;
  v14 = swift_allocObject();
  v28[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = a4;

  sub_100008180(a1, a2, a3, a4, a6);
  v22[1] = v16;
  v27 = v16;
  sub_100008A38(a6, __src);
  sub_10000BC8C(v28, v25);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  memcpy((v17 + 24), __src, 0x60uLL);
  sub_10000AC3C(v25, v17 + 120);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10005D510;
  *(v18 + 24) = v17;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBDF0, &qword_1000AA710);
  sub_100003998(&qword_1000DDC70, &qword_1000AC838);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DDC78, &qword_1000DDC70, &qword_1000AC838, &protocol conformance descriptor for Publishers.MapError<A, B>);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DDC80, &qword_1000DDC68, &unk_1000AC828, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v19 = v23;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v13, v19);
  sub_100008A94(v28);
  return v20;
}

uint64_t sub_10005D14C(uint64_t a1, uint64_t a2)
{
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  (*(*(FullApsMessageOperation - 8) + 16))(a2, a1, FullApsMessageOperation);
  return a2;
}

uint64_t sub_10005D1B4(uint64_t a1, uint64_t a2)
{
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  (*(*(FullApsMessageOperation - 8) + 32))(a2, a1, FullApsMessageOperation);
  return a2;
}

uint64_t sub_10005D218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SubscriptionFetchFullApsMessageOperation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10005C004(a1, v6, a2);
}

uint64_t sub_10005D298()
{
  type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  sub_10005D7A8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  sub_100008A94((v1 + v4 + 8));

  v7 = *(v0 + 36);
  type metadata accessor for URL();
  sub_100026794();
  (*(v8 + 8))(v1 + v4 + v7);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_10005D40C(uint64_t a1)
{
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  (*(*(FullApsMessageOperation - 8) + 8))(a1, FullApsMessageOperation);
  return a1;
}

uint64_t sub_10005D468()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005D4B0()
{

  sub_100008A94((v0 + 32));
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 80));
  sub_100008A94((v0 + 120));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10005D520()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D574(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 28);

    return sub_100008B84(v9, a2, v8);
  }
}

void *sub_10005D610(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 28);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005D690(uint64_t a1)
{
  result = type metadata accessor for DataRepository();
  if (v2 <= 0x3F)
  {
    result = sub_10005D748();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10005D748()
{
  result = qword_1000DD370;
  if (!qword_1000DD370)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DD370);
  }

  return result;
}

uint64_t sub_10005D7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  return sub_10004F60C(a1, a2) & 1;
}

uint64_t sub_10005D854()
{
  sub_10000BCF0(v0 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_subscriptionOperation);
  sub_100008A94((v0 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService));
}

id sub_10005D8CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection closed.", v6, 2u);
    sub_10000B008(v6);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_10005DA7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  sub_10005DB10(a1, a2, 0, sub_1000642C0, v7);
}

uint64_t sub_10005DB10(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_1000499E0();
  v14 = v13;
  if ((*(v5 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_areLiveActivitiesEnabledForBundleId))())
  {
    sub_100064344();
    v38 = v12;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = ObjectType;
    v18 = a1;
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = a2;
    v19[5] = a4;
    v19[6] = a5;
    sub_100064344();
    v20 = a5;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v14;
    v24 = a4;
    v25 = v22;
    v22[2] = v21;
    v22[3] = v18;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = v24;
    v22[7] = v20;
    v22[8] = v38;
    v22[9] = v23;
    v22[10] = v37;
    sub_10005B070();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v20;

    swift_retain_n();
    swift_bridgeObjectRetain_n();

    sub_10005F504(sub_100062D00, v19, sub_100062DA4, v25, sub_100062DDC, v26);
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v15, v16);
    }

    v28 = type metadata accessor for Logger();
    sub_100007DE8(v28, qword_1000E6D90);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = a1;
      v32 = swift_slowAlloc();
      v33 = a4;
      v34 = swift_slowAlloc();
      v39 = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_1000170D4(v31, a2, &v39);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_1000170D4(v12, v14, &v39);
      _os_log_impl(&_mh_execute_header, v29, v30, "Skipping activity for event %s because live activities are not enabled for %s", v32, 0x16u);
      swift_arrayDestroy();
      v35 = v34;
      a4 = v33;
      sub_10000B008(v35);
      sub_10000B008(v32);
    }

    sub_100045BF8();
    swift_allocError();
    *v36 = v12;
    v36[1] = v14;
    a4();
  }
}

uint64_t sub_10005DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10005DF60);
}

uint64_t sub_10005DF60()
{
  sub_10001C524();
  sub_100008614((*(v0 + 16) + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService), *(*(v0 + 16) + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService + 24));
  sub_10001C418();
  sub_100064354();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = sub_1000643D8(v2);

  return v5(v3);
}

uint64_t sub_10005E080()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_10005E304;
  }

  else
  {
    v5 = sub_10005E18C;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_10005E18C()
{
  sub_10001C370();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v2, v3);
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();

  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v5, v0))
  {
    sub_10006446C();
    v6 = swift_slowAlloc();
    v14 = sub_10006444C(4.8151e-34, v6, v7, v8, v9, v10, v11, v12, v13, v6);
    sub_1000643F8(v14);
    sub_10006440C(&_mh_execute_header, v15, v16, "Should suppress game start notification for %s: %{BOOL}d");
    sub_100008A94(v6);
    sub_10000B008(v6);
    sub_10005AFC4();
  }

  if (*(v1 + 72))
  {
    v17 = 0;
  }

  else
  {
    sub_100045BF8();
    v17 = swift_allocError();
    *v18 = xmmword_1000AC890;
  }

  (*(v1 + 40))(v17);

  sub_10001BEDC();

  return v19();
}

uint64_t sub_10005E304()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v2, v3);
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v5, v0))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot check if activity should be suppressed: %@");
    sub_10001EF70(v7, &unk_1000DD790, &unk_1000AB7A0);
    sub_10005AFC4();
    sub_10000B008(v6);
  }

  v11 = *(v1 + 64);
  v12 = *(v1 + 40);

  swift_errorRetain();
  v12(v11);

  sub_10001BEDC();

  return v13();
}

void sub_10005E478(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a7;
  v14 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - v15;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  __chkstk_darwin(ActivityOperation);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v68 = a6;
    v70 = a2;
    if (sub_10005EB6C(a2, a3, a4))
    {
      v22 = a5;
      if (qword_1000DBA38 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100007DE8(v23, qword_1000E6D90);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      v26 = os_log_type_enabled(v24, v25);
      v27 = v70;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        __src[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1000170D4(v27, a3, __src);
        _os_log_impl(&_mh_execute_header, v24, v25, "Skipping activity for event %s since it is suppressed from autostart", v28, 0xCu);
        sub_100008A94(v29);
      }

      sub_100045BF8();
      swift_allocError();
      *v30 = xmmword_1000AC890;
      v22();
    }

    else
    {
      v67 = a5;
      v31 = v21 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_subscriptionOperation;
      sub_10005ECC8(a4, __src);
      v32 = sub_10005EF2C(a4);
      v65 = v33;
      v64 = v34;
      v63 = v35;
      v36 = type metadata accessor for Date();
      sub_100008E2C(v16, 1, 1, v36);
      sub_10000BC30(v31, v19);
      sub_10006F7C0(v19 + 23);
      v66 = v21;
      if (qword_1000DB9B8 != -1)
      {
        swift_once();
      }

      v37 = qword_1000E6CC0;
      *(v19 + 31) = type metadata accessor for BagProvider();
      *(v19 + 32) = &off_1000D0860;
      *(v19 + 28) = v37;
      v38 = type metadata accessor for AccountManager();
      v39 = swift_allocObject();
      *(v19 + 36) = v38;
      *(v19 + 37) = &off_1000D0550;
      *(v19 + 33) = v39;
      v40 = *(v31 + 40);
      sub_10000BC8C(v31 + 56, (v19 + 312));
      sub_10003FA5C(v16, &v19[ActivityOperation[12]], &qword_1000DC5A0, &unk_1000AB0E0);
      *(v19 + 38) = v40;
      v19[352] = 0;
      memcpy(v19 + 360, __src, 0x68uLL);
      v41 = v65;
      *(v19 + 58) = v32;
      *(v19 + 59) = v41;
      v42 = v63;
      *(v19 + 60) = v64;
      *(v19 + 61) = v42;
      v19[496] = 1;
      v43 = &v19[ActivityOperation[13]];
      *v43 = 0xD000000000000011;
      *(v43 + 1) = 0x80000001000B0480;
      v44 = &v19[ActivityOperation[14]];
      *v44 = v69;
      v44[1] = a8;
      v45 = &v19[ActivityOperation[15]];
      *v45 = v70;
      v45[1] = a3;
      v19[ActivityOperation[16]] = 1;
      v69 = ActivityOperation[17];
      v46 = type metadata accessor for ActivityAuthorization();
      v47 = objc_allocWithZone(v46);

      v48 = [v47 init];
      v49 = sub_1000499E0();
      v51 = v50;
      v71[3] = v46;
      v71[4] = &off_1000D1900;
      v71[0] = v48;
      type metadata accessor for ActivityCapUtility();
      v52 = swift_allocObject();
      v53 = sub_10000B90C(v71, v46);
      v54 = __chkstk_darwin(v53);
      v56 = (&v63 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v57 + 16))(v56, v54);
      v58 = *v56;
      v52[5] = v46;
      v52[6] = &off_1000D1900;
      v52[7] = v49;
      v52[2] = v58;
      v52[8] = v51;
      sub_100008A94(v71);

      sub_10001EF70(v16, &qword_1000DC5A0, &unk_1000AB0E0);
      *&v19[v69] = v52;
      v59 = sub_10008CAA4(0);
      sub_10005A71C(v19);
      v71[0] = v59;
      v60 = swift_allocObject();
      v61 = v68;
      v60[2] = v67;
      v60[3] = v61;
      v60[4] = v70;
      v60[5] = a3;

      sub_100003998(&qword_1000DCC18, &qword_1000AB790);
      sub_10002F198();
      Publisher.sink(receiveCompletion:receiveValue:)();

      v62 = v66;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }
}

BOOL sub_10005EB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(v3 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_autostartStatus))(0, 0);
  v8 = sub_1000154A0(v7);
  if (sub_100049B40(a1, a2, v8) || (sub_1000601D0(a3), v10 = sub_100060344(v8, v9), , (v10 & 1) == 0))
  {

    return 1;
  }

  else
  {
    sub_10005ECC8(a3, v14);
    if (v15 == 1 || (v17 = v16, sub_10003FA5C(&v17, v13, &qword_1000DDD90, &qword_1000AC8F0), sub_10001EF70(v14, &qword_1000DDD98, &qword_1000AC8F8), !*(&v17 + 1)))
    {

      return 0;
    }

    else
    {
      v11 = sub_100049B40(v17, *(&v17 + 1), v8);

      sub_10001EF70(&v17, &qword_1000DDD90, &qword_1000AC8F0);
    }
  }

  return v11;
}

uint64_t sub_10005ECC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_6;
  }

  *&v24 = 0xD000000000000015;
  *(&v24 + 1) = 0x80000001000B21D0;
  AnyHashable.init<A>(_:)();
  sub_10007C118(v20, a1, &v22);
  sub_10001BAF0(v20);
  if (!*(&v23 + 1))
  {
LABEL_6:
    result = sub_10001EF70(&v22, &qword_1000DBD08, &qword_1000AA690);
LABEL_8:
    v19 = 0;
    v13 = xmmword_1000AC240;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_9;
  }

  sub_100008EA8(&v22, &v24);
  v4 = objc_opt_self();
  sub_100008614(&v24, v25);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v20[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v20];
  sub_10001C418();
  swift_unknownObjectRelease();
  v7 = *&v20[0];
  if (!v4)
  {
    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    result = sub_100008A94(&v24);
    goto LABEL_8;
  }

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100062E98();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100008BAC(v8, v10);
  result = sub_100008A94(&v24);
  v14 = v20[0];
  v13 = v20[1];
  v15 = v20[2];
  v16 = v20[3];
  v17 = v20[4];
  v18 = v20[5];
  v19 = v21;
LABEL_9:
  *a2 = v14;
  *(a2 + 16) = v13;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  *(a2 + 80) = v18;
  *(a2 + 96) = v19;
  return result;
}

uint64_t sub_10005EF2C(uint64_t a1)
{
  if (!a1)
  {
    v13 = 0u;
    v14 = 0u;
    goto LABEL_6;
  }

  AnyHashable.init<A>(_:)();
  sub_10007C118(&v11, a1, &v13);
  sub_10001BAF0(&v11);
  if (!*(&v14 + 1))
  {
LABEL_6:
    sub_10001EF70(&v13, &qword_1000DBD08, &qword_1000AA690);
    return 0;
  }

  sub_100008EA8(&v13, &v11);
  v2 = objc_opt_self();
  v3 = v12;
  sub_100008614(&v11, v12);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v13 = 0;
  v5 = [v2 dataWithJSONObject:v4 options:0 error:&v13];
  sub_10001C418();
  swift_unknownObjectRelease();
  v6 = v13;
  if (v3)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100062E44();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v8 = sub_10006439C();
    sub_100008BAC(v8, v9);
    sub_100008A94(&v11);
    return v13;
  }

  v7 = v6;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_100008A94(&v11);
  return 0;
}

uint64_t sub_10005F154(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t (*)(uint64_t), uint64_t, uint64_t, unint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  if (*a1)
  {
    v19 = *a1;
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    if (swift_dynamicCast())
    {
      if (v18 == 2)
      {

        v6 = 0;
        return a2(v6, a2, a3, a4, a5);
      }

      sub_100062E30(v17, v18);
    }

    if (qword_1000DBA38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007DE8(v9, qword_1000E6D90);
    swift_errorRetain();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_1000170D4(a4, a5, &v17);
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000170D4(v13, v14, &v17);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to create activity for canonical ID: %s - %s", v12, 0x16u);
      swift_arrayDestroy();
    }
  }

  return a2(v6, a2, a3, a4, a5);
}

uint64_t sub_10005F398(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D90);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Cannot check if app intents are supported: %@", v8, 0xCu);
    sub_10001EF70(v9, &unk_1000DD790, &unk_1000AB7A0);
  }

  return a2(a1);
}

uint64_t sub_10005F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  sub_100008E2C(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a6;
  v18 = v6;

  sub_10004A77C();
}

uint64_t sub_10005F72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  sub_10005B070();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  sub_10005B070();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  swift_retain_n();

  sub_10005F504(sub_1000608E4, v9, sub_100060938, v10, sub_100060940, v11);
}

uint64_t sub_10005F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  sub_100064364();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for TaskPriority();
    sub_100008E2C(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a2;
    v15[6] = a3;
    v15[7] = a4;
    v15[8] = a5;

    sub_10004A77C();
  }

  return result;
}

uint64_t sub_10005F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10005F9CC);
}

uint64_t sub_10005F9CC()
{
  sub_10001C524();
  sub_100008614((*(v0 + 16) + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService), *(*(v0 + 16) + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService + 24));
  sub_10001C418();
  sub_100064354();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = sub_1000643D8(v2);

  return v5(v3);
}

uint64_t sub_10005FAEC()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_10005FD2C;
  }

  else
  {
    v5 = sub_10005FBF8;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_10005FBF8()
{
  sub_10001C370();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v2, v3);
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();

  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v5, v0))
  {
    sub_10006446C();
    v6 = swift_slowAlloc();
    v14 = sub_10006444C(4.8151e-34, v6, v7, v8, v9, v10, v11, v12, v13, v6);
    sub_1000643F8(v14);
    sub_10006440C(&_mh_execute_header, v15, v16, "Should suppress sentiment notification for %s: %{BOOL}d");
    sub_100008A94(v6);
    sub_10000B008(v6);
    sub_10005AFC4();
  }

  (*(v1 + 40))(*(v1 + 72));
  sub_10001BEDC();

  return v17();
}

uint64_t sub_10005FD2C()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v2, v3);
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v5, v0))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot check if notification should be suppressed: %@");
    sub_10001EF70(v7, &unk_1000DD790, &unk_1000AB7A0);
    sub_10005AFC4();
    sub_10000B008(v6);
  }

  v11 = *(v1 + 40);

  v11(0);

  sub_10001BEDC();

  return v12();
}

uint64_t sub_10005FE90(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Suppressing sentiment notification as app intents are not supported", v7, 2u);
  }

  return a1(0);
}

uint64_t sub_10005FF88(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cannot check if app intents are supported: %@", v7, 0xCu);
    sub_10001EF70(v8, &unk_1000DD790, &unk_1000AB7A0);
  }

  return a2(0);
}

void sub_1000601D0(uint64_t a1)
{
  sub_10005ECC8(a1, v13);
  if (v14 != 1)
  {
    v16 = v15;
    sub_10003FA5C(&v16, v12, &qword_1000DDDA0, &qword_1000AC900);
    sub_10001EF70(v13, &qword_1000DDD98, &qword_1000AC8F8);
    v1 = v16;
    if (v16)
    {
      v2 = 0;
      v3 = *(v16 + 16);
      v4 = (v16 + 40);
      v5 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v3 == v2)
        {
          sub_10001EF70(&v16, &qword_1000DDDA0, &qword_1000AC900);
          sub_100015240(v5);
          return;
        }

        if (v2 >= *(v1 + 16))
        {
          break;
        }

        v7 = *(v4 - 1);
        v6 = *v4;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100016520();
          v5 = v10;
        }

        v8 = v5[2];
        if (v8 >= v5[3] >> 1)
        {
          sub_100016520();
          v5 = v11;
        }

        v5[2] = v8 + 1;
        v9 = &v5[2 * v8];
        v9[4] = v7;
        v9[5] = v6;
        v4 += 9;
        ++v2;
      }

      __break(1u);
    }
  }
}

uint64_t sub_100060344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100060550);
}

uint64_t sub_100060550()
{
  sub_10001C524();
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService);
  v2 = v1[3];
  v3 = v1[4];
  sub_100008614(v1, v2);
  sub_10001C418();
  sub_100064354();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100060670;

  return v7(v2, v3);
}

uint64_t sub_100060670(char a1)
{
  sub_10001BF54();
  v5 = v4;
  sub_10001BED0();
  *v6 = v5;
  v7 = *v2;
  sub_10001BED0();
  *v8 = v7;
  *(v5 + 80) = v1;

  if (v1)
  {
    v9 = sub_100060810;
  }

  else
  {
    *(v5 + 88) = a1 & 1;
    v9 = sub_100060790;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_100060790()
{
  sub_10001BEC4();
  v1 = 40;
  if (*(v0 + 88))
  {
    v1 = 24;
  }

  (*(v0 + v1))();
  sub_10001BEDC();

  return v2();
}

uint64_t sub_100060810()
{
  sub_10001BEC4();
  (*(v0 + 56))(*(v0 + 80));

  sub_10001BEDC();

  return v1();
}

uint64_t sub_10006087C()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100064344();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000608B4()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100064344();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100060904()
{

  sub_10005B070();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100060948()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000609A0(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  v4[1] = sub_1000642A8;
  sub_100064310();

  return sub_10006051C(v6, v7, v8, v9, v10, v11, v12, v2);
}

uint64_t sub_100060A7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100060B04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6169766572626261 && a2 == 0xEC0000006E6F6974;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F676F4C6D616574 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1701670760 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100060CBC(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x6169766572626261;
      break;
    case 2:
      result = 0x6F676F4C6D616574;
      break;
    case 3:
      result = 0x756F72676B636162;
      break;
    case 4:
      result = 1701670760;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100060D80(void *a1)
{
  sub_100003998(&qword_1000DDE00, &qword_1000ACB70);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v3);
  sub_100064374();
  sub_100008614(a1, a1[3]);
  v4 = sub_1000634DC();
  sub_10006448C(&type metadata for LiveActivityAutostartContent.Competitor.CodingKeys, v5, v4);
  sub_100064328();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_100064328();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100063600();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100064328();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v6 = sub_10006439C();
  return v7(v6);
}

void sub_100060F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1000643A8();
  v25 = v24;
  v27 = v26;
  sub_100003998(&qword_1000DDDE8, &qword_1000ACB68);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v28);
  sub_100008614(v25, v25[3]);
  sub_1000634DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100008A94(v25);
  }

  else
  {
    sub_100064334();
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v30;
    LOBYTE(v45) = 1;
    sub_100064334();
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v32;
    v40 = v31;
    LOBYTE(v44[0]) = 2;
    sub_100063544();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v39 = v45;
    v38 = v46;
    LOBYTE(v45) = 3;
    sub_100064334();
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v33;
    sub_100064334();
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = sub_100064300();
    v36(v35);
    v44[0] = v29;
    v44[1] = v43;
    v44[2] = v40;
    v44[3] = v42;
    v44[4] = v39;
    v44[5] = v38;
    v44[6] = v37;
    v44[7] = v41;
    LOBYTE(v44[8]) = v34;
    sub_100063598(v44, &v45);
    sub_100008A94(v25);
    v45 = v29;
    v46 = v43;
    v47 = v40;
    v48 = v42;
    v49 = v39;
    v50 = v38;
    v51 = v37;
    v52 = v41;
    v53 = v34;
    sub_1000635D0(&v45);
    memcpy(v27, v44, 0x41uLL);
  }

  sub_1000643C0();
}

uint64_t sub_100061298(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001000B2210 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54656D6147657270 && a2 == 0xEC000000656C7469;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x644974726F7073 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x644965756761656CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000614E8(char a1)
{
  result = 0x54656D6147657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      v3 = 0x5474726F6873;
      goto LABEL_6;
    case 3:
      v3 = 0x7465706D6F63;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7469000000000000;
      break;
    case 4:
      result = 0x644974726F7073;
      break;
    case 5:
      result = 0x644965756761656CLL;
      break;
    case 6:
      result = 0x64496E6F69746361;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1000615E4(void *a1)
{
  sub_100003998(&qword_1000DDE10, &qword_1000ACB78);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v3);
  sub_100064374();
  sub_100008614(a1, a1[3]);
  v4 = sub_1000633CC();
  sub_10006448C(&type metadata for LiveActivityAutostartContent.CodingKeys, v5, v4);
  sub_1000642E0();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003998(&qword_1000DDDD0, &qword_1000ACB60);
    sub_100063654(&qword_1000DDE18, sub_1000636CC, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v6 = sub_10006439C();
  return v7(v6);
}

void sub_100061814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000643A8();
  v26 = v25;
  v28 = v27;
  v29 = sub_100003998(&qword_1000DDDC0, &qword_1000ACB58);
  sub_10000AC48();
  v31 = v30;
  sub_10000ACFC();
  __chkstk_darwin(v32);
  v34 = &v50 - v33;
  sub_100008614(v26, v26[3]);
  sub_1000633CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100008A94(v26);
  }

  else
  {
    LOBYTE(v60) = 0;
    sub_1000642CC();
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v73 = v36 & 1;
    LOBYTE(v60) = 1;
    sub_1000642CC();
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v38;
    LOBYTE(v60) = 2;
    sub_1000642CC();
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v39;
    sub_100003998(&qword_1000DDDD0, &qword_1000ACB60);
    LOBYTE(v59[0]) = 3;
    sub_100063654(&qword_1000DDDD8, sub_100063420, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v54 = v60;
    LOBYTE(v60) = 4;
    sub_1000642CC();
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v37;
    v56 = v40;
    LOBYTE(v60) = 5;
    sub_1000642CC();
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v42;
    v51 = v41;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v34;
    v47 = v46;
    (*(v31 + 8))(v45, v29);
    v59[0] = v35;
    HIDWORD(v50) = v73;
    LOBYTE(v59[1]) = v73;
    v59[2] = v53;
    v48 = v58;
    v59[3] = v58;
    v59[4] = v55;
    v49 = v57;
    v59[5] = v57;
    v59[6] = v54;
    v59[7] = v52;
    v59[8] = v56;
    v59[9] = v51;
    v59[10] = v43;
    v59[11] = v44;
    v59[12] = v47;
    sub_100063474(v59, &v60);
    sub_100008A94(v26);
    v60 = v35;
    v61 = BYTE4(v50);
    v62 = v53;
    v63 = v48;
    v64 = v55;
    v65 = v49;
    v66 = v54;
    v67 = v52;
    v68 = v56;
    v69 = v51;
    v70 = v43;
    v71 = v44;
    v72 = v47;
    sub_1000634AC(&v60);
    memcpy(v28, v59, 0x68uLL);
  }

  sub_1000643C0();
}

BOOL sub_100061D00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF2F8, v2);

  return v3 != 0;
}

void sub_100061D48(uint64_t a1, uint64_t a2)
{
  sub_1000643A8();
  v3 = v2;
  v15[1] = v4;
  v6 = v5;
  v9 = sub_100003998(v7, v8);
  sub_10000AC48();
  v11 = v10;
  sub_10000ACFC();
  __chkstk_darwin(v12);
  v14 = v15 - v13;
  sub_100008614(v6, v6[3]);
  v3();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  (*(v11 + 8))(v14, v9);
  sub_1000643C0();
}

void sub_100061E70(uint64_t a1, uint64_t a2)
{
  sub_1000643A8();
  v5 = v4;
  v7 = v6;
  v10 = sub_100003998(v8, v9);
  sub_10000AC48();
  v13 = v11;
  sub_10000ACFC();
  __chkstk_darwin(v12);
  sub_100064364();
  sub_100008614(v7, v7[3]);
  v5();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v13 + 8))(v3, v10);
  }

  sub_100008A94(v7);
  sub_1000643C0();
}

uint64_t sub_100061FB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000B21F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_1000620C4(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10006210C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x64496E6F69746361;
  }
}

void sub_100062148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1000643A8();
  v25 = v24;
  sub_100003998(&qword_1000DDE28, &qword_1000ACB80);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v26);
  sub_100064374();
  sub_100008614(v25, v25[3]);
  sub_100063324();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100064328();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v23)
  {
    sub_100063720();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v27 = sub_10006439C();
  v28(v27);
  sub_1000643C0();
}

uint64_t sub_1000622A8(void *a1)
{
  v3 = sub_100003998(&qword_1000DDDA8, &qword_1000ACB50);
  sub_10000AC48();
  v5 = v4;
  sub_10000ACFC();
  __chkstk_darwin(v6);
  sub_100064364();
  sub_100008614(a1, a1[3]);
  sub_100063324();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100063378();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v5 + 8))(v1, v3);
  sub_100008A94(a1);
  return v8;
}

Swift::Int sub_100062470()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000624B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100060A7C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000624E0(uint64_t a1)
{
  v2 = sub_100063F38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006251C(uint64_t a1)
{
  v2 = sub_100063F38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000625EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100060B04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100062634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100060CB4();
  *a1 = result;
  return result;
}

uint64_t sub_10006265C(uint64_t a1)
{
  v2 = sub_1000634DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062698(uint64_t a1)
{
  v2 = sub_1000634DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000626D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_100060F3C(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x41uLL);
  }
}

Swift::Int sub_10006276C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000627B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100061298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000627E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000C8B4();
  *a1 = result;
  return result;
}

uint64_t sub_100062808(uint64_t a1)
{
  v2 = sub_1000633CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062844(uint64_t a1)
{
  v2 = sub_1000633CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100062880(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_100061814(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD1(__src[0]), SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x68uLL);
  }
}

BOOL sub_1000628F4@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100061D00(*a1);
  *a2 = result;
  return result;
}

BOOL sub_100062964@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100061D00(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062990(uint64_t a1)
{
  v2 = sub_100063EE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000629CC(uint64_t a1)
{
  v2 = sub_100063EE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100062A4C(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  sub_100061E70(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    a3[1] = v6;
  }
}

uint64_t sub_100062AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100061FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100062B08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100062084();
  *a1 = result;
  return result;
}

uint64_t sub_100062B30(uint64_t a1)
{
  v2 = sub_100063324();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062B6C(uint64_t a1)
{
  v2 = sub_100063324();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100062BA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000622A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100062BFC()
{
  sub_10001C370();
  sub_100064384();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  v2[1] = sub_1000642A8;
  sub_100064310();

  return sub_10005F9A4(v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t sub_100062CB8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062D4C()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100062DE4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062E30(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

unint64_t sub_100062E44()
{
  result = qword_1000DDD80;
  if (!qword_1000DDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDD80);
  }

  return result;
}

unint64_t sub_100062E98()
{
  result = qword_1000DDD88;
  if (!qword_1000DDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDD88);
  }

  return result;
}

uint64_t sub_100062EEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100062F3C()
{
  sub_10001C370();
  sub_100064384();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  v2[1] = sub_100062FEC;
  sub_100064310();

  return sub_10005DF38(v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t sub_100062FEC()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BED0();
  *v2 = v1;

  sub_10001BEDC();

  return v3();
}

uint64_t sub_1000630D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000630FC(uint64_t a1, int a2)
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