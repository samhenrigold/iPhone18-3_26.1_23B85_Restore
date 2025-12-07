double sub_100046FC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_100049428(v2, sub_100089E94, sub_1000868A8, sub_100009194, sub_100009A04);
  }

  return result;
}

uint64_t sub_100047090@<X0>(uint64_t *a2@<X8>)
{
  v15 = a2;
  v2 = sub_100035D04(&qword_10033B5B0, &qword_100272050);
  v3 = *(v2 - 8);
  v13 = v2;
  v14 = v3;
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = sub_100035D04(&qword_10033B5B8, &qword_100272058);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v16 = sub_10008CECC();

  sub_100035D04(&qword_10033B5C0, &qword_100272060);
  type metadata accessor for HandoffEvent(0);
  sub_10000E244(&qword_10034C770, &qword_10033B5C0, &qword_100272060, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_10000E244(&qword_10033B5C8, &qword_10033B5B8, &qword_100272058, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B5D0, &qword_10033B5B0, &qword_100272050, &protocol conformance descriptor for Publishers.Map<A, B>);
  v10 = v13;
  v11 = Publisher.eraseToAnyPublisher()();
  (*(v14 + 8))(v5, v10);
  result = (*(v7 + 8))(v9, v6);
  *v15 = v11;
  return result;
}

uint64_t sub_100047388@<X0>(void *a1@<X8>)
{
  v2 = (a1 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  _StringGuts.grow(_:)(34);

  v3._countAndFlagsBits = sub_10012C5E0();
  String.append(_:)(v3);

  *a1 = 0x1000000000000020;
  a1[1] = 0x8000000100298790;
  type metadata accessor for SessionEvent(0);
  swift_storeEnumTagMultiPayload();
  *v2 = UUID.uuidString.getter();
  v2[1] = v4;
  type metadata accessor for HandoffEvent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100047494@<X0>(uint64_t *a2@<X8>)
{
  v18 = a2;
  v2 = sub_100035D04(&qword_10033B580, &qword_100272038);
  v3 = *(v2 - 8);
  v16 = v2;
  v17 = v3;
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = sub_100035D04(&qword_10033B588, &qword_100272040);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  sub_10008D40C(v19);
  v11 = v20;
  v10 = v21;
  sub_10000EBC0(v19, v20);
  v12 = (*(v10 + 32))(v11, v10);
  sub_10000903C(v19);
  v19[0] = v12;

  sub_100035D04(&qword_10033B590, &qword_100272048);
  type metadata accessor for HandoffEvent(0);
  sub_10000E244(&qword_10033B598, &qword_10033B590, &qword_100272048, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_10000E244(&qword_10033B5A0, &qword_10033B588, &qword_100272040, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B5A8, &qword_10033B580, &qword_100272038, &protocol conformance descriptor for Publishers.Map<A, B>);
  v13 = v16;
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v17 + 8))(v5, v13);
  result = (*(v7 + 8))(v9, v6);
  *v18 = v14;
  return result;
}

uint64_t sub_1000477C8@<X0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  v4 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  *a2 = v3;
  type metadata accessor for SessionEvent(0);
  swift_storeEnumTagMultiPayload();
  *v4 = UUID.uuidString.getter();
  v4[1] = v5;
  type metadata accessor for HandoffEvent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004786C@<X0>(uint64_t *a2@<X8>)
{
  v20 = a2;
  v2 = sub_100035D04(&qword_10033B538, &qword_100272010);
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = sub_100035D04(&qword_10033B540, &qword_100272018);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = sub_100035D04(&qword_10033B548, &unk_100272020);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  swift_beginAccess();
  sub_100035D04(&qword_10033B550, &qword_1002746C0);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_10033B558, &qword_10033B540, &qword_100272018, &protocol conformance descriptor for Published<A>.Publisher);
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v7 + 8))(v9, v6);
  v21 = v14;

  sub_100035D04(&qword_10033B560, &qword_100272030);
  type metadata accessor for HandoffEvent(0);
  sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_10000E244(&qword_10033B570, &qword_10033B548, &unk_100272020, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B578, &qword_10033B538, &qword_100272010, &protocol conformance descriptor for Publishers.Map<A, B>);
  v15 = v18;
  v16 = Publisher.eraseToAnyPublisher()();
  (*(v19 + 8))(v5, v15);
  result = (*(v11 + 8))(v13, v10);
  *v20 = v16;
  return result;
}

uint64_t sub_100047C78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = 0x6C696E2D6E6F6ELL;
  }

  else
  {
    v3 = 7104878;
  }

  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  v5 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  v6._countAndFlagsBits = v3;
  v6._object = v4;
  String.append(_:)(v6);

  *a2 = 0x4E494C2097949FF0;
  a2[1] = 0xAD00002020203A4BLL;
  type metadata accessor for SessionEvent(0);
  swift_storeEnumTagMultiPayload();
  *v5 = UUID.uuidString.getter();
  v5[1] = v7;
  type metadata accessor for HandoffEvent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100047D98@<X0>(uint64_t *a2@<X8>)
{
  v15 = a2;
  v2 = sub_100035D04(&qword_10033B4F8, &qword_100271FE8);
  v3 = *(v2 - 8);
  v13 = v2;
  v14 = v3;
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = sub_100035D04(&qword_10033B500, &unk_100271FF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v16 = sub_10008CF3C();

  sub_100035D04(&qword_10033B508, &qword_1002744C0);
  type metadata accessor for HandoffEvent(0);
  sub_10000E244(&qword_10033B510, &qword_10033B508, &qword_1002744C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_10000E244(&qword_10033B518, &qword_10033B500, &unk_100271FF0, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B520, &qword_10033B4F8, &qword_100271FE8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v10 = v13;
  v11 = Publisher.eraseToAnyPublisher()();
  (*(v14 + 8))(v5, v10);
  result = (*(v7 + 8))(v9, v6);
  *v15 = v11;
  return result;
}

uint64_t sub_100048090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  v5 = *(sub_100035D04(&qword_10033B528, &unk_100272000) + 48);
  sub_100013B14(a1, a2, type metadata accessor for ExperienceEffect);
  v6 = sub_100035D04(&qword_10033B530, &unk_1002783D0);
  sub_100013B14(a1 + *(v6 + 36), a2 + v5, type metadata accessor for ExperienceEvent);
  type metadata accessor for SessionEvent(0);
  swift_storeEnumTagMultiPayload();
  *v4 = UUID.uuidString.getter();
  v4[1] = v7;
  type metadata accessor for HandoffEvent(0);

  return swift_storeEnumTagMultiPayload();
}

double sub_1000481A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
    sub_100048924(a1, (a1 + *(v4 + 48)), *(a1 + *(v4 + 64)) | (*(a1 + *(v4 + 64) + 4) << 32));
  }

  return result;
}

uint64_t sub_100048240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(sub_100035D04(&unk_10034C700, &qword_100273D30) + 48));
  v6 = *v4;
  v5 = v4[1];
  v7 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  sub_100013B14(a1, a2, type metadata accessor for ExperienceEvent);
  type metadata accessor for SessionEvent(0);
  swift_storeEnumTagMultiPayload();
  *v7 = v6;
  v7[1] = v5;
  type metadata accessor for HandoffEvent(0);
  swift_storeEnumTagMultiPayload();
}

BOOL sub_100048318(uint64_t a1)
{
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for HandoffEvent(0);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SessionEvent(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  sub_100013B14(a1, v10, type metadata accessor for HandoffEvent);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100035D04(&qword_10033B4E8, &unk_100271FD0);

    sub_10005177C(v10, v16, type metadata accessor for SessionEvent);
    sub_10005177C(v16, v14, type metadata accessor for SessionEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10005177C(v14, v7, type metadata accessor for ExperienceEvent);
      sub_10005177C(v7, v5, type metadata accessor for ExperienceEvent);
      v17 = swift_getEnumCaseMultiPayload() != 1;
      sub_10001439C(v5, type metadata accessor for ExperienceEvent);
      return v17;
    }

    v19 = type metadata accessor for SessionEvent;
    v20 = v14;
  }

  else
  {
    v19 = type metadata accessor for HandoffEvent;
    v20 = v10;
  }

  sub_10001439C(v20, v19);
  return 1;
}

uint64_t sub_1000485C8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v4;
  v15[0] = *(a1 + 32);
  *(v15 + 9) = *(a1 + 41);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(sub_100035D04(&qword_10033B4E0, &unk_100278FD0) + 80);
  v8 = *(sub_100035D04(&qword_10033B4C8, &unk_100271FC0) + 48);
  v9 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  v10 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v10;
  a2[2] = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  type metadata accessor for ExperienceEvent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SessionEvent(0);
  swift_storeEnumTagMultiPayload();
  *v9 = v6;
  v9[1] = v5;
  type metadata accessor for HandoffEvent(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 16))(a2 + v8, a1 + v7, v11);
  sub_100051520(v14, &v13);
}

double sub_100048728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = sub_100035D04(a3, a4);
    sub_100048924(a1, (a1 + *(v8 + 48)), 0x100000000uLL);
  }

  return result;
}

void *sub_1000487BC()
{
  v1 = v0;
  if (qword_100338E50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_1000488CC()
{
  sub_1000487BC();

  return swift_deallocClassInstance();
}

void sub_100048924(uint64_t a1, void (*a2)(void, void, void), unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SessionEvent(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for HandoffEvent(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v59 - v16;
  __chkstk_darwin(v15);
  v19 = &v59 - v18;
  if (qword_100338E50 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100003078(v20, qword_10033B120);
  sub_100013B14(a1, v19, type metadata accessor for HandoffEvent);
  v63 = v21;
  v22 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v64))
  {
    v23 = swift_slowAlloc();
    v62 = v4;
    v24 = v23;
    v60 = swift_slowAlloc();
    v65[0] = v60;
    *v24 = 136315394;
    *(v24 + 4) = sub_100017494(0xD000000000000029, 0x8000000100298850, v65);
    *(v24 + 12) = 2080;
    sub_100013B14(v19, v17, type metadata accessor for HandoffEvent);
    v25 = String.init<A>(describing:)();
    v61 = v14;
    v26 = a1;
    v27 = v10;
    v28 = a3;
    v29 = a2;
    v31 = v30;
    sub_10001439C(v19, type metadata accessor for HandoffEvent);
    v32 = sub_100017494(v25, v31, v65);
    a2 = v29;
    a3 = v28;
    v10 = v27;
    a1 = v26;
    v14 = v61;

    *(v24 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v64, "%s: handoffEvent=%s", v24, 0x16u);
    swift_arrayDestroy();

    v4 = v62;
  }

  else
  {

    sub_10001439C(v19, type metadata accessor for HandoffEvent);
  }

  sub_100013B14(a1, v14, type metadata accessor for HandoffEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = &v14[*(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48)];
      v36 = *v34;
      v35 = v34[1];
      sub_10005177C(v14, v10, type metadata accessor for SessionEvent);
      v37 = *(v4 + 24) + qword_100346AF8;
      os_unfair_lock_lock(v37);
      v38 = *(v37 + 8);
      if (*(v38 + 16) && (v39 = sub_100004B58(v36, v35), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 8 * v39);
      }

      else
      {
        v41 = 0;
      }

      os_unfair_lock_unlock(v37);

      if (v41)
      {
        sub_100255FF0(v10, a2, a3 | ((HIDWORD(a3) & 1) << 32));
      }

      else
      {
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "### No SessionHistory for session?", v55, 2u);
        }
      }

      v51 = type metadata accessor for SessionEvent;
      v52 = v10;
    }

    else
    {
      v51 = type metadata accessor for HandoffEvent;
      v52 = v14;
    }

    sub_10001439C(v52, v51);
  }

  else if (EnumCaseMultiPayload)
  {
    v42 = *v14;
    v43 = v4;
    v45 = *(v14 + 1);
    v44 = *(v14 + 2);
    v46 = *(v43 + 16) + qword_100346AF8;
    os_unfair_lock_lock(v46);
    v47 = *(v46 + 8);
    if (*(v47 + 16) && (v48 = sub_100004B58(v45, v44), (v49 & 1) != 0))
    {
      v50 = *(*(v47 + 56) + 8 * v48);
    }

    else
    {
      v50 = 0;
    }

    os_unfair_lock_unlock(v46);

    if (v50)
    {
      sub_10025AFA4(v42, a2, a3 | ((HIDWORD(a3) & 1) << 32));
    }

    else
    {
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "### No DeviceHistory for device?", v58, 2u);
      }
    }
  }

  else
  {
    sub_100013B7C(*v14, v14[8], a2);
  }
}

uint64_t sub_100048F24()
{
  v1 = v0;
  _StringGuts.grow(_:)(106);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001002987C0;
  String.append(_:)(v2);
  swift_beginAccess();
  if ((v0[7] & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._object = 0x80000001002987F0;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5 = (v0[2] + qword_100346AF8);
  os_unfair_lock_lock((v1[2] + qword_100346AF8));
  os_unfair_lock_unlock(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._object = 0x8000000100298810;
  v7._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v7);
  v8 = (v1[3] + qword_100346AF8);
  os_unfair_lock_lock(v8);
  os_unfair_lock_unlock(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._object = 0x8000000100298830;
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  v11 = (v1[4] + qword_100346AF8);
  os_unfair_lock_lock(v11);
  os_unfair_lock_unlock(v11);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  return 0;
}

uint64_t getEnumTagSinglePayload for HapticEffect.ClickIntensity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HapticEffect.ClickIntensity(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000492C4()
{
  result = qword_10033B240;
  if (!qword_10033B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033B240);
  }

  return result;
}

void sub_10004933C(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_100013B14(a1, a3, type metadata accessor for HandoffEvent);
  Date.init()();

  CurrentValueSubject.value.getter();
  if (v11)
  {
    CurrentValueSubject.value.getter();

    v6 = v12;
    v7 = v13;
  }

  else
  {
    v6 = v9;

    v7 = v10 & 1;
  }

  v8 = a3 + *(v5 + 64);
  *v8 = v6;
  *(v8 + 4) = v7;
}

double sub_100049428(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void), uint64_t (*a4)(void, void, __n128), uint64_t (*a5)(void *, void *, uint64_t, uint64_t))
{
  v10 = v5;
  v11 = a1;
  v40 = a1;

  swift_getAtKeyPath();

  v13 = v38;
  v12 = v39;
  swift_bridgeObjectRetain_n();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v35 = v11;
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, &v36);
    *(v16 + 12) = 2080;
    v37[0] = v13;
    v37[1] = v12;
    v17 = String.init<A>(describing:)();
    log = v14;
    v19 = v12;
    v20 = v13;
    v21 = a3;
    v22 = a4;
    v23 = sub_100017494(v17, v18, &v36);

    *(v16 + 14) = v23;
    a4 = v22;
    a3 = v21;
    v24 = v15;
    v25 = v20;
    v12 = v19;
    _os_log_impl(&_mh_execute_header, log, v24, "%s: key=%s", v16, 0x16u);
    swift_arrayDestroy();

    v11 = v35;
  }

  else
  {

    v25 = v38;
  }

  v26 = v10 + qword_100346AF8;
  os_unfair_lock_lock((v10 + qword_100346AF8));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = *(v26 + 8);
  *(v26 + 8) = 0x8000000000000000;
  sub_10004DD28(v11, v25, v12, isUniquelyReferenced_nonNull_native, a2, a3);

  v28 = v37[0];
  *(v26 + 8) = v37[0];

  os_unfair_lock_unlock(v26);

  PassthroughSubject.send(_:)();

  v29 = *(v28 + 16);
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = (a4)(*(v28 + 16), 0);
  v31 = a5(v37, v30 + 4, v29, v28);
  v32 = v37[0];

  sub_100004F98(v32);
  if (v31 != v29)
  {
    __break(1u);
LABEL_7:

    v30 = _swiftEmptyArrayStorage;
  }

  v37[0] = v30;
  PassthroughSubject.send(_:)();

  return result;
}

double sub_100049928(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void), uint64_t (*a4)(void, void, __n128), uint64_t (*a5)(void, void, void, void))
{
  v10 = v5;
  v11 = a1;
  v33[6] = a1;

  swift_getAtKeyPath();

  v12 = v33[5];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v32 = v11;
    v15 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, v33);
    *(v15 + 12) = 2080;
    v16 = String.init<A>(describing:)();
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = sub_100017494(v16, v17, v33);

    *(v15 + 14) = v22;
    a5 = v21;
    a4 = v20;
    a3 = v19;
    a2 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: key=%s", v15, 0x16u);
    swift_arrayDestroy();

    v11 = v32;
  }

  else
  {
  }

  v23 = v10 + qword_100346AF8;
  os_unfair_lock_lock((v10 + qword_100346AF8));
  v24 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = *(v23 + 8);
  *(v23 + 8) = 0x8000000000000000;
  sub_10004D630(v24, v12, isUniquelyReferenced_nonNull_native, a2, a3);
  v26 = v33[0];
  *(v23 + 8) = v33[0];

  os_unfair_lock_unlock(v23);

  PassthroughSubject.send(_:)();

  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_7;
  }

  v28 = (a4)(*(v26 + 16), 0);
  v29 = a5(v33, v28 + 4, v27, v26);
  v30 = v33[0];

  sub_100004F98(v30);
  if (v29 != v27)
  {
    __break(1u);
LABEL_7:

    v28 = _swiftEmptyArrayStorage;
  }

  v33[0] = v28;
  PassthroughSubject.send(_:)();

  return result;
}

uint64_t sub_100049CD8(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(void, void, __n128), uint64_t (*a5)(uint64_t *, char *, uint64_t, uint64_t))
{
  v42 = a4;
  v43 = a5;
  v47 = a2;
  v7 = v5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v46 = a1;
  v49[5] = a1;

  swift_getAtKeyPath();

  v48 = v10;
  v19 = *(v10 + 16);
  v19(v16, v18, v9);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v45 = v9;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v41 = v18;
    v24 = v23;
    v25 = swift_slowAlloc();
    v40 = a3;
    v49[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, v49);
    *(v24 + 12) = 2080;
    v19(v13, v16, v9);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    v44 = *(v48 + 8);
    v44(v16, v9);
    v29 = sub_100017494(v26, v28, v49);

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: key=%s", v24, 0x16u);
    swift_arrayDestroy();
    a3 = v40;

    v18 = v41;
  }

  else
  {

    v44 = *(v48 + 8);
    v44(v16, v9);
  }

  v30 = v7 + qword_100346AF8;
  os_unfair_lock_lock((v7 + qword_100346AF8));
  v31 = v46;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = *(v30 + 8);
  *(v30 + 8) = 0x8000000000000000;
  sub_10001B8A0(v31, v18, isUniquelyReferenced_nonNull_native, v47, a3);
  v33 = v49[0];
  *(v30 + 8) = v49[0];

  os_unfair_lock_unlock(v30);

  PassthroughSubject.send(_:)();

  v34 = *(v33 + 16);
  if (!v34)
  {

    v35 = _swiftEmptyArrayStorage;
LABEL_8:
    v49[0] = v35;
    PassthroughSubject.send(_:)();

    return (v44)(v18, v45);
  }

  v35 = v42(*(v33 + 16), 0);
  v36 = v43(v49, v35 + 32, v34, v33);
  v37 = v49[0];

  result = sub_100004F98(v37);
  if (v36 == v34)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

double sub_10004A178(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void), uint64_t (*a4)(void, void, __n128), uint64_t (*a5)(void, void, void, void))
{
  v10 = v5;
  v11 = a1;
  v33[6] = a1;

  swift_getAtKeyPath();

  v12 = v33[5];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v32 = v11;
    v15 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, v33);
    *(v15 + 12) = 2080;
    v16 = String.init<A>(describing:)();
    v18 = v12;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = sub_100017494(v16, v17, v33);

    *(v15 + 14) = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    a2 = v19;
    v12 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: key=%s", v15, 0x16u);
    swift_arrayDestroy();

    v11 = v32;
  }

  v24 = v10 + qword_100346AF8;
  os_unfair_lock_lock((v10 + qword_100346AF8));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = *(v24 + 8);
  *(v24 + 8) = 0x8000000000000000;
  sub_10004DEC0(v11, v12, isUniquelyReferenced_nonNull_native, sub_100026910, a2, a3, &type metadata for ObjectIdentifier);
  v26 = v33[0];
  *(v24 + 8) = v33[0];

  os_unfair_lock_unlock(v24);

  PassthroughSubject.send(_:)();

  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_6;
  }

  v28 = (a4)(*(v26 + 16), 0);
  v29 = a5(v33, v28 + 4, v27, v26);
  v30 = v33[0];

  sub_100004F98(v30);
  if (v29 != v27)
  {
    __break(1u);
LABEL_6:

    v28 = _swiftEmptyArrayStorage;
  }

  v33[0] = v28;
  PassthroughSubject.send(_:)();

  return result;
}

uint64_t sub_10004A49C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_100346AF8;
  os_unfair_lock_lock((v2 + qword_100346AF8));
  v6 = sub_10004B2C8((v5 + 8), a1, a2, sub_100089E6C);
  v8 = v7;
  os_unfair_lock_unlock(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  v15 = v6;

  sub_10004BB88(&v15, type metadata accessor for DeviceHistory);

  PassthroughSubject.send(_:)();

  v9 = *(v8 + 16);
  if (!v9)
  {

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v10 = sub_100009194(*(v8 + 16), 0);
  v11 = sub_100009A04(&v14, v10 + 4, v9, v8);
  v12 = v14;

  sub_100004F98(v12);
  if (v11 == v9)
  {
LABEL_7:
    v14 = v10;
    PassthroughSubject.send(_:)();

    return v6;
  }

  __break(1u);
LABEL_5:

  return v6;
}

uint64_t sub_10004A638(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void, void, __n128), uint64_t (*a5)(uint64_t *, char *, uint64_t, uint64_t))
{
  v11 = v5 + qword_100346AF8;
  os_unfair_lock_lock((v5 + qword_100346AF8));
  v12 = sub_10004B2C8((v11 + 8), a1, a2, a3);
  v14 = v13;
  os_unfair_lock_unlock(v11);
  if (!v12)
  {
    goto LABEL_5;
  }

  v20[5] = v12;

  PassthroughSubject.send(_:)();

  v15 = *(v14 + 16);
  if (!v15)
  {

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v16 = (a4)(*(v14 + 16), 0);
  v17 = a5(v20, v16 + 32, v15, v14);
  v18 = v20[0];

  sub_100004F98(v18);
  if (v17 == v15)
  {
LABEL_7:
    v20[0] = v16;
    PassthroughSubject.send(_:)();

    return v12;
  }

  __break(1u);
LABEL_5:

  return v12;
}

void *sub_10004A7C0(uint64_t a1)
{
  v3 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v4 = sub_10004B384((v3 + 8), a1, sub_10008CE8C, sub_10004C600, sub_10008A2C0);
  v6 = v5;
  os_unfair_lock_unlock(v3);
  if (!v4)
  {

    return v4;
  }

  v12 = v4;
  v7 = v4;
  sub_1000059F0(&v12, &qword_10033B5F8, PCLockscreenControlsObserver_ptr);

  PassthroughSubject.send(_:)();

  v8 = *(v6 + 16);
  if (!v8)
  {

LABEL_7:
    PassthroughSubject.send(_:)();

    return v4;
  }

  sub_100009194(v8, 0);
  v9 = sub_1001295D4();

  result = sub_100004F98(v11);
  if (v9 == v8)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A9D4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_100346AF8;
  os_unfair_lock_lock((v2 + qword_100346AF8));
  v6 = sub_10004B2C8((v5 + 8), a1, a2, sub_10008A5FC);
  v8 = v7;
  os_unfair_lock_unlock(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  v15 = v6;

  sub_10004B544(&v15);

  PassthroughSubject.send(_:)();

  v9 = *(v8 + 16);
  if (!v9)
  {

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v10 = sub_100009194(*(v8 + 16), 0);
  v11 = sub_100009A04(&v14, v10 + 4, v9, v8);
  v12 = v14;

  sub_100004F98(v12);
  if (v11 == v9)
  {
LABEL_7:
    v14 = v10;
    PassthroughSubject.send(_:)();

    return v6;
  }

  __break(1u);
LABEL_5:

  return v6;
}

uint64_t sub_10004AB5C(uint64_t a1)
{
  v3 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v4 = sub_10004B440((v3 + 8), a1, sub_100089CF0);
  v6 = v5;
  os_unfair_lock_unlock(v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v13 = v4;

  sub_10004B544(&v13);

  PassthroughSubject.send(_:)();

  v7 = *(v6 + 16);
  if (!v7)
  {

    v8 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v8 = sub_100009194(*(v6 + 16), 0);
  v9 = sub_100009A04(&v12, v8 + 4, v7, v6);
  v10 = v12;

  sub_100004F98(v10);
  if (v9 == v7)
  {
LABEL_7:
    v12 = v8;
    PassthroughSubject.send(_:)();

    return v4;
  }

  __break(1u);
LABEL_5:

  return v4;
}

void *sub_10004ACDC(uint64_t a1)
{
  v3 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v4 = sub_10004B384((v3 + 8), a1, sub_10008CE8C, sub_10004C600, sub_10008A7C8);
  v6 = v5;
  os_unfair_lock_unlock(v3);
  if (!v4)
  {

    return v4;
  }

  v12 = v4;
  v7 = v4;
  sub_10004B810(&v12);

  PassthroughSubject.send(_:)();

  v8 = *(v6 + 16);
  if (!v8)
  {

LABEL_7:
    PassthroughSubject.send(_:)();

    return v4;
  }

  sub_100009194(v8, 0);
  v9 = sub_1001295D4();

  result = sub_100004F98(v11);
  if (v9 == v8)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004AEE0(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void, void, __n128), uint64_t (*a5)(uint64_t *, char *, uint64_t, uint64_t))
{
  v11 = v5 + qword_100346AF8;
  os_unfair_lock_lock((v5 + qword_100346AF8));
  v12 = sub_10004B440((v11 + 8), a1, a2);
  v14 = v13;
  os_unfair_lock_unlock(v11);
  if (!v12)
  {
    goto LABEL_5;
  }

  v21 = v12;

  sub_10004BB88(&v21, a3);

  PassthroughSubject.send(_:)();

  v15 = *(v14 + 16);
  if (!v15)
  {

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v16 = (a4)(*(v14 + 16), 0);
  v17 = a5(&v20, v16 + 32, v15, v14);
  v18 = v20;

  sub_100004F98(v18);
  if (v17 == v15)
  {
LABEL_7:
    v20 = v16;
    PassthroughSubject.send(_:)();

    return v12;
  }

  __break(1u);
LABEL_5:

  return v12;
}

uint64_t sub_10004B114(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void, void, __n128), uint64_t (*a5)(uint64_t *, char *, uint64_t, uint64_t))
{
  v11 = v5 + qword_100346AF8;
  os_unfair_lock_lock((v5 + qword_100346AF8));
  v12 = sub_10004B384((v11 + 8), a1, sub_100026910, sub_10004C600, a2);
  v14 = v13;
  os_unfair_lock_unlock(v11);
  if (!v12)
  {
    goto LABEL_5;
  }

  v21 = v12;

  sub_10004BB88(&v21, a3);

  PassthroughSubject.send(_:)();

  v15 = *(v14 + 16);
  if (!v15)
  {

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v16 = (a4)(*(v14 + 16), 0);
  v17 = a5(&v20, v16 + 32, v15, v14);
  v18 = v20;

  sub_100004F98(v18);
  if (v17 == v15)
  {
LABEL_7:
    v20 = v16;
    PassthroughSubject.send(_:)();

    return v12;
  }

  __break(1u);
LABEL_5:

  return v12;
}

uint64_t sub_10004B2C8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_100004B58(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v10 = v13;
    }

    v11 = *(*(v10 + 56) + 8 * v8);
    sub_100005840(v8, v10);
    *a1 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_10004B384(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v8 = a3(a2);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    v15 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v12 = v15;
    }

    v13 = *(*(v12 + 56) + 8 * v10);
    a4(v10, v12);
    *a1 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_10004B440(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_100019110(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v14 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v9 = v14;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(*(v9 + 56) + 8 * v7);
    sub_10004CAF0(v7, v9);
    *a1 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_10004B544(uint64_t *a1)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *a1;
    v25 = type metadata accessor for HandoffDevice(0);
    v26 = &off_1003034F0;
    v24[0] = v2;
    sub_10000EBC0(v24, v25);

    v3 = sub_100075990();
    v4 = v3;
    if ((v3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_1000515C0(&qword_10033B5E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      Set.Iterator.init(_cocoa:)();
      v6 = v27;
      v5 = v28;
      v7 = v29;
      v8 = v30;
      v9 = v31;
    }

    else
    {
      v10 = -1 << *(v3 + 32);
      v5 = v3 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v3 + 56);

      v8 = 0;
      v6 = v4;
    }

    if (v6 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8;
      v14 = v9;
      v15 = v8;
      if (!v9)
      {
        break;
      }

LABEL_13:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

      if (!v17)
      {
LABEL_19:
        sub_100004F98(v6);

        v18 = v25;
        v19 = v26;
        sub_100051608(v24, v25);
        v20 = (v19[3])(v23, v18, v19);
        v22 = v21;

        *v22 = &_swiftEmptySetSingleton;
        v20(v23, 0);
        sub_10000903C(v24);
        return;
      }

      while (1)
      {
        AnyCancellable.cancel()();

        v8 = v15;
        v9 = v16;
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for AnyCancellable();
          swift_dynamicCast();
          v15 = v8;
          v16 = v9;
          if (v23[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_10004B810(id *a1)
{
  if (*(v1 + 24) == 1)
  {
    v25[0] = *a1;
    type metadata accessor for XPCConnection();
    v2 = v25[0];
    sub_100035D04(&qword_10033B5D8, &qword_100272068);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v29, v26);
      v3 = v27;
      v4 = v28;
      sub_10000EBC0(v26, v27);
      v5 = (*(v4 + 8))(v3, v4);
      v6 = v5;
      if ((v5 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_1000515C0(&qword_10033B5E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        Set.Iterator.init(_cocoa:)();
        v7 = *(&v29 + 1);
        v8 = v29;
        v10 = *(&v30 + 1);
        v9 = v30;
        v11 = v31;
      }

      else
      {
        v12 = -1 << *(v5 + 32);
        v7 = v5 + 56;
        v9 = ~v12;
        v13 = -v12;
        if (v13 < 64)
        {
          v14 = ~(-1 << v13);
        }

        else
        {
          v14 = -1;
        }

        v11 = v14 & *(v5 + 56);

        v10 = 0;
        v8 = v6;
      }

      if (v8 < 0)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v15 = v10;
        v16 = v11;
        v17 = v10;
        if (!v11)
        {
          break;
        }

LABEL_15:
        v18 = (v16 - 1) & v16;
        v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        if (!v19)
        {
LABEL_21:
          sub_100004F98(v8);

          v20 = v27;
          v21 = v28;
          sub_100051608(v26, v27);
          v22 = (*(v21 + 24))(v25, v20, v21);
          v24 = v23;

          *v24 = &_swiftEmptySetSingleton;
          v22(v25, 0);
          sub_10000903C(v26);
          return;
        }

        while (1)
        {
          AnyCancellable.cancel()();

          v10 = v17;
          v11 = v18;
          if ((v8 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_17:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for AnyCancellable();
            swift_dynamicCast();
            v17 = v10;
            v18 = v11;
            if (v25[0])
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= ((v9 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v16 = *(v7 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_1000097E8(&v29, &qword_10033B5E0, &qword_100272070);
    }
  }
}

void sub_10004BB88(void *a1, uint64_t (*a2)(void))
{
  if (*(v2 + 24) == 1)
  {
    v25[0] = *a1;
    a2(0);

    sub_100035D04(&qword_10033B5D8, &qword_100272068);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v29, v26);
      v3 = v27;
      v4 = v28;
      sub_10000EBC0(v26, v27);
      v5 = (*(v4 + 8))(v3, v4);
      v6 = v5;
      if ((v5 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_1000515C0(&qword_10033B5E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        Set.Iterator.init(_cocoa:)();
        v7 = *(&v29 + 1);
        v8 = v29;
        v10 = *(&v30 + 1);
        v9 = v30;
        v11 = v31;
      }

      else
      {
        v12 = -1 << *(v5 + 32);
        v7 = v5 + 56;
        v9 = ~v12;
        v13 = -v12;
        if (v13 < 64)
        {
          v14 = ~(-1 << v13);
        }

        else
        {
          v14 = -1;
        }

        v11 = v14 & *(v5 + 56);

        v10 = 0;
        v8 = v6;
      }

      if (v8 < 0)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v15 = v10;
        v16 = v11;
        v17 = v10;
        if (!v11)
        {
          break;
        }

LABEL_15:
        v18 = (v16 - 1) & v16;
        v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        if (!v19)
        {
LABEL_21:
          sub_100004F98(v8);

          v20 = v27;
          v21 = v28;
          sub_100051608(v26, v27);
          v22 = (*(v21 + 24))(v25, v20, v21);
          v24 = v23;

          *v24 = &_swiftEmptySetSingleton;
          v22(v25, 0);
          sub_10000903C(v26);
          return;
        }

        while (1)
        {
          AnyCancellable.cancel()();

          v10 = v17;
          v11 = v18;
          if ((v8 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_17:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for AnyCancellable();
            swift_dynamicCast();
            v17 = v10;
            v18 = v11;
            if (v25[0])
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= ((v9 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v16 = *(v7 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_1000097E8(&v29, &qword_10033B5E0, &qword_100272070);
    }
  }
}

uint64_t sub_10004BEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100035D04(&qword_10033B498, &qword_100271FA8);
  sub_100013B14(a1, a2, type metadata accessor for HandoffEvent);
  return Date.init()();
}

uint64_t sub_10004BF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100035D04(&qword_10033B378, &qword_100271F38);
  sub_100009848(a1, a2, &qword_10033B368, &qword_100271F30);
  return Date.init()();
}

uint64_t sub_10004BF8C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004C13C(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1000515C0(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10004C45C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_100051658(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_1000516C4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004C600(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004C7A0(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_1000515C0(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004CAF0(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1000515C0(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10004CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100004B58(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100086B2C(v18, a5 & 1);
      v13 = sub_100004B58(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100089EBC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_10004D010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_100019110(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10008A034();
      goto LABEL_9;
    }

    sub_100086DEC(v18, a4 & 1);
    v21 = sub_100019110(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_10004E0B4(v15, v12, v23, a2, v24);
  }
}

void sub_10004D1EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004B58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000871E8(v16, a4 & 1);
      v11 = sub_100004B58(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10008A2E8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_10004D368(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000851E8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10008A458();
      goto LABEL_7;
    }

    sub_100087490(v13, a3 & 1);
    v19 = sub_1000851E8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100051658(a2, v21);
      return sub_10004E174(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000903C(v17);

  return sub_1000516B4(a1, v17);
}

_OWORD *sub_10004D4E0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004B58(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10008A624();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100087770(v16, a4 & 1);
    v11 = sub_100004B58(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000903C(v22);

    return sub_1000516B4(a1, v22);
  }

  else
  {
    sub_10004E1F0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_10004D630(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  result = sub_10008CE8C(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_8:
    v23 = *v8;
    if (v19)
    {
      *(v23[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    a4();
    result = v21;
    goto LABEL_8;
  }

  a5(v18, a3 & 1);
  result = sub_10008CE8C(a2);
  if ((v19 & 1) == (v22 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1();
}

uint64_t sub_10004D794(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004B58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100087FA8(v16, a4 & 1);
      v11 = sub_100004B58(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10008AAE4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_10004D910(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100019110(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10008ADDC();
      goto LABEL_7;
    }

    sub_100088520(v17, a3 & 1);
    v28 = sub_100019110(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10004E25C(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_10004DB14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100019110(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10008B130();
      goto LABEL_7;
    }

    sub_1000889B4(v17, a3 & 1);
    v24 = sub_100019110(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10004E350(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PCUserAlertManager.ActiveAlertContext(0) - 8) + 72) * v14;

  return sub_100051718(a1, v22);
}

void sub_10004DD28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100004B58(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_100004B58(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_10004DEC0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), unint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 < v21 || (a3 & 1) != 0)
    {
      a6(v21, a3 & 1);
      v16 = a4(a2);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v24 = v16;
      a5();
      v16 = v24;
    }
  }

  v26 = *v11;
  if ((v22 & 1) == 0)
  {
    v26[(v16 >> 6) + 8] |= 1 << v16;
    *(v26[6] + 8 * v16) = a2;
    *(v26[7] + 8 * v16) = a1;
    v27 = v26[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v20)
    {
      v26[2] = v28;
      return;
    }

    goto LABEL_15;
  }

  *(v26[7] + 8 * v16) = a1;
}

unint64_t sub_10004E06C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10004E0B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_10004E174(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000516B4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_10004E1F0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000516B4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10004E25C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10004E350(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  result = sub_10005177C(a3, v10 + *(*(active - 8) + 72) * a1, type metadata accessor for PCUserAlertManager.ActiveAlertContext);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10004E440@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  *a3 = *a2;
  a3[1] = v3;
}

uint64_t sub_10004E4BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  sub_100035D04(a2, a3);
  *a4 = v5;

  return Date.init()();
}

void *sub_10004E50C(uint64_t a1)
{
  v2 = v1;
  v204 = a1;
  v183 = sub_100035D04(&qword_10033B248, &qword_100271DC0);
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = v134 - v3;
  v180 = sub_100035D04(&qword_10033B250, &qword_100271DC8);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = v134 - v4;
  v174 = sub_100035D04(&qword_10033B258, &qword_100271DD0);
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = v134 - v5;
  v177 = sub_100035D04(&qword_10033B260, &qword_100271DD8);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = v134 - v6;
  v195 = sub_100035D04(&qword_10033B268, &qword_100271DE0);
  v200 = *(v195 - 8);
  __chkstk_darwin(v195);
  v170 = v134 - v7;
  v196 = sub_100035D04(&qword_10033B270, &qword_100271DE8);
  v201 = *(v196 - 8);
  __chkstk_darwin(v196);
  v171 = v134 - v8;
  v188 = sub_100035D04(&qword_10033B278, &qword_100271DF0);
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = v134 - v9;
  v167 = sub_100035D04(&qword_10033B280, &qword_100271DF8);
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = v134 - v10;
  v185 = sub_100035D04(&qword_10033B288, &unk_100271E00);
  v169 = *(v185 - 8);
  __chkstk_darwin(v185);
  v168 = v134 - v11;
  v12 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v12 - 8);
  v164 = v134 - v13;
  v14 = sub_100035D04(&qword_10033B290, &qword_100271E10);
  __chkstk_darwin(v14 - 8);
  v163 = v134 - v15;
  v190 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v162 = *(v190 - 8);
  __chkstk_darwin(v190);
  v161 = v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_100035D04(&qword_10033B298, &qword_100271E18);
  v154 = *(v155 - 1);
  __chkstk_darwin(v155);
  v153 = v134 - v17;
  v157 = sub_100035D04(&qword_10033B2A0, &qword_100271E20);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v189 = v134 - v18;
  v160 = sub_100035D04(&qword_10033B2A8, &qword_100271E28);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = v134 - v19;
  v192 = sub_100035D04(&qword_10033B2B0, &unk_100271E30);
  v150 = *(v192 - 1);
  __chkstk_darwin(v192);
  v149 = v134 - v20;
  v194 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v199 = *(v194 - 8);
  __chkstk_darwin(v194);
  v184 = v134 - v21;
  v191 = sub_100035D04(&qword_10033B2B8, &qword_100271E40);
  v152 = *(v191 - 8);
  __chkstk_darwin(v191);
  v151 = v134 - v22;
  v198 = sub_100035D04(&qword_10033B2C0, &qword_100271E48);
  v193 = *(v198 - 8);
  __chkstk_darwin(v198);
  v148 = v134 - v23;
  v147 = sub_100035D04(&qword_10033B2C8, &qword_100271E50);
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = v134 - v24;
  v141 = sub_100035D04(&qword_10033B2D0, &qword_100271E58);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = v134 - v25;
  v144 = sub_100035D04(&qword_10033B2D8, &qword_100271E60);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = v134 - v26;
  v138 = sub_100035D04(&qword_10033B2E0, &qword_100271E68);
  v27 = *(v138 - 8);
  __chkstk_darwin(v138);
  v29 = v134 - v28;
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_10033B2E8, &qword_100271E90);
  swift_allocObject();
  v31 = sub_10006C58C(KeyPath, 0);

  v2[2] = v31;
  v32 = swift_getKeyPath();
  sub_100035D04(&qword_10033B2F0, &qword_100271EB8);
  swift_allocObject();
  v33 = sub_10006C7BC(v32, 0);

  v2[3] = v33;
  v34 = swift_getKeyPath();
  sub_100035D04(&qword_10033B2F8, &qword_100271EE0);
  swift_allocObject();
  v35 = sub_10006C9EC(v34, 0);

  v2[4] = v35;
  type metadata accessor for SystemHistory(0);
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_charging;
  v38 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
  v39 = *(*(v38 - 8) + 56);
  v39(v36 + v37, 1, 1, v38);
  v39(v36 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_deviceMotionStationary, 1, 1, v38);
  v39(v36 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_orientationIsValid, 1, 1, v38);
  v39(v36 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_screenOn, 1, 1, v38);
  v39(v36 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_ranging, 1, 1, v38);
  v2[5] = v36;
  v40 = sub_10024D4BC(_swiftEmptyArrayStorage);
  v41 = v2;
  v2[7] = &_swiftEmptySetSingleton;
  v42 = v2 + 7;
  *(v42 - 1) = v40;
  if (qword_100338E50 != -1)
  {
    swift_once();
  }

  v203 = v42;
  v43 = type metadata accessor for Logger();
  sub_100003078(v43, qword_10033B120);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Init", v46, 2u);
  }

  v47 = v204;
  sub_10014330C();
  v48 = sub_1000D7228();

  v206 = v48;
  sub_100035D04(&qword_10033B308, &qword_100271EF0);
  sub_100035D04(&qword_10033B310, &qword_100271EF8);
  sub_10000E244(&qword_10033B318, &qword_10033B308, &qword_100271EF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();
  v197 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033B320, &qword_10033B2E0, &qword_100271E68, &protocol conformance descriptor for Publishers.Map<A, B>);
  v49 = v138;
  v50 = Publisher.eraseToAnyPublisher()();

  (*(v27 + 8))(v29, v49);
  v206 = v50;
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_100051388;
  *(v52 + 24) = v51;

  sub_100035D04(&qword_10033B328, &unk_100271F00);
  sub_10000E244(&qword_10033B330, &qword_10033B328, &unk_100271F00, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v138 = *(v47 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
  v206 = *(v138 + 32);
  v137 = sub_100035D04(&qword_100339828, &unk_100270300);
  v136 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v206 = Publisher.eraseToAnyPublisher()();
  v134[2] = sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_100035D04(&qword_10033B338, &qword_100271F18);
  v135 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v134[1] = sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
  v53 = v139;
  Publisher.map<A>(_:)();
  v54 = v197;
  sub_10000E244(&qword_10033B340, &qword_10033B2D0, &qword_100271E58, v197);
  v55 = v141;
  v56 = Publisher.eraseToAnyPublisher()();

  (*(v140 + 8))(v53, v55);
  v206 = v56;
  sub_100035D04(&qword_10033B348, &qword_100271F20);
  type metadata accessor for DeviceHistory(0);
  sub_10000E244(&qword_10033B350, &qword_10033B348, &qword_100271F20, &protocol conformance descriptor for AnyPublisher<A, B>);
  v57 = v142;
  Publisher.map<A>(_:)();

  swift_allocObject();
  v202 = v41;
  swift_weakInit();
  sub_10000E244(&qword_10033B358, &qword_10033B2D8, &qword_100271E60, v54);
  v58 = v144;
  Publisher<>.sink(receiveValue:)();

  (*(v143 + 8))(v57, v58);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v206 = *(v138 + 48);
  v206 = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v206 = sub_100140FF4();
  sub_100035D04(&qword_10033B360, &qword_100271F28);
  sub_100035D04(&qword_10033B368, &qword_100271F30);
  v59 = v135;
  sub_10000E244(&qword_10033B370, &qword_10033B360, &qword_100271F28, v135);
  v60 = v145;
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B378, &qword_100271F38);
  v61 = v197;
  sub_10000E244(&qword_10033B380, &qword_10033B2C8, &qword_100271E50, v197);
  v62 = v148;
  v63 = v147;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033B388, &qword_10033B2C0, &qword_100271E48, v61);
  v64 = v198;
  v65 = Publisher.eraseToAnyPublisher()();
  (*(v193 + 8))(v62, v64);
  (*(v146 + 8))(v60, v63);
  v206 = v65;
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1000513A0;
  *(v67 + 24) = v66;
  sub_100035D04(&qword_10033B390, &unk_100271F40);
  v68 = v59;
  sub_10000E244(&qword_10033B398, &qword_10033B390, &unk_100271F40, v59);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v206 = sub_100140E18();
  v198 = sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  v69 = type metadata accessor for HandoffSession(0);
  v70 = sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0, v59);
  v71 = v184;
  v193 = v69;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_10033B3A0, &qword_100271F50);
  sub_10000E244(&qword_10033B3A8, &qword_10034C660, &qword_100278DD0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v72 = v149;
  v73 = v194;
  Publisher.map<A>(_:)();
  v74 = v197;
  sub_10000E244(&qword_10033B3B0, &qword_10033B2B0, &unk_100271E30, v197);
  v75 = v192;
  v76 = Publisher.eraseToAnyPublisher()();
  (*(v150 + 8))(v72, v75);
  v192 = *(v199 + 8);
  v199 += 8;
  (v192)(v71, v73);
  v206 = v76;
  sub_100035D04(&qword_10033B3B8, &qword_100271F58);
  type metadata accessor for SessionHistory(0);
  sub_10000E244(&qword_10033B3C0, &qword_10033B3B8, &qword_100271F58, v68);
  v77 = v151;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033B3C8, &qword_10033B2B8, &qword_100271E40, v74);
  v78 = v191;
  Publisher<>.sink(receiveValue:)();

  (*(v152 + 8))(v77, v78);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v191 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher;
  v205 = *(v204 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  v206 = 0;
  v207 = 0;

  sub_100035D04(&qword_10033B3D0, &qword_100271F60);
  v79 = v153;
  v197 = v70;
  Publisher.scan<A>(_:_:)();
  sub_10000E244(&qword_10033B3D8, &qword_10033B298, &qword_100271E18, &protocol conformance descriptor for Publishers.Scan<A, B>);
  v80 = v155;
  v81 = Publisher.eraseToAnyPublisher()();

  (*(v154 + 8))(v79, v80);
  v206 = v81;
  sub_100035D04(&qword_10033B3E0, &qword_100271F68);
  sub_10000E244(&qword_10033B3E8, &qword_10033B3E0, &qword_100271F68, v68);
  Publisher.compactMap<A>(_:)();

  v82 = v161;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(integerLiteral:)();
  v83 = v162;
  v84 = v163;
  (*(v162 + 56))(v163, 1, 1, v190);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v85 = qword_10038B5B8;
  v206 = qword_10038B5B8;
  v86 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v87 = v164;
  (*(*(v86 - 8) + 56))(v164, 1, 1, v86);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v155 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10000E244(&qword_10033B3F0, &qword_10033B2A0, &qword_100271E20, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_1000513CC();
  v88 = v85;
  v89 = v158;
  v90 = v157;
  v91 = v189;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000097E8(v87, &qword_10034C680, &qword_100270390);

  sub_1000097E8(v84, &qword_10033B290, &qword_100271E10);
  (*(v83 + 8))(v82, v190);
  (*(v156 + 8))(v91, v90);
  swift_allocObject();
  v92 = v202;
  swift_weakInit();
  sub_10000E244(&qword_10033B3F8, &qword_10033B2A8, &qword_100271E28, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v93 = v160;
  Publisher<>.sink(receiveValue:)();

  (*(v159 + 8))(v89, v93);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v94 = *(sub_10001B4E0() + 48);

  v206 = *(v94 + 32);

  sub_100035D04(&qword_10033B400, &qword_100271F70);
  sub_10000E244(&qword_10033B408, &qword_10033B400, &qword_100271F70, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v95 = Publisher.eraseToAnyPublisher()();

  v206 = v95;
  sub_100035D04(&qword_10033B410, &qword_100271F78);
  sub_100035D04(&qword_10033B418, &qword_100271F80);
  sub_10000E244(&qword_10033B420, &qword_10033B410, &qword_100271F78, &protocol conformance descriptor for AnyPublisher<A, B>);
  v96 = v165;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033B428, &qword_10033B280, &qword_100271DF8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v97 = v167;
  v98 = Publisher.eraseToAnyPublisher()();

  (*(v166 + 8))(v96, v97);
  v206 = v98;
  sub_100035D04(&qword_10033B430, &qword_100271F88);
  type metadata accessor for TransferRecord(0);
  sub_10000E244(&qword_10033B438, &qword_10033B430, &qword_100271F88, &protocol conformance descriptor for AnyPublisher<A, B>);
  v99 = v168;
  Publisher.map<A>(_:)();

  v100 = swift_allocObject();
  *(v100 + 16) = sub_10005143C;
  *(v100 + 24) = v92;
  v164 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033B440, &qword_10033B288, &unk_100271E00, &protocol conformance descriptor for Publishers.Map<A, B>);
  swift_retain_n();
  v101 = v186;
  v102 = v185;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B448, &qword_10033B278, &qword_100271DF0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v103 = v188;
  v104 = Publisher.eraseToAnyPublisher()();

  v187[1](v101, v103);
  (*(v169 + 8))(v99, v102);
  v206 = v104;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033B450, &qword_100271F90);
  v163 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033B458, &qword_10033B450, &qword_100271F90, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v206 = *(v204 + v191);

  v105 = v184;
  Publisher.compactMap<A>(_:)();

  v186 = sub_100035D04(&qword_10033B460, &qword_100271F98);
  v106 = v170;
  v107 = v194;
  Publishers.CompactMap.map<A>(_:)();
  (v192)(v105, v107);
  v185 = sub_10000E244(&qword_10033B468, &qword_10033B268, &qword_100271DE0, v155);
  v190 = sub_10000E244(&qword_10033B470, &qword_10033B460, &qword_100271F98, &protocol conformance descriptor for AnyPublisher<A, B>);
  v108 = v171;
  v109 = v195;
  Publisher<>.switchToLatest()();
  v110 = *(v200 + 8);
  v200 += 8;
  v189 = v110;
  (v110)(v106, v109);
  swift_allocObject();
  swift_weakInit();
  v188 = sub_10000E244(&qword_10033B478, &qword_10033B270, &qword_100271DE8, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v111 = v196;
  Publisher<>.sink(receiveValue:)();

  v112 = *(v201 + 8);
  v201 += 8;
  v187 = v112;
  (v112)(v108, v111);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v113 = v191;
  v206 = *(v204 + v191);

  Publisher.compactMap<A>(_:)();

  Publishers.CompactMap.map<A>(_:)();
  v114 = v192;
  (v192)(v105, v107);
  v115 = v195;
  Publisher<>.switchToLatest()();
  (v189)(v106, v115);
  swift_allocObject();
  swift_weakInit();
  v116 = v196;
  Publisher<>.sink(receiveValue:)();

  (v187)(v108, v116);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v206 = *(v204 + v113);

  Publisher.compactMap<A>(_:)();

  v117 = v194;
  Publishers.CompactMap.map<A>(_:)();
  v114(v105, v117);
  v118 = v195;
  Publisher<>.switchToLatest()();
  (v189)(v106, v118);
  swift_allocObject();
  swift_weakInit();
  v119 = v196;
  Publisher<>.sink(receiveValue:)();

  (v187)(v108, v119);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v206 = *(v204 + v191);

  Publisher.compactMap<A>(_:)();

  Publishers.CompactMap.map<A>(_:)();
  (v192)(v105, v117);
  Publisher<>.switchToLatest()();
  (v189)(v106, v118);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  (v187)(v108, v119);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v206 = sub_1001410D0();
  sub_100035D04(&qword_10033B480, &qword_100271FA0);
  type metadata accessor for HandoffEvent(0);
  v120 = v163;
  sub_10000E244(&qword_10033B488, &qword_10033B480, &qword_100271FA0, v163);
  v121 = v172;
  Publisher.map<A>(_:)();

  v122 = v164;
  sub_10000E244(&qword_10033B490, &qword_10033B258, &qword_100271DD0, v164);
  v123 = v175;
  v124 = v174;
  Publisher.filter(_:)();
  (*(v173 + 8))(v121, v124);
  sub_100035D04(&qword_10033B498, &qword_100271FA8);
  sub_10000E244(&qword_10033B4A0, &qword_10033B260, &qword_100271DD8, &protocol conformance descriptor for Publishers.Filter<A>);
  v125 = v178;
  v126 = v177;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033B4A8, &qword_10033B250, &qword_100271DC8, v122);
  v127 = v180;
  v128 = Publisher.eraseToAnyPublisher()();
  (*(v179 + 8))(v125, v127);
  (*(v176 + 8))(v123, v126);
  v206 = v128;
  swift_allocObject();
  v129 = v202;
  swift_weakInit();
  sub_100035D04(&qword_10033B4B0, &qword_100271FB0);
  sub_10000E244(&qword_10033B4B8, &qword_10033B4B0, &qword_100271FB0, v120);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1001411AC();
  v130 = sub_1000DD040();

  v206 = v130;
  sub_100035D04(&qword_10033B4C0, &qword_100271FB8);
  sub_100035D04(&qword_10033B4C8, &unk_100271FC0);
  sub_10000E244(&qword_10033B4D0, &qword_10033B4C0, &qword_100271FB8, v120);
  v131 = v181;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();

  sub_10000E244(&qword_10033B4D8, &qword_10033B248, &qword_100271DC0, v122);
  v132 = v183;
  Publisher<>.sink(receiveValue:)();

  (*(v182 + 8))(v131, v132);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v129;
}

unint64_t sub_1000513CC()
{
  result = qword_10034B420;
  if (!qword_10034B420)
  {
    sub_100003118(255, &qword_100339320, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B420);
  }

  return result;
}

uint64_t sub_100051444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *a1;
  v5 = v7;
  v4(&v7);
  *a2 = v5;
}

uint64_t sub_1000515C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100051608(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

_OWORD *sub_1000516B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100051718(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(*(active - 8) + 40))(a2, a1, active);
  return a2;
}

uint64_t sub_10005177C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000517E4(uint64_t a1)
{
  sub_100051900(319, &qword_10033B680, &type metadata for DeviceEvent);
  if (v1 <= 0x3F)
  {
    sub_100051898(319);
    if (v2 <= 0x3F)
    {
      sub_100051900(319, &unk_10033B690, &type metadata for TransferState);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100051898(uint64_t a1)
{
  if (!qword_10033B688)
  {
    type metadata accessor for SessionEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10033B688);
    }
  }
}

void sub_100051900(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_100051974()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033B6C0);
  sub_100003078(v0, qword_10033B6C0);
  return Logger.init(subsystem:category:)();
}

void sub_100051A18(int a1, uint64_t a2, uint64_t a3)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (a1)
      {
        if (qword_100338E58 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100003078(v17, qword_10033B6C0);
        oslog = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(oslog, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 67109376;
          *(v19 + 4) = a1;
          *(v19 + 8) = 2048;
          *(v19 + 10) = a2;
          _os_log_impl(&_mh_execute_header, oslog, v18, "### Unknown XPC publisher action: %u, token=%llu", v19, 0x12u);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v6 = v3;
        if (qword_100338E58 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_100003078(v7, qword_10033B6C0);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 134217984;
          *(v10 + 4) = a2;
          _os_log_impl(&_mh_execute_header, v8, v9, "Handling ADD action: token=%llu", v10, 0xCu);
        }

        if (_CFXPCCreateCFObjectFromXPCObject())
        {
          sub_100035D04(&qword_10033B7D0, &unk_100272100);
          if (swift_dynamicCast())
          {
            v11 = v21;
          }

          else
          {
            v11 = 0;
          }

          type metadata accessor for XPCSubscriber(0);
          swift_allocObject();

          v12 = sub_10014F7C8(a2, v11, v6);

          sub_10005D280(v12);

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      return;
    }

    if (qword_100338E58 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003078(v13, qword_10033B6C0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v14, v15, "Handling REMOVE action: token=%llu", v16, 0xCu);
    }

    sub_10005D46C(a2);
  }

  swift_unknownObjectRelease();
}

void sub_100051DFC()
{
  if (qword_100338E58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033B6C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activate", v4, 2u);
  }

  *(v0 + 48) = 1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Already activated xpc event publisher", v6, 2u);
  }
}

void sub_100051F6C(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_100338E58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10033B6C0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218498;
    v41 = a1;
    v42 = v11;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2080;
    v12 = 1702195828;
    if ((a2 & 1) == 0)
    {
      v12 = 0x65736C6166;
    }

    v13 = 0xE500000000000000;
    if (a2)
    {
      v13 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v14 = 7104878;
    }

    else
    {
      v14 = v12;
    }

    if (a2 == 2)
    {
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = v13;
    }

    v16 = sub_100017494(v14, v15, &v42);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    if (a3)
    {
      v17 = Dictionary.description.getter();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = sub_100017494(v17, v19, &v42);

    *(v10 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Firing for %llu, keepAlive=%s, %s", v10, 0x20u);
    swift_arrayDestroy();

    a1 = v41;
  }

  else
  {
  }

  if (a2 == 2 || (sub_100052528(a2 & 1, a1, *(v3 + 56)), (a2 & 1) != 0))
  {
    sub_1000526F0(a3);
    v21 = xpc_event_publisher_fire();

    v22 = Logger.logObject.getter();
    if (v21)
    {
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v42 = v25;
        *v24 = 134218498;
        *(v24 + 4) = a1;
        *(v24 + 12) = 1024;
        *(v24 + 14) = v21;
        *(v24 + 18) = 2080;
        if (a3)
        {
          v26 = Dictionary.description.getter();
          v28 = v27;
        }

        else
        {
          v26 = 7104878;
          v28 = 0xE300000000000000;
        }

        v34 = sub_100017494(v26, v28, &v42);

        *(v24 + 20) = v34;
        v35 = "### Fire failed: token=%llu, err=%d, payload=%s";
        v36 = v23;
        v37 = v22;
        v38 = v24;
        v39 = 28;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v37, v36, v35, v38, v39);
        sub_10000903C(v25);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v29))
      {
        v30 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v42 = v25;
        *v30 = 134218242;
        *(v30 + 4) = a1;
        *(v30 + 12) = 2080;
        if (a3)
        {
          v31 = Dictionary.description.getter();
          v33 = v32;
        }

        else
        {
          v31 = 7104878;
          v33 = 0xE300000000000000;
        }

        v40 = sub_100017494(v31, v33, &v42);

        *(v30 + 14) = v40;
        v35 = "Fired: token=%llu payload=%s";
        v36 = v29;
        v37 = v22;
        v38 = v30;
        v39 = 22;
        goto LABEL_35;
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100052418()
{

  sub_1000268AC(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100052484()
{
  if (xpc_strerror())
  {
    return String.init(cString:)();
  }

  _StringGuts.grow(_:)(21);

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return 0xD000000000000013;
}

void sub_100052528(char a1, uint64_t a2, uint64_t a3)
{
  if (xpc_event_publisher_set_subscriber_keepalive())
  {
    if (qword_100338E58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_10033B6C0);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = a2;
      *(v7 + 12) = 1024;
      *(v7 + 14) = a1 & 1;
      v8 = "### XPC publisher state change failed: token=%llu, keepAlive=%{BOOL}d";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v6, v8, v7, 0x12u);
    }
  }

  else
  {
    if (qword_100338E58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_10033B6C0);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = a2;
      *(v7 + 12) = 1024;
      *(v7 + 14) = a1 & 1;
      v8 = "XPC publisher state changed: token=%llu, keepAlive=%{BOOL}d";
      goto LABEL_10;
    }
  }
}

uint64_t sub_1000526F0(uint64_t result)
{
  if (result)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v2 = _CFXPCCreateXPCObjectFromCFObject();

    result = v2;
    if (!v2)
    {
      if (qword_100338E58 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_10033B6C0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "### Failed to convert payload to xpc_object_t", v6, 2u);
      }

      return 0;
    }
  }

  return result;
}

void sub_10005280C(int a1)
{
  if (qword_100338E58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B6C0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 67109378;
    *(v4 + 4) = a1;
    *(v4 + 8) = 2080;
    v6 = sub_100052484();
    v8 = sub_100017494(v6, v7, &v10);

    *(v4 + 10) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "### Lockscreen XPC publisher error: (%d) %s", v4, 0x12u);
    sub_10000903C(v5);
  }
}

uint64_t sub_100052978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000529D8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = [a1 UUID];
LABEL_5:
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 0;
    goto LABEL_6;
  }

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 activeConversationForCall:a1];

  if (v7)
  {
    v4 = [v7 UUID];

    goto LABEL_5;
  }

  v8 = 1;
LABEL_6:
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, v8, 1, v9);
}

uint64_t sub_100052AF8(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 1819042147;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v10, "conversation(");
  HIWORD(v10[1]) = -4864;
  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v10[0];
}

uint64_t sub_100052BE4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033B7D8);
  sub_100003078(v0, qword_10033B7D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100052C64()
{

  return swift_deallocClassInstance();
}

id sub_100052CD0()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(NSUserDefaults);
    v4 = String._bridgeToObjectiveC()();
    v2 = [v3 initWithSuiteName:v4];

    v5 = *(v0 + 24);
    *(v0 + 24) = v2;
    v6 = v2;
    sub_10001DAC4(v5);
  }

  sub_100056F7C(v1);
  return v2;
}

void *sub_100052D88(uint64_t a1)
{
  v2 = v1;
  v1[3] = 1;
  v1[4] = [objc_allocWithZone(NPSManager) init];
  sub_100035D04(&qword_10033BA50, &qword_1002722D0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = _swiftEmptyDictionarySingleton;
  v1[5] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = _swiftEmptyDictionarySingleton;
  v1[6] = v5;
  v1[7] = &_swiftEmptySetSingleton;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033B7D8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  v2[2] = a1;
  return v2;
}

uint64_t sub_100052EF0()
{
  v1 = v0;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B7D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10001DAC4(*(v1 + 24));

  return v1;
}

uint64_t sub_100053000()
{
  sub_100052EF0();

  return swift_deallocClassInstance();
}

void sub_100053058()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033BA58, &qword_1002722D8);
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v64 = v54 - v3;
  v4 = sub_100035D04(&qword_10033BA60, &qword_1002722E0);
  __chkstk_darwin(v4);
  v63 = v54 - v5;
  v6 = sub_100035D04(&qword_10033BA68, &qword_1002722E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v54 - v8;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10033B7D8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v69 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v69);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000903C(v14);
  }

  v15 = sub_100052CD0();
  if (v15)
  {
    v16 = v15;
    v67 = 0x8000000100298A20;
    v17 = sub_1000568DC(v15, 0xD000000000000018, 0x8000000100298A20);
    if (v17)
    {
      v18 = v1[5];
      *(v18 + 24) = v17;

      sub_10005E7E8();
      v69 = *(v18 + 24);

      CurrentValueSubject.send(_:)();
    }

    v54[4] = v4;
    v55 = v9;
    v56 = v7;
    v57 = v6;
    v65 = v16;
    v68 = 0x8000000100298A40;
    v19 = sub_1000568DC(v16, 0xD000000000000014, 0x8000000100298A40);
    if (v19)
    {
      v20 = v1[6];
      *(v20 + 24) = v19;

      sub_10005E7E8();
      v69 = *(v20 + 24);

      CurrentValueSubject.send(_:)();
    }

    v66 = v1[2];

    v69 = sub_10005E744();
    v21 = sub_100035D04(&qword_10033BA70, &qword_1002722F0);
    v59 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
    v22 = sub_10000E244(&qword_10033BA78, &qword_10033BA70, &qword_1002722F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v23 = Publisher.eraseToAnyPublisher()();

    KeyPath = swift_getKeyPath();
    v69 = v23;
    v25 = swift_allocObject();
    v58 = 0xD000000000000018;
    v26 = v67;
    v25[2] = 0xD000000000000018;
    v25[3] = v26;
    v25[4] = v1;
    v25[5] = KeyPath;

    v27 = sub_100035D04(&qword_10033BA80, &qword_100272320);
    v60 = &protocol conformance descriptor for AnyPublisher<A, B>;
    v28 = sub_10000E244(&qword_10033BA88, &qword_10033BA80, &qword_100272320, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v69 = sub_10005E744();
    v54[3] = v21;
    v54[2] = v22;
    v29 = Publisher.eraseToAnyPublisher()();

    v30 = swift_getKeyPath();
    v69 = v29;
    v31 = swift_allocObject();
    v31[2] = 0xD000000000000014;
    v31[3] = v68;
    v31[4] = v1;
    v31[5] = v30;

    v54[1] = v27;
    v54[0] = v28;
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v69 = sub_10005E7E8();
    sub_100035D04(&qword_10033BA90, &unk_100272350);
    sub_10000E244(&qword_10033BA98, &qword_10033BA90, &unk_100272350, v59);
    v32 = Publisher.eraseToAnyPublisher()();

    v33 = v65;
    sub_100054BCC(v32, v65, 0xD000000000000029, 0x8000000100298A60, v58, v67);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v69 = sub_10005E7E8();
    v34 = Publisher.eraseToAnyPublisher()();

    v35 = v66;
    sub_100054BCC(v34, v33, 0xD000000000000029, 0x8000000100298A60, 0xD000000000000014, v68);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v69 = *(*(v35 + 32) + 32);
    sub_100035D04(&qword_100339828, &unk_100270300);
    sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v69 = Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_100339838, &qword_100271F10);
    sub_100035D04(&qword_10033BAA0, &unk_100274880);
    sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, v60);
    v36 = v64;
    Publisher.map<A>(_:)();

    sub_100035D04(&qword_10033BAA8, &qword_100272360);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10026F050;
    v38 = *(v35 + 32);
    __chkstk_darwin(v37);
    v54[-4] = type metadata accessor for HandoffDevice(0);
    v54[-3] = type metadata accessor for UUID();
    v53 = sub_100056C7C(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getKeyPath();
    v39 = v38 + qword_100346AF8;

    os_unfair_lock_lock(v39);
    v69 = *(v39 + 8);

    swift_getAtKeyPath();

    v40 = v70;
    os_unfair_lock_unlock(v39);

    v41 = *(v40 + 16);
    if (!v41)
    {

      v42 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    v42 = sub_100009194(*(v40 + 16), 0);
    v43 = sub_100009A04(&v69, v42 + 4, v41, v40);
    sub_100004F98(v69);
    if (v43 == v41)
    {

LABEL_19:
      *(v37 + 32) = v42;
      sub_10000E244(&qword_10033BAB0, &qword_10033BA58, &qword_1002722D8, &protocol conformance descriptor for Publishers.Map<A, B>);
      v47 = v62;
      Publisher.prepend(_:)();

      (*(v61 + 8))(v36, v47);

      v69 = sub_10005E744();
      v48 = Publisher.eraseToAnyPublisher()();

      v69 = v48;

      v70 = sub_10005E744();
      v49 = Publisher.eraseToAnyPublisher()();

      v70 = v49;
      sub_10000E244(&qword_10033BAB8, &qword_10033BA60, &qword_1002722E0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
      v53 = v54[0];
      v50 = v55;
      Publishers.CombineLatest3.init(_:_:_:)();
      v51 = swift_allocObject();
      *(v51 + 16) = sub_100056C40;
      *(v51 + 24) = v1;
      sub_10000E244(&qword_10033BAC0, &qword_10033BA68, &qword_1002722E8, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);

      v52 = v57;
      Publisher<>.sink(receiveValue:)();

      (*(v56 + 8))(v50, v52);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return;
    }

    __break(1u);
  }

  else
  {
    v68 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v68, v44, "### No defaults?", v45, 2u);
    }

    v46 = v68;
  }
}

double sub_100053E1C(uint64_t *a1, uint64_t a2)
{
  *(*(*a2 + 40) + 24) = *a1;

  sub_10005E7E8();

  CurrentValueSubject.send(_:)();

  return result;
}

double sub_100053EAC(uint64_t *a1, uint64_t a2)
{
  *(*(*a2 + 48) + 24) = *a1;

  sub_10005E7E8();

  CurrentValueSubject.send(_:)();

  return result;
}

uint64_t sub_100053F3C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  type metadata accessor for HandoffDevice(0);
  type metadata accessor for UUID();
  sub_100056C7C(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v4 = v3 + qword_100346AF8;
  os_unfair_lock_lock(v4);
  v9 = *(v4 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v4);

  v5 = *(v10 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_100009194(*(v10 + 16), 0);
  v7 = sub_100009A04(&v9, v6 + 4, v5, v10);
  result = sub_100004F98(v9);
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v6;
  return result;
}

double sub_100054088(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    sub_1000556F8(0xD000000000000018, 0x8000000100298A20, KeyPath, a1, a2, a4);
  }

  if (a3)
  {
    v10 = swift_getKeyPath();
    sub_100056068(0xD000000000000014, 0x8000000100298A40, v10, a1, a3, a4);
  }

  return result;
}

void sub_100054184(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = *(v25 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);

  if (v2)
  {
    v22 = v2 >> 62;
    if (v2 >> 62)
    {
LABEL_63:
      v24 = v2 & 0xFFFFFFFFFFFFFF8;
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = v2 & 0xFFFFFFFFFFFFFF8;
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v23 = v2 + 32;
    while (v3 != v4)
    {
      if (v5)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v24 + 16))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 type];

      if (v8 == 4)
      {
        v3 = v4;
        break;
      }

      if (__OFADD__(v4++, 1))
      {
        goto LABEL_58;
      }
    }

    if (v22)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v3 == v10)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v10 = *(v24 + 16);
      if (v3 == v10)
      {
        goto LABEL_42;
      }
    }

    while (2)
    {
      if (v5)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v3 >= *(v24 + 16))
        {
          goto LABEL_60;
        }

        v12 = *(v23 + 8 * v3);
      }

      v13 = v12;
      v14 = [v12 identifier];

      if (!v14)
      {
        if (!v22)
        {
          v15 = *(v24 + 16);
          if (v3 != v15)
          {
            goto LABEL_34;
          }

          goto LABEL_62;
        }

        if (v3 == _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_61;
        }

        v15 = _CocoaArrayWrapper.endIndex.getter();
        while (1)
        {
LABEL_34:
          v11 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          if (v11 == v15)
          {
            break;
          }

          if (v5)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            if (v11 >= *(v24 + 16))
            {
              goto LABEL_56;
            }

            v16 = *(v23 + 8 * v11);
          }

          v17 = v16;
          v18 = [v16 type];

          ++v3;
          if (v18 == 4)
          {
            goto LABEL_21;
          }
        }

        v11 = v15;
LABEL_21:
        v3 = v11;
        if (v11 != v10)
        {
          continue;
        }

        v3 = v10;
        if (!v22)
        {
LABEL_43:
          if (v3 != *(v24 + 16))
          {
            goto LABEL_44;
          }

LABEL_52:

          return;
        }

LABEL_51:
        if (v3 != _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_44:
          if (!v5)
          {
            if ((v3 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v3 < *(v24 + 16))
            {
              v19 = *(v23 + 8 * v3);
              goto LABEL_48;
            }

            __break(1u);
LABEL_67:

            __break(1u);
            return;
          }

          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:
          v3 = v19;
          v20 = [v19 identifier];
          if (v20)
          {
            v21 = v20;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            return;
          }

          goto LABEL_67;
        }

        goto LABEL_52;
      }

      break;
    }

LABEL_42:
    if (!v22)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }
}

uint64_t sub_100054538()
{
  v1 = v0;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B7D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  swift_beginAccess();
  *(v1 + 56) = &_swiftEmptySetSingleton;
}

double sub_1000546A8(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int64_t a5)
{
  v5 = *a1;
  if (*a1)
  {
    if (qword_100338E60 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v9 = type metadata accessor for Logger();
      sub_100003078(v9, qword_10033B7D8);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v48[0] = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = sub_100017494(a2, a3, v48);
        *(v12 + 12) = 2080;
        v13 = Set.description.getter();
        v15 = sub_100017494(v13, v14, v48);

        *(v12 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v10, v11, "Pruning %s with validKeySet: %s", v12, 0x16u);
        swift_arrayDestroy();
      }

      v49 = a4;

      v16 = swift_readAtKeyPath();
      v18 = *v17;

      v16(v48, 0);
      v43 = a4;

      a3 = v18 + 64;
      v19 = 1 << *(v18 + 32);
      v20 = v19 < 64 ? ~(-1 << v19) : -1;
      a2 = v20 & *(v18 + 64);
      v21 = (v19 + 63) >> 6;
      v47 = v5 + 56;
      swift_bridgeObjectRetain_n();
      v22 = 0;
      v46 = v18;
      v44 = v5;
      v45 = v18;
      if (a2)
      {
        break;
      }

LABEL_12:
      while (1)
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v25 >= v21)
        {

          v48[0] = v43;
          v49 = v46;

          swift_setAtReferenceWritableKeyPath();

          return result;
        }

        a2 = *(a3 + 8 * v25);
        ++v22;
        if (a2)
        {
          v22 = v25;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    while (1)
    {
LABEL_16:
      v26 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v27 = (*(v18 + 48) + ((v22 << 10) | (16 * v26)));
      v28 = *v27;
      v29 = v27[1];
      if (*(v5 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v30 = Hasher._finalize()();
        v31 = -1 << *(v5 + 32);
        v32 = v30 & ~v31;
        if ((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          a4 = ~v31;
          do
          {
            v33 = (*(v5 + 48) + 16 * v32);
            v34 = *v33 == v28 && v33[1] == v29;
            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_11;
            }

            v32 = (v32 + 1) & a4;
          }

          while (((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
        }
      }

      else
      {
      }

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        a4 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v48[0] = v37;
        *a4 = 136315138;
        *(a4 + 4) = sub_100017494(v28, v29, v48);
        _os_log_impl(&_mh_execute_header, v35, v36, "Removing key: %s", a4, 0xCu);
        sub_10000903C(v37);
        v5 = v44;
      }

      v23 = sub_100004B58(v28, v29);
      v18 = v45;
      if (v24)
      {
        v38 = v23;
        v39 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48[0] = v46;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100089EBC();
          v39 = v48[0];
        }

        v41 = v38;

        a4 = *(*(v39 + 56) + 16 * v38 + 8);
        v46 = v39;
        sub_10004BF8C(v41, v39);

        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
LABEL_11:

        if (!a2)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100054BCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v81 = a3;
  v83 = a4;
  v84 = a6;
  v86 = a5;
  v82 = a2;
  v7 = sub_100035D04(&qword_10033BAC8, &qword_100272440);
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v77 = &v64 - v8;
  v9 = type metadata accessor for Logger();
  v76 = *(v9 - 8);
  __chkstk_darwin(v9);
  v90 = v10;
  v91 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100035D04(&qword_10033BAD0, &unk_100272448);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v64 - v11;
  v12 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - v13;
  v15 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100035D04(&qword_10033BAD8, &qword_100272458);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v85 = &v64 - v19;
  v20 = sub_100035D04(&qword_10033BAE0, &qword_100272460);
  v74 = *(v20 - 8);
  v75 = v20;
  __chkstk_darwin(v20);
  v89 = &v64 - v21;
  v94 = a1;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v22 = qword_10038B5B8;
  v92 = qword_10038B5B8;
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = v22;
  v25 = sub_100035D04(&qword_10033BAE8, &qword_100272468);
  sub_100035CB8();
  v26 = sub_10000E244(&qword_10033BAF0, &qword_10033BAE8, &qword_100272468, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100056C7C(&qword_10034B420, 255, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
  v87 = v26;
  v88 = v25;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100056CC4(v14);

  (*(v16 + 8))(v18, v15);
  v92 = 544695630;
  v93 = 0xE400000000000000;
  v27._countAndFlagsBits = v86;
  v27._object = v84;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 8250;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29 = v93;
  v66 = v92;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v30 = sub_100003078(v9, qword_10033B7D8);
  v68 = v30;
  v31 = static os_log_type_t.info.getter();
  v32 = v76;
  v67 = *(v76 + 16);
  v33 = v91;
  v64 = v9;
  v67(v91, v30, v9);
  v34 = *(v32 + 80);
  v35 = (v34 + 64) & ~v34;
  v36 = v35 + v90;
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v66;
  v37[5] = v29;
  v37[6] = 0;
  v37[7] = 0xE000000000000000;
  v76 = *(v32 + 32);
  (v76)(v37 + v35, v33, v9);
  *(v37 + v36) = v31;
  v66 = sub_100035D04(&qword_10033BAF8, &unk_100272470);
  sub_10000E244(&qword_10033BB00, &qword_10033BAD8, &qword_100272458, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v38 = v71;
  v39 = v70;
  v40 = v85;
  Publisher.map<A>(_:)();

  v65 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033BB08, &qword_10033BAD0, &unk_100272448, &protocol conformance descriptor for Publishers.Map<A, B>);
  v41 = v73;
  v42 = Publisher.eraseToAnyPublisher()();
  (*(v72 + 8))(v38, v41);
  (*(v69 + 8))(v40, v39);
  v92 = v42;
  sub_100056DE8();
  Publisher<>.removeDuplicates()();

  LOBYTE(v42) = static os_log_type_t.info.getter();
  v43 = v91;
  v44 = v64;
  v67(v91, v68, v64);
  v45 = (v34 + 16) & ~v34;
  v46 = v45 + v90;
  v47 = (v45 + v90) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (v76)(v48 + v45, v43, v44);
  *(v48 + v46) = v42;
  v49 = v48 + v47;
  *(v49 + 8) = 0xD000000000000010;
  *(v49 + 16) = 0x8000000100298A90;
  sub_10000E244(&qword_10033BB18, &qword_10033BAE0, &qword_100272460, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v50 = v77;
  v51 = v75;
  v52 = v89;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033BB20, &qword_10033BAC8, &qword_100272440, v65);
  v53 = v79;
  v54 = Publisher.eraseToAnyPublisher()();
  (*(v78 + 8))(v50, v53);
  (*(v74 + 8))(v52, v51);
  v92 = v54;
  v55 = *(v80 + 32);
  v56 = swift_allocObject();
  v58 = v82;
  v57 = v83;
  v59 = v86;
  v56[2] = v82;
  v56[3] = v59;
  v56[4] = v84;
  v56[5] = v55;
  v56[6] = v81;
  v56[7] = v57;
  v60 = v55;
  v61 = v58;

  v62 = Publisher<>.sink(receiveValue:)();

  return v62;
}

void sub_10005559C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  [a2 setValue:isa forKey:v10];

  v11 = String._bridgeToObjectiveC()();
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  sub_1001CB970(inited);
  swift_setDeallocating();
  sub_100056F28(inited + 32);
  v13 = Set._bridgeToObjectiveC()().super.isa;

  [a5 synchronizeUserDefaultsDomain:v11 keys:v13];
}

double sub_1000556F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v70 = a1;
  v75 = type metadata accessor for UUID();
  v11 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a6;

  v71 = a3;
  v13 = swift_readAtKeyPath();
  v15 = *v14;
  swift_bridgeObjectRetain_n();
  v13(v86, 0);
  v72 = a6;

  v16 = v15[2];

  if (v16 < 0x1F5)
  {
    v22 = v15;
  }

  else
  {

    if (qword_100338E60 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003078(v18, qword_10033B7D8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2048;
      *(v21 + 14) = 500;
      _os_log_impl(&_mh_execute_header, v19, v20, "### Cache has grown above size limit %ld/%ld: resetting", v21, 0x16u);
    }

    v22 = sub_10024D608(_swiftEmptyArrayStorage);
  }

  if (a4 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v69 = a2;
    a2 = 0;
    v84 = a4 & 0xC000000000000001;
    v78 = a4 + 32;
    v79 = a4 & 0xFFFFFFFFFFFFFF8;
    v73 = (v11 + 8);
    v80 = a5 + 56;
    *&v17 = 136315906;
    v68 = v17;
    v76 = a4;
    v77 = a5;
    v81 = i;
    while (v84)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v24 = __OFADD__(a2++, 1);
      if (v24)
      {
        goto LABEL_60;
      }

LABEL_19:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v83 = sub_10000DF0C(v25, v26);
      v28 = v27;

      v85 = v28;
      if (v28)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v29 = v86[0];
        v30 = *(v86[0] + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
        if (v30)
        {
          v31 = 4 * ([v30 relationship] & 1);
        }

        else
        {
          LOBYTE(v31) = 0;
        }

        v32 = *&v29[OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities];
        if (!v32)
        {
          goto LABEL_37;
        }

        if (v32 >> 62)
        {
          v33 = _CocoaArrayWrapper.endIndex.getter();
          if (!v33)
          {
            goto LABEL_37;
          }

LABEL_26:
          if (v33 < 1)
          {
            goto LABEL_62;
          }

          v82 = v22;

          v34 = 0;
          do
          {
            if ((v32 & 0xC000000000000001) != 0)
            {
              v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v35 = *(v32 + 8 * v34 + 32);
            }

            v36 = v35;
            ++v34;
            v37 = [v35 type];

            if (v37 == 9)
            {
              LOBYTE(v31) = v31 | 2;
            }
          }

          while (v33 != v34);

          a4 = v76;
          a5 = v77;
          v22 = v82;
          if ((v31 & 2) != 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33)
          {
            goto LABEL_26;
          }

LABEL_37:

          if ((v31 & 2) != 0)
          {
LABEL_38:
            if ((v31 & 4) == 0)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v38 = v86[0];
              if (!v86[0])
              {

                i = v81;
                goto LABEL_12;
              }

              v82 = v22;
              v39 = [v86[0] uniqueIdentifier];

              v40 = v74;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v41 = UUID.uuidString.getter();
              v43 = v42;
              (*v73)(v40, v75);
              if (!*(a5 + 16))
              {

                i = v81;
                v22 = v82;
                goto LABEL_12;
              }

              Hasher.init(_seed:)();
              String.hash(into:)();
              v44 = Hasher._finalize()();
              v45 = -1 << *(a5 + 32);
              v46 = v44 & ~v45;
              if ((*(v80 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
              {
                v47 = ~v45;
                while (1)
                {
                  v48 = (*(a5 + 48) + 16 * v46);
                  v49 = *v48 == v41 && v48[1] == v43;
                  if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v46 = (v46 + 1) & v47;
                  if (((*(v80 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                if (qword_100338E60 != -1)
                {
                  swift_once();
                }

                v50 = type metadata accessor for Logger();
                sub_100003078(v50, qword_10033B7D8);
                v51 = v69;

                v52 = v85;

                v53 = Logger.logObject.getter();
                v54 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v53, v54))
                {
                  v55 = swift_slowAlloc();
                  HIDWORD(v66) = v54;
                  v56 = v55;
                  v67 = swift_slowAlloc();
                  v86[0] = v67;
                  *v56 = v68;
                  v57 = sub_100017494(v70, v51, v86);
                  *(v56 + 4) = v57;
                  *(v56 + 12) = 2080;
                  v59 = sub_1000092A0(v57, v58);
                  v61 = sub_100017494(v59, v60, v86);

                  *(v56 + 14) = v61;
                  *(v56 + 22) = 2080;
                  *(v56 + 24) = sub_100017494(v41, v43, v86);
                  *(v56 + 32) = 2080;
                  v62 = v83;
                  *(v56 + 34) = sub_100017494(v83, v85, v86);
                  _os_log_impl(&_mh_execute_header, v53, BYTE4(v66), "Assigning to %s for %s: ID=%s, MR=%s", v56, 0x2Au);
                  swift_arrayDestroy();

                  v52 = v85;
                }

                else
                {

                  v62 = v83;
                }

                v63 = v82;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v86[0] = v63;
                sub_10004CE88(v62, v52, v41, v43, isUniquelyReferenced_nonNull_native);

                v22 = v86[0];
              }

              else
              {
LABEL_49:

                v22 = v82;
              }

              goto LABEL_51;
            }
          }
        }

LABEL_51:
        i = v81;
        goto LABEL_12;
      }

LABEL_12:
      if (a2 == i)
      {
        goto LABEL_64;
      }
    }

    if (a2 >= *(v79 + 16))
    {
      goto LABEL_61;
    }

    v11 = *(v78 + 8 * a2);

    v24 = __OFADD__(a2++, 1);
    if (!v24)
    {
      goto LABEL_19;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

LABEL_64:
  v86[0] = v72;
  v87 = v22;

  swift_setAtReferenceWritableKeyPath();

  return result;
}

double sub_100056068(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;

  v11 = swift_readAtKeyPath();
  v13 = *v12;
  swift_bridgeObjectRetain_n();
  v11(v70, 0);
  v59 = a6;

  v14 = v13[2];

  if (v14 >= 0x1F5)
  {

    if (qword_100338E60 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10033B7D8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v14;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 500;
      _os_log_impl(&_mh_execute_header, v16, v17, "### Cache has grown above size limit %ld/%ld: resetting", v18, 0x16u);
    }

    v13 = sub_10024D608(_swiftEmptyArrayStorage);
  }

  if (a4 >> 62)
  {
    goto LABEL_64;
  }

  v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v60 = v13;
  v63 = v19;
  if (v19)
  {
    v57 = a1;
    v58 = a2;
    v20 = 0;
    v68 = a4 & 0xC000000000000001;
    v64 = a4 + 32;
    v65 = a4 & 0xFFFFFFFFFFFFFF8;
    v66 = a5 + 56;
    a2 = &unk_1002723B0;
    v61 = a4;
    v62 = a5;
    a1 = v19;
    while (1)
    {
      if (v68)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = __OFADD__(v20++, 1);
        if (v22)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v20 >= *(v65 + 16))
        {
          goto LABEL_62;
        }

        v21 = *(v64 + 8 * v20);

        v22 = __OFADD__(v20++, 1);
        if (v22)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v19 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_9;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v13 = sub_10000DF0C(v23, v24);
      v26 = v25;

      if (v26)
      {
        break;
      }

LABEL_12:
      if (v20 == a1)
      {
        goto LABEL_60;
      }
    }

    v69 = v26;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v27 = v70[0];
    v28 = *(v70[0] + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    if (v28)
    {
      v29 = 4 * ([v28 relationship] & 1);
    }

    else
    {
      LOBYTE(v29) = 0;
    }

    v30 = *(v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
    v67 = v13;
    if (!v30)
    {

LABEL_40:
      if ((v29 & 2) == 0 || (v29 & 4) != 0)
      {
      }

      else
      {
        sub_100054184(v21, v34);
        if (v36)
        {
          v37 = v36;
          if (*(a5 + 16) && (v38 = v35, Hasher.init(_seed:)(), String.hash(into:)(), v39 = Hasher._finalize()(), v40 = -1 << *(a5 + 32), v41 = v39 & ~v40, ((*(v66 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
          {
            v42 = ~v40;
            while (1)
            {
              v43 = (*(a5 + 48) + 16 * v41);
              v44 = *v43 == v38 && v37 == v43[1];
              if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v41 = (v41 + 1) & v42;
              if (((*(v66 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            if (qword_100338E60 != -1)
            {
              swift_once();
            }

            v45 = type metadata accessor for Logger();
            sub_100003078(v45, qword_10033B7D8);

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v70[0] = v56;
              *v48 = 136315906;
              v49 = sub_100017494(v57, v58, v70);
              *(v48 + 4) = v49;
              *(v48 + 12) = 2080;
              v51 = sub_1000092A0(v49, v50);
              v53 = sub_100017494(v51, v52, v70);

              *(v48 + 14) = v53;
              a4 = v61;
              *(v48 + 22) = 2080;
              *(v48 + 24) = sub_100017494(v38, v37, v70);
              *(v48 + 32) = 2080;
              v13 = v67;
              *(v48 + 34) = sub_100017494(v67, v69, v70);
              _os_log_impl(&_mh_execute_header, v46, v47, "Assigning to %s for %s: ID=%s, MR=%s", v48, 0x2Au);
              swift_arrayDestroy();

              a1 = v63;
            }

            else
            {

              v13 = v67;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v70[0] = v60;
            sub_10004CE88(v13, v69, v38, v37, isUniquelyReferenced_nonNull_native);

            v60 = v70[0];
            a2 = &unk_1002723B0;
            a5 = v62;
          }

          else
          {
LABEL_52:

            a2 = &unk_1002723B0;
          }
        }

        else
        {

          a2 = &unk_1002723B0;
        }
      }

      goto LABEL_12;
    }

    if (v30 >> 62)
    {
      a2 = _CocoaArrayWrapper.endIndex.getter();
      if (a2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      a2 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2)
      {
LABEL_27:
        if (a2 < 1)
        {
          goto LABEL_63;
        }

        v31 = 0;
        do
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v32 = *(v30 + 8 * v31 + 32);
          }

          v33 = v32;
          ++v31;
          v13 = [v32 type];

          if (v13 == 9)
          {
            LOBYTE(v29) = v29 | 2;
          }
        }

        while (a2 != v31);

        a4 = v61;
        a5 = v62;
        a1 = v63;
        goto LABEL_39;
      }
    }

LABEL_39:
    a2 = &unk_1002723B0;
    goto LABEL_40;
  }

LABEL_60:
  v70[0] = v59;
  v71 = v60;

  swift_setAtReferenceWritableKeyPath();

  return result;
}

uint64_t sub_100056830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_100056884(uint64_t a1, uint64_t a2)
{
  result = sub_100056C7C(&qword_10033BA48, a2, type metadata accessor for NanoPreferencesSyncServer, &unk_10027228C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000568DC(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10001766C(v21, v20);
    sub_100035D04(&qword_10033BAF8, &unk_100272470);
    if (swift_dynamicCast())
    {
      sub_10000903C(v21);
      return v19;
    }

    if (qword_100338E60 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_10033B7D8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100017494(a2, a3, v20);
      _os_log_impl(&_mh_execute_header, v15, v16, "### %s: Could not cast to dict", v17, 0xCu);
      sub_10000903C(v18);
    }

    sub_10000903C(v21);
  }

  else
  {
    if (qword_100338E60 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_10033B7D8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100017494(a2, a3, v21);
      _os_log_impl(&_mh_execute_header, v10, v11, "### %s: No existing value", v12, 0xCu);
      sub_10000903C(v13);
    }
  }

  return 0;
}

uint64_t sub_100056BF0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100056C7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100056CC4(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10034C680, &qword_100270390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056D2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CC720(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

unint64_t sub_100056DE8()
{
  result = qword_10033BB10;
  if (!qword_10033BB10)
  {
    sub_100035D4C(&qword_10033BAF8, &unk_100272470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BB10);
  }

  return result;
}

uint64_t sub_100056E64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  *a2 = sub_1000AB340(*a1, v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

id sub_100056F7C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100056F90()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033BB28);
  sub_100003078(v0, qword_10033BB28);
  return Logger.init(subsystem:category:)();
}

void sub_100057010()
{
  if (qword_100338E68 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033BB28);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100017494(0xD000000000000014, 0x8000000100298B50, &v9);
    *(v2 + 12) = 2080;

    CurrentValueSubject.value.getter();
    if (!v8)
    {
      CurrentValueSubject.value.getter();
    }

    type metadata accessor for UUID();
    sub_1000575F8(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v3 = Set.description.getter();
    v5 = v4;

    v6 = sub_100017494(v3, v5, &v9);

    *(v2 + 14) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s: %s", v2, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100057298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

void sub_1000572EC(uint64_t a1, char a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  if (a2)
  {
    (*(v8 + 16))(v11, a1, v7);

    CurrentValueSubject.value.getter();
    v14 = v17;
    if (v17)
    {
    }

    else
    {
      CurrentValueSubject.value.getter();

      v14 = v18;
    }

    v18 = v14;
    sub_100063F34(v13, v11);
    (*(v8 + 8))(v13, v7);
  }

  else
  {

    CurrentValueSubject.value.getter();
    v15 = v17;
    if (v17)
    {
    }

    else
    {
      CurrentValueSubject.value.getter();

      v15 = v18;
    }

    v18 = v15;
    sub_100067BF4(a1, v6);
    sub_100057640(v6);
  }

  v16 = v18;

  sub_1001C0474(v16);

  sub_100057010();
}

uint64_t sub_100057544()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000575A0(uint64_t a1, uint64_t a2)
{
  result = sub_1000575F8(&qword_10033BCB8, a2, type metadata accessor for HandoffSuppressionManagerState, &unk_1002724FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000575F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057640(uint64_t a1)
{
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000576B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000576D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 368) = v3;
  return result;
}

uint64_t sub_100057770()
{

  sub_100010708(*(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC17proximitycontrold15GuestHostDevice_timestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuestHostDevice(uint64_t a1)
{
  result = qword_10033BCE8;
  if (!qword_10033BCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057880(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t sub_100057930@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_100057940(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100058040(v5, type metadata accessor for GuestHostDevice, &qword_10033BD98, &unk_1002726D0, sub_1000588F8);
  sub_10000903C(v5);
  return v3;
}

unint64_t sub_1000579DC(uint64_t a1)
{
  result = sub_100057A04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100057A04()
{
  result = qword_10033BD90;
  if (!qword_10033BD90)
  {
    type metadata accessor for GuestHostDevice(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BD90);
  }

  return result;
}

uint64_t sub_100057B10(void *a1)
{
  v46._countAndFlagsBits = &type metadata for HandoffActionContext;
  sub_100035D04(&qword_10033BE18, qword_100272750);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v44 = v2;
  v45 = v3;
  sub_10000EBC0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (swift_isClassType())
  {
    v6 = DynamicType == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = a1[3];
    v8 = sub_10000EBC0(a1, v7);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    swift_unknownObjectRelease();
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v43 = v12;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v46);

    v2 = v44;
    v4 = v45;
  }

  v46._countAndFlagsBits = 60;
  v46._object = 0xE100000000000000;
  v14._countAndFlagsBits = v2;
  v14._object = v4;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);

  countAndFlagsBits = v46._countAndFlagsBits;
  object = v46._object;
  v18 = sub_10005843C(a1, sub_100058A84);
  v19 = v18[2];
  if (v19)
  {
    v34 = countAndFlagsBits;
    v35 = object;
    v46._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1000CDF20(0, v19, 0);
    v20 = v46._countAndFlagsBits;
    v33[1] = v18;
    v21 = v18 + 7;
    v36 = xmmword_1002725A0;
    do
    {
      v22 = *(v21 - 3);
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);
      v25 = *v21;
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v26 = swift_allocObject();
      *(v26 + 16) = v36;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      *(v26 + 48) = v24;
      *(v26 + 56) = v25;
      v46._countAndFlagsBits = v20;
      v27 = v20[2];
      v28 = v20[3];

      if (v27 >= v28 >> 1)
      {
        sub_1000CDF20((v28 > 1), v27 + 1, 1);
        v20 = v46._countAndFlagsBits;
      }

      v20[2] = v27 + 1;
      v20[v27 + 4] = v26;
      v21 += 4;
      --v19;
    }

    while (v19);

    countAndFlagsBits = v34;
    object = v35;
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
  }

  v46._countAndFlagsBits = countAndFlagsBits;
  v46._object = object;
  v47 = 0;
  v48 = v20;
  v49 = 0;
  v29 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v31 = v30;

  v41 = v29;
  v42 = v31;
  v39 = 10;
  v40 = 0xE100000000000000;
  v37 = 2314;
  v38 = 0xE200000000000000;
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  return v43;
}

uint64_t sub_100058040(void *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v53._countAndFlagsBits = a2(0);
  sub_100035D04(a3, a4);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  v51 = v9;
  v52 = v10;
  sub_10000EBC0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (swift_isClassType())
  {
    v13 = DynamicType == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = a1[3];
    v15 = sub_10000EBC0(a1, v14);
    v16 = *(v14 - 8);
    __chkstk_darwin(v15);
    v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v14);
    swift_unknownObjectRelease();
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v50 = v19;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v53);

    v9 = v51;
    v11 = v52;
  }

  v53._countAndFlagsBits = 60;
  v53._object = 0xE100000000000000;
  v21._countAndFlagsBits = v9;
  v21._object = v11;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);

  countAndFlagsBits = v53._countAndFlagsBits;
  object = v53._object;
  v25 = sub_10005843C(a1, a5);
  v26 = v25[2];
  if (v26)
  {
    v41 = countAndFlagsBits;
    v42 = object;
    v53._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1000CDF20(0, v26, 0);
    v27 = v53._countAndFlagsBits;
    v40[1] = v25;
    v28 = v25 + 7;
    v43 = xmmword_1002725A0;
    do
    {
      v29 = *(v28 - 3);
      v30 = *(v28 - 2);
      v31 = *(v28 - 1);
      v32 = *v28;
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v33 = swift_allocObject();
      *(v33 + 16) = v43;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      *(v33 + 48) = v31;
      *(v33 + 56) = v32;
      v53._countAndFlagsBits = v27;
      v34 = v27[2];
      v35 = v27[3];

      if (v34 >= v35 >> 1)
      {
        sub_1000CDF20((v35 > 1), v34 + 1, 1);
        v27 = v53._countAndFlagsBits;
      }

      v27[2] = v34 + 1;
      v27[v34 + 4] = v33;
      v28 += 4;
      --v26;
    }

    while (v26);

    countAndFlagsBits = v41;
    object = v42;
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
  }

  v53._countAndFlagsBits = countAndFlagsBits;
  v53._object = object;
  v54 = 0;
  v55 = v27;
  v56 = 0;
  v36 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v38 = v37;

  v48 = v36;
  v49 = v38;
  v46 = 10;
  v47 = 0xE100000000000000;
  v44 = 2314;
  v45 = 0xE200000000000000;
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  return v50;
}

void *sub_10005843C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001766C(a1, v23);
  Mirror.init(reflecting:)();
  v8 = Mirror.children.getter();
  (*(v5 + 8))(v7, v4);
  v21 = v8;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v24 + 1))
  {
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v22[0] = v23[0];
      v22[1] = v23[1];
      v22[2] = v24;
      v11 = sub_100058680(v22, a2);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      sub_1000097E8(v22, &qword_10033BDB0, &unk_1002726E0);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000AF2E4(0, v9[2] + 1, 1, v9);
        }

        v19 = v9[2];
        v18 = v9[3];
        if (v19 >= v18 >> 1)
        {
          v9 = sub_1000AF2E4((v18 > 1), v19 + 1, 1, v9);
        }

        v9[2] = v19 + 1;
        v10 = &v9[4 * v19];
        v10[4] = v11;
        v10[5] = v13;
        v10[6] = v15;
        v10[7] = v17;
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v24 + 1));
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  return v9;
}

uint64_t sub_100058680(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100058CB4(a1, &v14);
  if (*(&v14 + 1))
  {
    v11[0] = v14;
    sub_100058C60();
    Collection<>.trimmingPrefix<A>(_:)();

    sub_10000903C(v15);
    v4 = static String._fromSubstring(_:)();
  }

  else
  {
    sub_10000903C(v15);
    v4 = 63;
  }

  String.lowercased()();
  v5._countAndFlagsBits = 0x736B736174;
  v5._object = 0xE500000000000000;
  v6 = String.hasSuffix(_:)(v5);

  if (v6)
  {
    sub_100058CB4(a1, &v14);

    sub_100035D04(&qword_10033BDB8, &unk_100278370);
    if (swift_dynamicCast())
    {
      sub_10000E754(v11, v13);
      *&v14 = 40;
      *(&v14 + 1) = 0xE100000000000000;
      sub_10000EBC0(v13, v13[3]);
      *&v11[0] = dispatch thunk of Collection.count.getter();
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 41;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      sub_10000903C(v13);
      return v4;
    }

    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_1000097E8(v11, &qword_10033BDC0, &unk_1002726F0);
  }

  a2(a1 + 16);
  if (!v9)
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1000588F8(uint64_t a1)
{
  sub_10001766C(a1, &v7);
  sub_100035D04(&qword_10033BDC8, &unk_100278380);
  if (swift_dynamicCast())
  {
    sub_10000E754(v5, v9);
    v1 = v10;
    v2 = v11;
    sub_10000EBC0(v9, v10);
    (*(v2 + 24))(&v7, v1, v2);
    if (v8)
    {
      sub_1000516B4(&v7, v5);
      *&v7 = 0;
      *(&v7 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v3 = v7;
      sub_10000903C(v5);
      sub_10000903C(v9);
      return v3;
    }

    else
    {
      sub_1000097E8(&v7, &unk_100339680, &qword_100278390);
      sub_10000903C(v9);
      return 7104878;
    }
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1000097E8(v5, &qword_10033BDD0, &unk_100272700);
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    return v9[0];
  }
}

uint64_t sub_100058A84(uint64_t a1)
{
  sub_10001766C(a1, &v7);
  sub_100035D04(&qword_10033BDC8, &unk_100278380);
  if (swift_dynamicCast())
  {
    sub_10000E754(v5, v9);
    v1 = v10;
    v2 = v11;
    sub_10000EBC0(v9, v10);
    (*(v2 + 24))(&v7, v1, v2);
    if (v8)
    {
      sub_1000516B4(&v7, v5);
      *&v7 = 0;
      *(&v7 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v3 = v7;
      sub_10000903C(v5);
      sub_10000903C(v9);
      return v3;
    }

    else
    {
      sub_1000097E8(&v7, &unk_100339680, &qword_100278390);
      sub_10000903C(v9);
      return 0;
    }
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1000097E8(v5, &qword_10033BDD0, &unk_100272700);
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    return v9[0];
  }
}

unint64_t sub_100058C0C()
{
  result = qword_10033BDA0;
  if (!qword_10033BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BDA0);
  }

  return result;
}

unint64_t sub_100058C60()
{
  result = qword_10033BDA8;
  if (!qword_10033BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BDA8);
  }

  return result;
}

uint64_t sub_100058CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033BDB0, &unk_1002726E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100058D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return result;
}

uint64_t sub_100058DC8(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() homeAppSuggestionVendor];
  v5 = [v4 roomSuggestions];

  sub_100058FA8();
  sub_100058FF4();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005904C(v6);
  v8 = v7;

  v16 = a1;
  v17 = a2;
  v15[2] = &v16;
  LOBYTE(v4) = sub_10015FB80(sub_1000595B4, v15, v8);

  if (v4)
  {
    v9 = [objc_opt_self() localizedStringForKey:15];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v16 = 0;
    v17 = 0xE000000000000000;
    v15[3] = v10;
    v15[4] = v12;
    sub_100035D04(&unk_10034A310, &qword_100272780);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10026F050;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000595D4();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    sub_10001369C();

    a1 = StringProtocol.appendingFormat<A>(_:_:)();
  }

  else
  {
  }

  return a1;
}

unint64_t sub_100058FA8()
{
  result = qword_10033BE20;
  if (!qword_10033BE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033BE20);
  }

  return result;
}

unint64_t sub_100058FF4()
{
  result = qword_10033BE28;
  if (!qword_10033BE28)
  {
    sub_100058FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BE28);
  }

  return result;
}

void sub_10005904C(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1000593B4(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 name];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000CDF40((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_100035D04(&qword_10033BE38, qword_100272788);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_100059628(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_100059628(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_100059628(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1000593B4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100058FA8();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100058FA8();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_1000595D4()
{
  result = qword_10033BE30;
  if (!qword_10033BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BE30);
  }

  return result;
}

uint64_t sub_100059628(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t EdgeTransitioning.action(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v11 = static Array._adoptStorage(_:count:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *v13 = sub_100059D20;
  v13[1] = v14;
  sub_100042610(v11, FunctionTypeMetadata1);
  v15 = *(a4 + 64);

  v16 = v15(v18, a3, a4);
  static Array.+= infix(_:_:)();

  return v16(v18, 0);
}

uint64_t EdgeTransitioning.filter(isIncluded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v11 = static Array._adoptStorage(_:count:)();
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v14[5] = a2;
  *v13 = sub_100059D48;
  v13[1] = v14;
  sub_100042610(v11, FunctionTypeMetadata1);
  v15 = *(a4 + 88);

  v16 = v15(v18, a3, a4);
  static Array.+= infix(_:_:)();

  return v16(v18, 0);
}

uint64_t EdgeTransitioning.output(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100059CAC(AssociatedTypeWitness, AssociatedTypeWitness);
  v9 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v10 = static Array._adoptStorage(_:count:)();
  (*(v9 + 16))(v11, a1, AssociatedTypeWitness);
  v12 = sub_100042610(v10, AssociatedTypeWitness);
  EdgeTransitioning.output(_:)(v12, a2, a3, a4);
}

double EdgeTransitioning.output(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;

  EdgeTransitioning.output(_:)(sub_100059D7C, v8, a2, a3, a4);

  return result;
}

uint64_t EdgeTransitioning.output(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v11 = static Array._adoptStorage(_:count:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *v13 = sub_100059DAC;
  v13[1] = v14;
  sub_100042610(v11, FunctionTypeMetadata1);
  v15 = *(a4 + 112);

  v16 = v15(v18, a3, a4);
  static Array.+= infix(_:_:)();

  return v16(v18, 0);
}

uint64_t sub_100059CAC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_100059D48@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100059D7C()
{
  nullsub_1();
}

uint64_t sub_100059DAC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

void sub_100059DDC(uint64_t a1)
{
  type metadata accessor for HandoffDevice(0);
  sub_10005E4C4(&qword_10033C1C8, 255, type metadata accessor for HandoffDevice, &unk_10028C528);
  v2 = 0;
  v10[1] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = *(*(a1 + 56) + ((v7 << 9) | (8 * v8)));

    sub_100063B28(v10, v9);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100059F30(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_100063F34(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A194(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100008DE4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A2B0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033BE40);
  sub_100003078(v0, qword_10033BE40);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005A354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

float *sub_10005A3A8()
{
  type metadata accessor for LockscreenControlsFeature();
  swift_allocObject();
  result = sub_10005A48C();
  qword_10038AEE0 = result;
  return result;
}

double sub_10005A3E4(uint64_t a1)
{
  *(*(v1 + 16) + 24) = a1;

  sub_10005E5E4(&qword_10033C1F0, &qword_1002729F0);

  CurrentValueSubject.send(_:)();

  return result;
}

float *sub_10005A48C()
{
  v1 = v0;
  sub_100035D04(&qword_10033C1D8, &unk_1002729B0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v0[2] = v2;
  v0[3] = _swiftEmptyDictionarySingleton;
  v0[4] = _swiftEmptyDictionarySingleton;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v3 = qword_10038B5B8;
  v0[5] = qword_10038B5B8;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = _swiftEmptyDictionarySingleton;
  v0[10] = _swiftEmptyDictionarySingleton;
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_10033C1E0, &qword_1002729E8);
  swift_allocObject();
  v5 = v3;
  v6 = sub_10006C194(KeyPath, 0);

  v1[11] = v6;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v7 = *(qword_10038B0B8 + 1488);
  sub_10005FA50();
  v9 = v8;

  *(v1 + 24) = v9;
  v1[13] = 0;
  v1[14] = _swiftEmptyDictionarySingleton;
  v10 = sub_10024D28C(_swiftEmptyArrayStorage);
  v1[17] = &_swiftEmptySetSingleton;
  *(v1 + 30) = 0;
  v1[16] = v10;
  DeviceClass = GestaltGetDeviceClass();
  v12 = DeviceClass;
  v14 = DeviceClass != 4 && DeviceClass != 7;
  v22[3] = &type metadata for Feature;
  v22[4] = sub_100013104();
  LOBYTE(v22[0]) = 4;
  v15 = isFeatureEnabled(_:)();
  sub_10000903C(v22);
  *(v1 + 48) = v14 & v15;
  if ((v15 & 1) == 0 || v12 == 7 || v12 == 4)
  {
    if (qword_100338E70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_10033BE40);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109376;
      *(v19 + 4) = v15 & 1;
      *(v19 + 8) = 1024;
      *(v19 + 10) = !v14;
      _os_log_impl(&_mh_execute_header, v17, v18, "### Disabled. FF=%{BOOL}d communal=%{BOOL}d", v19, 0xEu);
    }
  }

  v22[0] = sub_10005E5E4(&qword_10033C1F0, &qword_1002729F0);
  sub_100035D04(&qword_10033C1F0, &qword_1002729F0);
  sub_10000E244(&qword_10033C1F8, &qword_10033C1F0, &qword_1002729F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v20 = Publisher.eraseToAnyPublisher()();

  v22[0] = v20;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033C200, &qword_1002729F8);
  sub_10000E244(&qword_10033C208, &qword_10033C200, &qword_1002729F8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

double sub_10005A8BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_100338E70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033BE40);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;

    sub_100035D04(&qword_10033C210, &qword_100272A00);
    v8 = String.init<A>(describing:)();
    v10 = sub_100017494(v8, v9, v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "New model: %s", v6, 0xCu);
    sub_10000903C(v7);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v2)
    {
      v12 = Strong;
      sub_100035D04(&qword_100339828, &unk_100270300);
      sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
      Publisher.eraseToAnyPublisher()();

      sub_100035D04(&qword_100339838, &qword_100271F10);
      sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
      v13 = Publisher<>.sink(receiveValue:)();

      Strong = v12;
    }

    else
    {
      v13 = 0;
    }

    *(Strong + 56) = v13;
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    if (v2)
    {
      v16 = v14;
      sub_100035D04(&qword_100339828, &unk_100270300);
      sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
      Publisher.eraseToAnyPublisher()();

      sub_100035D04(&qword_100339838, &qword_100271F10);
      sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
      v17 = Publisher<>.sink(receiveValue:)();

      v14 = v16;
    }

    else
    {
      v17 = 0;
    }

    *(v14 + 64) = v17;
  }

  return result;
}

double sub_10005ACC0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_10005AD34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&qword_10033C3A8, &qword_100272C60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v59 = sub_100035D04(&qword_10033C3B0, &qword_100272C68);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v13 = &v47 - v12;
  v60 = sub_100035D04(&qword_10033C3B8, &qword_100272C70);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v15 = &v47 - v14;
  v16 = sub_100035D04(&qword_10033C3C0, &qword_100272C78);
  result = __chkstk_darwin(v16);
  if (*(v2 + 48) == 1)
  {
    v49 = &v47 - v18;
    v50 = v19;
    v51 = result;
    v53 = v4;
    v54 = v11;
    v56 = v8;
    if (qword_100338E70 != -1)
    {
      swift_once();
    }

    v52 = v5;
    v55 = v9;
    v20 = type metadata accessor for Logger();
    sub_100003078(v20, qword_10033BE40);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v48 = v7;
      v24 = v23;
      v25 = swift_slowAlloc();
      v62[0] = v25;
      *v24 = 136315138;
      v27 = sub_1000092A0(v25, v26);
      v29 = sub_100017494(v27, v28, v62);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Tracking %s", v24, 0xCu);
      sub_10000903C(v25);

      v7 = v48;
    }

    v30 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    v32 = v30;
    v48 = v30;
    sub_10001B874(a1, a1 + v30, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v61;
    swift_endAccess();
    swift_beginAccess();
    sub_100035D04(&qword_10033C3C8, &unk_100272C80);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10000E244(&qword_10033C3D0, &qword_10033C3B0, &qword_100272C68, &protocol conformance descriptor for Published<A>.Publisher);
    v33 = v59;
    Publisher.compactMap<A>(_:)();
    (*(v57 + 8))(v13, v33);
    sub_10000E244(&qword_10033C3D8, &qword_10033C3B8, &qword_100272C70, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v34 = v49;
    v35 = v60;
    Publisher<>.removeDuplicates()();
    (*(v58 + 8))(v15, v35);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *(v37 + 24) = v36;
    sub_10000E244(&qword_10033C3E0, &qword_10033C3C0, &qword_100272C78, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);

    v38 = v51;
    v39 = Publisher<>.sink(receiveValue:)();

    (*(v50 + 8))(v34, v38);
    swift_beginAccess();
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_10004CE14(v39, a1 + v32, v40);
    *(v2 + 80) = v61;
    swift_endAccess();
    v62[0] = sub_10006E2CC();
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    v61 = *(v2 + 40);
    sub_100035D04(&qword_10033C3E8, &qword_100274580);
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_10033C3F0, &qword_10033C3E8, &qword_100274580, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000513CC();
    v41 = v54;
    Publisher.throttle<A>(for:scheduler:latest:)();
    (*(v52 + 8))(v7, v53);

    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = a1;
    sub_10000E244(&qword_10033C3F8, &qword_10033C3A8, &qword_100272C60, &protocol conformance descriptor for Publishers.Throttle<A, B>);

    v44 = v56;
    v45 = Publisher<>.sink(receiveValue:)();

    (*(v55 + 8))(v41, v44);
    swift_beginAccess();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_10004CE14(v45, &v48[a1], v46);
    *(v2 + 112) = v61;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10005B600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10000DF0C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

double sub_10005B62C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (qword_100338E70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033BE40);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315394;
    v12 = sub_1000092A0(v10, v11);
    v14 = sub_100017494(v12, v13, v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100017494(v5, v4, v21);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s caching mediaRouteID: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    v18 = Strong;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v18 + 72);
    *(v18 + 72) = 0x8000000000000000;
    sub_10004D010(v5, v4, a2 + v17, isUniquelyReferenced_nonNull_native);
    *(v18 + 72) = v20;
    swift_endAccess();
  }

  return result;
}

void sub_10005B868(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((v5 & 1) != 0 || v4 > *(Strong + 96))
    {
      sub_10005C478(a3);
    }

    else
    {
      sub_10005CB38(a3, v4);
    }
  }
}

uint64_t sub_10005B900(uint64_t result)
{
  if (*(v1 + 48) == 1)
  {
    v2 = result;
    if (qword_100338E70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_10033BE40);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13[0] = v7;
      *v6 = 136315138;
      v9 = sub_1000092A0(v7, v8);
      v11 = sub_100017494(v9, v10, v13);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Untrack %s", v6, 0xCu);
      sub_10000903C(v7);
    }

    v12 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    swift_beginAccess();
    sub_100209174(v2 + v12);
    swift_endAccess();

    swift_beginAccess();
    sub_100209148(v2 + v12);
    swift_endAccess();

    sub_10005C478(v2);
    swift_beginAccess();
    sub_10005BB48(v2 + v12);
    swift_endAccess();
    swift_beginAccess();
    sub_100209280(v2 + v12);
    swift_endAccess();
  }

  return result;
}

double sub_10005BB48(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    sub_100019110(a1);
    if (v4)
    {
      type metadata accessor for AnyCancellable();

      dispatch thunk of Cancellable.cancel()();
      sub_1001D0954(a1);
    }
  }

  return result;
}

void sub_10005BBEC()
{
  v1 = v0;
  if (qword_100338E70 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10033BE40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v28[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100017494(0xD000000000000011, 0x8000000100298E20, v28);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
      sub_10000903C(v6);
    }

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v7 = *(qword_10038B0B8 + 1488);
    sub_10005FA50();
    v9 = v8;

    if (*(v1 + 96) == v9)
    {
      break;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = *(v1 + 96);
      *(v12 + 12) = 2048;
      *(v12 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Threshold changed: %f -> %f", v12, 0x16u);
    }

    *(v1 + 96) = v9;
    swift_beginAccess();
    v13 = *(v1 + 32);
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
LABEL_18:
      v20 = *(*(v13 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v16)))));

      sub_10005C478(v21);

      CurrentValueSubject.value.getter();
      if (v25)
      {
        CurrentValueSubject.value.getter();

        if (v27)
        {
          goto LABEL_12;
        }

        v22 = v26;
      }

      else
      {

        if (((LODWORD(v23) | (v24 << 32)) & 0x100000000) != 0)
        {
          goto LABEL_12;
        }

        v22 = v23;
      }

      if (v22 < *(v1 + 96))
      {
        sub_10005CB38(v20, v22);
      }

LABEL_12:
      v16 &= v16 - 1;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }
}

double sub_10005BFBC(uint64_t a1, uint64_t a2)
{

  sub_100049784(a2);

  return result;
}

double sub_10005C034(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v32 = a2;
  v33 = a3;
  v8 = v5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v13 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338E70 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_10033BE40);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = a5;
    v31 = v13;
    v21 = v20;
    v22 = a4;
    v23 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v23 = v17;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, v32, v21, 0xCu);
    sub_1000097E8(v23, &qword_100339940, &unk_100272C50);
    a4 = v22;

    a5 = v30;
    v13 = v31;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v8;
  *(v25 + 24) = v17;
  aBlock[4] = a4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = a5;
  v26 = _Block_copy(aBlock);
  v27 = v17;

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_10005E4C4(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v35 + 8))(v12, v10);
  (*(v13 + 8))(v15, v34);

  return result;
}

void sub_10005C41C(uint64_t a1, uint64_t a2)
{

  v3 = sub_1002094F8(a2);
}

void sub_10005C478(uint64_t a1)
{
  if (*(v1 + 48) != 1)
  {
    return;
  }

  v2 = v1;
  swift_beginAccess();
  if (!*(*(v1 + 24) + 16))
  {
    return;
  }

  v4 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;

  sub_100019110(a1 + v4);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return;
  }

  if (qword_100338E70 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10033BE40);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_14;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v10 = 136315394;
    v13 = sub_1000092A0(v11, v12);
    v15 = sub_100017494(v13, v14, &v50);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;

    CurrentValueSubject.value.getter();
    if (v54)
    {
      CurrentValueSubject.value.getter();

      if ((v51 & 0x100000000) == 0)
      {
        v18 = v51;
LABEL_12:
        v52 = v18;
        v16 = String.init<A>(describing:)();
        v17 = v20;
        goto LABEL_13;
      }

      v16 = 7104878;
      v17 = 0xE300000000000000;
    }

    else
    {
      v18 = v52;
      v19 = v52 | (v53 << 32);

      if ((v19 & 0x100000000) == 0)
      {
        goto LABEL_12;
      }

      v16 = 7104878;
      v17 = 0xE300000000000000;
    }

LABEL_13:
    v21 = sub_100017494(v16, v17, &v50);

    *(v10 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Reporting LOST: %s, distance=%s", v10, 0x16u);
    swift_arrayDestroy();

LABEL_14:

    swift_beginAccess();
    sub_100209148(a1 + v4);
    swift_endAccess();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000DF0C(v22, v23);
    v25 = v24;

    if (v25)
    {
      goto LABEL_15;
    }

    swift_beginAccess();
    if (!*(*(v2 + 72) + 16))
    {
      goto LABEL_36;
    }

    sub_100019110(a1 + v4);
    if ((v35 & 1) == 0)
    {
      break;
    }

LABEL_15:
    v26 = objc_allocWithZone(PCLockscreenControlsDevice);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 initWithMediaRouteID:v27 distance:0];

    v29 = *(v2 + 88);
    __chkstk_darwin(v30);
    sub_100003118(0, &qword_10033B5F8, PCLockscreenControlsObserver_ptr);
    swift_getKeyPath();
    v31 = v29 + qword_100346AF8;

    os_unfair_lock_lock(v31);
    v50 = *(v31 + 8);

    swift_getAtKeyPath();

    v32 = v51;
    os_unfair_lock_unlock(v31);

    v33 = *(v32 + 16);
    if (v33)
    {
      v2 = sub_100009194(*(v32 + 16), 0);
      v34 = sub_1001295D4();
      sub_100004F98(v50);
      if (v34 != v33)
      {
        __break(1u);
        return;
      }

      if (v2 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v2 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }
    }

    if ((v2 & 0x4000000000000000) == 0)
    {
      a1 = *(v2 + 16);
      if (!a1)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }

LABEL_42:
    a1 = _CocoaArrayWrapper.endIndex.getter();
    if (!a1)
    {
LABEL_43:

      return;
    }

LABEL_25:
    v36 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v2 + 16))
        {
          goto LABEL_40;
        }

        v37 = *(v2 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v40 = [v37 deviceLost];
      if (v40)
      {
        v41 = v40;
        (*(v40 + 2))(v40, v28);

        _Block_release(v41);
      }

      else
      {
      }

      ++v36;
      if (v39 == a1)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

LABEL_36:

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = v45;
    *v44 = 136315138;
    v47 = sub_1000092A0(v45, v46);
    v49 = sub_100017494(v47, v48, &v50);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "### Failed to create PCLockscreenControlsDevice for %s", v44, 0xCu);
    sub_10000903C(v45);
  }
}

void sub_10005CB38(id a1, float a2)
{
  if (*(v2 + 48) == 1)
  {
    v3 = v2;
    if (qword_100338E70 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_10033BE40);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v57[0] = v10;
        *v9 = 136315394;
        v12 = sub_1000092A0(v10, v11);
        v14 = sub_100017494(v12, v13, v57);

        *(v9 + 4) = v14;
        *(v9 + 12) = 2080;
        *v58 = a2;
        v15 = String.init<A>(describing:)();
        v17 = sub_100017494(v15, v16, v57);

        *(v9 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v7, v8, "UPDATE: %s, distance=%s", v9, 0x16u);
        swift_arrayDestroy();
      }

      v18 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = *(v3 + 24);
      *(v3 + 24) = 0x8000000000000000;
      sub_10001B874(a1, a1 + v18, isUniquelyReferenced_nonNull_native);
      *(v3 + 24) = v58[0];
      swift_endAccess();
      sub_10005D6EC();
      v20 = *(v3 + 88) + qword_100346AF8;

      os_unfair_lock_lock(v20);
      v21 = *(*(v20 + 8) + 16);
      os_unfair_lock_unlock(v20);

      if (!v21)
      {
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_10000DF0C(v22, v23);
      v25 = v24;

      if (!v25)
      {
        swift_beginAccess();
        if (!*(*(v3 + 72) + 16))
        {
          goto LABEL_30;
        }

        sub_100019110(a1 + v18);
        if ((v41 & 1) == 0)
        {

LABEL_30:

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v57[0] = v52;
            *v51 = 136315138;
            v54 = sub_1000092A0(v52, v53);
            v56 = sub_100017494(v54, v55, v57);

            *(v51 + 4) = v56;
            _os_log_impl(&_mh_execute_header, v49, v50, "### Failed to create PCLockscreenControlsDevice for %s", v51, 0xCu);
            sub_10000903C(v52);
          }

          return;
        }
      }

      sub_100003118(0, &qword_10034B560, NSNumber_ptr);
      isa = NSNumber.init(floatLiteral:)(a2).super.super.isa;
      v27 = objc_allocWithZone(PCLockscreenControlsDevice);
      v28 = String._bridgeToObjectiveC()();

      v29 = [v27 initWithMediaRouteID:v28 distance:isa];

      a1 = v29;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = a1;
        *v33 = a1;
        v34 = a1;
        _os_log_impl(&_mh_execute_header, v30, v31, "Reporting update to clients %@", v32, 0xCu);
        sub_1000097E8(v33, &qword_100339940, &unk_100272C50);
      }

      v35 = *(v3 + 88);
      __chkstk_darwin(v36);
      sub_100003118(0, &qword_10033B5F8, PCLockscreenControlsObserver_ptr);
      swift_getKeyPath();
      v37 = v35 + qword_100346AF8;

      os_unfair_lock_lock(v37);
      v57[0] = *(v37 + 8);

      swift_getAtKeyPath();

      v38 = v57[5];
      os_unfair_lock_unlock(v37);

      v39 = *(v38 + 16);
      if (v39)
      {
        v3 = sub_100009194(*(v38 + 16), 0);
        v40 = sub_1001295D4();
        sub_100004F98(v57[0]);
        if (v40 != v39)
        {
          __break(1u);
          return;
        }

        if (v3 < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {

        v3 = _swiftEmptyArrayStorage;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }
      }

      if ((v3 & 0x4000000000000000) == 0)
      {
        v42 = *(v3 + 16);
        if (!v42)
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }

LABEL_36:
      v42 = _CocoaArrayWrapper.endIndex.getter();
      if (!v42)
      {
LABEL_37:

        return;
      }

LABEL_19:
      v43 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v43 >= *(v3 + 16))
          {
            goto LABEL_34;
          }

          v44 = *(v3 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v47 = [v44 deviceUpdated];
        if (v47)
        {
          v48 = v47;
          (*(v47 + 2))(v47, a1);

          _Block_release(v48);
        }

        else
        {
        }

        ++v43;
        if (v46 == v42)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }
}

void sub_10005D280(uint64_t result)
{
  if (*(v1 + 48) == 1)
  {
    os_unfair_lock_lock((v1 + 120));
    v3 = *(result + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v1 + 128);
    *(v1 + 128) = 0x8000000000000000;
    sub_10004CE40(result, v3, isUniquelyReferenced_nonNull_native);
    *(v1 + 128) = v13[0];
    os_unfair_lock_unlock((v1 + 120));
    if (qword_100338E70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_10033BE40);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315138;
      v10 = sub_10014F690();
      v12 = sub_100017494(v10, v11, v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "XPC Publisher added: %s", v8, 0xCu);
      sub_10000903C(v9);
    }

    swift_beginAccess();
    if (*(*(v1 + 24) + 16))
    {
      sub_10014F3D4(0, 2);
    }
  }
}

void sub_10005D46C(uint64_t a1)
{
  if (*(v1 + 48) == 1)
  {
    os_unfair_lock_lock((v1 + 120));
    sub_10005D654((v1 + 128), a1, &v12);
    os_unfair_lock_unlock((v1 + 120));
    if (v12)
    {
      if (qword_100338E70 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_10033BE40);

      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v12 = v6;
        *v5 = 136315138;

        v7 = sub_10014F690();
        v9 = v8;

        v10 = sub_100017494(v7, v9, &v12);

        *(v5 + 4) = v10;
        _os_log_impl(&_mh_execute_header, oslog, v4, "XPC Publisher removed: %s", v5, 0xCu);
        sub_10000903C(v6);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10005D654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_10008CE8C(a2);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v11 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100089EA8();
      v9 = v11;
    }

    v10 = *(*(v9 + 56) + 8 * v7);
    result = sub_10004BF88();
    *a1 = v9;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

double sub_10005D6EC()
{
  if (*(v0 + 48) == 1)
  {
    swift_beginAccess();
    if (*(*(v0 + 24) + 16))
    {
      v2 = *(v0 + 88) + qword_100346AF8;

      os_unfair_lock_lock(v2);
      v3 = *(*(v2 + 8) + 16);
      os_unfair_lock_unlock(v2);

      if (!v3)
      {
        v4 = v0;
        if (qword_100338E70 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100003078(v5, qword_10033BE40);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "Publishing via XPC", v8, 2u);
        }

        os_unfair_lock_lock((v4 + 120));
        sub_10005D884((v4 + 128));
        os_unfair_lock_unlock((v4 + 120));
        v9 = String.utf8CString.getter();
        notify_post((v9 + 32));
      }
    }
  }

  return result;
}

void sub_10005D884(void *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
LABEL_11:
    v9 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    if (swift_weakLoadStrong())
    {
      v10 = *(v9 + 24);

      sub_100051F6C(v10, 2, 0);
    }

    else
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "### Failed to fire xpc event: nil publisher", v13, 2u);
      }
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10005DA38()
{

  sub_1000097E8(v0 + 128, &qword_10033C400, qword_100272C90);

  return v0;
}

uint64_t sub_10005DAC8()
{
  sub_10005DA38();

  return swift_deallocClassInstance();
}

uint64_t sub_10005DB20()
{
  v1 = 0xD000000000000011;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10026F050;
  *(v2 + 32) = 0xD00000000000001ALL;
  *(v2 + 40) = 0x8000000100298D70;
  strcpy(v58, "Enabled: ");
  WORD1(v58[1]) = 0;
  HIDWORD(v58[1]) = -385875968;
  v55 = v0;
  if (*(v0 + 48))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6 = v58[0];
  v7 = v58[1];
  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v56 = v2;
  v10 = v9 + 1;
  if (v9 < v8 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v56 = sub_100009088((v8 > 1), v10, 1, v56);
LABEL_8:
    *(v56 + 2) = v10;
    v11 = &v56[16 * v9];
    *(v11 + 4) = v6;
    *(v11 + 5) = v7;
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    v12._countAndFlagsBits = 0x6C6F687365726854;
    v12._object = 0xEB00000000203A64;
    String.append(_:)(v12);
    Float.write<A>(to:)();
    v14 = *(v56 + 2);
    v13 = *(v56 + 3);
    if (v14 >= v13 >> 1)
    {
      v56 = sub_100009088((v13 > 1), v14 + 1, 1, v56);
    }

    *(v56 + 2) = v14 + 1;
    v15 = &v56[16 * v14];
    *(v15 + 4) = 0;
    *(v15 + 5) = 0xE000000000000000;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002727F0;
    strcpy(v58, "Discovered: ");
    BYTE5(v58[1]) = 0;
    HIWORD(v58[1]) = -5120;
    swift_beginAccess();
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18 = v58[1];
    *(v16 + 32) = v58[0];
    *(v16 + 40) = v18;
    strcpy(v58, "Active: ");
    BYTE1(v58[1]) = 0;
    WORD1(v58[1]) = 0;
    HIDWORD(v58[1]) = -402653184;
    swift_beginAccess();
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = v58[1];
    *(v16 + 48) = v58[0];
    *(v16 + 56) = v20;
    _StringGuts.grow(_:)(21);

    v58[0] = v1 + 2;
    v58[1] = 0x8000000100298D90;
    swift_beginAccess();
    v57 = *(*(v55 + 72) + 16);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    *(v16 + 64) = v1 + 2;
    *(v16 + 72) = 0x8000000100298D90;
    v58[0] = v16;
    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
    v22 = BidirectionalCollection<>.joined(separator:)();
    v24 = v23;

    v26 = *(v56 + 2);
    v25 = *(v56 + 3);
    if (v26 >= v25 >> 1)
    {
      v56 = sub_100009088((v25 > 1), v26 + 1, 1, v56);
    }

    *(v56 + 2) = v26 + 1;
    v27 = &v56[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v24;
    v28 = *(v55 + 24);
    swift_bridgeObjectRetain_n();

    sub_100059DDC(v28);
    v30 = v29;

    sub_100059DDC(v31);
    v33 = sub_10005E328(v32, v30);

    v6 = v33 & 0xC000000000000001;
    if ((v33 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_19;
      }
    }

    else if (!*(v33 + 16))
    {
LABEL_19:

      goto LABEL_38;
    }

    v9 = *(v56 + 2);
    v34 = *(v56 + 3);
    v10 = v9 + 1;
    if (v9 >= v34 >> 1)
    {
      v56 = sub_100009088((v34 > 1), v9 + 1, 1, v56);
    }

    *(v56 + 2) = v10;
    v35 = &v56[16 * v9];
    *(v35 + 4) = v1 + 7;
    *(v35 + 5) = 0x8000000100298DB0;
    if (v6)
    {
      v10 = __CocoaSet.makeIterator()();
      type metadata accessor for HandoffDevice(0);
      sub_10005E4C4(&qword_10033C1C8, 255, type metadata accessor for HandoffDevice, &unk_10028C528);
      Set.Iterator.init(_cocoa:)();
      v33 = v58[0];
      v36 = v58[1];
      v37 = v58[2];
      v38 = v58[3];
      v1 = v58[4];
    }

    else
    {
      v38 = 0;
      v39 = -1 << *(v33 + 32);
      v36 = v33 + 56;
      v37 = ~v39;
      v40 = -v39;
      v41 = v40 < 64 ? ~(-1 << v40) : -1;
      v1 = v41 & *(v33 + 56);
    }

    v7 = (v37 + 64) >> 6;
    if (v33 < 0)
    {
      break;
    }

LABEL_25:
    v8 = v38;
    v42 = v1;
    v43 = v38;
    if (v1)
    {
LABEL_29:
      v6 = (v42 - 1) & v42;
      v44 = *(*(v33 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));

      if (v44)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    while (1)
    {
      v43 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v43 >= v7)
      {
        goto LABEL_37;
      }

      v42 = *(v36 + 8 * v43);
      ++v8;
      if (v42)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  while (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for HandoffDevice(0);
    v45 = swift_dynamicCast();
    v43 = v38;
    v6 = v1;
    if (!v57)
    {
      break;
    }

LABEL_33:
    v57 = 539828256;
    v46._countAndFlagsBits = sub_1001EE1E4(v45);
    String.append(_:)(v46);

    v9 = *(v56 + 2);
    v47 = *(v56 + 3);
    v10 = v9 + 1;
    if (v9 >= v47 >> 1)
    {
      v56 = sub_100009088((v47 > 1), v9 + 1, 1, v56);
    }

    *(v56 + 2) = v10;
    v48 = &v56[16 * v9];
    *(v48 + 4) = 539828256;
    *(v48 + 5) = 0xE400000000000000;
    v38 = v43;
    v1 = v6;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_37:
  sub_100004F98(v33);
  v1 = 0xD000000000000011;
LABEL_38:
  os_unfair_lock_lock((v55 + 120));
  os_unfair_lock_unlock((v55 + 120));
  _StringGuts.grow(_:)(19);

  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  v51 = *(v56 + 2);
  v50 = *(v56 + 3);
  if (v51 >= v50 >> 1)
  {
    v56 = sub_100009088((v50 > 1), v51 + 1, 1, v56);
  }

  *(v56 + 2) = v51 + 1;
  v52 = &v56[16 * v51];
  *(v52 + 4) = v1;
  *(v52 + 5) = 0x8000000100298DD0;
  v53 = BidirectionalCollection<>.joined(separator:)();

  return v53;
}