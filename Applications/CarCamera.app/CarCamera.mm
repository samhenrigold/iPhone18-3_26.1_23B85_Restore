__n128 sub_100001B20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001B30(uint64_t a1, int a2)
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

uint64_t sub_100001B50(uint64_t result, int a2, int a3)
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
  if (!qword_10003A2A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10003A2A0);
    }
  }
}

unint64_t sub_100001C00()
{
  result = qword_10003A2A8;
  if (!qword_10003A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A2A8);
  }

  return result;
}

Swift::Int sub_100001C6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001CE0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100001D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100001C00();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100001D90()
{
  sub_100001DCC();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_100001DCC()
{
  result = qword_10003A2B0;
  if (!qword_10003A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A2B0);
  }

  return result;
}

uint64_t sub_100001E20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v59 = a3;
  v58 = sub_1000026FC(&qword_10003A2B8, &qword_100027810);
  __chkstk_darwin(v58);
  v5 = &v57 - v4;
  v6 = sub_1000026FC(&qword_10003A2C0, &qword_100027818);
  __chkstk_darwin(v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  v12 = sub_1000026FC(&qword_10003A2C8, &qword_100027820);
  __chkstk_darwin(v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  __chkstk_darwin(v21);
  v23 = &v57 - v22;
  static Alignment.center.getter();
  if (a2)
  {
    _FrameLayout.init(width:height:alignment:)();
    v24 = sub_1000026FC(&qword_10003A2D0, &qword_100027828);
    (*(*(v24 - 8) + 16))(v8, v57, v24);
    v25 = &v8[*(v6 + 36)];
    v26 = v61;
    *v25 = v60;
    *(v25 + 1) = v26;
    *(v25 + 2) = v62;
    sub_1000026FC(&qword_10003A2D8, &qword_100027830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100027680;
    v28 = static Edge.Set.top.getter();
    *(inited + 32) = v28;
    v29 = static Edge.Set.bottom.getter();
    *(inited + 33) = v29;
    v30 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v28)
    {
      v30 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v29)
    {
      v30 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_100002744(v8, v14, &qword_10003A2C0, &qword_100027818);
    v39 = &v14[*(v12 + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    sub_100002744(v14, v17, &qword_10003A2C8, &qword_100027820);
    v23 = v17;
  }

  else
  {
    _FrameLayout.init(width:height:alignment:)();
    v40 = sub_1000026FC(&qword_10003A2D0, &qword_100027828);
    (*(*(v40 - 8) + 16))(v11, v57, v40);
    v41 = &v11[*(v6 + 36)];
    v42 = v61;
    *v41 = v60;
    *(v41 + 1) = v42;
    *(v41 + 2) = v62;
    sub_1000026FC(&qword_10003A2D8, &qword_100027830);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_100027680;
    v44 = static Edge.Set.leading.getter();
    *(v43 + 32) = v44;
    v45 = static Edge.Set.trailing.getter();
    *(v43 + 33) = v45;
    v46 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v44)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v45)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_100002744(v11, v20, &qword_10003A2C0, &qword_100027818);
    v55 = &v20[*(v12 + 36)];
    *v55 = v46;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    sub_100002744(v20, v23, &qword_10003A2C8, &qword_100027820);
  }

  sub_1000027AC(v23, v5);
  swift_storeEnumTagMultiPayload();
  sub_10000281C();
  _ConditionalContent<>.init(storage:)();
  return sub_1000029E0(v23);
}

uint64_t getEnumTagSinglePayload for SystemButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SystemButtonType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100002520(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_10000254C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraButtonShapeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CameraButtonShapeType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000026FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026FC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000027AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026FC(&qword_10003A2C8, &qword_100027820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000281C()
{
  result = qword_10003A2E0;
  if (!qword_10003A2E0)
  {
    sub_1000028A8(&qword_10003A2C8, &qword_100027820);
    sub_1000028F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A2E0);
  }

  return result;
}

uint64_t sub_1000028A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000028F0()
{
  result = qword_10003A2E8;
  if (!qword_10003A2E8)
  {
    sub_1000028A8(&qword_10003A2C0, &qword_100027818);
    sub_10000297C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A2E8);
  }

  return result;
}

unint64_t sub_10000297C()
{
  result = qword_10003A2F0;
  if (!qword_10003A2F0)
  {
    sub_1000028A8(&qword_10003A2D0, &qword_100027828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A2F0);
  }

  return result;
}

uint64_t sub_1000029E0(uint64_t a1)
{
  v2 = sub_1000026FC(&qword_10003A2C8, &qword_100027820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002A4C()
{
  result = qword_10003A2F8;
  if (!qword_10003A2F8)
  {
    sub_1000028A8(&qword_10003A300, &unk_100027838);
    sub_10000281C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A2F8);
  }

  return result;
}

void *sub_100002AD8()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0;
      v4 = v2 - 1;
      if (v4 >= v0[4])
      {
        v4 = v0[4];
      }

      v0[3] &= ~(v0[3] >> 63);
      v0[4] = v4;
      v5 = qword_10003A258;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000036BC(v6, qword_10003CE48);
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134218496;
        *(v9 + 4) = v3[3];

        *(v9 + 12) = 2048;
        *(v9 + 14) = v3[4];

        *(v9 + 22) = 2048;
        v10 = *(v1 + 16);

        *(v9 + 24) = v10;

        _os_log_impl(&_mh_execute_header, v7, v8, "[safeItems] index [%ld...%ld] from total %ld", v9, 0x20u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v15 = v3[3];
      v16 = v3[4];
      if (v16 < v15)
      {
        __break(1u);
      }

      else if (!__OFADD__(v16++, 1))
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          v18 = *(v1 + 16);
          if (v18 >= v15 && v18 >= v16)
          {
            if ((v16 & 0x8000000000000000) == 0)
            {
              if (v18 == v16 - v15)
              {
                return v1;
              }

LABEL_28:
              sub_1000036F4(v1, v1 + 32, v15, (2 * v16) | 1);
              v21 = v20;

              return v21;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000036BC(v11, qword_10003CE48);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "no items", v14, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100002DAC()
{

  return _swift_deallocClassInstance(v0, 49, 7);
}

uint64_t sub_100002E08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000036BC(v14, qword_10003CE48);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10000B720(0xD000000000000024, 0x8000000100029880, &v32);
    *(v17 + 12) = 2080;
    if (!a7)
    {
      a6 = 0;
    }

    v18 = a3;
    v19 = a4;
    if (a7)
    {
      v20 = a7;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v21 = sub_10000B720(a6, v20, &v32);
    a4 = v19;
    a3 = v18;

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  *(v8 + 32) = a1;
  swift_retain_n();

  *(v8 + 40) = a1;

  if (*(a1 + 48) == 1)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Close button hidden will be hidden in submenu", v24, 2u);
    }

    v25 = *(v8 + 40);
    if (v25)
    {
      *(v25 + 16) = 0;
    }
  }

  if (a3)
  {
    if (a5)
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Missing parameters for update", v28, 2u);
      }
    }

    else
    {
      sub_1000033EC(a4);
    }
  }

  else
  {
    sub_100003164(a2);
  }

  *(v8 + 32) = *(v8 + 40);
}

void sub_100003164(uint64_t a1)
{
  v2 = v1[4];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v1[5];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = *(v2 + 40);
  if (v4)
  {
    if (a1)
    {
      *(v3 + 24) = a1;
      v5 = v1[2];
      v6 = __OFSUB__(v5, 1);
      v7 = v5 - 1;
      if (!v6)
      {
        v8 = *(v4 + 16);
        if (a1 >= 1)
        {
          *(v3 + 17) = 1;
          v6 = __OFSUB__(v7--, 1);
          if (!v6)
          {
LABEL_24:
            v6 = __OFADD__(a1, v7);
            v17 = a1 + v7;
            if (!v6)
            {
              v6 = __OFSUB__(v8, 1);
              v18 = v8 - 1;
              if (!v6)
              {
                if (v17 < v18)
                {
                  *(v3 + 18) = 1;
                  v6 = __OFSUB__(v17--, 1);
                  if (!v6)
                  {
                    goto LABEL_31;
                  }

                  __break(1u);
                }

                *(v3 + 18) = 0;
LABEL_31:
                if (v18 < v17)
                {
                  v17 = v18;
                }

                *(v3 + 32) = v17;
                return;
              }

              goto LABEL_36;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          __break(1u);
LABEL_10:
          if (qword_10003A258 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_1000036BC(v9, qword_10003CE48);
          oslog = Logger.logObject.getter();
          v10 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(oslog, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, oslog, v10, "ERROR: Pager bad state inputs (head)", v11, 2u);
          }

          goto LABEL_18;
        }

LABEL_23:
        *(v3 + 17) = 0;
        goto LABEL_24;
      }
    }

    else
    {
      *(v3 + 17) = 0;
      *(v3 + 24) = 0;
      v16 = v1[2];
      v6 = __OFSUB__(v16, 1);
      v7 = v16 - 1;
      if (!v6)
      {
        v8 = *(v4 + 16);
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v12 = qword_10003A258;

  if (v12 != -1)
  {
LABEL_37:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000036BC(v13, qword_10003CE48);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v14, "ERROR: missing items", v15, 2u);
  }

LABEL_18:
}

void sub_1000033EC(uint64_t a1)
{
  v2 = v1[4];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v1[5];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = *(v4 + 16) - 1;
    if (v5 == a1)
    {
      *(v3 + 18) = 0;
    }

    *(v3 + 32) = a1;
    v6 = v1[2];
    v7 = __OFSUB__(v6, 1);
    v8 = v6 - 1;
    if (v7)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v5 <= a1)
    {
      *(v3 + 18) = 0;
      goto LABEL_23;
    }

    *(v3 + 18) = 1;
    v7 = __OFSUB__(v8--, 1);
    if (!v7)
    {
LABEL_23:
      v7 = __OFSUB__(a1, v8);
      v16 = a1 - v8;
      if (!v7)
      {
        if (v16 >= 1)
        {
          *(v3 + 17) = 1;
          v7 = __OFADD__(v16++, 1);
          if (!v7)
          {
            goto LABEL_29;
          }

          __break(1u);
        }

        *(v3 + 17) = 0;
LABEL_29:
        *(v3 + 24) = v16 & ~(v16 >> 63);
        return;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_11:
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000036BC(v9, qword_10003CE48);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "ERROR: Pager bad state inputs (tail)", v11, 2u);
    }

    goto LABEL_19;
  }

  v12 = qword_10003A258;

  if (v12 != -1)
  {
LABEL_32:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000036BC(v13, qword_10003CE48);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v14, "ERROR: missing items", v15, 2u);
  }

LABEL_19:
}

uint64_t sub_100003658()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000036BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1000036F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000026FC(&qword_10003A588, &qword_100028000);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 96);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

__n128 sub_1000037EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100003808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000038C8@<X0>(uint64_t a1@<X8>)
{
  v41 = type metadata accessor for EnvironmentValues();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v1 + 8);
  v6 = *v1;
  v59 = *v1;
  v7 = v60;
  if (v60 == 1)
  {
    if ((v6 & 1) == 0)
    {
LABEL_3:
      type metadata accessor for ButtonBarLayout(0);
      sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
      *&v48 = EnvironmentObject.init()();
      *(&v48 + 1) = v8;
      *&v49 = sub_100003EF0;
      *(&v49 + 1) = 0;
      v50 = 256;
      sub_100003F4C();
      sub_100003FA0();
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007128(&v59, &qword_10003A590, &qword_100028270);
    (*(v3 + 8))(v5, v41);
    if (v45 != 1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for ButtonBarLayout(0);
  sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
  *&v48 = EnvironmentObject.init()();
  *(&v48 + 1) = v10;
  sub_100003F4C();
  sub_100003FA0();
  v49 = 0uLL;
  v50 = 0;
LABEL_6:
  _ConditionalContent<>.init(storage:)();
  v38 = v46;
  v39 = v45;
  v36 = BYTE1(v47[0]);
  v37 = LOBYTE(v47[0]);
  v11 = v1[6];
  v40 = v7;
  if (v7)
  {
    v12 = v11;
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v13 = v1[4];
    if (v13)
    {
      v14 = v3;
      v15 = 24;
      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for LayoutSize();
    sub_100006D18(&qword_10003AD10, type metadata accessor for LayoutSize, &unk_100029260);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_1000070C0(&v59, &v45, &qword_10003A590, &qword_100028270);
  v16 = v11;
  static os_log_type_t.fault.getter();
  v17 = v5;
  v18 = a1;
  v19 = v3;
  v20 = static Log.runtimeIssuesLog.getter();
  v21 = v41;
  os_log(_:dso:log:_:_:)();

  v3 = v19;
  a1 = v18;
  v5 = v17;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100007128(&v59, &qword_10003A590, &qword_100028270);
  (*(v3 + 8))(v17, v21);
  if (v48 == 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = v1[4];
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v3;
  v15 = 16;
LABEL_13:
  v22 = *(v13 + v15);
  type metadata accessor for ButtonBarLayout(0);
  swift_allocObject();
  sub_1000213C8(v11, v22);
  v24 = v23;

  sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
  v25 = static ObservableObject.environmentStore.getter();
  if (v40)
  {
    v56 = v6 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007128(&v59, &qword_10003A590, &qword_100028270);
    (*(v14 + 8))(v5, v41);
    LOBYTE(v6) = v56;
  }

  v28 = v36;
  v27 = v37;
  v42[71] = v36;
  v30 = v38;
  v29 = v39;
  v43[0] = v39;
  v43[1] = v38;
  LOBYTE(v44[0]) = v37;
  BYTE1(v44[0]) = v36;
  *(v44 + 2) = v57;
  WORD3(v44[0]) = v58;
  *(&v44[0] + 1) = v25;
  *&v44[1] = v24;
  BYTE8(v44[1]) = v6 & 1;
  *(v47 + 9) = *(v44 + 9);
  v46 = v38;
  v47[0] = v44[0];
  v45 = v39;
  v42[64] = 1;
  v31 = v39;
  v32 = v38;
  v33 = v47[1];
  *(a1 + 32) = v44[0];
  *(a1 + 48) = v33;
  *a1 = v31;
  *(a1 + 16) = v32;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v48 = v29;
  v49 = v30;
  LOBYTE(v50) = v27;
  HIBYTE(v50) = v28;
  v52 = v58;
  v51 = v57;
  v53 = v25;
  v54 = v24;
  v55 = v6 & 1;
  sub_1000070C0(v43, v42, &qword_10003A5B0, &qword_1000279C0);
  return sub_100007128(&v48, &qword_10003A5B0, &qword_1000279C0);
}

id sub_100003EF0()
{
  if (qword_10003A298 != -1)
  {
    swift_once();
  }

  v1 = qword_10003CEB8;

  return v1;
}

unint64_t sub_100003F4C()
{
  result = qword_10003A5A0;
  if (!qword_10003A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A5A0);
  }

  return result;
}

unint64_t sub_100003FA0()
{
  result = qword_10003A5A8;
  if (!qword_10003A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A5A8);
  }

  return result;
}

uint64_t sub_100003FF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LayoutDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000026FC(&qword_10003A688, &qword_100027D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = sub_1000026FC(&qword_10003A690, &qword_100027D58);
  sub_1000042B8(a1, &v10[*(v11 + 44)]);
  KeyPath = swift_getKeyPath();
  type metadata accessor for CameraCAFManager(0);
  sub_100006D18(&qword_10003A698, type metadata accessor for CameraCAFManager, &unk_100029598);
  v13 = StateObject.wrappedValue.getter();
  v14 = [*&v13[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_sessionStatus] currentSession];
  if (!v14)
  {

    goto LABEL_5;
  }

  v15 = v14;
  v16 = [v14 configuration];

  LOBYTE(v15) = [v16 rightHandDrive];
  if ((v15 & 1) == 0)
  {
LABEL_5:
    v17 = &enum case for LayoutDirection.leftToRight(_:);
    goto LABEL_6;
  }

  v17 = &enum case for LayoutDirection.rightToLeft(_:);
LABEL_6:
  (*(v5 + 104))(v7, *v17, v4);
  v18 = (a2 + *(sub_1000026FC(&qword_10003A6A0, &qword_100027D90) + 36));
  v19 = sub_1000026FC(&qword_10003A6A8, &qword_100027D98);
  (*(v5 + 32))(v18 + *(v19 + 28), v7, v4);
  *v18 = KeyPath;
  return sub_100002744(v10, a2, &qword_10003A688, &qword_100027D50);
}

uint64_t sub_1000042B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v5 = sub_1000026FC(&qword_10003A6B0, &qword_100027DA0);
  __chkstk_darwin(v5 - 8);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_1000026FC(&qword_10003A5D8, &qword_100027B58);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  sub_1000047D4(a1, &v52 - v14);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &v15[*(sub_1000026FC(&qword_10003A5E0, &qword_100027B60) + 36)];
  v17 = v62;
  *v16 = v61;
  *(v16 + 1) = v17;
  *(v16 + 2) = v63;
  v18 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v15[*(sub_1000026FC(&qword_10003A5E8, &qword_100027B68) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = &v15[*(v11 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  if (*a1)
  {
    v34 = v15;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v58);

    v35 = v59;
    v53 = v58;
    v36 = v60;
    sub_100006D60(v58, v59, v60);
    *v9 = static VerticalAlignment.center.getter();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v37 = sub_1000026FC(&qword_10003A6B8, &qword_100027DA8);
    sub_100004BB8(a1, &v9[*(v37 + 44)]);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v58);

    v38 = v58;
    v39 = v59;
    v40 = v60;
    v55 = v34;
    v41 = v34;
    v42 = v57;
    sub_1000070C0(v41, v57, &qword_10003A5D8, &qword_100027B58);
    v43 = v54;
    sub_1000070C0(v9, v54, &qword_10003A6B0, &qword_100027DA0);
    v52 = v9;
    v44 = v56;
    sub_1000070C0(v42, v56, &qword_10003A5D8, &qword_100027B58);
    v45 = sub_1000026FC(&qword_10003A6C0, &qword_100027DB0);
    v46 = (v44 + v45[12]);
    v47 = v53;
    *v46 = v53;
    v46[1] = v35;
    v46[2] = v36;
    v48 = v44 + v45[16];
    *v48 = 0;
    *(v48 + 8) = 1;
    sub_1000070C0(v43, v44 + v45[20], &qword_10003A6B0, &qword_100027DA0);
    v49 = v44 + v45[24];
    *v49 = 0;
    *(v49 + 8) = 1;
    v50 = (v44 + v45[28]);
    sub_100006D60(v47, v35, v36);
    sub_100006D60(v38, v39, v40);
    sub_1000069B8(v47, v35, v36);
    *v50 = v38;
    v50[1] = v39;
    v50[2] = v40;
    sub_100007128(v52, &qword_10003A6B0, &qword_100027DA0);
    sub_100007128(v55, &qword_10003A5D8, &qword_100027B58);
    sub_1000069B8(v38, v39, v40);
    sub_100007128(v43, &qword_10003A6B0, &qword_100027DA0);
    sub_1000069B8(v47, v35, v36);
    return sub_100007128(v57, &qword_10003A5D8, &qword_100027B58);
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000047D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = sub_1000026FC(&qword_10003A638, &qword_100027CD8);
  __chkstk_darwin(v17[0]);
  v4 = v17 - v3;
  v5 = sub_1000026FC(&qword_10003A640, &qword_100027CE0);
  __chkstk_darwin(v5);
  v7 = (v17 - v6);
  v8 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v8 - 8);
  v10 = (v17 - v9);
  v11 = type metadata accessor for CameraCloseButton(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(v10);

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100007128(v10, &qword_10003AC80, &qword_100027CE8);
      *v7 = 0;
      swift_storeEnumTagMultiPayload();
      sub_1000026FC(&qword_10003A648, &qword_100027D38);
      sub_100006A04();
      sub_100006AEC();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      sub_100006BCC(v10, v14);
      sub_100008F28(0);
      sub_100008F28(128);
      v16 = static AnyTransition.asymmetric(insertion:removal:)();

      sub_100006C30(v14, v4);
      *&v4[*(v17[0] + 36)] = v16;
      sub_1000070C0(v4, v7, &qword_10003A638, &qword_100027CD8);
      swift_storeEnumTagMultiPayload();
      sub_1000026FC(&qword_10003A648, &qword_100027D38);
      sub_100006A04();
      sub_100006AEC();
      _ConditionalContent<>.init(storage:)();
      sub_100007128(v4, &qword_10003A638, &qword_100027CD8);
      return sub_100006C94(v14);
    }
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100004BB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000026FC(&qword_10003A6C8, &qword_100027DB8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - v6;
  v8 = sub_1000026FC(&qword_10003A6D0, &qword_100027DC0);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v14 = *a1;
  v24 = sub_100006DA4(*a1, a1[1]);
  if (v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v25);

    v15 = v25;
    if (v25)
    {
      v16 = static VerticalAlignment.center.getter();

      *v7 = v16;
      *(v7 + 1) = 0x4010000000000000;
      v7[16] = 0;
      v23[1] = *(sub_1000026FC(&qword_10003A6E0, &qword_100027DD0) + 44);
      v25 = v15;
      swift_getKeyPath();
      sub_1000026FC(&qword_10003AC90, &qword_100027CA8);
      sub_100007210(&qword_10003A628, &qword_10003AC90, &qword_100027CA8, &protocol conformance descriptor for [A]);
      sub_100006900();
      ForEach<>.init(_:id:content:)();
      sub_100002744(v7, v13, &qword_10003A6C8, &qword_100027DB8);
      v17 = 0;
    }

    else
    {

      v17 = 1;
    }

    (*(v5 + 56))(v13, v17, 1, v4);
    v18 = v24;
    v19 = v24 & 1;
    sub_1000070C0(v13, v10, &qword_10003A6D0, &qword_100027DC0);
    *a2 = 0;
    *(a2 + 8) = v19;
    *(a2 + 9) = (v18 & 1) == 0;
    v20 = sub_1000026FC(&qword_10003A6D8, &qword_100027DC8);
    sub_1000070C0(v10, a2 + *(v20 + 48), &qword_10003A6D0, &qword_100027DC0);
    v21 = a2 + *(v20 + 64);
    *v21 = 0;
    *(v21 + 8) = 1;
    sub_100007128(v13, &qword_10003A6D0, &qword_100027DC0);
    return sub_100007128(v10, &qword_10003A6D0, &qword_100027DC0);
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100004F98@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004FC8(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_100005090@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_1000026FC(&qword_10003A680, &qword_100027D48);
  return sub_100003FF4(v7, a2 + *(v5 + 44));
}

uint64_t sub_1000050FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1000026FC(&qword_10003A5D0, &qword_100027B50);
  __chkstk_darwin(v10 - 8);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v118 - v14;
  v16 = sub_1000026FC(&qword_10003A5D8, &qword_100027B58);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v118 - v21;
  sub_100005AE8(a1, &v118 - v21);
  static Alignment.center.getter();
  v130 = a4;
  _FrameLayout.init(width:height:alignment:)();
  v23 = &v22[*(sub_1000026FC(&qword_10003A5E0, &qword_100027B60) + 36)];
  v24 = v193;
  *v23 = v192;
  *(v23 + 1) = v24;
  *(v23 + 2) = v194;
  v25 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v22[*(sub_1000026FC(&qword_10003A5E8, &qword_100027B68) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v36 = &v22[*(v17 + 44)];
  *v36 = v35;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  if (a1)
  {
    v126 = v22;
    v127 = a3;
    v128 = v12;
    v129 = v19;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v181);

    v41 = v182;
    v125 = a5;
    if (v182)
    {
      v42 = v181;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v123 = v197;
      v124 = v195;
      v121 = v200;
      v122 = v199;
      LOBYTE(v159) = BYTE8(v42) & 1;
      LOBYTE(v157[0]) = v196;
      LOBYTE(v155[0]) = v198;
      sub_1000068B4(v42, BYTE8(v42) & 1);

      v120 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = v159;
      v52 = v15;
      v53 = v157[0];
      v54 = a1;
      v55 = a2;
      v56 = v155[0];
      LOBYTE(v181) = 0;
      v119 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      sub_1000068C0(v42, BYTE8(v42) & 1);

      *&v170 = v42;
      BYTE8(v170) = v51;
      *&v171 = v41;
      *(&v171 + 1) = v124;
      LOBYTE(v172) = v53;
      v15 = v52;
      *(&v172 + 1) = v123;
      LOBYTE(v173) = v56;
      a2 = v55;
      a1 = v54;
      *(&v173 + 1) = v122;
      *&v174 = v121;
      BYTE8(v174) = v120;
      *&v175 = v44;
      *(&v175 + 1) = v46;
      *&v176 = v48;
      *(&v176 + 1) = v50;
      LOBYTE(v177) = 0;
      BYTE8(v177) = v119;
      *&v178 = v58;
      *(&v178 + 1) = v60;
      *&v179 = v62;
      *(&v179 + 1) = v64;
      v180 = 0;
      nullsub_1();
      v189 = v178;
      v190 = v179;
      v191 = v180;
      v185 = v174;
      v186 = v175;
      v188 = v177;
      v187 = v176;
      v181 = v170;
      v182 = v171;
      v184 = v173;
      v183 = v172;
    }

    else
    {
      sub_10000688C(&v181);
    }

    *v15 = static HorizontalAlignment.center.getter();
    *(v15 + 1) = 0;
    v15[16] = 0;
    v65 = sub_1000026FC(&qword_10003A5F0, &qword_100027BB8);
    sub_100005EC8(a1, a2, &v15[*(v65 + 44)]);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v170);

    v66 = v171;
    if (v171)
    {
      v67 = v170;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v130 = v201;
      v123 = v205;
      v124 = v203;
      v122 = v206;
      LOBYTE(v157[0]) = BYTE8(v67) & 1;
      LOBYTE(v155[0]) = v202;
      LOBYTE(v153[0]) = v204;
      sub_1000068B4(v67, BYTE8(v67) & 1);

      v68 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v77 = v157[0];
      v78 = v15;
      v79 = v155[0];
      v80 = v153[0];
      LOBYTE(v170) = 0;
      v81 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v89 = v88;
      sub_1000068C0(v67, BYTE8(v67) & 1);

      *&v159 = v67;
      BYTE8(v159) = v77;
      *&v160 = v66;
      *(&v160 + 1) = v130;
      LOBYTE(v161) = v79;
      v15 = v78;
      *(&v161 + 1) = v124;
      LOBYTE(v162) = v80;
      *(&v162 + 1) = v123;
      *&v163 = v122;
      BYTE8(v163) = v68;
      *&v164 = v70;
      *(&v164 + 1) = v72;
      *&v165 = v74;
      *(&v165 + 1) = v76;
      LOBYTE(v166) = 0;
      BYTE8(v166) = v81;
      *&v167 = v83;
      *(&v167 + 1) = v85;
      *&v168 = v87;
      *(&v168 + 1) = v89;
      v169 = 0;
      nullsub_1();
      v178 = v167;
      v179 = v168;
      v180 = v169;
      v174 = v163;
      v175 = v164;
      v177 = v166;
      v176 = v165;
      v170 = v159;
      v171 = v160;
      v173 = v162;
      v172 = v161;
    }

    else
    {
      sub_10000688C(&v170);
    }

    v90 = v126;
    v91 = v129;
    sub_1000070C0(v126, v129, &qword_10003A5D8, &qword_100027B58);
    v150 = v189;
    v151 = v190;
    v152 = v191;
    v146 = v185;
    v147 = v186;
    v148 = v187;
    v149 = v188;
    v142 = v181;
    v143 = v182;
    v144 = v183;
    v145 = v184;
    v92 = v128;
    sub_1000070C0(v15, v128, &qword_10003A5D0, &qword_100027B50);
    v139 = v178;
    v140 = v179;
    v141 = v180;
    v135 = v174;
    v136 = v175;
    v137 = v176;
    v138 = v177;
    v131 = v170;
    v132 = v171;
    v133 = v172;
    v134 = v173;
    v93 = v127;
    sub_1000070C0(v91, v127, &qword_10003A5D8, &qword_100027B58);
    v94 = sub_1000026FC(&qword_10003A5F8, &qword_100027C08);
    v95 = v94[12];
    v96 = v151;
    v153[8] = v150;
    v153[9] = v151;
    v97 = v146;
    v98 = v147;
    v153[4] = v146;
    v153[5] = v147;
    v100 = v148;
    v99 = v149;
    v153[6] = v148;
    v153[7] = v149;
    v101 = v142;
    v102 = v143;
    v153[0] = v142;
    v153[1] = v143;
    v104 = v144;
    v103 = v145;
    v153[2] = v144;
    v153[3] = v145;
    v105 = v93 + v95;
    *(v105 + 128) = v150;
    *(v105 + 144) = v96;
    *(v105 + 64) = v97;
    *(v105 + 80) = v98;
    *(v105 + 96) = v100;
    *(v105 + 112) = v99;
    *v105 = v101;
    *(v105 + 16) = v102;
    v154 = v152;
    *(v105 + 160) = v152;
    *(v105 + 32) = v104;
    *(v105 + 48) = v103;
    sub_1000070C0(v92, v93 + v94[16], &qword_10003A5D0, &qword_100027B50);
    v106 = v94[20];
    v107 = v140;
    v155[8] = v139;
    v155[9] = v140;
    v109 = v137;
    v108 = v138;
    v155[6] = v137;
    v155[7] = v138;
    v110 = v135;
    v111 = v136;
    v155[4] = v135;
    v155[5] = v136;
    v112 = v131;
    v113 = v132;
    v155[0] = v131;
    v155[1] = v132;
    v115 = v133;
    v114 = v134;
    v155[2] = v133;
    v155[3] = v134;
    v116 = v93 + v106;
    *(v116 + 128) = v139;
    *(v116 + 144) = v107;
    *(v116 + 64) = v110;
    *(v116 + 80) = v111;
    *(v116 + 96) = v109;
    *(v116 + 112) = v108;
    *v116 = v112;
    *(v116 + 16) = v113;
    v156 = v141;
    *(v116 + 160) = v141;
    *(v116 + 32) = v115;
    *(v116 + 48) = v114;
    sub_1000070C0(v153, &v159, &qword_10003A600, &qword_100027C10);
    sub_1000070C0(v155, &v159, &qword_10003A600, &qword_100027C10);
    sub_100007128(v15, &qword_10003A5D0, &qword_100027B50);
    sub_100007128(v90, &qword_10003A5D8, &qword_100027B58);
    v157[8] = v139;
    v157[9] = v140;
    v158 = v141;
    v157[4] = v135;
    v157[5] = v136;
    v157[6] = v137;
    v157[7] = v138;
    v157[0] = v131;
    v157[1] = v132;
    v157[2] = v133;
    v157[3] = v134;
    sub_100007128(v157, &qword_10003A600, &qword_100027C10);
    sub_100007128(v92, &qword_10003A5D0, &qword_100027B50);
    v167 = v150;
    v168 = v151;
    v169 = v152;
    v163 = v146;
    v164 = v147;
    v166 = v149;
    v165 = v148;
    v159 = v142;
    v160 = v143;
    v162 = v145;
    v161 = v144;
    sub_100007128(&v159, &qword_10003A600, &qword_100027C10);
    return sub_100007128(v91, &qword_10003A5D8, &qword_100027B58);
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100005AE8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v18[0] = sub_1000026FC(&qword_10003A638, &qword_100027CD8);
  __chkstk_darwin(v18[0]);
  v5 = v18 - v4;
  v6 = sub_1000026FC(&qword_10003A640, &qword_100027CE0);
  __chkstk_darwin(v6);
  v8 = (v18 - v7);
  v9 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v9 - 8);
  v11 = (v18 - v10);
  v12 = type metadata accessor for CameraCloseButton(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(v11);

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_100007128(v11, &qword_10003AC80, &qword_100027CE8);
      *v8 = 0;
      swift_storeEnumTagMultiPayload();
      sub_1000026FC(&qword_10003A648, &qword_100027D38);
      sub_100006A04();
      sub_100006AEC();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      sub_100006BCC(v11, v15);
      sub_100008F28(0);
      sub_100008F28(128);
      v17 = static AnyTransition.asymmetric(insertion:removal:)();

      sub_100006C30(v15, v5);
      *&v5[*(v18[0] + 36)] = v17;
      sub_1000070C0(v5, v8, &qword_10003A638, &qword_100027CD8);
      swift_storeEnumTagMultiPayload();
      sub_1000026FC(&qword_10003A648, &qword_100027D38);
      sub_100006A04();
      sub_100006AEC();
      _ConditionalContent<>.init(storage:)();
      sub_100007128(v5, &qword_10003A638, &qword_100027CD8);
      return sub_100006C94(v15);
    }
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100005EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000026FC(&qword_10003A608, &qword_100027C18);
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = sub_1000026FC(&qword_10003A610, &qword_100027C20);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  v24 = sub_1000062B8(a1, a2);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v26);

    v15 = v26;
    if (v26)
    {
      *v8 = static HorizontalAlignment.center.getter();
      *(v8 + 1) = 0;
      v8[16] = 1;
      v23[2] = *(sub_1000026FC(&qword_10003A620, &qword_100027C78) + 44);
      v26 = v15;
      v23[1] = swift_getKeyPath();
      sub_1000026FC(&qword_10003AC90, &qword_100027CA8);
      sub_100007210(&qword_10003A628, &qword_10003AC90, &qword_100027CA8, &protocol conformance descriptor for [A]);
      sub_100006900();
      ForEach<>.init(_:id:content:)();
      sub_100002744(v8, v14, &qword_10003A608, &qword_100027C18);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    (*(v25 + 56))(v14, v16, 1, v6);
    v17 = v24;
    v18 = v24 & 1;
    v19 = sub_1000062B8(a1, a2) & 1;
    sub_1000070C0(v14, v11, &qword_10003A610, &qword_100027C20);
    *a3 = 0;
    *(a3 + 8) = v18;
    *(a3 + 9) = (v17 & 1) == 0;
    v20 = sub_1000026FC(&qword_10003A618, &qword_100027C70);
    sub_1000070C0(v11, a3 + *(v20 + 48), &qword_10003A610, &qword_100027C20);
    v21 = a3 + *(v20 + 64);
    *v21 = 0;
    *(v21 + 8) = v19;
    *(v21 + 9) = v19 == 0;
    sub_100007128(v14, &qword_10003A610, &qword_100027C20);
    return sub_100007128(v11, &qword_10003A610, &qword_100027C20);
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000062B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter(&v12);

    if (v14)
    {
      sub_1000069B8(v12, v13, v14);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v12);

      v2 = v14;
      if (v14)
      {
        v3 = v12;
        v4 = v13;

        sub_1000069B8(v3, v4, v2);
        return 1;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v12);

    v6 = v14;
    if (v14)
    {
      v7 = v12;
      v8 = v13;

      v9 = v7;
      v10 = v8;
      v11 = v6;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v12);

      v11 = v14;
      if (!v14)
      {
        return 1;
      }

      v9 = v12;
      v10 = v13;
    }

    sub_1000069B8(v9, v10, v11);
    return 0;
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_1000064FC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v16[0] = a1[4];
  *(v16 + 9) = *(a1 + 73);
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  KeyPath = swift_getKeyPath();
  sub_10000695C(&v12, v11);
  type metadata accessor for ButtonBarLayout(0);
  sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
  v6 = EnvironmentObject.init()();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 9) = v11[0];
  *(a2 + 12) = *(v11 + 3);
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v8;
  *(a2 + 96) = v16[0];
  *(a2 + 105) = *(v16 + 9);
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_100006600@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = sub_1000026FC(&qword_10003A5C8, &qword_100027B48);
  return sub_1000050FC(v5, v4, a2 + *(v6 + 44), 22.0, 2.0);
}

__n128 sub_100006674(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006688(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1000066E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10000674C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1000067A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_10000688C(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000068B4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1000068C0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1000068D4@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100006900()
{
  result = qword_10003A630;
  if (!qword_10003A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A630);
  }

  return result;
}

uint64_t sub_1000069B8(uint64_t result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000068C0(result, a2 & 1);
  }

  return result;
}

unint64_t sub_100006A04()
{
  result = qword_10003A650;
  if (!qword_10003A650)
  {
    sub_1000028A8(&qword_10003A638, &qword_100027CD8);
    sub_100006D18(&qword_10003A658, type metadata accessor for CameraCloseButton, &unk_100028CE0);
    sub_100007210(&qword_10003A660, &qword_10003A668, &qword_100027D40, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A650);
  }

  return result;
}

unint64_t sub_100006AEC()
{
  result = qword_10003A670;
  if (!qword_10003A670)
  {
    sub_1000028A8(&qword_10003A648, &qword_100027D38);
    sub_100006B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A670);
  }

  return result;
}

unint64_t sub_100006B78()
{
  result = qword_10003A678;
  if (!qword_10003A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A678);
  }

  return result;
}

uint64_t sub_100006BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraCloseButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraCloseButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006C94(uint64_t a1)
{
  v2 = type metadata accessor for CameraCloseButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006D60(uint64_t result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000068B4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100006DA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter(&v12);

    if (v14)
    {
      sub_1000069B8(v12, v13, v14);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v12);

      if (!v14)
      {

        return 1;
      }

      sub_1000069B8(v12, v13, v14);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v12);

    if (v14)
    {
      sub_1000069B8(v12, v13, v14);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v12);

      v2 = v14;
      if (v14)
      {
        v3 = v12;
        v4 = v13;

        sub_1000069B8(v3, v4, v2);
        return 1;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v12);

    v6 = v14;
    if (v14)
    {
      v7 = v12;
      v8 = v13;

      v9 = v7;
      v10 = v8;
      v11 = v6;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v12);

      v11 = v14;
      if (!v14)
      {
        return 1;
      }

      v9 = v12;
      v10 = v13;
    }

    sub_1000069B8(v9, v10, v11);
    return 0;
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100006D18(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000070C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026FC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007128(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000026FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007210(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100007268(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000727C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000072D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_100007364@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(v2 + 8);
  v8 = *v2;
  v24 = *v2;
  if (v25 != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007128(&v24, &qword_10003A590, &qword_100028270);
    (*(v5 + 8))(v7, v4);
    if ((v23 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = static HorizontalAlignment.center.getter();
    v20 = 1;
    v12 = static Alignment.center.getter();
    v14 = v13;
    sub_10000791C(v2, v21);
    memcpy(v17, v21, 0x118uLL);
    memcpy(v18, v21, 0x118uLL);
    sub_1000070C0(v17, v19, &qword_10003A708, &qword_100027F00);
    sub_100007128(v18, &qword_10003A708, &qword_100027F00);
    memcpy(&v21[5], v17, 0x118uLL);
    v21[0] = v11;
    v21[1] = 0;
    LOBYTE(v21[2]) = v20;
    v21[3] = v12;
    v21[4] = v14;
    sub_100007FE8(v21);
    goto LABEL_6;
  }

  v23 = v8 & 1;
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = static VerticalAlignment.center.getter();
  v20 = 1;
  sub_100007720(v2, v21);
  memcpy(v17, v21, sizeof(v17));
  memcpy(v18, v21, sizeof(v18));
  sub_1000070C0(v17, v19, &qword_10003A730, &qword_100027F18);
  sub_100007128(v18, &qword_10003A730, &qword_100027F18);
  memcpy(&v16[7], v17, 0x148uLL);
  v21[0] = v9;
  v21[1] = 0;
  LOBYTE(v21[2]) = v20;
  memcpy(&v21[2] + 1, v16, 0x14FuLL);
  sub_100007FF4(v21);
LABEL_6:
  memcpy(v19, v21, 0x161uLL);
  sub_1000026FC(&qword_10003A710, &qword_100027F08);
  sub_1000026FC(&qword_10003A718, &qword_100027F10);
  sub_100007210(&qword_10003A720, &qword_10003A710, &qword_100027F08, &protocol conformance descriptor for HStack<A>);
  sub_100007210(&qword_10003A728, &qword_10003A718, &qword_100027F10, &protocol conformance descriptor for VStack<A>);
  _ConditionalContent<>.init(storage:)();
  return memcpy(a1, v22, 0x161uLL);
}

uint64_t sub_100007720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_10000791C(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  sub_1000070C0(__dst, v16, &qword_10003A708, &qword_100027F00);
  sub_100007128(v19, &qword_10003A708, &qword_100027F00);
  memcpy(v20, __dst, sizeof(v20));
  v7 = a1[5];
  if (v7)
  {
    *__src = a1[4];
    *&__src[8] = v7;
    sub_1000080A4();

    v8 = Text.init<A>(_:)();
    v7 = v9;
    v11 = v10;
    v13 = v12 & 1;
    sub_100008040(v8, v9, v12 & 1);
  }

  else
  {
    v8 = 0;
    v13 = 0;
    v11 = 0;
  }

  v15[0] = v4;
  v15[1] = v6;
  memcpy(&v15[2], v20, 0x118uLL);
  memcpy(v16, v15, sizeof(v16));
  sub_1000070C0(v15, __src, &qword_10003A738, &qword_100027F20);
  sub_100007FFC(v8, v7, v13, v11);
  sub_100008050(v8, v7, v13, v11);
  memcpy(a2, v16, 0x128uLL);
  a2[37] = v8;
  a2[38] = v7;
  a2[39] = v13;
  a2[40] = v11;
  sub_100008050(v8, v7, v13, v11);
  *__src = v4;
  *&__src[8] = v6;
  memcpy(&__src[16], v20, 0x118uLL);
  return sub_100007128(__src, &qword_10003A738, &qword_100027F20);
}

uint64_t sub_10000791C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v7 = v75;
  v8 = v76;
  v29 = v76;
  v27 = v77;
  v9 = v78;
  v26 = v79;
  v10 = v80;
  (*(v4 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v3);
  v11 = Color.init(_:red:green:blue:opacity:)();
  v28 = v11;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v74[6] = v81;
  *&v74[22] = v82;
  *&v74[38] = v83;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v25 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v87 = *(a1 + 1);
  v60[0] = *(a1 + 1);
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  if (LOBYTE(v53[0]))
  {
    v13 = -6.28318531;
  }

  else
  {
    v13 = 0.0;
  }

  static UnitPoint.center.getter();
  v15 = v14;
  v17 = v16;
  v85 = *a1;
  v86 = *(a1 + 8);
  v84 = *(a1 + 2);
  v18 = swift_allocObject();
  v19 = *(a1 + 1);
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = *(a1 + 2);
  *&v49 = v7;
  *(&v49 + 1) = __PAIR64__(v27, v8);
  v20 = v27;
  *&v50 = v9;
  v21 = v26;
  *(&v50 + 1) = v26;
  *&v51 = v10;
  *(&v51 + 1) = v11;
  *v52 = 256;
  *&v52[48] = *&v74[46];
  *&v52[34] = *&v74[32];
  *&v52[18] = *&v74[16];
  *&v52[2] = *v74;
  v42[0] = v49;
  v42[1] = v50;
  *&v42[6] = *&v52[48];
  v42[4] = *&v52[16];
  v42[5] = *&v52[32];
  v42[2] = v51;
  v42[3] = *v52;
  v24 = xmmword_100027E00;
  v53[1] = v46;
  v53[2] = v47;
  v53[0] = xmmword_100027E00;
  *&v54 = v48;
  *(&v54 + 1) = KeyPath;
  v22 = v25;
  *&v55[0] = v25;
  *(&v55[1] + 8) = v44;
  *(&v55[2] + 8) = v45;
  *(v55 + 8) = v43;
  *(&v55[3] + 1) = v13;
  *&v56 = v15;
  *(&v56 + 1) = v17;
  *&v57 = sub_10000814C;
  *(&v57 + 1) = v18;
  v59 = 0;
  v58 = 0;
  *(&v42[16] + 8) = 0u;
  *(&v42[8] + 8) = v47;
  *(&v42[7] + 8) = v46;
  *(&v42[6] + 8) = xmmword_100027E00;
  *(&v42[12] + 8) = v55[2];
  *(&v42[11] + 8) = v55[1];
  *(&v42[10] + 8) = v55[0];
  *(&v42[9] + 8) = v54;
  *(&v42[15] + 8) = v57;
  *(&v42[14] + 8) = v56;
  *(&v42[13] + 8) = v55[3];
  memcpy(v30, v42, 0x118uLL);
  v60[0] = v24;
  v60[1] = v46;
  v60[2] = v47;
  v64 = v43;
  v61 = v48;
  v62 = KeyPath;
  v63 = v22;
  v65 = v44;
  v66 = v45;
  v67 = v13;
  v68 = v15;
  v69 = v17;
  v70 = sub_10000814C;
  v71 = v18;
  v73 = 0;
  v72 = 0;
  sub_1000070C0(&v85, &v31, &qword_10003A590, &qword_100028270);
  sub_1000070C0(&v87, &v31, &qword_10003A748, &qword_100027F58);
  sub_1000070C0(&v84, &v31, &qword_10003ACA0, &qword_100027F60);
  sub_1000070C0(&v49, &v31, &qword_10003A750, &qword_100027F68);
  sub_1000070C0(v53, &v31, &qword_10003A758, &qword_100027F70);
  sub_100007128(v60, &qword_10003A758, &qword_100027F70);
  v31 = v7;
  v32 = v29;
  v33 = v20;
  v34 = v9;
  v35 = v21;
  v36 = v10;
  v37 = v28;
  v38 = 256;
  v39 = *v74;
  v40 = *&v74[16];
  v41[0] = *&v74[32];
  *(v41 + 14) = *&v74[46];
  return sub_100007128(&v31, &qword_10003A750, &qword_100027F68);
}

uint64_t sub_100007E48(uint64_t a1)
{
  static Animation.linear(duration:)();
  Animation.repeatForever(autoreverses:)();

  withAnimation<A>(_:_:)();
}

uint64_t sub_100007ED8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_1000070C0(&v4, v2, &qword_10003A760, &qword_100027F78);
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_100007128(&v3, &qword_10003A748, &qword_100027F58);
}

uint64_t sub_100007FFC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100008040(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100008040(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100008050(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100008094(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100008094(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000080A4()
{
  result = qword_10003A740;
  if (!qword_10003A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A740);
  }

  return result;
}

uint64_t sub_100008100()
{
  sub_1000068C0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100008174()
{
  result = qword_10003A768;
  if (!qword_10003A768)
  {
    sub_1000028A8(&qword_10003A770, &unk_100027F80);
    sub_100007210(&qword_10003A720, &qword_10003A710, &qword_100027F08, &protocol conformance descriptor for HStack<A>);
    sub_100007210(&qword_10003A728, &qword_10003A718, &qword_100027F10, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A768);
  }

  return result;
}

char *sub_100008258(void *a1, char a2)
{
  v5 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v6 = OBJC_IVAR____TtC9CarCamera19CameraWindowManager_window;
  *&v2[OBJC_IVAR____TtC9CarCamera19CameraWindowManager_window] = v5;
  [v5 setAutoresizesSubviews:1];
  [*&v2[v6] setHidden:0];
  [*&v2[v6] makeKeyAndVisible];
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CameraWindowManager();
  v7 = objc_msgSendSuper2(&v16, "init");
  v8 = *&v7[OBJC_IVAR____TtC9CarCamera19CameraWindowManager_window];
  v9 = type metadata accessor for CameraViewController();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC9CarCamera20CameraViewController_presentationMode] = a2;
  v15.receiver = v10;
  v15.super_class = v9;
  v11 = v7;
  v12 = v8;
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  [v12 setRootViewController:{v13, v15.receiver, v15.super_class}];

  return v11;
}

id sub_1000083BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CameraWindowManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for CameraPresentationMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraPresentationMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100008578(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10000858C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_100008640(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 _FBSScene];
    v7 = [v6 settings];

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();

    if (v8)
    {
      v9 = OBJC_IVAR____TtC9CarCamera19CameraSceneDelegate_clusterWindowManager;
    }

    else
    {
      v9 = OBJC_IVAR____TtC9CarCamera19CameraSceneDelegate_consoleWindowManager;
    }

    v13 = *(v1 + v9);
    *(v1 + v9) = 0;
  }

  else
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000036BC(v10, qword_10003CE48);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "[CameraSceneDelegate] Received an unknown scene, ignoring.", v12, 2u);
    }

    v13 = oslog;
  }
}

id sub_10000891C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000089C0(void *a1, void *a2)
{
  v3 = v2;
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = a1;
  v9 = [a2 role];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {

LABEL_8:
      if (qword_10003A258 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000036BC(v16, qword_10003CE48);
      oslog = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v17, "[CameraSceneDelegate] Received an unknown scene, ignoring.", v18, 2u);
      }

      return;
    }
  }

  v19 = v8;
  v20 = [v7 _FBSScene];
  v21 = [v20 settings];

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v22 = objc_allocWithZone(type metadata accessor for CameraWindowManager());
    v23 = sub_100008258(v7, 2);
    v24 = *(v3 + OBJC_IVAR____TtC9CarCamera19CameraSceneDelegate_clusterWindowManager);
    *(v3 + OBJC_IVAR____TtC9CarCamera19CameraSceneDelegate_clusterWindowManager) = v23;
  }

  else
  {

    v25 = [v7 _FBSScene];
    v26 = [v25 settings];

    v45 = v26;
    sub_100008E90();
    if (swift_dynamicCast())
    {

      [v7 _safeAreaInsetsForInterfaceOrientation:1];
      if (qword_10003A258 != -1)
      {
        *&osloga = v27;
        v41 = v28;
        swift_once();
        v28 = v41;
        v27 = *&osloga;
      }

      v29 = v27 + v28;
      v30 = type metadata accessor for Logger();
      sub_1000036BC(v30, qword_10003CE48);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v45 = v34;
        *v33 = 136315138;
        v35 = String.init<A>(describing:)();
        v37 = sub_10000B720(v35, v36, &v45);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "[CameraSceneDelegate] received UICarPlayApplicationSceneSettings - orientation %s", v33, 0xCu);
        sub_100008EDC(v34);
      }

      v38 = objc_allocWithZone(type metadata accessor for CameraWindowManager());
      v39 = sub_100008258(v7, v29 != 0.0);
      v40 = *(v3 + OBJC_IVAR____TtC9CarCamera19CameraSceneDelegate_consoleWindowManager);
      *(v3 + OBJC_IVAR____TtC9CarCamera19CameraSceneDelegate_consoleWindowManager) = v39;
    }

    else
    {
    }
  }
}

unint64_t sub_100008E90()
{
  result = qword_10003A848;
  if (!qword_10003A848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003A848);
  }

  return result;
}

uint64_t sub_100008EDC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100008F28(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x80) != 0)
  {
    if ((a1 & 0x7F) != 0)
    {
      if ((a1 & 0x7F) != 1)
      {
        static AnyTransition.opacity.getter();
        static Animation.spring(response:dampingFraction:blendDuration:)();
        AnyTransition.animation(_:)();

        static AnyTransition.scale.getter();
        static Animation.spring(response:dampingFraction:blendDuration:)();
        AnyTransition.animation(_:)();

        v3 = AnyTransition.combined(with:)();
        goto LABEL_11;
      }

      static AnyTransition.opacity.getter();
      static Animation.spring(response:dampingFraction:blendDuration:)();
LABEL_10:
      v3 = AnyTransition.animation(_:)();
LABEL_11:
      v2 = v3;
      goto LABEL_12;
    }

    static AnyTransition.scale.getter();
    static Animation.spring(response:dampingFraction:blendDuration:)();
LABEL_9:
    Animation.delay(_:)();

    goto LABEL_10;
  }

  static AnyTransition.scale.getter();
  if (v1 != 1)
  {
    static Animation.spring(response:dampingFraction:blendDuration:)();
    goto LABEL_9;
  }

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  static AnyTransition.opacity.getter();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  v2 = AnyTransition.combined(with:)();
LABEL_12:

  return v2;
}

uint64_t sub_100009164()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 8);
  v5 = *v0;
  v9 = *v0;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007128(&v9, &qword_10003A590, &qword_100028270);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1000092C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    swift_beginAccess();
    v5 = *(v3 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
    static Published.subscript.getter(&v39);

    v54[0] = v39;
    v54[2] = v41;
    v54[3] = v42;
    v55[0] = v43[0];
    *(v55 + 9) = *(v43 + 9);
    v54[1] = v40;
    if (!*(&v39 + 1))
    {

      v12 = v2[5];
      v57 = v2[4];
      v58 = v12;
      v59[0] = v2[6];
      v13 = v59[0];
      *(v59 + 9) = *(v2 + 105);
      v14 = v2[3];
      v56[0] = v2[2];
      v56[1] = v14;
      *&v38[9] = *(v59 + 9);
      v36 = v57;
      v37 = v12;
      *v38 = v13;
      v34 = v56[0];
      v35 = v14;
      sub_10000695C(v56, &v39);
      sub_100008F28(1);
      sub_100008F28(129);
      v15 = static AnyTransition.asymmetric(insertion:removal:)();

      v47 = v36;
      v48 = v37;
      v49 = *v38;
      v50 = *&v38[16];
      v45 = v34;
      v46 = v35;
      v51 = 0x3FF0000000000000;
      v52 = v15;
      v53 = 1;
LABEL_11:
      sub_1000026FC(&qword_10003A920, &qword_1000281B0);
      sub_1000026FC(&qword_10003A928, &qword_1000281B8);
      sub_100009F34();
      sub_10000A154();
      result = _ConditionalContent<>.init(storage:)();
      v31 = v43[1];
      *(a1 + 64) = v43[0];
      *(a1 + 80) = v31;
      *(a1 + 96) = v43[2];
      *(a1 + 112) = v44;
      v32 = v40;
      *a1 = v39;
      *(a1 + 16) = v32;
      v33 = v42;
      *(a1 + 32) = v41;
      *(a1 + 48) = v33;
      return result;
    }

    v7 = *(&v54[0] + 1);
    sub_100007128(v54, &qword_10003ACB0, &qword_100028E20);
    v8 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v10 = v9;

    if (v8 == dispatch thunk of CAFCameraButtonObservable.identifier.getter() && v10 == v11)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v22 = 0;
        v23 = 0;
        v29 = 0;
        v28 = 0;
        v18 = 0;
        v27 = 0;
        v25 = 0;
        v24 = 0;
        v26 = 0;
        goto LABEL_10;
      }
    }

    v17 = sub_100009164();
    v18 = swift_allocObject();
    v19 = v2[5];
    v18[5] = v2[4];
    v18[6] = v19;
    v18[7] = v2[6];
    *(v18 + 121) = *(v2 + 105);
    v20 = v2[1];
    v18[1] = *v2;
    v18[2] = v20;
    v21 = v2[3];
    v18[3] = v2[2];
    v18[4] = v21;
    sub_10000A398(v2, &v39);
    v22 = static HorizontalAlignment.center.getter();
    v23 = static VerticalAlignment.center.getter();
    LOBYTE(v39) = 1;
    v24 = 1;
    sub_100008F28(2);
    sub_100008F28(130);
    v25 = static AnyTransition.asymmetric(insertion:removal:)();

    v26 = v17;
    v27 = 0x4000000000000000;
    v28 = sub_10000A390;
    v29 = 0x4010000000000000;
LABEL_10:
    *&v45 = v26;
    *(&v45 + 1) = v22;
    *&v46 = v23;
    *(&v46 + 1) = v29;
    v47 = v29;
    *&v48 = v24;
    *(&v48 + 1) = v28;
    *&v49 = v18;
    *(&v49 + 1) = v27;
    *&v50 = v25;
    v53 = 0;
    goto LABEL_11;
  }

  type metadata accessor for ButtonBarLayout(0);
  sub_100009ED4();
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000096A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000026FC(&qword_10003A998, &qword_1000281F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v11);

    if (v11)
    {
      swift_getKeyPath();
      sub_1000026FC(&qword_10003AC90, &qword_100027CA8);
      sub_100007210(&qword_10003A628, &qword_10003AC90, &qword_100027CA8, &protocol conformance descriptor for [A]);
      sub_10000A2C4();
      ForEach<>.init(_:id:content:)();
      (*(v5 + 32))(a2, v7, v4);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    return (*(v5 + 56))(a2, v8, 1, v4);
  }

  else
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_100009ED4();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000098E8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[3];
  v10 = a1[2];
  v2 = v10;
  v11 = v3;
  v12[0] = a1[4];
  v4 = v12[0];
  *(v12 + 9) = *(a1 + 73);
  v6 = a1[1];
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v6;
  *(a2 + 73) = *(v12 + 9);
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = v4;
  *a2 = v5;
  a2[1] = v6;
  return sub_10000695C(v9, &v8);
}

void *sub_100009994()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10003A258;
  v3 = v1;
  if (v2 != -1)
  {
LABEL_23:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "subItems", v7, 2u);
  }

  v8 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  v32 = v3;
  v10 = sub_100014674(v8, v9);

  v3 = *(v10 + 16);
  if (v3)
  {
    v11 = 0;
    v12 = v10 + 32;
    v13 = &_swiftEmptyArrayStorage;
    do
    {
      v14 = (v12 + 96 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v16 = v14[1];
        v34 = *v14;
        v35 = v16;
        v17 = v14[2];
        v18 = v14[3];
        v19 = v14[4];
        *(v38 + 9) = *(v14 + 73);
        v37 = v18;
        v38[0] = v19;
        v36 = v17;
        v11 = v15 + 1;
        v20 = *(&v34 + 1);
        sub_10000695C(&v34, v33);
        v21 = v20;
        v22 = CAFCameraButtonObservable.observed.getter();

        LOBYTE(v21) = [v22 hidden];
        if ((v21 & 1) == 0)
        {
          break;
        }

        sub_100009C64(&v34);
        v14 += 6;
        ++v15;
        if (v3 == v11)
        {
          goto LABEL_20;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100009C44(0, v13[2] + 1, 1);
        v13 = v39;
      }

      v25 = v13[2];
      v24 = v13[3];
      if (v25 >= v24 >> 1)
      {
        sub_100009C44((v24 > 1), v25 + 1, 1);
        v13 = v39;
      }

      v13[2] = v25 + 1;
      v26 = &v13[12 * v25];
      v27 = v35;
      v26[2] = v34;
      v26[3] = v27;
      v28 = v36;
      v29 = v37;
      v30 = v38[0];
      *(v26 + 105) = *(v38 + 9);
      v26[5] = v29;
      v26[6] = v30;
      v26[4] = v28;
      v12 = v10 + 32;
    }

    while (v3 - 1 != v15);
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

LABEL_20:

  return v13;
}

char *sub_100009C44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100009CB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100009CB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026FC(&qword_10003A588, &qword_100028000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 sub_100009DD4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100009E00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100009E48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100009ED4()
{
  result = qword_10003A598;
  if (!qword_10003A598)
  {
    type metadata accessor for ButtonBarLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A598);
  }

  return result;
}

unint64_t sub_100009F34()
{
  result = qword_10003A930;
  if (!qword_10003A930)
  {
    sub_1000028A8(&qword_10003A920, &qword_1000281B0);
    sub_100009FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A930);
  }

  return result;
}

unint64_t sub_100009FB8()
{
  result = qword_10003A938;
  if (!qword_10003A938)
  {
    sub_1000028A8(&qword_10003A940, &qword_1000281C0);
    sub_10000A070();
    sub_100007210(&qword_10003A660, &qword_10003A668, &qword_100027D40, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A938);
  }

  return result;
}

unint64_t sub_10000A070()
{
  result = qword_10003A948;
  if (!qword_10003A948)
  {
    sub_1000028A8(&qword_10003A950, &qword_1000281C8);
    sub_100007210(&qword_10003A958, &qword_10003A960, &qword_1000281D0, &unk_100029760);
    sub_100007210(&qword_10003A968, &qword_10003A970, &unk_1000281D8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A948);
  }

  return result;
}

unint64_t sub_10000A154()
{
  result = qword_10003A978;
  if (!qword_10003A978)
  {
    sub_1000028A8(&qword_10003A928, &qword_1000281B8);
    sub_10000A20C();
    sub_100007210(&qword_10003A660, &qword_10003A668, &qword_100027D40, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A978);
  }

  return result;
}

unint64_t sub_10000A20C()
{
  result = qword_10003A980;
  if (!qword_10003A980)
  {
    sub_1000028A8(&qword_10003A988, &qword_1000281E8);
    sub_10000A2C4();
    sub_100007210(&qword_10003A968, &qword_10003A970, &unk_1000281D8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A980);
  }

  return result;
}

unint64_t sub_10000A2C4()
{
  result = qword_10003A990;
  if (!qword_10003A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A990);
  }

  return result;
}

uint64_t sub_10000A318()
{
  sub_1000068C0(*(v0 + 16), *(v0 + 24));

  sub_1000068C0(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 137, 7);
}

unint64_t sub_10000A3E0()
{
  result = qword_10003A9A0;
  if (!qword_10003A9A0)
  {
    sub_1000028A8(&qword_10003A9A8, &qword_100028278);
    sub_100009F34();
    sub_10000A154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A9A0);
  }

  return result;
}

id sub_10000A4F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for CameraAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_10000A5E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    qword_10003CE28 = v2;
    unk_10003CE30 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000A66C()
{
  sub_10000A9A8();
  if (qword_10003A240 != -1)
  {
    swift_once();
  }

  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.carevents = result;
  return result;
}

uint64_t *OS_os_log.carevents.unsafeMutableAddressor()
{
  if (qword_10003A248 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.carevents;
}

id static OS_os_log.carevents.getter()
{
  if (qword_10003A248 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.carevents;

  return v1;
}

uint64_t sub_10000A7C0()
{
  sub_10000A9A8();
  if (qword_10003A240 != -1)
  {
    swift_once();
  }

  result = OS_os_log.init(subsystem:category:)();
  qword_10003CE40 = result;
  return result;
}

uint64_t sub_10000A8B8(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  sub_10000A944(v8, a2);
  sub_1000036BC(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return Logger.init(_:)();
}

uint64_t *sub_10000A944(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10000A9A8()
{
  result = qword_10003AA40;
  if (!qword_10003AA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003AA40);
  }

  return result;
}

__n128 sub_10000A9F4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000AA08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000AA50(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10000AABC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v40 = type metadata accessor for TapGesture();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000026FC(&qword_10003AA48, &qword_100028368);
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v39 = &v34 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  sub_10000B498(a3 + 32, v44);
  v14 = v47;
  sub_10000B4FC(v44, v46);
  v15 = type metadata accessor for ModifiedContent();
  __chkstk_darwin(v15);
  View.allowsHitTesting(_:)();
  v50 = v14;
  v51 = &protocol witness table for _AllowsHitTestingModifier;
  swift_getWitnessTable();
  v16 = AnyView.init<A>(_:)();
  v36 = a2;
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000068C0(a1, 0);
    v18 = *(v11 + 8);
    v18(v13, v10);

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000068C0(a1, 0);
    v18(v13, v10);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = v52;
  v21 = v53;
  v22 = v54;
  v23 = v55;
  v24 = v56;
  v25 = v57;
  sub_100008EDC(v44);
  v44[0] = v16;
  v44[1] = v20;
  v45 = v21;
  v46 = v22;
  LOBYTE(v47) = v23;
  v48 = v24;
  v49 = v25;
  v26 = v35;
  TapGesture.init(count:)();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  v28 = v36 & 1;
  *(v27 + 24) = v36 & 1;
  *(v27 + 32) = v37;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10000B584;
  *(v29 + 24) = v27;
  sub_1000068B4(a1, v28);

  v31 = v39;
  v30 = v40;
  Gesture.onEnded(_:)();

  (*(v38 + 8))(v26, v30);
  static GestureMask.all.getter();
  sub_1000026FC(&qword_10003AA50, &qword_100028370);
  sub_10000B5FC();
  sub_10000B680();
  v32 = v42;
  View.simultaneousGesture<A>(_:including:)();
  (*(v41 + 8))(v31, v32);
}

uint64_t sub_10000B044(uint64_t a1, char a2, uint64_t a3)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void sub_10000B0BC(uint64_t a1, char a2, Swift::String *a3)
{
  object = a3[5]._object;
  if (object)
  {
    countAndFlagsBits = a3[6]._countAndFlagsBits;
    v8 = qword_10003A260;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000036BC(v9, qword_10003CE60);
    sub_1000068B4(a1, a2 & 1);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    sub_1000068C0(a1, a2 & 1);

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136315138;
      v23 = v13;
      _StringGuts.grow(_:)(21);

      String.append(_:)(a3[1]);
      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = sub_10000B720(0xD000000000000012, 0x8000000100029A90, &v23);

      *(v12 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "[ButtonBarView] performing action [%s]", v12, 0xCu);
      sub_100008EDC(v13);
    }

    object(a3);

    sub_10000B7EC(object, countAndFlagsBits);
  }

  else
  {
    if (qword_10003A260 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000036BC(v16, qword_10003CE60);

    sub_1000068B4(a1, a2 & 1);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_1000068C0(a1, a2 & 1);

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v23 = v19;
      _StringGuts.grow(_:)(21);

      String.append(_:)(a3[1]);
      v20._countAndFlagsBits = 62;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21 = sub_10000B720(0xD000000000000012, 0x8000000100029A90, &v23);

      *(v18 + 4) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v17, "[ButtonBarView ] performing action false ❌ [%s]", v18, 0xCu);
      sub_100008EDC(v19);
    }
  }
}

uint64_t sub_10000B498(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000B4FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000B540()
{
  sub_1000068C0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B59C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000B5FC()
{
  result = qword_10003AA58;
  if (!qword_10003AA58)
  {
    sub_1000028A8(&qword_10003AA50, &qword_100028370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AA58);
  }

  return result;
}

unint64_t sub_10000B680()
{
  result = qword_10003AA60;
  if (!qword_10003AA60)
  {
    sub_1000028A8(&qword_10003AA48, &qword_100028368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AA60);
  }

  return result;
}

unint64_t sub_10000B720(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B7FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000B908(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008EDC(v11);
  return v7;
}

uint64_t sub_10000B7EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000B7FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000B964(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

uint64_t sub_10000B908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10000B964(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B9B0(a1, a2);
  sub_10000BAE0(&off_1000354C8);
  return v3;
}

char *sub_10000B9B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000BBCC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000BBCC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000BAE0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000BC40(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000BBCC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000026FC(&qword_10003AA68, &qword_100028378);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000BC40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026FC(&qword_10003AA68, &qword_100028378);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000BD34()
{
  sub_1000028A8(&qword_10003AA50, &qword_100028370);
  sub_1000028A8(&qword_10003AA48, &qword_100028368);
  sub_10000B5FC();
  sub_10000B680();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000BDC4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);
}

uint64_t sub_10000BE3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10000BEB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

__n128 sub_10000BF24@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  v3 = v5[0];
  result = v5[1];
  *(v7 + 9) = *&v6[9];
  v4 = v5[3];
  v7[0] = *v6;
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7[0];
  *(a1 + 73) = *(v7 + 9);
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

id sub_10000BFDC(void *a1)
{
  v48 = a1;
  v2 = sub_1000026FC(&qword_10003ACB8, &qword_100028460);
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v39 - v3;
  v4 = sub_1000026FC(&qword_10003ACC0, &qword_100028468);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v39 - v5;
  v41 = sub_1000026FC(&qword_10003ACC8, &qword_100028470);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v39 - v6;
  v39 = sub_1000026FC(&qword_10003ACD0, &qword_100028478);
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v39 - v9;
  v11 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtC9CarCamera11CameraModel__cameraCloseButton;
  v18 = type metadata accessor for CameraCloseButton(0);
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1000070C0(v16, v13, &qword_10003AC80, &qword_100027CE8);
  Published.init(initialValue:)();
  sub_100007128(v16, &qword_10003AC80, &qword_100027CE8);
  (*(v8 + 32))(&v1[v17], v10, v39);
  v19 = OBJC_IVAR____TtC9CarCamera11CameraModel__visibleButtons;
  *&v50 = &_swiftEmptyArrayStorage;
  sub_1000026FC(&qword_10003AC90, &qword_100027CA8);
  Published.init(initialValue:)();
  (*(v40 + 32))(&v1[v19], v7, v41);
  v20 = OBJC_IVAR____TtC9CarCamera11CameraModel__identifierChanged;
  v50 = 0uLL;
  sub_1000026FC(&qword_10003ACA0, &qword_100027F60);
  v21 = v42;
  Published.init(initialValue:)();
  (*(v43 + 32))(&v1[v20], v21, v44);
  v22 = OBJC_IVAR____TtC9CarCamera11CameraModel__submenuParent;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  sub_1000026FC(&qword_10003ACB0, &qword_100028E20);
  v23 = v45;
  Published.init(initialValue:)();
  (*(v46 + 32))(&v1[v22], v23, v47);
  *&v1[OBJC_IVAR____TtC9CarCamera11CameraModel_camera] = 0;
  v24 = OBJC_IVAR____TtC9CarCamera11CameraModel_buttonDict;
  *&v1[v24] = sub_100010818(&_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9CarCamera11CameraModel_topButtons] = &_swiftEmptyArrayStorage;
  v25 = OBJC_IVAR____TtC9CarCamera11CameraModel_serviceDict;
  *&v1[v25] = sub_1000109E0(&_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9CarCamera11CameraModel_menuGroups] = &_swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC9CarCamera11CameraModel_hasEmittedFinalizedSignpost] = 0;
  v1[OBJC_IVAR____TtC9CarCamera11CameraModel_hasEmittedInstantOnSignpost] = 0;
  v26 = &v1[OBJC_IVAR____TtC9CarCamera11CameraModel__carObservable];
  swift_beginAccess();
  type metadata accessor for CAFCarObservable();
  sub_100010F90(&qword_10003ACD8, &type metadata accessor for CAFCarObservable, &protocol conformance descriptor for CAFCarObservable);
  v27 = v48;
  *v26 = ObservedObject.init(wrappedValue:)();
  v26[1] = v28;
  swift_endAccess();
  v29 = type metadata accessor for CameraModel(0);
  v49.receiver = v1;
  v49.super_class = v29;
  v30 = objc_msgSendSuper2(&v49, "init");
  v31 = CAFCarObservable.observed.getter();
  [v31 registerObserver:v30];

  v32 = dispatch thunk of CAFCarObservable.automakerExteriorCamera.getter();
  if (v32)
  {
    v33 = v32;
    sub_10000D798(v32);
  }

  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000036BC(v34, qword_10003CE48);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "[CAMERAMODEL] CameraModel did init", v37, 2u);
  }

  return v30;
}

uint64_t sub_10000C744(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v24[-v9];
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000036BC(v11, qword_10003CE48);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "[CAMERAMODEL] CAFCameraGeneral didUpdateUserDismissible %{BOOL}d", v14, 8u);
  }

  if (a2)
  {
    sub_100010EE0(0, &qword_10003AD00, CAFCameraGeneral_ptr);
    sub_100010F28();
    CAFObserved<>.observable.getter();
    type metadata accessor for LayoutSize();
    sub_100010F90(&qword_10003AD10, type metadata accessor for LayoutSize, &unk_100029260);
    v15 = EnvironmentObject.init()();
    v17 = v16;
    type metadata accessor for CAFCameraGeneralObservable();
    sub_100010F90(&qword_10003AD18, &type metadata accessor for CAFCameraGeneralObservable, &protocol conformance descriptor for CAFCameraGeneralObservable);
    *v10 = ObservedObject.init(wrappedValue:)();
    *(v10 + 1) = v18;
    *(v10 + 2) = v15;
    *(v10 + 3) = v17;
    v24[15] = 0;
    State.init(wrappedValue:)();
    v19 = v25;
    v10[32] = v24[16];
    *(v10 + 5) = v19;
    v20 = type metadata accessor for CameraCloseButton(0);
    UUID.init()();
    v10[v20[8]] = 0;
    v10[v20[9]] = 0;
    v10[v20[10]] = 0;
    (*(*(v20 - 1) + 56))(v10, 0, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for CameraCloseButton(0);
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000070C0(v10, v7, &qword_10003AC80, &qword_100027CE8);
  v22 = v3;
  static Published.subscript.setter();
  return sub_100007128(v10, &qword_10003AC80, &qword_100027CE8);
}

uint64_t sub_10000CBCC(void *a1, char a2)
{
  v3 = v2;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000036BC(v6, qword_10003CE48);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "[CAMERAMODEL] CAFCameraButtonObserver didUpdateHidden %{BOOL}d", v9, 8u);
  }

  sub_10000E838();
  v10 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v3;
  return static Published.subscript.setter();
}

void sub_10000CDB4(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000036BC(v3, qword_10003CE48);
    v4 = a1;

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = [v4 identifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_10000B720(v9, v11, &v16);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      v13 = Array.description.getter();
      v15 = sub_10000B720(v13, v14, &v16);

      *(v7 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "[CAMERAMODEL] CAFCameraButtonObserver %s didUpdateChildrenIdentifiers %s", v7, 0x16u);
      swift_arrayDestroy();
    }
  }

  sub_10000CFB0();
}

void sub_10000CFB0()
{
  v1 = v0;
  if (qword_10003A258 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_1000036BC(v2, qword_10003CE48);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[CAMERAMODEL] updateArrangment", v5, 2u);
    }

    v6 = OBJC_IVAR____TtC9CarCamera11CameraModel_menuGroups;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (v7 >> 62)
    {
      v42 = *(v1 + v6);
      v43 = _CocoaArrayWrapper.endIndex.getter();
      v44 = v42;
      v8 = v43;
      v7 = v44;
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = &_swiftEmptyArrayStorage;
    if (!v8)
    {
LABEL_30:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100016B80(v9);
      }

      v36 = *(v9 + 2);
      *&v56 = v9 + 32;
      *(&v56 + 1) = v36;
      sub_10000F968(&v56);
      v37 = OBJC_IVAR____TtC9CarCamera11CameraModel_topButtons;

      sub_10000F5F8(v38, v9);
      v39 = v9;
      v41 = v40;

      if (v41)
      {
      }

      else
      {
        *(v1 + v37) = v39;

        sub_10000E838();
        sub_10000E698();
      }

      return;
    }

    v62 = &_swiftEmptyArrayStorage;
    v10 = v7;

    sub_100009C44(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      break;
    }

    v45 = v1;
    v1 = 0;
    v11 = v10;
    v48 = v10;
    v49 = v10 & 0xC000000000000001;
    v9 = v62;
    v46 = v10 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 - 1;
    do
    {
      v54 = v9;
      if (v49)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *(v46 + 16))
        {
          goto LABEL_35;
        }

        v12 = *(v11 + 8 * v1 + 32);
      }

      v13 = v12;
      v14 = &v12[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent];
      sub_100015074(*&v12[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent], *&v12[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent + 8], &v63);
      if (v64 && (v77[0] = v63, v77[1] = v64, sub_1000070C0(v77, &v56, &qword_10003AD28, &qword_1000289D0), sub_100007128(&v63, &qword_10003ACB0, &qword_100028E20), v15 = dispatch thunk of CAFCameraButtonObservable.selectedEntryIndex.getter(), sub_100007128(v77, &qword_10003AD28, &qword_1000289D0), (v15 & 0x100) == 0) && v15)
      {
        sub_100014280();
        v17 = v16;
        sub_100015074(*v14, *(v14 + 1), &v75);
        if (!v76)
        {
          goto LABEL_41;
        }

        v78[0] = v75;
        v78[1] = v76;
        sub_1000070C0(v78, &v56, &qword_10003AD28, &qword_1000289D0);
        sub_100007128(&v75, &qword_10003ACB0, &qword_100028E20);
        v18 = dispatch thunk of CAFCameraButtonObservable.selectedEntryIndex.getter();
        sub_100007128(v78, &qword_10003AD28, &qword_1000289D0);
        if ((v18 & 0x100) != 0 || !v18)
        {
          goto LABEL_41;
        }

        v19 = v18 - 1;
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_36;
        }

        v20 = (v17 + 96 * v19);
        v21 = v20[3];
        v56 = v20[2];
        v57 = v21;
        v22 = v20[4];
        v23 = v20[5];
        v24 = v20[6];
        *&v60[9] = *(v20 + 105);
        v59 = v23;
        *v60 = v24;
        v58 = v22;
        sub_10000695C(&v56, v55);

        v25 = v60[24];
        v26 = v60[8];
        v52 = *v60;
        v53 = *&v60[16];
        v27 = v58;
        v28 = BYTE8(v58);
        v50 = v57;
        v51 = v59;
        v30 = *(&v56 + 1);
        v29 = v56;
      }

      else
      {
        sub_100015074(*v14, *(v14 + 1), &v65);
        v30 = v66;
        if (!v66)
        {
          goto LABEL_40;
        }

        v52 = v71;
        v53 = v73;
        v27 = v68;
        v50 = v67;
        v51 = v70;
        v29 = v65;
        v25 = v74;
        v26 = v72;
        v28 = v69;
      }

      v9 = v54;
      v62 = v54;
      v32 = *(v54 + 2);
      v31 = *(v54 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_100009C44((v31 > 1), v32 + 1, 1);
        v9 = v62;
      }

      v61 = v28 & 1;
      *(v9 + 2) = v32 + 1;
      v33 = &v9[96 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
      *(v33 + 3) = v50;
      *(v33 + 8) = v27;
      v33[72] = v61;
      v34 = v56;
      *(v33 + 19) = *(&v56 + 3);
      *(v33 + 73) = v34;
      *(v33 + 5) = v51;
      *(v33 + 12) = v52;
      v33[104] = v26 & 1;
      v35 = v55[0];
      *(v33 + 27) = *(v55 + 3);
      *(v33 + 105) = v35;
      *(v33 + 14) = v53;
      v33[120] = v25 & 1;
      if (v47 == v1)
      {

        v1 = v45;
        goto LABEL_30;
      }

      ++v1;
      v11 = v48;
    }

    while (!__OFADD__(v1, 1));
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_10000D578(void *a1, char a2)
{
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    v10 = [v5 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10000B720(v11, v13, &v15);

    *(v8 + 4) = v14;
    *(v8 + 12) = 256;
    *(v8 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "[CAMERAMODEL] CAFCameraButtonObserver %s didUpdateSelectedEntryIndex %hhu", v8, 0xFu);
    sub_100008EDC(v9);
  }

  sub_10000CFB0();
}

void sub_10000D798(void *a1)
{
  v2 = OBJC_IVAR____TtC9CarCamera11CameraModel_camera;
  if (*(v1 + OBJC_IVAR____TtC9CarCamera11CameraModel_camera))
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000036BC(v3, qword_10003CE48);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "[CAMERAMODEL] already connected", v5, 2u);
    }
  }

  else
  {
    v7 = OBJC_IVAR____TtC9CarCamera11CameraModel_hasEmittedInstantOnSignpost;
    if ((*(v1 + OBJC_IVAR____TtC9CarCamera11CameraModel_hasEmittedInstantOnSignpost) & 1) == 0)
    {
      CAFSignpostEmit_InstantOn();
      *(v1 + v7) = 1;
    }

    v8 = v1;
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000036BC(v9, qword_10003CE48);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "[CAMERAMODEL] connecting to %@", v13, 0xCu);
      sub_100007128(v14, &qword_10003AD20, &qword_100028570);
    }

    [v10 registerObserver:v8];
    v16 = [v10 cameraGeneral];
    [v16 registerObserver:v8];

    v17 = *(v8 + v2);
    *(v8 + v2) = v10;
    v18 = v10;

    sub_10000DA54();
  }
}

void sub_10000DA54()
{
  v1 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v1 - 8);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  __chkstk_darwin(v7);
  v9 = (&v61 - v8);
  v10 = *&v0[OBJC_IVAR____TtC9CarCamera11CameraModel_camera];
  if (v10)
  {
    v63 = v10;
    if ([v63 receivedAllValues])
    {
      v11 = OBJC_IVAR____TtC9CarCamera11CameraModel_buttonDict;
      swift_beginAccess();
      if (*(*&v0[v11] + 16))
      {
        if (qword_10003A258 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_1000036BC(v12, qword_10003CE48);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "[CAMERAMODEL] already updated", v15, 2u);
        }
      }

      else
      {
        v62 = v0;
        if (qword_10003A258 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        v25 = sub_1000036BC(v24, qword_10003CE48);
        v26 = v63;
        v63 = v25;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v31 = v26;
          v32 = v30;
          *v29 = 138412546;
          *(v29 + 4) = v31;
          *v30 = v10;
          *(v29 + 12) = 2048;
          v61 = v31;
          v33 = v31;
          v34 = [v33 cameraButtons];
          if (v34)
          {
            sub_100010EE0(0, &qword_10003ACF8, CAFCameraButton_ptr);
            v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v35 >> 62)
            {
              v34 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v34 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }

          else
          {
          }

          *(v29 + 14) = v34;

          _os_log_impl(&_mh_execute_header, v27, v28, "[CAMERAMODEL] updating %@ buttons.count=%ld", v29, 0x16u);
          sub_100007128(v32, &qword_10003AD20, &qword_100028570);

          v26 = v61;
        }

        else
        {

          v27 = v26;
        }

        v36 = v62;

        v37 = [v26 cameraGeneral];
        v38 = [v37 userDismissible];

        if (v38)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v9);

          v39 = type metadata accessor for CameraCloseButton(0);
          v40 = *(v39 - 1);
          v41 = (*(v40 + 48))(v9, 1, v39);
          sub_100007128(v9, &qword_10003AC80, &qword_100027CE8);
          if (v41 == 1)
          {
            v42 = [v26 cameraGeneral];
            sub_100010EE0(0, &qword_10003AD00, CAFCameraGeneral_ptr);
            sub_100010F28();
            CAFObserved<>.observable.getter();
            v36 = v62;

            type metadata accessor for LayoutSize();
            sub_100010F90(&qword_10003AD10, type metadata accessor for LayoutSize, &unk_100029260);
            v43 = EnvironmentObject.init()();
            v45 = v44;
            type metadata accessor for CAFCameraGeneralObservable();
            sub_100010F90(&qword_10003AD18, &type metadata accessor for CAFCameraGeneralObservable, &protocol conformance descriptor for CAFCameraGeneralObservable);
            *v6 = ObservedObject.init(wrappedValue:)();
            *(v6 + 1) = v46;
            *(v6 + 2) = v43;
            *(v6 + 3) = v45;
            v64 = 0;
            State.init(wrappedValue:)();
            v47 = v65[1];
            v6[32] = v65[0];
            *(v6 + 5) = v47;
            UUID.init()();
            v6[v39[8]] = 0;
            v6[v39[9]] = 0;
            v6[v39[10]] = 0;
            (*(v40 + 56))(v6, 0, 1, v39);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1000070C0(v6, v3, &qword_10003AC80, &qword_100027CE8);
            v48 = v36;
            static Published.subscript.setter();
            sub_100007128(v6, &qword_10003AC80, &qword_100027CE8);
          }
        }

        v65[0] = &_swiftEmptyArrayStorage;
        v49 = [v26 cameraButtons];
        if (v49)
        {
          v50 = v49;
          sub_100010EE0(0, &qword_10003ACF8, CAFCameraButton_ptr);
          v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = v36;
          sub_100010AF4(v51, v52);
        }

        v53 = [v26 cameraButtons];
        if (v53)
        {
          v54 = v53;
          sub_100010EE0(0, &qword_10003ACF8, CAFCameraButton_ptr);
          v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = v36;
          sub_100010DD8(v55, v56, v65);
        }

        sub_10000CFB0();
        v57 = v36;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 134217984;
          *(v60 + 4) = (*(&v57->isa + OBJC_IVAR____TtC9CarCamera11CameraModel_topButtons))[2];

          _os_log_impl(&_mh_execute_header, v58, v59, "[CAMERAMODEL] showing %ld buttons", v60, 0xCu);
        }

        else
        {

          v58 = v57;
        }

        sub_10000ECC4();
      }

      return;
    }

    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000036BC(v19, qword_10003CE48);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "[CAMERAMODEL] camera has not receivedAllValues", v22, 2u);
    }
  }

  else
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000036BC(v16, qword_10003CE48);
    v63 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v63, v17, "[CAMERAMODEL] update missing accessory", v18, 2u);
    }
  }

  v23 = v63;
}

void sub_10000E41C(id *a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = [*a1 childrenIdentifiers];
  if (v6)
  {
    v7 = v6;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v8 + 16))
    {
      v9 = [v5 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      objc_allocWithZone(type metadata accessor for CameraButtonGroup());
      v13 = a2;
      v14 = v10;
      v15 = v12;
      v16 = v8;
      goto LABEL_7;
    }
  }

  v17 = *a3;

  v18 = [v5 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v31[0] = v19;
  v31[1] = v21;
  __chkstk_darwin(v22);
  v30[2] = v31;
  LOBYTE(v18) = sub_10001BBF0(sub_100010FD8, v30, v17);

  if (v18)
  {
    return;
  }

  v23 = [v5 identifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  objc_allocWithZone(type metadata accessor for CameraButtonGroup());
  v13 = a2;
  v16 = &_swiftEmptyArrayStorage;
  v14 = v24;
  v15 = v26;
LABEL_7:
  v27 = sub_100016BA8(v14, v15, v16, v13);

  v28 = OBJC_IVAR____TtC9CarCamera11CameraModel_menuGroups;
  swift_beginAccess();
  v29 = v27;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v13 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + v28) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t sub_10000E698()
{
  v1 = OBJC_IVAR____TtC9CarCamera11CameraModel_topButtons;
  v2 = *(v0 + OBJC_IVAR____TtC9CarCamera11CameraModel_topButtons);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100016B80(v2);
  }

  v3 = *(v2 + 2);
  v13[0] = (v2 + 32);
  v13[1] = v3;
  sub_10000F968(v13);
  v4 = *(v0 + v1);

  sub_10000F5F8(v2, v4);
  v6 = v5;

  if (v6)
  {
  }

  else
  {
    v8 = v0;
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000036BC(v9, qword_10003CE48);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "[CAMERAMODEL] sort order updated", v12, 2u);
    }

    *(v8 + v1) = v2;

    return sub_10000E838();
  }
}

uint64_t sub_10000E838()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CarCamera11CameraModel_topButtons);
  v2 = *(v1 + 16);

  if (!v2)
  {
    v4 = &_swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v3 = 0;
  v4 = &_swiftEmptyArrayStorage;
  do
  {
    v38 = v4;
    v5 = (v1 + 32 + 96 * v3);
    v6 = v3;
    while (1)
    {
      if (v6 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v7 = v5[1];
      v42 = *v5;
      v43 = v7;
      v8 = v5[2];
      v9 = v5[3];
      v10 = v5[4];
      *(v46 + 9) = *(v5 + 73);
      v45 = v9;
      v46[0] = v10;
      v44 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10000695C(&v42, v40);
      static Published.subscript.getter(v40);

      v47[2] = v40[2];
      v47[3] = v40[3];
      v48[0] = v41[0];
      *(v48 + 9) = *(v41 + 9);
      v47[0] = v40[0];
      v47[1] = v40[1];
      v11 = *(&v40[0] + 1);
      if (!*(&v40[0] + 1))
      {
        goto LABEL_9;
      }

      v12 = *(&v42 + 1);
      v13 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
      v15 = v14;

      v16 = v11;
      v17 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100007128(v47, &qword_10003ACB0, &qword_100028E20);

      if (v20)
      {
        goto LABEL_13;
      }

LABEL_9:
      v21 = *(&v42 + 1);
      v4 = CAFCameraButtonObservable.observed.getter();

      LOBYTE(v21) = [v4 hidden];
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }

      ++v6;
      sub_100009C64(&v42);
      v5 += 6;
      if (v2 == v6)
      {
        v4 = v38;
        goto LABEL_20;
      }
    }

    sub_100007128(v47, &qword_10003ACB0, &qword_100028E20);

LABEL_13:
    v4 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100009C44(0, v38[2] + 1, 1);
      v4 = v49;
    }

    v24 = v4[2];
    v23 = v4[3];
    if (v24 >= v23 >> 1)
    {
      sub_100009C44((v23 > 1), v24 + 1, 1);
      v4 = v49;
    }

    v3 = v6 + 1;
    v4[2] = v24 + 1;
    v25 = &v4[12 * v24];
    v26 = v43;
    v25[2] = v42;
    v25[3] = v26;
    v27 = v44;
    v28 = v45;
    v29 = v46[0];
    *(v25 + 105) = *(v46 + 9);
    v25[5] = v28;
    v25[6] = v29;
    v25[4] = v27;
  }

  while (v2 - 1 != v6);
LABEL_20:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v47);

  sub_10000F5F8(v4, *&v47[0]);
  v31 = v30;

  if (v31)
  {
  }

  if (qword_10003A258 != -1)
  {
LABEL_28:
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000036BC(v33, qword_10003CE48);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v4[2];

    _os_log_impl(&_mh_execute_header, v34, v35, "[CAMERAMODEL] visibility updated - %ld", v36, 0xCu);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v47[0] = v4;
  v37 = v39;
  return static Published.subscript.setter();
}

void sub_10000ECC4()
{
  v1 = OBJC_IVAR____TtC9CarCamera11CameraModel_hasEmittedFinalizedSignpost;
  if (*(v0 + OBJC_IVAR____TtC9CarCamera11CameraModel_hasEmittedFinalizedSignpost))
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9CarCamera11CameraModel_camera);
  if (v2)
  {
    v3 = v2;
    if ([v3 receivedAllValues])
    {
      v4 = v0;
      if (qword_10003A298 != -1)
      {
        swift_once();
      }

      v5 = *(qword_10003CEB8 + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carManager);
      v6 = dispatch thunk of CAFCarManagerObservable.currentCar.getter();

      CAFSignpostEmit_Finalized();
      *(v4 + v1) = 1;
      return;
    }
  }

  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000036BC(v7, qword_10003CE48);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v8, "camera.receivedAllValues false", v9, 2u);
  }
}

id sub_10000EEB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CameraModel(uint64_t a1)
{
  result = qword_10003AC68;
  if (!qword_10003AC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F104(uint64_t a1)
{
  sub_10000F2D8(319, &qword_10003AC78, &qword_10003AC80, &qword_100027CE8);
  if (v1 <= 0x3F)
  {
    sub_10000F2D8(319, &qword_10003AC88, &qword_10003AC90, &qword_100027CA8);
    if (v2 <= 0x3F)
    {
      sub_10000F2D8(319, &qword_10003AC98, &qword_10003ACA0, &qword_100027F60);
      if (v3 <= 0x3F)
      {
        sub_10000F2D8(319, &qword_10003ACA8, &qword_10003ACB0, &qword_100028E20);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10000F2D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000028A8(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000F32C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CameraModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10000F36C()
{
  v0 = dispatch thunk of CAFCameraButtonObservable.symbolName.getter();
  v2 = v1;
  if (v0 == dispatch thunk of CAFCameraButtonObservable.symbolName.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10000F400@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_10000F480(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

double sub_10000F4F8@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10000F578(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

void sub_10000F5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    while (v2)
    {
      v19 = v2;
      v4 = *(a1 + v3 + 64);
      v5 = *(a1 + v3 + 72);
      v30 = *(a1 + v3 + 96);
      v6 = *(a1 + v3 + 80);
      v7 = *(a1 + v3 + 40);
      v20 = *(a2 + v3 + 64);
      v21 = *(a2 + v3 + 40);
      v8 = *(a2 + v3 + 72);
      v22 = *(a2 + v3 + 96);
      v24 = *(a2 + v3 + 80);

      v9 = v7;
      v29 = v4;
      v26 = v5;
      sub_1000068B4(v4, v5);

      v28 = v6;
      v27 = v30;

      v10 = v21;
      sub_1000068B4(v20, v8);

      v25 = v24;
      v23 = v22;
      v11 = v9;
      v12 = dispatch thunk of CAFCameraButtonObservable.symbolName.getter();
      v14 = v13;
      if (v12 == dispatch thunk of CAFCameraButtonObservable.symbolName.getter() && v14 == v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_1000068C0(v20, v8);

      sub_1000068C0(v29, v26);

      if (v16)
      {
        v2 = v19 - 1;
        v3 += 96;
        if (v19 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

unint64_t sub_10000F838(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000F8B0(a1, a2, v4);
}

unint64_t sub_10000F8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

Swift::Int sub_10000F968(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10000FC18(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000FA60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000FA60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 96 * a3;
    v6 = result - a3 + 1;
LABEL_5:
    v33 = a3;
    v7 = v6;
    for (i = v5; ; i -= 6)
    {
      v9 = i[1];
      v29[0] = *i;
      v29[1] = v9;
      v10 = i[2];
      v11 = i[3];
      v12 = i[4];
      *(v30 + 9) = *(i + 73);
      v29[3] = v11;
      v30[0] = v12;
      v29[2] = v10;
      v14 = *(i - 3);
      v13 = *(i - 2);
      v15 = *(i - 4);
      *(v32 + 9) = *(i - 23);
      v31[3] = v14;
      v32[0] = v13;
      v31[2] = v15;
      v16 = *(i - 5);
      v31[0] = *(i - 6);
      v31[1] = v16;
      sub_10000695C(v29, &v24);
      sub_10000695C(v31, &v24);
      v17 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
      v18 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
      sub_100009C64(v31);
      result = sub_100009C64(v29);
      if (v17 >= v18)
      {
LABEL_4:
        a3 = v33 + 1;
        v5 += 96;
        --v6;
        if (v33 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = i - 6;
      v26 = i[2];
      v27 = i[3];
      v28[0] = i[4];
      *(v28 + 9) = *(i + 73);
      v24 = *i;
      v25 = i[1];
      v20 = *(i - 3);
      i[2] = *(i - 4);
      i[3] = v20;
      v21 = *(i - 1);
      i[4] = *(i - 2);
      i[5] = v21;
      v22 = *(i - 5);
      *i = *(i - 6);
      i[1] = v22;
      v19[1] = v25;
      *v19 = v24;
      *(v19 + 73) = *(v28 + 9);
      v19[4] = v28[0];
      v19[3] = v27;
      v19[2] = v26;
      if (!v7)
      {
        goto LABEL_4;
      }

      ++v7;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000FC18(uint64_t result, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v6 = v4;
  v7 = a3;
  v118 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_100015DE8(v10);
      v10 = result;
    }

    v140 = v10;
    v109 = *(v10 + 2);
    if (v109 >= 2)
    {
      while (1)
      {
        v110 = *v7;
        if (!*v7)
        {
          goto LABEL_127;
        }

        v7 = (v109 - 1);
        v111 = *&v10[16 * v109];
        v112 = *&v10[16 * v109 + 24];
        sub_100010498((v110 + 96 * v111), (v110 + 96 * *&v10[16 * v109 + 16]), (v110 + 96 * v112), v5);
        if (v6)
        {
        }

        if (v112 < v111)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100015DE8(v10);
        }

        if (v109 - 2 >= *(v10 + 2))
        {
          goto LABEL_117;
        }

        v113 = &v10[16 * v109];
        *v113 = v111;
        *(v113 + 1) = v112;
        v140 = v10;
        result = sub_100015D5C(v7);
        v10 = v140;
        v109 = *(v140 + 2);
        v7 = a3;
        if (v109 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v5 = *v7;
      v12 = (*v7 + 96 * v11);
      v13 = v12[1];
      v130 = *v12;
      v131 = v13;
      v14 = v12[2];
      v15 = v12[3];
      v16 = v12[4];
      *(v134 + 9) = *(v12 + 73);
      v133 = v15;
      v134[0] = v16;
      v132 = v14;
      v17 = (v5 + 96 * v9);
      v19 = *(v17 + 3);
      v18 = *(v17 + 4);
      v20 = *(v17 + 2);
      *(v139 + 9) = *(v17 + 73);
      v138 = v19;
      v139[0] = v18;
      v137 = v20;
      v21 = *(v17 + 1);
      v135 = *v17;
      v136 = v21;
      sub_10000695C(&v130, &v125);
      sub_10000695C(&v135, &v125);
      v120 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
      v22 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
      sub_100009C64(&v135);
      result = sub_100009C64(&v130);
      v23 = (v9 + 2);
      v116 = v9;
      if (v9 + 2 >= v8)
      {
        v141 = v9 + 2;
      }

      else
      {
        v24 = (v5 + 96 * v9 + 192);
        while (1)
        {
          v5 = v23;
          v25 = *(v24 + 1);
          v123[0] = *v24;
          v123[1] = v25;
          v26 = *(v24 + 2);
          v27 = *(v24 + 3);
          v28 = *(v24 + 4);
          *(v124 + 9) = *(v24 + 73);
          v123[3] = v27;
          v124[0] = v28;
          v123[2] = v26;
          v30 = *(v24 - 3);
          v29 = *(v24 - 2);
          v31 = *(v24 - 4);
          *(v129 + 9) = *(v24 - 23);
          v128 = v30;
          v129[0] = v29;
          v127 = v31;
          v32 = *(v24 - 5);
          v125 = *(v24 - 6);
          v126 = v32;
          sub_10000695C(v123, v122);
          sub_10000695C(&v125, v122);
          v33 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
          v34 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
          sub_100009C64(&v125);
          result = sub_100009C64(v123);
          if (v120 < v22 == v33 >= v34)
          {
            break;
          }

          v23 = (v5 + 1);
          v24 += 96;
          if (v8 == v5 + 1)
          {
            v11 = v5;
            v141 = v8;
            goto LABEL_12;
          }
        }

        v141 = v5;
        v11 = v5 - 1;
LABEL_12:
        v7 = a3;
      }

      if (v120 >= v22)
      {
        goto LABEL_22;
      }

      if (v141 < v9)
      {
        goto LABEL_120;
      }

      if (v9 > v11)
      {
LABEL_22:
        v11 = v141;
      }

      else
      {
        v35 = v141;
        v36 = 96 * v141 - 96;
        v37 = v9;
        v38 = 96 * v9;
        do
        {
          if (v37 != --v35)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v39 = (v40 + v36);
            v127 = *(v40 + v38 + 32);
            v128 = *(v40 + v38 + 48);
            v129[0] = *(v40 + v38 + 64);
            v5 = v123;
            *(v129 + 9) = *(v40 + v38 + 73);
            v125 = *(v40 + v38);
            v126 = *(v40 + v38 + 16);
            result = memmove((v40 + v38), (v40 + v36), 0x60uLL);
            v39[2] = v127;
            v39[3] = v128;
            v39[4] = v129[0];
            *(v39 + 73) = *(v129 + 9);
            *v39 = v125;
            v39[1] = v126;
          }

          ++v37;
          v36 -= 96;
          v38 += 96;
        }

        while (v37 < v35);
        v7 = a3;
        v11 = v141;
        v9 = v116;
      }
    }

    v41 = v7[1];
    v141 = v11;
    if (v11 < v41)
    {
      if (__OFSUB__(v11, v9))
      {
        goto LABEL_119;
      }

      if (v11 - v9 < a4)
      {
        v42 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_121;
        }

        if (v42 >= v41)
        {
          v42 = v41;
        }

        if (v42 < v9)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v141 != v42)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v141 < v9)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100015AB0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v62 = *(v10 + 2);
    v61 = *(v10 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_100015AB0((v61 > 1), v62 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v63;
    v64 = &v10[16 * v62];
    v65 = v141;
    *(v64 + 4) = v9;
    *(v64 + 5) = v65;
    v66 = *v118;
    if (!*v118)
    {
      goto LABEL_128;
    }

    if (v62)
    {
      while (1)
      {
        v67 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v68 = *(v10 + 4);
          v69 = *(v10 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_60:
          if (v71)
          {
            goto LABEL_107;
          }

          v84 = &v10[16 * v63];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_110;
          }

          v90 = &v10[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_114;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v63 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v94 = &v10[16 * v63];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_74:
        if (v89)
        {
          goto LABEL_109;
        }

        v97 = &v10[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_112;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_81:
        v105 = v67 - 1;
        if (v67 - 1 >= v63)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v7)
        {
          goto LABEL_125;
        }

        v106 = *&v10[16 * v105 + 32];
        v107 = *&v10[16 * v67 + 40];
        sub_100010498((*v7 + 96 * v106), (*v7 + 96 * *&v10[16 * v67 + 32]), (*v7 + 96 * v107), v66);
        if (v6)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100015DE8(v10);
        }

        if (v105 >= *(v10 + 2))
        {
          goto LABEL_104;
        }

        v108 = &v10[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v140 = v10;
        result = sub_100015D5C(v67);
        v10 = v140;
        v63 = *(v140 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v10[16 * v63 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_105;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_106;
      }

      v79 = &v10[16 * v63];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_108;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_111;
      }

      if (v83 >= v75)
      {
        v101 = &v10[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_115;
        }

        if (v70 < v104)
        {
          v67 = v63 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v141;
    if (v141 >= v8)
    {
      goto LABEL_91;
    }
  }

  v114 = v6;
  v43 = *v7;
  v44 = *v7 + 96 * v141;
  v117 = v9;
  v45 = v9 - v141 + 1;
  v121 = v42;
LABEL_34:
  v46 = v45;
  for (i = v44; ; i -= 6)
  {
    v48 = i[1];
    v130 = *i;
    v131 = v48;
    v49 = i[2];
    v50 = i[3];
    v51 = i[4];
    *(v134 + 9) = *(i + 73);
    v133 = v50;
    v134[0] = v51;
    v132 = v49;
    v53 = *(i - 3);
    v52 = *(i - 2);
    v54 = *(i - 4);
    *(v139 + 9) = *(i - 23);
    v138 = v53;
    v139[0] = v52;
    v137 = v54;
    v55 = *(i - 5);
    v135 = *(i - 6);
    v136 = v55;
    sub_10000695C(&v130, &v125);
    sub_10000695C(&v135, &v125);
    v5 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
    v56 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
    sub_100009C64(&v135);
    result = sub_100009C64(&v130);
    if (v5 >= v56)
    {
LABEL_33:
      v44 += 96;
      --v45;
      if (++v141 != v121)
      {
        goto LABEL_34;
      }

      v141 = v121;
      v6 = v114;
      v7 = a3;
      v9 = v117;
      goto LABEL_40;
    }

    if (!v43)
    {
      break;
    }

    v57 = i - 6;
    v127 = i[2];
    v128 = i[3];
    v129[0] = i[4];
    *(v129 + 9) = *(i + 73);
    v125 = *i;
    v126 = i[1];
    v58 = *(i - 3);
    i[2] = *(i - 4);
    i[3] = v58;
    v59 = *(i - 1);
    i[4] = *(i - 2);
    i[5] = v59;
    v60 = *(i - 5);
    *i = *(i - 6);
    i[1] = v60;
    v57[1] = v126;
    *v57 = v125;
    *(v57 + 73) = *(v129 + 9);
    v57[4] = v129[0];
    v57[3] = v128;
    v57[2] = v127;
    if (!v46)
    {
      goto LABEL_33;
    }

    ++v46;
  }

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
  return result;
}

uint64_t sub_100010498(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    v12 = 96 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_36;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 1);
      v44 = *v6;
      v45 = v16;
      v17 = *(v6 + 2);
      v18 = *(v6 + 3);
      v19 = *(v6 + 4);
      *(v48 + 9) = *(v6 + 73);
      v47 = v18;
      v48[0] = v19;
      v46 = v17;
      v21 = *(v4 + 3);
      v20 = *(v4 + 4);
      v22 = *(v4 + 2);
      *(v53 + 9) = *(v4 + 73);
      v52 = v21;
      v53[0] = v20;
      v51 = v22;
      v23 = *(v4 + 1);
      v49 = *v4;
      v50 = v23;
      sub_10000695C(&v44, v43);
      sub_10000695C(&v49, v43);
      v24 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
      v25 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
      sub_100009C64(&v49);
      sub_100009C64(&v44);
      if (v24 < v25)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 96;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 96;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 96;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x60uLL);
    goto LABEL_9;
  }

  v26 = 96 * v11;
  if (a4 != __src || &__src[v26] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v13 = &v4[v26];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v42 = v6;
    v27 = v6 - 96;
    v5 -= 96;
    v28 = v13;
    do
    {
      v29 = v4;
      v30 = v7;
      v13 = v28;
      v31 = v5 + 96;
      v32 = *(v28 - 5);
      v44 = *(v28 - 6);
      v45 = v32;
      v33 = *(v28 - 4);
      v34 = *(v28 - 3);
      v35 = *(v28 - 2);
      *(v48 + 9) = *(v28 - 23);
      v47 = v34;
      v48[0] = v35;
      v46 = v33;
      v36 = *(v27 + 3);
      v51 = *(v27 + 2);
      v52 = v36;
      v53[0] = *(v27 + 4);
      *(v53 + 9) = *(v27 + 73);
      v37 = *(v27 + 1);
      v49 = *v27;
      v50 = v37;
      sub_10000695C(&v44, v43);
      sub_10000695C(&v49, v43);
      v38 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
      v39 = dispatch thunk of CAFCameraButtonObservable.sortOrder.getter();
      sub_100009C64(&v49);
      sub_100009C64(&v44);
      if (v38 < v39)
      {
        if (v31 < v42 || v5 >= v42 || v31 != v42)
        {
          memmove(v5, v27, 0x60uLL);
        }

        v7 = v30;
        v4 = v29;
        if (v13 <= v29 || (v6 = v27, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_36;
        }

        goto LABEL_20;
      }

      v28 = v13 - 96;
      if (v31 < v13 || v5 >= v13 || v31 != v13)
      {
        memmove(v5, v13 - 96, 0x60uLL);
      }

      v7 = v30;
      v4 = v29;
      v5 -= 96;
    }

    while (v28 > v29);
    v13 -= 96;
    v6 = v42;
  }

LABEL_36:
  v40 = 96 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v40])
  {
    memmove(v6, v4, v40);
  }

  return 1;
}

unint64_t sub_100010818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000026FC(&qword_10003ACE8, &qword_100028488);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32[0] = v4;
  *(v32 + 9) = *(a1 + 121);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1000070C0(&v27, v26, &qword_10003ACF0, &qword_100028490);
  result = sub_10000F838(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = (v3[7] + 96 * result);
    v14 = v29;
    *v13 = v28;
    v13[1] = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32[0];
    *(v13 + 73) = *(v32 + 9);
    v13[3] = v16;
    v13[4] = v17;
    v13[2] = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v11 + 7;
    v22 = v11[5];
    v31 = v11[4];
    v32[0] = v22;
    *(v32 + 9) = *(v11 + 89);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1000070C0(&v27, v26, &qword_10003ACF0, &qword_100028490);
    result = sub_10000F838(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000109E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026FC(&qword_10003ACE0, &qword_100028480);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000F838(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_100010AF4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_27:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v36 = OBJC_IVAR____TtC9CarCamera11CameraModel_serviceDict;
      v33 = v3 & 0xFFFFFFFFFFFFFF8;
      v34 = v3 & 0xC000000000000001;
      v31 = v4;
      v32 = v3;
      do
      {
        if (v34)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v33 + 16))
          {
            goto LABEL_24;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v35 = v5 + 1;
        [v6 registerObserver:a2];
        v8 = [v7 identifier];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = v10;

        swift_beginAccess();
        v11 = v7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *(a2 + v36);
        v14 = a2;
        *(a2 + v36) = 0x8000000000000000;
        v16 = sub_10000F838(v9, v3);
        v17 = v13[2];
        v18 = (v15 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          goto LABEL_25;
        }

        a2 = v15;
        if (v13[3] >= v19)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v15)
            {
              goto LABEL_16;
            }
          }

          else
          {
            sub_100016A14();
            if (a2)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          sub_1000163A4(v19, isUniquelyReferenced_nonNull_native);
          v20 = sub_10000F838(v9, v3);
          if ((a2 & 1) != (v21 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v16 = v20;
          if (a2)
          {
LABEL_16:
            v22 = v13[7];
            v23 = *(v22 + 8 * v16);
            *(v22 + 8 * v16) = v11;

            goto LABEL_21;
          }
        }

        v13[(v16 >> 6) + 8] |= 1 << v16;
        v24 = (v13[6] + 16 * v16);
        *v24 = v9;
        v24[1] = v3;
        *(v13[7] + 8 * v16) = v11;
        v25 = v13[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_26;
        }

        v13[2] = v27;
LABEL_21:
        a2 = v14;
        *(v14 + v36) = v13;
        swift_endAccess();
        v28 = [v11 childrenIdentifiers];
        if (v28)
        {
          v29 = v28;
          v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100015EF4(v30);
        }

        ++v5;
        v3 = v32;
      }

      while (v35 != v31);
    }
  }
}

void sub_100010DD8(unint64_t a1, void *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10000E41C(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100010EE0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100010F28()
{
  result = qword_10003AD08;
  if (!qword_10003AD08)
  {
    sub_100010EE0(255, &qword_10003AD00, CAFCameraGeneral_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AD08);
  }

  return result;
}

uint64_t sub_100010F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100011000()
{
  v1 = v0;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000B720(0xD00000000000001BLL, 0x8000000100029C20, v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "[CAMERAMODEL] %s", v5, 0xCu);
    sub_100008EDC(v6);
  }

  v7 = v1 + OBJC_IVAR____TtC9CarCamera11CameraModel__carObservable;
  swift_beginAccess();
  v8 = *(v7 + 8);
  v9 = CAFCarObservable.observed.getter();

  v10 = [v9 automakerExteriorCamera];
  if (v10)
  {
    sub_10000D798(v10);
  }
}

void sub_1000111B0(void *a1, char a2)
{
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a2 & 1;
    *(v7 + 8) = 2112;
    *(v7 + 10) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, "[CAMERAMODEL] CAFCameraGeneral didUpdateOn %{BOOL}d %@", v7, 0x12u);
    sub_100007128(v8, &qword_10003AD20, &qword_100028570);
  }
}

uint64_t sub_10001131C(uint8_t a1)
{
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 16777472;
    v5[4] = a1;
    _os_log_impl(&_mh_execute_header, v3, v4, "[CAMERAMODEL] CAFCameraButtonObserver didUpdateSortOrder %hhu", v5, 5u);
  }

  return sub_10000E698();
}

uint64_t sub_10001141C@<X0>(uint64_t a2@<X8>)
{
  v24 = static Alignment.center.getter();
  v5 = v4;
  sub_100011728(v2, &v26);
  v49 = v36;
  v50 = v37;
  v51[0] = v38[0];
  *(v51 + 11) = *(v38 + 11);
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v39 = v26;
  v40 = v27;
  v52[10] = v36;
  v52[11] = v37;
  v53[0] = v38[0];
  *(v53 + 11) = *(v38 + 11);
  v52[6] = v32;
  v52[7] = v33;
  v52[8] = v34;
  v52[9] = v35;
  v52[2] = v28;
  v52[3] = v29;
  v52[4] = v30;
  v52[5] = v31;
  v52[0] = v26;
  v52[1] = v27;
  sub_1000070C0(&v39, v25, &qword_10003ADF0, &qword_1000286F0);
  sub_100007128(v52, &qword_10003ADF0, &qword_1000286F0);
  v64 = v49;
  v65 = v50;
  v66[0] = v51[0];
  *(v66 + 11) = *(v51 + 11);
  v60 = v45;
  v61 = v46;
  v62 = v47;
  v63 = v48;
  v56 = v41;
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v54 = v39;
  v55 = v40;
  type metadata accessor for LayoutSize();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v2 + 40);
  sub_100013980(&qword_10003AD10, type metadata accessor for LayoutSize, &unk_100029260);
  v7 = static ObservableObject.environmentStore.getter();
  v8 = static SafeAreaRegions.all.getter();
  v9 = static Edge.Set.all.getter();
  KeyPath = swift_getKeyPath();
  v11 = (a2 + *(sub_1000026FC(&qword_10003ADF8, &qword_100028728) + 36));
  v12 = *(sub_1000026FC(&qword_10003AE00, &qword_100028730) + 28);
  v13 = enum case for ColorScheme.dark(_:);
  v14 = type metadata accessor for ColorScheme();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  *a2 = v24;
  *(a2 + 8) = v5;
  v15 = v65;
  *(a2 + 176) = v64;
  *(a2 + 192) = v15;
  *(a2 + 208) = v66[0];
  *(a2 + 219) = *(v66 + 11);
  v16 = v61;
  *(a2 + 112) = v60;
  *(a2 + 128) = v16;
  v17 = v63;
  *(a2 + 144) = v62;
  *(a2 + 160) = v17;
  v18 = v57;
  *(a2 + 48) = v56;
  *(a2 + 64) = v18;
  v19 = v59;
  *(a2 + 80) = v58;
  *(a2 + 96) = v19;
  v20 = v55;
  *(a2 + 16) = v54;
  *(a2 + 32) = v20;
  *(a2 + 240) = v7;
  *(a2 + 248) = v6;
  *(a2 + 256) = v8;
  *(a2 + 264) = v9;
  v21 = static Color.black.getter();
  LOBYTE(v12) = static Edge.Set.all.getter();
  result = sub_1000026FC(&qword_10003AE08, &qword_100028738);
  v23 = a2 + *(result + 36);
  *v23 = v21;
  *(v23 + 8) = v12;
  return result;
}

double sub_100011728@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(a1 + 8);
  v8 = *a1;
  v90 = *a1;
  if (v91 != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007128(&v90, &qword_10003A590, &qword_100028270);
    (*(v5 + 8))(v7, v4);
    if ((v89 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = static VerticalAlignment.center.getter();
    LOBYTE(v47[0]) = 1;
    sub_100012C3C(a1, v75);
    v72 = *&v75[160];
    v73 = *&v75[176];
    v69 = *&v75[96];
    v70 = *&v75[112];
    v71[1] = *&v75[144];
    v71[0] = *&v75[128];
    v65 = *&v75[32];
    v66 = *&v75[48];
    v68 = *&v75[80];
    v67 = *&v75[64];
    v64 = *&v75[16];
    v63 = *v75;
    v29 = *&v75[160];
    v30 = *&v75[176];
    v25 = *&v75[96];
    v26 = *&v75[112];
    v27 = *&v75[128];
    v28 = *&v75[144];
    v21 = *&v75[32];
    v22 = *&v75[48];
    v23 = *&v75[64];
    v24 = *&v75[80];
    v74 = *&v75[192];
    LOWORD(v31[0]) = *&v75[192];
    v19 = *v75;
    v20 = *&v75[16];
    sub_1000070C0(&v63, &v49, &qword_10003AE10, &qword_100028740);
    sub_100007128(&v19, &qword_10003AE10, &qword_100028740);
    *(&v62[9] + 7) = v71[1];
    *(&v62[10] + 7) = v72;
    *(&v62[11] + 7) = v73;
    *(&v62[12] + 7) = v74;
    *(&v62[5] + 7) = v68;
    *(&v62[6] + 7) = v69;
    *(&v62[7] + 7) = v70;
    *(&v62[8] + 7) = v71[0];
    *(&v62[1] + 7) = v64;
    *(&v62[2] + 7) = v65;
    *(&v62[3] + 7) = v66;
    *(&v62[4] + 7) = v67;
    *(v62 + 7) = v63;
    *&v75[161] = v62[9];
    *&v75[177] = v62[10];
    *&v75[193] = v62[11];
    *&v75[202] = *(&v62[11] + 9);
    *&v75[97] = v62[5];
    *&v75[113] = v62[6];
    *&v75[129] = v62[7];
    *&v75[145] = v62[8];
    *&v75[33] = v62[1];
    *&v75[49] = v62[2];
    *&v75[65] = v62[3];
    *&v75[81] = v62[4];
    *v75 = v11;
    *&v75[8] = 0;
    v75[16] = v47[0];
    *&v75[17] = v62[0];
    sub_1000137B8(v75);
    v59 = *&v75[160];
    v60 = *&v75[176];
    v61[0] = *&v75[192];
    *(v61 + 11) = *&v75[203];
    v55 = *&v75[96];
    v56 = *&v75[112];
    v57 = *&v75[128];
    v58 = *&v75[144];
    v51 = *&v75[32];
    v52 = *&v75[48];
    v53 = *&v75[64];
    v54 = *&v75[80];
    v49 = *v75;
    v50 = *&v75[16];
    sub_1000026FC(&qword_10003AE18, &qword_100028748);
    sub_1000026FC(&qword_10003AE20, &qword_100028750);
    sub_100007210(&qword_10003AE28, &qword_10003AE18, &qword_100028748, &protocol conformance descriptor for TupleView<A>);
    sub_100007210(&qword_10003AE30, &qword_10003AE20, &qword_100028750, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    goto LABEL_6;
  }

  v89 = v8 & 1;
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = static VerticalAlignment.center.getter();
  LOBYTE(v19) = 1;
  sub_100012140(a1, v75);
  v40 = *&v75[96];
  v41 = *&v75[112];
  v36 = *&v75[32];
  v37 = *&v75[48];
  v38 = *&v75[64];
  v39 = *&v75[80];
  v34 = *v75;
  v35 = *&v75[16];
  v43[6] = *&v75[96];
  v43[7] = *&v75[112];
  v43[2] = *&v75[32];
  v43[3] = *&v75[48];
  v43[4] = *&v75[64];
  v43[5] = *&v75[80];
  v42 = *&v75[128];
  v44 = *&v75[128];
  v43[0] = *v75;
  v43[1] = *&v75[16];
  sub_1000070C0(&v34, &v49, &qword_10003AE38, &qword_100028758);
  sub_100007128(v43, &qword_10003AE38, &qword_100028758);
  *&v75[39] = v36;
  *&v75[23] = v35;
  *&v75[103] = v40;
  *&v75[87] = v39;
  *&v75[119] = v41;
  *&v75[135] = v42;
  *&v75[55] = v37;
  *&v75[71] = v38;
  *&v75[7] = v34;
  v45[0] = v9;
  v45[1] = 0;
  LOBYTE(v46[0]) = v19;
  *(&v46[2] + 1) = *&v75[32];
  *(&v46[1] + 1) = *&v75[16];
  *(&v46[5] + 1) = *&v75[80];
  *(&v46[6] + 1) = *&v75[96];
  *(&v46[7] + 1) = *&v75[112];
  *(&v46[7] + 10) = *&v75[121];
  *(&v46[3] + 1) = *&v75[48];
  *(&v46[4] + 1) = *&v75[64];
  *(v46 + 1) = *v75;
  v69 = v46[5];
  v70 = v46[6];
  v71[0] = v46[7];
  *(v71 + 10) = *&v75[121];
  v65 = v46[1];
  v66 = v46[2];
  v67 = v46[3];
  v68 = v46[4];
  v63 = v9;
  v64 = v46[0];
  v47[6] = v46[5];
  v47[7] = v46[6];
  v48[0] = v46[7];
  *(v48 + 10) = *&v75[121];
  v47[2] = v46[1];
  v47[3] = v46[2];
  v47[4] = v46[3];
  v47[5] = v46[4];
  v47[0] = v9;
  v47[1] = v46[0];
  *&v32[103] = v46[5];
  *&v32[119] = v46[6];
  *&v32[135] = v46[7];
  *&v32[145] = *&v75[121];
  *&v32[39] = v46[1];
  *&v32[55] = v46[2];
  *&v32[71] = v46[3];
  *&v32[87] = v46[4];
  *&v32[7] = v9;
  v33 = 1;
  *&v32[23] = v46[0];
  sub_1000070C0(v45, v75, &qword_10003AE40, &qword_100028760);
  sub_1000070C0(v47, v75, &qword_10003AE40, &qword_100028760);
  sub_100007128(&v63, &qword_10003AE40, &qword_100028760);
  *&v75[121] = *&v32[112];
  *&v75[137] = *&v32[128];
  *&v75[153] = *&v32[144];
  *&v75[57] = *&v32[48];
  *&v75[73] = *&v32[64];
  *&v75[89] = *&v32[80];
  *&v75[105] = *&v32[96];
  *&v75[9] = *v32;
  *&v75[25] = *&v32[16];
  *v75 = 0;
  v75[8] = 1;
  v75[169] = v32[160];
  *&v75[41] = *&v32[32];
  sub_1000137C4(v75);
  v29 = *&v75[160];
  v30 = *&v75[176];
  v31[0] = *&v75[192];
  *(v31 + 11) = *&v75[203];
  v25 = *&v75[96];
  v26 = *&v75[112];
  v27 = *&v75[128];
  v28 = *&v75[144];
  v21 = *&v75[32];
  v22 = *&v75[48];
  v23 = *&v75[64];
  v24 = *&v75[80];
  v19 = *v75;
  v20 = *&v75[16];
  sub_1000026FC(&qword_10003AE18, &qword_100028748);
  sub_1000026FC(&qword_10003AE20, &qword_100028750);
  sub_100007210(&qword_10003AE28, &qword_10003AE18, &qword_100028748, &protocol conformance descriptor for TupleView<A>);
  sub_100007210(&qword_10003AE30, &qword_10003AE20, &qword_100028750, &protocol conformance descriptor for HStack<A>);
  _ConditionalContent<>.init(storage:)();
  sub_100007128(v45, &qword_10003AE40, &qword_100028760);
  v86 = v59;
  v87 = v60;
  *v88 = v61[0];
  *&v88[11] = *(v61 + 11);
  v82 = v55;
  v83 = v56;
  v84 = v57;
  v85 = v58;
  v78 = v51;
  v79 = v52;
  v80 = v53;
  v81 = v54;
  v76 = v49;
  v77 = v50;
LABEL_6:
  v12 = v87;
  a2[10] = v86;
  a2[11] = v12;
  a2[12] = *v88;
  *(a2 + 203) = *&v88[11];
  v13 = v83;
  a2[6] = v82;
  a2[7] = v13;
  v14 = v85;
  a2[8] = v84;
  a2[9] = v14;
  v15 = v79;
  a2[2] = v78;
  a2[3] = v15;
  v16 = v81;
  a2[4] = v80;
  a2[5] = v16;
  result = *&v76;
  v18 = v77;
  *a2 = v76;
  a2[1] = v18;
  return result;
}

uint64_t sub_100012078(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

__n128 sub_100012140@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CameraCAFManager(0);
  sub_100013980(&qword_10003A698, type metadata accessor for CameraCAFManager, &unk_100029598);
  v6 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v63);

  v7 = v63;
  if (v63)
  {
    v32 = a2;
    KeyPath = swift_getKeyPath();
    type metadata accessor for CameraModel(0);
    sub_100013980(&qword_10003AE98, type metadata accessor for CameraModel, &unk_100028428);
    v8 = EnvironmentObject.init()();
    v28 = v9;
    v29 = v8;
    v10 = v7;
    v31 = v7;
    v11 = static ObservableObject.environmentStore.getter();
    sub_1000026FC(&qword_10003A2D8, &qword_100027830);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100027680;
    v13 = static Edge.Set.bottom.getter();
    *(v12 + 32) = v13;
    v14 = static Edge.Set.top.getter();
    *(v12 + 33) = v14;
    v15 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v13)
    {
      v15 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v14)
    {
      v15 = Edge.Set.init(rawValue:)();
    }

    a2 = v32;
    v16 = v10;
    BYTE8(v50) = *(a1 + 8);
    *&v50 = *a1;
    if ((BYTE8(v50) & 1) == 0)
    {

      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      v16 = v10;
      os_log(_:dso:log:_:_:)();

      v18 = v33;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100007128(&v50, &qword_10003A590, &qword_100028270);
      (*(v34 + 8))(v18, v35);
    }

    EdgeInsets.init(_all:)();
    v39 = 0;
    v36 = 0;
    *&v56 = KeyPath;
    BYTE8(v56) = 0;
    *(&v56 + 9) = *v38;
    HIDWORD(v56) = *&v38[3];
    v57.n128_u64[0] = v29;
    v57.n128_u64[1] = v28;
    *&v58 = v11;
    *(&v58 + 1) = v16;
    LOBYTE(v59) = v15;
    DWORD1(v59) = *&v37[3];
    *(&v59 + 1) = *v37;
    *(&v59 + 1) = v19;
    *&v60[0] = v20;
    *(&v60[0] + 1) = v21;
    *&v60[1] = v22;
    BYTE8(v60[1]) = 0;
    *(&v62[3] + 9) = *(v60 + 9);
    v62[2] = v59;
    v62[3] = v60[0];
    v62[0] = v57;
    v62[1] = v58;
    v61 = v56;
    sub_1000139C8(&v61);
    v68[1] = v62[5];
    v69 = v62[6];
    v70 = v62[7];
    v65 = v62[1];
    v66 = v62[2];
    v67 = v62[3];
    v68[0] = v62[4];
    v63 = v61;
    v64 = v62[0];
    sub_1000070C0(&v56, &v40, &qword_10003AE50, &qword_1000287B8);
    sub_1000026FC(&qword_10003AE50, &qword_1000287B8);
    sub_1000026FC(&qword_10003AE58, &qword_1000287C0);
    sub_1000137E0();
    sub_100007210(&qword_10003AE90, &qword_10003AE58, &qword_1000287C0, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();

    sub_100007128(&v56, &qword_10003AE50, &qword_1000287B8);
    v68[1] = v46;
    v69 = v47;
    v70 = v48;
    v65 = v42;
    v66 = v43;
    v67 = v44;
    v68[0] = v45;
    v63 = v40;
    v64 = v41;
  }

  else
  {
    v23 = static HorizontalAlignment.center.getter();
    LOBYTE(v40) = 1;
    sub_10001280C(a1, &v63);
    v53 = v66;
    v54 = v67;
    v55[0] = v68[0];
    *(v55 + 9) = *(v68 + 9);
    v50 = v63;
    v51 = v64;
    v52 = v65;
    v56 = v63;
    v57 = v64;
    v58 = v65;
    v59 = v66;
    v60[0] = v67;
    v60[1] = v68[0];
    *(&v60[1] + 9) = *(v68 + 9);
    sub_1000070C0(&v50, &v61, &qword_10003AE48, &qword_1000287B0);
    sub_100007128(&v56, &qword_10003AE48, &qword_1000287B0);
    *(&v49[3] + 7) = v53;
    *(&v49[4] + 7) = v54;
    *(&v49[5] + 7) = v55[0];
    v49[6] = *(v55 + 9);
    *(v49 + 7) = v50;
    *(&v49[1] + 7) = v51;
    *(&v49[2] + 7) = v52;
    v61 = v23;
    LOBYTE(v62[0]) = v40;
    *(&v62[2] + 1) = v49[2];
    *(&v62[1] + 1) = v49[1];
    *(v62 + 1) = v49[0];
    *(&v62[6] + 1) = *(v55 + 9);
    *(&v62[5] + 1) = v49[5];
    *(&v62[4] + 1) = v49[4];
    *(&v62[3] + 1) = v49[3];
    sub_1000137D4(&v61);
    v47 = v62[6];
    v48 = v62[7];
    v42 = v62[1];
    v43 = v62[2];
    v45 = v62[4];
    v46 = v62[5];
    v44 = v62[3];
    v40 = v61;
    v41 = v62[0];
    sub_1000026FC(&qword_10003AE50, &qword_1000287B8);
    sub_1000026FC(&qword_10003AE58, &qword_1000287C0);
    sub_1000137E0();
    sub_100007210(&qword_10003AE90, &qword_10003AE58, &qword_1000287C0, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
  }

  v24 = v69;
  *(a2 + 96) = v68[1];
  *(a2 + 112) = v24;
  *(a2 + 128) = v70;
  v25 = v66;
  *(a2 + 32) = v65;
  *(a2 + 48) = v25;
  v26 = v68[0];
  *(a2 + 64) = v67;
  *(a2 + 80) = v26;
  result = v64;
  *a2 = v63;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10001280C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() mainBundle];
  v66._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x494C414954494E49;
  v8._object = 0xEC000000474E495ALL;
  v9.value._countAndFlagsBits = 0x6172656D6143;
  v9.value._object = 0xE600000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v66);
  object = v11._object;
  countAndFlagsBits = v11._countAndFlagsBits;

  KeyPath = swift_getKeyPath();
  LOBYTE(v40) = 1;
  State.init(wrappedValue:)();
  v12 = v45;
  v33 = v46;
  sub_1000026FC(&qword_10003A2D8, &qword_100027830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100027680;
  LOBYTE(v7) = static Edge.Set.bottom.getter();
  *(inited + 32) = v7;
  v14 = static Edge.Set.top.getter();
  *(inited + 33) = v14;
  v15 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v7)
  {
    v15 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v15 = Edge.Set.init(rawValue:)();
  }

  v65 = *(a1 + 8);
  v64 = *a1;
  if ((v65 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007128(&v64, &qword_10003A590, &qword_100028270);
    (*(v31 + 8))(v6, v32);
  }

  EdgeInsets.init(_all:)();
  v63 = 0;
  v59 = 0;
  v39 = 1;
  v18 = v33;
  v17 = KeyPath;
  *&v40 = KeyPath;
  BYTE8(v40) = 0;
  *(&v40 + 9) = *v62;
  HIDWORD(v40) = *&v62[3];
  LOBYTE(v41) = v12;
  DWORD1(v41) = *&v61[3];
  *(&v41 + 1) = *v61;
  v20 = object;
  v19 = countAndFlagsBits;
  *(&v41 + 1) = v33;
  *&v42 = countAndFlagsBits;
  *(&v42 + 1) = object;
  LOBYTE(v43) = v15;
  DWORD1(v43) = *&v60[3];
  *(&v43 + 1) = *v60;
  *(&v43 + 1) = v21;
  *&v44[0] = v22;
  *(&v44[0] + 1) = v23;
  *&v44[1] = v24;
  BYTE8(v44[1]) = 0;
  *(&v38[1] + 7) = v41;
  *(v38 + 7) = v40;
  v38[5] = *(v44 + 9);
  *(&v38[4] + 7) = v44[0];
  *(&v38[3] + 7) = v43;
  *(&v38[2] + 7) = v42;
  *a2 = 0;
  *(a2 + 8) = 1;
  v25 = v38[0];
  *(a2 + 25) = v38[1];
  *(a2 + 9) = v25;
  v26 = v38[2];
  v27 = v38[3];
  v28 = v38[4];
  *(a2 + 89) = v38[5];
  *(a2 + 73) = v28;
  *(a2 + 57) = v27;
  *(a2 + 41) = v26;
  v45 = v17;
  LOBYTE(v46) = 0;
  HIDWORD(v46) = *&v62[3];
  *(&v46 + 1) = *v62;
  v47 = v12;
  *&v48[3] = *&v61[3];
  *v48 = *v61;
  v49 = v18;
  v50 = v19;
  v51 = v20;
  v52 = v15;
  *&v53[3] = *&v60[3];
  *v53 = *v60;
  v54 = v21;
  v55 = v22;
  v56 = v23;
  v57 = v24;
  v58 = 0;
  sub_1000070C0(&v40, &v37, &qword_10003AEA0, &qword_100028800);
  return sub_100007128(&v45, &qword_10003AEA0, &qword_100028800);
}

uint64_t sub_100012C3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CameraCAFManager(0);
  sub_100013980(&qword_10003A698, type metadata accessor for CameraCAFManager, &unk_100029598);
  v4 = StateObject.wrappedValue.getter();
  v5 = [*&v4[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_sessionStatus] currentSession];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 configuration];

    LOBYTE(v6) = [v7 rightHandDrive];
    if (v6)
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v29 = 1;
  v30 = 0;
LABEL_6:
  v8 = static VerticalAlignment.center.getter();
  v31[0] = 1;
  sub_100013150(a1, &v36);
  v45 = *&v37[16];
  v46 = *&v37[32];
  v47[0] = *&v37[48];
  *(v47 + 10) = *&v37[58];
  v43 = v36;
  v44 = *v37;
  *(v49 + 10) = *&v37[58];
  v48[2] = *&v37[16];
  v48[3] = *&v37[32];
  v49[0] = *&v37[48];
  v48[0] = v36;
  v48[1] = *v37;
  sub_1000070C0(&v43, v34, &qword_10003AEA8, &qword_100028808);
  sub_100007128(v48, &qword_10003AEA8, &qword_100028808);
  *&v41[39] = v45;
  *&v41[55] = v46;
  *&v41[71] = v47[0];
  *&v41[81] = *(v47 + 10);
  *&v41[7] = v43;
  *&v41[23] = v44;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v42[6] = v49[2];
  *&v42[22] = v49[3];
  *&v42[38] = v49[4];
  v9 = StateObject.wrappedValue.getter();
  v10 = [*&v9[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_sessionStatus] currentSession];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 configuration];

    v13 = [v12 rightHandDrive];
    v14 = v13 ^ 1;
  }

  else
  {

    v13 = 0;
    v14 = 1;
  }

  v15 = *&v41[48];
  *&v35[49] = *&v41[48];
  v16 = *&v41[64];
  *&v35[65] = *&v41[64];
  v17 = *&v41[80];
  *&v35[81] = *&v41[80];
  v35[97] = v41[96];
  v18 = *v41;
  *&v35[1] = *v41;
  v19 = *&v41[16];
  *&v35[17] = *&v41[16];
  v20 = *&v41[32];
  *&v35[33] = *&v41[32];
  *&v35[98] = *v42;
  *&v35[114] = *&v42[16];
  v22 = *v42;
  v21 = *&v42[16];
  *&v35[130] = *&v42[32];
  *&v35[144] = *&v42[46];
  *&v32[166] = *&v42[46];
  v34[0] = v8;
  v34[1] = 0;
  v35[0] = 1;
  *&v32[54] = *&v35[32];
  *&v32[70] = *&v35[48];
  *&v32[86] = *&v35[64];
  *&v32[102] = *&v35[80];
  *&v32[6] = v8;
  *&v32[22] = *v35;
  *&v32[38] = *&v35[16];
  *&v32[118] = *&v35[96];
  *&v32[134] = *&v35[112];
  *&v32[150] = *&v35[128];
  v23 = *&v32[96];
  *(a2 + 122) = *&v32[112];
  v24 = *&v32[144];
  *(a2 + 138) = *&v32[128];
  *(a2 + 154) = v24;
  *(a2 + 168) = *&v32[158];
  v25 = *&v32[32];
  *(a2 + 58) = *&v32[48];
  v26 = *&v32[80];
  *(a2 + 74) = *&v32[64];
  *(a2 + 90) = v26;
  *(a2 + 106) = v23;
  v27 = *&v32[16];
  *(a2 + 10) = *v32;
  *(a2 + 26) = v27;
  *(a2 + 42) = v25;
  *&v37[49] = v15;
  *&v37[65] = v16;
  *&v37[81] = v17;
  *&v37[1] = v18;
  *&v37[17] = v19;
  *&v37[33] = v20;
  v38 = v22;
  v33 = v29;
  v31[175] = v13;
  *a2 = 0;
  *(a2 + 8) = v30;
  *(a2 + 9) = v29;
  *(a2 + 184) = 0;
  *(a2 + 192) = v14;
  *(a2 + 193) = v13;
  v36 = v8;
  v37[0] = 1;
  v37[97] = v41[96];
  v39 = v21;
  *v40 = *&v42[32];
  *&v40[14] = *&v42[46];
  sub_1000070C0(v34, v31, &qword_10003AEB0, &qword_100028810);
  return sub_100007128(&v36, &qword_10003AEB0, &qword_100028810);
}

double sub_100013150@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CameraCAFManager(0);
  sub_100013980(&qword_10003A698, type metadata accessor for CameraCAFManager, &unk_100029598);
  v7 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v49);

  v8 = v49;
  if (v49)
  {
    v29 = a2;
    KeyPath = swift_getKeyPath();
    type metadata accessor for CameraModel(0);
    sub_100013980(&qword_10003AE98, type metadata accessor for CameraModel, &unk_100028428);
    v9 = EnvironmentObject.init()();
    v25 = v10;
    v26 = v9;
    v28 = v8;
    v11 = static ObservableObject.environmentStore.getter();
    sub_1000026FC(&qword_10003A2D8, &qword_100027830);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100027680;
    v13 = static Edge.Set.leading.getter();
    *(v12 + 32) = v13;
    v14 = static Edge.Set.trailing.getter();
    *(v12 + 33) = v14;
    v15 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v13)
    {
      v15 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v14)
    {
      v15 = Edge.Set.init(rawValue:)();
    }

    a2 = v29;
    v48 = *(a1 + 8);
    v47 = *a1;
    if ((v48 & 1) == 0)
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100007128(&v47, &qword_10003A590, &qword_100028270);
      (*(v30 + 8))(v6, v31);
    }

    EdgeInsets.init(_all:)();
    v41 = 0;
    v38 = 0;
    *&v32 = KeyPath;
    BYTE8(v32) = 0;
    *(&v32 + 9) = *v40;
    HIDWORD(v32) = *&v40[3];
    *&v33 = v26;
    *(&v33 + 1) = v25;
    *&v34 = v11;
    *(&v34 + 1) = v8;
    LOBYTE(v35) = v15;
    DWORD1(v35) = *&v39[3];
    *(&v35 + 1) = *v39;
    *(&v35 + 1) = v17;
    *v36 = v18;
    *&v36[8] = v19;
    *&v36[16] = v20;
    v36[24] = 0;
    v51 = v34;
    v52 = v35;
    *v53 = *v36;
    *&v53[9] = *&v36[9];
    v49 = v32;
    v50 = v33;
    v37 = 0;
    v53[25] = 0;
    sub_1000070C0(&v32, &v42, &qword_10003AE50, &qword_1000287B8);
    sub_1000026FC(&qword_10003AE50, &qword_1000287B8);
    sub_1000137E0();
    sub_1000139D0();
    _ConditionalContent<>.init(storage:)();

    sub_100007128(&v32, &qword_10003AE50, &qword_1000287B8);
    v51 = v44;
    v52 = v45;
    *v53 = v46[0];
    *&v53[10] = *(v46 + 10);
    v49 = v42;
    v50 = v43;
  }

  else
  {
    v21 = swift_getKeyPath();
    LOBYTE(v42) = 1;
    State.init(wrappedValue:)();
    LOBYTE(v32) = 0;
    LOBYTE(v47) = 1;
    *&v42 = v21;
    BYTE8(v42) = 0;
    LOBYTE(v43) = v49;
    *(&v43 + 1) = *(&v49 + 1);
    v44 = xmmword_1000285C0;
    BYTE9(v46[1]) = 1;
    sub_1000026FC(&qword_10003AE50, &qword_1000287B8);
    sub_1000137E0();
    sub_1000139D0();
    _ConditionalContent<>.init(storage:)();
  }

  v22 = v52;
  a2[2] = v51;
  a2[3] = v22;
  a2[4] = *v53;
  *(a2 + 74) = *&v53[10];
  result = *&v49;
  v24 = v50;
  *a2 = v49;
  a2[1] = v24;
  return result;
}

uint64_t sub_1000136CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100013714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000137E0()
{
  result = qword_10003AE60;
  if (!qword_10003AE60)
  {
    sub_1000028A8(&qword_10003AE50, &qword_1000287B8);
    sub_10001386C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AE60);
  }

  return result;
}

unint64_t sub_10001386C()
{
  result = qword_10003AE68;
  if (!qword_10003AE68)
  {
    sub_1000028A8(&qword_10003AE70, &qword_1000287C8);
    sub_100013924();
    sub_100007210(&qword_10003AE80, &qword_10003AE88, &qword_1000287D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AE68);
  }

  return result;
}

unint64_t sub_100013924()
{
  result = qword_10003AE78;
  if (!qword_10003AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AE78);
  }

  return result;
}

uint64_t sub_100013980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000139D0()
{
  result = qword_10003AEB8;
  if (!qword_10003AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AEB8);
  }

  return result;
}

unint64_t sub_100013A28()
{
  result = qword_10003AEC0;
  if (!qword_10003AEC0)
  {
    sub_1000028A8(&qword_10003AE08, &qword_100028738);
    sub_100013AE0();
    sub_100007210(&qword_10003AF18, &qword_10003AF20, &qword_100028838, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AEC0);
  }

  return result;
}

unint64_t sub_100013AE0()
{
  result = qword_10003AEC8;
  if (!qword_10003AEC8)
  {
    sub_1000028A8(&qword_10003ADF8, &qword_100028728);
    sub_100013B98();
    sub_100007210(&qword_10003AF10, &qword_10003AE00, &qword_100028730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AEC8);
  }

  return result;
}

unint64_t sub_100013B98()
{
  result = qword_10003AED0;
  if (!qword_10003AED0)
  {
    sub_1000028A8(&qword_10003AED8, &qword_100028818);
    sub_100013C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AED0);
  }

  return result;
}

unint64_t sub_100013C24()
{
  result = qword_10003AEE0;
  if (!qword_10003AEE0)
  {
    sub_1000028A8(&qword_10003AEE8, &qword_100028820);
    sub_100007210(&qword_10003AEF0, &qword_10003AEF8, &qword_100028828, &protocol conformance descriptor for ZStack<A>);
    sub_100007210(&qword_10003AF00, &qword_10003AF08, &qword_100028830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AEE0);
  }

  return result;
}

__n128 sub_100013D08(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013D14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100013D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100013DF0@<X0>(void *a1@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    KeyPath = swift_getKeyPath();
    type metadata accessor for ButtonBarLayout(0);
    sub_1000141D0(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    v6 = a1;
    v7 = EnvironmentObject.init()();
    v9 = v8;
    type metadata accessor for LayoutSize();
    sub_1000141D0(&qword_10003AD10, type metadata accessor for LayoutSize, &unk_100029260);
    result = EnvironmentObject.init()();
    *a3 = KeyPath;
    *(a3 + 8) = 0;
    *(a3 + 16) = v7;
    *(a3 + 24) = v9;
    *(a3 + 32) = result;
    *(a3 + 40) = v11;
    *(a3 + 48) = v6;
  }

  else
  {
    type metadata accessor for CameraModel(0);
    sub_1000141D0(&qword_10003AE98, type metadata accessor for CameraModel, &unk_100028428);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

__n128 sub_100013F54@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = sub_100014028(*v1, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  sub_1000068B4(v3, v4);
  v9 = v5;
  v10 = static HorizontalAlignment.center.getter();
  v11 = static VerticalAlignment.center.getter();
  *a1 = v7 & 1;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  __asm { FMOV            V0.2D, #4.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = sub_1000141B0;
  *(a1 + 64) = v8;
  return result;
}

uint64_t sub_100014028(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000068C0(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

uint64_t sub_10001416C()
{
  sub_1000068C0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000141D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001421C()
{
  result = qword_10003AF28;
  if (!qword_10003AF28)
  {
    sub_1000028A8(&qword_10003AF30, &qword_100028938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003AF28);
  }

  return result;
}

void sub_100014280()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    do
    {
      v5 = (v1 + 40 + 16 * v3);
      for (i = v3; ; ++i)
      {
        if (i >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v3 = i + 1;
        v8 = *(v5 - 1);
        v7 = *v5;

        sub_100015074(v8, v7, v17);

        if (*(&v17[0] + 1))
        {
          break;
        }

        v5 += 2;
        if (v2 == v3)
        {
          return;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100015994(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_100015994((v9 > 1), v10 + 1, 1, v4);
      }

      v14 = v17[2];
      v15 = v17[3];
      *v16 = v18[0];
      *&v16[9] = *(v18 + 9);
      v11 = v17[0];
      v13 = v17[1];
      *(v4 + 2) = v10 + 1;
      v12 = &v4[96 * v10];
      *(v12 + 3) = v13;
      *(v12 + 105) = *&v16[9];
      *(v12 + 5) = v15;
      *(v12 + 6) = *v16;
      *(v12 + 4) = v14;
      *(v12 + 2) = v11;
    }

    while (v2 - 1 != i);
  }
}

void sub_10001441C(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent);
  v4 = *(v1 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent + 8);
  sub_100015074(v3, v4, &v32);
  if (v33 && (v44[0] = v32, v44[1] = v33, sub_1000070C0(v44, &v34, &qword_10003AD28, &qword_1000289D0), sub_100007128(&v32, &qword_10003ACB0, &qword_100028E20), v5 = dispatch thunk of CAFCameraButtonObservable.selectedEntryIndex.getter(), sub_100007128(v44, &qword_10003AD28, &qword_1000289D0), (v5 & 0x100) == 0) && v5)
  {
    sub_100014280();
    v7 = v6;
    sub_100015074(v3, v4, &v34);
    if (!v35)
    {
      goto LABEL_14;
    }

    v45[0] = v34;
    v45[1] = v35;
    sub_1000070C0(v45, &v27, &qword_10003AD28, &qword_1000289D0);
    sub_100007128(&v34, &qword_10003ACB0, &qword_100028E20);
    v8 = dispatch thunk of CAFCameraButtonObservable.selectedEntryIndex.getter();
    sub_100007128(v45, &qword_10003AD28, &qword_1000289D0);
    if ((v8 & 0x100) != 0 || !v8)
    {
      goto LABEL_14;
    }

    v9 = v8 - 1;
    if (v9 < *(v7 + 16))
    {
      v10 = (v7 + 96 * v9);
      v11 = v10[3];
      v27 = v10[2];
      v28 = v11;
      v12 = v10[4];
      v13 = v10[5];
      v14 = v10[6];
      *&v31[9] = *(v10 + 105);
      v30 = v13;
      *v31 = v14;
      v29 = v12;
      sub_10000695C(&v27, &v26);

      v15 = v31[24];
      v16 = v31[8];
      v17 = *&v31[16];
      v18 = *v31;
      v19 = v30;
      v20 = v29;
      v21 = BYTE8(v29);
      v22 = v28;
      v23 = *(&v27 + 1);
      v24 = v27;
LABEL_11:
      v25 = v21 & 1;
      LOBYTE(v27) = v25;
      *a1 = v24;
      *(a1 + 8) = v23;
      *(a1 + 16) = v22;
      *(a1 + 32) = v20;
      *(a1 + 40) = v25;
      *(a1 + 48) = v19;
      *(a1 + 64) = v18;
      *(a1 + 72) = v16 & 1;
      *(a1 + 80) = v17;
      *(a1 + 88) = v15 & 1;
      return;
    }

    __break(1u);
  }

  else
  {
    sub_100015074(v3, v4, &v34);
    v23 = v35;
    if (v35)
    {
      v17 = v42;
      v18 = v40;
      v19 = v39;
      v20 = v37;
      v22 = v36;
      v24 = v34;
      v15 = v43;
      v16 = v41;
      v21 = v38;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_100014674(char *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10003A258 != -1)
  {
LABEL_41:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000036BC(v6, qword_10003CE48);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "submenuButtons(for:)", v9, 2u);
  }

  sub_100015074(a1, a2, &v55);
  v10 = v56;
  if (!v56)
  {
    return &_swiftEmptyArrayStorage;
  }

  v11 = v55;
  v69 = v59;
  v70[0] = v60[0];
  *(v70 + 9) = *(v60 + 9);
  v67 = v57;
  v68 = v58;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v65[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000B720(0xD000000000000014, 0x8000000100029CA0, v65);
    _os_log_impl(&_mh_execute_header, v12, v13, "[are these buttons correct] %s", v14, 0xCu);
    sub_100008EDC(v15);
  }

  v16 = *(v3 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent);
  v17 = *(v3 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent + 8);
  sub_100015074(v16, v17, &v61);
  if (!v62 || (v71[0] = v61, v71[1] = v62, sub_1000070C0(v71, v65, &qword_10003AD28, &qword_1000289D0), sub_100007128(&v61, &qword_10003ACB0, &qword_100028E20), v18 = dispatch thunk of CAFCameraButtonObservable.selectedEntryIndex.getter(), sub_100007128(v71, &qword_10003AD28, &qword_1000289D0), (v18 & 0x100) != 0) || !v18)
  {
    sub_100014280();
    a1 = v21;
LABEL_34:
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "submenuButtons update: static sort (active not at front)", v38, 2u);
    }

    sub_1000026FC(&qword_10003A588, &qword_100028000);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100028940;
    *(v39 + 32) = v11;
    *(v39 + 40) = v10;
    v40 = v70[0];
    *(v39 + 80) = v69;
    *(v39 + 96) = v40;
    *(v39 + 105) = *(v70 + 9);
    v41 = v68;
    *(v39 + 48) = v67;
    *(v39 + 64) = v41;
    v45 = v39;
    sub_1000070C0(&v55, &v50, &qword_10003ACB0, &qword_100028E20);
    sub_100015DFC(a1);
    v22 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_100016B80(v45);
    }

    v42 = *(v22 + 2);
    *&v50 = v22 + 32;
    *(&v50 + 1) = v42;
    sub_10000F968(&v50);
    sub_100007128(&v55, &qword_10003ACB0, &qword_100028E20);
    return v22;
  }

  a2 = *(v3 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents);

  sub_100015074(v16, v17, &v63);
  if (!v64 || (v72[0] = v63, v72[1] = v64, sub_1000070C0(v72, v65, &qword_10003AD28, &qword_1000289D0), sub_100007128(&v63, &qword_10003ACB0, &qword_100028E20), v19 = dispatch thunk of CAFCameraButtonObservable.selectedEntryIndex.getter(), sub_100007128(v72, &qword_10003AD28, &qword_1000289D0), (v19 & 0x100) != 0))
  {
    v20 = -1;
  }

  else
  {
    v20 = v19 - 1;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = sub_100016B94(a2);
  a2 = result;
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_18:
  if (v20 < *(a2 + 16))
  {
    v43 = v11;
    v44 = v10;
    v24 = a2 + 16 * v20;
    *(v24 + 32) = v16;
    *(v24 + 40) = v17;

    v25 = *(a2 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = a2 + 40;
      a1 = &_swiftEmptyArrayStorage;
      do
      {
        v28 = (v27 + 16 * v26);
        v29 = v26;
        while (1)
        {
          if (v29 >= *(a2 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v26 = v29 + 1;
          v30 = *(v28 - 1);
          v31 = *v28;

          sub_100015074(v30, v31, v65);
          v52 = v65[2];
          v53 = v65[3];
          v54[0] = v66[0];
          *(v54 + 9) = *(v66 + 9);
          v50 = v65[0];
          v51 = v65[1];

          if (*(&v65[0] + 1))
          {
            break;
          }

          v28 += 2;
          ++v29;
          if (v25 == v26)
          {
            goto LABEL_33;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_100015994(0, *(a1 + 2) + 1, 1, a1);
        }

        v27 = a2 + 40;
        v33 = *(a1 + 2);
        v32 = *(a1 + 3);
        if (v33 >= v32 >> 1)
        {
          a1 = sub_100015994((v32 > 1), v33 + 1, 1, a1);
        }

        v47 = v52;
        v48 = v53;
        *v49 = v54[0];
        *&v49[9] = *(v54 + 9);
        v34 = v50;
        v46 = v51;
        *(a1 + 2) = v33 + 1;
        v35 = &a1[96 * v33];
        *(v35 + 3) = v46;
        *(v35 + 105) = *&v49[9];
        *(v35 + 5) = v48;
        *(v35 + 6) = *v49;
        *(v35 + 4) = v47;
        *(v35 + 2) = v34;
      }

      while (v25 - 1 != v29);
    }

    else
    {
      a1 = &_swiftEmptyArrayStorage;
    }

LABEL_33:

    v11 = v43;
    v10 = v44;
    goto LABEL_34;
  }

LABEL_44:
  __break(1u);
  return result;
}