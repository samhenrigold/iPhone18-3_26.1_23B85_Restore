uint64_t type metadata accessor for NetworkActivityCompletion(uint64_t a1)
{
  result = qword_100CAC860;
  if (!qword_100CAC860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005AA94(uint64_t a1)
{
  sub_10005AB78(319, &qword_100CAC870, &type metadata accessor for NWActivity, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10005AB78(319, &unk_100CAC878, &type metadata accessor for NWActivity.CompletionReason, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005AB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10005ABDC()
{
  v1 = *v0;
  v2 = sub_100073CDC(*v0);
  v3 = v2;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      __chkstk_darwin(v2);
      sub_10009ECF4(sub_100195BF0, v12, v6, v7, v8, v9, v10, v11, v12[0], v12[1], v0, v12[3], v12[4], v13, v14, v15, v16, v17, v18, v19);
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v5;
    sub_100079728();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void *sub_10005AD0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100138A80(a1, a2);
  sub_10005AD58(&off_100C429E0);
  return v3;
}

uint64_t sub_10005AD58(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100278C68(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10005AE3C(uint64_t a1)
{
  v2 = type metadata accessor for NetworkActivityCompletion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10005AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v69 = a7;
  v71 = a5;
  v72 = a6;
  v70 = a4;
  v11 = type metadata accessor for TimeState(0);
  v65 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v66 = v12;
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Location();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  v24 = v23;
  sub_100035AD0(a2, v15, &qword_100CA65D8, &unk_100A3D9D0);
  if (sub_100024D10(v15, 1, v24) == 1)
  {
    sub_1000180EC(v15, &qword_100CA65D8, &unk_100A3D9D0);
    if (qword_100CA2730 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000703C(v25, qword_100D90BE8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "WeatherDataStoreObserver: Fetching weather data for all locations", v28, 2u);
    }

    sub_1001906B0();
    sub_1001919F8();
  }

  else
  {
    v29 = (*(v17 + 32))(v22, v15, v24);
    __chkstk_darwin(v29);

    sub_100079C74();
    v62 = v30;
    if (qword_100CA2730 != -1)
    {
      swift_once();
    }

    v64 = a1;
    v31 = type metadata accessor for Logger();
    sub_10000703C(v31, qword_100D90BE8);
    v32 = *(v17 + 16);
    v63 = v22;
    v32(v19, v22, v24);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v61 = v24;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = v24;
      v38 = swift_slowAlloc();
      v73 = v38;
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      v39 = Location.name.getter();
      v41 = v40;
      v42 = *(v17 + 8);
      v59 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v60 = v42;
      v42(v19, v37);
      v43 = sub_100078694(v39, v41, &v73);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v33, v34, "WeatherDataStoreObserver: Fetching weather data for priority location %{private,mask.hash}s", v36, 0x16u);
      sub_100006F14(v38);
    }

    else
    {

      v44 = *(v17 + 8);
      v59 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v60 = v44;
      v44(v19, v24);
    }

    v58 = *(v68 + 16);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = v69;
    v47 = v67;
    sub_100051048(v69, v67, type metadata accessor for TimeState);
    v48 = (*(v65 + 80) + 64) & ~*(v65 + 80);
    v49 = (v66 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    v51 = v62;
    v50[2] = v45;
    v50[3] = v51;
    v53 = v70;
    v52 = v71;
    v50[4] = a3;
    v50[5] = v53;
    v54 = a3;
    v55 = v72;
    v50[6] = v52;
    v50[7] = v55;
    sub_100079D2C(v47, v50 + v48, type metadata accessor for TimeState);
    *(v50 + v49) = v64;

    v56 = v63;
    sub_100079E4C(v63, v54, v53, v52, v55, v46, 0, 0, sub_10018F988, v50, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);

    v60(v56, v61);
  }
}

uint64_t sub_10005B528()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10005B560()
{
  v1 = type metadata accessor for TimeState(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  type metadata accessor for Date();
  sub_1000037E8();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

BOOL sub_10005B658(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Location();
  sub_10004426C();
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10005B6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10005B714(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Date();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_10005B758(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000140C8(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10(0);
  sub_1000037E8();
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  sub_1000B984C();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

uint64_t sub_10005B7F8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10005B8AC(unsigned __int8 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v56 = v11;
  v57 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v55 = v13 - v12;
  v14 = type metadata accessor for Location();
  sub_1000037C4();
  v59 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for UUID();
  sub_1000037C4();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;

  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  (*(v22 + 8))(v26, v20);
  *(v8 + 16) = v27;
  *(v8 + 24) = v29;
  v30 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
  if (qword_100CA2730 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000703C(v31, qword_100D90BE8);
  (*(*(v31 - 8) + 16))(v8 + v30, v32, v31);
  v33 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog__finished;
  v62 = 0;
  sub_10022C350(&qword_100CC77C0, &qword_100A642C8);
  swift_allocObject();
  *(v8 + v33) = Atomic.init(wrappedValue:)();
  *(v8 + OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_kind) = a1;
  v34 = *(v59 + 16);
  v34(v8 + OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_location, a2, v14);
  *(v8 + OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_forced) = a3 & 1;
  v34(v19, a2, v14);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v54 = v36;
    v37 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v37 = 136447235;
    if (a1)
    {
      v38 = sub_1000316BC(a1);
      if (v41)
      {
        v42 = v39;
      }

      else
      {
        v42 = v40;
      }
    }

    else
    {
      v42 = 0xE700000000000000;
      v38 = 0x72656874616577;
    }

    v44 = sub_100078694(v38, v42, &v61);

    *(v37 + 4) = v44;
    *(v37 + 12) = 2160;
    *(v37 + 14) = 1752392040;
    *(v37 + 22) = 2081;
    Location.identifier.getter();
    sub_10005BDF0();
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v56 + 8))(v55, v57);
    v48 = *(v59 + 8);
    v48(v19, v14);
    v49 = sub_100078694(v45, v47, &v61);

    *(v37 + 24) = v49;
    *(v37 + 32) = 1026;
    *(v37 + 34) = a3 & 1;
    *(v37 + 38) = 2082;
    v50 = *(v8 + 16);
    v51 = *(v8 + 24);

    v52 = sub_100078694(v50, v51, &v61);

    *(v37 + 40) = v52;
    _os_log_impl(&_mh_execute_header, v35, v54, "New WeatherData Update Request. kind=%{public}s, location=%{private,mask.hash}s, forced=%{BOOL,public}d, uuid=%{public}s", v37, 0x30u);
    swift_arrayDestroy();
    sub_100016BD8();
    sub_100003884(v37);

    v48(a2, v14);
  }

  else
  {

    v43 = *(v59 + 8);
    v43(a2, v14);
    v43(v19, v14);
  }

  return v8;
}

unint64_t sub_10005BDF0()
{
  result = qword_100CA38C8;
  if (!qword_100CA38C8)
  {
    v3 = type metadata accessor for Location.Identifier();
    result = swift_getWitnessTable(&protocol conformance descriptor for Location.Identifier, v3, v0, v1);
    atomic_store(result, &qword_100CA38C8);
  }

  return result;
}

unint64_t sub_10005BE48(uint64_t a1)
{
  v1 = sub_10005C058();
  if (v2 <= 0x3F)
  {
    v1 = sub_10007B164();
    if (v3 <= 0x3F)
    {
      sub_10000B424(319, &qword_100CACAD0);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_10005C080(319, &qword_100CC7858, &type metadata for Int, "location count ");
      if (v6 > 0x3F)
      {
        return v4;
      }

      sub_10005C0EC(319);
      if (v7 > 0x3F)
      {
        return v4;
      }

      sub_10005C15C();
      if (v8 > 0x3F)
      {
        return v4;
      }

      v1 = sub_10007B218();
      if (v9 > 0x3F)
      {
        return v1;
      }

      sub_10007B1C0(319, &qword_100CC7878, &type metadata for Bool, &type metadata for Double, " lastRefresh ");
      v1 = v10;
      if (v11 > 0x3F)
      {
        return v1;
      }

      sub_10000B424(319, &qword_100CC7880);
      v1 = v12;
      if (v13 > 0x3F)
      {
        return v1;
      }

      v1 = sub_10005C1AC();
      if (v14 > 0x3F)
      {
        return v1;
      }

      sub_10007B1C0(319, &qword_100CC7890, &type metadata for String, &type metadata for Bool, "description animated ");
      if (v15 > 0x3F)
      {
        return v4;
      }

      v1 = type metadata accessor for Location();
      if (v16 <= 0x3F)
      {
        sub_10005C080(319, &unk_100CC7898, &type metadata for String, " reason ");
        v1 = v17;
        if (v18 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void *sub_10005C058()
{
  result = qword_100CC7848;
  if (!qword_100CC7848)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100CC7848);
  }

  return result;
}

void sub_10005C080(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10005C0EC(uint64_t a1)
{
  if (!qword_100CC7860)
  {
    type metadata accessor for Location();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CC7860);
    }
  }
}

void sub_10005C15C()
{
  if (!qword_100CC7868)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC7868);
    }
  }
}

void *sub_10005C1AC()
{
  result = qword_100CC7888;
  if (!qword_100CC7888)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100CC7888);
  }

  return result;
}

void sub_10005C1D4(uint64_t a1)
{
  type metadata accessor for Location();
  sub_1000037C4();
  v368 = v3;
  v369 = v2;
  __chkstk_darwin(v2);
  sub_100003908();
  __chkstk_darwin(v4);
  sub_100003878();
  v367 = v5;
  __chkstk_darwin(v6);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v7);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  v12 = &v361 - v11;
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  v16 = &v361 - v15;
  __chkstk_darwin(v17);
  sub_100003878();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v361 - v21;
  __chkstk_darwin(v23);
  sub_100003878();
  v25 = v24;
  __chkstk_darwin(v26);
  v28 = &v361 - v27;
  __chkstk_darwin(v29);
  v31 = &v361 - v30;
  type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = (v34 - v33);
  sub_10008853C(a1, v34 - v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v215 = *v35;
      v216 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v217 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v217 + v216;
      v38 = Logger.logObject.getter();
      v218 = static os_log_type_t.default.getter();
      if (!sub_100007E70(v218))
      {
        goto LABEL_107;
      }

      swift_slowAlloc();
      v219 = sub_10000539C();
      sub_100022E3C(v219);
      sub_1000499D8(1.5047e-36);
      sub_100010460();
      sub_100051F14();
      *(v40 + 10) = v215;
      sub_10001C6A8();

      goto LABEL_45;
    case 2u:

      swift_errorRetain();

      swift_errorRetain();
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();
      if (!sub_1000250E8(v162))
      {
        goto LABEL_72;
      }

      v163 = sub_100011450();
      v164 = sub_10003A270();
      sub_1000163EC(v164);
      *v163 = 136315394;
      swift_getErrorValue();
      v165 = v371;
      v166 = Error.localizedDescription.getter();
      sub_100024244(v166, v167);
      sub_100021030();
      *(v163 + 4) = v22;

      sub_100020270();
      v168 = sub_1000139EC();
      sub_100078694(v168, v22, v169);
      sub_100036D84();
      *(v163 + 14) = v165;
      sub_100074C88();

      goto LABEL_42;
    case 3u:
      v182 = v368;
      v183 = v369;
      (*(v368 + 32))(v31, v35, v369);
      (*(v182 + 16))(v28, v31, v183);
      v184 = v370;
      sub_100017B2C();
      swift_retain_n();
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.default.getter();
      if (sub_1000250E8(v186))
      {
        v187 = sub_1000205BC();
        v188 = sub_10003A270();
        v372[0] = v188;
        sub_1000045C4(7.2226e-34);
        v189 = Location.id.getter();
        sub_100024244(v189, v190);
        sub_100021030();
        *(v187 + 14) = v183;
        v368 = *(v182 + 8);
        v191 = v28;
        v192 = v369;
        (v368)(v191, v369);
        *(v187 + 22) = 2082;
        v193 = *(v184 + 16);
        v194 = *(v184 + 24);

        v195 = sub_1000139EC();
        sub_100078694(v195, v194, v196);
        sub_100036D84();
        *(v187 + 24) = v193;
        sub_100017B2C();

        sub_10003050C();
        _os_log_impl(v197, v198, v199, v200, v201, 0x20u);
        swift_arrayDestroy();
        sub_100003884(v188);
        sub_100003884(v187);

        (v368)(v31, v192);
      }

      else
      {
        v342 = *(v182 + 8);
        v342(v28, v183);

        sub_100017B2C();

        v342(v31, v183);
      }

      return;
    case 4u:
      v118 = *&v35[*(sub_10022C350(&qword_100CC77B8, &qword_100A642C0) + 48)];
      v119 = v368;
      sub_100069724();
      v120();
      (*(v119 + 16))(v22, v25, v35);
      v121 = v370;
      sub_100017B2C();
      swift_retain_n();
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.default.getter();
      if (sub_1000207B0(v123))
      {
        swift_slowAlloc();
        v367 = v25;
        v124 = sub_1000248B0();
        v366 = v118;
        v125 = v124;
        v372[0] = v124;
        sub_10000CB2C(7.2227e-34);
        v126 = Location.id.getter();
        v128 = sub_100024244(v126, v127);

        *(v25 + 14) = v128;
        v129 = *(v119 + 8);
        v129(v22, v35);
        v83 = v129;
        *(v25 + 22) = 2050;
        *(v25 + 24) = v366;
        *(v25 + 32) = 2082;
        v130 = *(v121 + 24);

        v131 = sub_1000139EC();
        v133 = sub_100078694(v131, v130, v132);

        *(v25 + 34) = v133;
        sub_100017B2C();

        sub_100021554();
        _os_log_impl(v134, v135, v136, v137, v138, 0x2Au);
        swift_arrayDestroy();
        sub_100003884(v125);
        sub_100003884(v25);

        v89 = v367;
        goto LABEL_24;
      }

      v339 = *(v119 + 8);
      v339(v22, v35);

      sub_100017B2C();

      v340 = v25;
      goto LABEL_95;
    case 5u:
      v247 = sub_10022C350(&qword_100CC77B0, &qword_100A642B8);
      v248 = *&v35[*(v247 + 48)];
      v249 = *&v35[*(v247 + 64)];
      v250 = v368;
      v251 = v369;
      (*(v368 + 32))(v19, v35, v369);
      (*(v250 + 16))(v16, v19, v251);
      v252 = v370;
      sub_100031DF4();
      swift_retain_n();
      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.default.getter();
      if (sub_1000207B0(v254))
      {
        swift_slowAlloc();
        v367 = v19;
        v255 = sub_1000248B0();
        v365 = v248;
        v366 = v255;
        v372[0] = v255;
        sub_10000CB2C(7.2228e-34);
        v256 = Location.id.getter();
        sub_100024244(v256, v257);
        v258 = v249;
        sub_100021030();
        *(v19 + 14) = v249;
        v83 = *(v250 + 8);
        v83(v16, v251);
        *(v19 + 22) = 2050;
        *(v19 + 24) = v365;
        *(v19 + 32) = 2050;
        *(v19 + 34) = v258;
        *(v19 + 42) = 2082;
        v259 = *(v252 + 24);

        v260 = sub_1000139EC();
        v262 = sub_100078694(v260, v259, v261);

        *(v19 + 44) = v262;
        sub_100031DF4();

        sub_100021554();
        _os_log_impl(v263, v264, v265, v266, v267, 0x34u);
        v268 = v366;
        swift_arrayDestroy();
        sub_100003884(v268);
        sub_100003884(v19);

        v89 = v367;
        v139 = v251;
        goto LABEL_54;
      }

      v339 = *(v250 + 8);
      v339(v16, v251);

      sub_100031DF4();

      v340 = v19;
      v341 = v251;
      goto LABEL_100;
    case 6u:
      v284 = *v35;
      v285 = *(v35 + 1);
      v286 = v370;

      v287 = sub_10000C918();
      sub_100088528(v287, v288);

      v289 = sub_10000C918();
      sub_100088528(v289, v290);
      v38 = Logger.logObject.getter();
      v291 = static os_log_type_t.default.getter();
      if (!sub_1000207B0(v291))
      {
        v343 = sub_10000C918();
        sub_1000885AC(v343, v344);

        v345 = sub_10000C918();
        sub_1000885AC(v345, v346);
        v347 = sub_10000C918();
        sub_1000885AC(v347, v348);
        goto LABEL_103;
      }

      v292 = sub_100011450();
      v373[0] = sub_10003A270();
      *v292 = 136315394;
      if (v285 == 1)
      {
        v293 = 0xE400000000000000;
        v294 = 1701736302;
      }

      else
      {
        v372[0] = v284;
        v372[1] = v285;
        sub_100060C08();
        v294 = ShortDescribable.description.getter();
        v293 = v350;
      }

      v351 = sub_100078694(v294, v293, v373);

      *(v292 + 4) = v351;
      v352 = sub_10000C918();
      sub_1000885AC(v352, v353);
      v354 = sub_10000C918();
      sub_1000885AC(v354, v355);
      *(v292 + 12) = 2082;
      v356 = *(v286 + 16);
      v357 = *(v286 + 24);

      v358 = sub_100078694(v356, v357, v373);

      *(v292 + 14) = v358;
      v359 = sub_10000C918();
      sub_1000885AC(v359, v360);
      sub_100031DF4();

      _os_log_impl(&_mh_execute_header, v38, v291, "Finished resolving country code. countryCode=%s, uuid=%{public}s", v292, 0x16u);
      swift_arrayDestroy();
      sub_10000EBB0();
      v338 = v292;
      goto LABEL_91;
    case 7u:

      swift_errorRetain();

      swift_errorRetain();
      v161 = Logger.logObject.getter();
      v202 = static os_log_type_t.default.getter();
      if (!sub_1000250E8(v202))
      {
        goto LABEL_72;
      }

      v163 = sub_100011450();
      v203 = sub_10003A270();
      sub_1000163EC(v203);
      *v163 = 136446466;
      swift_getErrorValue();
      v204 = v373[1];
      v205 = Error.localizedDescription.getter();
      sub_100024244(v205, v206);
      sub_100021030();
      *(v163 + 4) = v22;

      sub_100020270();
      v207 = sub_1000139EC();
      sub_100078694(v207, v22, v208);
      sub_100036D84();
      *(v163 + 14) = v204;
      sub_100074C88();

LABEL_42:
      sub_10003050C();
      v214 = 22;
      goto LABEL_71;
    case 8u:
      v304 = v370;

      swift_errorRetain();

      swift_errorRetain();
      v161 = Logger.logObject.getter();
      v305 = static os_log_type_t.error.getter();
      if (sub_1000250E8(v305))
      {
        v163 = sub_1000205BC();
        v306 = sub_10003A270();
        sub_1000163EC(v306);
        sub_1000045C4(7.2226e-34);
        swift_getErrorValue();
        v307 = Error.localizedDescription.getter();
        sub_100024244(v307, v308);
        sub_100021030();
        *(v163 + 14) = v22;

        *(v163 + 22) = 2082;
        v309 = *(v304 + 16);
        v310 = *(v304 + 24);

        v311 = sub_1000139EC();
        sub_100078694(v311, v310, v312);
        sub_100036D84();
        *(v163 + 24) = v309;
        sub_100074C88();

        sub_10003050C();
        v214 = 32;
LABEL_71:
        _os_log_impl(v209, v210, v211, v212, v213, v214);
        sub_100071D30();
        sub_100016BD8();
        sub_100003884(v163);
      }

      else
      {
LABEL_72:

LABEL_103:
      }

      return;
    case 9u:
      v143 = *v35;
      v144 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v145 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v145 + v144;
      v38 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();
      if (!sub_100007E70(v146))
      {
        goto LABEL_107;
      }

      sub_100011450();
      v147 = sub_10000539C();
      sub_100022E3C(v147);
      *v40 = 134349314;
      *(v40 + 4) = v143;
      *(v40 + 12) = 2082;
      v148 = *(v145 + 16);

      sub_100010460();
      sub_100051F14();
      *(v40 + 14) = v148;
      sub_10001C6A8();

      sub_1000371FC();
      v154 = 22;
      goto LABEL_89;
    case 0xAu:
      v298 = *v35;
      sub_10001C6A8();
      swift_retain_n();
      v38 = Logger.logObject.getter();
      v299 = static os_log_type_t.default.getter();
      v300 = sub_1000207B0(v299);
      if (v298 == 1)
      {
        if (v300)
        {
          v301 = sub_100011450();
          v302 = sub_1000205BC();
          sub_100022E3C(v302);
          sub_10003BE4C(3.9123e-34);
          sub_100010460();
          sub_100051F14();
          *(v301 + 14) = v12;
          sub_10001C6A8();

          v303 = "Weather data in app state is expired and we're past the threshold time between updates. We will update. timeIntervalSinceLastRefresh=%{public}f, uuid=%{public}s";
LABEL_106:
          _os_log_impl(&_mh_execute_header, v38, v299, v303, v301, 0x16u);
          sub_100006F14(v19);
          sub_100003884(v19);
          v338 = v301;
          goto LABEL_91;
        }
      }

      else if (v300)
      {
        v301 = sub_100011450();
        v349 = sub_1000205BC();
        sub_100022E3C(v349);
        sub_10003BE4C(3.9123e-34);
        sub_100010460();
        sub_100051F14();
        *(v301 + 14) = v12;
        sub_10001C6A8();

        v303 = "Weather data in app state is expired but we're NOT past the threshold. We will NOT update. timeIntervalSinceLastRefresh=%{public}f, uuid=%{public}s";
        goto LABEL_106;
      }

LABEL_107:
      sub_10001C6A8();

LABEL_108:

      return;
    case 0xBu:
      v98 = v368;
      v99 = v364;
      sub_100069724();
      v100();
      (*(v98 + 16))(v12, v99, v35);
      v101 = v370;
      sub_100074C88();
      swift_retain_n();
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (sub_1000207B0(v103))
      {
        sub_1000205BC();
        v104 = sub_1000248B0();
        sub_1000163EC(v104);
        sub_10000CB2C(7.2226e-34);
        v105 = Location.name.getter();
        sub_100024244(v105, v106);
        sub_100021030();
        *(v99 + 14) = v22;
        v107 = *(v98 + 8);
        v107(v12, v35);
        *(v99 + 22) = 2082;
        v108 = *(v101 + 24);

        v109 = sub_1000139EC();
        v111 = sub_100078694(v109, v108, v110);

        *(v99 + 24) = v111;
        sub_100074C88();

        sub_100021554();
        _os_log_impl(v112, v113, v114, v115, v116, 0x20u);
        sub_100071D30();
        sub_100016BD8();
        sub_100003884(v99);

        v117 = &v374;
        goto LABEL_37;
      }

      v339 = *(v98 + 8);
      v339(v12, v35);
      goto LABEL_97;
    case 0xCu:
      v90 = *v35;
      v140 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v141 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v141 + v140;
      v38 = Logger.logObject.getter();
      v142 = static os_log_type_t.default.getter();
      if (sub_100007E70(v142))
      {
        goto LABEL_17;
      }

      goto LABEL_107;
    case 0xDu:
      v272 = *(v35 + 1);
      v273 = v35[16];
      v274 = v370;
      sub_100074C88();
      swift_retain_n();
      sub_10001168C();
      swift_bridgeObjectRetain_n();
      v38 = Logger.logObject.getter();
      v275 = static os_log_type_t.default.getter();
      if (!sub_1000207B0(v275))
      {
        goto LABEL_60;
      }

      v40 = swift_slowAlloc();
      v41 = sub_10003A270();
      v372[0] = v41;
      *v40 = 136315650;

      v276 = sub_10003BA88();
      v278 = sub_100078694(v276, v272, v277);

      *(v40 + 4) = v278;
      sub_10001168C();
      swift_bridgeObjectRelease_n();
      *(v40 + 12) = 1026;
      *(v40 + 14) = v273;
      *(v40 + 18) = 2082;
      v279 = *(v274 + 24);

      v280 = sub_10003BA88();
      v282 = sub_100078694(v280, v279, v281);

      *(v40 + 20) = v282;
      sub_100074C88();

      v49 = "Dispatch event that Weather statistics has been updated. description=%s, animated=%{BOOL,public}d, uuid=%{public}s";
      v50 = v275;
      v51 = v38;
      v52 = v40;
      v53 = 28;
      goto LABEL_59;
    case 0xEu:
      v90 = *v35;
      v91 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v92 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v92 + v91;
      v38 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (!sub_100007E70(v93))
      {
        goto LABEL_107;
      }

LABEL_17:
      swift_slowAlloc();
      v94 = sub_10000539C();
      sub_100022E3C(v94);
      sub_1000499D8(1.5282e-36);
      sub_100010460();
      sub_100051F14();
      *(v40 + 10) = v90;
      sub_10001C6A8();

LABEL_45:
      sub_1000371FC();
      v154 = 18;
      goto LABEL_89;
    case 0xFu:
      v170 = v368;
      v99 = v365;
      sub_100069724();
      v171();
      v172 = v361;
      (*(v170 + 16))(v361, v99, v35);
      v173 = v370;
      sub_100074C88();
      swift_retain_n();
      v102 = Logger.logObject.getter();
      v174 = static os_log_type_t.default.getter();
      if (sub_1000207B0(v174))
      {
        sub_1000205BC();
        v175 = sub_1000248B0();
        sub_1000163EC(v175);
        sub_10000CB2C(7.2226e-34);
        v176 = Location.id.getter();
        sub_100024244(v176, v177);
        sub_100021030();
        *(v99 + 14) = v22;
        v107 = *(v170 + 8);
        v107(v172, v35);
        *(v99 + 22) = 2082;
        v178 = *(v173 + 24);

        v179 = sub_1000139EC();
        v181 = sub_100078694(v179, v178, v180);

        *(v99 + 24) = v181;
        sub_100074C88();

        _os_log_impl(&_mh_execute_header, v102, v174, "Checking whether a statistics refresh is needed. location=%{private,mask.hash}s uuid=%{public}s", v99, 0x20u);
        sub_100071D30();
        sub_100016BD8();
        sub_100003884(v99);

        v117 = &v375;
LABEL_37:
        v107(*(v117 - 32), v35);
        return;
      }

      v339 = *(v170 + 8);
      v339(v172, v35);
LABEL_97:

      sub_100074C88();

      v340 = v99;
      v341 = v35;
      goto LABEL_100;
    case 0x10u:
      v69 = &v35[*(sub_10022C350(&qword_100CC77A0, &qword_100A642B0) + 48)];
      v71 = *v69;
      v70 = v69[1];
      v72 = v368;
      v73 = v366;
      sub_100069724();
      v74();
      v75 = v362;
      (*(v72 + 16))(v362, v73, v35);
      v76 = v370;
      sub_100017B2C();
      swift_retain_n();
      sub_10001168C();
      swift_bridgeObjectRetain_n();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v77, v78))
      {

        v339 = *(v72 + 8);
        v339(v75, v35);

        sub_100017B2C();

        sub_10001168C();
        swift_bridgeObjectRelease_n();
        v340 = v73;
LABEL_95:
        v341 = v35;
        goto LABEL_100;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v365 = v71;
      v367 = v80;
      v372[0] = v80;
      *v79 = 141558787;
      *(v79 + 4) = 1752392040;
      *(v79 + 12) = 2081;
      v81 = Location.id.getter();
      sub_100024244(v81, v82);
      sub_100021030();
      *(v79 + 14) = v71;
      v83 = *(v72 + 8);
      v83(v75, v35);
      *(v79 + 22) = 2080;

      v84 = sub_100078694(v365, v70, v372);

      *(v79 + 24) = v84;
      sub_10001168C();
      swift_bridgeObjectRelease_n();
      *(v79 + 32) = 2082;
      v85 = *(v76 + 16);
      v86 = *(v76 + 24);

      v87 = sub_100078694(v85, v86, v372);

      *(v79 + 34) = v87;
      sub_100017B2C();

      _os_log_impl(&_mh_execute_header, v77, v78, "Statistics refresh required. location=%{private,mask.hash}s reason=%s uuid=%{public}s", v79, 0x2Au);
      v88 = v367;
      swift_arrayDestroy();
      sub_100003884(v88);
      sub_100003884(v79);

      v89 = v366;
LABEL_24:
      v139 = v35;
LABEL_54:
      v83(v89, v139);
      return;
    case 0x11u:
      v223 = &v35[*(sub_10022C350(&qword_100CC77A0, &qword_100A642B0) + 48)];
      v225 = *v223;
      v224 = v223[1];
      v226 = v367;
      v227 = v368;
      v228 = v369;
      (*(v368 + 32))(v367, v35, v369);
      v229 = v363;
      (*(v227 + 16))(v363, v226, v228);
      v230 = v370;
      sub_100031DF4();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v231 = Logger.logObject.getter();
      v232 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v231, v232))
      {
        v233 = swift_slowAlloc();
        v366 = swift_slowAlloc();
        v372[0] = v366;
        sub_1000045C4(7.2227e-34);
        LODWORD(v365) = v232;
        v234 = Location.id.getter();
        v236 = sub_100024244(v234, v235);

        *(v233 + 14) = v236;
        v237 = *(v227 + 8);
        v237(v229, v228);
        *(v233 + 22) = 2080;

        v238 = sub_100078694(v225, v224, v372);

        *(v233 + 24) = v238;
        swift_bridgeObjectRelease_n();
        *(v233 + 32) = 2082;
        v239 = *(v230 + 16);
        v240 = *(v230 + 24);

        v241 = sub_1000139EC();
        sub_100078694(v241, v240, v242);
        sub_100036D84();
        *(v233 + 34) = v239;
        sub_100031DF4();

        _os_log_impl(&_mh_execute_header, v231, v365, "Statistics refresh is not required. location=%{private,mask.hash}s reason=%s uuid=%{public}s", v233, 0x2Au);
        v243 = v366;
        swift_arrayDestroy();
        sub_100003884(v243);
        sub_100003884(v233);

        v237(v367, v228);
      }

      else
      {

        v339 = *(v227 + 8);
        v339(v229, v228);

        sub_100031DF4();

        swift_bridgeObjectRelease_n();
        v340 = v226;
        v341 = v228;
LABEL_100:
        v339(v340, v341);
      }

      return;
    case 0x12u:
      v295 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v296 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v296 + v295;
      v38 = Logger.logObject.getter();
      v297 = static os_log_type_t.default.getter();
      if (sub_100007E70(v297))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x13u:
      v322 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v323 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v323 + v322;
      v38 = Logger.logObject.getter();
      v324 = static os_log_type_t.default.getter();
      if (sub_100007E70(v324))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x14u:
      v244 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v245 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v245 + v244;
      v38 = Logger.logObject.getter();
      v246 = static os_log_type_t.default.getter();
      if (sub_100007E70(v246))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x15u:
      v269 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v270 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v270 + v269;
      v38 = Logger.logObject.getter();
      v271 = static os_log_type_t.default.getter();
      if (sub_100007E70(v271))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x16u:
      v319 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v320 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v320 + v319;
      v38 = Logger.logObject.getter();
      v321 = static os_log_type_t.default.getter();
      if (sub_100007E70(v321))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x17u:
      v325 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v326 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v326 + v325;
      v38 = Logger.logObject.getter();
      v327 = static os_log_type_t.default.getter();
      if (sub_100007E70(v327))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x18u:
      v158 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v159 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v159 + v158;
      v38 = Logger.logObject.getter();
      v160 = static os_log_type_t.default.getter();
      if (sub_100007E70(v160))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x19u:
      v155 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v156 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v156 + v155;
      v38 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (sub_100007E70(v157))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Au:
      v334 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v335 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v335 + v334;
      v38 = Logger.logObject.getter();
      v336 = static os_log_type_t.default.getter();
      if (sub_100007E70(v336))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Bu:
      v63 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v64 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v64 + v63;
      v38 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (sub_100007E70(v65))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Cu:
      v328 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v329 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v329 + v328;
      v38 = Logger.logObject.getter();
      v330 = static os_log_type_t.default.getter();
      if (sub_100007E70(v330))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Du:
      v331 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v332 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v332 + v331;
      v38 = Logger.logObject.getter();
      v333 = static os_log_type_t.default.getter();
      if (sub_100007E70(v333))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Eu:
      v313 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v314 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v314 + v313;
      v38 = Logger.logObject.getter();
      v315 = static os_log_type_t.default.getter();
      if (sub_100007E70(v315))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x1Fu:
      v220 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v221 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v221 + v220;
      v38 = Logger.logObject.getter();
      v222 = static os_log_type_t.default.getter();
      if (sub_100007E70(v222))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x20u:
      v316 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v317 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v317 + v316;
      v38 = Logger.logObject.getter();
      v318 = static os_log_type_t.default.getter();
      if (sub_100007E70(v318))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x21u:
      v95 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v96 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v96 + v95;
      v38 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (sub_100007E70(v97))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x22u:
      v66 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v67 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v67 + v66;
      v38 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (sub_100007E70(v68))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x23u:
      v57 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v58 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v58 + v57;
      v38 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (sub_100007E70(v59))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x24u:
      v60 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v61 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v61 + v60;
      v38 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (sub_100007E70(v62))
      {
        goto LABEL_88;
      }

      goto LABEL_107;
    case 0x25u:
      v54 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
      v55 = v370;
      sub_10001C6A8();
      swift_retain_n();
      v40 = v55 + v54;
      v38 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (!sub_100007E70(v56))
      {
        goto LABEL_107;
      }

LABEL_88:
      sub_100018264();
      v337 = sub_10000539C();
      sub_100022E3C(v337);
      sub_1000149F0(4.8751e-34);
      sub_100010460();
      sub_100051F14();
      *(v40 + 4) = v12;
      sub_10001C6A8();

      sub_1000371FC();
      v154 = 12;
LABEL_89:
      _os_log_impl(v149, v150, v151, v152, v153, v154);
      sub_100006F14(v19);
      v283 = v19;
      goto LABEL_90;
    default:
      v36 = *(v35 + 1);
      v37 = v370;
      sub_100074C88();
      swift_retain_n();
      sub_10001168C();
      swift_bridgeObjectRetain_n();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (!sub_1000207B0(v39))
      {
LABEL_60:
        sub_100074C88();

        swift_bridgeObjectRelease_n();
        return;
      }

      v40 = sub_1000205BC();
      v41 = sub_10003A270();
      v372[0] = v41;
      *v40 = 141558531;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;

      v42 = sub_10003BA88();
      v44 = sub_100078694(v42, v36, v43);

      *(v40 + 14) = v44;
      sub_10001168C();
      swift_bridgeObjectRelease_n();
      *(v40 + 22) = 2082;
      v45 = *(v37 + 24);

      v46 = sub_10003BA88();
      v48 = sub_100078694(v46, v45, v47);

      *(v40 + 24) = v48;
      sub_100074C88();

      v49 = "Found no data or available data sets for location in app state because of previous error. We will update. error=%{private,mask.hash}s, uuid=%{public}s";
      v50 = v39;
      v51 = v38;
      v52 = v40;
      v53 = 32;
LABEL_59:
      _os_log_impl(&_mh_execute_header, v51, v50, v49, v52, v53);
      swift_arrayDestroy();
      v283 = v41;
LABEL_90:
      sub_100003884(v283);
      v338 = v40;
LABEL_91:
      sub_100003884(v338);
      goto LABEL_108;
  }
}

uint64_t sub_10005E424(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10005E46C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10005E4B4(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Location.Identifier();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10022C350(&qword_100CD12D8, &qword_100A766A8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10005E46C(&qword_100CA3A40, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

void sub_10005E7CC()
{
  sub_100020DF0();
  sub_10002FD38();
  v2 = v1;
  sub_100022718(v1, v3);
  sub_100031B34();
  sub_10001E5DC();
  if (v6)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  sub_10022C350(&qword_100CA3A08, &qword_100A2D8B0);
  v9 = sub_100007EA8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    sub_100020118();
    sub_100013444();
    if (!v12)
    {
      goto LABEL_14;
    }

    v7 = v11;
  }

  if (v8)
  {
    *(*(*v0 + 56) + 8 * v7) = v2;
    sub_1000212EC();
  }

  else
  {
    v15 = sub_10003BD04();
    sub_100087CF4(v15, v16, v17, v2, v18);
    sub_1000212EC();
  }
}

void sub_10005E8B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v51 = *(v2 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v15 = sub_100014268();
  v18 = sub_100086BAC(v15, v16, v17);
  v50 = v6;
  if (v18)
  {
    v19 = v18;
    v49 = v8;
    swift_endAccess();
    if (qword_100CA2798 != -1)
    {
      sub_10001FB30(&qword_100CA2798);
    }

    v20 = type metadata accessor for Logger();
    sub_10000703C(v20, qword_100D90D20);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53[0] = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      v25 = sub_100014268();
      *(v23 + 14) = sub_100078694(v25, v26, v27);
      _os_log_impl(&_mh_execute_header, v21, v22, "Potentially leaked timer, is there a missing call to stopMonitoringLocationLoad? ID=%{private,mask.hash}s", v23, 0x16u);
      sub_100006F14(v24);
      v28 = v24;
      v6 = v50;
      sub_100003884(v28);
      sub_100003884(v23);
    }

    v8 = v49;
    sub_100004D6C();
    sub_100014268();
    v29 = sub_1000F64AC();
    swift_endAccess();

    [v19 invalidate];
  }

  else
  {
    swift_endAccess();
  }

  Date.init()();
  v30 = *(v3 + 40);
  Date.addingTimeInterval(_:)();
  v49 = *(v8 + 1);
  v49(v11, v6);
  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = a2;
  v31[4] = v3;
  v32 = objc_allocWithZone(NSTimer);

  v33 = sub_100087BC8(v14, 0, sub_10089DF1C, v31, 0.0);
  sub_100004D6C();
  v34 = v33;
  swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v3 + 48);
  sub_10005E7CC();
  *(v3 + 48) = v52;
  swift_endAccess();
  UnfairLock.unlock()();
  if (qword_100CA2798 != -1)
  {
    sub_10001FB30(&qword_100CA2798);
  }

  v35 = type metadata accessor for Logger();
  sub_10000703C(v35, qword_100D90D20);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53[0] = v39;
    *v38 = 141558787;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    *(v38 + 14) = sub_100078694(a1, a2, v53);
    *(v38 + 22) = 2048;
    *(v38 + 24) = v30;
    *(v38 + 32) = 2080;
    Date.init()();
    sub_10001D090();
    sub_100066840(v40, v41, &protocol conformance descriptor for Date);
    v42 = v50;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v49(v14, v42);
    v46 = sub_100078694(v43, v45, v53);

    *(v38 + 34) = v46;
    _os_log_impl(&_mh_execute_header, v36, v37, "Starting to monitor location load. ID=%{private,mask.hash}s, Timeout=%f (s), Now=%s", v38, 0x2Au);
    swift_arrayDestroy();
    sub_100003884(v39);
    sub_100003884(v38);
  }

  v47 = [objc_opt_self() mainRunLoop];
  [v47 addTimer:v34 forMode:NSDefaultRunLoopMode];
}

uint64_t sub_10005EE18()
{

  return swift_deallocObject();
}

uint64_t sub_10005EE58()
{
  v0 = type metadata accessor for Domain();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  (*(v10 + 104))(v9 - v8, enum case for Access.protected(_:));
  (*(v2 + 104))(v6, enum case for Domain.standard(_:), v0);
  sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D90798 = result;
  return result;
}

uint64_t sub_10005EFF4()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90D20);
  sub_100049CC4();
  return sub_100074FD0();
}

uint64_t sub_10005F04C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v181 = v2;
  v176 = v4;
  v177 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v182 = v160 - v6;
  v7 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v175 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  v178 = v160 - v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  v180 = v160 - v13;
  v164 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v163 = v14;
  __chkstk_darwin(v15);
  sub_100003990(v160 - v16);
  v169 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v168 = v17;
  __chkstk_darwin(v18);
  sub_1000037D8();
  sub_100003990(v20 - v19);
  v167 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v166 = v21;
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100003990(v24 - v23);
  v161 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000037C4();
  v160[5] = v25;
  __chkstk_darwin(v26);
  sub_100003990(v160 - v27);
  v174 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v173 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  sub_100003990(v31 - v30);
  v32 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  v179 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v160 - v36;
  v38 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003848();
  v171 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  v43 = v160 - v42;
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v184 = v45;
  v185 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_100003990(v160 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v48);
  v183 = v160 - v49;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v51 = sub_100003810(active);
  __chkstk_darwin(v51);
  sub_1000037D8();
  v54 = v53 - v52;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v55);
  sub_1000037D8();
  v58 = (v57 - v56);
  v59 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_1000037D8();
  v63 = v62 - v61;
  v64 = *(a1 + 64);
  sub_1000950F8(v64 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v62 - v61, type metadata accessor for ViewState);
  sub_1000950F8(v63 + v59[5], v58, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001CDF0();
    return sub_10009F078(v58, type metadata accessor for ViewState.SecondaryViewState);
  }

  v66 = *v58;
  if (*(v63 + v59[9] + 8) == 1)
  {
    v67 = [objc_opt_self() currentDevice];
    [v67 userInterfaceIdiom];

    LOBYTE(v67) = *(v63 + v59[7]);
    sub_10001CDF0();
    if ((v67 & 1) == 0)
    {
    }
  }

  else
  {
    sub_10001CDF0();
  }

  sub_1000950F8(v66 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v54, type metadata accessor for LocationViewerActiveLocationState);
  v68 = v185;
  sub_1000038B4(v54, 1, v185);
  if (v75)
  {
  }

  v69 = *(v184 + 32);
  v160[3] = v184 + 32;
  v160[2] = v69;
  v69(v183, v54, v68);
  v70 = v64 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v71 = *(v64 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v72 = Location.Identifier.id.getter();
  sub_1000864C0(v72, v73, v71);

  v74 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000038B4(v37, 1, v74);
  if (v75)
  {
    sub_1000180EC(v37, &qword_100CA37B0, &unk_100A2D740);
    v77 = v181;
    v76 = v182;
    v78 = v179;
    goto LABEL_22;
  }

  sub_1001A0D3C();
  sub_1000232A0();
  sub_10009F078(v37, v79);
  v80 = type metadata accessor for WeatherData(0);
  sub_1000038B4(v43, 1, v80);
  v76 = v182;
  v78 = v179;
  if (v81)
  {
    sub_1000180EC(v43, &qword_100CA3898, &qword_100A314D0);
    v77 = v181;
    goto LABEL_22;
  }

  v160[0] = v74;
  v160[1] = v66;
  v82 = v173;
  v83 = &v43[*(v80 + 24)];
  v84 = v172;
  v85 = v174;
  (*(v173 + 16))(v172, v83, v174);
  sub_100028BB4();
  sub_10009F078(v43, v86);
  v87 = v160[4];
  WeatherDataModel.hourlyForecast.getter();
  (*(v82 + 8))(v84, v85);
  v88 = v161;
  v89 = Forecast.forecast.getter();
  sub_10000E73C();
  v90(v87, v88);
  v77 = v181;

  sub_1001A5E78(v91, v92);
  if (!v93)
  {

    goto LABEL_20;
  }

  v88 = v93;
  sub_1001D3704();
  v95 = v94;

  if ((v95 & 1) == 0)
  {
LABEL_20:
    sub_100040690();
    v161 = static OS_dispatch_queue.main.getter();
    v96 = swift_allocObject();
    swift_weakInit();
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    *(v97 + 24) = v89;
    v189 = sub_1007FBC74;
    v190 = v97;
    sub_100014F08();
    sub_100004418(COERCE_DOUBLE(1107296256));
    v187 = v98;
    v188 = &unk_100C6E908;
    v99 = _Block_copy(&aBlock);

    v100 = v165;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100019F88();
    sub_10007DDB8(v101, v102, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    sub_100049D9C();
    sub_10003C87C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v103 = v161;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v99);

    v78 = v179;
    (*(v168 + 8))(v88, v77);
    v104 = v100;
    v76 = v182;
    (*(v166 + 8))(v104, v167);
    goto LABEL_21;
  }

LABEL_21:
  v74 = v160[0];
LABEL_22:
  v105 = *(v70 + 16);

  v106 = v183;
  v107 = Location.Identifier.id.getter();
  sub_1000864C0(v107, v108, v105);

  sub_1000038B4(v78, 1, v74);
  if (v75)
  {
    sub_1000180EC(v78, &qword_100CA37B0, &unk_100A2D740);
    v109 = v180;
    goto LABEL_34;
  }

  v110 = v171;
  sub_1001A0D3C();
  v111 = v110;
  sub_1000232A0();
  sub_10009F078(v78, v112);
  v113 = type metadata accessor for WeatherData(0);
  sub_1000038B4(v111, 1, v113);
  v109 = v180;
  if (v114)
  {
    sub_1000180EC(v111, &qword_100CA3898, &qword_100A314D0);
    goto LABEL_34;
  }

  v115 = v173;
  v116 = v111 + *(v113 + 24);
  v117 = v111;
  v118 = v172;
  v119 = v174;
  (*(v173 + 16))(v172, v116, v174);
  sub_100028BB4();
  sub_10009F078(v117, v120);
  v121 = v162;
  WeatherDataModel.dailyForecast.getter();
  (*(v115 + 8))(v118, v119);
  v122 = v164;
  v123 = Forecast.forecast.getter();
  sub_10000E73C();
  v124 = v121;
  v77 = v181;
  v125(v124, v122);

  sub_1001863EC(v126, v127);
  if (!v128)
  {

    goto LABEL_32;
  }

  sub_1001D374C();
  v130 = v129;

  if ((v130 & 1) == 0)
  {
LABEL_32:
    sub_100040690();
    v179 = static OS_dispatch_queue.main.getter();
    v131 = swift_allocObject();
    swift_weakInit();
    v132 = v184 + 16;
    v133 = v170;
    (*(v184 + 16))(v170, v106, v68);
    v134 = (v47 + ((*(v132 + 64) + 24) & ~*(v132 + 64)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    *(v135 + 16) = v131;
    sub_100008FB8();
    v136();
    *(v135 + v134) = v123;
    v106 = v183;
    v109 = v180;
    v189 = sub_100185B58;
    v190 = v135;
    sub_100014F08();
    sub_100004418(COERCE_DOUBLE(1107296256));
    v187 = v137;
    v188 = &unk_100C6E8B8;
    v138 = _Block_copy(&aBlock);

    v139 = v165;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100019F88();
    sub_10007DDB8(v140, v141, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    sub_100049D9C();
    sub_10003C87C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v142 = v179;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v138);

    sub_10000E73C();
    v143 = v77;
    v77 = v181;
    v144(v133, v143);
    sub_10000E73C();
    v145(v139, v167);
    goto LABEL_33;
  }

LABEL_33:
  v76 = v182;
LABEL_34:
  (*(v184 + 16))(v109, v106, v68);
  sub_10001B350(v109, 0, 1, v68);
  v146 = OBJC_IVAR____TtC7Weather27LocationViewerStoreObserver_lastViewedLocationIdentifier;
  swift_beginAccess();
  v147 = *(v177 + 48);
  sub_1000952C4(v109, v76);
  sub_1000952C4(v77 + v146, v76 + v147);
  sub_1000038B4(v76, 1, v68);
  v148 = v178;
  if (v75)
  {
    sub_1000180EC(v109, &qword_100CADBA0, &qword_100A3D250);
    sub_1000038B4(v76 + v147, 1, v68);
    if (v75)
    {

      sub_1000180EC(v76, &qword_100CADBA0, &qword_100A3D250);
      return (*(v184 + 8))(v106, v68);
    }

    goto LABEL_42;
  }

  sub_1000952C4(v76, v178);
  sub_1000038B4(v76 + v147, 1, v68);
  if (v149)
  {
    sub_1000180EC(v109, &qword_100CADBA0, &qword_100A3D250);
    (*(v184 + 8))(v148, v68);
LABEL_42:
    sub_1000180EC(v76, &qword_100CADD58, &unk_100A3E650);
    goto LABEL_43;
  }

  v153 = v170;
  sub_100008FB8();
  v154();
  sub_10007DDB8(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v155 = v109;
  v156 = dispatch thunk of static Equatable.== infix(_:_:)();
  v157 = *(v184 + 8);
  v157(v153, v185);
  v158 = v155;
  v68 = v185;
  sub_1000180EC(v158, &qword_100CADBA0, &qword_100A3D250);
  v159 = v183;
  v157(v148, v68);
  sub_1000180EC(v182, &qword_100CADBA0, &qword_100A3D250);
  if (v156)
  {

    return (v157)(v159, v68);
  }

LABEL_43:
  if (qword_100CA29A8 != -1)
  {
    swift_once();
  }

  v191 = Location.Identifier.id.getter();
  v192 = v150;
  sub_10007DDB8(&qword_100CDAF50, type metadata accessor for LocationViewerStoreObserver, "5N\x1B");
  Updatable.save<A>(setting:value:)();

  v151 = v175;
  sub_100008FB8();
  v152();
  sub_10001B350(v151, 0, 1, v68);
  swift_beginAccess();
  sub_10007DEA8(v151, v77 + v146);
  return swift_endAccess();
}

uint64_t sub_1000601C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000601F8()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1000602C4()
{

  return swift_deallocObject();
}

uint64_t sub_10006034C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100060394()
{
  sub_10000C778();
  type metadata accessor for OSSignpostID();
  sub_10000548C();
  type metadata accessor for Location();
  sub_1000037C4();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);
  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1000604AC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v77 = a8;
  v61 = a7;
  v60 = a6;
  v78 = a5;
  v80 = a4;
  v56 = a3;
  v74 = a13;
  v75 = a11;
  v76 = a12;
  v73 = a10;
  v71 = a14;
  v72 = a9;
  v16 = type metadata accessor for WeatherServiceCaching.Options();
  v69 = *(v16 - 8);
  v70 = v16;
  __chkstk_darwin(v16);
  v68 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Location.Identifier();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CAD030, &unk_100A3C400);
  __chkstk_darwin(v19 - 8);
  v67 = &v55 - v20;
  v21 = sub_10022C350(&qword_100CAD038, &unk_100A95810);
  __chkstk_darwin(v21 - 8);
  v64 = &v55 - v22;
  v23 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v23 - 8);
  v62 = &v55 - v24;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v65 = *(Options - 8);
  v66 = Options;
  __chkstk_darwin(Options);
  v63 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v29 = (&v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *a1;
  v30 = a1[1];
  v32 = static os_signpost_type_t.end.getter();
  v79 = a2;
  v33 = a2[56];
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100A2C3F0;
  v35 = Location.name.getter();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_100035744();
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v32, &_mh_execute_header, v33, "Weather:resolveCountryCode", 26, 2, v56, "location %{private}s", 20, 2, v34);

  *v29 = v31;
  v29[1] = v30;
  swift_storeEnumTagMultiPayload();
  sub_100088528(v31, v30);
  sub_10005C1D4(v29);
  sub_100087544();
  v38 = 0;
  v39 = 0;
  if (v30 >= 2)
  {

    v38 = v31;
    v39 = v30;
  }

  v55 = v38;
  v56 = v39;
  v40 = v62;
  Location.timeZone.getter();
  v41 = type metadata accessor for TimeZone();
  sub_10001B350(v40, 0, 1, v41);
  v42 = type metadata accessor for WeatherServiceLocationOptions();
  v43 = v64;
  (*(*(v42 - 8) + 16))(v64, v60, v42);
  sub_10001B350(v43, 0, 1, v42);
  v61 = AppConfiguration.treatmentIDs.getter();
  v44 = v79[33];
  v45 = v79[34];
  sub_1000161C0(v79 + 30, v44);
  v46 = v57;
  Location.identifier.getter();
  v47 = Location.Identifier.id.getter();
  v49 = v48;
  (*(v58 + 8))(v46, v59);
  v50 = v67;
  (*(v45 + 8))(v47, v49, v44, v45);

  v81 = _swiftEmptyArrayStorage;
  sub_1000675AC(&qword_100CE2968, &type metadata accessor for WeatherServiceCaching.Options);
  sub_10022C350(&qword_100CE2970, &qword_100A95820);
  sub_10006768C(&qword_100CE2978, &qword_100CE2970, &qword_100A95820);
  v51 = v68;
  v52 = v70;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = v63;
  sub_10007F81C(v55, v56, v40, v43, v51, v61, v50, 0, v63);

  (*(v69 + 8))(v51, v52);
  sub_100018144(v50, &qword_100CAD030, &unk_100A3C400);
  sub_100018144(v43, &qword_100CAD038, &unk_100A95810);
  sub_100018144(v40, &qword_100CACE08, &unk_100A3C1B0);
  sub_10007FB34(v80, v77, v72, v73, v75, v76, v53, v74 & 1, v78);
  return (*(v65 + 8))(v53, v66);
}

unint64_t sub_100060C08()
{
  result = qword_100CC77A8;
  if (!qword_100CC77A8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for CountryCode, &type metadata for CountryCode, v0, v1);
    atomic_store(result, &qword_100CC77A8);
  }

  return result;
}

void *sub_100060C5C()
{
  sub_10022C350(&qword_100CB6D28, &unk_100A4A7A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = type metadata accessor for LocationNetworkActivityFlow(0);
    v4 = &off_100C73348;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v2;
  *(inited + 56) = v3;
  *(inited + 64) = v4;

  sub_100060DE0(inited + 32, &v13, &qword_100CB6D30, &unk_100A65E70);
  v10[0] = v13;
  v10[1] = v14;
  v11 = v15;
  if (*(&v14 + 1))
  {
    sub_100013188(v10, v12);
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10008708C();
      v5 = v8;
    }

    v6 = v5[2];
    if (v6 >= v5[3] >> 1)
    {
      sub_10008708C();
      v5 = v9;
    }

    v5[2] = v6 + 1;
    sub_100013188(v12, &v5[5 * v6 + 4]);
  }

  else
  {
    sub_10003FDF4(v10, &qword_100CB6D30, &unk_100A65E70);
    v5 = _swiftEmptyArrayStorage;
  }

  swift_setDeallocating();
  sub_1000885E4();
  return v5;
}

uint64_t sub_100060DE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10022C350(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100060E48()
{
  sub_10000C778();
  v33 = v1;
  v34 = v2;
  v35 = v3;
  v4 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_100013E18();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for WeatherNetworkActivity.Domain();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  if (*(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity) && (v21 = *(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8)) != 0 && (*(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId) == v33 ? (v22 = v21 == v34) : (v22 = 0), v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    (*(v16 + 104))(v20, enum case for WeatherNetworkActivity.Domain.weather(_:), v14);
    (*(v9 + 16))(v13, v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_weatherLabel, v7);
    v23 = type metadata accessor for UUID();
    sub_100003934();
    sub_10001B350(v24, v25, v26, v23);

    NWActivity.token.getter();
    sub_10004EC84();
    sub_100049C10();
    WeatherNetworkActivity.init(domain:label:token:parentToken:)();

    v27 = type metadata accessor for WeatherNetworkActivity();
    sub_10001B350(v35, 0, 1, v27);
    sub_10000536C();
  }

  else
  {
    type metadata accessor for WeatherNetworkActivity();
    sub_100003934();
    sub_10000536C();

    sub_10001B350(v28, v29, v30, v31);
  }
}

id sub_1000610E4(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  v4 = sub_10006117C(0xD000000000000015, 0x8000000100AC2BA0, v2);
  type metadata accessor for SceneDelegate();
  [v4 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v4;
}

id sub_10006117C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_10006126C()
{
  result = qword_100CE0DE0;
  if (!qword_100CE0DE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CE0DE0);
  }

  return result;
}

void sub_1000612C8(uint64_t a1)
{
  if (!qword_100CE0E10)
  {
    sub_10022E824(&qword_100CA6028, &qword_100A40610);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE0E10);
    }
  }
}

void sub_10006132C(uint64_t a1)
{
  sub_100080F8C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000613B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10006143C()
{
  result = qword_100CE0F68;
  if (!qword_100CE0F68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0F70, &qword_100A91788);
    v4[0] = sub_10006768C(&qword_100CE0F78, &qword_100CE0F80, &qword_100A91790);
    v4[1] = sub_10006768C(&qword_100CE0F88, &qword_100CE0F90, &qword_100A91798);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE0F68);
  }

  return result;
}

uint64_t sub_100061520(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    v4 = sub_1000201F8();
    result = swift_getWitnessTable(v4);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061564()
{
  result = qword_100CA6DF8;
  if (!qword_100CA6DF8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for _AccessibilityIgnoresInvertColorsViewModifier, &type metadata for _AccessibilityIgnoresInvertColorsViewModifier, v0, v1);
    atomic_store(result, &qword_100CA6DF8);
  }

  return result;
}

unint64_t sub_1000615D8()
{
  result = qword_100CB84C0;
  if (!qword_100CB84C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB84A8, &qword_100A4C4C8);
    v4[0] = sub_100006F64(&qword_100CB84C8, &qword_100CB84B0, &qword_100A4C4D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB84C0);
  }

  return result;
}

uint64_t sub_1000616AC()
{
  sub_10022E824(&qword_100CB75B8, &qword_100A4B4D0);
  sub_1000813FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006172C()
{
  v0 = sub_100003940();
  sub_10022E824(v0, v1);
  type metadata accessor for ScenePhase();
  sub_10006768C(&qword_100CE11C8, &qword_100CE11C0, &qword_100A91B00);
  sub_100061520(&qword_100CE11D0, &type metadata accessor for ScenePhase);
  sub_100008CC8();
  return swift_getOpaqueTypeConformance2();
}

void sub_100061818(uint64_t a1)
{
  sub_10000749C(319);
  if (v1 <= 0x3F)
  {
    sub_10006190C(319, &qword_100CB3B28, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_100061960(319);
      if (v3 <= 0x3F)
      {
        sub_10006190C(319, &qword_100CE0E20, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006190C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100061960(uint64_t a1)
{
  if (!qword_100CB0460)
  {
    type metadata accessor for ObservableResolver();
    sub_1000619F4(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB0460);
    }
  }
}

uint64_t sub_1000619F4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100061A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100061AA4(uint64_t a1)
{
  sub_10008164C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10008164C(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1001BA8DC(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_10008164C(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_100061960(319);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_100061D18(319);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_100081930(319);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_1000819C4(319);
    if (v11 > 0x3F)
    {
      return v4;
    }

    v4 = sub_100081B54(319, &unk_100CB0488, &protocol descriptor for LocationPreviewInteractorType, 1);
    if (v12 > 0x3F)
    {
      return v4;
    }

    v4 = sub_100081B54(319, &qword_100CACC68, &protocol descriptor for WeatherConditionBackgroundManagerType, 0);
    if (v13 > 0x3F)
    {
      return v4;
    }

    v4 = sub_100081B54(319, &unk_100CACC70, &protocol descriptor for MicaLoaderType, 1);
    if (v14 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t type metadata accessor for LocationViewCollisionOptions(uint64_t a1)
{
  result = qword_100CE2690;
  if (!qword_100CE2690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100061D18(uint64_t a1)
{
  if (!qword_100CACC58)
  {
    type metadata accessor for LocationViewCollisionOptions(255);
    sub_100061DAC(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions, byte_100A95518);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CACC58);
    }
  }
}

uint64_t sub_100061DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100061DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100061E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100061EA4(uint64_t a1)
{
  v1 = type metadata accessor for LocationPreviewContentInput(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100061F1C(uint64_t a1)
{
  type metadata accessor for PreviewLocation(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationPreviewModalViewState(319);
    if (v2 <= 0x3F)
    {
      sub_1000630EC(319, &unk_100CAEB40, &type metadata accessor for Location.Identifier);
      if (v3 <= 0x3F)
      {
        sub_1000630EC(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100062064(uint64_t a1)
{
  result = type metadata accessor for PreviewLocation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherConditionBackgroundModel();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LocationPreviewModalViewModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for ReportWeatherView(uint64_t a1)
{
  result = qword_100CA6D10;
  if (!qword_100CA6D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062180(uint64_t a1)
{
  sub_100081BC8(319);
  if (v1 <= 0x3F)
  {
    sub_10006223C(319);
    if (v2 <= 0x3F)
    {
      sub_100081C3C();
      if (v3 <= 0x3F)
      {
        sub_100081C98();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006223C(uint64_t a1)
{
  if (!qword_100CA6D30)
  {
    sub_10022E824(&qword_100CA4968, qword_100A31CE0);
    sub_10023FBF4(&qword_100CA4970, &qword_100CA4968, qword_100A31CE0, asc_100AA1480);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA6D30);
    }
  }
}

void sub_1000622F0(uint64_t a1)
{
  if (!qword_100CDB8A0)
  {
    sub_10022E824(&qword_100CA4D70, &unk_100A8C940);
    sub_10023FBF4(&qword_100CA4D78, &qword_100CA4D70, &unk_100A8C940, asc_100AA1480);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CDB8A0);
    }
  }
}

uint64_t sub_1000623B4(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NewsDataModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s11NormalModelVMa(uint64_t a1)
{
  result = qword_100CDC5A8;
  if (!qword_100CDC5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000624A4(uint64_t a1)
{
  sub_100081F08(319, &qword_100CCD0F0, _s11NormalModelVMa);
  if (v1 <= 0x3F)
  {
    sub_100081F08(319, &unk_100CCD0F8, _s10PolarModelVMa);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100062550(uint64_t a1)
{
  if (!qword_100CAA070)
  {
    type metadata accessor for DetailComponentContainerViewModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CAA070);
    }
  }
}

void sub_1000625A8()
{
  if (!qword_100CB8A00)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8A00);
    }
  }
}

uint64_t sub_100062618(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticleComponentViewModel(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1000626C0(uint64_t a1)
{
  result = sub_100062734();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NewsArticleComponentContentViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100062734()
{
  result = qword_100CAEF10;
  if (!qword_100CAEF10)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100CAEF10);
  }

  return result;
}

uint64_t type metadata accessor for DetailComponentAction(uint64_t a1)
{
  result = qword_100CBF098;
  if (!qword_100CBF098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000627C8(uint64_t a1)
{
  if (!qword_100CB8A08)
  {
    type metadata accessor for DetailComponentAction(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB8A08);
    }
  }
}

uint64_t sub_100062820(uint64_t a1)
{
  sub_1000822DC(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for URL();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1000628F4(uint64_t a1)
{
  sub_100007760();
  if (v1 <= 0x3F)
  {
    sub_100082368(319, &qword_100CB7650, &type metadata accessor for WeatherDescription);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ConditionDetailPlatterViewModel.Body(319);
      if (v3 <= 0x3F)
      {
        sub_100082368(319, &unk_100CE78D8, type metadata accessor for ConditionDetailPlatterViewModel.Body);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100062A28(uint64_t a1)
{
  type metadata accessor for WeatherDescription();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v2 <= 0x3F)
    {
      sub_100062AFC(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DetailComponentContainerViewModel(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PrecipitationTotalPlatterViewModel();
          if (v5 <= 0x3F)
          {
            type metadata accessor for ConditionDetailDynamicContentIdentifier(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100062AFC(uint64_t a1)
{
  if (!qword_100CE79A0)
  {
    sub_10022E824(&qword_100CB5CA8, &qword_100A494D0);
    sub_100062C08();
    v1 = type metadata accessor for NonEmpty();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE79A0);
    }
  }
}

uint64_t sub_100062B8C(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100062C08()
{
  result = qword_100CE79A8;
  if (!qword_100CE79A8)
  {
    v3 = sub_10022E824(&qword_100CB5CA8, &qword_100A494D0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CE79A8);
  }

  return result;
}

uint64_t type metadata accessor for ConditionDetailDynamicContentIdentifier(uint64_t a1)
{
  result = qword_100CE3CB0;
  if (!qword_100CE3CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062CB8(uint64_t a1)
{
  type metadata accessor for Location.Identifier();
  if (v1 <= 0x3F)
  {
    sub_100009CCC(319, &qword_100CADC30, &type metadata accessor for Location.Identifier);
    if (v2 <= 0x3F)
    {
      sub_100045548(319, &qword_100CD8B28, &type metadata for LocationViewRowViewModel, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100009CCC(319, &qword_100CD8B30, type metadata accessor for LocationFooterViewModel);
        if (v4 <= 0x3F)
        {
          sub_10000C70C(319, &qword_100CA51B0, NSUnitTemperature_ptr);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v6 <= 0x3F)
            {
              sub_100009CCC(319, &qword_100CD8B38, &type metadata accessor for ForegroundEffect);
              if (v7 <= 0x3F)
              {
                sub_1000458BC();
                if (v8 <= 0x3F)
                {
                  sub_100045548(319, &unk_100CD8B48, &type metadata for KnownLocationViewLayout, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_100009CCC(319, &qword_100CB8F20, type metadata accessor for PreviewLocation);
                    if (v10 <= 0x3F)
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

uint64_t sub_100062F1C(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocationOfInterest();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100062FB8(uint64_t a1)
{
  if (!qword_100CD84E8)
  {
    type metadata accessor for LocationDisplayContext();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CD84E8);
    }
  }
}

void sub_100063020()
{
  if (!qword_100CDD940)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDD940);
    }
  }
}

void sub_1000630EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100063140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1000631CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CACA20, &unk_100A3BE90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C58978;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100063278@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WeatherEventDescriptionStringBuilder();
  swift_allocObject();
  result = WeatherEventDescriptionStringBuilder.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for WeatherEventDescriptionStringBuilder;
  *a1 = result;
  return result;
}

uint64_t sub_1000632F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubNotificationsOptInStatusFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C5EC88;
  *a1 = result;
  return result;
}

void sub_100063350(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[8];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return;
    }

    type metadata accessor for LearnMoreAttributorViewModel(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[16];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
      v11 = a4[22];
    }
  }

  sub_10001B350(a1 + v11, a2, a2, v10);
}

uint64_t sub_100063470(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_100013188(a2, v3 + 24);
  sub_100013188(a3, v3 + 64);
  return v3;
}

uint64_t sub_1000634B4()
{
  sub_10022C350(&qword_100CCBE40, &qword_100A6B618);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE48, &qword_100A6B620);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE50, &qword_100A6B628);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4C18, &qword_100A2EEB0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE58, &qword_100A6B630);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for WeatherConditionBackgroundModelInputFactory(0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE60, &qword_100A6B638);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t type metadata accessor for LocationViewerInput(uint64_t a1)
{
  result = qword_100CA3810;
  if (!qword_100CA3810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100063720(uint64_t a1)
{
  type metadata accessor for LocationViewerActiveLocationState(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationModel();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocationsState(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          type metadata accessor for UIInterfaceOrientation(319);
          if (v5 <= 0x3F)
          {
            sub_10009D580(319);
            if (v6 <= 0x3F)
            {
              sub_10009B604(319);
              if (v7 <= 0x3F)
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

void sub_100063848(uint64_t a1)
{
  type metadata accessor for LocationModel();
  if (v1 <= 0x3F)
  {
    sub_10009B65C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ConditionPickerMenuViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_10009D580(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100063928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1000639AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95F0, &qword_100A67868);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v383)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9670, &qword_100A678F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v381)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95F8, &qword_100A67870);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v379)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9600, &qword_100A67878);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v377)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9608, &qword_100A67880);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v375)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9610, &qword_100A67888);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v373)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9618, &qword_100A67890);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v371)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9620, &qword_100A67898);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v369)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908, &unk_100A2EC20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v367)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9628, &unk_100A678A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v365)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9630, &qword_100A678B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v363)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9638, &qword_100A678C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v361)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9640, &qword_100A678C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v359)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9648, &qword_100A678D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v357)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9650, &qword_100A678D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v355)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9658, &qword_100A678E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v353)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9668, &qword_100A678F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v351)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9680, &qword_100A67908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v349)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9688, &qword_100A67910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v347)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v285 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9690, &qword_100A67918);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v345)
  {
    v5 = sub_10002D7F8(v382, v383);
    v284 = v214;
    v6 = __chkstk_darwin(v5);
    v8 = (v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v380, v381);
    v283 = v214;
    v11 = __chkstk_darwin(v10);
    v13 = (v214 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v378, v379);
    v282 = v214;
    v16 = __chkstk_darwin(v15);
    v18 = (v214 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_10002D7F8(v376, v377);
    v281 = v214;
    v21 = __chkstk_darwin(v20);
    v264 = (v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v21);
    v24 = sub_10002D7F8(v374, v375);
    v280 = v214;
    v25 = __chkstk_darwin(v24);
    v263 = (v214 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v25);
    v28 = sub_10002D7F8(v372, v373);
    v279 = v214;
    v29 = __chkstk_darwin(v28);
    v262 = (v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v29);
    v32 = sub_10002D7F8(v370, v371);
    v278 = v214;
    v33 = __chkstk_darwin(v32);
    v261 = (v214 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v33);
    v36 = sub_10002D7F8(v368, v369);
    v277 = v214;
    v37 = __chkstk_darwin(v36);
    v260 = (v214 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v37);
    v40 = sub_10002D7F8(v366, v367);
    v276 = v214;
    v41 = __chkstk_darwin(v40);
    v259 = (v214 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v41);
    v44 = sub_10002D7F8(v364, v365);
    v275 = v214;
    v45 = __chkstk_darwin(v44);
    v258 = (v214 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v45);
    v48 = sub_10002D7F8(v362, v363);
    v274 = v214;
    v49 = __chkstk_darwin(v48);
    v257 = (v214 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v49);
    v52 = sub_10002D7F8(v360, v361);
    v273 = v214;
    v53 = __chkstk_darwin(v52);
    v256 = (v214 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v53);
    v56 = sub_10002D7F8(v358, v359);
    v272 = v214;
    v57 = __chkstk_darwin(v56);
    v255 = (v214 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v57);
    v60 = sub_10002D7F8(v356, v357);
    v271 = v214;
    v61 = __chkstk_darwin(v60);
    v254 = (v214 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v61);
    v64 = sub_10002D7F8(v354, v355);
    v270 = v214;
    v65 = __chkstk_darwin(v64);
    v253 = (v214 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v67 + 16))(v65);
    v68 = sub_10002D7F8(v352, v353);
    v269 = v214;
    v69 = __chkstk_darwin(v68);
    v252 = (v214 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))(v69);
    v72 = sub_10002D7F8(v350, v351);
    v268 = v214;
    v73 = __chkstk_darwin(v72);
    v75 = (v214 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v76 + 16))(v75, v73);
    v77 = sub_10002D7F8(v348, v349);
    v267 = v214;
    v78 = __chkstk_darwin(v77);
    v80 = (v214 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v81 + 16))(v80, v78);
    v82 = sub_10002D7F8(v346, v347);
    v266 = v214;
    v83 = __chkstk_darwin(v82);
    v85 = (v214 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))(v85, v83);
    v87 = sub_10002D7F8(v344, v345);
    v265 = v214;
    v88 = __chkstk_darwin(v87);
    v90 = (v214 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v91 + 16))(v90, v88);
    v92 = *v8;
    v93 = *v13;
    v94 = *v18;
    v95 = *v264;
    v96 = *v263;
    v97 = *v261;
    v244 = *v262;
    v245 = v97;
    v98 = *v260;
    v99 = *v259;
    v248 = *v258;
    v100 = *v257;
    v246 = v98;
    v247 = v100;
    v249 = *v256;
    HourPrecipitationComponentViewModelFactory = v99;
    v251 = *v255;
    v254 = *v254;
    v256 = *v253;
    v101 = *v75;
    v102 = *v80;
    v103 = *v85;
    v263 = *v252;
    v264 = v103;
    v104 = *v90;
    v105 = type metadata accessor for AirQualityComponentViewModelFactory();
    v343[4] = &off_100C78BE0;
    v343[3] = v105;
    v343[0] = v92;
    v262 = type metadata accessor for AveragesComponentViewModelFactory();
    v342 = &off_100C58D88;
    v341 = v262;
    v340[0] = v93;
    v261 = type metadata accessor for DailyForecastComponentViewModelFactory();
    v339 = &off_100C54B78;
    v338 = v261;
    v337[0] = v94;
    v260 = type metadata accessor for FeelsLikeComponentViewModelFactory();
    v336 = &off_100C75080;
    v335 = v260;
    v334[0] = v95;
    v259 = type metadata accessor for HourlyForecastComponentViewModelFactory();
    v333 = &off_100C5BDB8;
    v332 = v259;
    v331[0] = v96;
    v258 = type metadata accessor for HumidityComponentViewModelFactory();
    v330 = &off_100C4DCB8;
    v329 = v258;
    v328[0] = v244;
    v257 = type metadata accessor for MapComponentViewModelFactory();
    v327 = &off_100C5E860;
    v326 = v257;
    v325[0] = v245;
    v255 = type metadata accessor for MoonComponentViewModelFactory();
    v324 = &off_100C6AD88;
    v323 = v255;
    v322[0] = v246;
    v252 = type metadata accessor for NewsArticleComponentViewModelFactory();
    v321 = &off_100C60578;
    v320 = v252;
    v319[0] = HourPrecipitationComponentViewModelFactory;
    HourPrecipitationComponentViewModelFactory = type metadata accessor for NextHourPrecipitationComponentViewModelFactory();
    v318 = &off_100C64BF8;
    v317 = HourPrecipitationComponentViewModelFactory;
    v316[0] = v248;
    v248 = type metadata accessor for NotificationsOptInComponentViewModelFactory();
    v315 = &off_100C59388;
    v314 = v248;
    v313[0] = v247;
    v246 = type metadata accessor for NotificationsResubscriptionComponentViewModelFactory();
    v312 = &off_100C50BB0;
    v311 = v246;
    v310[0] = v249;
    v244 = type metadata accessor for PressureComponentViewModelFactory();
    v309 = &off_100C79910;
    v308 = v244;
    v307[0] = v251;
    v243 = type metadata accessor for PrecipitationTotalComponentViewModelFactory();
    v306 = &off_100C68510;
    v305 = v243;
    v304[0] = v254;
    v242 = type metadata accessor for ReportWeatherComponentViewModelFactory();
    v303 = &off_100C6AC68;
    v302 = v242;
    v301[0] = v256;
    v254 = type metadata accessor for SevereAlertComponentViewModelFactory(0);
    v300 = &off_100C70E70;
    v299 = v254;
    v298[0] = v263;
    v253 = type metadata accessor for SunriseSunsetComponentViewModelFactory(0);
    v297 = &off_100C50DC8;
    v296 = v253;
    v295[0] = v101;
    v251 = type metadata accessor for UVIndexComponentViewModelFactory();
    v294 = &off_100C6CAA8;
    v293 = v251;
    v292[0] = v102;
    v249 = type metadata accessor for VisibilityComponentViewModelFactory();
    v291 = &off_100C69B48;
    v290 = v249;
    v289[0] = v264;
    v247 = type metadata accessor for WindComponentViewModelFactory();
    v288 = &off_100C64E78;
    v287 = v247;
    v286[0] = v104;
    v264 = type metadata accessor for LocationComponentViewModelFactory();
    v106 = swift_allocObject();
    v107 = sub_10002D7F8(v343, v105);
    v263 = v214;
    v237 = v105;
    v108 = __chkstk_darwin(v107);
    v239 = (v214 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v110 + 16))(v108);
    v111 = sub_10002D7F8(v340, v341);
    v256 = v214;
    v112 = __chkstk_darwin(v111);
    v236 = (v214 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v114 + 16))(v112);
    v115 = sub_10002D7F8(v337, v338);
    v245 = v214;
    v116 = __chkstk_darwin(v115);
    v234 = (v214 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v118 + 16))(v116);
    v119 = sub_10002D7F8(v334, v335);
    v241 = v214;
    v120 = __chkstk_darwin(v119);
    v232 = (v214 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v122 + 16))(v120);
    v123 = sub_10002D7F8(v331, v332);
    v240 = v214;
    v124 = __chkstk_darwin(v123);
    v230 = (v214 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v126 + 16))(v124);
    v127 = sub_10002D7F8(v328, v329);
    v238 = v214;
    v128 = __chkstk_darwin(v127);
    v228 = (v214 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v130 + 16))(v128);
    v131 = sub_10002D7F8(v325, v326);
    v235 = v214;
    v132 = __chkstk_darwin(v131);
    v227 = (v214 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v134 + 16))(v132);
    v135 = sub_10002D7F8(v322, v323);
    v233 = v214;
    v136 = __chkstk_darwin(v135);
    v225 = (v214 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v138 + 16))(v136);
    v139 = sub_10002D7F8(v319, v320);
    v231 = v214;
    v140 = __chkstk_darwin(v139);
    v223 = (v214 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v142 + 16))(v140);
    v143 = sub_10002D7F8(v316, v317);
    v229 = v214;
    v144 = __chkstk_darwin(v143);
    v221 = (v214 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v146 + 16))(v144);
    v147 = sub_10002D7F8(v313, v314);
    v226 = v214;
    v148 = __chkstk_darwin(v147);
    v219 = (v214 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v150 + 16))(v148);
    v151 = sub_10002D7F8(v310, v311);
    v224 = v214;
    v152 = __chkstk_darwin(v151);
    v217 = (v214 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v154 + 16))(v152);
    v155 = sub_10002D7F8(v307, v308);
    v222 = v214;
    v156 = __chkstk_darwin(v155);
    v215 = (v214 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v158 + 16))(v156);
    v159 = sub_10002D7F8(v304, v305);
    v220 = v214;
    v160 = __chkstk_darwin(v159);
    v162 = (v214 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v163 + 16))(v162, v160);
    v164 = sub_10002D7F8(v301, v302);
    v218 = v214;
    v165 = __chkstk_darwin(v164);
    v167 = (v214 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v168 + 16))(v167, v165);
    v169 = sub_10002D7F8(v298, v299);
    v216 = v214;
    v170 = __chkstk_darwin(v169);
    v172 = (v214 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v173 + 16))(v172, v170);
    v174 = sub_10002D7F8(v295, v296);
    v214[3] = v214;
    v175 = __chkstk_darwin(v174);
    v177 = (v214 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v178 + 16))(v177, v175);
    v179 = sub_10002D7F8(v292, v293);
    v214[2] = v214;
    v180 = __chkstk_darwin(v179);
    v182 = (v214 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v183 + 16))(v182, v180);
    v184 = sub_10002D7F8(v289, v290);
    v214[1] = v214;
    v185 = __chkstk_darwin(v184);
    v187 = (v214 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v188 + 16))(v187, v185);
    v189 = sub_10002D7F8(v286, v287);
    v214[0] = v214;
    v190 = __chkstk_darwin(v189);
    v192 = (v214 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v193 + 16))(v192, v190);
    v106[5] = v237;
    v106[6] = &off_100C78BE0;
    v106[10] = v262;
    v106[11] = &off_100C58D88;
    v106[15] = v261;
    v106[16] = &off_100C54B78;
    v106[20] = v260;
    v106[21] = &off_100C75080;
    v106[25] = v259;
    v106[26] = &off_100C5BDB8;
    v106[30] = v258;
    v106[31] = &off_100C4DCB8;
    v106[35] = v257;
    v106[36] = &off_100C5E860;
    v106[40] = v255;
    v106[41] = &off_100C6AD88;
    v106[45] = v252;
    v106[46] = &off_100C60578;
    v106[50] = HourPrecipitationComponentViewModelFactory;
    v106[51] = &off_100C64BF8;
    v106[55] = v248;
    v106[56] = &off_100C59388;
    v106[60] = v246;
    v106[61] = &off_100C50BB0;
    v106[65] = v244;
    v106[66] = &off_100C79910;
    v106[70] = v243;
    v106[71] = &off_100C68510;
    v106[75] = v242;
    v194 = *v236;
    v195 = *v234;
    v196 = *v232;
    v197 = *v230;
    v198 = *v228;
    v199 = *v227;
    v200 = *v225;
    v201 = *v223;
    v202 = *v221;
    v203 = *v219;
    v204 = *v217;
    v205 = *v215;
    v206 = *v162;
    v207 = *v167;
    v208 = *v172;
    v209 = *v177;
    v210 = *v182;
    v211 = *v187;
    v212 = *v192;
    v106[2] = *v239;
    v106[7] = v194;
    v106[12] = v195;
    v106[17] = v196;
    v106[22] = v197;
    v106[27] = v198;
    v106[32] = v199;
    v106[37] = v200;
    v106[42] = v201;
    v106[47] = v202;
    v106[52] = v203;
    v106[57] = v204;
    v106[62] = v205;
    v106[67] = v206;
    v106[76] = &off_100C6AC68;
    v106[72] = v207;
    v106[80] = v254;
    v106[81] = &off_100C70E70;
    v106[77] = v208;
    v106[85] = v253;
    v106[86] = &off_100C50DC8;
    v106[82] = v209;
    v106[90] = v251;
    v106[91] = &off_100C6CAA8;
    v106[87] = v210;
    v106[95] = v249;
    v106[96] = &off_100C69B48;
    v106[92] = v211;
    v106[100] = v247;
    v106[101] = &off_100C64E78;
    v106[97] = v212;
    sub_100006F14(v286);
    sub_100006F14(v289);
    sub_100006F14(v292);
    sub_100006F14(v295);
    sub_100006F14(v298);
    sub_100006F14(v301);
    sub_100006F14(v304);
    sub_100006F14(v307);
    sub_100006F14(v310);
    sub_100006F14(v313);
    sub_100006F14(v316);
    sub_100006F14(v319);
    sub_100006F14(v322);
    sub_100006F14(v325);
    sub_100006F14(v328);
    sub_100006F14(v331);
    sub_100006F14(v334);
    sub_100006F14(v337);
    sub_100006F14(v340);
    sub_100006F14(v343);
    sub_100006F14(v344);
    sub_100006F14(v346);
    sub_100006F14(v348);
    sub_100006F14(v350);
    sub_100006F14(v352);
    sub_100006F14(v354);
    sub_100006F14(v356);
    sub_100006F14(v358);
    sub_100006F14(v360);
    sub_100006F14(v362);
    sub_100006F14(v364);
    sub_100006F14(v366);
    sub_100006F14(v368);
    sub_100006F14(v370);
    sub_100006F14(v372);
    sub_100006F14(v374);
    sub_100006F14(v376);
    sub_100006F14(v378);
    sub_100006F14(v380);
    result = sub_100006F14(v382);
    v213 = v285;
    v285[3] = v264;
    v213[4] = &off_100C55358;
    *v213 = v106;
    return result;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_100066124()
{
  result = qword_100CC96B8;
  if (!qword_100CC96B8)
  {
    v3 = sub_10022E824(&qword_100CC96B0, &unk_100A67940);
    result = swift_getWitnessTable(byte_100A4F2F8, v3, v0, v1);
    atomic_store(result, &qword_100CC96B8);
  }

  return result;
}

uint64_t type metadata accessor for SevereAlertComponentViewModelFactory(uint64_t a1)
{
  result = qword_100CDE718;
  if (!qword_100CDE718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100066220(uint64_t a1)
{
  result = type metadata accessor for SevereAlertComponentStringsBuilder();
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

uint64_t type metadata accessor for SunriseSunsetComponentViewModelFactory(uint64_t a1)
{
  result = qword_100CB11E8;
  if (!qword_100CB11E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000662FC(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = type metadata accessor for LocationViewDescriptor();
  v35[3] = v6;
  v35[4] = &off_100C76318;
  v35[0] = a1;
  v7 = type metadata accessor for LocationViewComponentFactory();
  v33 = v7;
  v34 = &off_100C74BA8;
  v32[0] = a2;
  v30 = &type metadata for MapOverlayKindProvider;
  v31 = &off_100C5C7B0;
  v29[0] = swift_allocObject();
  memcpy((v29[0] + 16), a3, 0x50uLL);
  type metadata accessor for StandardLocationViewConfigurationFactory();
  v8 = swift_allocObject();
  v9 = sub_10002D7F8(v35, v6);
  v10 = __chkstk_darwin(v9);
  v12 = (&v29[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_10002D7F8(v32, v33);
  v15 = __chkstk_darwin(v14);
  v17 = (&v29[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_10002D7F8(v29, v30);
  v20 = __chkstk_darwin(v19);
  v22 = &v29[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = *v12;
  v25 = *v17;
  v8[5] = v6;
  v8[6] = &off_100C76318;
  v8[2] = v24;
  v8[10] = v7;
  v8[11] = &off_100C74BA8;
  v8[7] = v25;
  v8[15] = &type metadata for MapOverlayKindProvider;
  v8[16] = &off_100C5C7B0;
  v26 = swift_allocObject();
  v8[12] = v26;
  memcpy((v26 + 16), v22, 0x50uLL);
  sub_100006F14(v29);
  sub_100006F14(v32);
  sub_100006F14(v35);
  return v8;
}

void *sub_1000666A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730, &unk_100A4FE30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for AddLocationContextHelper;
    a2[4] = &off_100C59608;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066754()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000667B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000667F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100066840(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100066888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100047F80();
  *a1 = result;
  return result;
}

uint64_t sub_1000668DC()
{
  v0 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  sub_100040690();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v0);
  if (v7)
  {
    __chkstk_darwin(result);
    v12[-4] = &type metadata for MainState;
    v9 = type metadata accessor for MainAction(0);
    v12[-3] = v9;
    v10 = sub_100007908();
    v12[-2] = v10;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[-4] = &type metadata for MainState;
    v12[-3] = v9;
    v12[-2] = v10;
    swift_getKeyPath();
    sub_100003940();
    static Published.subscript.getter();

    return v12[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_100066AC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100066AD8@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  a2[3] = *a1;
  a2[4] = sub_10004802C();
  *a2 = a1;
}

uint64_t sub_100066B44()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_100066B98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100066BF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100066C58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_100066CDC(uint64_t a1)
{
  sub_100048518(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100066DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100066E08()
{
  result = qword_100CA6BA0;
  if (!qword_100CA6BA0)
  {
    result = swift_getWitnessTable(byte_100A989A4, &type metadata for OpenL2DescriptorParamKeys, v0, v1);
    atomic_store(result, &qword_100CA6BA0);
  }

  return result;
}

unint64_t sub_100066E5C()
{
  result = qword_100CE5870;
  if (!qword_100CE5870)
  {
    result = swift_getWitnessTable(byte_100A98924, &type metadata for OpenL2DescriptorParamKeys, v0, v1);
    atomic_store(result, &qword_100CE5870);
  }

  return result;
}

void *sub_100066EB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for InteractionDonationManager(0);
    swift_allocObject();
    result = sub_100066FC8(v5, v6, v7, v8);
    a2[3] = v4;
    a2[4] = &off_100C5ECE0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for InteractionDonationManager(uint64_t a1)
{
  result = qword_100CC6920;
  if (!qword_100CC6920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100066FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  sub_1000037D8();
  v13 = OBJC_IVAR____TtC7Weather26InteractionDonationManager_previousDonatedLocationIdentifier;
  v14 = type metadata accessor for Location.Identifier();
  sub_10001B350(v4 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC7Weather26InteractionDonationManager_queue;
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  sub_100067444(&qword_100CA2E50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_100067638(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *(v4 + v16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_10006724C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100067294(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000672DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_100067324(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10006736C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000673B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000673FC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100067444(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10006748C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000674D4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10006751C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100067564(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000675AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    v4 = sub_1000201F8();
    result = swift_getWitnessTable(v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000675F0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100067638(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10022E824(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006768C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2, a3);
    v5 = sub_1000201F8();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100067704()
{
  result = qword_100CE3A80;
  if (!qword_100CE3A80)
  {
    v3 = type metadata accessor for WeatherConditionBackgroundManager();
    result = swift_getWitnessTable(&protocol conformance descriptor for WeatherConditionBackgroundManager, v3, v0, v1);
    atomic_store(result, &qword_100CE3A80);
  }

  return result;
}

uint64_t type metadata accessor for GCDSerialDispatchQueueFactory(uint64_t a1)
{
  result = qword_100CD6EF0;
  if (!qword_100CD6EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000677A8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for GCDSerialDispatchQueueFactory(0);
  a1[4] = &off_100C6A930;
  v2 = sub_100042FB0(a1);
  result = static DispatchQoS.utility.getter();
  *v2 = 0xD000000000000011;
  v2[1] = 0x8000000100ABB700;
  return result;
}

uint64_t sub_10006781C(uint64_t a1)
{
  result = type metadata accessor for DispatchQoS();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WeatherDataVisibleLocationLoadingTelemetry(uint64_t a1)
{
  result = qword_100CEF290;
  if (!qword_100CEF290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000678E4(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_10000BB3C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000679D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = type metadata accessor for GCDSerialDispatchQueueFactory(0);
  v19 = &off_100C6A930;
  v8 = sub_100042FB0(v17);
  sub_10004911C(a3, v8);
  v9 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_logger;
  if (qword_100CA27A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000703C(v10, qword_100D90D38);
  (*(*(v10 - 8) + 16))(a4 + v9, v11, v10);
  v12 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_startLoadTime;
  v13 = type metadata accessor for Date();
  sub_10001B350(a4 + v12, 1, 1, v13);
  v14 = (a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_lastAssumedVisibleLocationID);
  *v14 = 0;
  v14[1] = 0;
  *(a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_loadBeganDuringObservation) = 0;
  sub_100035B30(a1, a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_backend);
  sub_100035B30(a2, a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_clock);
  sub_1000161C0(v17, v18);
  sub_100067B88(0xD000000000000022, 0x8000000100ACF870, v16);
  sub_100006F14(a2);
  sub_100006F14(a1);
  sub_100013188(v16, a4 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_queue);
  sub_100006F14(v17);
  return a4;
}

uint64_t sub_100067B88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;

  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.append(_:)(v14);
  v15 = v19;
  v16 = v20;
  v17 = type metadata accessor for GCDSerialDispatchQueueFactory(0);
  (*(v9 + 16))(v11, v4 + *(v17 + 20), v8);
  result = sub_1000491E4(v15, v16, v11);
  a3[3] = &type metadata for GCDSerialDispatchQueue;
  a3[4] = &off_100C782B0;
  *a3 = result;
  return result;
}

unint64_t sub_100067CC8()
{
  result = qword_100CA2E60;
  if (!qword_100CA2E60)
  {
    v3 = sub_10022E824(&qword_100CA2E58, &qword_100A2C5A0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CA2E60);
  }

  return result;
}

void *sub_100067D2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0, &qword_100A41A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208, &unk_100A55900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4918, &unk_100A2EC30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for LocationDataProvider();
    swift_allocObject();
    result = sub_100047974(&v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_100C4A898;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100067E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, char a23, void *a24)
{
  sub_10000C778();
  v25 = v24;
  v47 = v26;
  v48 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v45 = v34;
  v46 = v35;
  v44 = v36;
  v37 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v37);
  sub_1000037D8();
  sub_10022C350(&qword_100CA2D40, &unk_100A41F80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  *&v49[0] = v38;
  sub_100068374(&qword_100CA2D48, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50, &qword_100A2C490);
  sub_100006F64(&qword_100CA2D58, &qword_100CA2D50, &qword_100A2C490, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v24 + 328) = UnfairLock.init(options:)();
  *(v24 + 336) = 0;
  v39 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
  v40 = enum case for StartMethod.unknown(_:);
  type metadata accessor for StartMethod();
  sub_1000037E8();
  (*(v41 + 104))(&v25[v39], v40);
  *&v25[OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_lastPushedTemperatureUnit] = 0;
  *(v25 + 3) = v45;
  *(v25 + 4) = v33;

  *(v25 + 2) = SessionManager.tracker.getter();
  *(v25 + 5) = v44;
  sub_100035B30(v31, (v25 + 48));
  sub_100035B30(v46, (v25 + 88));
  sub_100035B30(v29, (v25 + 128));
  sub_100035B30(v47, (v25 + 168));
  sub_100035B30(v48, (v25 + 208));
  sub_100035B30(a21, (v25 + 248));
  sub_100035B30(a22, (v25 + 288));
  v25[OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_purpose] = a23;
  sub_100035B30(a24, &v25[OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_privacySampler]);
  v42 = v44;
  sub_1000683BC();
  SessionManager.transaction(_:)();
  sub_100049478();
  sub_100068C38();
  sub_10004A100();
  sub_10004B33C();
  sub_10004B3D8();
  sub_100069188();
  sub_1000161C0(v31, v31[3]);
  sub_100068374(&qword_100CB53C0, type metadata accessor for SessionEventsAndDataCoordinator, protocol conformance descriptor for SessionEventsAndDataCoordinator);

  dispatch thunk of IdentityServiceType.addObserver(_:)();

  if (a23 == 2)
  {
    sub_100035B30(a21, v49);
    v43 = swift_allocObject();
    sub_10003E2A0(v49, v43 + 16);
    *(v43 + 56) = v25;

    Tracker.onSessionChange(block:)();

    SessionObserver.dispose(on:)();
  }

  else
  {
  }

  sub_100006F14(a24);
  sub_100006F14(a22);
  sub_100006F14(a21);
  sub_100006F14(v48);
  sub_100006F14(v47);
  sub_100006F14(v29);
  sub_100006F14(v46);
  sub_100006F14(v31);
  sub_10000536C();
}

uint64_t sub_100068334()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100068374(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000683BC()
{
  v0 = type metadata accessor for AppData();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  Client.version.getter();
  Client.buildNumber.getter();
  AppData.init(appVersion:appBuildNumber:)();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v3, v0);
  SessionManager.transaction(_:)();

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_100068580()
{
  v1 = v0;
  v2 = type metadata accessor for InterfaceOrientation();
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceOrientation();
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrientationData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = v10;
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 orientation];

  sub_1000689B0(v15, v7);
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 connectedScenes];

  sub_10000C70C(0, &qword_100CB5418, UIScene_ptr);
  sub_100068A3C(&qword_100CB5420, &qword_100CB5418, UIScene_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100068A8C();
  v19 = v18;

  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    v21 = v20 == 0;
    if (v20)
    {
      v22 = [v20 interfaceOrientation];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v21 = 1;
  }

  sub_10004A074(v22, v21, v4);
  OrientationData.init(deviceOrientation:interfaceOrientation:)();
  v33 = *(v1 + 32);
  SessionManager.tracker.getter();
  v32 = *(v9 + 16);
  v23 = v35;
  v32(v35, v13, v8);
  v24 = *(v9 + 80);
  v30 = v13;
  v25 = (v24 + 16) & ~v24;
  v26 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v26 + v25, v23, v8);
  Tracker.transaction(block:)();

  v27 = v30;
  v32(v23, v30, v8);
  v28 = swift_allocObject();
  v31(v28 + v25, v23, v8);
  SessionManager.transaction(_:)();

  return (*(v9 + 8))(v27, v8);
}

uint64_t sub_1000689B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DeviceOrientation();
  v5 = *(*(v4 - 8) + 104);
  if (a1 > 6)
  {
    v6 = &enum case for DeviceOrientation.unknown(_:);
  }

  else
  {
    v6 = *(&off_100C55FA8 + a1);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_100068A3C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10000C70C(255, a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_100068A8C()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100068B50(v4);
  v8 = v7;
  v10 = v9;
  v11 = sub_100068BB0(v5);
  v13 = v12;
  v15 = v14;
  v16 = sub_100068C04(v6, v8, v10 & 1, v11, v12, v14 & 1);
  sub_100049534(v11, v13, v15 & 1);
  v17 = sub_10004979C();
  if ((v16 & 1) == 0)
  {
    sub_1000A6CEC(v17, v18, v19, v5, v3, v1);
    v17 = sub_10004979C();
  }

  sub_100049534(v17, v18, v19);
  sub_10000536C();
}

uint64_t sub_100068B50(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_100068BB0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_100068C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_100068C38()
{
  v0 = sub_10022C350(&qword_100CB5400, &qword_100A48D50);
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = &v23 - v1;
  v2 = type metadata accessor for DebugData();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.WeatherAnalytics.Debugging.sessionName.getter();
  sub_100068374(&qword_100CB5408, type metadata accessor for SessionEventsAndDataCoordinator, protocol conformance descriptor for SessionEventsAndDataCoordinator);
  Configurable.setting<A>(_:)();

  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10002D5A4();
  v12 = StringProtocol.trimmingCharacters(in:)();
  v14 = v13;
  (*(v9 + 8))(v11, v8);

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
  }

  DebugData.init(name:)();
  v16 = v23;
  (*(v23 + 16))(v4, v7, v2);
  sub_100068374(&qword_100CB5410, &type metadata accessor for DebugData, &protocol conformance descriptor for DebugData);
  v17 = v24;
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v18 = type metadata accessor for DataEventTrait();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100A2C3F0;
  (*(v19 + 104))(v21 + v20, enum case for DataEventTrait.unique(_:), v18);
  SessionManager.push<A>(_:traits:file:line:)();

  (*(v25 + 8))(v17, v26);
  return (*(v16 + 8))(v7, v2);
}

uint64_t sub_1000690C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006912C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100069188()
{
  v1 = type metadata accessor for UserIdentity();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_purpose))
  {
    sub_1000161C0((v0 + 48), *(v0 + 72));
    dispatch thunk of IdentityServiceType.identity.getter();
    v5 = UserIdentity.privateIdentifier.getter();
    v7 = v6;
    (*(v2 + 8))(v4, v1);
    SessionManager.tracker.getter();
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v7;
    v8[4] = v0;

    Tracker.transaction(block:)();
  }
}

uint64_t sub_1000692F8()
{

  return swift_deallocObject();
}

uint64_t sub_100069338(uint64_t a1)
{
  *(v1 - 208) = a1;

  return String.LocalizationValue.init(stringLiteral:)();
}

uint64_t sub_100069384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100069408()
{

  return dispatch thunk of Collection.subscript.read();
}

uint64_t sub_10006942C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 504) + a1;

  return sub_1001B3B30(v4, v2);
}

uint64_t sub_1000694A0(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void sub_1000694C4()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 144) = _NSConcreteStackBlock;
}

_OWORD *sub_10006953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  v9 = (*(v6 + 56) + 32 * v7);

  return sub_100166170(v9, &v11);
}

void sub_100069558(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t sub_1000695A4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000695EC()
{

  return static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();
}

uint64_t sub_100069614()
{

  return type metadata accessor for AutomationInfoProperty(0);
}

uint64_t sub_100069630()
{

  return sub_10004F7D8(v0, type metadata accessor for EnvironmentState);
}

uint64_t sub_1000696E4()
{

  return UIListContentConfiguration.text.setter();
}

uint64_t sub_10006974C(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10006979C()
{

  return sub_10009EF70(v1, v0);
}

uint64_t sub_100069800()
{

  return Optional<A>.write(to:)();
}

uint64_t sub_1000698BC(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000698E4()
{

  return sub_100703000();
}

uint64_t sub_100069960()
{
  result = *(v1 - 96);
  *(v1 - 120) = v0;
  return result;
}

id sub_1000699A0()
{
  v3 = *(v1 + 3744);

  return [v0 v3];
}

uint64_t sub_1000699FC()
{
  sub_100006F14(v0);
}

uint64_t sub_100069A30(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100069A6C(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100069A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = a1;

  return swift_getWitnessTable(v10, v11, &a10);
}

uint64_t sub_100069AB4(uint64_t a1)
{
  sub_100024D10(a1, 1, v1);
}

uint64_t sub_100069B2C()
{
}

uint64_t sub_100069BAC()
{

  return type metadata accessor for MainViewModel.ModalModule(0);
}

void sub_100069C80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

double sub_100069CDC(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

void *sub_100069D50(uint64_t *a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CBE1B0, &unk_100A55870);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    sub_100013188(&v3, v5);
    sub_1000161C0(v5, v5[3]);
    dispatch thunk of ScenePhaseManagerType.addObserver(_:)();
    sub_100006F14(&v3);
    return sub_100006F14(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100069E18(void *a1, void *a2)
{
  sub_1000161C0(a1, a1[3]);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SessionScenePhaseObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10004306C(&qword_100CBE1F8, type metadata accessor for SessionScenePhaseObserver, protocol conformance descriptor for SessionScenePhaseObserver);
    dispatch thunk of ScenePhaseManagerType.addObserver(_:)();

    return sub_100006F14(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100069EF8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1478, &unk_100A41A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE1A8, &unk_100A55860);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v4 = sub_10002D7F8(v20, v21);
    v5 = __chkstk_darwin(v4);
    v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    active = type metadata accessor for ActiveUserAnalyticsManager();
    v19[3] = active;
    v19[4] = &off_100C67820;
    v19[0] = v9;
    type metadata accessor for SessionScenePhaseObserver();
    v11 = swift_allocObject();
    v12 = sub_10002D7F8(v19, active);
    v13 = __chkstk_darwin(v12);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v11[11] = active;
    v11[12] = &off_100C67820;
    v11[8] = v17;
    v11[2] = v3;
    sub_100013188(&v22, (v11 + 3));
    sub_100006F14(v19);
    sub_100006F14(v20);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10006A19C(void *a1)
{
  v2 = type metadata accessor for TimeDurationGranularity();
  __chkstk_darwin(v2 - 8);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB14B8, &unk_100A41A50);
  __chkstk_darwin(v4 - 8);
  v25 = &v22 - v5;
  v6 = sub_10022C350(&qword_100CB14C0, &unk_100A558E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SessionManager.Options();
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SessionManagerConfiguration();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB14C8, &unk_100A41A60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100A2D320;
  static SessionManager.Options.gracefulNoSessionEventSubmission.getter();
  static SessionManager.Options.gracefulEventCreation.getter();
  v28[0] = v15;
  sub_10004306C(&qword_100CB14D0, &type metadata accessor for SessionManager.Options, &protocol conformance descriptor for SessionManager.Options);
  sub_10022C350(&qword_100CB14D8, &unk_100A558F0);
  sub_10004BFC4();
  v24 = v11;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for FlushProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v22 = v12;
  sub_1000161C0(a1, a1[3]);
  v17 = type metadata accessor for TimestampJitter();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v8, 1, v17);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v28[3] = v17;
  v28[4] = &protocol witness table for TimestampJitter;
  v18 = sub_100042FB0(v28);
  (*(*(v17 - 8) + 32))(v18, v8, v17);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14E8, &unk_100A41A70);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  v19 = type metadata accessor for DiagnosticsConsentProvider();
  v20 = v25;
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v20, 1, v19);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  static TimeDurationGranularity.milliseconds.getter();
  SessionManagerConfiguration.init(options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:timeDurationGranularity:)();
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v21 = AppSessionManager.createSessionManager(with:)();

    (*(v23 + 8))(v14, v22);
    return v21;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10006A6C0()
{

  return Hasher.init(_seed:)();
}

void sub_10006A6D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void sub_10006A740()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
}

uint64_t sub_10006A750(uint64_t a1)
{

  return sub_100095588();
}

uint64_t sub_10006A76C()
{

  return sub_100095048();
}

uint64_t sub_10006A7E0()
{
  v2 = *(v0 - 328);

  return sub_100533554(v2, type metadata accessor for WeatherConditionBackgroundTimeData);
}

uint64_t sub_10006A820()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10006A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
}

uint64_t sub_10006A888@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  return sub_1000E4DF8(v2, v3);
}

__n128 sub_10006A944(__n128 *a1)
{
  result = *(v1 - 160);
  a1[1] = result;
  return result;
}

uint64_t sub_10006A954(uint64_t a1)
{

  return sub_100024D10(a1, 1, v1);
}

uint64_t sub_10006A978()
{

  return State.wrappedValue.getter();
}

uint64_t sub_10006A9AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10006AA44();
  v5 = *(*(v2 + 24) + 16);
  sub_10004CA0C(v5);
  v6 = *(v2 + 24);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 24) = v6;
  swift_endAccess();
}

uint64_t sub_10006AA5C(uint64_t a1, void *a2)
{
  v3 = sub_10022C350(&qword_100CB14A8, qword_100A41A38);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_1000161C0(a2, a2[3]);
  v6 = type metadata accessor for Configuration();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = Configuration.isEnabled.getter();
    result = (*(*(v6 - 8) + 8))(v5, v6);
    if (v8)
    {
      sub_100035B30(a2, v11);
      v9 = swift_allocObject();
      sub_100013188(v11, v9 + 16);
      type metadata accessor for LazyEventProcessor();
      swift_allocObject();
      LazyEventProcessor.init(underlyingProcessorProvider:)();
      SessionManager.processorManager.getter();

      ProcessorManager.add(eventProcessor:)();
    }
  }

  return result;
}

uint64_t sub_10006AC20()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10006AC84(uint64_t a1)
{
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_100035B30(a1, v5);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  sub_100013188(v5, v3 + 24);

  sub_10022C350(&qword_100CB2FD8, &qword_100A45760);
  AppDependencyManager.add<A>(key:dependency:)();

  return sub_10006B068(v6);
}

uint64_t sub_10006AD64()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_10006ADA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB5450, &unk_100A48D70);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100068374(&qword_100CB5458, &type metadata accessor for AppData, &protocol conformance descriptor for AppData);
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v12 = type metadata accessor for DataEventTrait();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100A2C3F0;
  (*(v13 + 104))(v15 + v14, enum case for DataEventTrait.unique(_:), v12);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10006B068(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB2FE0, &qword_100A45768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B0D0(void (*a1)(void))
{
  a1(0);
  sub_1000037E8();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

double sub_10006B158()
{
  qword_100D8FBB0 = 0;
  result = 0.0;
  xmmword_100D8FB90 = 0u;
  unk_100D8FBA0 = 0u;
  return result;
}

uint64_t sub_10006B170(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1000038D8();
  v35 = type metadata accessor for StartupTaskExecutionPhase();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005888();
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A2C3F0;
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  v38 = [v2 applicationState];
  type metadata accessor for State(0);
  _print_unlocked<A, B>(_:_:)();
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100035744();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  sub_1000167F8("Application did finish launching with application state=%{public}@");
  os_log(_:dso:log:type:_:)(v11);

  sub_1003558E0(v36);
  sub_1000161C0(v36, v37);
  if (a2)
  {
    type metadata accessor for LaunchOptionsKey(0);
    type metadata accessor for ApplicationStateLaunchOptionKey();
    sub_1000058A0();
    sub_100015F40(v12, 255, v13, byte_100A2CBD8);
    sub_100015F40(&qword_100CAF488, 255, &type metadata accessor for ApplicationStateLaunchOptionKey, &protocol conformance descriptor for ApplicationStateLaunchOptionKey);
    Dictionary.mapKeysAndValues<A, B>(_:)();
  }

  dispatch thunk of ApplicationStateManagerType.applicationDidFinishLaunching(withOptions:)();

  sub_100006F14(v36);
  v14 = [objc_opt_self() defaultCenter];
  sub_10000827C(v14, v15, v16, "didBecomeKeyWindow", UIWindowDidBecomeKeyNotification);

  v17 = sub_1000496E8();
  sub_10000827C(v17, v18, v19, "willEnterForeground", UIApplicationWillEnterForegroundNotification);

  v20 = sub_1000496E8();
  sub_10000827C(v20, v21, v22, "didEnterBackground", UIApplicationDidEnterBackgroundNotification);

  v23 = sub_1000496E8();
  sub_10000827C(v23, v24, v25, "willTerminate", UIApplicationWillTerminateNotification);

  v26 = sub_1000496E8();
  sub_10000827C(v26, v27, v28, "didBecomeActive", UIApplicationDidBecomeActiveNotification);

  v29 = sub_1000496E8();
  sub_10000827C(v29, v30, v31, "willResignActive", UIApplicationWillResignActiveNotification);

  Current = CFAbsoluteTimeGetCurrent();
  v33 = &v4[OBJC_IVAR____TtC7Weather11AppDelegate_appLaunchTime];
  *v33 = Current;
  *(v33 + 8) = 0;
  sub_1000359CC(v36);
  sub_1000161C0(v36, v37);
  sub_1000038D8();
  type metadata accessor for StartupTaskManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_100006F14(v36);
    if (a2)
    {
      Dictionary<>.applicationStateLaunchOptions.getter();
    }

    (*(v7 + 104))(v3, enum case for StartupTaskExecutionPhase.didFinishLaunching(_:), v35);
    StartupTaskManager.startAllTasks(launchOptions:phase:)();

    (*(v7 + 8))(v3, v35);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B628(uint64_t a1)
{
  v22 = type metadata accessor for Container.TestSuite();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v21 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Scope();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStateMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7 = enum case for Scope.containerSingleton(_:);
  v8 = *(v4 + 104);
  v8(v6, enum case for Scope.containerSingleton(_:), v3);
  Definition.inScope(_:)();

  v9 = *(v4 + 8);
  v9(v6, v3);
  type metadata accessor for AppConfigurationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for AppLaunchCountMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for CountryCodeConfigurationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for CurrentLocationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for LocationOfInterestMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v10 = enum case for Scope.singleton(_:);
  v8(v6, enum case for Scope.singleton(_:), v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for LocaleMonitor(0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for WindowFocusMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for LocationAuthorizationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for NetworkConnectivityMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for NotificationAuthorizationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v10, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for NotificationsOptInMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for NotificationSubscriptionMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v19 = v10;
  v8(v6, v10, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for AccessibilitySettingsMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for PredictedLocationAvailabilityMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v10, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for ReportWeatherMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for SavedLocationsMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for SettingsMonitor(0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v18 = v7;
  v8(v6, v7, v3);
  v17 = v8;
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for SidebarVisibilityMonitor();
  v16 = a1;
  RegistrationContainer.register<A>(_:name:factory:)();
  v8(v6, v7, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  sub_10022C350(&qword_100CE9F58, &unk_100A9F4E0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v11 = v20;
  v12 = v21;
  v13 = v22;
  (*(v20 + 104))(v21, enum case for Container.TestSuite.performance(_:), v22);
  Definition.whenTesting(_:_:)();

  (*(v11 + 8))(v12, v13);
  v14 = v17;
  v17(v6, v18, v3);
  Definition.inScope(_:)();

  v9(v6, v3);
  type metadata accessor for UserNotificationMonitor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v14(v6, v19, v3);
  Definition.inScope(_:)();

  return (v9)(v6, v3);
}

uint64_t type metadata accessor for SettingsMonitor(uint64_t a1)
{
  result = qword_100CDA620;
  if (!qword_100CDA620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C2F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006C34C(uint64_t a1)
{
  sub_10006C2F8(319, &qword_100CB65D8, &type metadata accessor for UnitConfiguration.Temperature);
  if (v1 <= 0x3F)
  {
    sub_10006C2F8(319, &qword_100CDA630, &type metadata accessor for UnitConfiguration.Distance);
    if (v2 <= 0x3F)
    {
      sub_10006C2F8(319, &qword_100CDA638, &type metadata accessor for UnitConfiguration.WindSpeed);
      if (v3 <= 0x3F)
      {
        sub_10006C2F8(319, &qword_100CDA640, &type metadata accessor for UnitConfiguration.Pressure);
        if (v4 <= 0x3F)
        {
          sub_10006C2F8(319, &unk_100CDA648, &type metadata accessor for UnitConfiguration.Precipitation);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void *sub_10006C594(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v15)
  {
    v11 = v16;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(a2, a3);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v14)
    {
      a4(0);
      v12 = swift_allocObject();
      *(v12 + 16) = v15;
      *(v12 + 24) = v11;
      a5(v13, v12 + 32);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10006C6A8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0, &qword_100A41A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D0, &unk_100A67970);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    type metadata accessor for CurrentLocationMonitor();
    swift_allocObject();
    return sub_10006C854(v11, v12, &v9, v5, v6, v7, v8, &v3);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_10006C854(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v8[18] = OS_os_log.init(subsystem:category:)();
  v8[2] = a1;
  v8[3] = a2;
  sub_100013188(a3, (v8 + 4));
  v8[9] = a4;
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  sub_100013188(a8, (v8 + 13));
  return v8;
}

void *sub_10006C934(void *a1, uint64_t (*a2)(void), uint64_t (*a3)())
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2(0);
    swift_allocObject();
    return a3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006CA14(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Locale();
  sub_10001EE84(v5);
  v6 = type metadata accessor for UnitConfiguration.Temperature();
  sub_10001EE84(v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_10006CA94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_10006CADC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_10006CB24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

id sub_10006CB6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  v18 = &v9[OBJC_IVAR____TtC7Weather28LocationAuthorizationMonitor_dispatcher];
  *v18 = a1;
  *(v18 + 1) = a2;
  sub_100035B30(a3, &v9[OBJC_IVAR____TtC7Weather28LocationAuthorizationMonitor_locationManager]);
  v19 = &v9[OBJC_IVAR____TtC7Weather28LocationAuthorizationMonitor_locationsOfInterestUpdater];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = &v9[OBJC_IVAR____TtC7Weather28LocationAuthorizationMonitor_stateReader];
  *v20 = a6;
  *(v20 + 1) = a7;
  *(v20 + 2) = a8;
  *(v20 + 3) = a9;
  v24.receiver = v9;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, "init");
  sub_100006F14(a3);
  return v21;
}

void *sub_10006CC50(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v7[13] = OS_os_log.init(subsystem:category:)();
  v7[2] = a1;
  v7[3] = a2;
  sub_100013188(a3, (v7 + 4));
  v7[9] = a4;
  v7[10] = a5;
  v7[11] = a6;
  v7[12] = a7;
  return v7;
}

uint64_t sub_10006CD24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_10006CD6C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10006CDB4()
{
  sub_10000488C();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[6];
    v4 = v3[3];
    v5 = v3[4];
    sub_1000161C0(v3, v4);
    v7 = sub_10006CF08(&qword_100CD1FC8, v6, type metadata accessor for NotificationSubscriptionMonitor, protocol conformance descriptor for NotificationSubscriptionMonitor);

    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    sub_10000CDDC(v8);

    return dispatch thunk of NotificationSubscriptionManagerType.addObserver(_:)(v2, v7, v4, v5);
  }

  else
  {
    sub_100003B14();

    return v9();
  }
}

uint64_t sub_10006CF08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_10006CF50()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_10006D058, 0, 0);
}

uint64_t sub_10006D058()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_10006D0B0()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_10006D190()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_10006D274(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UnitConfiguration.Temperature();
  sub_10001EE84(v5);
  v6 = type metadata accessor for UnitConfiguration.Distance();
  sub_10001EE84(v6);
  v7 = type metadata accessor for UnitConfiguration.WindSpeed();
  sub_10001EE84(v7);
  v8 = type metadata accessor for UnitConfiguration.Pressure();
  sub_10001EE84(v8);
  v9 = type metadata accessor for UnitConfiguration.Precipitation();
  sub_10001EE84(v9);
  *(v2 + OBJC_IVAR____TtC7Weather15SettingsMonitor_observer) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_10006D318(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

char *sub_10006D360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LocationFinder();
  v25[3] = v10;
  v25[4] = &off_100C5EE88;
  v25[0] = a4;
  v11 = type metadata accessor for UserNotificationMonitor();
  v12 = objc_allocWithZone(v11);
  v13 = sub_10002D7F8(v25, v10);
  v14 = __chkstk_darwin(v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v24[3] = v10;
  v24[4] = &off_100C5EE88;
  v24[0] = v18;
  v19 = &v12[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&v12[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_userNotificationCenter] = a3;
  sub_100035B30(v24, &v12[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder]);
  *&v12[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_store] = a5;
  v23.receiver = v12;
  v23.super_class = v11;

  v20 = a3;

  v21 = objc_msgSendSuper2(&v23, "init");
  [*&v21[OBJC_IVAR____TtC7Weather23UserNotificationMonitor_userNotificationCenter] setDelegate:v21];

  sub_100006F14(v24);
  sub_100006F14(v25);
  return v21;
}

uint64_t sub_10006D53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CD81B0, &unk_100A3B000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006D5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10006D608(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_10006D620@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for WeatherDataAction(0);
  __chkstk_darwin(v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v46 - v12;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  if (*(a1 + 48) == 1)
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v47 = a2;
    v21 = *(a1 + 40);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v17 + 80);
      v53 = OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_logger;
      v52 = OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_signpostID;
      v51 = (v23 + 32) & ~v23;
      v24 = v21 + v51;
      v25 = *(v17 + 72);
      v48 = 0x8000000100ACF9F0;
      v26 = _swiftEmptyArrayStorage;
      v50 = xmmword_100A2C3F0;
      v54 = v10;
      v55 = v8;
      v59 = v25;
      do
      {
        sub_10004F14C(v24, v19);
        sub_10004F14C(v19, v15);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_10001EE6C();
        sub_10004F784(v15, v28);
        if (EnumCaseMultiPayload == 9)
        {
          v57 = static os_signpost_type_t.event.getter();
          v29 = v3;
          v58 = *(v3 + v53);
          sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
          v30 = swift_allocObject();
          *(v30 + 16) = v50;
          v31 = v56;
          sub_10004F14C(v19, v56);
          if (swift_getEnumCaseMultiPayload() == 9)
          {
            v32 = v31;
            v33 = v49;
            sub_100050108(v32, v49, type metadata accessor for WeatherDataAction);
            v34 = sub_10016BAEC();
            v36 = v35;
            sub_10004F784(v33, type metadata accessor for WeatherDataAction);
          }

          else
          {
            sub_10001EE6C();
            sub_10004F784(v31, v40);
            v34 = 0xD000000000000016;
            v36 = v48;
          }

          *(v30 + 56) = &type metadata for String;
          *(v30 + 64) = sub_100035744();
          *(v30 + 32) = v34;
          *(v30 + 40) = v36;
          LOBYTE(v45) = 2;
          v3 = v29;
          os_signpost(_:dso:log:name:signpostID:_:_:)(v57, &_mh_execute_header, v58, "Weather:weatherDataActionDebounce", 33, 2, v29 + v52, "action %{private}s", 18, v45, v30);

          PassthroughSubject.send(_:)();
          sub_10001EE6C();
          sub_10004F784(v19, v41);
          v10 = v54;
          v39 = v59;
        }

        else
        {
          sub_10004F14C(v19, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10004FF70();
            v26 = v42;
          }

          v37 = v26[2];
          if (v37 >= v26[3] >> 1)
          {
            sub_10004FF70();
            v26 = v43;
          }

          sub_10001EE6C();
          sub_10004F784(v19, v38);
          v26[2] = v37 + 1;
          v39 = v59;
          sub_100050108(v10, v26 + v51 + v37 * v59, type metadata accessor for MainAction);
        }

        v24 += v39;
        --v22;
      }

      while (v22);
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    result = 0.0;
    v44 = v47;
    *v47 = 0u;
    v44[1] = 0u;
    *(v44 + 4) = 0;
    *(v44 + 5) = v26;
    *(v44 + 48) = 1;
  }

  return result;
}

uint64_t sub_10006DB14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = (a4 + 32);

  if (v7)
  {
    while (1)
    {
      v11 = *v8;

      a2(&v10, &v12, &v11);
      if (v4)
      {
        break;
      }

      v6 = v10;
      v12 = v10;
      ++v8;
      if (!--v7)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_10006DC00(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  a2(&v6, &v5, a4);
  return v6;
}

uint64_t sub_10006DC50(uint64_t a1, uint64_t a2)
{
  v858 = a2;
  v859 = a1;
  v2 = type metadata accessor for AveragesDetailViewAction(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000038E4();
  v5 = sub_100003918(v4);
  v6 = type metadata accessor for MoonDetailViewAction(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v9 = sub_100003918(v8);
  v10 = type metadata accessor for ConditionDetailViewAction(v9);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000038E4();
  v13 = sub_100003918(v12);
  v14 = type metadata accessor for DebugAction(v13);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000038E4();
  v17 = sub_100003918(v16);
  v18 = type metadata accessor for PerformanceTestAction(v17);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000038E4();
  v21 = sub_100003918(v20);
  v22 = type metadata accessor for WeatherDataAction(v21);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_1000038E4();
  v25 = sub_100003918(v24);
  v26 = type metadata accessor for NotificationsOptInAction(v25);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_1000038E4();
  v29 = sub_100003918(v28);
  v30 = type metadata accessor for NotificationsAction(v29);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  sub_1000038E4();
  v33 = sub_100003918(v32);
  v34 = type metadata accessor for LocationViewAction(v33);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_1000038E4();
  v37 = sub_100003918(v36);
  v38 = type metadata accessor for ModalViewAction(v37);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_1000038E4();
  v41 = sub_100003918(v40);
  v42 = type metadata accessor for ViewAction(v41);
  v43 = sub_100003810(v42);
  __chkstk_darwin(v43);
  sub_1000038E4();
  v45 = sub_100003918(v44);
  v46 = type metadata accessor for LocationsAction(v45);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_1000038E4();
  v49 = sub_100003918(v48);
  v50 = type metadata accessor for EnvironmentAction(v49);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_1000038E4();
  v53 = sub_100003918(v52);
  v54 = type metadata accessor for AppConfigurationAction(v53);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_1000038E4();
  v57 = sub_100003918(v56);
  v856 = type metadata accessor for ViewState(v57);
  sub_1000037E8();
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  v846 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_10000E70C();
  v65 = sub_100003918(v64);
  v855 = type metadata accessor for TimeState(v65);
  sub_1000037E8();
  __chkstk_darwin(v66);
  sub_100003848();
  v847 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  sub_100003878();
  v843 = v69;
  sub_10000386C();
  __chkstk_darwin(v70);
  sub_100003878();
  v844 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_10000E70C();
  v842 = v73;
  v852 = type metadata accessor for NotificationsOptInState(0);
  sub_1000037E8();
  __chkstk_darwin(v74);
  sub_100003848();
  v845 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  v81 = sub_100003918(v80);
  v850 = type metadata accessor for NotificationsState(v81);
  sub_1000037E8();
  __chkstk_darwin(v82);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_10000E70C();
  v88 = sub_100003918(v87);
  v849 = type metadata accessor for LocationsState(v88);
  sub_1000037E8();
  __chkstk_darwin(v89);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_10000E70C();
  v95 = sub_100003918(v94);
  v854 = type metadata accessor for EnvironmentState(v95);
  sub_1000037E8();
  __chkstk_darwin(v96);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_10000E70C();
  v102 = sub_100003918(v101);
  v853 = type metadata accessor for AppConfigurationState(v102);
  sub_1000037E8();
  __chkstk_darwin(v103);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_10000E70C();
  v108 = sub_100003918(v107);
  v848 = type metadata accessor for ModalViewState(v108);
  sub_1000037E8();
  __chkstk_darwin(v109);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  v851 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_10000E70C();
  sub_100003990(v119);
  v120 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v121 = sub_100003810(v120);
  __chkstk_darwin(v121);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_10000E70C();
  sub_100003990(v129);
  v130 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v131 = sub_100003810(v130);
  __chkstk_darwin(v131);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_10000E70C();
  sub_100003990(v139);
  v140 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v141 = sub_100003810(v140);
  __chkstk_darwin(v141);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_10000E70C();
  sub_100003990(v149);
  v150 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v151 = sub_100003810(v150);
  __chkstk_darwin(v151);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_10000E70C();
  sub_100003990(v159);
  v160 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v161 = sub_100003810(v160);
  __chkstk_darwin(v161);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_10000E70C();
  sub_100003990(v169);
  v170 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v171 = sub_100003810(v170);
  __chkstk_darwin(v171);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_10000E70C();
  sub_100003990(v179);
  v180 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v181 = sub_100003810(v180);
  __chkstk_darwin(v181);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_10000E70C();
  sub_100003990(v189);
  v190 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v191 = sub_100003810(v190);
  __chkstk_darwin(v191);
  v193 = &v763 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v194);
  v196 = &v763 - v195;
  __chkstk_darwin(v197);
  v199 = &v763 - v198;
  __chkstk_darwin(v200);
  v202 = (&v763 - v201);
  __chkstk_darwin(v203);
  v205 = &v763 - v204;
  __chkstk_darwin(v206);
  v208 = &v763 - v207;
  __chkstk_darwin(v209);
  v211 = &v763 - v210;
  __chkstk_darwin(v212);
  v214 = &v763 - v213;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v215);
  v217 = &v763 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050F30(v858, v217, type metadata accessor for MainAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v359 = sub_100041BB8();
      v360 = v792;
      v362 = v361;
      sub_100051C74(v359, v792, v363);
      type metadata accessor for AppConfiguration();
      sub_1000037E8();
      (*(v364 + 32))(v208, v360);
      sub_10001B350(v208, 0, 1, v853);
      v365 = sub_100003BCC(&v829);
      v366 = v854;
      sub_10001B350(v365, v367, v368, v854);
      v369 = sub_100003BCC(&v833);
      v370 = v849;
      sub_10001B350(v369, v371, v372, v849);
      v373 = sub_100003BCC(&v837);
      v374 = v850;
      sub_10001B350(v373, v375, v376, v850);
      v377 = sub_100003BCC(&v841);
      v378 = v852;
      sub_10001B350(v377, v379, v380, v852);
      v381 = sub_100003BCC(&v845);
      sub_10001B350(v381, v382, v383, v855);
      v384 = sub_100003BCC(&v849);
      sub_10001B350(v384, v385, v386, v856);
      v387 = v774;
      sub_100003934();
      sub_10001B350(v388, v389, v390, v848);
      sub_1000090B4();
      sub_1000868F4(v391);
      sub_100021424();
      sub_100050F30(v392, v393, v394);
      sub_100020FE8();
      sub_1002AB08C(v395, v396, v397, v398);
      sub_10000556C(v387);
      if (v254)
      {
        sub_1000180EC(v387, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010CD0();
        sub_10004FBF8(v202, v553);
        sub_10001F998();
        sub_100051C74(v387, v202, v554);
      }

      sub_10001F998();
      sub_100051C74(v202, v821, v555);
      v556 = *(v362 + 16);
      LODWORD(v857) = *(v362 + 24);
      sub_1002AB08C(v208, v205, &qword_100CA6640, qword_100A32640);
      v557 = sub_100007FC4();
      v558 = v853;
      sub_1000038B4(v557, v559, v853);
      v560 = v776;
      v561 = v770;
      if (v254)
      {
        sub_10004EB94();
        sub_100050F30(v362 + v562, v825, v563);
        v564 = sub_100007FC4();
        v566 = sub_100024D10(v564, v565, v558);

        if (v566 != 1)
        {
          sub_1000180EC(v205, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100016FC4();
        sub_100051C74(v205, v825, v580);
      }

      v581 = v766;
      sub_1002AB08C(v802, v766, &qword_100CA6638, &unk_100A31460);
      v582 = sub_100007FC4();
      sub_1000038B4(v582, v583, v366);
      if (v254)
      {
        v584 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C(v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100014F74();
        sub_100050F30(v362 + v584, v828, v585);
        v586 = sub_100007FC4();
        sub_1000038B4(v586, v587, v366);
        v593 = v794;
        if (!v254)
        {
          sub_1000180EC(v581, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049DD4();
        sub_100051C74(v581, v828, v592);
        v593 = v794;
      }

      sub_100087EBC(&qword_100CA6630, &unk_100A32630, &v833);
      v594 = sub_100016298();
      sub_1000038B4(v594, v595, v370);
      if (v254)
      {
        sub_100006884();
        sub_100050F30(v362 + v596, v832, v597);
        v598 = sub_100016298();
        sub_1000038B4(v598, v599, v370);
        if (!v254)
        {
          sub_1000180EC(v561, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000CF08();
        sub_100051C74(v561, v832, v607);
      }

      sub_1002AB08C(v808, v560, &qword_100CA6628, &unk_100A31450);
      v608 = sub_10000C834();
      sub_1000038B4(v608, v609, v374);
      if (v254)
      {
        sub_100004BF0();
        sub_100050F30(v362 + v610, v836, v611);
        v612 = sub_10000C834();
        sub_1000038B4(v612, v613, v374);
        v624 = v856;
        if (!v254)
        {
          sub_1000180EC(v560, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100024AD4();
        sub_100051C74(v560, v836, v623);
        v624 = v856;
      }

      v625 = v786;
      sub_1002AB08C(v811, v786, &qword_100CA6620, &unk_100A32620);
      v626 = sub_1000182B8();
      sub_1000038B4(v626, v627, v378);
      if (v254)
      {
        sub_10001CE74();
        sub_100050F30(v362 + v628, v840, v629);
        v630 = sub_1000182B8();
        sub_1000038B4(v630, v631, v378);
        if (!v254)
        {
          sub_1000180EC(v625, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10003C920();
        sub_100051C74(v625, v840, v636);
      }

      sub_1000131DC();
      sub_1002AB08C(v637, v638, v639, v640);
      sub_10000554C(v378);
      if (v254)
      {
        sub_100017E8C();
        sub_100050F30(v362 + v641, v844, v642);
        sub_10000554C(v378);
        v652 = v846;
        if (!v254)
        {
          sub_1000180EC(v378, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100069AE8();
        sub_100051C74(v378, v844, v651);
        v652 = v846;
      }

      sub_1002AB08C(v817, v593, &qword_100CA6610, &unk_100A32610);
      v653 = sub_10000C7F0();
      sub_1000038B4(v653, v654, v624);
      v858 = v556;
      if (v254)
      {
        sub_10001A004();
        sub_100050F30(v362 + v655, v652, v656);
        v657 = sub_10000C7F0();
        sub_1000038B4(v657, v658, v624);
        if (!v254)
        {
          sub_1000180EC(v593, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100013D0C();
        sub_100051C74(v593, v652, v673);
      }

      sub_10001F998();
      sub_1000A7D70(v674, &v853);
      v675 = v362;
      v677 = *(v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v676 = *(v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v679 = *(v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v678 = *(v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v680 = v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v681 = *(v362 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v683 = *(v680 + 8);
      v682 = *(v680 + 16);
      v684 = *(v675 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v685 = type metadata accessor for MainState._Storage(0);
      v255 = sub_100003B6C(v685);
      LOBYTE(v762) = v681;
      sub_10003E038(v858, v857, v825, v828, v832, v836, v840, v844, v846, v652, v677, v676, v679, v678, v762, v683, v682, v684, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, v778, v779);
      sub_100052654();

      goto LABEL_149;
    case 2u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v325, v326, v327);
      sub_1000161C0(v857 + 17, v857[20]);
      sub_10002014C(v859 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
      sub_100014F74();
      sub_1000131DC();
      sub_100050F30(v328, v329, v330);
      v331 = sub_100031858();
      v255 = sub_1000BFBA0(v331, v332, v333);
      v334 = sub_100004C08();
      sub_10004FBF8(v334, v335);
      v279 = type metadata accessor for EnvironmentAction;
      goto LABEL_28;
    case 3u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v337, v338, v339);
      sub_1000161C0(v857 + 22, v857[25]);
      sub_100006884();
      sub_1000868F4(v340);
      sub_1000131DC();
      sub_100050F30(v341, v342, v343);
      v344 = sub_100031858();
      v255 = sub_1000D8FD0(v344, v345, v346);
      v347 = sub_100004C08();
      sub_10004FBF8(v347, v348);
      v279 = type metadata accessor for LocationsAction;
      goto LABEL_28;
    case 4u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v267, v268, v269);
      sub_1000161C0(v857 + 62, v857[65]);
      sub_100004BF0();
      sub_1000868F4(v270);
      sub_1000131DC();
      sub_100050F30(v271, v272, v273);
      v274 = sub_100031858();
      v255 = sub_1001759E0(v274, v275, v276);
      v277 = sub_100004C08();
      sub_10004FBF8(v277, v278);
      v279 = type metadata accessor for NotificationsAction;
      goto LABEL_28;
    case 5u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v441, v442, v443);
      sub_1000161C0(v857 + 67, v857[70]);
      sub_10001CE74();
      sub_1000868F4(v444);
      sub_1000131DC();
      sub_100050F30(v445, v446, v447);
      v448 = sub_100031858();
      v255 = sub_1000CA7DC(v448, v449, v450);
      v451 = sub_100004C08();
      sub_10004FBF8(v451, v452);
      v279 = type metadata accessor for NotificationsOptInAction;
      goto LABEL_28;
    case 6u:
      sub_100041BB8();
      sub_100021424();
      sub_100051C74(v458, v459, v460);
      sub_1000161C0(v857 + 37, v857[40]);
      sub_10001A004();
      sub_1000868F4(v461);
      sub_1000131DC();
      sub_100050F30(v462, v463, v464);
      v465 = sub_100031858();
      v255 = sub_1000A7E0C(v465, v466, v467);
      v468 = sub_100004C08();
      sub_10004FBF8(v468, v469);
      v279 = type metadata accessor for ViewAction;
LABEL_28:
      v358 = v279;
      v357 = v202;
      goto LABEL_32;
    case 7u:
      v349 = sub_100041BB8();
      v350 = v796;
      sub_100051C74(v349, v796, v351);
      sub_1000161C0(v857 + 42, v857[45]);
      sub_1000090B4();
      v353 = sub_1000868F4(v352);
      v354 = v851;
      sub_100050F30(v353, v851, v355);
      v255 = sub_1008CCB10(v354, v211, v350);
      sub_100010CD0();
      sub_10004FBF8(v354, v356);
      v357 = sub_100004C08();
      goto LABEL_32;
    case 8u:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v477, v478, v479);
      sub_1000161C0(v857 + 47, v857[50]);
      v480 = sub_100030650();
      v255 = sub_1002878EC(v480, v481);
      v261 = type metadata accessor for LocationViewAction;
      goto LABEL_31;
    case 9u:
      v282 = sub_100041BB8();
      v283 = v798;
      sub_100051C74(v282, v798, v284);
      sub_100003934();
      sub_10001B350(v285, v286, v287, v853);
      v288 = sub_100003BCC(&v830);
      sub_10001B350(v288, v289, v290, v854);
      v291 = sub_100003BCC(&v834);
      sub_10001B350(v291, v292, v293, v849);
      v294 = sub_100003BCC(&v838);
      sub_10001B350(v294, v295, v296, v850);
      v297 = sub_100003BCC(&v842);
      sub_10001B350(v297, v298, v299, v852);
      v300 = sub_100003BCC(&v846);
      sub_10001B350(v300, v301, v302, v855);
      v303 = sub_100003BCC(&v850);
      sub_10001B350(v303, v304, v305, v856);
      v306 = v780;
      sub_100003934();
      sub_10001B350(v307, v308, v309, v848);
      sub_1000161C0(v857 + 52, v857[55]);
      v310 = v859;
      v311 = *(v859 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v312 = *(v859 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v313 = *(v859 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v314 = *(v859 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);

      v315 = sub_10019B79C(v311, v312, v313, v314, v310, v283);
      v857 = v316;
      v858 = v315;
      v846 = v317;
      v844 = v318;

      sub_10004FBF8(v283, type metadata accessor for WeatherDataAction);
      sub_1000090B4();
      sub_100020FE8();
      sub_100050F30(v319, v320, v321);
      v322 = v782;
      sub_1002AB08C(v306, v782, &qword_100CA65E8, &unk_100A31410);
      v323 = sub_10000C7F0();
      sub_1000038B4(v323, v324, v848);
      if (v254)
      {
        sub_1000180EC(v322, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010CD0();
        sub_10004FBF8(v311, v482);
        sub_10001F998();
        sub_100051C74(v322, v311, v483);
      }

      v484 = v795;
      v485 = v790;
      v486 = v787;
      sub_10001F998();
      sub_100051C74(v311, v822, v487);
      v488 = v859;
      v489 = *(v859 + 16);
      v490 = *(v859 + 24);
      sub_1002AB08C(v196, v193, &qword_100CA6640, qword_100A32640);
      v491 = sub_1000182B8();
      v492 = v853;
      sub_100013710(v491, v493);
      if (v254)
      {
        sub_10004EB94();
        sub_100050F30(v488 + v494, v829, v495);
        v496 = sub_1000182B8();
        v498 = sub_100024D10(v496, v497, v492);

        if (v498 != 1)
        {
          sub_1000180EC(v193, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100016FC4();
        sub_100051C74(v193, v829, v499);
      }

      v500 = v767;
      sub_1002AB08C(v803, v767, &qword_100CA6638, &unk_100A31460);
      v501 = sub_1000182B8();
      sub_100013710(v501, v502);
      if (v254)
      {
        v503 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C(v488 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100014F74();
        sub_100050F30(v488 + v503, v833, v504);
        sub_10000554C(v500);
        v507 = v781;
        v505 = v500;
        v508 = v771;
        if (!v254)
        {
          sub_1000180EC(v505, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049DD4();
        sub_100051C74(v500, v833, v506);
        v507 = v781;
        v508 = v771;
      }

      sub_1002AB08C(v806, v508, &qword_100CA6630, &unk_100A32630);
      v509 = sub_1000182B8();
      sub_100013710(v509, v510);
      if (v254)
      {
        sub_100006884();
        sub_100050F30(v488 + v511, v837, v512);
        sub_10000554C(v508);
        if (!v254)
        {
          sub_1000180EC(v508, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000CF08();
        sub_100051C74(v508, v837, v513);
      }

      sub_1002AB08C(v809, v507, &qword_100CA6628, &unk_100A31450);
      v514 = sub_1000162A4();
      sub_100013710(v514, v515);
      if (v254)
      {
        sub_100004BF0();
        sub_100050F30(v488 + v516, v841, v517);
        sub_10000554C(v507);
        if (!v254)
        {
          sub_1000180EC(v507, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100024AD4();
        sub_100051C74(v507, v841, v518);
      }

      sub_100087EBC(&qword_100CA6620, &unk_100A32620, &v842);
      v519 = sub_100016298();
      sub_100013710(v519, v520);
      if (v254)
      {
        sub_10001CE74();
        sub_100050F30(v488 + v521, v845, v522);
        sub_10000554C(v486);
        if (!v254)
        {
          sub_1000180EC(v486, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10003C920();
        sub_100051C74(v486, v845, v523);
      }

      sub_1002AB08C(v814, v485, &qword_100CA6618, &unk_100A31440);
      v524 = sub_10000C7F0();
      sub_100013710(v524, v525);
      if (v254)
      {
        sub_100017E8C();
        sub_100050F30(v488 + v526, v847, v527);
        sub_10000554C(v485);
        v529 = v801;
        if (!v254)
        {
          sub_1000180EC(v485, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100069AE8();
        sub_100051C74(v485, v847, v528);
        v529 = v801;
      }

      sub_1002AB08C(v818, v484, &qword_100CA6610, &unk_100A32610);
      sub_10000556C(v484);
      if (v254)
      {
        sub_10001A004();
        sub_100050F30(v488 + v530, v529, v531);
        sub_10000556C(v484);
        v533 = v529;
        if (!v254)
        {
          sub_1000180EC(v484, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100013D0C();
        sub_100051C74(v484, v529, v532);
        v533 = v529;
      }

      sub_10001F998();
      sub_1000A7D70(v534, &v854);
      v535 = *(v488 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v536 = *(v488 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v537 = *(v488 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v538 = *(v488 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v539 = type metadata accessor for MainState._Storage(0);
      LOBYTE(v762) = v535;
      v759 = v533;
      v255 = sub_100003B6C(v539);
      sub_10003E038(v489, v490, v829, v833, v837, v841, v845, v847, v759, v529, v858, v857, v846, v844, v762, v536, v537, v538, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, v778, v779);
      sub_100052654();

      goto LABEL_149;
    case 0xAu:
      v470 = sub_100041BB8();
      v471 = v797;
      sub_100051C74(v470, v797, v472);
      sub_1000161C0(v857 + 57, v857[60]);
      v473 = v859;
      v474 = *(v859 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v475 = *(v859 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v476 = *(v859 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);

      v255 = sub_10037858C(v474, v475, v476, v473, v471);

      v358 = type metadata accessor for DebugAction;
      v357 = v471;
      goto LABEL_32;
    case 0xBu:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v262, v263, v264);
      sub_1000161C0(v857 + 72, v857[75]);
      v265 = sub_100030650();
      v255 = sub_100967348(v265, v266);
      v261 = type metadata accessor for ConditionDetailViewAction;
      goto LABEL_31;
    case 0xCu:
      v280 = *v217;
      sub_1000161C0(v857 + 77, v857[80]);
      return sub_100724004(v859, v280);
    case 0xDu:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v453, v454, v455);
      sub_1000161C0(v857 + 82, v857[85]);
      v456 = sub_100030650();
      v255 = sub_100719A6C(v456, v457);
      v261 = type metadata accessor for MoonDetailViewAction;
      goto LABEL_31;
    case 0xEu:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v256, v257, v258);
      sub_1000161C0(v857 + 87, v857[90]);
      v259 = sub_100030650();
      v255 = sub_10084300C(v259, v260);
      v261 = type metadata accessor for AveragesDetailViewAction;
      goto LABEL_31;
    case 0xFu:
      v336 = *v217;
      sub_1000161C0(v857 + 92, v857[95]);
      return sub_1008E87C0(v859, v336);
    case 0x10u:
      sub_10004FBF8(v217, type metadata accessor for MainAction);
      v255 = v859;

      return v255;
    case 0x11u:
      sub_100041BB8();
      sub_100020FE8();
      sub_100051C74(v399, v400, v401);
      sub_1000161C0(v857 + 27, v857[30]);
      v402 = sub_100030650();
      v255 = sub_10073A39C(v402, v403);
      v261 = type metadata accessor for PerformanceTestAction;
LABEL_31:
      v358 = v261;
      v357 = &OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
LABEL_32:
      sub_10004FBF8(v357, v358);
      return v255;
    case 0x12u:
      __break(1u);
      JUMPOUT(0x100070F44);
    case 0x13u:
      sub_100003934();
      v404 = v853;
      sub_10001B350(v405, v406, v407, v853);
      v408 = sub_100003BCC(&v828);
      sub_10001B350(v408, v409, v410, v854);
      v411 = sub_100003BCC(&v832);
      sub_10001B350(v411, v412, v413, v849);
      v414 = sub_100003BCC(&v836);
      v415 = v850;
      sub_10001B350(v414, v416, v417, v850);
      v418 = sub_100003BCC(&v840);
      v419 = v852;
      sub_10001B350(v418, v420, v421, v852);
      v422 = v813;
      static WeatherClock.date.getter();
      sub_10001B350(v422, 0, 1, v855);
      v423 = sub_100003BCC(&v848);
      sub_10001B350(v423, v424, v425, v856);
      v426 = *(&v773 + 1);
      sub_100003934();
      v427 = v848;
      sub_10001B350(v428, v429, v430, v848);
      sub_1000090B4();
      v431 = v859;
      v433 = v784;
      sub_100050F30(v859 + v432, v784, v434);
      sub_100020FE8();
      sub_1002AB08C(v435, v436, v437, v438);
      v439 = sub_10000C834();
      sub_1000038B4(v439, v440, v427);
      if (v254)
      {
        sub_1000180EC(v426, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010CD0();
        sub_10004FBF8(v433, v686);
        sub_10001F998();
        sub_100051C74(v426, v433, v687);
      }

      sub_10001F998();
      sub_100051C74(v433, v820, v688);
      v689 = *(v431 + 16);
      LODWORD(v857) = *(v431 + 24);
      sub_1002AB08C(v202, v199, &qword_100CA6640, qword_100A32640);
      v690 = sub_1000162A4();
      sub_1000038B4(v690, v691, v404);
      v692 = v775;
      if (v254)
      {
        sub_10004EB94();
        sub_100050F30(v431 + v693, v824, v694);
        v695 = sub_1000162A4();
        v697 = sub_100024D10(v695, v696, v404);

        v699 = v789;
        if (v697 != 1)
        {
          sub_1000180EC(v199, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100016FC4();
        sub_100051C74(v199, v824, v698);

        v699 = v789;
      }

      sub_1000131DC();
      sub_1002AB08C(v700, v701, v702, v703);
      v704 = sub_1000162A4();
      v705 = v854;
      sub_1000038B4(v704, v706, v854);
      if (v254)
      {
        v707 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100014F74();
        sub_100050F30(v431 + v707, v827, v708);
        v709 = sub_1000162A4();
        sub_1000038B4(v709, v710, v705);
        v713 = v793;
        v714 = v785;
        v711 = v199;
        v715 = v769;
        if (!v254)
        {
          sub_1000180EC(v711, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049DD4();
        sub_100051C74(v199, v827, v712);
        v713 = v793;
        v714 = v785;
        v715 = v769;
      }

      sub_1002AB08C(v805, v715, &qword_100CA6630, &unk_100A32630);
      sub_10000556C(v715);
      if (v254)
      {
        sub_100006884();
        sub_100050F30(v431 + v716, v831, v717);
        sub_10000556C(v715);
        if (!v254)
        {
          sub_1000180EC(v715, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000CF08();
        sub_100051C74(v715, v831, v718);
      }

      sub_1002AB08C(v807, v692, &qword_100CA6628, &unk_100A31450);
      v719 = sub_10000C834();
      sub_1000038B4(v719, v720, v415);
      if (v254)
      {
        sub_100004BF0();
        sub_100050F30(v431 + v721, v835, v722);
        v723 = sub_10000C834();
        sub_1000038B4(v723, v724, v415);
        if (!v254)
        {
          sub_1000180EC(v692, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100024AD4();
        sub_100051C74(v692, v835, v725);
      }

      sub_100087EBC(&qword_100CA6620, &unk_100A32620, &v840);
      v726 = sub_100016298();
      sub_1000038B4(v726, v727, v419);
      if (v254)
      {
        sub_10001CE74();
        sub_100050F30(v431 + v728, v839, v729);
        v730 = sub_100016298();
        sub_1000038B4(v730, v731, v419);
        if (!v254)
        {
          sub_1000180EC(v714, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10003C920();
        sub_100051C74(v714, v839, v732);
      }

      sub_1002AB08C(v813, v699, &qword_100CA6618, &unk_100A31440);
      sub_10000554C(v699);
      if (v254)
      {
        sub_100017E8C();
        sub_100050F30(v431 + v733, v843, v734);
        sub_10000554C(v699);
        v736 = v800;
        if (!v254)
        {
          sub_1000180EC(v699, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100069AE8();
        sub_100051C74(v699, v843, v735);
        v736 = v800;
      }

      sub_1002AB08C(v816, v713, &qword_100CA6610, &unk_100A32610);
      v737 = sub_1000131C4();
      v738 = v856;
      sub_1000038B4(v737, v739, v856);
      v858 = v689;
      if (v254)
      {
        sub_10001A004();
        sub_100050F30(v431 + v740, v736, v741);
        v742 = sub_1000131C4();
        sub_1000038B4(v742, v743, v738);
        v745 = v736;
        if (!v254)
        {
          sub_1000180EC(v713, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100013D0C();
        sub_100051C74(v713, v736, v744);
        v745 = v736;
      }

      sub_10001F998();
      sub_1000A7D70(v746, &v852);
      v748 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v747 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v750 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v749 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v751 = v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v752 = v431;
      v753 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v755 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v754 = *(v751 + 16);
      v756 = *(v752 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v757 = type metadata accessor for MainState._Storage(0);
      LOBYTE(v762) = v753;
      v760 = v745;
      v255 = sub_100003B6C(v757);
      sub_10003E038(v858, v857, v824, v827, v831, v835, v839, v843, v760, v736, v748, v747, v750, v749, v762, v755, v754, v756, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, v778, v779);
      sub_100052654();

      goto LABEL_149;
    default:
      v218 = *v217;
      sub_1000161C0(v857 + 7, v857[10]);
      v219 = v859;
      LODWORD(v858) = sub_100070FE8(*(v859 + 24), v218);
      sub_100003934();
      sub_10001B350(v220, v221, v222, v853);
      v223 = sub_100003BCC(&v827);
      sub_10001B350(v223, v224, v225, v854);
      v226 = sub_100003BCC(&v831);
      sub_10001B350(v226, v227, v228, v849);
      v229 = sub_100003BCC(&v835);
      v230 = v850;
      sub_10001B350(v229, v231, v232, v850);
      v233 = sub_100003BCC(&v839);
      sub_10001B350(v233, v234, v235, v852);
      v236 = sub_100003BCC(&v843);
      v237 = v855;
      sub_10001B350(v236, v238, v239, v855);
      v240 = sub_100003BCC(&v847);
      sub_10001B350(v240, v241, v242, v856);
      v243 = v772;
      sub_100003934();
      sub_10001B350(v244, v245, v246, v848);
      sub_1000090B4();
      sub_1000131DC();
      sub_100050F30(v247, v248, v249);
      sub_100021424();
      sub_1002AB08C(v250, v251, v252, v253);
      sub_10000554C(v243);
      if (v254)
      {
        sub_1000180EC(v243, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010CD0();
        sub_10004FBF8(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v540);
        sub_10001F998();
        sub_100051C74(v243, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v541);
      }

      sub_10001F998();
      sub_100051C74(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v819, v542);
      v543 = *(v219 + 16);
      sub_1002AB08C(v214, v211, &qword_100CA6640, qword_100A32640);
      v544 = sub_1000131C4();
      v545 = v853;
      sub_100013710(v544, v546);
      v547 = v773;
      v548 = v768;
      v857 = v543;
      if (v254)
      {
        sub_10004EB94();
        sub_100050F30(v219 + v549, v823, v550);
        v551 = sub_1000131C4();
        v545 = sub_100024D10(v551, v552, v545);

        v568 = v788;
        if (v545 != 1)
        {
          sub_1000180EC(v211, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100016FC4();
        sub_100051C74(v211, v823, v567);

        v568 = v788;
      }

      sub_100020FE8();
      sub_1002AB08C(v569, v570, v571, v572);
      v573 = sub_10000C834();
      v574 = v854;
      sub_1000038B4(v573, v575, v854);
      v576 = v237;
      if (v254)
      {
        v577 = v545;
        v578 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C(v219 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100014F74();
        sub_100050F30(v219 + v578, v826, v579);
        sub_1000038B4(v577, 1, v574);
        v589 = v791;
        if (!v254)
        {
          sub_1000180EC(v577, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049DD4();
        sub_100051C74(v545, v826, v588);
        v589 = v791;
      }

      sub_1002AB08C(v804, v548, &qword_100CA6630, &unk_100A32630);
      sub_10000556C(v548);
      if (v254)
      {
        sub_100006884();
        sub_100050F30(v219 + v590, v830, v591);
        sub_10000556C(v548);
        if (!v254)
        {
          sub_1000180EC(v548, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000CF08();
        sub_100051C74(v548, v830, v600);
      }

      sub_100087EBC(&qword_100CA6628, &unk_100A31450, &v835);
      v601 = sub_100016298();
      sub_1000038B4(v601, v602, v230);
      if (v254)
      {
        sub_100004BF0();
        sub_100050F30(v219 + v603, v834, v604);
        v605 = sub_100016298();
        sub_1000038B4(v605, v606, v230);
        if (!v254)
        {
          sub_1000180EC(v547, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100024AD4();
        sub_100051C74(v547, v834, v614);
      }

      v615 = v783;
      sub_1002AB08C(v810, v783, &qword_100CA6620, &unk_100A32620);
      v616 = sub_100007FC4();
      v617 = v852;
      sub_1000038B4(v616, v618, v852);
      if (v254)
      {
        sub_10001CE74();
        sub_100050F30(v219 + v619, v838, v620);
        v621 = sub_100007FC4();
        sub_1000038B4(v621, v622, v617);
        v633 = v856;
        if (!v254)
        {
          sub_1000180EC(v615, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10003C920();
        sub_100051C74(v615, v838, v632);
        v633 = v856;
      }

      sub_1002AB08C(v812, v568, &qword_100CA6618, &unk_100A31440);
      sub_1000038B4(v568, 1, v576);
      if (v254)
      {
        sub_100017E8C();
        sub_100050F30(v219 + v634, v842, v635);
        sub_1000038B4(v568, 1, v576);
        v644 = v799;
        if (!v254)
        {
          sub_1000180EC(v568, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100069AE8();
        sub_100051C74(v568, v842, v643);
        v644 = v799;
      }

      sub_1002AB08C(v815, v589, &qword_100CA6610, &unk_100A32610);
      v645 = sub_1000131C4();
      sub_1000038B4(v645, v646, v633);
      if (v254)
      {
        sub_10001A004();
        sub_100050F30(v219 + v647, v644, v648);
        v649 = sub_1000131C4();
        sub_1000038B4(v649, v650, v633);
        if (!v254)
        {
          sub_1000180EC(v589, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100013D0C();
        sub_100051C74(v589, v644, v659);
      }

      sub_10001F998();
      v660 = v851;
      sub_100051C74(v819, v851, v661);
      v663 = *(v219 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v662 = *(v219 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v665 = *(v219 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v664 = *(v219 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v666 = v219 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v667 = v219;
      v668 = *(v219 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v670 = *(v219 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v669 = *(v666 + 16);
      v671 = *(v667 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v672 = type metadata accessor for MainState._Storage(0);
      LOBYTE(v762) = v668;
      v761 = v660;
      v255 = sub_100003B6C(v672);
      sub_10003E038(v857, v858, v823, v826, v830, v834, v838, v842, v644, v761, v663, v662, v665, v664, v762, v670, v669, v671, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776, v777, v778, v779);
      sub_100052654();

LABEL_149:

      return v255;
  }
}

uint64_t sub_100070FB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100070F94(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007100C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_10007106C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100071130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 44);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

void *sub_1000711C4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for ViewState.SecondaryViewState(0);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CA6600, &unk_100A5C400);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        type metadata accessor for DisplayMetrics(0);
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          v10 = type metadata accessor for WeatherMapPresentationState(0);
          v11 = a4[10];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100071328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100071384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return sub_100024D10(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100071438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1000714BC(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_100071524()
{
  result = v0;
  *(v2 - 112) = v1;
  return result;
}

uint64_t sub_100071538()
{
}

uint64_t sub_100071560()
{

  return sub_10068275C();
}

uint64_t sub_1000715A4()
{
}

uint64_t sub_10007169C()
{

  return swift_allocObject();
}

uint64_t sub_1000716B8(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000716E8(uint64_t a1, uint64_t a2)
{

  return sub_1000302D8(a1, a2, v2, v3);
}

void sub_100071700()
{
  *(v5 + v3[12]) = v0;
  *(v5 + v3[13]) = v6;
  *(v5 + v3[14]) = v1;
  *(v5 + v3[15]) = v2;
  *(v5 + v3[16]) = v4;
}

uint64_t sub_100071744()
{

  return type metadata accessor for MainState._Storage(0);
}

uint64_t sub_100071784()
{
  result = v0;
  *(v2 - 208) = v1;
  return result;
}

uint64_t sub_100071798()
{

  return swift_slowAlloc();
}

uint64_t sub_1000717E8(uint64_t a1)
{

  return sub_100095588();
}

uint64_t sub_100071830()
{

  return sub_100187704();
}

uint64_t sub_10007185C(uint64_t a1, uint64_t a2)
{

  return Forecast.init(_:metadata:)();
}

uint64_t sub_10007188C(uint64_t a1)
{
  v5 = *(a1 + 20);
  v6 = *(v1 + 528) + v2;

  return sub_100111570(v6, v3 + v5, type metadata accessor for PressureComponentPreprocessedDataModel);
}

uint64_t sub_100071914(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100071930()
{

  return swift_storeEnumTagMultiPayload();
}

void sub_100071948()
{
  v1[16] = v0[570];
  v1[17] = v0[562];
  v1[18] = v0[560];
  v1[19] = v0[558];
  v1[20] = v0[556];
}

uint64_t sub_1000719D8()
{

  return sub_100073090();
}

uint64_t sub_100071A00()
{

  return sub_1000730E8();
}

uint64_t sub_100071A7C()
{
}

uint64_t sub_100071AA8(unint64_t *a1, uint64_t a2, int *a3)
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
    type metadata accessor for ViewState.SecondaryViewState(0);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CA6600, &unk_100A5C400);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[8];
      }

      else
      {
        type metadata accessor for DisplayMetrics(0);
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[9];
        }

        else
        {
          v10 = type metadata accessor for WeatherMapPresentationState(0);
          v11 = a3[10];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100071C74(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100071C94(uint64_t a1)
{
  v3 = *(v1 - 208);

  return sub_10001B350(a1, 1, 1, v3);
}

uint64_t sub_100071D30()
{

  return swift_arrayDestroy();
}

uint64_t sub_100071DE8()
{

  return sub_10003DDB8(v0, 0, 0, 2, 0, 0);
}

unint64_t sub_100071E14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_100078694(a1, a2, va);
}

double sub_100071E98()
{

  swift_beginAccess();
  return result;
}

void sub_100071EDC(uint64_t a1@<X8>)
{
  *(v2 - 224) = *(a1 + 32);
  v3 = *(a1 + 48);
  *(v2 - 240) = v1;
  *(v2 - 232) = v3;
}

uint64_t sub_100071EF4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100071F30()
{

  return type metadata accessor for WeatherData(0);
}

uint64_t sub_100071F68(uint64_t a1)
{
  v174 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v159 = v3;
  v4 = sub_1000038CC();
  v173 = type metadata accessor for TimeState(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v172 = v6;
  v7 = sub_1000038CC();
  v150 = type metadata accessor for NotificationsOptInState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v171 = v9;
  v10 = sub_1000038CC();
  v164 = type metadata accessor for NotificationsState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v170 = v12;
  v13 = sub_1000038CC();
  v162 = type metadata accessor for LocationsState(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v169 = v15;
  v16 = sub_1000038CC();
  v160 = type metadata accessor for EnvironmentState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v168 = v18;
  v19 = sub_1000038CC();
  v148 = type metadata accessor for AppConfigurationState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v167 = v21;
  v22 = sub_1000038CC();
  *(&v152 + 1) = type metadata accessor for ModalViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  v158 = v24;
  __chkstk_darwin(v25);
  sub_100003908();
  __chkstk_darwin(v26);
  sub_10000E70C();
  v166 = v27;
  v28 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v145 = v31;
  v32 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  v157 = v34;
  __chkstk_darwin(v35);
  sub_10000E70C();
  v165 = v36;
  v37 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  v163 = v40;
  v41 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  v161 = v44;
  v45 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  v49 = &v142 - v48;
  v50 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  v54 = &v142 - v53;
  v55 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  v58 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v59 = sub_100003810(v58);
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  v61 = type metadata accessor for BannerStateComputer(0);
  v62 = (v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v142 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050FF0();
  v65 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  *&v64[v62[7]] = a1;
  *&v64[v62[8]] = v65;
  v66 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v142 = v66;
  v64[v62[9]] = *(v66 + 3) == 4;

  v155 = sub_1000528E0();
  sub_100053318(v64, type metadata accessor for BannerStateComputer);
  sub_100003934();
  v67 = v148;
  sub_10001B350(v68, v69, v70, v148);
  sub_100003934();
  sub_10001B350(v71, v72, v73, v160);
  v147 = v54;
  v74 = v144;
  sub_100003934();
  sub_10001B350(v75, v76, v77, v162);
  *&v152 = v49;
  v78 = v146;
  sub_100003934();
  sub_10001B350(v79, v80, v81, v164);
  sub_100003934();
  v82 = v150;
  sub_10001B350(v83, v84, v85, v150);
  sub_100003934();
  sub_10001B350(v86, v87, v88, v173);
  v89 = a1;
  sub_100003934();
  sub_10001B350(v90, v91, v92, v174);
  sub_100003934();
  v93 = *(&v152 + 1);
  sub_10001B350(v94, v95, v96, *(&v152 + 1));
  sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
  sub_100050FF0();
  sub_100051BBC();
  sub_1000038B4(v74, 1, v93);
  if (v97)
  {
    sub_1000180EC(v74, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_100053318(v78, type metadata accessor for ModalViewState);
    sub_1000069D8();
    sub_100073140();
  }

  sub_1000069D8();
  sub_100073140();
  v98 = *(v89 + 16);
  DWORD2(v152) = *(v89 + 24);
  v99 = v143;
  sub_100051BBC();
  v100 = sub_10000C834();
  sub_1000038B4(v100, v101, v67);
  if (v97)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_100050FF0();
    v102 = sub_10000C834();
    v104 = sub_100024D10(v102, v103, v67);

    v97 = v104 == 1;
    v105 = v153;
    v106 = v98;
    if (!v97)
    {
      sub_1000180EC(v99, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100073140();

    v105 = v153;
    v106 = v98;
  }

  v107 = v149;
  sub_100051BBC();
  v108 = sub_1000131C4();
  v109 = v160;
  sub_1000038B4(v108, v110, v160);
  if (v97)
  {
    sub_100050FF0();
    v111 = sub_1000131C4();
    sub_1000038B4(v111, v112, v109);
    v113 = v159;
    v114 = v82;
    if (!v97)
    {
      sub_1000180EC(v107, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100073140();
    v113 = v159;
    v114 = v82;
  }

  v115 = v151;
  sub_100051BBC();
  v116 = v162;
  sub_1000038B4(v115, 1, v162);
  if (v97)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_100050FF0();
    sub_1000038B4(v115, 1, v116);
    v117 = v164;
    v118 = v154;
    if (!v97)
    {
      sub_1000180EC(v115, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100073140();
    v117 = v164;
    v118 = v154;
  }

  sub_100051BBC();
  sub_1000038B4(v105, 1, v117);
  if (v97)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_100050FF0();
    sub_1000038B4(v105, 1, v117);
    v119 = v156;
    if (!v97)
    {
      sub_1000180EC(v105, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100073140();
    v119 = v156;
  }

  sub_100051BBC();
  sub_1000038B4(v118, 1, v114);
  if (v97)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_100050FF0();
    sub_1000038B4(v118, 1, v114);
    v120 = v157;
    if (!v97)
    {
      sub_1000180EC(v118, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100073140();
    v120 = v157;
  }

  sub_100051BBC();
  v121 = sub_1000131C4();
  sub_1000038B4(v121, v122, v173);
  if (v97)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_100050FF0();
    v123 = sub_1000131C4();
    sub_1000038B4(v123, v124, v173);
    if (!v97)
    {
      sub_1000180EC(v119, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100073140();
  }

  sub_100051BBC();
  v125 = sub_10000C834();
  sub_1000038B4(v125, v126, v174);
  if (v97)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_100050FF0();
    v127 = sub_10000C834();
    sub_1000038B4(v127, v128, v174);
    if (!v97)
    {
      sub_1000180EC(v120, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_100073140();
  }

  sub_1000069D8();
  v129 = v158;
  sub_100073140();
  v131 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v130 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v132 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v133 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v134 = v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v135 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v137 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v136 = *(v134 + 16);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v141) = v135;
  sub_10003E038(v106, DWORD2(v152), v167, v168, v169, v170, v171, v172, v113, v129, v131, v130, v132, v133, v141, v137, v136, v155, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  v139 = v138;

  return v139;
}

uint64_t type metadata accessor for BannerStateComputer(uint64_t a1)
{
  result = qword_100CE0178;
  if (!qword_100CE0178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100072D88(uint64_t a1)
{
  type metadata accessor for MainAction(319);
  if (v1 <= 0x3F)
  {
    sub_100052874(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100072E1C()
{
  result = qword_100CB6C40;
  if (!qword_100CB6C40)
  {
    result = swift_getWitnessTable(aI_10, &type metadata for ContentStatusBanner.Placement, v0, v1);
    atomic_store(result, &qword_100CB6C40);
  }

  return result;
}

unint64_t sub_100072E74()
{
  result = qword_100CD2BD8;
  if (!qword_100CD2BD8)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for ContentStatusBanner.Placement, v0, v1);
    atomic_store(result, &qword_100CD2BD8);
  }

  return result;
}

uint64_t sub_100072EC8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100072F20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100072F7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100072FD8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100073030(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100073090()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000730E8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100073140()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100073198()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000731F0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_100073248()
{
  sub_10000C778();
  v2 = v1;
  v3 = sub_1002E5718();
  v4 = type metadata accessor for ModalViewState(v3);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  v85 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  sub_10000E70C();
  v84 = v8;
  v9 = sub_1000038CC();
  v10 = type metadata accessor for ViewState(v9);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003848();
  v87 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_10000E70C();
  v86 = v14;
  v15 = sub_1000038CC();
  v16 = type metadata accessor for TimeState(v15);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003848();
  v89 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v88 = v20;
  v21 = sub_1000038CC();
  v22 = type metadata accessor for NotificationsOptInState(v21);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  v91 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v90 = v26;
  v27 = sub_1000038CC();
  v28 = type metadata accessor for NotificationsState(v27);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_10000C8A8(v30, v82);
  __chkstk_darwin(v31);
  sub_10000E70C();
  v92 = v32;
  v33 = sub_1000038CC();
  v34 = type metadata accessor for LocationsState(v33);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_100003848();
  v94 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_1000B9E20();
  v38 = type metadata accessor for EnvironmentState(0);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003C38();
  __chkstk_darwin(v40);
  v41 = type metadata accessor for AppConfigurationState(0);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003C38();
  __chkstk_darwin(v43);
  sub_10004E424();

  v44 = sub_1002E54F8();
  sub_100073B0C(v44, v45);
  v47 = v46;

  if ((v47 & 1) != 0 && *(v0 + 24) == *(v2 + 24))
  {
    sub_100066B44();
    sub_100066B44();
    sub_100020E44();
    v48 = static AppConfiguration.== infix(_:_:)();
    sub_100040B64();
    sub_100040B64();
    if (v48)
    {
      sub_100003CD0();
      swift_beginAccess();
      sub_100066B44();
      sub_100003CD0();
      swift_beginAccess();
      sub_100066B44();
      v49 = sub_100003B2C();
      v51 = sub_1000B855C(v49, v50);
      sub_100040B64();
      sub_100040B64();
      if (v51)
      {
        sub_100066B44();
        sub_100082590();
        v52 = sub_10008672C();
        sub_1000B8D9C(v52, v53, v54, v55, v56, v57, v58, v59, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
        v61 = v60;
        sub_100040B64();
        sub_100027E24();
        sub_100040B64();
        if (v61)
        {
          sub_100066B44();
          sub_100082590();
          v62 = sub_100003984();
          v64 = sub_1000BA240(v62, v63);
          sub_100040B64();
          sub_1002E5638();
          if (v64)
          {
            sub_100066B44();
            sub_100082590();
            v65 = sub_100003984();
            v67 = sub_1000BA584(v65, v66);
            sub_100040B64();
            sub_1002E5638();
            if (v67)
            {
              sub_100066B44();
              sub_100082590();
              sub_100003984();
              v68 = static Date.== infix(_:_:)();
              sub_100040B64();
              sub_1002E5638();
              if (v68)
              {
                sub_100066B44();
                sub_100082590();
                sub_100003984();
                sub_1000BA6B4();
                v70 = v69;
                sub_100040B64();
                sub_1002E5638();
                if (v70)
                {
                  sub_100066B44();
                  sub_100082590();
                  sub_100003984();
                  sub_1000BC008();
                  v72 = v71;
                  sub_100040B64();
                  sub_1002E5638();
                  if (v72)
                  {
                    v73 = *(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData) == *(v2 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData) && *(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8) == *(v2 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
                    if (v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      sub_100014268();
                      sub_1000BCFBC();
                      if (v74)
                      {
                        sub_100027E24();
                        sub_1000BD330();
                        v76 = v75;

                        if ((v76 & 1) == 0 || *(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState) != *(v2 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState))
                        {
                          goto LABEL_19;
                        }

                        sub_1000BDA70();
                        if (v77)
                        {
                          v78 = sub_1000B0C38();
                          sub_1000BDD2C(v78, v79);
                          v81 = v80;

                          if ((v81 & 1) == 0)
                          {
                            goto LABEL_19;
                          }

                          sub_100003984();
                          sub_1000BE3AC();
                          goto LABEL_22;
                        }
                      }

                      else
                      {
                      }

LABEL_22:
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

LABEL_19:
  sub_1002E52C4();
  sub_10000536C();
}