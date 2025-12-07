uint64_t sub_1001A964C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 radius];
        v35 = v34;
        [v33 radius];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 radius];
        v19 = v18;
        [v17 radius];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1001A990C(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 regionSizeCategory];
          v35 = [v33 regionSizeCategory];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 regionSizeCategory];
          v20 = [v18 regionSizeCategory];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

void sub_1001A9BF0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:

      if (a2(v10))
      {
        break;
      }

      v6 &= v6 - 1;

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

id sub_1001A9D08()
{
  if (qword_100338EC0 != -1)
  {
    swift_once();
  }

  v10 = sub_100014B08(v0);
  sub_100014A74(&v10, sub_1001A8FE4, sub_100014CF8);

  v10 = sub_100014B08(v1);
  sub_100014A74(&v10, sub_1001A896C, sub_100014DF0);

  v2 = objc_allocWithZone(NIHomeDeviceConfiguration);
  sub_100003118(0, &qword_10033E980, NIRegionPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithRegions:isa];

  [v4 setAllowedDevices:6];
  if (qword_100339138 != -1)
  {
    swift_once();
  }

  [v4 setAnchor:byte_10038B440];
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034A190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Including copresence in configuration", v8, 2u);
  }

  [v4 setEnabledGestures:3];
  return v4;
}

BOOL sub_1001A9F9C(unsigned __int8 a1)
{
  v1 = a1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = v1 - 5;
  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034A190);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    v8 = 0xE700000000000000;
    *v6 = 136315394;
    v9 = 0x6E776F6E6B6E75;
    v10 = 0x4F64657265776F70;
    v11 = 0xE90000000000006ELL;
    if (v1 != 5)
    {
      v10 = 0x7463697274736572;
      v11 = 0xEA00000000006465;
    }

    v12 = 0xEC00000064657A69;
    v13 = 0x726F687475616E75;
    if (v1 != 3)
    {
      v13 = 0x4F64657265776F70;
      v12 = 0xEA00000000006666;
    }

    if (v1 <= 4)
    {
      v10 = v13;
      v11 = v12;
    }

    v14 = 0x6E69747465736572;
    v15 = 0xE900000000000067;
    if (v1 != 1)
    {
      v14 = 0x726F707075736E75;
      v15 = 0xEB00000000646574;
    }

    if (v1)
    {
      v9 = v14;
      v8 = v15;
    }

    if (v1 <= 2)
    {
      v16 = v9;
    }

    else
    {
      v16 = v10;
    }

    if (v1 <= 2)
    {
      v17 = v8;
    }

    else
    {
      v17 = v11;
    }

    v18 = sub_100017494(v16, v17, &v20);

    *(v6 + 4) = v18;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2 < 2;
    _os_log_impl(&_mh_execute_header, v4, v5, "BT State %s isActive=%{BOOL}d", v6, 0x12u);
    sub_10000903C(v7);
  }

  return v2 < 2;
}

uint64_t sub_1001AA1F4(uint64_t a1)
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

LABEL_11:
    v15 = [v1 code];
    if (v15 == -10017)
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003078(v20, qword_10034A190);
      v10 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v10, v17))
      {
        goto LABEL_23;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Bluetooth unavailable, don't restart session";
    }

    else
    {
      if (v15 != -5889)
      {
        if (qword_100339128 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_100003078(v22, qword_10034A190);
        swift_errorRetain();
        v10 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v10, v23))
        {
          v21 = 1;
          goto LABEL_29;
        }

        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v10, v23, "Restarting for NIError / NIInternalError %@", v24, 0xCu);
        sub_1000030B0(v25);

        v21 = 1;
        goto LABEL_28;
      }

      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100003078(v16, qword_10034A190);
      v10 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v10, v17))
      {
        goto LABEL_23;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "### Unsupported platform error, don't restart session";
    }

    _os_log_impl(&_mh_execute_header, v10, v17, v19, v18, 2u);
    goto LABEL_22;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_11;
  }

  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_10034A190);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "### Unrecognized error, not restarting: %@", v12, 0xCu);
    sub_1000030B0(v13);

LABEL_22:
    v21 = 0;
LABEL_28:

    goto LABEL_29;
  }

LABEL_23:
  v21 = 0;
LABEL_29:

  return v21;
}

void sub_1001AA628(void *a1)
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000017, 0x80000001002A3B70, &v28);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: nearbyObject=%@", v6, 0x16u);
    sub_1000030B0(v7);

    sub_10000903C(v8);
  }

  v10 = sub_1001A6BE8(v3);
  if (v10)
  {
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136315138;
      v17 = sub_1000092A0(v15, v16);
      v19 = sub_100017494(v17, v18, &v28);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "FOUND %s", v14, 0xCu);
      sub_10000903C(v15);
    }

    sub_10015BE48(v11);
  }

  else
  {
    v20 = v3;
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = sub_10017BC10();
      v26 = sub_100017494(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, oslog, v21, "### Discovered unknown nearby object %s", v22, 0xCu);
      sub_10000903C(v23);
    }
  }
}

double sub_1001AA9C8(uint64_t a1)
{
  v2 = v1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034A190);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Session INVALIDATED: %@", v7, 0xCu);
    sub_1000030B0(v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v2;
  static Published.subscript.setter();
  if (qword_100339160 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectWeakAssign();

  *&v10[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = 0;
  *(*&v10[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) = 0;

  sub_10000C49C();
  CurrentValueSubject.send(_:)();

  sub_1000143FC();
  sub_10000CF60();
  v11 = sub_1001AA1F4(a1);
  v13 = *&v10[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier];
  if (v11)
  {
    if (!v13)
    {
      return result;
    }

    sub_100193598();
  }

  else
  {
    if (!v13)
    {
      return result;
    }

    sub_10001462C();
  }

  return result;
}

uint64_t sub_1001AAC90(unint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = v7;
      sub_1001A7B4C(&v11, v12, a2, v2);

      if (v9 == i)
      {
        return swift_unknownObjectWeakDestroy();
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return swift_unknownObjectWeakDestroy();
}

double sub_1001AAD98()
{
  v1 = v0;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Session did start running", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier))
  {

    sub_100194300();
  }

  return result;
}

uint64_t sub_1001AAEB4(unint64_t a1)
{
  swift_unknownObjectWeakInit();
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v4;
      sub_1001A8030(&v8, v9);

      if (v6 == i)
      {
        return swift_unknownObjectWeakDestroy();
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_1001AAFB4(char a1)
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A3B30, &v9);
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: uwbRangingAvailable=%{BOOL}d", v5, 0x12u);
    sub_10000903C(v6);
  }

  if (qword_100339130 != -1)
  {
    swift_once();
  }

  v7 = off_10034A1A8;
  *(off_10034A1A8 + 24) = a1 & 1;

  sub_10005E50C();
  LOBYTE(v9) = v7[24];
  CurrentValueSubject.send(_:)();

  v9 = a1 & 1;
  v10 = 2;
  return PassthroughSubject.send(_:)();
}

double sub_1001AB1A4(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for OSSignpostID();
  isa = v6[-1].isa;
  v8 = __chkstk_darwin(v6);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v86 - v11;
  v13 = sub_1001A6BE8(a1);
  if (v13)
  {
    v14 = v13;
    if ([a1 distanceMeasurementQuality] == 1)
    {
      v86 = isa;
      v87 = v6;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v17 = sub_1000092A0(v15, v16);
      v19 = v18;

      v88._countAndFlagsBits = v17;
      v88._object = v19;
      v20._countAndFlagsBits = 0x204E4F4947455220;
      v20._object = 0xEF20455441445055;
      String.append(_:)(v20);
      v21._countAndFlagsBits = sub_10017BC10();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v89 = v88;
      if (a3)
      {
        v88._countAndFlagsBits = 0x3D76657270;
        v88._object = 0xE500000000000000;
        v23 = a3;
        v24 = [v23 name];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28._countAndFlagsBits = v25;
        v28._object = v27;
        String.append(_:)(v28);

        v29._countAndFlagsBits = 32;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        String.append(_:)(v88);
      }

      if (a2)
      {
        v88._countAndFlagsBits = 0x3D72727563;
        v88._object = 0xE500000000000000;
        v30 = a2;
        v31 = [v30 name];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35._countAndFlagsBits = v32;
        v35._object = v34;
        String.append(_:)(v35);

        v36._countAndFlagsBits = 32;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
        String.append(_:)(v88);
      }

      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100003078(v37, qword_10034A190);
      countAndFlagsBits = v89._countAndFlagsBits;
      object = v89._object;

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v88._countAndFlagsBits = v43;
        *v42 = 136315138;
        v44 = sub_100017494(countAndFlagsBits, object, &v88._countAndFlagsBits);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "%s", v42, 0xCu);
        sub_10000903C(v43);
      }

      else
      {
      }

      v77 = mach_continuous_time();
      v78 = v14 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionTimestamp;
      *v78 = v77;
      *(v78 + 8) = 0;
      if (a2)
      {
        v79 = sub_1000A09A8();
      }

      else
      {
        v79 = 5;
      }

      sub_10000D4C4(v79);

      if (qword_100339268 != -1)
      {
        swift_once();
      }

      if (*(qword_10038B5D8 + 32) != 1)
      {
        v80 = *(qword_10038B5D8 + 24);
        v81 = v14 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionResolutionSignpostPostedInstant;
        if ((*(v14 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionResolutionSignpostPostedInstant + 8) & 1) != 0 || *v81 != v80)
        {
          static OSSignpostID.exclusive.getter();
          static os_signpost_type_t.event.getter();
          if (qword_100338F20 != -1)
          {
            swift_once();
          }

          sub_100035D04(&unk_10034A310, &qword_100272780);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_1002725A0;
          *(v82 + 56) = &type metadata for String;
          v83 = sub_1000595D4();
          *(v82 + 32) = 0xD00000000000002DLL;
          *(v82 + 40) = 0x80000001002A3B00;
          *(v82 + 96) = &type metadata for UInt64;
          *(v82 + 104) = &protocol witness table for UInt64;
          *(v82 + 64) = v83;
          *(v82 + 72) = v80;
          static OSSignpostID.exclusive.getter();
          os_signpost(_:dso:log:name:signpostID:_:_:)();

          v84 = v87;
          v85 = *(v86 + 1);
          v85(v10, v87);
          v85(v12, v84);
          *v81 = v80;
          *(v81 + 8) = 0;
        }
      }
    }

    else
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_100003078(v69, qword_10034A190);
      v70 = a1;
      v87 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v87, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412290;
        *(v72 + 4) = v70;
        *v73 = v70;
        v74 = v70;
        _os_log_impl(&_mh_execute_header, v87, v71, "Ignoring region transition from %@", v72, 0xCu);
        sub_1000030B0(v73);
      }

      v75 = v87;
    }
  }

  else
  {
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v89._countAndFlagsBits = 0xD00000000000002BLL;
    v89._object = 0x80000001002A3AD0;
    v45._countAndFlagsBits = sub_10017BC10();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 8238;
    v46._object = 0xE200000000000000;
    String.append(_:)(v46);
    if (a3)
    {
      v88._countAndFlagsBits = 0x3D76657270;
      v88._object = 0xE500000000000000;
      v47 = a3;
      v48 = [v47 name];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52._countAndFlagsBits = v49;
      v52._object = v51;
      String.append(_:)(v52);

      v53._countAndFlagsBits = 32;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      String.append(_:)(v88);
    }

    if (a2)
    {
      v88._countAndFlagsBits = 0x3D72727563;
      v88._object = 0xE500000000000000;
      v54 = a2;
      v55 = [v54 name];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);

      v60._countAndFlagsBits = 32;
      v60._object = 0xE100000000000000;
      String.append(_:)(v60);
      String.append(_:)(v88);
    }

    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100003078(v61, qword_10034A190);
    v63 = v89._countAndFlagsBits;
    v62 = v89._object;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v88._countAndFlagsBits = v67;
      *v66 = 136315138;
      v68 = sub_100017494(v63, v62, &v88._countAndFlagsBits);

      *(v66 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v64, v65, "%s", v66, 0xCu);
      sub_10000903C(v67);
    }

    else
    {
    }
  }

  return result;
}

void sub_1001ABB7C()
{
  if (qword_100339130 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v0 = off_10034A1A8;
    *(off_10034A1A8 + 24) = 1;

    sub_10005E50C();
    LOBYTE(v21[0]) = v0[24];
    CurrentValueSubject.send(_:)();

    if (!sub_1000036FC())
    {
      break;
    }

    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_10034A190);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Session no longer suspended, restarting now", v4, 2u);
    }

    sub_10000B620();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v10 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16);
    v11 = Strong;

    __chkstk_darwin(v12);
    type metadata accessor for HandoffDevice(0);
    type metadata accessor for UUID();
    sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getKeyPath();
    v13 = v10 + qword_100346AF8;
    os_unfair_lock_lock((v10 + qword_100346AF8));
    v21[0] = *(v13 + 8);

    swift_getAtKeyPath();

    v14 = v21[5];
    os_unfair_lock_unlock(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = sub_100009194(*(v14 + 16), 0);
      v17 = sub_100009A04(v21, (v16 + 32), v15, v14);
      sub_100004F98(v21[0]);
      if (v17 != v15)
      {
        __break(1u);
        return;
      }

      if (v16 < 0)
      {
LABEL_33:
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (!v18)
        {
LABEL_34:

          return;
        }

        goto LABEL_22;
      }
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }
    }

    if ((v16 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    v18 = *(v16 + 16);
    if (!v18)
    {
      goto LABEL_34;
    }

LABEL_22:
    v19 = 0;
    while ((v16 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_30;
      }

LABEL_26:
      sub_1000737D0();

      ++v19;
      if (v20 == v18)
      {
        goto LABEL_34;
      }
    }

    if (v19 >= *(v16 + 16))
    {
      goto LABEL_31;
    }

    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034A190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Shouldn't start ranging when session suspension ended", v8, 2u);
  }
}

unint64_t sub_1001AC0D8()
{
  result = qword_10034A410;
  if (!qword_10034A410)
  {
    sub_100035D4C(&qword_10034A3F8, &qword_100287680);
    sub_1001AC18C(&qword_10034A418, type metadata accessor for NIMotionActivityState, &unk_10027011C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A410);
  }

  return result;
}

uint64_t sub_1001AC18C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001AC1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AC240@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_1001BFD60(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result & 1;
  return result;
}

void *sub_1001AC36C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (result)
  {
    v5 = result;
    v6 = a4();
    v7 = sub_10000F0CC();
    v8 = sub_1000089FC(v7, v6);

    v9 = *(v8 + 16);

    return (v9 != 0);
  }

  return result;
}

void sub_1001AC490(void (*a1)(void **))
{
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0x6C4165766F6D6572, 0xEB0000000029286CLL, &v19);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v8 = v3 + qword_100346AF8;
  os_unfair_lock_lock((v3 + qword_100346AF8));
  v9 = *(v8 + 8);
  *(v8 + 8) = _swiftEmptyDictionarySingleton;
  os_unfair_lock_unlock(v8);
  if (*(v9 + 16))
  {
    v10 = 0;
    v11 = *(v9 + 64);
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = (v12 + 63) >> 6;
    v15 = v13 & v11;
    if ((v13 & v11) != 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v19 = _swiftEmptyArrayStorage;

        PassthroughSubject.send(_:)();

        return;
      }

      v15 = *(v9 + 64 + 8 * v16);
      ++v10;
      if (v15)
      {
        v10 = v16;
        do
        {
LABEL_16:
          v17 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v19 = *(*(v9 + 56) + ((v10 << 9) | (8 * v17)));
          v18 = v19;
          a1(&v19);

          PassthroughSubject.send(_:)();
        }

        while (v15);
      }
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_1001AC70C(void (*a1)(void **))
{
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0x6C4165766F6D6572, 0xEB0000000029286CLL, &v18);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v8 = v3 + qword_100346AF8;
  os_unfair_lock_lock((v3 + qword_100346AF8));
  v9 = *(v8 + 8);
  *(v8 + 8) = _swiftEmptyDictionarySingleton;
  os_unfair_lock_unlock(v8);
  if (*(v9 + 16))
  {
    v10 = 0;
    v11 = *(v9 + 64);
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = (v12 + 63) >> 6;
    v15 = v13 & v11;
    if ((v13 & v11) != 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v18 = _swiftEmptyArrayStorage;

        PassthroughSubject.send(_:)();

        return;
      }

      v15 = *(v9 + 64 + 8 * v16);
      ++v10;
      if (v15)
      {
        v10 = v16;
        do
        {
LABEL_16:
          v17 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v18 = *(*(v9 + 56) + ((v10 << 9) | (8 * v17)));

          a1(&v18);

          PassthroughSubject.send(_:)();
        }

        while (v15);
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1001AC98C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034A530);
  sub_100003078(v0, qword_10034A530);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001ACA34()
{
  v1 = [*(*v0 + 32) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1001ACA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1001E0C7C(a1, a2, a3, WitnessTable);
}

Swift::Int sub_1001ACAFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001ACB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1001F71AC(a1, a2, WitnessTable);
}

Swift::Int sub_1001ACBA4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  sub_1001F71AC(v5, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t sub_1001ACC2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

double sub_1001ACC80()
{
  v1 = v0;
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A530);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0x6F54796669746F6ELL, 0xEB000000006E656BLL, &v8);
    *(v5 + 12) = 1024;
    swift_beginAccess();
    *(v5 + 14) = *(v1 + 32);

    _os_log_impl(&_mh_execute_header, v3, v4, "%s: %d", v5, 0x12u);
    sub_10000903C(v6);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1001AD11C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  *(v1 + 32) = -1;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v4 = qword_10038B5B8;
  *(v1 + 40) = qword_10038B5B8;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  v5 = qword_100339148;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034A530);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Init", v10, 2u);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1001AD260()
{
  v1 = v0;
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A530);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10002689C(*(v1 + 48), *(v1 + 56));
  sub_10002689C(*(v1 + 64), *(v1 + 72));
  return v1;
}

uint64_t sub_1001AD368()
{
  sub_1001AD260();

  return swift_deallocClassInstance();
}

void sub_1001AD39C()
{
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034A530);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "RPClient invalidated", v2, 2u);
  }
}

double sub_1001AD484(uint64_t a1, uint64_t a2)
{
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A530);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RPNotificationIdentitiesChanged fired", v5, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001AD92C();
  }

  return result;
}

void sub_1001AD5FC()
{
  v1 = v0;
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A530);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v0 + 24);
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v0 + 32);
    v9 = v7;
    notify_cancel(v8);
    *(v1 + 32) = -1;
    sub_1001ACC80();
    *(*(*(v1 + 16) + 16) + 24) = 0;

    sub_10005E50C();
    CurrentValueSubject.send(_:)();

    sub_1001AC70C(sub_10004BB70);

    [v9 invalidate];
    v10 = *(v1 + 24);
    *(v1 + 24) = 0;

    v11 = *(v1 + 48);
    if (v11)
    {
      v12 = *(v1 + 56);

      v11(v13);
      sub_10002689C(v11, v12);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "Already invalidated.", v15, 2u);
    }
  }
}

void sub_1001AD92C()
{
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034A530);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    aBlock[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0xD000000000000018, 0x80000001002A3D80, aBlock);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = *(v0 + 24);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001AE1F4;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001AE160;
    aBlock[3] = &unk_10030F8D0;
    v8 = _Block_copy(aBlock);
    v9 = v6;

    [v9 getIdentitiesWithFlags:939 completion:v8];
    _Block_release(v8);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "### No rpClient?", v11, 2u);
    }
  }
}

uint64_t sub_1001ADBCC(uint64_t a1)
{
  result = sub_1001ADC8C(&qword_10034A820, type metadata accessor for RPIdentitySourceState, &unk_1002877D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001ADC8C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001ADCF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  *(a1 + 8) = sub_1001ADC8C(a4, type metadata accessor for RPIdentityWrapper, a5);
  result = sub_1001ADC8C(&qword_1003468F0, type metadata accessor for RPIdentityWrapper, &unk_100287884);
  *(a1 + 16) = result;
  return result;
}

double sub_1001ADD60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a2)
    {
      if (qword_100339148 != -1)
      {
LABEL_32:
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100003078(v8, qword_10034A530);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v35 = v12;
        *v11 = 136315138;
        swift_getErrorValue();
        v13 = Error.localizedDescription.getter();
        v15 = sub_100017494(v13, v14, &v35);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "### Identification failed to get identities: %s", v11, 0xCu);
        sub_10000903C(v12);
      }
    }

    else
    {
      if (a1)
      {
        v16 = a1;
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
      }

      v35 = _swiftEmptyArrayStorage;
      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        v18 = 0;
        v19 = _swiftEmptyArrayStorage;
        do
        {
          v20 = v18;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v21 = *(v16 + 8 * v20 + 32);
            }

            v22 = v21;
            v18 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v23 = [v21 identifier];
            if (v23)
            {
              break;
            }

            ++v20;
            if (v18 == v17)
            {
              goto LABEL_28;
            }
          }

          v34 = v7;
          v24 = v23;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          type metadata accessor for RPIdentityWrapper();
          v27 = swift_allocObject();
          v27[2] = v33;
          v27[3] = v26;
          v27[4] = v22;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v19 = v35;
          v7 = v34;
        }

        while (v18 != v17);
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

LABEL_28:

      v28 = *(*(v7 + 16) + 24) + qword_100346AF8;

      os_unfair_lock_lock(v28);
      v29 = *(v28 + 8);

      v31 = sub_1001C2EA8(v30, v19);

      *(v28 + 8) = v31;

      os_unfair_lock_unlock(v28);

      sub_1001C38E4(v29, v31);

      v32 = *(*(v7 + 16) + 16);
      *(v32 + 24) = 1;

      sub_10005E50C();
      LOBYTE(v35) = *(v32 + 24);
      CurrentValueSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_1001AE160(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1001AE1FC();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_1001AE1FC()
{
  result = qword_10033FA30;
  if (!qword_10033FA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033FA30);
  }

  return result;
}

void sub_1001AE248(uint64_t a1, uint64_t a2)
{
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034A530);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0xD000000000000015, 0x80000001002A2010, &v18);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  if (*(a1 + 24))
  {
    sub_10001618C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 1;
    v10 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v10);
  }

  else
  {
    v11 = [objc_allocWithZone(RPClient) init];
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v12 = qword_10038B5B8;
    [v11 setDispatchQueue:qword_10038B5B8];
    v22 = sub_1001AD39C;
    v23 = 0;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100018AB8;
    v21 = &unk_10030F8F8;
    v13 = _Block_copy(&v18);
    [v11 setInvalidationHandler:v13];
    _Block_release(v13);
    v14 = *(a1 + 24);
    *(a1 + 24) = v11;
    v15 = v11;

    v16 = swift_allocObject();
    swift_weakInit();
    v22 = sub_1001AE608;
    v23 = v16;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1002386BC;
    v21 = &unk_10030F920;
    v17 = _Block_copy(&v18);

    swift_beginAccess();
    notify_register_dispatch("com.apple.rapport.identitiesChanged", (a1 + 32), v12, v17);
    swift_endAccess();
    _Block_release(v17);
    sub_1001ACC80();
    sub_1001AD92C();
    (*(a2 + 16))(a2, 0);
  }
}

unint64_t sub_1001AE638(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  result = type metadata accessor for Array();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Array();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = sub_100043FCC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001AE760(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1001AE8B0(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1001AEAF8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001AEB48()
{
  result = qword_10034A970;
  if (!qword_10034A970)
  {
    sub_100035D4C(&qword_10034A978, qword_100287A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A970);
  }

  return result;
}

unint64_t sub_1001AEBC0()
{
  result = qword_10034A980;
  if (!qword_10034A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A980);
  }

  return result;
}

void sub_1001AEC20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x646F50656D6F48;
  v5 = 0xE200000000000000;
  v6 = 30324;
  if (v2 != 5)
  {
    v6 = 0x6863746177;
    v5 = 0xE500000000000000;
  }

  v7 = 1685016681;
  v8 = 0xE400000000000000;
  if (v2 != 3)
  {
    v7 = 6513005;
    v8 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x656E6F685069;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

Swift::Int sub_1001AECFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100287B58[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001AED84(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100287B58[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1001AEDD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001AEE14(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001AEE14(uint64_t result)
{
  if (result <= 6)
  {
    if (result <= 1)
    {
      if (result < 2)
      {
        return result;
      }
    }

    else if (result == 2 || result == 3 || result == 4)
    {
      return result;
    }

    return 11;
  }

  if (result > 16)
  {
    switch(result)
    {
      case 17:
        return 8;
      case 18:
        return 9;
      case 33:
        return 10;
      default:
        return 11;
    }
  }

  else
  {
    switch(result)
    {
      case 7:
        return 5;
      case 8:
        return 6;
      case 9:
        return 7;
      default:
        return 11;
    }
  }
}

unint64_t sub_1001AEEBC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 11;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_72;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
LABEL_62:
        v29 = v3;
        v24 = v3;

        if ((v24 & 1) == 0)
        {
          goto LABEL_63;
        }

        return 11;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v6 = sub_100164584(result, a2, 10);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_63:
    result = sub_1001AEE14(v6);
    if (result != 11)
    {
      return result;
    }
  }

  return 11;
}

unint64_t sub_1001AF1E0()
{
  result = qword_10034A988;
  if (!qword_10034A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A988);
  }

  return result;
}

uint64_t sub_1001AF234()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12TrackedToken_deviceID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackedToken(uint64_t a1)
{
  result = qword_10034A9B8;
  if (!qword_10034A9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AF334(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

unint64_t sub_1001AF3D0()
{
  _StringGuts.grow(_:)(28);

  v1 = UUID.uuidString.getter();
  sub_10000B584(8, v1, v2);

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3D6E6B7420;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8 = [*(v0 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token) description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0xD000000000000012;
}

uint64_t sub_1001AF558(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001AF574(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001AF590(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AF5B8(uint64_t a1)
{
  if ((*(a1 + 56) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1001AF5D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_1001AF61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001AF670(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t type metadata accessor for NoticeEffect(uint64_t a1)
{
  result = qword_10034AAB8;
  if (!qword_10034AAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001AF6F4(uint64_t a1)
{
  sub_1001AF77C();
  if (v1 <= 0x3F)
  {
    sub_1001AF7C4();
    if (v2 <= 0x3F)
    {
      sub_1001AF814();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1001AF77C()
{
  if (!qword_10034AAC8)
  {
    v0 = type metadata accessor for NoticeContext(0);
    if (!v1)
    {
      atomic_store(v0, &qword_10034AAC8);
    }
  }
}

void sub_1001AF7C4()
{
  if (!qword_10034AAD0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10034AAD0);
    }
  }
}

void *sub_1001AF814()
{
  result = qword_10034AAD8;
  if (!qword_10034AAD8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10034AAD8);
  }

  return result;
}

unint64_t sub_1001AF844()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_1003492A0, &qword_1002836F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  v8 = type metadata accessor for NoticeContext(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = type metadata accessor for NoticeEffect(0);
  __chkstk_darwin(v18);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001B36CC(v1, v20, type metadata accessor for NoticeEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001B37A4(v20, type metadata accessor for NoticeEffect);
      return 0x7373696D736964;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v26 = *v20;
    v25 = v20[1];
    v27 = v20[2];
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v42 = 0xD000000000000010;
    v43 = 0x80000001002A3E70;
    if (v27 == 1)
    {
      v28 = 7104878;
      v29 = 0xE300000000000000;
    }

    else
    {
      v39 = v26;
      LOBYTE(v40) = v25 & 1;
      v41 = v27;

      v34 = v26;
      v28 = String.init<A>(describing:)();
      v29 = v35;
    }

    v36 = v29;
    String.append(_:)(*&v28);

    v37._countAndFlagsBits = 41;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    sub_100077374(v26, v25, v27);
    return v42;
  }

  else
  {
    sub_1001B3668(v20, v17);
    v39 = 0x28746E6573657270;
    v40 = 0xE800000000000000;
    sub_1001B36CC(v17, v7, type metadata accessor for NoticeContext);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_1001B3734(v7, v5);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      v22 = 7104878;
      v23 = 0xE300000000000000;
    }

    else
    {
      sub_1001B3668(v5, v15);
      sub_1001B36CC(v15, v12, type metadata accessor for NoticeContext);
      v22 = String.init<A>(describing:)();
      v23 = v30;
      sub_1001B37A4(v15, type metadata accessor for NoticeContext);
    }

    sub_1000097E8(v7, &qword_1003492A0, &qword_1002836F0);
    v31._countAndFlagsBits = v22;
    v31._object = v23;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33 = v39;
    sub_1001B37A4(v17, type metadata accessor for NoticeContext);
    return v33;
  }
}

unint64_t sub_1001AFCB8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 56) > 1u)
  {
    if (*(v0 + 56) == 2)
    {
      _StringGuts.grow(_:)(17);
      v16 = 0;
      v17 = 0xE000000000000000;
      v6._countAndFlagsBits = 0x46746E6573657270;
      v6._object = 0xEE002864656C6961;
      String.append(_:)(v6);
      v12[0] = v2;
      v12[1] = v1;
      v13 = v3;
      v14 = *(v0 + 17);
      *v15 = *(v0 + 33);
      *&v15[15] = *(v0 + 48);
      _print_unlocked<A, B>(_:_:)();
      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
      return 0;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    if (*(v0 + 56))
    {
      strcpy(v12, "buttonTapped(");
      HIWORD(v12[1]) = -4864;
      if (v1 >> 60 == 15)
      {
        v9 = 7104878;
      }

      else
      {
        v9 = 1701670771;
      }

      if (v1 >> 60 == 15)
      {
        v10 = 0xE300000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      v11 = v10;
      String.append(_:)(*&v9);
    }

    else
    {
      strcpy(v12, "bannerEvent(");
      BYTE5(v12[1]) = 0;
      HIWORD(v12[1]) = -5120;
      v4._countAndFlagsBits = sub_1001B0878(v2, v1, v3);
      String.append(_:)(v4);

      v5._countAndFlagsBits = 41;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);
    }

    return v12[0];
  }
}

uint64_t sub_1001AFE88(void *a1)
{
  v2 = v1;
  v33 = sub_100035D04(&qword_10034AB60, &qword_100287EE0);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = &v26 - v4;
  v34 = sub_100035D04(&qword_10034AB68, &qword_100287EE8);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = &v26 - v5;
  v6 = sub_100035D04(&qword_10034AB70, &qword_100287EF0);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_100035D04(&qword_10034AB78, &qword_100287EF8);
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100035D04(&qword_10034AB80, &unk_100287F00);
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_10000EBC0(a1, a1[3]);
  sub_1001B341C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v2;
  v15 = v2[1];
  v17 = *(v2 + 16);
  if (*(v2 + 56) > 1u)
  {
    if (*(v2 + 56) == 2)
    {
      LOBYTE(v37) = 2;
      sub_1001B34C4();
      v19 = v30;
      v20 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v16;
      v38 = v15;
      v39 = v17;
      v40 = *(v2 + 17);
      *v41 = *(v2 + 33);
      *&v41[15] = v2[6];
      sub_10010B950();
      v21 = v34;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v32 + 8))(v19, v21);
      return (*(v35 + 8))(v14, v20);
    }

    else
    {
      LOBYTE(v37) = 3;
      sub_1001B3470();
      v24 = v29;
      v25 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v31 + 8))(v24, v33);
      return (*(v35 + 8))(v14, v25);
    }
  }

  else
  {
    if (*(v2 + 56))
    {
      LOBYTE(v37) = 1;
      sub_1001B3518();
      v18 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v16;
      v38 = v15;
      sub_100165FDC();
      v23 = v28;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      (*(v27 + 8))(v8, v23);
    }

    else
    {
      LOBYTE(v37) = 0;
      sub_1001B356C();
      v18 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v16;
      v38 = v15;
      v39 = v17;
      sub_1001B3614();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v26 + 8))(v11, v9);
    }

    return (*(v35 + 8))(v14, v18);
  }
}

uint64_t sub_1001B03EC(uint64_t a1)
{
  v2 = sub_1001B356C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0428(uint64_t a1)
{
  v2 = sub_1001B356C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B0484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x634172656461656CLL && a2 == 0xEC0000006E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001B0510(uint64_t a1)
{
  v2 = sub_1001B3518();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B054C(uint64_t a1)
{
  v2 = sub_1001B3518();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001B0588()
{
  v1 = 0x764572656E6E6162;
  v2 = 0x46746E6573657270;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x61546E6F74747562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001B0624@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001B2A20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001B064C(uint64_t a1)
{
  v2 = sub_1001B341C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0688(uint64_t a1)
{
  v2 = sub_1001B341C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B06C4(uint64_t a1)
{
  v2 = sub_1001B34C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0700(uint64_t a1)
{
  v2 = sub_1001B34C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B073C(uint64_t a1)
{
  v2 = sub_1001B3470();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0778(uint64_t a1)
{
  v2 = sub_1001B3470();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001B07B4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001B2B9C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_1001B081C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1001B20A8(v5, v7);
}

uint64_t sub_1001B0878(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      _StringGuts.grow(_:)(17);

      v5 = 0x617369446C6C6977;
    }

    else
    {
      _StringGuts.grow(_:)(17);

      v5 = 0x41746F4E6C6C6977;
    }

    goto LABEL_7;
  }

  if (a3 == 2)
  {
    _StringGuts.grow(_:)(16);

    v5 = 0x7061736944646964;
LABEL_7:
    v13 = v5;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 41;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    return v13;
  }

  v9 = 0x676E6964616F6CLL;
  if (a1 ^ 4 | a2)
  {
    v10 = 0x736E617254646964;
  }

  else
  {
    v10 = 0x6E6172546C6C6977;
  }

  if (a1 ^ 3 | a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6165707041646964;
  }

  if (a1 ^ 1 | a2)
  {
    v12 = 0x657070416C6C6977;
  }

  else
  {
    v12 = 0x64616F4C646964;
  }

  if (a1 | a2)
  {
    v9 = v12;
  }

  if (a1 <= 2)
  {
    return v9;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_1001B0A9C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x676E6964616F6CLL;
    v6 = 0x41746F4E6C6C6977;
    if (a1 != 2)
    {
      v6 = 0x657070416C6C6977;
    }

    if (a1)
    {
      v5 = 0x64616F4C646964;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736E617254646964;
    v2 = 0x617369446C6C6977;
    if (a1 != 7)
    {
      v2 = 0x7061736944646964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6165707041646964;
    if (a1 != 4)
    {
      v3 = 0x6E6172546C6C6977;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1001B0BF8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v66 = a4;
  *&v67 = a2;
  *(&v67 + 1) = a3;
  v5 = sub_100035D04(&qword_10034ACA8, &qword_100288608);
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v61 = &v42 - v6;
  v7 = sub_100035D04(&qword_10034ACB0, &qword_100288610);
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = &v42 - v8;
  v9 = sub_100035D04(&qword_10034ACB8, &qword_100288618);
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v54 = &v42 - v10;
  v11 = sub_100035D04(&qword_10034ACC0, &qword_100288620);
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin(v11);
  v51 = &v42 - v12;
  v50 = sub_100035D04(&qword_10034ACC8, &qword_100288628);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v42 - v13;
  v47 = sub_100035D04(&qword_10034ACD0, &qword_100288630);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v42 - v14;
  v15 = sub_100035D04(&qword_10034ACD8, &qword_100288638);
  v57 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v44 = sub_100035D04(&qword_10034ACE0, &qword_100288640);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v19 = &v42 - v18;
  v20 = sub_100035D04(&qword_10034ACE8, &qword_100288648);
  v42 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v42 - v21;
  v23 = sub_100035D04(&qword_10034ACF0, &unk_100288650);
  v24 = *(v23 - 8);
  v64 = v23;
  v65 = v24;
  __chkstk_darwin(v23);
  v26 = &v42 - v25;
  sub_10000EBC0(a1, a1[3]);
  sub_1001B4E18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v66 <= 1u)
  {
    if (!v66)
    {
      v70 = 2;
      sub_1001B5064();
      v27 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v57 + 8))(v17, v15);
      return (*(v65 + 8))(v26, v27);
    }

    v75 = 7;
    sub_1001B4EC0();
    v28 = v58;
    v27 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v60;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = v59;
LABEL_7:
    (*(v30 + 8))(v28, v29);
    return (*(v65 + 8))(v26, v27);
  }

  if (v66 == 2)
  {
    v76 = 8;
    sub_1001B4E6C();
    v28 = v61;
    v27 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v63;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = v62;
    goto LABEL_7;
  }

  if (v67 > 2)
  {
    if (v67 ^ 3 | *(&v67 + 1))
    {
      if (v67 ^ 4 | *(&v67 + 1))
      {
        v74 = 6;
        sub_1001B4F14();
        v36 = v54;
        v27 = v64;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v55;
        v37 = v56;
      }

      else
      {
        v73 = 5;
        sub_1001B4F68();
        v36 = v51;
        v27 = v64;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v52;
        v37 = v53;
      }

      (*(v38 + 8))(v36, v37);
      return (*(v65 + 8))(v26, v27);
    }

    v72 = 4;
    sub_1001B4FBC();
    v40 = v48;
    v32 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v49 + 8))(v40, v50);
  }

  else
  {
    if (v67 == 0)
    {
      v68[0] = 0;
      sub_1001B510C();
      v39 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v22, v20);
      return (*(v65 + 8))(v26, v39);
    }

    if (v67 ^ 1 | *(&v67 + 1))
    {
      v71 = 3;
      sub_1001B5010();
      v41 = v45;
      v32 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = *(v46 + 8);
      v34 = v41;
      v35 = &v78;
    }

    else
    {
      v69 = 1;
      sub_1001B50B8();
      v32 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = *(v43 + 8);
      v34 = v19;
      v35 = &v77;
    }

    v33(v34, *(v35 - 32));
  }

  return (*(v65 + 8))(v26, v32);
}

uint64_t sub_1001B156C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001B3D34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001B15A0(uint64_t a1)
{
  v2 = sub_1001B4E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B15DC(uint64_t a1)
{
  v2 = sub_1001B4E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1618(uint64_t a1)
{
  v2 = sub_1001B4FBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1654(uint64_t a1)
{
  v2 = sub_1001B4FBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1690(uint64_t a1)
{
  v2 = sub_1001B4E6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B16CC(uint64_t a1)
{
  v2 = sub_1001B4E6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1708(uint64_t a1)
{
  v2 = sub_1001B50B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1744(uint64_t a1)
{
  v2 = sub_1001B50B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1780(uint64_t a1)
{
  v2 = sub_1001B4F14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B17BC(uint64_t a1)
{
  v2 = sub_1001B4F14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B17F8(uint64_t a1)
{
  v2 = sub_1001B510C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1834(uint64_t a1)
{
  v2 = sub_1001B510C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1870(uint64_t a1)
{
  v2 = sub_1001B5010();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B18AC(uint64_t a1)
{
  v2 = sub_1001B5010();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B18E8(uint64_t a1)
{
  v2 = sub_1001B4EC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1924(uint64_t a1)
{
  v2 = sub_1001B4EC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1960(uint64_t a1)
{
  v2 = sub_1001B5064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B199C(uint64_t a1)
{
  v2 = sub_1001B5064();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B19D8(uint64_t a1)
{
  v2 = sub_1001B4F68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1A14(uint64_t a1)
{
  v2 = sub_1001B4F68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1A50@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1001B4048(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1001B1AC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001B1CF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001B1E88(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100010708(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001B1AC8(v13, a3, a4, &v12);
  v10 = v4;
  sub_100010708(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001B1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001B1AC8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1001B1F40(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10006DA04(a3, a4);
          return sub_1001B1CF8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_1001B20A8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 56) > 1u)
  {
    if (*(a1 + 56) != 2)
    {
      if (*(a2 + 56) == 3)
      {
        v19 = vorrq_s8(*(a2 + 24), *(a2 + 40));
        if (!(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *(a2 + 16) | *(a2 + 8) | *a2))
        {
          return 1;
        }
      }

      return 0;
    }

    if (*(a2 + 56) != 2)
    {
      return 0;
    }

    if (v3 != *a2)
    {
      return 0;
    }

    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    v15 = *(a2 + 40);
    v14 = *(a2 + 48);
    if (__PAIR128__(v4 | ((*(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32)) << 8), v2) != *(a2 + 8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if ((v8 != v12 || v9 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (!v10)
    {
      return !v14;
    }

    if (!v14)
    {
      return 0;
    }

    if (v11 == v15 && v10 == v14)
    {
      return 1;
    }

    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  if (*(a1 + 56))
  {
    if (*(a2 + 56) != 1)
    {
      return 0;
    }

    v16 = *a2;
    v17 = *(a2 + 8);
    if (v2 >> 60 == 15)
    {
      if (v17 >> 60 == 15)
      {
        sub_1001835CC(a1, v22);
        sub_1001835CC(a2, v22);
        sub_10006DB04(v3, v2);
        return 1;
      }
    }

    else if (v17 >> 60 != 15)
    {
      sub_1001835CC(a1, v22);
      sub_1001835CC(a2, v22);
      v21 = sub_1001B1F40(v3, v2, v16, v17);
      sub_10006DB04(v16, v17);
      sub_10006DB04(v3, v2);
      return v21;
    }

    sub_1001835CC(a1, v22);
    sub_1001835CC(a2, v22);
    sub_10006DB04(v3, v2);
    sub_10006DB04(v16, v17);
    return 0;
  }

  if (*(a2 + 56))
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      if (v7 != 1)
      {
        return 0;
      }
    }

    else if (*(a2 + 16))
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

LABEL_37:
    if (v3 == v5 && v2 == v6)
    {
      return 1;
    }

    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  if (v3 > 2)
  {
    if (v3 ^ 3 | v2)
    {
      if (v3 ^ 4 | v2)
      {
        if (v7 != 3 || v5 != 5)
        {
          return 0;
        }
      }

      else if (v7 != 3 || v5 != 4)
      {
        return 0;
      }
    }

    else if (v7 != 3 || v5 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (!(v3 | v2))
    {
      return v7 == 3 && !(v6 | v5);
    }

    if (v3 ^ 1 | v2)
    {
      if (v7 != 3 || v5 != 2)
      {
        return 0;
      }
    }

    else if (v7 != 3 || v5 != 1)
    {
      return 0;
    }
  }

  return !v6;
}

uint64_t sub_1001B2404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for NoticeEffect(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v39[-v12];
  __chkstk_darwin(v11);
  v15 = &v39[-v14];
  v16 = sub_100035D04(&qword_10034AB90, &qword_100287F10);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v39[-v18];
  v20 = &v39[*(v17 + 56) - v18];
  sub_1001B36CC(a1, &v39[-v18], type metadata accessor for NoticeEffect);
  sub_1001B36CC(a2, v20, type metadata accessor for NoticeEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001B36CC(v19, v10, type metadata accessor for NoticeEffect);
      v23 = *v10;
      v22 = v10[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v23 == *v20 && v22 == v20[1])
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_25;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1001B36CC(v19, v15, type metadata accessor for NoticeEffect);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1001B3668(v20, v6);
        v35 = sub_100223750(v15, v6);
        sub_1001B37A4(v6, type metadata accessor for NoticeContext);
        sub_1001B37A4(v15, type metadata accessor for NoticeContext);
        sub_1001B37A4(v19, type metadata accessor for NoticeEffect);
        return v35 & 1;
      }

      sub_1001B37A4(v15, type metadata accessor for NoticeContext);
      goto LABEL_21;
    }

    sub_1001B36CC(v19, v13, type metadata accessor for NoticeEffect);
    v27 = *v13;
    v26 = v13[1];
    v28 = v13[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v20;
      v30 = v20[1];
      v31 = v20[2];
      if (v28 == 1)
      {
        if (v31 != 1)
        {
          v32 = v29;
          v33 = v30;
          v34 = v31;
LABEL_29:
          sub_100077374(v32, v33, v34);
LABEL_30:
          sub_1001B37A4(v19, type metadata accessor for NoticeEffect);
          goto LABEL_22;
        }
      }

      else
      {
        if (v31 == 1)
        {
          v32 = v27;
          v33 = v26;
          v34 = v28;
          goto LABEL_29;
        }

        v37 = v29;
        v39[8] = v26 & 1;
        v39[0] = v30 & 1;
        v38 = sub_100079248(v27, v26 & 1, v28, v29, v30 & 1, v31);

        sub_100077374(v29, v30, v31);
        sub_100077374(v27, v26, v28);
        if ((v38 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_25:
      sub_1001B37A4(v19, type metadata accessor for NoticeEffect);
      v35 = 1;
      return v35 & 1;
    }

    sub_100077374(v27, v26, v28);
  }

LABEL_21:
  sub_1000097E8(v19, &qword_10034AB90, &qword_100287F10);
LABEL_22:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1001B2890(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (a1 > 2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a1 ^ 4 | a2)
        {
          if (a6 == 3 && a4 == 5 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 3 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 0;
}

uint64_t sub_1001B2A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764572656E6E6162 && a2 == 0xEB00000000746E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61546E6F74747562 && a2 == 0xEC00000064657070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46746E6573657270 && a2 == 0xED000064656C6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A3E30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_1001B2B9C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_100035D04(&qword_10034AB08, &qword_100287EB0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v52 = &v40[-v5];
  v45 = sub_100035D04(&qword_10034AB10, &qword_100287EB8);
  v50 = *(v45 - 8);
  __chkstk_darwin(v45);
  v51 = &v40[-v6];
  v7 = sub_100035D04(&qword_10034AB18, &qword_100287EC0);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v40[-v8];
  v10 = sub_100035D04(&qword_10034AB20, &qword_100287EC8);
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40[-v11];
  v13 = sub_100035D04(&qword_10034AB28, &unk_100287ED0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40[-v15];
  v17 = a1[3];
  v65 = a1;
  sub_10000EBC0(a1, v17);
  sub_1001B341C();
  v18 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_8;
  }

  v43 = v12;
  v42 = v10;
  v20 = v51;
  v19 = v52;
  *&v54 = v14;
  v21 = v53;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v61 = v22;
  v62 = v22 + 32;
  v63 = 0;
  v64 = v23;
  v24 = sub_100218018();
  if (v24 == 4 || v63 != v64 >> 1)
  {
    v26 = v13;
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v29 = &type metadata for NoticeEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
    swift_willThrow();
    (*(v54 + 8))(v16, v26);
    swift_unknownObjectRelease();
LABEL_8:
    sub_10000903C(v65);
    return result;
  }

  v41 = v24;
  if (v24 > 1u)
  {
    if (v24 == 2)
    {
      LOBYTE(v55) = 2;
      sub_1001B34C4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v13;
      v32 = v54;
      v38 = v31;
      sub_10010B758();
      v39 = v45;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v50 + 8))(v20, v39);
      (*(v32 + 8))(v16, v38);
      swift_unknownObjectRelease();
      v54 = v55;
      LOBYTE(v20) = v56;
      v13 = v57;
      v36 = v58;
      v25 = v59;
      v16 = v60;
      v37 = v56 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      LOBYTE(v55) = 3;
      sub_1001B3470();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = v13;
      v34 = v54;
      (*(v49 + 8))(v19, v48);
      (*(v34 + 8))(v16, v33);
      swift_unknownObjectRelease();
      v13 = 0;
      v36 = 0;
      v25 = 0;
      v16 = 0;
      LOBYTE(v20) = 0;
      v37 = 0;
      v54 = 0u;
    }
  }

  else if (v24)
  {
    LOBYTE(v55) = 1;
    sub_1001B3518();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100165E88();
    v25 = v47;
    v36 = v9;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v46 + 8))(v9, v25);
    (*(v54 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v37 = 0;
    v54 = v55;
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_1001B356C();
    v25 = v43;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1001B35C0();
    v35 = v42;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = 0;
    (*(v44 + 8))(v25, v35);
    (*(v54 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v37 = 0;
    v54 = v55;
    LOBYTE(v20) = v56;
  }

  sub_10000903C(v65);
  result = *&v54;
  *v21 = v54;
  *(v21 + 16) = v37 | v20;
  *(v21 + 24) = v13;
  *(v21 + 32) = v36;
  *(v21 + 40) = v25;
  *(v21 + 48) = v16;
  *(v21 + 56) = v41;
  return result;
}

unint64_t sub_1001B341C()
{
  result = qword_10034AB30;
  if (!qword_10034AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB30);
  }

  return result;
}

unint64_t sub_1001B3470()
{
  result = qword_10034AB38;
  if (!qword_10034AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB38);
  }

  return result;
}

unint64_t sub_1001B34C4()
{
  result = qword_10034AB40;
  if (!qword_10034AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB40);
  }

  return result;
}

unint64_t sub_1001B3518()
{
  result = qword_10034AB48;
  if (!qword_10034AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB48);
  }

  return result;
}

unint64_t sub_1001B356C()
{
  result = qword_10034AB50;
  if (!qword_10034AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB50);
  }

  return result;
}

unint64_t sub_1001B35C0()
{
  result = qword_10034AB58;
  if (!qword_10034AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB58);
  }

  return result;
}

unint64_t sub_1001B3614()
{
  result = qword_10034AB88;
  if (!qword_10034AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB88);
  }

  return result;
}

uint64_t sub_1001B3668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B36CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B3734(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_1003492A0, &qword_1002836F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B37A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001B3868()
{
  result = qword_10034AB98;
  if (!qword_10034AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB98);
  }

  return result;
}

unint64_t sub_1001B38C0()
{
  result = qword_10034ABA0;
  if (!qword_10034ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABA0);
  }

  return result;
}

unint64_t sub_1001B3918()
{
  result = qword_10034ABA8;
  if (!qword_10034ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABA8);
  }

  return result;
}

unint64_t sub_1001B3970()
{
  result = qword_10034ABB0;
  if (!qword_10034ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABB0);
  }

  return result;
}

unint64_t sub_1001B39C8()
{
  result = qword_10034ABB8;
  if (!qword_10034ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABB8);
  }

  return result;
}

unint64_t sub_1001B3A20()
{
  result = qword_10034ABC0;
  if (!qword_10034ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABC0);
  }

  return result;
}

unint64_t sub_1001B3A78()
{
  result = qword_10034ABC8;
  if (!qword_10034ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABC8);
  }

  return result;
}

unint64_t sub_1001B3AD0()
{
  result = qword_10034ABD0;
  if (!qword_10034ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABD0);
  }

  return result;
}

unint64_t sub_1001B3B28()
{
  result = qword_10034ABD8;
  if (!qword_10034ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABD8);
  }

  return result;
}

unint64_t sub_1001B3B80()
{
  result = qword_10034ABE0;
  if (!qword_10034ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABE0);
  }

  return result;
}

unint64_t sub_1001B3BD8()
{
  result = qword_10034ABE8;
  if (!qword_10034ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABE8);
  }

  return result;
}

unint64_t sub_1001B3C30()
{
  result = qword_10034ABF0;
  if (!qword_10034ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABF0);
  }

  return result;
}

unint64_t sub_1001B3C88()
{
  result = qword_10034ABF8;
  if (!qword_10034ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABF8);
  }

  return result;
}

unint64_t sub_1001B3CE0()
{
  result = qword_10034AC00;
  if (!qword_10034AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC00);
  }

  return result;
}

uint64_t sub_1001B3D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F4C646964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41746F4E6C6C6977 && a2 == 0xED00007261657070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657070416C6C6977 && a2 == 0xEA00000000007261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6165707041646964 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6172546C6C6977 && a2 == 0xEE006E6F69746973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E617254646964 && a2 == 0xED00006E6F697469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617369446C6C6977 && a2 == 0xED00007261657070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7061736944646964 && a2 == 0xEC00000072616570)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1001B4048(void *a1)
{
  v2 = sub_100035D04(&qword_10034AC08, &qword_1002885B8);
  v3 = *(v2 - 8);
  v75 = v2;
  v76 = v3;
  __chkstk_darwin(v2);
  v79 = &v57 - v4;
  v5 = sub_100035D04(&qword_10034AC10, &qword_1002885C0);
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin(v5);
  v83 = &v57 - v6;
  v7 = sub_100035D04(&qword_10034AC18, &qword_1002885C8);
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin(v7);
  v82 = &v57 - v8;
  v9 = sub_100035D04(&qword_10034AC20, &qword_1002885D0);
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v81 = &v57 - v10;
  v67 = sub_100035D04(&qword_10034AC28, &qword_1002885D8);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v80 = &v57 - v11;
  v66 = sub_100035D04(&qword_10034AC30, &qword_1002885E0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v78 = &v57 - v12;
  v61 = sub_100035D04(&qword_10034AC38, &qword_1002885E8);
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v77 = &v57 - v13;
  v63 = sub_100035D04(&qword_10034AC40, &qword_1002885F0);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v15 = &v57 - v14;
  v16 = sub_100035D04(&qword_10034AC48, &qword_1002885F8);
  v60 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  v19 = sub_100035D04(&qword_10034AC50, &qword_100288600);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - v21;
  v23 = a1[3];
  v85 = a1;
  sub_10000EBC0(a1, v23);
  sub_1001B4E18();
  v24 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v58 = v18;
    v57 = v16;
    v26 = v80;
    v25 = v81;
    v27 = v82;
    v59 = 0;
    v28 = v83;
    v84 = v20;
    v29 = KeyedDecodingContainer.allKeys.getter();
    v30 = (2 * *(v29 + 16)) | 1;
    v86 = v29;
    v87 = v29 + 32;
    v88 = 0;
    v89 = v30;
    v31 = sub_10021801C();
    if (v31 != 9 && v88 == v89 >> 1)
    {
      if (v31 <= 3u)
      {
        if (v31 <= 1u)
        {
          v41 = v59;
          if (v31)
          {
            v90 = 1;
            sub_1001B50B8();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v41)
            {
              (*(v62 + 8))(v15, v63);
              (*(v84 + 8))(v22, v19);
              swift_unknownObjectRelease();
              v19 = 1;
              goto LABEL_12;
            }
          }

          else
          {
            v90 = 0;
            sub_1001B510C();
            v42 = v58;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v41)
            {
              (*(v60 + 8))(v42, v57);
              (*(v84 + 8))(v22, v19);
              swift_unknownObjectRelease();
              v19 = 0;
              goto LABEL_12;
            }
          }

          (*(v84 + 8))(v22, v19);
          goto LABEL_11;
        }

        v43 = v84;
        v44 = v59;
        if (v31 == 2)
        {
          v90 = 2;
          sub_1001B5064();
          v45 = v77;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v44)
          {
            v46 = v19;
            v47 = v61;
            v19 = KeyedDecodingContainer.decode(_:forKey:)();
            (*(v64 + 8))(v45, v47);
            (*(v43 + 8))(v22, v46);
            swift_unknownObjectRelease();
            goto LABEL_12;
          }
        }

        else
        {
          v90 = 3;
          sub_1001B5010();
          v50 = v78;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v44)
          {
            (*(v65 + 8))(v50, v66);
            (*(v43 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v19 = 2;
            goto LABEL_12;
          }
        }
      }

      else
      {
        if (v31 > 5u)
        {
          v32 = v84;
          if (v31 == 6)
          {
            v90 = 6;
            sub_1001B4F14();
            v49 = v59;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v49)
            {
              (*(v71 + 8))(v27, v72);
              (*(v32 + 8))(v22, v19);
              swift_unknownObjectRelease();
              v19 = 5;
              goto LABEL_12;
            }
          }

          else if (v31 == 7)
          {
            v90 = 7;
            sub_1001B4EC0();
            v33 = v59;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v33)
            {
              v34 = v22;
              v35 = v19;
              v36 = v74;
              v19 = KeyedDecodingContainer.decode(_:forKey:)();
              (*(v73 + 8))(v28, v36);
              (*(v32 + 8))(v34, v35);
              swift_unknownObjectRelease();
              goto LABEL_12;
            }
          }

          else
          {
            v90 = 8;
            sub_1001B4E6C();
            v51 = v79;
            v52 = v59;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v52)
            {
              v54 = v22;
              v55 = v19;
              v56 = v75;
              v19 = KeyedDecodingContainer.decode(_:forKey:)();
              (*(v76 + 8))(v51, v56);
              (*(v32 + 8))(v54, v55);
              swift_unknownObjectRelease();
              goto LABEL_12;
            }
          }

          (*(v32 + 8))(v22, v19);
LABEL_11:
          swift_unknownObjectRelease();
          goto LABEL_12;
        }

        v43 = v84;
        if (v31 == 4)
        {
          v90 = 4;
          sub_1001B4FBC();
          v48 = v59;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v48)
          {
            (*(v68 + 8))(v26, v67);
            (*(v43 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v19 = 3;
            goto LABEL_12;
          }
        }

        else
        {
          v90 = 5;
          sub_1001B4F68();
          v53 = v59;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v53)
          {
            (*(v69 + 8))(v25, v70);
            (*(v43 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v19 = 4;
            goto LABEL_12;
          }
        }
      }

      (*(v43 + 8))(v22, v19);
      goto LABEL_11;
    }

    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v19;
    v19 = v39;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v19 = &type metadata for BannerPresentableEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    (*(v84 + 8))(v22, v38);
    goto LABEL_11;
  }

LABEL_12:
  sub_10000903C(v85);
  return v19;
}

unint64_t sub_1001B4E18()
{
  result = qword_10034AC58;
  if (!qword_10034AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC58);
  }

  return result;
}

unint64_t sub_1001B4E6C()
{
  result = qword_10034AC60;
  if (!qword_10034AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC60);
  }

  return result;
}

unint64_t sub_1001B4EC0()
{
  result = qword_10034AC68;
  if (!qword_10034AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC68);
  }

  return result;
}

unint64_t sub_1001B4F14()
{
  result = qword_10034AC70;
  if (!qword_10034AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC70);
  }

  return result;
}

unint64_t sub_1001B4F68()
{
  result = qword_10034AC78;
  if (!qword_10034AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC78);
  }

  return result;
}

unint64_t sub_1001B4FBC()
{
  result = qword_10034AC80;
  if (!qword_10034AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC80);
  }

  return result;
}

unint64_t sub_1001B5010()
{
  result = qword_10034AC88;
  if (!qword_10034AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC88);
  }

  return result;
}

unint64_t sub_1001B5064()
{
  result = qword_10034AC90;
  if (!qword_10034AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC90);
  }

  return result;
}

unint64_t sub_1001B50B8()
{
  result = qword_10034AC98;
  if (!qword_10034AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC98);
  }

  return result;
}

unint64_t sub_1001B510C()
{
  result = qword_10034ACA0;
  if (!qword_10034ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ACA0);
  }

  return result;
}

unint64_t sub_1001B5204()
{
  result = qword_10034ACF8;
  if (!qword_10034ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ACF8);
  }

  return result;
}

unint64_t sub_1001B525C()
{
  result = qword_10034AD00;
  if (!qword_10034AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD00);
  }

  return result;
}

unint64_t sub_1001B52B4()
{
  result = qword_10034AD08;
  if (!qword_10034AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD08);
  }

  return result;
}

unint64_t sub_1001B530C()
{
  result = qword_10034AD10;
  if (!qword_10034AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD10);
  }

  return result;
}

unint64_t sub_1001B5364()
{
  result = qword_10034AD18;
  if (!qword_10034AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD18);
  }

  return result;
}

unint64_t sub_1001B53BC()
{
  result = qword_10034AD20;
  if (!qword_10034AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD20);
  }

  return result;
}

unint64_t sub_1001B5414()
{
  result = qword_10034AD28;
  if (!qword_10034AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD28);
  }

  return result;
}

unint64_t sub_1001B546C()
{
  result = qword_10034AD30;
  if (!qword_10034AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD30);
  }

  return result;
}

unint64_t sub_1001B54C4()
{
  result = qword_10034AD38;
  if (!qword_10034AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD38);
  }

  return result;
}

unint64_t sub_1001B551C()
{
  result = qword_10034AD40;
  if (!qword_10034AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD40);
  }

  return result;
}

unint64_t sub_1001B5574()
{
  result = qword_10034AD48;
  if (!qword_10034AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD48);
  }

  return result;
}

unint64_t sub_1001B55CC()
{
  result = qword_10034AD50;
  if (!qword_10034AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD50);
  }

  return result;
}

unint64_t sub_1001B5624()
{
  result = qword_10034AD58;
  if (!qword_10034AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD58);
  }

  return result;
}

unint64_t sub_1001B567C()
{
  result = qword_10034AD60;
  if (!qword_10034AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD60);
  }

  return result;
}

unint64_t sub_1001B56D4()
{
  result = qword_10034AD68;
  if (!qword_10034AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD68);
  }

  return result;
}

unint64_t sub_1001B572C()
{
  result = qword_10034AD70;
  if (!qword_10034AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD70);
  }

  return result;
}

unint64_t sub_1001B5784()
{
  result = qword_10034AD78;
  if (!qword_10034AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD78);
  }

  return result;
}

unint64_t sub_1001B57DC()
{
  result = qword_10034AD80;
  if (!qword_10034AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD80);
  }

  return result;
}

unint64_t sub_1001B5834()
{
  result = qword_10034AD88;
  if (!qword_10034AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD88);
  }

  return result;
}

unint64_t sub_1001B588C()
{
  result = qword_10034AD90;
  if (!qword_10034AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD90);
  }

  return result;
}

unint64_t sub_1001B58E4()
{
  result = qword_10034AD98;
  if (!qword_10034AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD98);
  }

  return result;
}

unint64_t sub_1001B593C()
{
  result = qword_10034ADA0;
  if (!qword_10034ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ADA0);
  }

  return result;
}

unint64_t sub_1001B5994()
{
  result = qword_10034ADA8;
  if (!qword_10034ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ADA8);
  }

  return result;
}

unint64_t sub_1001B59EC()
{
  result = qword_10034ADB0;
  if (!qword_10034ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ADB0);
  }

  return result;
}

uint64_t sub_1001B5A40()
{
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_9:
  sub_1000097E8(&v8, &unk_100339680, &qword_100278390);
  return v4;
}

uint64_t sub_1001B5B58()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034ADB8);
  sub_100003078(v0, qword_10034ADB8);
  return Logger.init(subsystem:category:)();
}

id sub_1001B5BD8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod;
  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v3 = *(qword_10038B0A0 + 24);
  v4 = sub_1000031CC();

  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = v4 & 1;
  *&v1[v2] = v5;
  *&v1[OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager_tasks] = &_swiftEmptySetSingleton;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HandoffEnabledSettingManager();
  v6 = objc_msgSendSuper2(&v12, "init");
  v7 = qword_100339098;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_10038B250;
  if (qword_10038B250)
  {
    v10 = String._bridgeToObjectiveC()();
    [v9 addObserver:v8 forKeyPath:v10 options:1 context:0];
  }

  return v8;
}

id sub_1001B5D70()
{
  v1 = v0;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034ADB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  if (qword_100339098 != -1)
  {
    swift_once();
  }

  v6 = qword_10038B250;
  if (qword_10038B250)
  {
    v7 = String._bridgeToObjectiveC()();
    [v6 removeObserver:v1 forKeyPath:v7];
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for HandoffEnabledSettingManager();
  return objc_msgSendSuper2(&v9, "dealloc");
}

double sub_1001B60C4()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10034AE08, qword_100288FA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-1] - v4;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034ADB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A3F10, v26);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000903C(v10);
  }

  sub_1001B66BC();
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v11 = qword_10038B0B8;
  v12 = *(qword_10038B0B8 + 616);
  v13 = sub_1000177F8();

  v14 = *(v11 + 616);
  if (v13 == 2)
  {
    v15 = *(v14 + *((swift_isaMask & *v14) + 0x70));
    if (v15)
    {
      v16 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod) + 24);
      v17 = v14;
      v18 = v15;
      v19 = String._bridgeToObjectiveC()();
      [v18 setBool:v16 forKey:v19];
    }
  }

  else
  {
    v20 = v14;
    v21 = sub_1000177F8();

    v22 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod) + 24);
    if (v21 == 2 || ((v22 ^ v21) & 1) != 0)
    {
      sub_1001B7858(v22);
    }
  }

  v26[0] = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v23 = Publisher.eraseToAnyPublisher()();

  v26[0] = v23;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E244(&qword_10034AE10, &qword_10034AE08, qword_100288FA8, &protocol conformance descriptor for Publishers.Filter<A>);
  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

uint64_t sub_1001B65D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 616);
  v3 = sub_1000177F8();

  return (v3 == 2) | (v1 ^ v3) & 1u;
}

void sub_1001B6660(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001B7858(v2);
  }
}

void sub_1001B66BC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v0 - 8);
  v53 = v0;
  __chkstk_darwin(v0);
  v50 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchTime();
  v47 = *(v55 - 8);
  v3 = __chkstk_darwin(v55);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v44 - v6;
  v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v7 - 8);
  v9 = (&v44 - v8);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v46 = sub_100003078(v17, qword_10034ADB8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v16;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100017494(0xD000000000000017, 0x80000001002A3ED0, aBlock);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s", v20, 0xCu);
    sub_10000903C(v22);
    v16 = v45;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v23 = qword_10038B0B8;
  v24 = *(qword_10038B0B8 + 584);
  sub_100060984(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    if (sub_1001B5A40())
    {
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v28 = 136315138;
        v30 = (v25 + *((swift_isaMask & *v25) + 0x68));
        v31 = *v30;
        v32 = v30[1];

        v33 = sub_100017494(v31, v32, aBlock);

        *(v28 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "### Failed to parse stored value for '%s'", v28, 0xCu);
        sub_10000903C(v29);
      }

      return;
    }

LABEL_16:
    sub_1001B6FC4();
    sub_1001B66BC();

    return;
  }

  (*(v11 + 32))(v16, v9, v10);
  v34 = *(v23 + 592);
  sub_10005F4E4();

  Date.advanced(by:)();
  Date.timeIntervalSinceNow.getter();
  v36 = v35;
  v37 = *(v11 + 8);
  v37(v14, v10);
  v37(v16, v10);
  if (v36 <= 0.0)
  {
    goto LABEL_16;
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v46 = qword_10038B5B8;
  static DispatchTime.now()();
  + infix(_:_:)();
  v47 = *(v47 + 8);
  (v47)(v5, v55);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001B7298;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310208;
  v39 = _Block_copy(aBlock);

  v40 = v48;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_1001B7D00(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  v41 = v50;
  v42 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v43 = v54;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v39);

  (*(v52 + 8))(v41, v42);
  (*(v49 + 8))(v40, v51);
  (v47)(v43, v55);
}

void sub_1001B6F44(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001B6FC4();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1001B66BC();
  }
}

uint64_t sub_1001B6FC4()
{
  v0 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v18 - v4;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034ADB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A3EF0, v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000903C(v10);
  }

  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v11 = *(qword_10038B0A0 + 24);
  v12 = sub_1000031CC();

  sub_1001188AC(v12 & 1);
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v13 = qword_10038B0B8;
  Date.init()();
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = *(v13 + 584);
  sub_10006C4AC(v5, v3);
  v16 = v15;
  sub_100259E18(v3);

  return sub_1000097E8(v5, &qword_10033C280, &qword_100272A80);
}

void sub_1001B72A8()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v35 - v4;
  v6 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v35 - v10);
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_10034ADB8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100017494(0xD000000000000020, 0x80000001002A3F70, &v38);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_10000903C(v16);
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v17 = qword_10038B0B8;
  v18 = *(qword_10038B0B8 + 608);
  v37 = sub_10006045C();

  v19 = *(v17 + 600);
  sub_100060984(v11);

  v20 = *(v1 + 48);
  v21 = v20(v11, 1, v0);
  if (v21)
  {
    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    v22 = 0;
    goto LABEL_15;
  }

  (*(v1 + 16))(v5, v11, v0);
  sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
  Date.timeIntervalSinceNow.getter();
  v24 = v23;
  v25 = v23;
  (*(v1 + 8))(v5, v0);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v24 >= -86399)
  {
    v22 = v24 / 86400;
  }

  else
  {
    v22 = v24 / -86400;
  }

LABEL_15:
  v26 = *(v17 + 568);
  sub_100060984(v9);

  v27 = v20(v9, 1, v0);
  if (v27)
  {
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    v28 = 0;
    goto LABEL_23;
  }

  v29 = v36;
  (*(v1 + 16))(v36, v9, v0);
  sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
  Date.timeIntervalSinceNow.getter();
  v31 = v30;
  v32 = v30;
  (*(v1 + 8))(v29, v0);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return;
  }

  if (v31 >= -86399)
  {
    v28 = v31 / 86400;
  }

  else
  {
    v28 = v31 / -86400;
  }

LABEL_23:
  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v33 = *(qword_10038B0A0 + 24);
  v34 = sub_1000031CC();

  v38 = v37;
  v39 = 0;
  v40 = v22;
  v41 = v21 != 0;
  v42 = v28;
  v43 = v27 != 0;
  v44 = v34 & 1;
  sub_100118E70();
}

void sub_1001B7858(char a1)
{
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034ADB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A3F30, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v7 = *(qword_10038B0B8 + 616);
  v8 = *(v7 + *((swift_isaMask & *v7) + 0x70));
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = String._bridgeToObjectiveC()();
    [v10 setBool:a1 & 1 forKey:v11];
  }

  sub_1001B72A8();
  if (a1)
  {

    sub_1001E08E0();
  }
}

double sub_1001B7AAC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034ADB8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD00000000000002BLL, 0x800000010029AEC0, &v16);
    *(v9 + 12) = 2080;
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      a1 = 7104878;
      v10 = 0xE300000000000000;
    }

    v11 = sub_100017494(a1, v10, &v16);

    *(v9 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: keyPath=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10038B0A0 + 24);
  v13 = sub_1000031CC();

  v14 = *(v3 + OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod);
  *(v14 + 24) = v13 & 1;

  sub_10005E50C();
  v17 = *(v14 + 24);
  CurrentValueSubject.send(_:)();

  return result;
}

uint64_t sub_1001B7D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8CardInfoOMa(uint64_t a1)
{
  result = qword_10034AE88;
  if (!qword_10034AE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B7D94(uint64_t a1)
{
  sub_1001B7E08(319);
  if (v1 <= 0x3F)
  {
    sub_1001B7E70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001B7E08(uint64_t a1)
{
  if (!qword_10034AE98)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10034AE98);
    }
  }
}

void sub_1001B7E70()
{
  if (!qword_10034AEA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10034AEA0);
    }
  }
}

uint64_t sub_1001B7ED0(void *a1)
{
  v30 = sub_100035D04(&qword_10034AF00, &qword_100289038);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v32 = &v25 - v2;
  v29 = sub_100035D04(&qword_10034AF08, &qword_100289040);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v36 = &v25 - v3;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v35 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = _s8CardInfoOMa(0);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100035D04(&qword_10034AF10, &qword_100289048);
  v34 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_10000EBC0(a1, a1[3]);
  sub_1001B9090();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001B91F0(v31, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = 1;
    sub_1001B90E4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = 0;
    v15 = v30;
    v16 = v33;
    KeyedEncodingContainer.encode(_:forKey:)();

    if (v16)
    {

      (*(v28 + 8))(v32, v15);
    }

    else
    {
      v40 = 1;
      v23 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v28 + 8))(v23, v15);
    }
  }

  else
  {
    v17 = *(sub_100035D04(&qword_10033D6E0, &qword_100273450) + 48);
    v18 = v26;
    v19 = *(v26 + 32);
    v19(v8, v11, v4);
    v19(v35, &v11[v17], v4);
    v39 = 0;
    sub_1001B919C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = 0;
    sub_100019194(&qword_1003437D8, &protocol conformance descriptor for UUID);
    v20 = v29;
    v21 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v21)
    {
      v37 = 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v27 + 8))(v36, v20);
    v22 = *(v18 + 8);
    v22(v35, v4);
    v22(v8, v4);
  }

  return (*(v34 + 8))(v14, v12);
}

uint64_t sub_1001B842C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_100035D04(&qword_10034AED0, &qword_100289020);
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v55 = &v47 - v4;
  v5 = sub_100035D04(&qword_10034AED8, &qword_100289028);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  v8 = sub_100035D04(&qword_10034AEE0, &qword_100289030);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v12 = _s8CardInfoOMa(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v47 - v17;
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v21 = a1[3];
  v60 = a1;
  sub_10000EBC0(a1, v21);
  sub_1001B9090();
  v22 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v48 = v15;
    v49 = v20;
    v50 = v18;
    v24 = v54;
    v23 = v55;
    v59 = v12;
    v25 = v56;
    v26 = v57;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v61 = v27;
    v62 = v27 + 32;
    v63 = 0;
    v64 = v28;
    v29 = sub_10021800C();
    v30 = v11;
    if (v29 == 2 || v63 != v64 >> 1)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v36 = v59;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
      swift_willThrow();
      (*(v58 + 8))(v30, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        v31 = v58;
        v65 = 1;
        sub_1001B90E4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v65 = 0;
        v32 = v52;
        v33 = KeyedDecodingContainer.decode(_:forKey:)();
        v40 = v39;
        v54 = v33;
        v65 = 1;
        v41 = KeyedDecodingContainer.decode(_:forKey:)();
        v53 = v42;
        v43 = v41;
        (*(v51 + 8))(v23, v32);
        (*(v31 + 8))(v11, v57);
        swift_unknownObjectRelease();
        v44 = v53;
        v45 = v48;
        *v48 = v54;
        v45[1] = v40;
        v45[2] = v43;
        v45[3] = v44;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v65 = 0;
        sub_1001B919C();
        v38 = v7;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for UUID();
        v65 = 0;
        sub_100019194(&qword_1003437F0, &protocol conformance descriptor for UUID);
        v45 = v50;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        sub_100035D04(&qword_10033D6E0, &qword_100273450);
        v65 = 1;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v53 + 8))(v38, v24);
        (*(v58 + 8))(v11, v26);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v25 = v56;
      }

      v46 = v49;
      sub_1001B9138(v45, v49);
      sub_1001B9138(v46, v25);
    }
  }

  return sub_10000903C(v60);
}

uint64_t sub_1001B8BBC()
{
  if (*v0)
  {
    return 0x756F52616964656DLL;
  }

  else
  {
    return 0x74696B656D6F68;
  }
}

uint64_t sub_1001B8BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696B656D6F68 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F52616964656DLL && a2 == 0xEA00000000006574)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001B8CE0(uint64_t a1)
{
  v2 = sub_1001B9090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B8D1C(uint64_t a1)
{
  v2 = sub_1001B9090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B8D58()
{
  if (*v0)
  {
    return 0x4449656D6F68;
  }

  else
  {
    return 0x726F737365636361;
  }
}

uint64_t sub_1001B8D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F737365636361 && a2 == 0xEB00000000444979;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656D6F68 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001B8E74(uint64_t a1)
{
  v2 = sub_1001B919C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B8EB0(uint64_t a1)
{
  v2 = sub_1001B919C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B8EEC()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1001B8F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001B8FE8(uint64_t a1)
{
  v2 = sub_1001B90E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B9024(uint64_t a1)
{
  v2 = sub_1001B90E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001B9090()
{
  result = qword_10034AEE8;
  if (!qword_10034AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AEE8);
  }

  return result;
}

unint64_t sub_1001B90E4()
{
  result = qword_10034AEF0;
  if (!qword_10034AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AEF0);
  }

  return result;
}

uint64_t sub_1001B9138(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardInfoOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B919C()
{
  result = qword_10034AEF8;
  if (!qword_10034AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AEF8);
  }

  return result;
}

uint64_t sub_1001B91F0(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardInfoOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B9288()
{
  result = qword_10034AF18;
  if (!qword_10034AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF18);
  }

  return result;
}

unint64_t sub_1001B92E0()
{
  result = qword_10034AF20;
  if (!qword_10034AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF20);
  }

  return result;
}

unint64_t sub_1001B9338()
{
  result = qword_10034AF28;
  if (!qword_10034AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF28);
  }

  return result;
}

unint64_t sub_1001B9390()
{
  result = qword_10034AF30;
  if (!qword_10034AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF30);
  }

  return result;
}

unint64_t sub_1001B93E8()
{
  result = qword_10034AF38;
  if (!qword_10034AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF38);
  }

  return result;
}

unint64_t sub_1001B9440()
{
  result = qword_10034AF40;
  if (!qword_10034AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF40);
  }

  return result;
}

unint64_t sub_1001B9498()
{
  result = qword_10034AF48;
  if (!qword_10034AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF48);
  }

  return result;
}

unint64_t sub_1001B94F0()
{
  result = qword_10034AF50;
  if (!qword_10034AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF50);
  }

  return result;
}

unint64_t sub_1001B9548()
{
  result = qword_10034AF58;
  if (!qword_10034AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF58);
  }

  return result;
}

uint64_t RPIdentityType.description.getter(unsigned int a1)
{
  sub_100016BB0(a1);

  return String.init(cString:)();
}

uint64_t sub_1001B95C4()
{
  sub_100016BB0(*v0);

  return String.init(cString:)();
}

uint64_t sub_1001B95F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034AF60);
  sub_100003078(v0, qword_10034AF60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001B9670()
{
  type metadata accessor for HandoffFeedbackManager_Legacy();
  swift_allocObject();
  result = sub_1001B96AC();
  qword_10038B458 = result;
  return result;
}

uint64_t sub_1001B96AC()
{
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  sub_100035D04(&qword_10033D8D8, &qword_100273D18);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = &_swiftEmptySetSingleton;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0x3FF0000000000000;
  *(v0 + 184) = 18;
  *(v0 + 192) = 0;
  *(v0 + 196) = 1;
  *(v0 + 197) = 0;
  return v0;
}

uint64_t sub_1001B9758()
{
  v1 = v0;
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034AF60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Clearing state", v5, 2u);
  }

  *(v1 + 152) = &_swiftEmptySetSingleton;

  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 197) = 0;
  return result;
}

id sub_1001B9858()
{
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034AF60);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating alert", v3, 2u);
  }

  v4 = [objc_allocWithZone(CUUserAlert) init];
  v5 = swift_allocObject();
  swift_weakInit();
  v17 = sub_1001BC088;
  v18 = v5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1001B9C18;
  v16 = &unk_100310508;
  v6 = _Block_copy(&v13);

  [v4 setActionHandler:v6];
  _Block_release(v6);
  v7 = String._bridgeToObjectiveC()();
  [v4 setAlternativeButtonTitleKey:v7];

  v8 = String._bridgeToObjectiveC()();
  [v4 setDefaultButtonTitleKey:v8];

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  [v4 setDispatchQueue:qword_10038B5B8];
  v17 = sub_1001B9C6C;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100018AB8;
  v16 = &unk_100310530;
  v9 = _Block_copy(&v13);
  [v4 setInvalidationHandler:v9];
  _Block_release(v9);
  v10 = String._bridgeToObjectiveC()();
  [v4 setTitleKey:v10];

  v11 = String._bridgeToObjectiveC()();
  [v4 setSubtitleKey:v11];

  return v4;
}

double sub_1001B9BB8(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001B9D54(a1);
  }

  return result;
}

double sub_1001B9C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1001B9C6C()
{
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034AF60);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Alert invalidated", v2, 2u);
  }
}

void sub_1001B9D54(unint64_t a1)
{
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034AF60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    sub_1001BBC5C(a1);
    v7 = String.init(cString:)();
    v9 = sub_100017494(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handling action: %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v20 = a1;

  PassthroughSubject.send(_:)();

  if (a1 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_15;
    }

    v13 = Strong;
    sub_1001B9FFC(1);
LABEL_14:

    goto LABEL_15;
  }

  if (a1 != 1)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      sub_1001BBC5C(a1);
      v17 = String.init(cString:)();
      v19 = sub_100017494(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unhandled action: %s", v15, 0xCu);
      sub_10000903C(v16);
    }

    goto LABEL_14;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_1001B9FFC(0);
  }

  sub_1001BB928();
LABEL_15:
  sub_1001BA2B8();
}

void sub_1001B9FFC(char a1)
{
  v2 = v1;
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v4 = 0xE90000000000006CLL;
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034AF60);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = (a1 & 1) == 0;
    if (a1)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x6C695065736C6146;
    }

    if (!v10)
    {
      v4 = 0x80000001002A4450;
    }

    v12 = sub_100017494(v11, v4, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Providing ranging session truth feedback: %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {

    v13 = (a1 & 1) == 0;
    if (a1)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x6C695065736C6146;
    }

    if (!v13)
    {
      v4 = 0x80000001002A4450;
    }
  }

  sub_100035D04(&qword_10034B1C0, &qword_1002894D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002725A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  *(inited + 48) = v11;
  *(inited + 56) = v4;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v16;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v17;
  v18 = sub_10024D608(inited);
  swift_setDeallocating();
  sub_100035D04(&qword_10034B1C8, &unk_1002894E0);
  swift_arrayDestroy();
  sub_10011A414(v18);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 _provideTruthTag:isa];
}

void sub_1001BA2B8()
{
  if (*(v0 + 24))
  {
    v1 = v0;
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034AF60);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 136315138;
      v12 = *(v1 + 24);
      v13 = v6;
      v7 = v12;
      sub_100035D04(&qword_10034B1B8, &qword_1002894D0);
      v8 = String.init<A>(describing:)();
      v10 = sub_100017494(v8, v9, &v13);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating %s", v5, 0xCu);
      sub_10000903C(v6);
    }

    [*(v1 + 24) invalidate];
    v11 = *(v1 + 24);
    *(v1 + 24) = 0;
  }
}

uint64_t sub_1001BA458(char a1)
{
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034AF60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Feedback request received", v5, 2u);
  }

  if (a1 & 1) != 0 || (sub_1001BA568())
  {
    sub_1001BAF40();
  }

  return sub_1001B9758();
}

uint64_t sub_1001BA568()
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v1 - 8);
  v3 = (&v52 - v2);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  if (!IsAppleInternalBuild())
  {
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003078(v18, qword_10034AF60);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v53 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v53);
    v17 = "%s Not an internal build";
    goto LABEL_16;
  }

  v55 = &type metadata for Feature;
  v56 = sub_100013104();
  LOBYTE(v53) = 3;
  v11 = isFeatureEnabled(_:)();
  sub_10000903C(&v53);
  if ((v11 & 1) == 0)
  {
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003078(v19, qword_10034AF60);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v53 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v53);
    v17 = "%s Feedback gathering is disabled";
    goto LABEL_16;
  }

  if (*(v0 + 197))
  {
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003078(v12, qword_10034AF60);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v53 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v53);
    v17 = "%s Pill was expanded during session";
    goto LABEL_16;
  }

  v25 = v0;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v26 = *(qword_10038B0B8 + 560);
  sub_100060984(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000097E8(v3, &qword_10033C280, &qword_100272A80);
    if (*(v25 + 198))
    {
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  (*(v5 + 32))(v10, v3, v4);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v28 = v27;
  v29 = *(v5 + 8);
  v30 = v29(v8, v4);
  v31 = v28 / 3600.0;
  v30.n128_f64[0] = v31;
  sub_1001BBCD0(&v53, v30);
  if (v54)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    v48._countAndFlagsBits = 0x656C62756F44;
    v48._object = 0xE600000000000000;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0xD00000000000001ELL;
    v49._object = 0x80000001002A4400;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 7630409;
    v50._object = 0xE300000000000000;
    String.append(_:)(v50);
    v51._countAndFlagsBits = 0xD00000000000002ELL;
    v51._object = 0x80000001002A4420;
    String.append(_:)(v51);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v53 <= 18)
  {
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003078(v33, qword_10034AF60);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v53);
      *(v36 + 12) = 2080;
      v52 = v31;
      v37 = String.init<A>(describing:)();
      v39 = sub_100017494(v37, v38, &v53);

      *(v36 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s recently triggered %s hours ago.", v36, 0x16u);
      swift_arrayDestroy();
    }

    v29(v10, v4);
    return 0;
  }

  v29(v10, v4);
  if ((*(v25 + 198) & 1) == 0)
  {
LABEL_28:
    if ((*(v25 + 168) & 1) == 0)
    {
      v40 = *(v25 + 160);
      if (v40 >= 1.0)
      {
        if (qword_100339158 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_100003078(v45, qword_10034AF60);
        v13 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v13, v46))
        {
          goto LABEL_18;
        }

        v47 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v53 = v16;
        *v47 = 136315394;
        *(v47 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v53);
        *(v47 + 12) = 2048;
        *(v47 + 14) = v40;
        v17 = "%s Pill visible for %f";
        v20 = v46;
        v21 = v13;
        v22 = v47;
        v23 = 22;
        goto LABEL_17;
      }

      goto LABEL_39;
    }

    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100003078(v32, qword_10034AF60);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v53 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v53);
    v17 = "%s Unknown pill visible duration";
LABEL_16:
    v20 = v14;
    v21 = v13;
    v22 = v15;
    v23 = 12;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v21, v20, v17, v22, v23);
    sub_10000903C(v16);

LABEL_18:

    return 0;
  }

LABEL_39:
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100003078(v41, qword_10034AF60);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Should trigger feedback offer", v44, 2u);
  }

  return 1;
}

uint64_t sub_1001BAF40()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034AF60);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Triggering feedback offer", v8, 2u);
  }

  if (qword_100339168 != -1)
  {
    swift_once();
  }

  v70[4] = xmmword_10038B4A0;
  v71 = *&qword_10038B4B0;
  v72 = xmmword_10038B4C0;
  v70[0] = xmmword_10038B460;
  v70[1] = *&byte_10038B470;
  v70[2] = xmmword_10038B480;
  v70[3] = unk_10038B490;
  v66 = *&byte_10038B470;
  v67 = xmmword_10038B480;
  v68 = unk_10038B490;
  v69 = xmmword_10038B4A0;
  v9 = qword_10038B4B0;
  v65 = *(&xmmword_10038B4C0 + 1);
  v64 = *&byte_10038B4B8;
  v10 = *(v1 + 160);
  v11 = *(v1 + 168);
  v12 = *(v1 + 197);
  v13 = *(v1 + 198);
  sub_1000E8EC0(v70, &v55);
  v14 = sub_1001BBEC0(v10, v11, v12, v13);
  v16 = v15;

  v17 = *(v1 + 152);
  v18 = *(v17 + 16);
  v47 = v16;
  v48 = v14;
  if (v18)
  {
    v39 = v71;
    v19 = sub_100127540(v18, 0);
    v20 = *(type metadata accessor for UUID() - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v49 = v19;
    v40 = sub_100128D5C(&v55, &v19[v21], v18, v17);
    v22 = v55;

    result = sub_100004F98(v22);
    if (v40 != v18)
    {
      __break(1u);
      return result;
    }

    v14 = v48;
    v9 = v49;
    v16 = v47;
  }

  v49 = v9;
  *&v51[0] = v14;
  *(&v51[0] + 1) = v16;
  v51[1] = v66;
  v51[2] = v67;
  v51[3] = v68;
  v52 = v69;
  *&v53[0] = v9;
  *(v53 + 8) = v64;
  *(&v53[1] + 1) = v65;
  v24 = *(v1 + 40);
  v25 = *(v1 + 72);
  v54[1] = *(v1 + 56);
  v54[2] = v25;
  v54[0] = v24;
  v26 = *(v1 + 88);
  v27 = *(v1 + 104);
  v28 = *(v1 + 136);
  v54[5] = *(v1 + 120);
  v54[6] = v28;
  v54[3] = v26;
  v54[4] = v27;
  v29 = v51[0];
  v30 = v66;
  v31 = v68;
  *(v1 + 72) = v67;
  *(v1 + 56) = v30;
  *(v1 + 40) = v29;
  v32 = v52;
  v33 = v53[0];
  *(v1 + 136) = v53[1];
  *(v1 + 120) = v33;
  *(v1 + 104) = v32;
  *(v1 + 88) = v31;
  sub_1000E8EC0(v51, &v55);
  sub_1000097E8(v54, &qword_10034B1B0, &unk_1002894C0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v34 = swift_allocObject();
  swift_weakInit();
  *&v58 = sub_1001BC080;
  *(&v58 + 1) = v34;
  v55 = _NSConcreteStackBlock;
  v56 = 1107296256;
  *&v57 = sub_100018AB8;
  *(&v57 + 1) = &unk_100310490;
  v35 = _Block_copy(&v55);

  v36 = v41;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  v37 = v43;
  v38 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v45 + 8))(v37, v38);
  (*(v42 + 8))(v36, v44);

  v55 = v48;
  v56 = v47;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v62 = v64;
  v61 = v49;
  v63 = v65;
  return sub_1000E8EF8(&v55);
}

uint64_t sub_1001BB530(uint64_t a1)
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  v7 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v11 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_1001BA2B8();
    v16 = sub_1001B9858();
    v17 = *(v15 + 24);
    *(v15 + 24) = v16;
    v18 = v16;

    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_100003078(v19, qword_10034AF60);
    v21 = *(v19 - 8);
    (*(v21 + 16))(v13, v20, v19);
    (*(v21 + 56))(v13, 0, 1, v19);
    sub_10007E4B8(v13, v11);
    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0x6361207472656C41;
    *(v23 + 24) = 0xEF64657461766974;
    sub_10007E4B8(v11, v23 + v22);
    aBlock[4] = sub_10007E528;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_1003104E0;
    v24 = _Block_copy(aBlock);

    [v18 activateWithCompletion:v24];
    _Block_release(v24);

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v25 = qword_10038B0B8;
    Date.init()();
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
    v27 = *(v25 + 560);
    sub_10006C4AC(v6, v4);
    v28 = v27;
    sub_100259E18(v4);

    return sub_1000097E8(v6, &qword_10033C280, &qword_100272A80);
  }

  return result;
}

void sub_1001BB928()
{
  v1 = v0;
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034AF60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Triggering Radar", v5, 2u);
  }

  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  v21 = *(v1 + 104);
  v22 = v7;
  v23 = *(v1 + 136);
  v8 = *(v1 + 56);
  v20[0] = *(v1 + 40);
  v20[1] = v8;
  v20[2] = *(v1 + 72);
  v20[3] = v6;
  if (*(&v21 + 1))
  {
    v9 = *(v1 + 56);
    v10 = *(v1 + 88);
    v26 = *(v1 + 72);
    v27 = v10;
    v11 = *(v1 + 104);
    v24 = *(v1 + 40);
    v25 = v9;
    v28 = v11;
    v29 = *(&v21 + 1);
    v12 = *(v1 + 136);
    v30 = *(v1 + 120);
    v31 = v12;
    v19[0] = v24;
    v19[1] = v9;
    v19[2] = v26;
    v13 = *(v1 + 104);
    v14 = *(v1 + 136);
    v19[5] = *(v1 + 120);
    v19[6] = v14;
    v19[3] = v10;
    v19[4] = v13;
    sub_1000E8EC0(v19, v18);
    sub_1000E8064(0, 0);
    sub_1000097E8(v20, &qword_10034B1B0, &unk_1002894C0);
    v15 = *(v1 + 88);
    v16 = *(v1 + 120);
    v18[4] = *(v1 + 104);
    v18[5] = v16;
    v18[6] = *(v1 + 136);
    v17 = *(v1 + 56);
    v18[0] = *(v1 + 40);
    v18[1] = v17;
    v18[2] = *(v1 + 72);
    v18[3] = v15;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    sub_1000097E8(v18, &qword_10034B1B0, &unk_1002894C0);
  }
}

uint64_t sub_1001BBB3C()
{
  swift_unknownObjectWeakDestroy();

  sub_1001BC090(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

double sub_1001BBBBC()
{
  xmmword_10038B460 = 0uLL;
  byte_10038B470 = 5;
  *&algn_10038B471[7] = xmmword_100282960;
  *(&xmmword_10038B480 + 1) = 0xD000000000000011;
  unk_10038B490 = 0x80000001002A2BB0;
  *&result = 7105601;
  unk_10038B498 = xmmword_100282970;
  *(&xmmword_10038B4A0 + 1) = _swiftEmptyArrayStorage;
  qword_10038B4B0 = 0;
  byte_10038B4B8 = 1;
  *&xmmword_10038B4C0 = 0xD00000000000002BLL;
  *(&xmmword_10038B4C0 + 1) = 0x80000001002A4380;
  return result;
}

uint64_t CUUserAlertAction.description.getter(unint64_t a1)
{
  sub_1001BBC5C(a1);

  return String.init(cString:)();
}

const char *sub_1001BBC5C(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return "?";
  }

  else
  {
    return off_100310558[a1];
  }
}

uint64_t sub_1001BBC80()
{
  sub_1001BBC5C(*v0);

  return String.init(cString:)();
}

BOOL sub_1001BBCD0(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v5 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = Double.exponent.getter();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = Double.significandWidth.getter();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (v2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (v2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (v2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (v2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1001BBEC0(uint64_t a1, char a2, char a3, char a4)
{
  if (a2)
  {
    v6 = 63;
    v7 = 0xE100000000000000;
  }

  else
  {
    v6 = sub_100110CA8(*&a1);
    v7 = v8;
  }

  v9 = 1702195828;
  if (a3)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (a3)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (a3 == 2)
  {
    v12 = 63;
  }

  else
  {
    v12 = v10;
  }

  if (a3 == 2)
  {
    v13 = 0xE100000000000000;
  }

  else
  {
    v13 = v11;
  }

  if (a4)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v9 = 0x65736C6166;
    v14 = 0xE500000000000000;
  }

  if (a4 == 2)
  {
    v15 = 63;
  }

  else
  {
    v15 = v9;
  }

  if (a4 == 2)
  {
    v16 = 0xE100000000000000;
  }

  else
  {
    v16 = v14;
  }

  _StringGuts.grow(_:)(98);
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  v17._object = 0x80000001002A4100;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v6;
  v18._object = v7;
  String.append(_:)(v18);

  v19._object = 0x80000001002A4130;
  v19._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v12;
  v20._object = v13;
  String.append(_:)(v20);

  v21._object = 0x80000001002A4150;
  v21._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v15;
  v22._object = v16;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.append(_:)(v23);

  return 0x1000000000000203;
}

void sub_1001BC090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {

    sub_1001BC158(a4, a5, a6, a7, a8, a9);
  }
}

void sub_1001BC158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_1001BC1C0(uint64_t a1)
{
  sub_100009848(a1, &v9, &qword_10033A240, &unk_100272E70);
  if (v10)
  {
    sub_10000E754(&v9, v12);
    v2 = v13;
    v3 = v14;
    sub_10000EBC0(v12, v13);
    v10 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v11 = &off_100302540;
    *&v9 = v1;
    v4 = *(v3 + 8);
    v5 = *(v4 + 24);
    v6 = v1;
    v7 = v5(&v9, v2, v4);
    sub_1000097E8(&v9, &unk_10034B540, qword_100270E60);
    sub_10000903C(v12);
  }

  else
  {
    sub_1000097E8(&v9, &qword_10033A240, &unk_100272E70);
    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_1001BC2D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50)
  {
    v5 = v50;
    v6 = sub_1000102F8(v3);

    if (v6)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50)
  {
    v7 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v8 = &off_100302540;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v51 = 0;
    v52 = 0;
  }

  v53 = v7;
  v54 = v8;
  v9 = sub_10001075C(&v50);
  sub_1000097E8(&v50, &unk_10034B540, qword_100270E60);
  if (v9)
  {
    return 1;
  }

  v10 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v10)
  {
    v11 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v12 = &off_100303480;
    v13 = v10;
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
    v51 = 0;
    v52 = 0;
  }

  v50 = v13;
  v53 = v11;
  v54 = v12;
  sub_100009848(&v50, &v45, &qword_10033A240, &unk_100272E70);
  if (v46)
  {
    sub_10000E754(&v45, v47);
    v14 = v48;
    v15 = v49;
    sub_10000EBC0(v47, v48);
    v16 = *(v15 + 8);
    v17 = *(v16 + 48);
    v18 = v10;
    v19 = v17(v3, v14, v16);
    sub_10000903C(v47);
    sub_1000097E8(&v50, &qword_10033A240, &unk_100272E70);
    if (v19)
    {
      return 1;
    }
  }

  else
  {
    v20 = v10;
    sub_1000097E8(&v45, &qword_10033A240, &unk_100272E70);
    sub_1000097E8(&v50, &qword_10033A240, &unk_100272E70);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50)
  {
    v21 = v50;
    sub_1000104F8();
    v23 = v22;
    sub_100008574();
    v25 = sub_1000089FC(v24, v23);

    v26 = *(v25 + 16);

    if (v26)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50)
  {
    v27 = v50;
    sub_1000104F8();
    v29 = v28;
    sub_100008574();
    v31 = sub_1000089FC(v30, v29);

    v32 = *(v31 + 16);

    if (v32)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v35 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  if (v35 >> 62)
  {
LABEL_37:
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = 0;
  do
  {
    v33 = v36 != v37;
    if (v36 == v37)
    {
      break;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v38 = *(v35 + 8 * v37 + 32);
    }

    v39 = v38;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_1000104F8();
    v41 = v40;
    sub_1000104F8();
    v43 = sub_1000089FC(v42, v41);

    v44 = *(v43 + 16);

    ++v37;
  }

  while (!v44);

  return v33;
}

BOOL sub_1001BC78C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v54;
  if (v54)
  {
    v57 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v58 = &off_100303480;
    v54 = v2;
    sub_100009848(&v54, &v49, &qword_10033A240, &unk_100272E70);
    if (v50)
    {
      sub_10000E754(&v49, v51);
      v5 = v52;
      v6 = v53;
      sub_10000EBC0(v51, v52);
      v7 = *(v6 + 8);
      v8 = *(v7 + 8);
      v9 = v4;
      v10 = v2;
      v11 = v8(v5, v7);
      v12 = sub_10000F0CC();
      v13 = sub_1000089FC(v12, v11);

      v14 = *(v13 + 16);

      sub_10000903C(v51);
      sub_1000097E8(&v54, &qword_10033A240, &unk_100272E70);

      if (v14)
      {
        return 1;
      }
    }

    else
    {
      v15 = v2;
      sub_1000097E8(&v49, &qword_10033A240, &unk_100272E70);
      sub_1000097E8(&v54, &qword_10033A240, &unk_100272E70);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v54;
  if (v54)
  {
    v17 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v18 = &off_100302540;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v55 = 0;
    v56 = 0;
  }

  v54 = v16;
  v57 = v17;
  v58 = v18;
  v19 = sub_1000BC0D8(&v54);
  sub_1000097E8(&v54, &unk_10034B540, qword_100270E60);
  if (v19)
  {
    return 1;
  }

  v20 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v20)
  {
    v21 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v22 = &off_100303480;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v55 = 0;
    v56 = 0;
  }

  v54 = v20;
  v57 = v21;
  v58 = v22;
  v23 = v20;
  v24 = sub_1001BE0E4(&v54);
  sub_1000097E8(&v54, &qword_10033A240, &unk_100272E70);
  if (v24)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = v54;
  if (v54)
  {
    sub_100008574();
    v27 = v26;
    v28 = sub_1000BBD2C();
    v29 = sub_1000089FC(v28, v27);

    v30 = *(v29 + 16);

    if (v30)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = v54;
  if (v54)
  {
    sub_100008574();
    v33 = v32;
    v34 = sub_1000BBD2C();
    v35 = sub_1000089FC(v34, v33);

    v36 = *(v35 + 16);

    if (v36)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v39 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
  }

  if (v39 >> 62)
  {
LABEL_37:
    v40 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = 0;
  do
  {
    v37 = v40 != v41;
    if (v40 == v41)
    {
      break;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v42 = *(v39 + 8 * v41 + 32);
    }

    v43 = v42;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_1000104F8();
    v45 = v44;
    v46 = sub_1000BBD2C();
    v47 = sub_1000089FC(v46, v45);

    v48 = *(v47 + 16);

    ++v41;
  }

  while (!v48);

  return v37;
}

uint64_t sub_1001BCC9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v67;
  v61 = v2;
  if (v67)
  {
    v70 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v71 = &off_100302540;
    v67 = v2;
    sub_100009848(&v67, &v62, &unk_10034B540, qword_100270E60);
    if (v63)
    {
      sub_10000E754(&v62, v64);
      v6 = v65;
      v7 = v66;
      sub_10000EBC0(v64, v65);
      v8 = *(v7 + 8);
      v9 = *(v8 + 8);
      v10 = v5;
      v11 = v2;
      v12 = v9(v6, v8);
      v13 = sub_10000F0CC();
      v14 = sub_1000089FC(v13, v12);

      v15 = *(v14 + 16);

      sub_10000903C(v64);
      sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);

      v3 = v2;
      if (v15)
      {
        return 1;
      }
    }

    else
    {
      v16 = v2;
      sub_1000097E8(&v62, &unk_10034B540, qword_100270E60);
      sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v67;
  if (v67)
  {
    v18 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v19 = &off_100302540;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v68 = 0;
    v69 = 0;
  }

  v67 = v17;
  v70 = v18;
  v71 = v19;
  v20 = sub_1000BB924(&v67);
  sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);
  if (v20)
  {
    return 1;
  }

  v21 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v21)
  {
    v22 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v23 = &off_100303480;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v68 = 0;
    v69 = 0;
  }

  v67 = v21;
  v70 = v22;
  v71 = v23;
  v24 = v21;
  v25 = sub_1001BC1C0(&v67);
  sub_1000097E8(&v67, &qword_10033A240, &unk_100272E70);
  if (v25)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = v67;
  if (v67)
  {
    v70 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v71 = &off_100302540;
    v67 = v3;
    sub_100009848(&v67, v64, &unk_10034B540, qword_100270E60);
    v28 = v65;
    if (v65)
    {
      v29 = v66;
      sub_10000EBC0(v64, v65);
      v30 = v3;
      v31 = v27;
      sub_100008574();
      v33 = sub_10015A19C(v32, v28, *(v29 + 8));

      sub_10000903C(v64);
      sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);

      v3 = v61;
      if (v33)
      {
        return 1;
      }
    }

    else
    {
      v34 = v3;
      sub_1000097E8(v64, &unk_10034B540, qword_100270E60);
      sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = v67;
  if (v67)
  {
    v70 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v71 = &off_100302540;
    v67 = v3;
    sub_100009848(&v67, v64, &unk_10034B540, qword_100270E60);
    v36 = v65;
    if (v65)
    {
      v37 = v66;
      sub_10000EBC0(v64, v65);
      v38 = v3;
      v39 = v35;
      sub_100008574();
      v41 = sub_10015A19C(v40, v36, *(v37 + 8));

      sub_10000903C(v64);
      sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);

      v3 = v61;
      if (!v41)
      {
        goto LABEL_25;
      }

      return 1;
    }

    v42 = v3;
    sub_1000097E8(v64, &unk_10034B540, qword_100270E60);
    sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);
  }

LABEL_25:
  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v43 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  if (v43 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v45 = 0;
    v60 = i;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v47 = *(v43 + 8 * v45 + 32);
      }

      v48 = v47;
      v49 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      v70 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
      v71 = &off_100302540;
      v67 = v3;
      sub_100009848(&v67, &v62, &unk_10034B540, qword_100270E60);
      if (v63)
      {
        sub_10000E754(&v62, v64);
        v50 = v65;
        v51 = v66;
        sub_10000EBC0(v64, v65);
        v52 = *(v51 + 8);
        v53 = *(v52 + 8);
        v54 = v61;
        v55 = v53(v50, v52);
        sub_1000104F8();
        v57 = sub_1000089FC(v56, v55);

        v58 = *(v57 + 16);
        v3 = v61;

        sub_10000903C(v64);
        sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);
        if (v58)
        {
          v59 = 1;
          goto LABEL_46;
        }
      }

      else
      {
        v46 = v3;

        sub_1000097E8(&v62, &unk_10034B540, qword_100270E60);
        sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);
      }

      ++v45;
      if (v49 == v60)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_45:
  v59 = 0;
LABEL_46:

  return v59;
}

uint64_t sub_1001BD450(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v64)
  {
    v5 = v64;
    v6 = sub_10000F0CC();
    v7 = sub_10000F0CC();
    v8 = sub_1000089FC(v7, v6);

    v9 = *(v8 + 16);

    if (v9)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v64)
  {
    v10 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v11 = &off_100302540;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v65 = 0;
    v66 = 0;
  }

  v67 = v10;
  v68 = v11;
  v12 = sub_1001AC2F8(&v64);
  sub_1000097E8(&v64, &unk_10034B540, qword_100270E60);
  if (v12)
  {
    return 1;
  }

  v13 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v13)
  {
    v14 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v15 = &off_100303480;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v65 = 0;
    v66 = 0;
  }

  v64 = v13;
  v67 = v14;
  v68 = v15;
  v16 = v13;
  v17 = sub_1001AC320(&v64);
  sub_1000097E8(&v64, &qword_10033A240, &unk_100272E70);
  if (v17)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v64)
  {
    v18 = v64;
    sub_100008574();
    v20 = v19;
    v21 = sub_10000F0CC();
    v22 = sub_1000089FC(v21, v20);

    v23 = *(v22 + 16);

    if (v23)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v64)
  {
    v24 = v64;
    sub_100008574();
    v26 = v25;
    v27 = sub_10000F0CC();
    v28 = sub_1000089FC(v27, v26);

    v29 = *(v28 + 16);

    if (v29)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v30 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  if (v30 >> 62)
  {
    goto LABEL_41;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v31)
  {
    v32 = 0;
    v33 = v30 & 0xC000000000000001;
    v34 = v30 & 0xFFFFFFFFFFFFFF8;
    v61 = v30 & 0xC000000000000001;
    v62 = v30;
    v59 = v31;
    v60 = v30 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v33)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *(v34 + 16))
        {
          goto LABEL_40;
        }

        v35 = *(v30 + 8 * v32 + 32);
      }

      v36 = v35;
      v37 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v38 = [v3 identifier];
      if (v38)
      {

        v39 = [v3 nearbyAuthTag];
        if (v39)
        {
          v40 = v39;
          v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          v43 = [v3 btAddressData];
          if (v43)
          {
            v44 = v43;
            v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            isa = Data._bridgeToObjectiveC()().super.isa;
            v49 = Data._bridgeToObjectiveC()().super.isa;
            v64 = 0;
            v50 = [v36 verifyAuthTag:isa data:v49 type:2 error:&v64];

            if (v50)
            {
              v57 = v64;
              sub_100010708(v45, v47);
              sub_100010708(v63, v42);

              return 1;
            }

            v51 = v64;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_100010708(v63, v42);
            sub_100010708(v45, v47);

            v33 = v61;
            v30 = v62;
            v31 = v59;
            v34 = v60;
          }

          else
          {
            sub_100010708(v63, v42);
          }
        }

        sub_1000104F8();
        v53 = v52;
        v54 = sub_10000F0CC();
        v55 = sub_1000089FC(v54, v53);

        v56 = *(v55 + 16);

        if (v56)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v32;
      if (v37 == v31)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_42:

  return 0;
}