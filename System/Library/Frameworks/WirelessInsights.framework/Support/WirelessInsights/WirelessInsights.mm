uint64_t sub_1000027B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002A5C;

  return sub_100002868(a1, v4);
}

uint64_t sub_100002868(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002960;

  return v6(a1);
}

uint64_t sub_100002960()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002E98()
{
  *(v0 + 248) = *(v0 + 240);
  (*(v0 + 160))(0);
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_100194C7C;

  return sub_10019A818(4000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100002F84()
{
  v42[1] = swift_getObjectType();
  v0 = type metadata accessor for Logger();
  v45 = *(v0 - 8);
  v46 = v0;
  v1 = __chkstk_darwin(v0);
  v42[0] = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v48 = v42 - v3;
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  static Calendar.current.getter();
  v50 = *(v5 + 104);
  v50(v7, enum case for Calendar.Component.hour(_:), v4);
  v15 = Calendar.component(_:from:)();
  v16 = *(v5 + 8);
  v49 = v5 + 8;
  v16(v7, v4);
  v17 = *(v9 + 8);
  v17(v11, v8);
  static Calendar.current.getter();
  v50(v7, enum case for Calendar.Component.minute(_:), v4);
  v18 = Calendar.component(_:from:)();
  v16(v7, v4);
  result = (v17)(v11, v8);
  v20 = v18 - v18 % 5;
  if (__OFSUB__(v18, v18 % 5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = 60 * v15;
  if ((v15 * 60) >> 64 != (60 * v15) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = __OFADD__(v21, v20);
  v23 = v21 + v20;
  if (v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v23 + 10;
  if (!__OFADD__(v23, 10))
  {
    v25 = v48;
    v26 = *(v47 + 144);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 32);
      while (1)
      {
        v30 = *v28++;
        v29 = v30;
        v31 = v24 - v30;
        if (__OFSUB__(v24, v30))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (v31 < 0)
        {
          v22 = __OFSUB__(0, v31);
          v31 = -v31;
          if (v22)
          {
            goto LABEL_24;
          }
        }

        if (v31 > 720)
        {
          v31 = 1440 - v31;
        }

        if (v31 <= 10)
        {
          break;
        }

        if (!--v27)
        {
          goto LABEL_14;
        }
      }

      sub_100003E50(&off_1002B69B8, v48);
      v32 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134218496;
        *(v37 + 4) = 10;
        *(v37 + 12) = 2048;
        *(v37 + 14) = v24;
        *(v37 + 22) = 2048;
        *(v37 + 24) = v29;
        _os_log_impl(&_mh_execute_header, v32, v36, "There is at least one relevant transition previously seen in +/- %ld min of current minute of day %ld, at %ld", v37, 0x20u);
        v35 = 1;
        goto LABEL_19;
      }

      v35 = 1;
    }

    else
    {
LABEL_14:
      v25 = v42[0];
      sub_100003E50(&off_1002B69B8, v42[0]);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134218240;
        *(v34 + 4) = 10;
        *(v34 + 12) = 2048;
        *(v34 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v32, v33, "There is NO relevant transition previously seen within +/- %ld min of current minute of day %ld", v34, 0x16u);
        v35 = 0;
LABEL_19:
        v39 = v43;
        v38 = v44;

        v41 = v45;
        v40 = v46;
        goto LABEL_22;
      }

      v35 = 0;
    }

    v41 = v45;
    v40 = v46;
    v39 = v43;
    v38 = v44;
LABEL_22:

    (*(v41 + 8))(v25, v40);
    (*(v39 + 8))(v14, v38);
    return v35;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_10000350C()
{
  type metadata accessor for WiFiToCellTransitionMonitor(0);

  return sub_10000358C();
}

uint64_t type metadata accessor for WiFiToCellTransitionMonitor(uint64_t a1)
{
  result = qword_1002DA080;
  if (!qword_1002DA080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000035A8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B69B8, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleting all snapshots...", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshots;
  swift_beginAccess();
  *(v1 + v9) = _swiftEmptyArrayStorage;
}

uint64_t sub_100003738()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = ((swift_isaMask & *v3) + 640) & 0xFFFFFFFFFFFFLL | 0x2884000000000000;
    *(v0 + 160) = *((swift_isaMask & *v3) + 0x280);
    *(v0 + 168) = v4;
    v5 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_undersamplingNoTransitionEvent;
    v6 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_lastNoTransitionEventTimestamp;
    *(v0 + 176) = OBJC_IVAR___WISWiFiToCellTransitionMonitor_undersamplingNoTransitionEvent;
    *(v0 + 184) = v6;
    *(v0 + 192) = OBJC_IVAR___WISWiFiToCellTransitionMonitor_numberOfEventsUndersampledOnNoTransition;
    static Date.now.getter();
    v7 = (*(v3 + v5) & 1) != 0 || sub_100192F28() && vcvtd_n_f64_u64(sub_10019B150(0x20000000000001uLL), 0x35uLL) < 0.0025;
    v8 = *(v0 + 128);
    *(*(v0 + 40) + *(v0 + 176)) = v7;
    sub_100003E50(&off_1002B69B8, v8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 176);
      v12 = *(v0 + 40);
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = *(v12 + v11);

      _os_log_impl(&_mh_execute_header, v9, v10, "Currently undersampling a no transition event: %{BOOL}d", v13, 8u);
    }

    else
    {
    }

    v14 = *(v0 + 128);
    v15 = *(v0 + 104);
    v16 = *(v0 + 112);
    v17 = *(v16 + 8);
    *(v0 + 200) = v17;
    *(v0 + 208) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v15);
    v18 = sub_100002F84();
    *(v0 + 264) = v18 & 1;
    v19 = *(v0 + 40);
    if ((v18 & 1) != 0 || *(v19 + *(v0 + 176)) == 1)
    {
      if ((*(v19 + 152) & 1) == 0)
      {
        v20 = *(v0 + 96);
        v21 = *(v0 + 48);
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
        v23 = sub_10019BF0C(&qword_1002D6DA8, type metadata accessor for WiFiToCellTransitionMonitor, &unk_10024AC68);
        v24 = swift_allocObject();
        v24[2] = v19;
        v24[3] = v23;
        v24[4] = v19;
        v24[5] = v21;
        swift_retain_n();
        sub_100176B80(0, 0, v20, &unk_10024ADB0, v24);
      }

      v25 = swift_task_alloc();
      *(v0 + 216) = v25;
      *v25 = v0;
      v25[1] = sub_10019460C;
      v26 = *(v0 + 152);

      return sub_100199678(v26);
    }

    else
    {
      v27 = *(v0 + 160);
      sub_1000035A8();
      v27(1);
      static Clock<>.continuous.getter();
      v28 = swift_task_alloc();
      *(v0 + 224) = v28;
      *v28 = v0;
      v28[1] = sub_1001949DC;

      return sub_10019A818(1000000000000000000, 0, 0, 0, 1);
    }
  }
}

uint64_t sub_100003BCC()
{

  if ((static Task<>.isCancelled.getter() & 1) != 0 || (Strong = swift_weakLoadStrong(), (v0[11] = Strong) == 0))
  {
LABEL_7:

    v9 = v0[1];

    return v9();
  }

  v2 = Strong;
  sleep(0x3Cu);
  if (static Task<>.isCancelled.getter())
  {
    sub_100003E50(&off_1002B7A38, v0[10]);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "expired prediction remover cancelled", v5, 2u);
    }

    v6 = v0[10];
    v7 = v0[7];
    v8 = v0[8];

    (*(v8 + 8))(v6, v7);
    goto LABEL_7;
  }

  sub_100003E50(&off_1002B7A38, v0[9]);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Check for expired", v13, 2u);
  }

  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];

  (*(v15 + 8))(v14, v16);
  v17 = ((swift_isaMask & *v2) + 624) & 0xFFFFFFFFFFFFLL | 0x585F000000000000;
  v0[12] = *((swift_isaMask & *v2) + 0x270);
  v0[13] = v17;

  return _swift_task_switch(sub_100003F50, v2, 0);
}

uint64_t sub_100003E50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))();
  if (v3)
  {

    return Logger.init(subsystem:category:)();
  }

  else
  {
    if (qword_1002DA320 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v6 = sub_1001A3A08(v5, qword_1002DA328);
    v7 = *(*(v5 - 8) + 16);

    return v7(a2, v6, v5);
  }
}

uint64_t sub_100003F50()
{
  (*(v0 + 96))();

  return _swift_task_switch(sub_100003BCC, 0, 0);
}

uint64_t sub_100003FBC()
{
  result = (*((swift_isaMask & *v0) + 0x278))();
  if (result)
  {
    v2 = *((swift_isaMask & *v0) + 0x258);

    return v2();
  }

  return result;
}

uint64_t sub_100004064()
{
  v1 = (*((swift_isaMask & *v0) + 0x140))();
  v2 = (*((swift_isaMask & *v0) + 0x110))();
  v3 = sub_1000046B8(v2, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction, type metadata accessor for InternalServicePrediction);
  v4 = (*((swift_isaMask & *v0) + 0x128))(v3);
  sub_1000046B8(v4, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction, type metadata accessor for InternalServicePrediction);
  return v1;
}

void *sub_1000041BC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  static Date.now.getter();
  static Date.+ infix(_:_:)();
  v8 = *(v2 + 8);
  v9 = v8(v5, v1);
  v10 = (*((swift_isaMask & *v0) + 0xF8))(v9);
  v14 = v7;
  v11 = sub_1000043BC(sub_1001DC4D4, v13, v10);
  v8(v7, v1);
  return v11;
}

uint64_t type metadata accessor for InternalServicePrediction(uint64_t a1)
{
  result = qword_1002D8880;
  if (!qword_1002D8880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000043BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for InternalServicePrediction(0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1001DC504(a3 + v15 + v16 * v13, v12, type metadata accessor for InternalServicePrediction);
      v17 = a1(v12);
      if (v3)
      {
        sub_1001DE088(v12, type metadata accessor for InternalServicePrediction);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1001DC56C(v12, v24, type metadata accessor for InternalServicePrediction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001BBCAC(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_1001BBCAC((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_1001DC56C(v24, v14 + v15 + v20 * v16, type metadata accessor for InternalServicePrediction);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1001DE088(v12, type metadata accessor for InternalServicePrediction);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_100004648(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000046B8(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_100005380(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100004814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalServicePrediction(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1001B87F8(v13, v10, type metadata accessor for InternalServicePrediction);
        sub_1001B87F8(v14, v7, type metadata accessor for InternalServicePrediction);
        sub_1001B840C(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction, &unk_100249708);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_1001B8860(v7, type metadata accessor for InternalServicePrediction);
        sub_1001B8860(v10, type metadata accessor for InternalServicePrediction);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100004A3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v59 - v10;
  v12 = *((swift_isaMask & *v0) + 0x148);
  v13 = (v12)(v9);
  v14 = *((swift_isaMask & *v0) + 0x260);
  v63 = (swift_isaMask & *v0) + 608;
  v15 = (v14)(v13);

  v17 = (v12)(v16);
  v18 = sub_100004814(v15, v17);

  v69 = v18;
  v61 = ObjectType;
  v62 = v8;
  if (v18)
  {
  }

  else
  {
    sub_100003E50(&off_1002B7A38, v11);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v22 = 136315394;
      v59 = v20;
      v12();
      type metadata accessor for InternalServicePrediction(0);
      v23 = Array.description.getter();
      v25 = v24;

      v26 = sub_10017A8A8(v23, v25, &v70);
      LOBYTE(v25) = v21;
      v27 = v68;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v28 = Array.description.getter();
      v30 = v29;

      v31 = sub_10017A8A8(v28, v30, &v70);

      *(v22 + 14) = v31;
      v32 = v59;
      _os_log_impl(&_mh_execute_header, v59, v25, "Some predictions expired, recalculating from %s to %s", v22, 0x16u);
      swift_arrayDestroy();

      v33 = (*(v67 + 8))(v11, v27);
    }

    else
    {

      v33 = (*(v67 + 8))(v11, v68);
    }

    (*((swift_isaMask & *v1) + 0xF8))(v33);
    v34 = v14();

    v35 = (*((swift_isaMask & *v1) + 0x100))(v34);
    (*((swift_isaMask & *v1) + 0x110))(v35);
    v36 = v14();

    v37 = (*((swift_isaMask & *v1) + 0x118))(v36);
    (*((swift_isaMask & *v1) + 0x128))(v37);
    v38 = v14();

    v19 = (*((swift_isaMask & *v1) + 0x130))(v38);
  }

  v39 = v69 ^ 1;
  if ((*((swift_isaMask & *v1) + 0x158))(v19))
  {
    v40 = v1[36];
    v41 = v1[37];
    sub_100014E1C(v1 + 33, v40);
    v42 = v64;
    (*(v41 + 8))(v40, v41);
    v43 = (*((swift_isaMask & *v1) + 0x188))(v42);
    v44 = (*(v65 + 8))(v42, v66);
    v45 = *((swift_isaMask & *v1) + 0x170);
    v46 = (v45)(v44);
    LOBYTE(v40) = sub_1001D57C4(v46, v43);

    if (v40)
    {
    }

    else
    {
      v47 = v62;
      sub_100003E50(&off_1002B7A38, v62);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v50 = 136315394;
        v45();
        type metadata accessor for PrivateServicePrediction();
        v51 = Array.description.getter();
        v53 = v52;

        v54 = sub_10017A8A8(v51, v53, &v70);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        v55 = Array.description.getter();
        v57 = sub_10017A8A8(v55, v56, &v70);

        *(v50 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v48, v49, "Simulated predictions expired, recalculating from %s to %s", v50, 0x16u);
        swift_arrayDestroy();

        (*(v67 + 8))(v62, v68);
      }

      else
      {

        (*(v67 + 8))(v47, v68);
      }

      (*((swift_isaMask & *v1) + 0x178))(v43);
      v39 = 1;
    }
  }

  return v39 & 1;
}

void *sub_100005380(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100164A3C(a5, a6);
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

void sub_100005860(void *a1, void **a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = *a2;
        v13 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v13 = xpc_null_create();
        }

        v11 = *a3;
        object = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10000596C(v7, &v13, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v13);
        v13 = 0;
      }

      sub_100008350(v9);
    }
  }
}

void sub_100005930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  sub_100008350(v10);
  _Unwind_Resume(a1);
}

void sub_10000596C(void *a1, void **a2, xpc_object_t *a3)
{
  *v157 = a3;
  *&v157[8] = "WISMessageType";
  sub_100007DA4(v157, buf);
  v7 = xpc::dyn_cast_or_default(buf, 0, v6);
  xpc_release(*buf);
  if (v7 > 6)
  {
    if (v7 <= 10)
    {
      if (v7 != 7)
      {
        if (v7 != 9)
        {
          if (v7 == 10)
          {
            v9 = sub_10000B674(v157, a3);
            v10 = sub_10000BEC4(v9);
            v11 = sub_10000B728(v157);
            LODWORD(v13) = v12;
            v14 = sub_10000B720(v157);
            v15 = *v10;
            v16 = *(v10 + 8);
            if (*v10 == v16)
            {
              v17 = 0;
            }

            else
            {
              v17 = 0;
              v18 = *v10;
              do
              {
                v19 = v18[1];
                if (v19)
                {
                  v19 = (v19[1] - *v19);
                }

                v17 += v19;
                v18 += 3;
              }

              while (v18 != v16);
            }

            v74 = a1[10];
            if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
            {
              *buf = 67110400;
              *&buf[4] = v14;
              *v151 = 2048;
              *&v151[2] = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
              *&v151[10] = 1024;
              *&v151[12] = v11;
              *&v151[16] = 1024;
              v152 = HIDWORD(v11);
              v153 = 1024;
              v154 = v13;
              v155 = 2048;
              v156 = v17;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "conn:#I Got WIS Bundled Submission Message with component id 0x%x, %zd profiles, Trigger(cid=0x%x, trid=0x%x, sid=%u) (%zd bytes)", buf, 0x2Eu);
              v15 = *v10;
              v16 = *(v10 + 8);
            }

            if (v15 == v16)
            {
              v13 = v13;
            }

            else
            {
              v13 = v13;
              do
              {
                sub_10000BECC(v15 + 1, buf);
                if (*buf != *v151)
                {
                  v75 = **buf;
                  v76 = *(*buf + 8);
                  v77 = *(*buf + 16);
                  if (v77)
                  {
                    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
                    v78 = a1[19];
                    v79 = *v15;
                    v147 = v77;
                    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
                  }

                  else
                  {
                    v78 = a1[19];
                    v79 = *v15;
                    v147 = 0;
                  }

                  v146 = v76;
                  sub_10000C450(v78, v14, v75, v79, &v146);
                }

                v137 = buf;
                sub_10000C564(&v137);
                v80 = a1[15];
                v81 = *v15;
                v145 = *(v15 + 1);
                v15[1] = 0;
                v15[2] = 0;
                (*(*v80 + 32))(v80, v81, v11, v13, v14, &v145);
                if (*(&v145 + 1))
                {
                  sub_100008350(*(&v145 + 1));
                }

                v15 += 3;
              }

              while (v15 != v16);
            }

            (*(*a1[15] + 48))(a1[15], v14, v11, v13);
            *v157 = off_1002AE468;
            *buf = &v158[8];
            sub_10000C564(buf);
          }

          return;
        }

        v54 = a1[10];
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          return;
        }

        *v157 = 0;
        v55 = "conn:#I Got WIS Location used message, nothing to do.";
        v56 = v54;
        v57 = OS_LOG_TYPE_INFO;
LABEL_75:
        _os_log_impl(&_mh_execute_header, v56, v57, v55, v157, 2u);
        return;
      }

      sub_1000A693C(buf, a3);
      v30 = a1[10];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = sub_100008780(buf);
        *v157 = 67109120;
        *&v157[4] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "conn:#I Got WIS Control Message of type %d", v157, 8u);
      }

      v32 = sub_100008780(buf);
      if (v32 <= 2)
      {
        if (v32 == 1)
        {
          pthread_mutex_lock(&stru_1002D4B08);
          v94 = qword_1002D4B48;
          v34 = qword_1002D4B50;
          if (qword_1002D4B50)
          {
            atomic_fetch_add_explicit((qword_1002D4B50 + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&stru_1002D4B08);
          if (v94)
          {
            sub_10012A004();
          }

          v98 = a1[10];
          if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_187;
          }

          *v157 = 0;
          v99 = "conn:#E ConfigurationReader::getInstance returned NULL when trying to process Clear Configuration control message.";
        }

        else
        {
          if (v32 != 2)
          {
            return;
          }

          pthread_mutex_lock(&stru_1002D4B08);
          v67 = qword_1002D4B48;
          v34 = qword_1002D4B50;
          if (qword_1002D4B50)
          {
            atomic_fetch_add_explicit((qword_1002D4B50 + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&stru_1002D4B08);
          if (v67)
          {
            sub_1000FCBEC(v67);
          }

          v98 = a1[10];
          if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_187;
          }

          *v157 = 0;
          v99 = "conn:#E ConfigurationReader::getInstance returned NULL when trying to process Load Hotship control message.";
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            pthread_mutex_lock(&stru_1002D4C68);
            v92 = xmmword_1002D4CA8;
            if (!xmmword_1002D4CA8)
            {
              sub_1000A1C94();
            }

            v34 = *(&xmmword_1002D4CA8 + 1);
            if (*(&xmmword_1002D4CA8 + 1))
            {
              atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&stru_1002D4C68);
            if (v92)
            {
              sub_1000A33CC(v92);
            }

            v98 = a1[10];
            if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_187;
            }

            *v157 = 0;
            v99 = "conn:#E SubmitterController::getInstance returned NULL when trying to process Submit Metriclogs control message.";
            break;
          case 4:
            pthread_mutex_lock(&stru_1002D4CC0);
            v93 = xmmword_1002D4D00;
            if (!xmmword_1002D4D00)
            {
              sub_1000ED560();
            }

            v34 = *(&xmmword_1002D4D00 + 1);
            if (*(&xmmword_1002D4D00 + 1))
            {
              atomic_fetch_add_explicit((*(&xmmword_1002D4D00 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&stru_1002D4CC0);
            if (v93)
            {
              sub_100103254();
              sub_1000F1144(v93, 4);
              goto LABEL_187;
            }

            v98 = a1[10];
            if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
LABEL_187:
              if (v34)
              {
                sub_100008350(v34);
              }

              return;
            }

            *v157 = 0;
            v99 = "conn:#E ClientManager::getInstance returned NULL when trying to process Log Configurations control message.";
            break;
          case 7:
            pthread_mutex_lock(&stru_1002D5488);
            v33 = xmmword_1002D54C8;
            if (!xmmword_1002D54C8)
            {
              sub_10005B440();
            }

            v34 = *(&xmmword_1002D54C8 + 1);
            if (*(&xmmword_1002D54C8 + 1))
            {
              atomic_fetch_add_explicit((*(&xmmword_1002D54C8 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&stru_1002D5488);
            sub_10005C408(v33, v142);
            sub_10005D934(v142);
            goto LABEL_187;
          default:
            return;
        }
      }

      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, v99, v157, 2u);
      goto LABEL_187;
    }

    if (v7 != 11)
    {
      if (v7 == 12)
      {
        sub_10010444C(a1, a3);
      }

      else if (v7 == 15)
      {
        v26 = sub_10002AF80(v157, a3);
        v27 = sub_100008780(v26);
        v28 = a1[10];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "conn:#I Got WIS Registration Message for Anomaly Insights for cid 0x%x", buf, 8u);
        }

        sub_1000F04C4(a1[11], v27);
      }

      return;
    }

    if ((sub_100103B04(a2) & 1) == 0)
    {
      v66 = a1[10];
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v157 = 0;
      v55 = "conn:#E ERROR: Got WIS Internal Manage message; how dare you do that!";
      v56 = v66;
      v57 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_75;
    }

    v137 = a3;
    v138 = "ManageRequest";
    sub_100007DA4(&v137, &object);
    memset(v157, 0, sizeof(v157));
    *v158 = 0;
    xpc::dyn_cast_or_default();
    if ((v158[7] & 0x80000000) != 0)
    {
      operator delete(*v157);
    }

    xpc_release(object);
    v43 = a1[10];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = buf;
      if (v151[15] < 0)
      {
        v44 = *buf;
      }

      *v157 = 136315138;
      *&v157[4] = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "conn:#I Got WIS Internal Manage request '%s'", v157, 0xCu);
    }

    if ((v151[15] & 0x80000000) != 0)
    {
      if (*v151 != 10)
      {
        goto LABEL_139;
      }

      v45 = *buf;
    }

    else
    {
      if (v151[15] != 10)
      {
        goto LABEL_139;
      }

      v45 = buf;
    }

    v88 = *v45;
    v89 = *(v45 + 4);
    if (v88 == 0x666E6F4379706F43 && v89 == 26473)
    {
      sub_1000EF8CC(&v141, a2);
      sub_1000AFB90(&v140, a3);
      sub_10010AFFC(&v141, &v140);
      xpc_release(v140);
      v140 = 0;
      xpc_release(v141);
      v141 = 0;
      goto LABEL_227;
    }

LABEL_139:
    if (sub_1000B06AC(buf, "ConsolidateDeviceDiagnostics"))
    {
      pthread_mutex_lock(&stru_1002D4C68);
      v91 = xmmword_1002D4CA8;
      if (!xmmword_1002D4CA8)
      {
        sub_1000A1C94();
      }

      v87 = *(&xmmword_1002D4CA8 + 1);
      if (*(&xmmword_1002D4CA8 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4C68);
      if (!v91)
      {
        if (os_log_type_enabled(a1[10], OS_LOG_TYPE_ERROR))
        {
          sub_100209814();
        }

        goto LABEL_224;
      }

      object = a3;
      v135 = "diagType";
      sub_100007DA4(&object, &v136);
      memset(v157, 0, sizeof(v157));
      *v158 = 0;
      xpc::dyn_cast_or_default();
      if ((v158[7] & 0x80000000) != 0)
      {
        operator delete(*v157);
      }

      xpc_release(v136);
      if (!sub_1000B06AC(&v137, "cellular") && !sub_1000B06AC(&v137, "feedback"))
      {
        if (os_log_type_enabled(a1[10], OS_LOG_TYPE_ERROR))
        {
          sub_1002097AC();
        }

        goto LABEL_222;
      }

      object = xpc_null_create();
      if (xpc_get_type(*a3) != &_xpc_type_dictionary)
      {
LABEL_211:
        memset(v157, 0, sizeof(v157));
        if (xpc_get_type(object) == &_xpc_type_dictionary)
        {
          operator new();
        }

        v104 = *v157;
        v103 = *&v157[8];
        xpc_release(object);
        if (v104 && xpc_get_type(*v104) == &_xpc_type_dictionary)
        {
          if (v103)
          {
            atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          operator new();
        }

        if (os_log_type_enabled(a1[10], OS_LOG_TYPE_ERROR))
        {
          sub_1002097E0();
        }

        if (v103)
        {
          sub_100008350(v103);
        }

LABEL_222:
        if (v139 < 0)
        {
          operator delete(v137);
        }

LABEL_224:
        if (!v87)
        {
          goto LABEL_227;
        }

        v105 = v87;
LABEL_226:
        sub_100008350(v105);
LABEL_227:
        if ((v151[15] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        return;
      }

      reply = xpc_dictionary_create_reply(*a3);
      v97 = reply;
      if (reply)
      {
        *v157 = reply;
      }

      else
      {
        v97 = xpc_null_create();
        *v157 = v97;
        if (!v97)
        {
          v100 = xpc_null_create();
          v97 = 0;
          goto LABEL_209;
        }
      }

      if (xpc_get_type(v97) == &_xpc_type_dictionary)
      {
        xpc_retain(v97);
LABEL_210:
        sub_100105C40(&object, v157);
        xpc_release(*v157);
        *v157 = 0;
        xpc_release(v97);
        goto LABEL_211;
      }

      v100 = xpc_null_create();
LABEL_209:
      *v157 = v100;
      goto LABEL_210;
    }

    if (sub_1000B06AC(buf, "CopyDeviceConfig"))
    {
      sub_1000EF8CC(&v133, a2);
      sub_1000AFB90(&v132, a3);
      sub_10010B78C(&v133, &v132);
      xpc_release(v132);
      v132 = 0;
      xpc_release(v133);
      v133 = 0;
      goto LABEL_227;
    }

    if (sub_1000B06AC(buf, "GetConfigsAvailable"))
    {
      sub_1000EF8CC(&v131, a2);
      sub_1000AFB90(&v130, a3);
      sub_10010BAEC(&v131, &v130);
      xpc_release(v130);
      v130 = 0;
      xpc_release(v131);
      v131 = 0;
      goto LABEL_227;
    }

    if (sub_1000B06AC(buf, "SetConfig"))
    {
      sub_1000EF8CC(&v129, a2);
      sub_1000AFB90(&v128, a3);
      sub_10010C670(&v129, &v128);
      xpc_release(v128);
      v128 = 0;
      xpc_release(v129);
      v129 = 0;
      goto LABEL_227;
    }

    if (sub_1000B06AC(buf, "SetProperty"))
    {
      sub_1000EF8CC(&v127, a2);
      sub_1000AFB90(&v126, a3);
      sub_10010D184(&v127, &v126);
      xpc_release(v126);
      v126 = 0;
      xpc_release(v127);
      v127 = 0;
      goto LABEL_227;
    }

    if (!sub_1000B06AC(buf, "Observe"))
    {
      if (sub_1000B06AC(buf, "TriggerTimerEventsNow"))
      {
        sub_100103DE8(a1, a3);
      }

      else if (sub_1000B06AC(buf, "SendInsightsNow"))
      {
        sub_1000EF8CC(&v122, a2);
        sub_1000AFB90(&v121, a3);
        sub_100127A94(&v122, &v121);
        xpc_release(v121);
        v121 = 0;
        xpc_release(v122);
        v122 = 0;
      }

      else if (sub_1000B06AC(buf, "SendMockCellInfo"))
      {
        sub_1000EF8CC(&v120, a2);
        sub_1000AFB90(&v119, a3);
        sub_100128008(&v120, &v119);
        xpc_release(v119);
        v119 = 0;
        xpc_release(v120);
        v120 = 0;
      }

      else if (sub_1000B06AC(buf, "GetConfigurationForLocation"))
      {
        sub_1000EF8CC(&v118, a2);
        sub_1000AFB90(&v117, a3);
        sub_100128338(&v118, &v117);
        xpc_release(v117);
        v117 = 0;
        xpc_release(v118);
        v118 = 0;
      }

      else
      {
        if (sub_1000B06AC(buf, "SimulateAnomalyEventNow"))
        {
          sub_1000EF8CC(&v116, a2);
          sub_1000AFB90(&v115, a3);
          sub_100128840(&v116, &v115);
          xpc_release(v115);
          v115 = 0;
          xpc_release(v116);
          v116 = 0;
        }

        if (sub_1000B06AC(buf, "FederatedMobilityPopulateCellMapDatabase"))
        {
          sub_1000EF8CC(&v114, a2);
          sub_1000AFB90(&v113, a3);
          sub_100128CC8(&v114, &v113);
          xpc_release(v113);
          v113 = 0;
          xpc_release(v114);
          v114 = 0;
        }

        else if (sub_1000B06AC(buf, "SendSatelliteCellClassifierModel"))
        {
          sub_1000EF8CC(&v112, a2);
          sub_1000AFB90(&v111, a3);
          sub_100128EDC(&v112, &v111);
          xpc_release(v111);
          v111 = 0;
          xpc_release(v112);
          v112 = 0;
        }
      }

      goto LABEL_227;
    }

    v137 = xpc_null_create();
    if (xpc_get_type(*a3) != &_xpc_type_dictionary)
    {
LABEL_247:
      memset(v157, 0, sizeof(v157));
      if (xpc_get_type(v137) == &_xpc_type_dictionary)
      {
        operator new();
      }

      v108 = *v157;
      v107 = *&v157[8];
      xpc_release(v137);
      if (v108 && xpc_get_type(*v108) == &_xpc_type_dictionary)
      {
        v109 = a1[17];
        v110 = *a2;
        sub_1000AFB90(&v125, a3);
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = sub_100103D28;
        aBlock[3] = &unk_1002B21D8;
        aBlock[4] = v108;
        aBlock[5] = v107;
        if (v107)
        {
          atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v124 = _Block_copy(aBlock);
        sub_100064578(v109, v110, &v125, &v124);
      }

      if (os_log_type_enabled(a1[10], OS_LOG_TYPE_ERROR))
      {
        sub_100209778();
      }

      if (!v107)
      {
        goto LABEL_227;
      }

      v105 = v107;
      goto LABEL_226;
    }

    v101 = xpc_dictionary_create_reply(*a3);
    v102 = v101;
    if (v101)
    {
      *v157 = v101;
    }

    else
    {
      v102 = xpc_null_create();
      *v157 = v102;
      if (!v102)
      {
        v106 = xpc_null_create();
        v102 = 0;
        goto LABEL_245;
      }
    }

    if (xpc_get_type(v102) == &_xpc_type_dictionary)
    {
      xpc_retain(v102);
LABEL_246:
      sub_100105C40(&v137, v157);
      xpc_release(*v157);
      *v157 = 0;
      xpc_release(v102);
      goto LABEL_247;
    }

    v106 = xpc_null_create();
LABEL_245:
    *v157 = v106;
    goto LABEL_246;
  }

  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v46 = sub_1000823A8(v157, a3);
        v47 = sub_100008780(v46);
        v48 = sub_100082628(v157);
        v49 = sub_100082630(v157);
        v50 = sub_100082638(v157);
        v51 = a1[10];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 67109632;
          *&buf[4] = v48;
          *v151 = 1024;
          *&v151[2] = v47;
          *&v151[6] = 1024;
          *&v151[8] = v49;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "conn:#I Got WIS Registration Message for cid 0x%x, dcid %d, pid %d", buf, 0x14u);
        }

        v52 = a1[11];
        v53 = *a2;
        v148 = v53;
        if (v53)
        {
          xpc_retain(v53);
        }

        else
        {
          v148 = xpc_null_create();
        }

        sub_1000EF940(v52, v47, v48, &v148, v49, v50);
      }

      if (v7 == 2)
      {
        v8 = sub_100084090(v157, a3);
        sub_1000841E4(v8);
        sub_1000841DC(v157);
        sub_100008780(v157);
        sub_1000841F4(v157);
        operator new();
      }

      return;
    }

    v137 = a3;
    v138 = "WISMessageType";
    sub_100007DA4(&v137, &object);
    memset(v157, 0, sizeof(v157));
    *v158 = 0;
    xpc::dyn_cast_or_default();
    if ((v158[7] & 0x80000000) != 0)
    {
      operator delete(*v157);
    }

    xpc_release(object);
    if ((v151[15] & 0x80) != 0)
    {
      if (*v151 != 9 || (**buf == 0x69666E6F43746553 ? (v68 = *(*buf + 8) == 103) : (v68 = 0), !v68))
      {
        if (*v151 == 11)
        {
          v29 = *buf;
LABEL_89:
          v69 = *v29;
          v70 = *(v29 + 3);
          if (v69 == 0x6174536873756C46 && v70 == 0x6465676174536873)
          {
            v72 = a1[10];
            if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              *v157 = 0;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "conn:#I Received request to flush to disk", v157, 2u);
            }

            pthread_mutex_lock(&stru_1002D4C68);
            v73 = xmmword_1002D4CA8;
            if (!xmmword_1002D4CA8)
            {
              sub_1000A1C94();
            }

            if (*(&xmmword_1002D4CA8 + 1))
            {
              atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&stru_1002D4C68);
            sub_1000A3294(v73);
          }
        }

LABEL_203:
        v84 = a1[10];
        if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_227;
        }

        *v157 = 0;
        v95 = "conn:#E Got unknown message.";
        goto LABEL_205;
      }
    }

    else
    {
      if (v151[15] != 9)
      {
        if (v151[15] == 11)
        {
          v29 = buf;
          goto LABEL_89;
        }

        goto LABEL_203;
      }

      if (*buf != 0x69666E6F43746553 || v151[0] != 103)
      {
        goto LABEL_203;
      }
    }

    v83 = sub_100103B04(a2);
    v84 = a1[10];
    v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
    if ((v83 & 1) == 0)
    {
      if (!v85)
      {
        goto LABEL_227;
      }

      *v157 = 0;
      v95 = "conn:#E ERROR: Got WIS SetConfig message; how dare you do that!";
LABEL_205:
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, v95, v157, 2u);
      goto LABEL_227;
    }

    if (v85)
    {
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "conn:#N Received reconfiguration request", v157, 2u);
    }

    pthread_mutex_lock(&stru_1002D4B08);
    v86 = qword_1002D4B48;
    v87 = qword_1002D4B50;
    if (qword_1002D4B50)
    {
      atomic_fetch_add_explicit((qword_1002D4B50 + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4B08);
    if (v86)
    {
      sub_1000AFB90(&v149, a3);
      sub_1000FE07C(v86, &v149);
    }

    goto LABEL_224;
  }

  switch(v7)
  {
    case 3:
      v35 = sub_1000A6320(buf, a3);
      v36 = sub_1000A6418(v35);
      v38 = v37;
      v39 = a1[10];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = sub_100008780(buf);
        *v157 = 67109888;
        *&v157[4] = v40;
        *&v157[8] = 1024;
        *&v157[10] = v36;
        *&v157[14] = 1024;
        *v158 = HIDWORD(v36);
        *&v158[4] = 1024;
        *&v158[6] = v38;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "conn:#I Got WIS Finished Submission Message with component id 0x%x, Trigger(cid=0x%x, trid=0x%x, sid=%u)", v157, 0x1Au);
      }

      v41 = a1[15];
      v42 = sub_100008780(buf);
      (*(*v41 + 40))(v41, v42, v36, v38);
      break;
    case 5:
      sub_1000845FC(v157, a3);
      v58 = a1[10];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = sub_100008780(v157);
        v60 = sub_100082628(v157);
        v61 = sub_1000848C8(v157);
        *buf = 67109632;
        *&buf[4] = v59;
        *v151 = 1024;
        *&v151[2] = v60;
        *&v151[6] = 2048;
        *&v151[8] = v61;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "conn:#I Got WIS Register Trigger Message from component 0x%x for trigger 0x%x and longest time %lld", buf, 0x18u);
      }

      v62 = a1[13];
      v63 = sub_100008780(v157);
      v64 = sub_100082628(v157);
      v65 = sub_1000848C8(v157);
      sub_10010989C(v62, v63, v64, v65);
    case 6:
      v20 = sub_100007DEC(v157, a3);
      object = sub_100007EBC(v20);
      LODWORD(v135) = v21;
      v22 = a1[10];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = sub_100008780(v157);
        *buf = 67109888;
        *&buf[4] = v23;
        *v151 = 1024;
        *&v151[2] = object;
        *&v151[6] = 1024;
        *&v151[8] = HIDWORD(object);
        *&v151[12] = 1024;
        *&v151[14] = v135;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "conn:#I Got WIS Trigger Message from component 0x%x with Trigger(cid=0x%x, trid=0x%x, sid=%u)", buf, 0x1Au);
      }

      wis::asString();
      if (v151[15] >= 0)
      {
        v24 = buf;
      }

      else
      {
        v24 = *buf;
      }

      sub_100007ECC(&__p, v24);
      v25 = *a3;
      v143 = v25;
      if (v25)
      {
        xpc_retain(v25);
      }

      else
      {
        v143 = xpc_null_create();
      }

      sub_100007F84(&__p);
  }
}

void sub_100007680(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_100007DA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t sub_100007DF0(uint64_t a1, xpc_object_t *a2)
{
  *a1 = off_1002ACBD0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "WISMessageComponentId");
    *(a1 + 16) = xpc_dictionary_get_int64(*a2, "WISMessageTriggerTimestampId");
    *(a1 + 28) = xpc_dictionary_get_int64(*a2, "WISMessageTriggerId");
    *(a1 + 32) = xpc_dictionary_get_int64(*a2, "WISMessageSubmisssionId");
    *(a1 + 24) = xpc_dictionary_get_int64(*a2, "WISMessageTriggeringComponentId");
  }

  return a1;
}

void *sub_100007ECC(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100023410();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_100008184(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100075184(v1);
  __cxa_rethrow();
}

void sub_100008198()
{
  __cxa_end_catch();
  xpc_release(v1);
  xpc_release(v0);
  JUMPOUT(0x100008168);
}

void *sub_1000081C8(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_10001AE98();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_10000820C(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v3, a1);
  operator new();
}

uint64_t *sub_1000082FC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_100008350(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1000083C4(void *a1, uint64_t *a2, int a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  v7 = a4;
  if (a4 != a3)
  {
    v11 = a1[5];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1001FF784(a3, v7, v11);
    }
  }

  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v13, a1 + 1);
  operator new();
}

uint64_t *sub_100008518(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10000866C((*v1 + 40), (v1 + 8));
  sub_10000858C(v2);
  sub_1000088CC(v2);
  sub_100008878(&v5);
  return sub_1000082FC(&v4);
}

void sub_100008570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100008878(va);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

__int128 *sub_10000858C(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v1 = a1 + 40;
  if (v3 != v2)
  {
    v5 = v3 + 1;
    while (1)
    {
      v6 = *(v5 - 1);
      if (!v6 || *(v6 + 8) == -1)
      {
        break;
      }

      if (v5++ == v2)
      {
        v3 = *(a1 + 48);
        goto LABEL_17;
      }
    }

    v3 = v5 - 1;
    if (v5 - 1 != v2 && v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        if (v8 && *(v8 + 8) != -1)
        {
          v9 = *v5;
          *v5 = 0;
          *(v5 + 1) = 0;
          v10 = *(v3 + 1);
          *v3 = v9;
          *(v3 + 1) = v8;
          if (v10)
          {
            std::__shared_weak_count::__release_weak(v10);
          }

          ++v3;
        }

        ++v5;
      }

      while (v5 != v2);
      v2 = *(a1 + 48);
    }
  }

LABEL_17:

  return sub_100008788(v1, v3, v2);
}

void **sub_10000866C(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100033FD0();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_10007546C(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1000754B4(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

__int128 *sub_100008788(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_10000880C(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *sub_10000880C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *sub_100008878(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_1000088CC(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[8];
  if (v2 == v3)
  {
    a1[8] = 0;
    if (v4)
    {
      v14 = *(*v4 + 8);

      v14();
    }
  }

  else if (!v4)
  {
    sub_1000081C8(&v22, a1);
    v5 = v22;
    if (*(&v22 + 1))
    {
      atomic_fetch_add_explicit((*(&v22 + 1) + 16), 1uLL, memory_order_relaxed);
      sub_100008350(*(&v5 + 1));
    }

    pthread_mutex_lock(&stru_1002D4F90);
    v6 = xmmword_1002D4FD0;
    if (!xmmword_1002D4FD0)
    {
      sub_1001370F8(&v22);
      v7 = v22;
      v22 = 0uLL;
      v8 = *(&xmmword_1002D4FD0 + 1);
      xmmword_1002D4FD0 = v7;
      if (v8)
      {
        sub_100008350(v8);
        if (*(&v22 + 1))
        {
          sub_100008350(*(&v22 + 1));
        }
      }

      v6 = xmmword_1002D4FD0;
    }

    v9 = *(&xmmword_1002D4FD0 + 1);
    if (*(&xmmword_1002D4FD0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4FD0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4F90);
    sub_100007ECC(__p, "WisdActivityManager");
    v10 = a1[2];
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_100015FA8;
    aBlock[3] = &unk_1002AD330;
    aBlock[4] = a1;
    v16 = v5;
    if (*(&v5 + 1))
    {
      atomic_fetch_add_explicit((*(&v5 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v17 = _Block_copy(aBlock);
    sub_10005EAB0(v6, __p, 0, 10000000, &object, &v17);
    v11 = v21;
    v21 = 0;
    v12 = a1[8];
    a1[8] = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      v13 = v21;
      v21 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9)
    {
      sub_100008350(v9);
    }

    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v16 + 1));
    }

    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v5 + 1));
    }
  }
}

void sub_100008B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  pthread_mutex_unlock(&stru_1002D4F90);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(a1);
}

void sub_100008DE4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_100008EEC(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100009094(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_10000902C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x10000900CLL);
}

uint64_t sub_100009094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100023410();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100009260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000927C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  while (1)
  {
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "persist:#I Executing DB command.", buf, 2u);
    }

    pzTail = 0;
    ppStmt = 0;
    v12 = sqlite3_prepare_v2(*(a1 + 40), a2, -1, &ppStmt, &pzTail);
    if (v12)
    {
      break;
    }

    if (ppStmt)
    {
      if (a4)
      {
        (*(a4 + 16))(a4);
      }

      while (1)
      {
        v13 = sqlite3_step(ppStmt);
        if (v13 != 100)
        {
          break;
        }

        if (a3)
        {
          (*(a3 + 16))(a3, ppStmt);
        }
      }

      v14 = v13;
      if (v13 != 101)
      {
        v15 = sqlite3_errmsg(*(a1 + 40));
        v16 = *(a1 + 32);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v17 = "NULL";
          if (v15)
          {
            v17 = v15;
          }

          v27 = a2;
          v28 = 1024;
          v29 = v14;
          v30 = 2080;
          v31 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "persist:#E Unable to execute\n%s\nwith error %d (%s)", buf, 0x1Cu);
        }

        if (a5)
        {
          (*(a5 + 16))(a5, v14, ppStmt);
        }
      }

      sqlite3_finalize(ppStmt);
    }

    v18 = *(a1 + 32);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10020838C(&v22, v23, v18);
    }

    a2 = pzTail;
    if (!*pzTail)
    {
      return;
    }
  }

  v19 = v12;
  v20 = *(a1 + 32);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = a2;
    v28 = 1024;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "persist:#E Unable to compile\n%s\nwith error %d", buf, 0x12u);
  }

  if (a6)
  {
    (*(a6 + 16))();
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }
}

void sub_10000951C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = sqlite3_column_int64(a2, 0);
  v6 = sqlite3_column_int64(a2, 1);
  v7 = sqlite3_column_int64(a2, 2);
  v8 = *(v4 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v22[0] = 67109632;
    v22[1] = v5;
    v23 = 1024;
    v24 = v6;
    v25 = 2048;
    v26 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "persist:#D Reading from triggers table (trid=0x%x, cid=0x%x, %lld sec)", v22, 0x18u);
  }

  v9 = *(a1 + 40);
  v11 = v9[1];
  v10 = v9[2];
  if (v11 >= v10)
  {
    v13 = *v9;
    v14 = v11 - *v9;
    v15 = v14 >> 4;
    v16 = (v14 >> 4) + 1;
    if (v16 >> 60)
    {
      sub_100033FD0();
    }

    v17 = v10 - v13;
    if (v17 >> 3 > v16)
    {
      v16 = v17 >> 3;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF0;
    v19 = 0xFFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      sub_1000096E4(v9, v19);
    }

    v20 = 16 * v15;
    *v20 = v6;
    *(v20 + 8) = v7;
    v12 = 16 * v15 + 16;
    memcpy(0, v13, v14);
    v21 = *v9;
    *v9 = 0;
    v9[1] = v12;
    v9[2] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v11 = v6;
    *(v11 + 1) = v7;
    v12 = (v11 + 16);
  }

  v9[1] = v12;
}

void sub_1000096E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100033BCC();
}

void sub_100009730(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_1000097A8(*v1, (v1 + 8), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), 0);
}

void sub_10000978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10000BB5C(va);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

void sub_1000097A8(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = HIDWORD(a3);
  pthread_mutex_lock(&stru_1002D4A58);
  v8 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_100009F68(v8, v7);
}

void sub_100009E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void *__p, uint64_t a28)
{
  pthread_mutex_unlock(&stru_1002D4CC0);
  if (a26)
  {
    sub_100008350(a26);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v28 - 136))
  {
    sub_100008350(*(v28 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_100009F68(uint64_t a1, int a2)
{
  v4 = a2;
  sub_100007ECC(&__p, "Persist-createTMFT");
  sub_100008BF8();
}

void sub_10000A0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000A384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16)
  {
    sub_100008350(a16);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_100039C48(&a23);
  sub_100008350(v23);
  _Unwind_Resume(a1);
}

void sub_10000A3E0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100008350(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100008350(*(&v5 + 1));
  }
}

void (__cdecl ***sub_10000A448(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_10000A5B4((a1 + 1), 16);
  return a1;
}

void sub_10000A58C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10000A5B4(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100008DE4(a1);
  return a1;
}

void sub_10000A648(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_10000A670(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  os_release(*(a1 + 32));
}

void sub_10000A7E0(void *a1, int a2)
{
  v5 = a1[13];
  v4 = a1[14];
  if (v5 >= v4)
  {
    v7 = a1[12];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      sub_100033FD0();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_10000A8C0((a1 + 12), v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = a1[12];
    a1[12] = v16;
    a1[13] = v6;
    a1[14] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 4;
  }

  a1[13] = v6;
}

void sub_10000A8C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100033BCC();
}

__n128 sub_10000A910(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t *sub_10000A964(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100050C48(result, a4);
  }

  return result;
}

void sub_10000A9C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000A9E0(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v12 = a2;
  *v13 = a3;
  v8 = a4[1];
  v15 = *a4;
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000AB30(a1 + 56, &v12, &v12);
  v10 = v9;
  if (v16)
  {
    sub_100008350(v16);
  }

  if (v10)
  {
    sub_10000BA78(a1, *a4, a2, a3);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v12) = 67109632;
      HIDWORD(v12) = a2;
      *v13 = 1024;
      *&v13[2] = HIDWORD(a2);
      v14 = 1024;
      LODWORD(v15) = a3;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "agg:Error adding new trigger; already exists! Trigger(cid=0x%x, trid=0x%x, sid=%u)", &v12, 0x14u);
    }
  }
}

uint64_t sub_10000AB30(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *sub_10000ABD8(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_10000ABD8(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = a3[1];
    v6 = a3[2];
    v8 = *a3;
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = *(v4 + 40);
        if (v6 >= v10)
        {
          break;
        }

LABEL_4:
        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_13;
        }
      }

      if (v10 >= v6)
      {
        if (__PAIR64__(v7, v8) < v9[4])
        {
          goto LABEL_4;
        }

        if (v9[4] >= __PAIR64__(v7, v8))
        {
          goto LABEL_13;
        }
      }

      result = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  v9 = result;
LABEL_13:
  *a2 = v9;
  return result;
}

uint64_t *sub_10000AC70(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_10000ACC8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_10000ACC8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_10000AE64(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!*(a1 + 112))
  {
    *(a1 + 120) = v1 + 1;
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v1 + 1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "agg:#I Initializing periodic timer to manage outstanding triggers (gen=%u)", buf, 8u);
    }

    sub_1000081C8(buf, (a1 + 8));
    v5 = *buf;
    v4 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100008350(v4);
    }

    pthread_mutex_lock(&stru_1002D4F90);
    v6 = xmmword_1002D4FD0;
    if (!xmmword_1002D4FD0)
    {
      sub_1001370F8(buf);
      v7 = *buf;
      memset(buf, 0, sizeof(buf));
      v8 = *(&xmmword_1002D4FD0 + 1);
      xmmword_1002D4FD0 = v7;
      if (v8)
      {
        sub_100008350(v8);
        if (*&buf[8])
        {
          sub_100008350(*&buf[8]);
        }
      }

      v6 = xmmword_1002D4FD0;
    }

    v9 = *(&xmmword_1002D4FD0 + 1);
    if (*(&xmmword_1002D4FD0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4FD0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4F90);
    sub_100007ECC(__p, "SubmissionAggregator");
    v10 = *(a1 + 24);
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1000160C0;
    aBlock[3] = &unk_1002AC728;
    aBlock[4] = a1;
    aBlock[5] = v5;
    v16 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = _Block_copy(aBlock);
    sub_10005EAB0(v6, __p, 0, 5000000, &object, &v17);
    v11 = v21;
    v21 = 0;
    v12 = *(a1 + 112);
    *(a1 + 112) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      v13 = v21;
      v21 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9)
    {
      sub_100008350(v9);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return v1;
}

void sub_10000B124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  pthread_mutex_unlock(&stru_1002D4F90);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(a1);
}

void sub_10000B1C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t sub_10000B1E0(uint64_t a1, xpc_object_t *a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = off_1002AE468;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (xpc_get_type(*a2) == &_xpc_type_dictionary && xpc_dictionary_get_int64(*a2, "WISMessageType") == 10)
  {
    *(a1 + 12) = xpc_dictionary_get_int64(*a2, "WISMessageTriggerId");
    *v4 = xpc_dictionary_get_int64(*a2, "WISMessageTriggeringComponentId");
    *(a1 + 16) = xpc_dictionary_get_int64(*a2, "WISMessageSubmissionId");
    *(a1 + 20) = xpc_dictionary_get_int64(*a2, "WISMessageSourceComponentId");
    p_xdict = a2;
    v18 = "profiles";
    sub_10000BBB0(&p_xdict, &object);
    if (xpc_get_type(object) == &_xpc_type_array)
    {
      p_xdict = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      sub_10000BC4C(&v14, &p_xdict, 0);
      xpc_release(p_xdict);
      p_xdict = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      if (xpc_get_type(object) == &_xpc_type_array)
      {
        count = xpc_array_get_count(object);
      }

      else
      {
        count = 0;
      }

      sub_10000BC4C(v13, &p_xdict, count);
      xpc_release(p_xdict);
      for (i = v15; i != v13[1] || v14 != v13[0]; i = ++v15)
      {
        p_xdict = &v14;
        v18 = i;
        sub_10000BC98(&p_xdict, &xdict);
        if (xpc_get_type(xdict) == &_xpc_type_dictionary)
        {
          length = 0;
          if (xpc_dictionary_get_data(xdict, "data", &length))
          {
            p_xdict = &xdict;
            v18 = "profile_id";
            sub_100007DA4(&p_xdict, v9);
            xpc::dyn_cast_or_default(v9, 0, v7);
            xpc_release(v9[0]);
            sub_10000BD34();
          }
        }

        xpc_release(xdict);
      }

      xpc_release(v13[0]);
      xpc_release(v14);
    }

    xpc_release(object);
  }

  return a1;
}

void sub_10000B5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, xpc_object_t a21, xpc_object_t object)
{
  xpc_release(object);
  object = 0;
  xpc_release(a19);
  xpc_release(a21);
  sub_10000C564(&a19);
  _Unwind_Resume(a1);
}

uint64_t *sub_10000B678(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000BDA8(result, a4);
  }

  return result;
}

void sub_10000B6D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_10000B6EC(void **a1)
{
  sub_10000CD38(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000B738(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t *a6)
{
  v6 = a6[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v7, (a1 + 8));
  operator new();
}

uint64_t *sub_10000B94C(uint64_t **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = *(v1 + 20);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v12 = v8;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000C684(v2, v3, v4, v5, v6, &v12);
  if (v13)
  {
    sub_100008350(v13);
  }

  sub_10000D3BC(&v11);
  return sub_1000082FC(&v10);
}

void sub_10000B9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008350(a12);
  }

  sub_10000D3BC(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10000B9EC(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  result = a4;
  if (a3)
  {
    v6 = a2[1];
    v5 = a2[2];
    v7 = *a2;
    while (1)
    {
      v8 = *(a3 + 10);
      if (v8 >= v5)
      {
        if (v5 < v8)
        {
          goto LABEL_6;
        }

        v9 = *(a3 + 9);
        if (v9 >= v6)
        {
          break;
        }
      }

      ++a3;
LABEL_7:
      a3 = *a3;
      if (!a3)
      {
        return result;
      }
    }

    if (v6 >= v9)
    {
      v10 = *(a3 + 8);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        result = a3;
      }

      a3 += v12;
      goto LABEL_7;
    }

LABEL_6:
    result = a3;
    goto LABEL_7;
  }

  return result;
}

void *sub_10000BA58(void *result, uint64_t a2)
{
  *result = &off_1002B3098;
  result[1] = a2;
  return result;
}

void sub_10000BA78(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_10000AE64(a1);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109888;
    v10[1] = a3;
    v11 = 1024;
    v12 = HIDWORD(a3);
    v13 = 1024;
    v14 = a4;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "agg:#I [o..] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Starting grace-period for client check-in (gen=%u)", v10, 0x1Au);
  }

  *(a2 + 24) = v8;
}

uint64_t *sub_10000BB5C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_10000BBB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) != &_xpc_type_array)
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void **sub_10000BC4C(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

void sub_10000BC98(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) != &_xpc_type_dictionary)
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void sub_10000BDA8(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100033FD0();
}

uint64_t sub_10000BDF8(uint64_t a1, char **a2, char **a3)
{
  *(a1 + 8) = 0u;
  *a1 = off_1002ACA68;
  v4 = *a2;
  v5 = *a3;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  sub_10000B678((a1 + 24), v4, v5, v5 - v4);
  return a1;
}

void sub_10000BE6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100033BCC();
}

void sub_10000BECC(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  if (!*a1)
  {
    return;
  }

  v4 = *v3;
  v5 = v3[1] - *v3;
  *&buf = 0;
  *(&buf + 1) = v4;
  v28 = v4 + v5;
  v29 = v5;
  v30 = 0;
  v31 = 0;
  v33 = xmmword_100240B70;
  v32 = v5;
  v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v35 = 0;
  v36 = 0;
  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(&buf))
  {
    if (*(&buf + 1) >= v28 || (TagFallback = **(&buf + 1), (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(&buf);
      HIDWORD(v30) = TagFallback;
      if (!TagFallback)
      {
LABEL_12:
        LODWORD(v9) = 0;
        goto LABEL_17;
      }
    }

    else
    {
      HIDWORD(v30) = **(&buf + 1);
      ++*(&buf + 1);
      if (!TagFallback)
      {
        goto LABEL_12;
      }
    }

    v8 = wis::reflect::decodeTag(TagFallback, v6);
    v9 = HIDWORD(v8);
    if (v8 > 1u)
    {
      if (v8 != 2)
      {
        if (v8 != 5)
        {
          goto LABEL_17;
        }

        v26[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(&buf, v26);
        goto LABEL_16;
      }

      v20 = 0;
      if (*(&buf + 1) >= v28 || (v11 = **(&buf + 1), (v11 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(&buf, &v20))
        {
          goto LABEL_17;
        }

        v11 = v20;
      }

      else
      {
        v20 = **(&buf + 1);
        ++*(&buf + 1);
      }

      v18[1] = &buf;
      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(&buf, v11);
      v19 = v12;
      ++HIDWORD(v33);
      v18[0] = &buf;
      v25 = 0;
      v24 = 0;
      wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(&buf, &v25, &v24);
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(&buf);
      if ((v24 & 0x80000000) == 0)
      {
        sub_10000BA58(v21, __p);
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v26, v21);
        v13 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v26, v13);
        v14 = v25;
        v15 = v24;
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v26, v24);
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v26, v14, v15);
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v26);
        wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v21);
        operator new();
      }

      sub_10000CCFC(v18);
      if (SHIDWORD(v33) >= 1)
      {
        --HIDWORD(v33);
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(&buf, v12);
    }

    else if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_17;
      }

      *v26 = 0;
      LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(&buf, v26);
LABEL_16:
      if ((LittleEndian32Fallback & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v26 = 0;
      if (*(&buf + 1) >= v28 || **(&buf + 1) < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(&buf, v26))
        {
LABEL_17:
          sub_10007CFE0(&buf, v9);
        }
      }

      else
      {
        ++*(&buf + 1);
      }
    }
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&buf);
  v16 = *(qword_1002DBE98 + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "metric:#I Split batch metrics into %zd metrics", &buf, 0xCu);
  }
}

void sub_10000C36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32)
{
  sub_100008350(v32);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_10000CCFC(&a9);
  if (a32 >= 1)
  {
    --a32;
  }

  sub_100045760(&a10);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a25);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10000C2BCLL);
  }

  sub_10000C564(&a25);
  _Unwind_Resume(a1);
}

void sub_10000C450(void *a1, int a2, int a3, int a4, uint64_t *a5)
{
  v5 = a5[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v6, a1);
  operator new();
}

void sub_10000C564(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10000C5B8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10000C5B8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_100008350(v4);
    }
  }

  a1[1] = v2;
}

uint64_t *sub_10000C604(uint64_t a1, unsigned int *a2)
{
  v3 = (a1 + 8);
  result = sub_10000B9EC(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = a2[2];
  v6 = *(result + 10);
  if (v5 < v6 || v6 >= v5 && *a2 < result[4])
  {
    return v3;
  }

  return result;
}

void sub_10000C684(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t **a6)
{
  v7 = a2;
  v16 = a3;
  v17 = a4;
  v9 = sub_10000C604(a1 + 56, &v16);
  if ((a1 + 64) != v9)
  {
    goto LABEL_7;
  }

  v10 = v16;
  v11 = v17;
  v12 = sub_10005F0A4(a1 + 56, v16, v17);
  if (v9 != v12)
  {
    v14 = *(v12 + 8);
    LODWORD(v16) = v14;
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *&buf[4] = v14;
      *&buf[8] = 1024;
      *&buf[10] = HIDWORD(v10);
      *&buf[14] = 1024;
      v19[0] = v11;
      LOWORD(v19[1]) = 1024;
      *(&v19[1] + 2) = v10;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "agg:#D     Trigger(cid=0x%x, trid=0x%x, sid=%u) - adjusted cid to fix BB submission (was 0x%x)", buf, 0x1Au);
    }

LABEL_7:
    sub_10000BECC(a6, buf);
    operator new();
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v10;
    *&buf[8] = 1024;
    *&buf[10] = HIDWORD(v10);
    *&buf[14] = 1024;
    v19[0] = v11;
    LOWORD(v19[1]) = 1024;
    *(&v19[1] + 2) = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "agg:#E [ E ] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Tried adding profile 0x%x but trigger no longer exists!", buf, 0x1Au);
  }
}

void sub_10000C9B0(_Unwind_Exception *a1)
{
  sub_100008350(v1);
  sub_100008350(v1);
  _Unwind_Resume(a1);
}

void sub_10000CA0C(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_100033FD0();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_10000CB44(uint64_t a1, void *a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 8) - *v6;
  v8 = *(v6 + 16) - *v6;
  v9 = v8 - v7;
  if (v8 > v7)
  {
    goto LABEL_5;
  }

  v10 = 2 * v7;
  if (2 * v7 <= 0x10)
  {
    v10 = 16;
  }

  v9 = v10 - v7;
  if (v10 <= v7)
  {
    if (v10 < v7)
    {
      *(v6 + 8) = *v6 + v10;
    }
  }

  else
  {
LABEL_5:
    sub_10000CA0C(v6, v9);
  }

  *a2 = **(a1 + 8) + v7;
  *a3 = *(*(a1 + 8) + 8) - **(a1 + 8) - v7;
  return 1;
}

void sub_10000CBEC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 8) - *v4;
  if (v6 < a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(v4 + 8) - *v4;
  }

  v7 = v6 - a2;
  if (v6 >= a2)
  {
    if (v6 > v7)
    {
      *(v4 + 8) = &v5[v7];
    }
  }

  else
  {
    sub_10000CA0C(v4, -a2);
  }
}

void sub_10000CCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_10000CCFC(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  v2 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1, v2);
  return a1;
}

void sub_10000CD38(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_100008350(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

void sub_10000CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int ***a7)
{
  v7 = **a7;
  v8 = (*a7)[1];
  if (v7 != v8)
  {
    v12 = a3 << 32;
    do
    {
      v13 = *v7;
      v14 = *(v7 + 2);
      v15[0] = *(v7 + 1);
      v15[1] = v14;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      sub_10000CE40(a1, a2, v12 | v13, a4, a5, a6, v15);
      if (v14)
      {
        sub_100008350(v14);
      }

      v7 += 6;
    }

    while (v7 != v8);
  }
}

void sub_10000CE28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008350(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000CE40(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = a6;
  v11 = *(a1 + 128);
  v12 = (a1 + 136);
  if (v11 == (a1 + 136))
  {
LABEL_9:
    v18 = a7[1];
    v20 = *a7;
    v21 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000D1D4(a2, v8, HIDWORD(a3), &v20);
    if (v21)
    {
      sub_100008350(v21);
    }
  }

  else
  {
    while (1)
    {
      v14 = v11 + 4;
      if (sub_10000CFB8((v11 + 4), a3))
      {
        break;
      }

      v15 = v11[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v11[2];
          v17 = *v16 == v11;
          v11 = v16;
        }

        while (!v17);
      }

      v11 = v16;
      if (v16 == v12)
      {
        goto LABEL_9;
      }
    }

    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      if (*(v11 + 55) < 0)
      {
        v14 = *v14;
      }

      *buf = 67109378;
      v23 = a3;
      v24 = 2082;
      v25 = v14;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "agg:#D Filtering metric 0x%x due to filter %{public}s", buf, 0x12u);
    }
  }
}

uint64_t sub_10000CFB8(uint64_t a1, unsigned int a2)
{
  result = (*(*(a1 + 24) + 16))();
  if (result)
  {
    v7 = *(a1 + 40);
    v6 = a1 + 40;
    v5 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v6;
    do
    {
      v9 = *(v5 + 28);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    if (v8 == v6 || *(v8 + 28) > a2)
    {
LABEL_10:
      v8 = v6;
    }

    return v8 != v6;
  }

  return result;
}

uint64_t sub_10000D048(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100033FD0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_10000D17C(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v16 = 24 * v2 + 24;
  v8 = a1[1];
  v9 = (24 * v2 + *a1 - v8);
  sub_10000D2A8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10000B6EC(&v14);
  return v13;
}

void sub_10000D168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000B6EC(va);
  _Unwind_Resume(a1);
}

void sub_10000D17C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100033BCC();
}

void sub_10000D1D4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v11[0] = __PAIR64__(a3, a2);
    v6 = a4[1];
    v11[1] = v4;
    v12 = v6;
    *a4 = 0;
    a4[1] = 0;
    v7 = *(a1 + 40);
    if (v7 >= *(a1 + 48))
    {
      v9 = sub_10000D048((a1 + 32), v11);
      v10 = v12;
      *(a1 + 40) = v9;
      if (v10)
      {
        sub_100008350(v10);
      }
    }

    else
    {
      *v7 = v11[0];
      v7[1] = v4;
      v7[2] = v6;
      *(a1 + 40) = v7 + 3;
    }
  }

  else
  {
    v8 = *(qword_1002DBE98 + 104);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "submit:#E Got NULL new metric data!", v11, 2u);
    }
  }
}

uint64_t sub_10000D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 24;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        sub_100008350(v7);
      }

      v5 += 24;
    }
  }

  return sub_10000D354(v9);
}

uint64_t sub_10000D354(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000A46A8(a1);
  }

  return a1;
}

uint64_t *sub_10000D3BC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_10000D410(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_10000D42C(uint64_t **a1)
{
  v11 = a1;
  v1 = *a1;
  v2 = **a1;
  v12 = *(*a1 + 12);
  v13 = *(v1 + 5);
  v3 = sub_10000D648(v2 + 80, &v12);
  v4 = v3;
  if ((v2 + 88) != v3)
  {
    v5 = *(v3 + 40);
    if (v5 == 2)
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        v15 = v12;
        v16 = 1024;
        v17 = HIDWORD(v12);
        v18 = 1024;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "agg:#I GeoServices request completed, clearing trigger - Trigger(cid=0x%x, trid=0x%x, sid=%u)", buf, 0x14u);
      }

      sub_10001756C((v2 + 80), v4);
      operator delete(v4);
    }

    else if (v5 == 1)
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        v15 = v12;
        v16 = 1024;
        v17 = HIDWORD(v12);
        v18 = 1024;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "agg:#I Skipping finishMetrics because a GeoServices request is pending for - Trigger(cid=0x%x, trid=0x%x, sid=%u)", buf, 0x14u);
      }

      goto LABEL_12;
    }
  }

  v8 = sub_10000C604(v2 + 56, &v12);
  v9 = v12;
  v10 = v13;
  if ((v2 + 64) == v8)
  {
    v8 = sub_10005F0A4(v2 + 56, v12, v13);
  }

  sub_10000D734(v2, v8, *(v1 + 2), v9, v10);
LABEL_12:
  operator delete();
}

uint64_t *sub_10000D648(uint64_t a1, unsigned int *a2)
{
  v3 = (a1 + 8);
  result = sub_10000D6C8(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = a2[2];
  v6 = *(result + 9);
  if (v5 < v6 || v6 >= v5 && *a2 < *(result + 28))
  {
    return v3;
  }

  return result;
}

uint64_t *sub_10000D6C8(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  result = a4;
  if (a3)
  {
    v6 = a2[1];
    v5 = a2[2];
    v7 = *a2;
    while (1)
    {
      v8 = *(a3 + 9);
      if (v8 >= v5)
      {
        if (v5 < v8)
        {
          goto LABEL_6;
        }

        v9 = *(a3 + 8);
        if (v9 >= v6)
        {
          break;
        }
      }

      ++a3;
LABEL_7:
      a3 = *a3;
      if (!a3)
      {
        return result;
      }
    }

    if (v6 >= v9)
    {
      v10 = *(a3 + 7);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        result = a3;
      }

      a3 += v12;
      goto LABEL_7;
    }

LABEL_6:
    result = a3;
    goto LABEL_7;
  }

  return result;
}

void sub_10000D734(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v7 = a3;
  v9 = HIDWORD(a4);
  if (a1 + 64 != a2)
  {
    v11 = sub_10000D964(*(a2 + 48), a3);
    v12 = *(a1 + 40);
    if (v11)
    {
      if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v18 = 67109888;
      v19 = a4;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = a5;
      v24 = 1024;
      v25 = v7;
      v13 = "agg:#I [ O ] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Remove hold for cid 0x%x";
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v18 = 67109888;
      v19 = a4;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = a5;
      v24 = 1024;
      v25 = v7;
      v13 = "agg:#E [ ? ] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Unable to remove hold for cid 0x%x due to missing cid hold";
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v14, v15, v13, &v18, 0x1Au);
LABEL_10:
    if (sub_10000DA48(*(a2 + 48)))
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 67109632;
        v19 = a4;
        v20 = 1024;
        v21 = v9;
        v22 = 1024;
        v23 = a5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "agg:#I [ -W] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Removing hold marked this complete; flushing to log files (if needed).", &v18, 0x14u);
      }

      sub_100017264(a1, a4, a5);
    }

    return;
  }

  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109888;
    v19 = a4;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = a5;
    v24 = 1024;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "agg:#E [ E ] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Unable to remove hold for cid 0x%x due to missing trigger", &v18, 0x1Au);
  }
}

BOOL sub_10000D964(void *a1, int a2)
{
  v5 = a1[9];
  v4 = a1[10];
  if (v5 != v4)
  {
    v6 = a1[9];
    while (*v6 != a2)
    {
      v6 += 4;
      v5 += 4;
      if (v6 == v4)
      {
        v5 = a1[10];
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 4));
    if (v4 != v5 + 4)
    {
      memmove(v5, v5 + 4, v4 - (v5 + 4));
    }

    a1[10] = &v7[v5];
  }

  v8 = a1[12];
  v9 = a1[13];
  if (v8 != v9)
  {
    v10 = a1[12];
    while (*v10 != a2)
    {
      v10 += 4;
      v8 += 4;
      if (v10 == v9)
      {
        v8 = a1[13];
        break;
      }
    }
  }

  if (v9 != v8)
  {
    if (v9 != v8 + 4)
    {
      memmove(v8, v8 + 4, v9 - (v8 + 4));
    }

    a1[13] = v9 - 4;
  }

  return v9 != v8;
}

uint64_t *sub_10000DA74(uint64_t **a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  if (*(v1 + 16))
  {
    v2 = *v1;
    v3 = *(v1 + 8);
    v4 = *(v1 + 12);
    Radio = TelephonyRadiosGetRadio();
    v6 = sub_10000E034(v3, v4, Radio);
    if ((v6 | sub_10000E17C(*(v1 + 8))))
    {
      pthread_mutex_lock(&stru_1002D4C68);
      if (!xmmword_1002D4CA8)
      {
        sub_1000A1C94();
      }

      v7 = *(&xmmword_1002D4CA8 + 1);
      if (*(&xmmword_1002D4CA8 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4C68);
      pthread_mutex_lock(&stru_1002D4C68);
      v8 = xmmword_1002D4CA8;
      if (!xmmword_1002D4CA8)
      {
        sub_1000A1C94();
      }

      v9 = *(&xmmword_1002D4CA8 + 1);
      if (*(&xmmword_1002D4CA8 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4C68);
      v10 = sub_10000E214(v8, *(v1 + 32)) ^ 1;
      if (v9)
      {
        sub_100008350(v9);
      }

      if (v7)
      {
        sub_100008350(v7);
      }

      if ((v10 & 1) == 0)
      {
        sub_10000F950(v2, *(v1 + 12), &v36);
        size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        v12 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v36.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v34 = 0;
          v35 = 0;
          v33 = 0;
          if (sub_10000E2B0(v2, *(v1 + 16), &v33))
          {
            sub_1000119C4(&v33);
            sub_10000F210(*(v2 + 48), *(v1 + 8), &v33, *(v2 + 44));
            v13 = v33;
            v14 = v34;
            while (v13 != v14)
            {
              sub_10000EF04(&v31, v13);
              sub_10000F2A8(&v36.__r_.__value_.__l.__data_, &v31.__r_.__value_.__l.__data_, v29);
              if (v6)
              {
                v15 = *(v1 + 8);
                v28 = object;
                if (object)
                {
                  xpc_retain(object);
                }

                else
                {
                  v28 = xpc_null_create();
                }

                v16 = sub_1000961A4(v15, &v28);
                xpc_release(v28);
                v28 = 0;
                if (v16)
                {
                  if (SHIBYTE(v30) < 0)
                  {
                    sub_10000FFF8(__dst, v29[0], v29[1]);
                  }

                  else
                  {
                    *__dst = *v29;
                    v27 = v30;
                  }

                  v17 = object;
                  v25 = object;
                  if (object)
                  {
                    xpc_retain(object);
                  }

                  else
                  {
                    v17 = xpc_null_create();
                    v25 = v17;
                  }

                  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_10000FFF8(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    __p = v31;
                  }

                  v18 = sub_10000F374(&__p);
                  sub_100010450(v2, __dst, &v25, v18);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  xpc_release(v17);
                  v25 = 0;
                  if (SHIBYTE(v27) < 0)
                  {
                    operator delete(__dst[0]);
                  }
                }
              }

              v19 = object;
              v23 = object;
              if (object)
              {
                xpc_retain(object);
              }

              else
              {
                v19 = xpc_null_create();
                v23 = v19;
              }

              sub_10001081C(v2, v29, &v23);
              xpc_release(v19);
              v23 = 0;
              if (SHIBYTE(v30) < 0)
              {
                operator delete(v29[0]);
              }

              xpc_release(object);
              object = 0;
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v31.__r_.__value_.__l.__data_);
              }

              v13 += 2;
            }

            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_10000FFF8(&v31, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
            }

            else
            {
              v31 = v36;
            }

            v29[0] = 0;
            v29[1] = 0;
            v30 = 0;
            sub_100010AF0(v29, v33, v34, (v34 - v33) >> 5);
            sub_100010C58(&v31.__r_.__value_.__l.__data_, v29);
            v37 = v29;
            sub_10000F168(&v37);
            if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v31.__r_.__value_.__l.__data_);
            }
          }

          v37 = &v33;
          sub_10000F168(&v37);
          v12 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        if (v12 < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_100011338(&v22);
  return sub_1000082FC(&v21);
}

void sub_10000DEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, xpc_object_t object, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  *(v40 - 72) = v39;
  sub_10000F168((v40 - 72));
  if (a41 < 0)
  {
    operator delete(__p);
  }

  *(v40 - 72) = v40 - 120;
  sub_10000F168((v40 - 72));
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  sub_100011338(&a11);
  sub_1000082FC(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_10000E034(int a1, int a2, int a3)
{
  if (a2 == 60 && a3 == 8)
  {
    v3 = &dword_100242F98;
    v4 = 44;
    v5 = &dword_100242FC4;
    while (*v3 != a1)
    {
      ++v3;
      v4 -= 4;
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    return v3 != v5;
  }

  if (a2 == 60 && a3 == 4)
  {
    v3 = &dword_100242FC4;
    v6 = 32;
    v5 = &dword_100242FE4;
    while (*v3 != a1)
    {
      ++v3;
      v6 -= 4;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    return v3 != v5;
  }

  if (a2 == 12 && a3 == 9)
  {
    v3 = &dword_100242FE4;
    v7 = 20;
    v5 = &dword_100242FF8;
    while (*v3 != a1)
    {
      ++v3;
      v7 -= 4;
      if (!v7)
      {
LABEL_18:
        v3 = v5;
        return v3 != v5;
      }
    }

    return v3 != v5;
  }

  if (a2 == 60 && a3 == 14)
  {
    v9 = &dword_100242FF8;
    v10 = 12;
    v11 = &dword_100243004;
    while (*v9 != a1)
    {
      ++v9;
      v10 -= 4;
      if (!v10)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v9 = &dword_100243004;
    v12 = 76;
    v11 = &dword_100243050;
    while (*v9 != a1)
    {
      ++v9;
      v12 -= 4;
      if (!v12)
      {
LABEL_29:
        v9 = v11;
        return v9 == v11;
      }
    }
  }

  return v9 == v11;
}

BOOL sub_10000E17C(int a1)
{
  v1 = &dword_100243050;
  v2 = 28;
  while (*v1 != a1)
  {
    ++v1;
    v2 -= 4;
    if (!v2)
    {
      v1 = "NSt3__110__function6__funcIZ45[WISDailyWirelessUsageMetricController init]E3$_0NS_9allocatorIS2_EEFvN3xpc4dictEEEE";
      return v1 != "NSt3__110__function6__funcIZ45[WISDailyWirelessUsageMetricController init]E3$_0NS_9allocatorIS2_EEFvN3xpc4dictEEEE";
    }
  }

  return v1 != "NSt3__110__function6__funcIZ45[WISDailyWirelessUsageMetricController init]E3$_0NS_9allocatorIS2_EEFvN3xpc4dictEEEE";
}

uint64_t sub_10000E1B8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = sub_1000114B8(v3, a2);
  if ((v4 & 0x100000000) == 0)
  {
    return 0;
  }

  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = *(a1 + 56);

  return sub_10000E264(v6, v5);
}

uint64_t sub_10000E214(uint64_t *a1, unsigned int a2)
{
  sub_100011524(a1);
  result = a1[15];
  if (result)
  {

    return sub_10000E1B8(result, a2);
  }

  return result;
}

uint64_t sub_10000E264(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 72);
  v2 = a1 + 72;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 28);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 28) <= a2)
  {
    v9 = *(v5 + 32);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_10000E2B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  wis::createTagForProtobuf(0xF, *(a2 + 8) - *a2, a3);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_10000E4DC(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  sub_10000E558(&__p, __p, v15, v16, v16 - v15);
  v5 = xpc_null_create();
  v6 = sMetricToXpcTransform();
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  v8 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v8);
  xpc_release(v6);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_1000117BC;
  applier[3] = &unk_1002AE178;
  applier[4] = a3;
  v9 = xpc_dictionary_apply(v7, applier);
  xpc_release(v7);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v9;
}

void sub_10000E44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  xpc_release(v19);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10000E4DC(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000BDA8(result, a4);
  }

  return result;
}

void sub_10000E53C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10000E558(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) < __len)
  {
    v11 = *a1;
    v12 = v10 - *a1 + __len;
    if (v12 < 0)
    {
      sub_100033FD0();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if ((v10 - __dst) >= __len)
  {
    v26 = &__dst[__len];
    v27 = (v10 - __len);
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = (v10 + v17);
    if (&v18[-v6] < v10)
    {
      v21 = (a4 - &v7[v6]);
      v22 = (a4 - v7);
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

_OWORD *sub_10000E780(_OWORD *__dst, __int128 *a2, void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  v6 = *a3;
  *(__dst + 3) = *a3;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    *(__dst + 3) = xpc_null_create();
  }

  return __dst;
}

void sub_10000E7F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_10000E83C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 3);
  *(a2 + 3) = xpc_null_create();
  return a1;
}

uint64_t sub_10000E890(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10008A41C(a1);
  }

  return a1;
}

void sub_10000E8C8(uint64_t result, uint64_t a2)
{
  while (1)
  {
    v4 = *(result + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(result + 32);
    *(result + 16) = v4 - 32;
    sub_1000103F8(v5, v4 - 32);
  }
}

uint64_t ***sub_10000E910(uint64_t ***result, std::string *a2, std::string *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_1000236B8(v8);
      while (a2 != a3)
      {
        sub_100073424(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            ++a2;
            break;
          }

          v11 = sub_1000236B8(v11);
        }

        else
        {
          v8 = v12;
        }

        ++a2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_10002370C(&v10);
  }

  while (a2 != a3)
  {
    result = sub_10000FDC0(v5, &a2->__r_.__value_.__l.__data_, a2);
    ++a2;
  }

  return result;
}

void sub_10000EA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002370C(va);
  _Unwind_Resume(a1);
}

void *sub_10000EA18(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_10000EA50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ***sub_10000EA6C(uint64_t ***result, std::string *a2, std::string *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_1000236B8(v8);
      while (a2 != a3)
      {
        sub_100087E50(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 2;
            break;
          }

          v11 = sub_1000236B8(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_100087EE0(&v10);
  }

  while (a2 != a3)
  {
    result = sub_10000EB74(v5, &a2->__r_.__value_.__l.__data_, a2);
    a2 += 2;
  }

  return result;
}

void sub_10000EB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100087EE0(va);
  _Unwind_Resume(a1);
}

void *sub_10000EB74(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = *sub_10000FEF0(a1, &v5, a2);
  if (!v3)
  {
    sub_10000EC04();
  }

  return v3;
}

_OWORD *sub_10000EC7C(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_10000FFF8(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_10000ECF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char **sub_10000ED10(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10000EEAC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10000ED5C(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_10000ED94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000EDB0(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_10000EDE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000EE04(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_10000EE3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000EE58(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_10000EE90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000EEAC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

_OWORD *sub_10000EF04(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 3);
  *(__dst + 3) = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *(__dst + 3) = xpc_null_create();
  }

  return __dst;
}

uint64_t **sub_10000EF74(uint64_t **a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_10000F050(a1, *a2, a2 + 1);
  return a1;
}

void *sub_10000EFCC(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  result = *sub_1000135B8(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10000FE40();
  }

  return result;
}

uint64_t **sub_10000F050(uint64_t **result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10000EFCC(v5, v5 + 1, v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_10000F0D8(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_10000FF8C(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_10000FF8C(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void sub_10000F168(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10000F1BC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10000F1BC(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; sub_1000103F8(result, i))
  {
    i -= 32;
  }

  *(result + 8) = a2;
}

void sub_10000F210(id ***result, uint64_t a2, __int128 **a3, char a4)
{
  v6 = a2;
  if (a2 == 3962198)
  {
    sub_10006A26C(result, a3);
    if (a4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a2 == 812547)
  {
    sub_10006A110(result, a3);
  }

  if ((a4 & 1) == 0)
  {
LABEL_7:

    sub_10006A4A0(result, v6, a3);
  }
}

char *sub_10000F2A8@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_100013A6C(a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

BOOL sub_10000F374(uint64_t a1)
{
  sub_10000FC40(v6);
  if (*(a1 + 23) < 0)
  {
    sub_10000FFF8(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v5 = *(a1 + 16);
  }

  v2 = sub_10000F474(v6, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100013464(v13, v13[1]);
  sub_100013464(v12, v12[1]);
  sub_100013464(v11, v11[1]);
  sub_1000134C0(v10, v10[1]);
  sub_1000134C0(v9, v9[1]);
  sub_1000134C0(v8, v8[1]);
  sub_1000134C0(v6, v7);
  return v2;
}

BOOL sub_10000F474(uint64_t a1, const void **a2)
{
  RadioVendor = TelephonyRadiosGetRadioVendor();
  v5 = 24;
  if (RadioVendor == 3)
  {
    v5 = 72;
  }

  sub_10000EF74(&v8, (a1 + v5));
  v6 = &v9 != sub_10000F0D8(&v8, a2);
  sub_1000134C0(&v8, v9);
  return v6;
}

xpc_object_t sub_10000F50C@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void sub_10000F558(uint64_t a1, char *a2, void **a3)
{
  if (a1 + 24 != sub_10000F0D8(a1 + 16, a2))
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FAA94();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      if (a2[23] >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      v8 = [NSString stringWithUTF8String:v7];
      if (v8)
      {
        v9 = [WeakRetained queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_10000F8D4;
        block[3] = &unk_1002AB088;
        v13 = WeakRetained;
        v10 = v8;
        v11 = *a3;
        v14 = v10;
        object = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          object = xpc_null_create();
        }

        dispatch_async(v9, block);
        xpc_release(object);
        object = 0;
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FAB18();
      }
    }
  }
}

xpc_object_t sub_10000F708(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void sub_10000F748(uint64_t a1, __int128 *a2, void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_1000081C8(&v8, (a1 + 8));
  operator new();
}

void sub_10000F8D4(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  [v1 handleIncomingMetric:v2 withXPCPayload:&object];
  xpc_release(object);
}

std::string *sub_10000F950@<X0>(std::string *result@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 > 11)
  {
    if (a2 == 60)
    {
      goto LABEL_5;
    }

    if (a2 != 34)
    {
      if (a2 != 12)
      {
        return result;
      }

LABEL_5:
      if (result[3].__r_.__value_.__s.__data_[0])
      {
        v4 = "com.apple.Baseband.";
        v5 = 1;
        goto LABEL_13;
      }

LABEL_16:
      v6 = "";
      return std::string::assign(a3, v6);
    }

    if (result[3].__r_.__value_.__s.__data_[1] != 1)
    {
      goto LABEL_16;
    }

    v4 = "com.apple.Telephony.";
    v5 = 4;
LABEL_13:
    if ((result[1].__r_.__value_.__r.__words[2] & v5) != 0)
    {
      v6 = "";
    }

    else
    {
      v6 = v4;
    }

    return std::string::assign(a3, v6);
  }

  if (a2 == 1 || a2 == 8)
  {
    if ((result[3].__r_.__value_.__s.__data_[1] & 1) == 0)
    {
      goto LABEL_16;
    }

    v4 = "com.apple.Telephony.";
    v5 = 2;
    goto LABEL_13;
  }

  return result;
}

void sub_10000FA18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000FA34(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100033FD0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_10000E7F4(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_10000E83C(32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  sub_10000FB78(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10000FB40(&v14);
  return v13;
}

void sub_10000FB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000FB40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FB40(uint64_t a1)
{
  sub_10000E8C8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10000FB78(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_10000E83C(a4, v7);
      v7 += 2;
      a4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_1000103F8(a1, v5);
      v5 += 2;
    }
  }

  return sub_10000E890(v9);
}

void sub_10000FC44(std::string **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = a3;
    v6 = a2;
    do
    {
      sub_10000FC40(v12);
      if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_10000FFF8(__p, v3->__r_.__value_.__l.__data_, v3->__r_.__value_.__l.__size_);
      }

      else
      {
        v7 = *&v3->__r_.__value_.__l.__data_;
        v11 = v3->__r_.__value_.__r.__words[2];
        *__p = v7;
      }

      sub_100010198(v12, __p, v6, v5, &__str);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100013464(v18, v18[1]);
      sub_100013464(v17, v17[1]);
      sub_100013464(v16, v16[1]);
      sub_1000134C0(v15, v15[1]);
      sub_1000134C0(v14, v14[1]);
      sub_1000134C0(v13, v13[1]);
      sub_1000134C0(v12, v12[1]);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::operator=(v3, &__str);
        v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v9 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 32);
    }

    while (v3 != v4);
  }
}

void *sub_10000FDC0(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *sub_10000FEF0(a1, &v4, a2);
  if (!result)
  {
    sub_10000FE40();
  }

  return result;
}

void sub_10000FED4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000237E0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10000FEF0(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_10000FF8C(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10000FF8C(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_10000FF8C(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void *sub_10000FFF8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100023410();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_10001009C(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_1000100D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000100F0(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_100010128(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100010144(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_10001017C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100010198(const void ***a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  if (a3 == 2)
  {
    if (a4 == 4)
    {
      if (*(a2 + 23) < 0)
      {
        sub_10000FFF8(__p, *a2, *(a2 + 1));
      }

      else
      {
        *__p = *a2;
        v11 = *(a2 + 2);
      }

      sub_100087F38(v8, a1 + 18);
      sub_10008795C(__p, v8, a5);
      sub_100013464(v8, v9);
      if (SHIBYTE(v11) < 0)
      {
        v7 = __p[0];
        goto LABEL_29;
      }

      return;
    }

    if (a4 == 8)
    {
      if (*(a2 + 23) < 0)
      {
        sub_10000FFF8(&v14, *a2, *(a2 + 1));
      }

      else
      {
        v14 = *a2;
        v15 = *(a2 + 2);
      }

      sub_100087F38(v12, a1 + 15);
      sub_10008795C(&v14, v12, a5);
      sub_100013464(v12, v13);
      if (SHIBYTE(v15) < 0)
      {
        v7 = v14;
        goto LABEL_29;
      }

      return;
    }

    goto LABEL_12;
  }

  if (a3 != 4)
  {
    if (a3 == 3)
    {
      if (*(a2 + 23) < 0)
      {
        sub_10000FFF8(&v17, *a2, *(a2 + 1));
      }

      else
      {
        v17 = *a2;
      }

      sub_1000879DC(a1, &v17, a5);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = v17.__r_.__value_.__r.__words[0];
        goto LABEL_29;
      }

      return;
    }

LABEL_12:

    sub_100007ECC(a5, "");
    return;
  }

  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
  }

  sub_100087C70(&__dst, a5);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = __dst.__r_.__value_.__r.__words[0];
LABEL_29:
    operator delete(v7);
  }
}

void sub_100010374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_100013464(&a10, a11);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_1000103F8(uint64_t a1, uint64_t a2)
{
  xpc_release(*(a2 + 24));
  *(a2 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_100010450(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = a2;
    if (*(a2 + 23) < 0)
    {
      v8 = *a2;
    }

    *buf = 136446466;
    *&buf[4] = v8;
    v21 = 1024;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "conv:#I Sending CoreAnalytics with eventName=%{public}s, isExploding=%{BOOL}d ", buf, 0x12u);
  }

  if (a4)
  {
    v18[1] = _NSConcreteStackBlock;
    v18[2] = 1174405120;
    v18[3] = sub_10001B0F8;
    v18[4] = &unk_1002AE198;
    v9 = *a3;
    object = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      object = xpc_null_create();
    }

    analytics_send_exploding_event_lazy();
    xpc_release(object);
    return;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v18[0] = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v18[0] = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v11) != &_xpc_type_dictionary)
  {
    v12 = xpc_null_create();
LABEL_17:
    v18[0] = v12;
    goto LABEL_18;
  }

  xpc_retain(v11);
LABEL_18:
  xpc_release(v11);
  sub_100007ECC(buf, CASendEventOptionKeyLogPayload);
  v16 = xpc_BOOL_create(1);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v13 = buf;
  if (v23 < 0)
  {
    v13 = *buf;
  }

  v15[0] = v18;
  v15[1] = v13;
  sub_10000F50C(v15, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v14 = xpc_null_create();
  }

  analytics_send_event_lazy_with_options();
  xpc_release(v14);
  if (v23 < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v18[0]);
}

void sub_100010720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002205C(exception_object);
}

xpc_object_t sub_1000107B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

void sub_10001081C(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3 != v4)
  {
    v8 = 0;
    while (1)
    {
      v9 = v3[1];
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10 && (v11 = *v3) != 0)
        {
          v12 = *a3;
          object = v12;
          if (v12)
          {
            xpc_retain(v12);
          }

          else
          {
            object = xpc_null_create();
          }

          (*(*v11 + 16))(v11, a2, &object);
          xpc_release(object);
          object = 0;
        }

        else
        {
          v13 = v3[1];
          *v3 = 0;
          v3[1] = 0;
          if (v13)
          {
            std::__shared_weak_count::__release_weak(v13);
          }

          v8 = 1;
          if (!v10)
          {
            goto LABEL_16;
          }
        }

        sub_100008350(v10);
      }

      else
      {
        *v3 = 0;
        v3[1] = 0;
        v8 = 1;
      }

LABEL_16:
      v3 += 2;
      if (v3 == v4)
      {
        if (v8)
        {
          sub_10008A020(a1);
        }

        return;
      }
    }
  }
}

void sub_100010934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100008350(v10);
  _Unwind_Resume(a1);
}

void sub_100010964(uint64_t a1, __int128 *a2, void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_1000081C8(&v8, (a1 + 8));
  operator new();
}

uint64_t *sub_100010AF0(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_100010B78(result, a4);
  }

  return result;
}

void sub_100010B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10000F168(&a9);
  _Unwind_Resume(a1);
}

void sub_100010B78(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_10000E7F4(a1, a2);
  }

  sub_100033FD0();
}

_OWORD *sub_100010BB4(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10000EF04(v4, v6);
      v6 += 2;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10000E890(v8);
  return v4;
}

void sub_100010C58(const void **a1, __int128 **a2)
{
  if (sub_100010FD4())
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      do
      {
        sub_10000EF04(v17, v4);
        sub_10000F2A8(a1, v17, v15);
        if (SHIBYTE(v16) < 0)
        {
          sub_10000FFF8(__p, v15[0], v15[1]);
        }

        else
        {
          *__p = *v15;
          v14 = v16;
        }

        v6 = sub_100013AF8(__p);
        v7 = v6;
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p[0]);
          if (v7)
          {
LABEL_10:
            v8 = *(qword_1002DBE98 + 112);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              if (v16 >= 0)
              {
                v9 = v15;
              }

              else
              {
                v9 = v15[0];
              }

              *buf = 136315138;
              v21 = v9;
              _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "WISABC:#D Event %s is eligible for ABC", buf, 0xCu);
            }

            if (SHIBYTE(v16) < 0)
            {
              sub_10000FFF8(__dst, v15[0], v15[1]);
            }

            else
            {
              *__dst = *v15;
              v12 = v16;
            }

            v10 = object;
            if (object)
            {
              xpc_retain(object);
            }

            else
            {
              v10 = xpc_null_create();
            }

            sub_1000AF780(__dst, &v10);
            xpc_release(v10);
            v10 = 0;
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__dst[0]);
            }
          }
        }

        else if (v6)
        {
          goto LABEL_10;
        }

        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        xpc_release(object);
        object = 0;
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        v4 += 2;
      }

      while (v4 != v5);
    }
  }
}

void sub_100010FBC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100010FC4);
  }

  sub_10002205C(a1);
}

uint64_t sub_100010FD4()
{
  sub_100011294(1u, &__p);
  v0 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v1 = v11;
  }

  else
  {
    v1 = v10;
  }

  if (!v1)
  {
    goto LABEL_15;
  }

  if ((v11 & 0x80000000) == 0)
  {
    switch(v11)
    {
      case 4u:
        if (__p == 1635018050)
        {
          goto LABEL_32;
        }

        break;
      case 7u:
        if (__p == 1920098627 && *(&__p + 3) == 1919248754)
        {
          goto LABEL_32;
        }

        break;
      case 8u:
        p_p = &__p;
        goto LABEL_14;
    }

    v5 = *(qword_1002DBE98 + 112);
    v3 = 0;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      return v3;
    }

    goto LABEL_39;
  }

  if (v10 == 4)
  {
    if (*__p == 1635018050)
    {
      goto LABEL_32;
    }

LABEL_29:
    v5 = *(qword_1002DBE98 + 112);
    v3 = 0;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_35:
      operator delete(__p);
      return v3;
    }

    goto LABEL_38;
  }

  if (v10 == 7)
  {
    if (*__p == 1920098627 && *(__p + 3) == 1919248754)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v10 != 8)
  {
    goto LABEL_29;
  }

  p_p = __p;
LABEL_14:
  if (*p_p != 0x6C616E7265746E49)
  {
LABEL_15:
    v3 = 0;
    goto LABEL_33;
  }

LABEL_32:
  v3 = 1;
LABEL_33:
  v5 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (v0 < 0)
    {
LABEL_38:
      v8 = __p;
      goto LABEL_40;
    }

LABEL_39:
    v8 = &__p;
LABEL_40:
    *buf = 136315394;
    v13 = v8;
    v14 = 1024;
    v15 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "WISABC:#D kSwReleaseType: %s, isValid: %{BOOL}d", buf, 0x12u);
    if ((v11 & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_35;
  }

  if ((v0 & 0x80) != 0)
  {
    goto LABEL_35;
  }

  return v3;
}

void sub_100011214(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    ctu::cf::assign();
    CFRelease(v3);
  }
}

void sub_100011270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10006703C(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_100011294(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 <= 2)
  {
    if (a1 <= 2)
    {
      goto LABEL_3;
    }
  }

  else if (a1 <= 6)
  {
LABEL_3:
    sub_100011214(a2);
    return;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t *sub_100011338(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10001138C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1000113F4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

unint64_t sub_1000114B8(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 96);
  v2 = a1 + 96;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      v6 = *(v3 + 28);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != v2 && *(v5 + 28) <= a2)
    {
      v12 = *(v5 + 32);
      v10 = v12 & 0xFFFFFF00;
      LODWORD(v3) = v12;
      v9 = &_mh_execute_header;
      return v9 | v10 | v3;
    }

    v9 = 0;
    LODWORD(v3) = 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  return v9 | v10 | v3;
}

uint64_t *sub_100011524(uint64_t *result)
{
  if (*(result + 62))
  {
    return result;
  }

  v1 = result;
  *(result + 62) = 1;
  sub_1000A36E8(result + 15, 0);
  pthread_mutex_lock(&stru_1002D4A58);
  v2 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v3 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000E1870(v2, &v10);
  if (v3)
  {
    sub_100008350(v3);
  }

  if (v10)
  {
    v4 = sub_10012A464(v10);
    v5 = v1[5];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "submit:#I Initializing trigger conditional and metric processing maps", buf, 2u);
      }

      sub_10012A4C4(v10);
      operator new();
    }

    if (!v6)
    {
      goto LABEL_18;
    }

    *buf = 0;
    v8 = "submit:#I Current config is not eligible; not setting up the maps (a new one should select)";
    v9 = v5;
  }

  else
  {
    v7 = v1[5];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v8 = "submit:#I DeviceConfig is empty; weird";
    v9 = v7;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, buf, 2u);
LABEL_18:
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

uint64_t sub_1000117BC(uint64_t a1, char *a2, xpc_object_t a3)
{
  sub_100007ECC(v16, a2);
  v5 = v17;
  v6 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v5 = v16[1];
  }

  if (v5)
  {
    if (a3)
    {
      xpc_retain(a3);
      object = a3;
    }

    else
    {
      a3 = xpc_null_create();
      object = a3;
      if (!a3)
      {
        v7 = xpc_null_create();
        a3 = 0;
        goto LABEL_11;
      }
    }

    if (xpc_get_type(a3) == &_xpc_type_array)
    {
      xpc_retain(a3);
      goto LABEL_12;
    }

    v7 = xpc_null_create();
LABEL_11:
    object = v7;
LABEL_12:
    xpc_release(a3);
    v8 = object;
    if (xpc_get_type(object) == &_xpc_type_array && xpc_array_get_count(object))
    {
      __p[0] = &object;
      __p[1] = 0;
      sub_10000BC98(__p, &v14);
      v9 = *(a1 + 32);
      sub_10000E780(__p, v16, &v14);
      sub_10001197C(v9, __p);
      xpc_release(v13);
      v13 = 0;
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v14);
      v8 = object;
    }

    xpc_release(v8);
    v6 = v17;
  }

  if ((v6 & 0x80) != 0)
  {
    operator delete(v16[0]);
  }

  return 1;
}

void sub_100011914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, xpc_object_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_10006AB64(&a10);
  xpc_release(object);
  xpc_release(a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10001197C(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10000FA34(a1, a2);
  }

  else
  {
    result = sub_10000E83C(v3, a2) + 32;
  }

  a1[1] = result;
  return result;
}

void sub_1000119C4(std::string **a1)
{
  RadioVendor = TelephonyRadiosGetRadioVendor();
  Radio = TelephonyRadiosGetRadio();
  sub_10000FC44(a1, RadioVendor, Radio);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      sub_10000EF04(v20, v4);
      sub_10000FC40(buf);
      if (SHIBYTE(v21) < 0)
      {
        sub_10000FFF8(__p, v20[0], v20[1]);
      }

      else
      {
        *__p = *v20;
        v19 = v21;
      }

      v6 = sub_100013524(buf, __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100013464(v33, v33[1]);
      sub_100013464(v32, v32[1]);
      sub_100013464(v31, v31[1]);
      sub_1000134C0(v30, v30[1]);
      sub_1000134C0(v29, v29[1]);
      sub_1000134C0(v28, v28[1]);
      sub_1000134C0(buf, *&buf[8]);
      if (v6)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        if (SHIBYTE(v21) < 0)
        {
          sub_10000FFF8(__dst, v20[0], v20[1]);
        }

        else
        {
          *__dst = *v20;
          v14 = v21;
        }

        v7 = object;
        v12 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v7 = xpc_null_create();
          v12 = v7;
        }

        v8 = sub_100093534(__dst, &v12, &v15);
        xpc_release(v7);
        v12 = 0;
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__dst[0]);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v9 = v20;
          if (v21 < 0)
          {
            v9 = v20[0];
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 1024;
          *&buf[14] = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[WISToCAEventSanitizer] event %s metric flattening result: %{BOOL}d", buf, 0x12u);
        }

        v10 = v15;
        v11 = v16;
        while (v10 != v11)
        {
          sub_10000EF04(buf, v10);
          sub_10001386C(&v23, buf);
          xpc_release(v28[0]);
          v28[0] = 0;
          if (v27 < 0)
          {
            operator delete(*buf);
          }

          v10 += 2;
        }

        *buf = &v15;
        sub_10000F168(buf);
      }

      else
      {
        sub_10001386C(&v23, v20);
      }

      xpc_release(object);
      object = 0;
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      v4 = (v4 + 32);
    }

    while (v4 != v5);
  }

  if (&v23 != a1)
  {
    sub_1000138C0(a1, v23, v24, (v24 - v23) >> 5);
  }

  *buf = &v23;
  sub_10000F168(buf);
}

void sub_100011CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char *a35)
{
  a35 = &a32;
  sub_10000F168(&a35);
  _Unwind_Resume(a1);
}

uint64_t ***sub_100011DA0(uint64_t ***a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  a1[4] = 0;
  a1[3] = (a1 + 4);
  v2 = a1 + 3;
  a1[7] = 0;
  a1[6] = (a1 + 7);
  v3 = a1 + 6;
  a1[5] = 0;
  a1[8] = 0;
  a1[10] = 0;
  a1[9] = (a1 + 10);
  v4 = a1 + 9;
  a1[11] = 0;
  a1[13] = 0;
  a1[12] = (a1 + 13);
  v5 = a1 + 12;
  a1[14] = 0;
  a1[17] = 0;
  a1[16] = 0;
  a1[19] = 0;
  a1[18] = (a1 + 19);
  v6 = a1 + 18;
  a1[15] = (a1 + 16);
  v7 = a1 + 15;
  a1[20] = 0;
  sub_100007ECC(v19, "cellularFbrxPdetStats");
  sub_100007ECC(v20, "cellularLteHoToLteCount");
  sub_100007ECC(v21, "cellularLteTxRxLevelHist");
  sub_100007ECC(v22, "cellularNrDlPdcpStats");
  sub_100007ECC(v23, "cellularNrRadioStats");
  sub_100007ECC(v24, "cellularNrRsrpRsrqSinrHist");
  sub_100007ECC(&v25, "cellularNrTxRxLevelHist");
  sub_100007ECC(&v26, "cellularNrUlPdcpStats");
  sub_100007ECC(v27, "cellularMitigationSessionStats");
  sub_100007ECC(v28, "cellularMitigationStatsPerRrcRelease");
  sub_100007ECC(v29, "cellularLteIratCount");
  sub_100007ECC(v30, "cellularLteRrcStateHist");
  sub_100007ECC(v31, "cellularNrRrcStateHist");
  sub_100007ECC(v32, "cellularRfTunerHist");
  sub_100007ECC(v33, "cellularScanStats");
  sub_100007ECC(v34, "cellularServiceStatusHist");
  sub_100007ECC(&v35, "cellularLteSysInfoBlocks");
  sub_100007ECC(&v36, "cellularNrSysInfoBlocks");
  sub_100007ECC(v37, "cellularNrEndcUsageStats");
  sub_100007ECC(v38, "cellularRfTunerEvent");
  sub_100007ECC(v39, "cellularIconDisplay");
  sub_100007ECC(v40, "cellularWcdmaRrcStateHist");
  sub_100007ECC(&v41, "cellularNrConnInactiveStats");
  sub_100007ECC(v42, "cellularDsdaProtocolStateHist");
  sub_100007ECC(v43, "cellularNasMsgCount");
  sub_100007ECC(v44, "cellularUimNvWearStatsPerCounter");
  sub_100007ECC(v45, "cellularNrLatencyTrackerHist");
  sub_100007ECC(v46, "cellularNrRlcStats");
  sub_100007ECC(v47, "cellularRankIndicatorHist");
  sub_100007ECC(v48, "cellularScanStatsSummary");
  sub_100007ECC(v49, "cellularSftOutageInfo");
  sub_100007ECC(v50, "cellularLteEdrxStats");
  sub_100007ECC(v51, "cellularP2pDataLatency");
  sub_100007ECC(v52, "cellularP2pInfoUseRatio");
  sub_100007ECC(v53, "cellularLteNrEdrxStats");
  sub_100007ECC(v54, "cellularNrPeiStats");
  sub_100007ECC(v55, "cellularNrPeiPenaltyConfig");
  sub_100007ECC(v56, "cellularNrWusPsRntiConfig");
  sub_100007ECC(v57, "cellularLteNrUlGrantStats");
  sub_100007ECC(v58, "cellularNrPdcchSkipStats");
  sub_100007ECC(v59, "cellularNrSssgConfigStats");
  sub_100007ECC(v60, "cellularLteNrDataPacketSummary");
  sub_100007ECC(v61, "cellularLteNrDataSdtIntervalSummary");
  sub_100007ECC(v62, "cellularLteNrDataSdtFirstPacketSizeSummary");
  sub_100007ECC(v63, "cellularPlatformSystemHeapUsage");
  sub_100007ECC(v64, "cellularPlatformSFPWriteHist");
  sub_100007ECC(v65, "cellularPlatformBootTimeHist");
  sub_100007ECC(v66, "cellularPlatformDVFSPerMode");
  sub_100007ECC(v67, "cellularPowerLogGPSStates");
  sub_100007ECC(v68, "cellularPowerLogL1SleepStates");
  sub_100007ECC(v69, "cellularPowerLogMCPMSleepVeto");
  sub_100007ECC(v70, "cellularPowerLogMPSSPerfLevels");
  sub_100007ECC(v71, "cellularPowerLogPowerEstimator");
  sub_100007ECC(v72, "cellularPowerLogProtocolState");
  sub_100007ECC(v73, "cellularPowerLogAOP_UARTStates");
  sub_100007ECC(v74, "cellularPowerLogLTE_UL_CAState");
  sub_100007ECC(v75, "cellularPowerLogLTEActivatedCA_SCCStates");
  sub_100007ECC(v76, "cellularPowerLogLTEConfiguredCA_SCCStates");
  sub_100007ECC(v77, "cellularPowerLogLTERxDiversity");
  sub_100007ECC(v78, "cellularPowerLogLTERxTxActivityStates");
  sub_100007ECC(v79, "cellularPowerLogNR_mmWaveUL_CAState");
  sub_100007ECC(v80, "cellularPowerLogNRmmWaveCA_SCCActivated");
  sub_100007ECC(v81, "cellularPowerLogNRmmWaveCA_SCCConfigured");
  sub_100007ECC(v82, "cellularPowerLogNRmmWaveRxTx");
  sub_100007ECC(v83, "cellularPowerLogNRsub6RxDiversity");
  sub_100007ECC(v84, "cellularPowerLogNRsub6RxTx");
  sub_100007ECC(v85, "cellularPowerLogPCIeStates");
  sub_100007ECC(v86, "cellularPowerLogPLMNSearch");
  sub_100007ECC(v87, "cellularPowerLogWLAN_UARTStates");
  sub_100007ECC(v88, "cellularPowerLogCpuPerfLevels");
  sub_100007ECC(v89, "cellularPowerLogAcmPerfLevels");
  sub_100007ECC(v90, "cellularPowerLogSocPerfLevels");
  sub_100007ECC(v91, "cellularPowerLogXOShutdown");
  sub_100007ECC(v92, "cellularPowerLogLteCaConfigActivateStats");
  sub_100007ECC(v93, "cellularPowerLogNrCaConfigActivateStats");
  sub_100007ECC(v94, "cellularPowerLogCpsSleepStates");
  sub_100007ECC(v95, "cellularPowerLogCdpUSleepStates");
  sub_100007ECC(v96, "cellularPowerLogCdpDSleepStates");
  sub_100007ECC(v97, "cellularPowerLogCdpHSleepStates");
  sub_100007ECC(v98, "cellularPowerLogDcsSleepStates");
  sub_100007ECC(v99, "cellularPowerLog2g3gSleepStates");
  sub_100007ECC(v100, "cellularPowerLogL1SSleepStates");
  sub_100007ECC(v101, "cellularPowerLogL1CSleepStates");
  sub_100007ECC(v102, "commCenterThumperAccount");
  sub_100007ECC(v103, "commCenterDataUsageTopConsumingAppsQueriable");
  sub_100007ECC(v104, "commCenterRemoteCellularPlanProfilesStatus");
  sub_100007ECC(v105, "commCenterCellularPlanProfileTransferDetails");
  sub_100007ECC(v106, "commCenterDataUsageSinceLastSampleQueriable");
  sub_100007ECC(v107, "commCenterTransferPlanListingStatus");
  sub_100007ECC(v108, "commCenterBundleUpdateCheck");
  sub_100007ECC(v109, "commCenterBootstrapBundle");
  sub_100007ECC(v110, "commCenterDefaultBundle");
  sub_100007ECC(v111, "commCenterOperatorBundle");
  sub_100007ECC(v112, "commCenterCarrierBundle");
  sub_100007ECC(v113, "testingOne");
  sub_10000E910(a1, v19, &v114);
  v8 = 95;
  do
  {
    if (SHIBYTE(v19[v8 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19[v8 - 1].__r_.__value_.__l.__data_);
    }

    --v8;
  }

  while (v8 * 24);
  sub_100007ECC(v19, "cellularFbrxPdetStats");
  sub_100007ECC(v20, "cellularLteHoToLteCount");
  sub_100007ECC(v21, "cellularLteTxRxLevelHist");
  sub_100007ECC(v22, "cellularNrDlPdcpStats");
  sub_100007ECC(v23, "cellularNrRadioStats");
  sub_100007ECC(v24, "cellularNrRsrpRsrqSinrHist");
  sub_100007ECC(&v25, "cellularNrTxRxLevelHist");
  sub_100007ECC(&v26, "cellularNrUlPdcpStats");
  sub_100007ECC(v27, "cellularMitigationSessionStats");
  sub_100007ECC(v28, "cellularMitigationStatsPerRrcRelease");
  sub_100007ECC(v29, "cellularLteIratCount");
  sub_100007ECC(v30, "cellularLteRrcStateHist");
  sub_100007ECC(v31, "cellularNrRrcStateHist");
  sub_100007ECC(v32, "cellularRfTunerHist");
  sub_100007ECC(v33, "cellularScanStats");
  sub_100007ECC(v34, "cellularServiceStatusHist");
  sub_100007ECC(&v35, "cellularLteSysInfoBlocks");
  sub_100007ECC(&v36, "cellularNrSysInfoBlocks");
  sub_100007ECC(v37, "cellularNrEndcUsageStats");
  sub_100007ECC(v38, "cellularRfTunerEvent");
  sub_100007ECC(v39, "cellularIconDisplay");
  sub_100007ECC(v40, "cellularWcdmaRrcStateHist");
  sub_100007ECC(&v41, "cellularNrConnInactiveStats");
  sub_100007ECC(v42, "cellularDsdaProtocolStateHist");
  sub_100007ECC(v43, "cellularNasMsgCount");
  sub_100007ECC(v44, "cellularUimNvWearStatsPerCounter");
  sub_100007ECC(v45, "cellularNrLatencyTrackerHist");
  sub_100007ECC(v46, "cellularNrRlcStats");
  sub_100007ECC(v47, "cellularRankIndicatorHist");
  sub_100007ECC(v48, "cellularPowerLogLteNrRxTxActivityStats");
  sub_100007ECC(v49, "cellularLteNrTxPowerSnapshotStats");
  sub_100007ECC(v50, "cellularNrCdrxConfig");
  sub_100007ECC(v51, "cellularSftOutageInfo");
  sub_100007ECC(v52, "cellularCoexSummaryPerMitigation");
  sub_100007ECC(v53, "cellularCoexSummaryPerConn");
  sub_100007ECC(v54, "cellularCoexTimeSharing");
  sub_100007ECC(v55, "cellularMsimArbSrDrRetention");
  sub_100007ECC(v56, "cellularRankIndicatorUsage");
  sub_100007ECC(v57, "cellularNrCsirsReporting");
  sub_100007ECC(v58, "cellularScanStatsSummary");
  sub_100007ECC(v59, "cellularNasNmmRegInfo");
  sub_100007ECC(v60, "cellularPwsBlockedProceduresStats");
  sub_100007ECC(v61, "cellularPwsPerformanceStats");
  sub_100007ECC(v62, "cellularConnReest");
  sub_100007ECC(v63, "cellularNetworkSliceInfo");
  sub_100007ECC(v64, "cellularLteNrCapabilityInfo");
  sub_100007ECC(v65, "cellularNvmUsageStats");
  sub_100007ECC(v66, "cellularNrSINotBroadcastedFailure");
  sub_100007ECC(v67, "cellularFeatureConfigPerFeat");
  sub_100007ECC(v68, "cellularCmeRawData");
  sub_100007ECC(v69, "cellularFeatureConfigPerConn");
  sub_100007ECC(v70, "cellularEmergencyLocation");
  sub_100007ECC(v71, "cellularRfReadbackDeltas");
  sub_100007ECC(v72, "cellularNrIratCount");
  sub_100007ECC(v73, "cellularNrRrcConnCount");
  sub_100007ECC(v74, "cellularLteRrcConnCount");
  sub_100007ECC(v75, "kCellularRffeScanStats");
  sub_100007ECC(v76, "cellularLteNrConnectionStats");
  sub_100007ECC(v77, "cellularBwpSwitchingStats");
  sub_100007ECC(v78, "cellularBwpInfoStatsPerConn");
  sub_100007ECC(v79, "cellularSIValidationFailure");
  sub_100007ECC(v80, "cellularSIAcquisitionFailure");
  sub_100007ECC(v81, "cellularLteNrTxPowerStats");
  sub_100007ECC(v82, "cellularPlatformApBbSleepStats");
  sub_100007ECC(v83, "cellularPowerLogBasebandPowerConsumption");
  sub_100007ECC(v84, "cellularAcmSleepStats");
  sub_100007ECC(v85, "cellularReselectionInfo");
  sub_100007ECC(v86, "cellularMobilityPerfInfo");
  sub_100007ECC(v87, "cellularTxUsage");
  sub_100007ECC(v88, "cellularScanStatsSummary");
  sub_100007ECC(v89, "cellularThermalMitigationPerControlLoop");
  sub_100007ECC(v90, "cellularHeapStats");
  sub_100007ECC(v91, "cellularTxAntSwitching");
  sub_100007ECC(v92, "cellularIpcDlBuf");
  sub_100007ECC(v93, "cellularIpcRingBuf");
  sub_100007ECC(v94, "cellularSensorsTemperature");
  sub_100007ECC(v95, "cellularRrcRlfPredictionInfo");
  sub_100007ECC(v96, "cellularUlpnFlowInfo");
  sub_100007ECC(v97, "cellularChestInfo");
  sub_100007ECC(v98, "cellularCpuDramPerformance");
  sub_100007ECC(v99, "cellularPowerLogGPSStates");
  sub_100007ECC(v100, "cellularPowerLogL1SleepStates");
  sub_100007ECC(v101, "cellularPowerLogPowerEstimator");
  sub_100007ECC(v102, "cellularPowerLogProtocolState");
  sub_100007ECC(v103, "cellularPowerLogAOP_UARTStates");
  sub_100007ECC(v104, "cellularPowerLogLTE_UL_CAState");
  sub_100007ECC(v105, "cellularPowerLogLTEActivatedCA_SCCStates");
  sub_100007ECC(v106, "cellularPowerLogLTEConfiguredCA_SCCStates");
  sub_100007ECC(v107, "cellularPowerLogLTERxTxActivityStates");
  sub_100007ECC(v108, "cellularPowerLogNR_mmWaveUL_CAState");
  sub_100007ECC(v109, "cellularPowerLogNRmmWaveCA_SCCActivated");
  sub_100007ECC(v110, "cellularPowerLogNRmmWaveCA_SCCConfigured");
  sub_100007ECC(v111, "cellularPowerLogNRmmWaveRxTx");
  sub_100007ECC(v112, "cellularPowerLogNRsub6RxTx");
  sub_100007ECC(v113, "cellularPowerLogPCIeStates");
  sub_100007ECC(&v114, "cellularPowerLogPLMNSearch");
  sub_100007ECC(v115, "cellularPowerLogWLAN_UARTStates");
  sub_100007ECC(v116, "cellularPowerLogCpuPerfLevels");
  sub_100007ECC(v117, "cellularPowerLogAcmPerfLevels");
  sub_100007ECC(v118, "cellularPowerLogSocPerfLevels");
  sub_100007ECC(v119, "cellularPowerLogXOShutdown");
  sub_100007ECC(v120, "cellularPowerLogLteCaConfigActivateStats");
  sub_100007ECC(v121, "cellularPowerLogNrCaConfigActivateStats");
  sub_100007ECC(v122, "cellularPowerLogCpsSleepStates");
  sub_100007ECC(v123, "cellularPowerLogCdpUSleepStates");
  sub_100007ECC(v124, "cellularPowerLogCdpDSleepStates");
  sub_100007ECC(v125, "cellularPowerLogCdpHSleepStates");
  sub_100007ECC(v126, "cellularPowerLogDcsSleepStates");
  sub_100007ECC(v127, "cellularPowerLog2g3gSleepStates");
  sub_100007ECC(v128, "cellularPowerLogL1SSleepStates");
  sub_100007ECC(v129, "cellularPowerLogL1CSleepStates");
  sub_100007ECC(v130, "cellularPowerLogBasebandSleepVeto");
  sub_100007ECC(v131, "cellularPowerLogLteNrRxDiversityHist");
  sub_100007ECC(v132, "cellularPowerlogRFSSVoltageLevels");
  sub_100007ECC(v133, "commCenterThumperAccount");
  sub_100007ECC(v134, "commCenterDataUsageTopConsumingAppsQueriable");
  sub_100007ECC(v135, "commCenterRemoteCellularPlanProfilesStatus");
  sub_100007ECC(v136, "commCenterCellularPlanProfileTransferDetails");
  sub_100007ECC(v137, "commCenterDataUsageSinceLastSampleQueriable");
  sub_100007ECC(v138, "commCenterTransferPlanListingStatus");
  sub_100007ECC(v139, "commCenterBundleUpdateCheck");
  sub_100007ECC(v140, "commCenterBootstrapBundle");
  sub_100007ECC(v141, "commCenterDefaultBundle");
  sub_100007ECC(v142, "commCenterOperatorBundle");
  sub_100007ECC(v143, "commCenterCarrierBundle");
  sub_10000E910(v3, v19, &v144);
  v9 = 125;
  do
  {
    if (SHIBYTE(v19[v9 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19[v9 - 1].__r_.__value_.__l.__data_);
    }

    --v9;
  }

  while (v9 * 24);
  sub_100007ECC(v19, "cellularLteRrcConnCount");
  sub_100007ECC(v20, "cellularLteRsrpRsrqSinrHist");
  sub_100007ECC(v21, "cellularLteTxRxLevelHist");
  sub_100007ECC(v22, "cellularNrIratCount");
  sub_100007ECC(v23, "cellularNrRrcConnCount");
  sub_100007ECC(v24, "cellularNrRsrpRsrqSinrHist");
  sub_100007ECC(&v25, "cellularNrTxRxLevelHist");
  sub_100007ECC(&v26, "cellularNrLatencyTrackerHist");
  sub_100007ECC(v27, "cellularBwEstimate");
  sub_100007ECC(v28, "cellularLteIratCount");
  sub_100007ECC(v29, "cellularLtePeakPowerLog");
  sub_100007ECC(v30, "cellularNrRrmIdleRelaxation");
  sub_100007ECC(v31, "cellularCpmsMitigationSession");
  sub_100007ECC(v32, "cellularLteNrDataTrafficSummary");
  sub_100007ECC(v33, "cellularLteNrDataPacketSummary");
  sub_100007ECC(v34, "cellularLteNrDataSdtIntervalSummary");
  sub_100007ECC(&v35, "cellularLteNrDataSdtFirstPacketSizeSummary");
  sub_10000E910(v2, v19, &v36);
  v10 = 17;
  do
  {
    if (SHIBYTE(v19[v10 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19[v10 - 1].__r_.__value_.__l.__data_);
    }

    --v10;
  }

  while (v10 * 24);
  sub_100007ECC(v19, "cellularLteRsrpRsrqSinrHist");
  sub_100007ECC(v20, "cellularLteTxRxLevelHist");
  sub_100007ECC(v21, "cellularNrRsrpRsrqSinrHist");
  sub_100007ECC(v22, "cellularNrTxRxLevelHist");
  sub_100007ECC(v23, "cellularNrLatencyTrackerHist");
  sub_100007ECC(v24, "cellularBwEstimate");
  sub_100007ECC(&v25, "cellularLteNrTxPowerStats");
  sub_10000E910(v4, v19, &v26);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v25.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  sub_1000133BC(v19, "kCellularLteRrcMsgSample", "cellularLteOtaMsg");
  sub_10000EA18(v21, "kCellularRffeScanStats", "kCellularRffeScanStats");
  sub_10001009C(v23, "kCellularPowerLogPowerEstimator", "cellularPowerLogBasebandPowerConsumption");
  sub_10000EA6C(v5, v19, &v25);
  for (j = 0; j != 0x1FFFFFFFFFFFFFEELL; j -= 6)
  {
    v13 = &v19[j / 3];
    if (SHIBYTE(v24[j + 2]) < 0)
    {
      operator delete(v13[5].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13[4].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13[4].__r_.__value_.__l.__data_);
    }
  }

  sub_1000100F0(v19, "kCellularWcdmaRrcStateHist", "cellularWcdmaRrcStateHist");
  sub_100013410(v21, "kCellularVoiceLastCallEnd", "cellularVoiceLastCallEnd");
  sub_10000ED5C(v23, "kCellularRfTunerEvent", "cellularRfTunerEvent");
  sub_10000ED5C(&v25, "kCellularRatRetention", "cellularRatRetention");
  sub_100013410(v27, "kCellularLteTxRxLevelHist", "cellularLteTxRxLevelHist");
  sub_10000EDB0(v29, "kCellularLteRsrpRsrqSinrHist", "cellularLteRsrpRsrqSinrHist");
  sub_10000EE04(v31, "kCellularLteRrcStateHist", "cellularLteRrcStateHist");
  sub_10000EE04(v33, "kCellularLteRrcConnCount", "cellularLteRrcConnCount");
  sub_100010144(&v35, "kCellularLteRachAttempt", "cellularLteRachAttempt");
  sub_10000EE04(v37, "kCellularLteHoToLteCount", "cellularLteHoToLteCount");
  sub_100010144(v39, "kCellularCallEndDetails", "cellularCallEndDetails");
  sub_10000EA6C(v7, v19, &v41);
  v14 = 22;
  do
  {
    v15 = &v19[v14];
    if (SHIBYTE(v19[v14 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15[-1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15[-2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15[-2].__r_.__value_.__l.__data_);
    }

    v14 -= 2;
  }

  while (v14 * 24);
  sub_10000EDB0(v19, "kCellularLteRsrpRsrqSinrHist", "cellularLteRsrpRsrqSinrHist");
  sub_10000EE04(v21, "kCellularLteRrcConnCount", "cellularLteRrcConnCount");
  sub_100010144(v23, "kCellularLteRachAttempt", "cellularLteRachAttempt");
  sub_100013410(&v25, "kCellularLteTxRxLevelHist", "cellularLteTxRxLevelHist");
  sub_10000ED5C(v27, "kCellularLteEdrxStats", "cellularLteEdrxStats");
  sub_10000EE58(v29, "kCellularLteEdrxConfig", "cellularLteEdrxConfig");
  sub_10000EE04(v31, "kCellularLteRrcStateHist", "cellularLteRrcStateHist");
  sub_10000EE04(v33, "kCellularLtePeakPowerLog", "cellularLtePeakPowerLog");
  sub_10000EA6C(v6, v19, &v35);
  v16 = 16;
  do
  {
    v17 = &v19[v16];
    if (SHIBYTE(v19[v16 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17[-1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17[-2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17[-2].__r_.__value_.__l.__data_);
    }

    v16 -= 2;
  }

  while (v16 * 24);
  return a1;
}

void sub_1000133B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void *sub_1000133BC(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_1000133F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100013410(void *a1, char *a2, char *a3)
{
  v5 = sub_100007ECC(a1, a2);
  sub_100007ECC(v5 + 3, a3);
  return a1;
}

void sub_100013448(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013464(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100013464(a1, *a2);
    sub_100013464(a1, a2[1]);
    sub_10000EEAC((a2 + 4));

    operator delete(a2);
  }
}

void sub_1000134C0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1000134C0(a1, *a2);
    sub_1000134C0(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

BOOL sub_100013524(uint64_t a1, const void **a2)
{
  RadioVendor = TelephonyRadiosGetRadioVendor();
  v5 = 48;
  if (RadioVendor != 3)
  {
    v5 = 0;
  }

  sub_10000EF74(&v8, (a1 + v5));
  v6 = &v9 != sub_10000F0D8(&v8, a2);
  sub_1000134C0(&v8, v9);
  return v6;
}

const void **sub_1000135B8(uint64_t **a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_10000FF8C(a1, a5, a2 + 4))
  {
    if (!sub_10000FF8C(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_10000FF8C(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_10000FF8C(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_10000FEF0(a1, a3, a5);
}

uint64_t sub_10001375C(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_10000E7F4(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_10000EF04((32 * v2), a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = 32 * v2 + *a1 - v8;
  sub_10000FB78(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10000FB40(&v14);
  return v13;
}

void sub_100013858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000FB40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001386C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10001375C(a1, a2);
  }

  else
  {
    sub_10000EF04(*(a1 + 8), a2);
    result = v3 + 32;
    *(a1 + 8) = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1000138C0(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_10009630C(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100010B78(a1, v11);
    }

    sub_100033FD0();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    sub_1000139DC(&v15, __str, a3, v8);
    sub_10000F1BC(a1, v13);
  }

  else
  {
    sub_1000139DC(&v14, __str, (__str + v12), v8);
    a1[1] = sub_100010BB4(a1, (__str + v12), a3, a1[1]);
  }
}

std::string *sub_1000139DC(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    do
    {
      std::string::operator=(this, v5);
      data = v5[1].__r_.__value_.__l.__data_;
      if (data)
      {
        xpc_retain(v5[1].__r_.__value_.__l.__data_);
      }

      else
      {
        data = xpc_null_create();
      }

      v8 = this[1].__r_.__value_.__l.__data_;
      this[1].__r_.__value_.__r.__words[0] = data;
      xpc_release(v8);
      v5 = (v5 + 32);
      this = (this + 32);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100013A6C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100023410();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

BOOL sub_100013AF8(size_t a1)
{
  v2 = 0;
  v3 = *(a1 + 23);
  v5 = *a1;
  v4 = *(a1 + 8);
  do
  {
    v6 = strlen(qword_1002D8470[v2]);
    v7 = v6;
    if ((v3 & 0x80) != 0)
    {
      if (v6 != v4)
      {
        goto LABEL_8;
      }

      v8 = v5;
      if (v4 == -1)
      {
        sub_1000C3798();
      }
    }

    else
    {
      v8 = a1;
      if (v7 != v3)
      {
        goto LABEL_8;
      }
    }

    if (!memcmp(v8, qword_1002D8470[v2], v7))
    {
      return 1;
    }

LABEL_8:
    ++v2;
  }

  while (v2 != 28);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (RadioVendor != 1)
  {
    if (RadioVendor != 3)
    {
      return 0;
    }

    v10 = &qword_1002D8550;
    v11 = *(a1 + 23);
    v12 = 56;
    v13 = &qword_1002D8588;
    v15 = *a1;
    v14 = *(a1 + 8);
    while (2)
    {
      v16 = strlen(*v10);
      v17 = v16;
      if ((v11 & 0x80) != 0)
      {
        if (v16 != v14)
        {
          goto LABEL_20;
        }

        v18 = v15;
        if (v14 == -1)
        {
          sub_1000C3798();
        }
      }

      else
      {
        v18 = a1;
        if (v17 != v11)
        {
          goto LABEL_20;
        }
      }

      if (!memcmp(v18, *v10, v17))
      {
        return v10 != v13;
      }

LABEL_20:
      ++v10;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_30;
      }

      continue;
    }
  }

  v10 = off_1002AF490;
  v19 = *(a1 + 23);
  v20 = 16;
  v22 = *a1;
  v21 = *(a1 + 8);
  while (2)
  {
    v23 = strlen(*v10);
    v24 = v23;
    if ((v19 & 0x80) != 0)
    {
      if (v23 != v21)
      {
        goto LABEL_29;
      }

      v25 = v22;
      if (v21 == -1)
      {
        sub_1000C3798();
      }
    }

    else
    {
      v25 = a1;
      if (v24 != v19)
      {
        goto LABEL_29;
      }
    }

    if (!memcmp(v25, *v10, v24))
    {
      return v10 != v13;
    }

LABEL_29:
    ++v10;
    v20 -= 8;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v10 = v13;
  return v10 != v13;
}

uint64_t *sub_100013CD0(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v3 = (v1 + 8);
  v2 = *v1;
  if (v2 + 12 != sub_10000F0D8(*v1 + 88, (v1 + 8)))
  {
    v4 = v2[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = v1 + 8;
      if (*(v1 + 31) < 0)
      {
        v5 = *v3;
      }

      xpc::object::to_string(v19, (v1 + 32));
      sub_1001FF210(v5, v19, buf, v4);
    }

    if (*(v1 + 31) < 0)
    {
      v7 = *(v1 + 16);
      if (v7 > 39)
      {
        if (v7 == 41)
        {
          v11 = *v3;
          v12 = "com.apple.Baseband.KCellularServiceStatus";
          v13 = 41;
        }

        else
        {
          if (v7 != 40)
          {
            goto LABEL_7;
          }

          v11 = *v3;
          v12 = "com.apple.Baseband.cellularServiceStatus";
          v13 = 40;
        }

        if (!memcmp(v11, v12, v13))
        {
          v15 = *(v1 + 32);
          object = v15;
          if (v15)
          {
            xpc_retain(v15);
          }

          else
          {
            object = xpc_null_create();
          }

          sub_100070FDC(v2, &object);
          xpc_release(object);
        }
      }

      else
      {
        if (v7 == 37)
        {
          v8 = *v3;
          v9 = "com.apple.Baseband.cellularRegAttempt";
          v10 = 37;
        }

        else
        {
          if (v7 != 38)
          {
            goto LABEL_7;
          }

          v8 = *v3;
          v9 = "com.apple.Baseband.kCellularRegAttempt";
          v10 = 38;
        }

        if (!memcmp(v8, v9, v10))
        {
          v14 = *(v1 + 32);
          object = v14;
          if (v14)
          {
            xpc_retain(v14);
          }

          else
          {
            object = xpc_null_create();
          }

          sub_1000720F8(v2, &object);
          xpc_release(object);
        }
      }
    }
  }

LABEL_7:
  sub_10001138C(&v17);
  return sub_1000082FC(&v16);
}

void sub_100013EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100013F08(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  if (*(v1 + 31) < 0 && *(v1 + 16) == 36)
  {
    v2 = *v1;
    v3 = *(v1 + 8);
    if (!memcmp(v3, "com.apple.Telephony.atm_CallEndEvent", 0x24uLL))
    {
      v4 = *(v2 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        xpc::object::to_string(v10, (v1 + 32));
        sub_1001FF210(v3, v10, buf, v4);
      }

      v5 = *(v1 + 32);
      object = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        object = xpc_null_create();
      }

      sub_10005608C(v2, &object);
      xpc_release(object);
    }
  }

  sub_1000113F4(&v8);
  return sub_1000082FC(&v7);
}

uint64_t sub_10001428C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_100014330(v4, v5, v6, v2, v3);
}

uint64_t sub_100014330(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = ((swift_isaMask & *a4) + 720) & 0xFFFFFFFFFFFFLL | 0x8714000000000000;
  v5[4] = *((swift_isaMask & *a4) + 0x2D0);
  v5[5] = v6;
  return _swift_task_switch(sub_100014384, a4, 0);
}

uint64_t sub_100014384()
{
  (*(v0 + 32))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000143E8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7A38, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Updating last location", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = *((swift_isaMask & *v2) + 0x210);
  v15 = a1;
  v16 = v14(a1);
  (*((swift_isaMask & *v2) + 0x2B0))(v16);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v19 = sub_1001BCC20(&qword_1002D7BF8, v18, type metadata accessor for ServicePredictionController, &unk_10024CD20);
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = v19;
  v20[4] = v2;
  v20[5] = a1;
  swift_retain_n();
  v21 = v15;
  sub_100176B80(0, 0, v6, &unk_10024C760, v20);
}

void sub_100014710(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  *(v1 + 224) = a1;
}

uint64_t sub_100014758()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v48 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  __chkstk_darwin(v48);
  v4 = (&v45 - v3);
  v5 = type metadata accessor for InternalServicePrediction(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v49 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7A38, v13);
  swift_retain_n();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45 = v11;
    v17 = v16;
    *v16 = 134218240;
    v18 = *((*((swift_isaMask & *v0) + 0x220))() + 16);

    *(v17 + 1) = v18;

    *(v17 + 6) = 2048;
    v20 = *((*((swift_isaMask & *v1) + 0x148))(v19) + 16);

    *(v17 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v14, v15, "Updating accuracies. Currently tracking %ld accuracies for %ld predictions", v17, 0x16u);
    v11 = v45;
  }

  else
  {
  }

  (v49)[1](v13, v11);
  v21 = *(v1 + 288);
  v22 = *(v1 + 296);
  sub_100014E1C((v1 + 264), v21);
  v23 = (*(v22 + 8))(v21, v22);
  v24 = [(*(v1 + 248))(v23) currentLocation];
  v25 = swift_unknownObjectRelease();
  v49 = v24;
  if (!v24)
  {
    v25 = (*((swift_isaMask & *v1) + 0x208))(v25);
    v49 = v25;
  }

  result = (*((swift_isaMask & *v1) + 0x148))(v25);
  v27 = result;
  v28 = *(result + 16);
  if (v28)
  {
    v29 = 0;
    while (v29 < *(v27 + 16))
    {
      sub_1001DC504(v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v8, type metadata accessor for InternalServicePrediction);
      sub_1001C9E8C(v8, v1);
      ++v29;
      result = sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
      if (v28 == v29)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v31 = swift_isaMask & *v1;
    v45 = v1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v32 = (*(v31 + 544))(v30);
    v33 = v32;
    v34 = v32 + 64;
    v35 = 1 << *(v32 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v32 + 64);
    v38 = (v35 + 63) >> 6;

    for (i = 0; v37; result = sub_1000157F0(v4, &qword_1002D7BE8, &qword_10024C750))
    {
      v40 = i;
LABEL_18:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v42 = v41 | (v40 << 6);
      sub_1001DC504(*(v33 + 48) + *(v6 + 72) * v42, v4, type metadata accessor for InternalServicePrediction);
      v43 = *(*(v33 + 56) + 8 * v42);
      *(v4 + *(v48 + 48)) = v43;

      sub_1001CA484(v4, v43, v50, v1, v49, ObjectType);
    }

    while (1)
    {
      v40 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v40 >= v38)
      {

        (*((swift_isaMask & *v1) + 0x2B8))(v44);

        return (*(v46 + 8))(v50, v47);
      }

      v37 = *(v34 + 8 * v40);
      ++i;
      if (v37)
      {
        i = v40;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100014E1C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_10001521C(uint64_t a1)
{
  sub_1001DFB78(319, &qword_1002D80F8, &type metadata for ServicePredictionAccuracyCounter.RemovalReason, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1001DFB78(319, qword_1002D8100, &type metadata for Int, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PrivateServicePrediction.ServicePredictionType();
        if (v4 <= 0x3F)
        {
          sub_1001DFB78(319, &unk_1002D7D10, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1001DFB78(319, &qword_1002D5C00, &type metadata for Double, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100015438()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1000154D8(v4, v5, v6, v2, v3);
}

uint64_t sub_1000154D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000154F8, a4, 0);
}

uint64_t sub_1000154F8()
{
  v1 = *(v0[2] + 144);
  v0[4] = v1;
  v2 = *v1 + 656;
  v0[5] = *v2;
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0xFF70000000000000;
  return _swift_task_switch(sub_100015548, v1, 0);
}

uint64_t sub_100015548()
{
  (*(v0 + 40))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000155AC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v7);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138739971;
    *(v11 + 4) = v8;
    *v12 = a1;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating last location to %{sensitive}@.", v11, 0xCu);
    sub_1000157F0(v12, &unk_1002D7190, &qword_10024B0F0);
  }

  (*(v5 + 8))(v7, v4);
  v14 = *(*v2 + 488);
  v15 = v8;
  return v14(a1);
}

uint64_t sub_1000157F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100164A3C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100015850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1000158DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [NSString stringWithUTF8String:CASendEventOptionKeyLogPayload];
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    v9 = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v7 = 0;
  }

  AnalyticsSendEventLazyWithOptions();
}

void sub_100015AB0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(*(a1 + 32) + 24) currentCalls];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 status] != 1)
        {

          goto LABEL_14;
        }

        v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 service]);
        [v2 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (([v10 isEqualToArray:v2] & 1) == 0)
  {
    v9 = *(a1 + 32);
LABEL_12:
    objc_storeStrong((v9 + 96), v2);
    [*(a1 + 32) handleActiveCallServicesChangedTo:v2];
  }

LABEL_14:
}

void sub_100015C84(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  memset(&__p, 0, sizeof(__p));
  if (v2 == v3)
  {
    goto LABEL_42;
  }

  v4 = v2[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *v2;
      if (*v2)
      {
        if (*(v6 + 23) < 0)
        {
          sub_10000FFF8(&__s, *v6, *(v6 + 1));
        }

        else
        {
          v7 = *v6;
          __s.__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&__s.__r_.__value_.__l.__data_ = v7;
        }

        v8 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  sub_100007ECC(&__s, "<expired>");
  v8 = 0;
  if (v5)
  {
LABEL_12:
    sub_100008350(v5);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __s;
  for (i = v2 + 2; i != v3; i += 2)
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    strcpy(&__s, ",");
    std::string::append(&__p, &__s, 1uLL);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v10 = i[1];
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = *i;
        if (*i)
        {
          ++v8;
          if (*(v12 + 23) < 0)
          {
            sub_10000FFF8(&__s, *v12, *(v12 + 1));
          }

          else
          {
            v13 = *v12;
            __s.__r_.__value_.__r.__words[2] = *(v12 + 2);
            *&__s.__r_.__value_.__l.__data_ = v13;
          }

LABEL_25:
          sub_100008350(v11);
          goto LABEL_26;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    sub_100007ECC(&__s, "<expired>");
    if (v11)
    {
      goto LABEL_25;
    }

LABEL_26:
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__p, p_s, size);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  if (v8)
  {
    v16 = a1[4];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_45;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__s.__r_.__value_.__l.__data_) = 134218242;
    *(__s.__r_.__value_.__r.__words + 4) = v8;
    WORD2(__s.__r_.__value_.__r.__words[1]) = 2082;
    *(&__s.__r_.__value_.__r.__words[1] + 6) = p_p;
    v18 = "life:#I %zd activities remaining: %{public}s";
    v19 = v16;
    v20 = 22;
    goto LABEL_44;
  }

LABEL_42:
  v21 = a1[4];
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    goto LABEL_45;
  }

  LOWORD(__s.__r_.__value_.__l.__data_) = 0;
  v18 = "life:#I No activities.";
  v19 = v21;
  v20 = 2;
LABEL_44:
  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v18, &__s, v20);
LABEL_45:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}