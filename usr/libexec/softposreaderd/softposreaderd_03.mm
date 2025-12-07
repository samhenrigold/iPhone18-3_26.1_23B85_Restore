void sub_100049BD0(uint64_t a1, char *a2)
{
  v3 = *(a1 + 248);
  v4 = *(v3 + 56);
  os_unfair_lock_lock(v4 + 8);
  sub_10011CF8C(&v4[4], 2);
  os_unfair_lock_unlock(v4 + 8);
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = 12;
  v6 = inited + 32;
  v7 = qword_1002C3A48[*a2];
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = v7;
  sub_100184144(inited);
  swift_setDeallocating();
  sub_10000BD44(v6, &qword_10039FED8, &unk_1002C37D0);
  v8 = *(v3 + 56);
  os_unfair_lock_lock((v8 + 32));
  sub_1000507B4((v8 + 16));
  os_unfair_lock_unlock((v8 + 32));

  v9 = *(v3 + 56);
  os_unfair_lock_lock((v9 + 32));
  sub_100026328((v9 + 16));
  os_unfair_lock_unlock((v9 + 32));
}

unint64_t sub_100049D10()
{
  v2 = v0;
  v3 = v0[35];
  v4 = v0[36];
  sub_10000BE18(v0 + 32, v3);
  (*(v4 + 8))(v3, v4);
  if (v1)
  {
    if (qword_10039D368 != -1)
    {
LABEL_43:
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000403C(v6, qword_10039FC08);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v9 = 136315650;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100008F6C(v10, v11, &v68);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_100008F6C(0xD00000000000001CLL, 0x8000000100347F80, &v68);
      *(v9 + 22) = 2080;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_100008F6C(v13, v14, &v68);

      *(v9 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s: Could not get certificates: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    return swift_willThrow();
  }

  v16 = v5;
  type metadata accessor for SecCertificate(0);
  v17 = static SecCertificateRef.parseList(pemRepresentation:)();

  if (!v17)
  {
LABEL_46:

    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000403C(v57, qword_10039FC08);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Certificate for encrypting payloads is not in PEM representation", v60, 2u);
    }

    sub_10004F3D0();
    swift_allocError();
    *v61 = 2;
    return swift_willThrow();
  }

  if (v17 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:

    goto LABEL_46;
  }

LABEL_9:
  v65 = v2[30];
  v66 = v2[29];
  sub_10000BE18(v2 + 26, v66);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  result = swift_initStackObject();
  v19 = result;
  *(result + 16) = xmmword_1002C1670;
  *(result + 32) = 1701605234;
  *(result + 72) = &type metadata for Int;
  *(result + 80) = &protocol witness table for Int;
  *(result + 40) = 0xE400000000000000;
  *(result + 48) = 200;
  *(result + 88) = 0x747365676964;
  *(result + 96) = 0xE600000000000000;
  v63 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = *(v17 + 32);
  }

  v21 = v20;
  v22 = SecCertificateRef.fingerprint.getter();
  v24 = v23;

  v25 = Data.base64EncodedString(options:)(0);
  sub_100009548(v22, v24);
  *(v19 + 128) = &type metadata for String;
  *(v19 + 136) = &protocol witness table for String;
  *(v19 + 104) = v25;
  v26 = sub_100184010(v19);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(8u, v26, v66, v65);

  v62 = v2;
  sub_1000245C8(&off_10037E0E8);
  v27 = *(v16 + 16);
  v28 = _swiftEmptyArrayStorage;
  v64 = _swiftEmptyArrayStorage;
  if (!v27)
  {
    goto LABEL_27;
  }

  v29 = 0;
  v30 = v16 + 40;
  while (2)
  {
    v31 = v30 + 16 * v29;
    v32 = v29;
    while (1)
    {
      if (v32 >= *(v16 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v33 = static SecCertificateRef.parseList(pemRepresentation:)();

      if (v33)
      {
        break;
      }

LABEL_15:
      ++v32;
      v31 += 16;
      if (v27 == v32)
      {
        goto LABEL_27;
      }
    }

    if (!(v33 >> 62))
    {
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_20:

      goto LABEL_15;
    }

LABEL_22:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_10004D96C(0, *(v28 + 2) + 1, 1, v28);
    }

    v35 = *(v28 + 2);
    v34 = *(v28 + 3);
    v36 = v28;
    if (v35 >= v34 >> 1)
    {
      v36 = sub_10004D96C((v34 > 1), v35 + 1, 1, v28);
    }

    v29 = v32 + 1;
    v28 = v36;
    *(v36 + 2) = v35 + 1;
    *&v36[8 * v35 + 32] = v33;
    v30 = v16 + 40;
    if (v27 - 1 != v32)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v37 = *(v28 + 2);
  if (v37)
  {
    v68 = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v37, 0);
    v38 = _swiftEmptyArrayStorage;
    v39 = (v28 + 32);
    do
    {
      v40 = *v39;
      if ((*v39 & 0xC000000000000001) != 0)
      {

        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v41 = *(v40 + 32);

        v42 = v41;
      }

      v43 = v42;
      v44 = SecCertificateRef.fingerprint.getter();
      v46 = v45;

      v47 = Data.base64EncodedString(options:)(0);
      sub_100009548(v44, v46);

      v68 = v38;
      v49 = v38[2];
      v48 = v38[3];
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        sub_10004E2DC((v48 > 1), v49 + 1, 1);
        v38 = v68;
      }

      v38[2] = v50;
      *&v38[2 * v49 + 4] = v47;
      ++v39;
      --v37;
    }

    while (v37);
    v64 = v38;
LABEL_38:
    v51 = v64 + 5;
    do
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v54 = v62[29];
      v67 = v62[30];
      sub_10000BE18(v62 + 26, v54);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1670;
      *(inited + 32) = 1701605234;
      *(inited + 72) = &type metadata for Int;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 300;
      *(inited + 80) = &protocol witness table for Int;
      *(inited + 88) = 0x747365676964;
      *(inited + 96) = 0xE600000000000000;
      *(inited + 128) = &type metadata for String;
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = v53;
      *(inited + 112) = v52;

      v56 = sub_100184010(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1000C2288(8u, v56, v54, v67);

      sub_1000245C8(&off_10037E110);
      v51 += 2;
      --v50;
    }

    while (v50);
  }

  else
  {
    v50 = _swiftEmptyArrayStorage[2];
    if (v50)
    {
      goto LABEL_38;
    }
  }

  return v63;
}

void sub_10004A5B0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = v4[7];
  v10 = v4[8];
  sub_10000BE18(v4 + 4, v11);
  v31 = a3;
  v12 = sub_10014D0AC(a2, a3, a4);
  v14 = v13;
  v15 = sub_10015623C(a1);
  sub_10009A400(v12, v14, v15, v16, v11, v10);
  if (v5)
  {

    sub_100009548(v12, v14);
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_10039FC08);

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100008F6C(v31, a4, &v32);
      *(v20 + 12) = 2080;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v21 = String.init<A>(describing:)();
      v23 = sub_100008F6C(v21, v22, &v32);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "error persisting %s certificate: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {

    sub_100009548(v12, v14);
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_10039FC08);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_100008F6C(v31, a4, &v32);
      *(v27 + 12) = 2080;
      v28 = sub_100156088(a1);
      v30 = sub_100008F6C(v28, v29, &v32);

      *(v27 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "Saved %s certificate: %s", v27, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_10004A978(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v65 = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v6, 0);
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v60 = v6;
    v61 = a1 + 32;
    while (1)
    {
      v11 = *(v61 + 8 * v9);
      v12 = v11;
      if (v11 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        v63 = v9;
        if (!v13)
        {
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v63 = v9;
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      sub_10004E2DC(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_32:
        swift_once();
LABEL_23:
        v40 = type metadata accessor for Logger();
        sub_10000403C(v40, qword_10039FC08);

        swift_errorRetain();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v43 = 136315394;
          *(v43 + 4) = sub_100008F6C(a3, v7, &v65);
          *(v43 + 12) = 2080;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v44 = String.init<A>(describing:)();
          v46 = sub_100008F6C(v44, v45, &v65);

          *(v43 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v41, v42, "error persisting %s certificates: %s", v43, 0x16u);
          swift_arrayDestroy();
        }

        sub_10004F3D0();
        swift_allocError();
        *v47 = 7;
        swift_willThrow();

        return;
      }

      v62 = v10;
      v14 = 0;
      v15 = v12;
      v64 = v12 & 0xC000000000000001;
      v16 = v12;
      v17 = v13;
      do
      {
        if (v64)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v15 + 8 * v14 + 32);
        }

        v19 = v18;
        v20 = SecCertificateRef.pemRepresentation.getter();
        v22 = v21;

        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          sub_10004E2DC((v23 > 1), v24 + 1, 1);
        }

        ++v14;
        _swiftEmptyArrayStorage[2] = v24 + 1;
        v25 = &_swiftEmptyArrayStorage[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
        v15 = v16;
      }

      while (v17 != v14);
      v10 = v62;
      v7 = _swiftEmptyArrayStorage;
LABEL_16:
      sub_100004074(&qword_10039E270, &unk_1002C3BE0);
      sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0, &protocol conformance descriptor for [A]);
      v26 = BidirectionalCollection<>.joined(separator:)();
      v28 = v27;

      v65 = v10;
      v30 = v10[2];
      v29 = v10[3];
      if (v30 >= v29 >> 1)
      {
        sub_10004E2DC((v29 > 1), v30 + 1, 1);
        v10 = v65;
      }

      v9 = v63 + 1;
      v10[2] = v30 + 1;
      v31 = &v10[2 * v30];
      v31[4] = v26;
      v31[5] = v28;
      if (v63 + 1 == v60)
      {
        v4 = v55;
        a4 = v56;
        v32 = v10;
        goto LABEL_21;
      }
    }
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_21:
  v34 = v4[7];
  v33 = v4[8];
  sub_10000BE18(v4 + 4, v34);
  v7 = a4;
  v35 = sub_10014D0AC(a2, a3, a4);
  v37 = v36;
  v65 = v32;
  v38 = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  v39 = sub_1000430C8(&qword_10039FBD8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_10009A268(v35, v37, &v65, v34, v38, v33, v39);
  if (v58)
  {
    sub_100009548(v35, v37);

    if (qword_10039D368 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  sub_100009548(v35, v37);

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_10000403C(v48, qword_10039FC08);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_100008F6C(a3, v7, &v65);
    *(v51 + 12) = 2080;
    v52 = Array.debugDescription.getter();
    v54 = sub_100008F6C(v52, v53, &v65);

    *(v51 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v49, v50, "Saved %s certificates: %s", v51, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10004B00C@<X0>(unint64_t a1@<X8>)
{
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BE18(v1 + 9, v1[12]);
  sub_100043268(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000BD44(v6, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_10039FC08);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to schedule renewal. Could not calculate secure now", v14, 2u);
    }

    sub_10004F3D0();
    swift_allocError();
    *v15 = 6;
    return swift_willThrow();
  }

  else
  {
    v41 = a1;
    (*(v8 + 32))(v10, v6, v7);
    Date.timeIntervalSinceReferenceDate.getter();
    v43 = v17 + 604800.0;
    v18 = sub_100146E20(&v43, &v44);
    v42 = v7;
    v19 = v10;
    v20 = v18;
    v21 = v8;
    v23 = v22;
    v24 = v1[7];
    v25 = v1[8];
    sub_10000BE18(v1 + 4, v24);
    (*(v25 + 40))(v1[2], v1[3], v20, v23, v24, v25);
    if (v2)
    {
      v39 = v21;
      v40 = v19;
      v26 = v42;
      v41 = v23;
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000403C(v27, qword_10039FC08);
      swift_errorRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      v30 = v26;
      if (os_log_type_enabled(v28, v29))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43 = *&v32;
        *v31 = 136315138;
        swift_getErrorValue();
        v33 = Error.localizedDescription.getter();
        v35 = sub_100008F6C(v33, v34, &v43);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Could not save certificate renewal deadline: %s", v31, 0xCu);
        sub_10000959C(v32);
      }

      v36 = v41;
      v37 = v39;
      sub_10004F3D0();
      swift_allocError();
      *v38 = 8;
      swift_willThrow();
      sub_100009548(v20, v36);

      return (*(v37 + 8))(v40, v30);
    }

    else
    {
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_100009548(v20, v23);
      return (*(v21 + 8))(v19, v42);
    }
  }
}

uint64_t sub_10004B520@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v4 = v1[8];
  sub_10000BE18(v1 + 4, v3);
  v5 = (*(v4 + 32))(v1[2], v1[3], v3, v4);
  v6 = v5;
  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_13;
    }

    if (v5 <= v5 >> 32)
    {
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
LABEL_21:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_22;
      }

      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (!__OFSUB__(v6, v17))
      {
        v18 = v6 - v17 + v16;
        result = __DataStorage._length.getter();
        if (v18)
        {
          goto LABEL_13;
        }

LABEL_22:
        __break(1u);
        return result;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 == 2)
  {
    v10 = *(v5 + 16);
    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
LABEL_19:
      __DataStorage._length.getter();
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v13))
    {
      goto LABEL_17;
    }

    v14 = v10 - v13 + v12;
    __DataStorage._length.getter();
    if (!v14)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_100009548(v6, v8);
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);

  return v21(a1, 0, 1, v20);
}

unint64_t sub_10004B78C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  v8 = v3[8];
  sub_10000BE18(v3 + 4, v3[7]);
  v9 = sub_10014D0AC(a1, a2, a3);
  v11 = v10;
  v12 = (*(v8 + 32))();
  v14 = v13;
  sub_100009548(v9, v11);
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  if (v15)
  {
    type metadata accessor for SecCertificate(0);
    v16 = static SecCertificateRef.parseList(pemRepresentation:)();

    if (v16)
    {
      if (v16 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        sub_100009548(v12, v14);
        return v16;
      }
    }
  }

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000403C(v18, qword_10039FC08);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "malformed certificate", v21, 2u);
  }

  sub_100009548(v12, v14);

  return 0;
}

char *sub_10004BAFC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = v3[7];
  v8 = v3[8];
  sub_10000BE18(v3 + 4, v7);
  v9 = sub_10014D0AC(a1, a2, a3);
  v11 = v10;
  v12 = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_1000430C8(&qword_10039FBE8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_10009A1A4(v9, v11, v7, v12, v8);
  sub_100009548(v9, v11);
  v19 = v28;
  v20 = v28[2];
  if (v20)
  {
    v21 = 0;
    v18 = _swiftEmptyArrayStorage;
LABEL_7:
    v22 = (v19 + 40 + 16 * v21);
    v23 = v21;
    while (1)
    {
      if (v23 >= *(v19 + 16))
      {
        __break(1u);
        swift_once();
        v13 = type metadata accessor for Logger();
        sub_10000403C(v13, qword_10039FC08);

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v28 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_100008F6C(a2, v19, &v28);
          _os_log_impl(&_mh_execute_header, v14, v15, "No stored %s certificates", v16, 0xCu);
          sub_10000959C(v17);
        }

        return 0;
      }

      a2 = *v22;
      type metadata accessor for SecCertificate(0);

      v24 = static SecCertificateRef.parseList(pemRepresentation:)();

      if (v24)
      {
        if (v24 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_15:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_10004D96C(0, *(v18 + 2) + 1, 1, v18);
            }

            v26 = *(v18 + 2);
            v25 = *(v18 + 3);
            a2 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              v18 = sub_10004D96C((v25 > 1), v26 + 1, 1, v18);
            }

            v21 = v23 + 1;
            *(v18 + 2) = a2;
            *&v18[8 * v26 + 32] = v24;
            if (v20 - 1 != v23)
            {
              goto LABEL_7;
            }

            goto LABEL_22;
          }
        }

        else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }
      }

      ++v23;
      v22 += 2;
      if (v20 == v23)
      {
        goto LABEL_22;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_22:

  return v18;
}

uint64_t sub_10004BED8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_10039FC08);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v39 = a5;
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    v38 = a4;
    v19 = sub_100008F6C(v17, v18, &v43);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1002C1660;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 32) = a2;
    *(v20 + 40) = a3;

    v21 = showFunction(signature:_:)(0xD000000000000027, 0x8000000100347EB0, v20);
    v23 = v22;

    v24 = v21;
    a4 = v38;
    v25 = sub_100008F6C(v24, v23, &v43);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();

    a5 = v39;
  }

  result = sub_100050224(a4, a5);
  if (!v9)
  {
    v30 = result;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = Data.sha256Digest.getter();
    v40 = v35;
    v36 = sub_10004C2B0(a1, a2, a3, v30, v31, v32, v33);
    v37 = SecKeyRef.verifySignature(algorithm:data:signature:)();

    if ((v37 & 1) == 0)
    {
      sub_100020C74(10009, 0, 0, 0);
      swift_willThrow();
    }

    sub_100009548(v34, v40);
    sub_100009548(v30, v31);
    return sub_100009548(v32, v33);
  }

  return result;
}

uint8_t *sub_10004C2B0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (qword_10039D368 != -1)
  {
LABEL_68:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000403C(v12, qword_10039FC08);
  sub_1000094F4(a4, a5);
  sub_1000094F4(a6, a7);

  v65 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  sub_100009548(a4, a5);
  sub_100009548(a6, a7);
  v70 = a6;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    a4 = a7;
    v19 = sub_100008F6C(v17, v18, &v71);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1002C1670;
    *(v20 + 56) = &type metadata for String;
    v62 = v15;
    v21 = a2;
    *(v20 + 32) = a2;
    *(v20 + 40) = a3;

    v22 = Data.hexString()();
    *(v20 + 88) = &type metadata for String;
    *(v20 + 64) = v22;
    v23 = showFunction(signature:_:)(0xD000000000000021, 0x8000000100347E60, v20);
    v25 = v24;

    v26 = sub_100008F6C(v23, v25, &v71);

    *(v16 + 14) = v26;
    a7 = a4;
    _os_log_impl(&_mh_execute_header, v14, v62, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = a2;
  }

  v27 = v68;
  v28 = sub_10004671C(a1, v21, a3);
  if (!v69)
  {
    a6 = v28;
    v68 = 0;
    a5 = *(v28 + 16);
    if (a5)
    {
      v29 = 0;
      if (v70)
      {
        v30 = 0;
      }

      else
      {
        v30 = a7 == 0xC000000000000000;
      }

      v31 = !v30;
      LODWORD(a2) = v31;
      v69 = a7 >> 62;
      v32 = __OFSUB__(HIDWORD(v70), v70);
      v63 = v32;
      a1 = BYTE6(a7);
      v64 = v28;
      do
      {
        if (v29 >= *(a6 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v33 = *(a6 + 8 * v29 + 32);
        if ((v33 & 0xC000000000000001) != 0)
        {

          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v34 = *(v33 + 32);

          v35 = v34;
        }

        v36 = v35;
        v27 = SecCertificateRef.publicKey.getter();

        if (!v27)
        {
LABEL_58:

          v27 = v65;
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v58, v59))
          {
            goto LABEL_61;
          }

          v27 = swift_slowAlloc();
          *v27 = 0;
          v60 = "Could not get public key from certificate";
LABEL_60:
          _os_log_impl(&_mh_execute_header, v58, v59, v60, v27, 2u);

          goto LABEL_61;
        }

        v37 = SecKeyRef.externalRepresentation.getter();
        if (v38 >> 60 == 15)
        {

          goto LABEL_58;
        }

        a4 = v37;
        a3 = v38;
        result = Data.sha256Digest.getter();
        v41 = result;
        v42 = v40;
        v43 = v40 >> 62;
        if (v40 >> 62 == 3)
        {
          if (result)
          {
            v44 = 0;
          }

          else
          {
            v44 = v40 == 0xC000000000000000;
          }

          v45 = v69;
          v47 = !v44 || v69 < 3;
          if (((v47 | a2) & 1) == 0)
          {

            sub_10001A074(a4, a3);
            sub_100009548(0, 0xC000000000000000);
            return v27;
          }

          v48 = 0;
        }

        else
        {
          v45 = v69;
          if (v43)
          {
            if (v43 == 1)
            {
              LODWORD(v48) = HIDWORD(result) - result;
              if (__OFSUB__(HIDWORD(result), result))
              {
                goto LABEL_72;
              }

              v48 = v48;
            }

            else
            {
              v50 = *(result + 2);
              v49 = *(result + 3);
              v51 = __OFSUB__(v49, v50);
              v48 = v49 - v50;
              if (v51)
              {
                goto LABEL_71;
              }
            }
          }

          else
          {
            v48 = BYTE6(v40);
          }
        }

        if (v45 > 1)
        {
          if (v45 != 2)
          {
            if (!v48)
            {
              goto LABEL_63;
            }

LABEL_18:

            sub_10001A074(a4, a3);
            sub_100009548(v41, v42);
            goto LABEL_19;
          }

          v54 = *(v70 + 16);
          v53 = *(v70 + 24);
          v51 = __OFSUB__(v53, v54);
          v52 = v53 - v54;
          if (v51)
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            return result;
          }
        }

        else
        {
          v52 = a1;
          if (v45)
          {
            v52 = HIDWORD(v70) - v70;
            if (v63)
            {
              goto LABEL_70;
            }
          }
        }

        if (v48 != v52)
        {
          goto LABEL_18;
        }

        if (v48 < 1)
        {
LABEL_63:

          sub_10001A074(a4, a3);
          sub_100009548(v41, v42);
          return v27;
        }

        sub_1000094F4(v70, a7);
        v55 = a7;
        v57 = sub_10004D320(v41, v42, v70, a7, v56);
        sub_10001A074(a4, a3);
        sub_100009548(v41, v42);
        if (v57)
        {

          return v27;
        }

        a7 = v55;
        a6 = v64;
LABEL_19:
        ++v29;
      }

      while (a5 != v29);
    }

    v27 = v65;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v60 = "No stored public key matches input token keyIdentifier";
      goto LABEL_60;
    }

LABEL_61:

    sub_10004F3D0();
    swift_allocError();
    *v61 = 3;
    swift_willThrow();
  }

  return v27;
}

uint64_t sub_10004C93C()
{
  if (*v0)
  {
    return 0x746E65644979656BLL;
  }

  else
  {
    return 0x727574616E676973;
  }
}

uint64_t sub_10004C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65644979656BLL && a2 == 0xED00007265696669)
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

uint64_t sub_10004CA74(uint64_t a1)
{
  v2 = sub_100050CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004CAB0(uint64_t a1)
{
  v2 = sub_100050CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004CAEC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100050AC0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10004CB1C()
{
  sub_100009548(*(v0 + 16), *(v0 + 24));
  sub_10000959C((v0 + 32));
  sub_10000959C((v0 + 72));
  sub_10000959C((v0 + 112));
  sub_10000959C((v0 + 152));

  sub_10000959C((v0 + 208));

  sub_10000959C((v0 + 256));
  v1 = OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize256;
  v2 = type metadata accessor for HPKE.Ciphersuite();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize384, v2);
  v3(v0 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize521, v2);
  return v0;
}

uint64_t sub_10004CC18()
{
  sub_10004CB1C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CertificateManager(uint64_t a1)
{
  result = qword_10039FC48;
  if (!qword_10039FC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004CCC4(uint64_t a1)
{
  result = type metadata accessor for HPKE.Ciphersuite();
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

double sub_10004CEA8@<D0>(_OWORD *a5@<X8>)
{
  sub_100004074(&qword_10039FE20, &qword_1002C36E0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v5)
  {
    result = *&v8;
    *a5 = v8;
    a5[1] = v9;
    a5[2] = v10;
  }

  return result;
}

void sub_10004CF70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[27];
  if (v9 && (v10 = a1[26], v25 = 0, sub_10004F190(v10, v9, &v25)))
  {
    v11 = v2[10];
    v12 = v2[11];
    sub_10000BE18(v2 + 7, v11);
    (*(v12 + 24))(v11, v12);
    Date.init(timeIntervalSince1970:)();
    if (qword_10039D658 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000403C(v13, qword_1003A42D8);
    (*(v6 + 16))(v8, a2, v5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v16 = 136315650;
      *(v16 + 4) = sub_100008F6C(0xD000000000000017, 0x8000000100347E20, &v25);
      *(v16 + 12) = 2080;
      v17 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100347E40, _swiftEmptyArrayStorage);
      v19 = sub_100008F6C(v17, v18, &v25);

      *(v16 + 14) = v19;
      *(v16 + 22) = 2080;
      sub_1000508C0(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v6 + 8))(v8, v5);
      v23 = sub_100008F6C(v20, v22, &v25);

      *(v16 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s result: %s", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_100020C74(10007, 0xD000000000000022, 0x8000000100347DF0, 0);
    swift_willThrow();
  }
}

uint64_t sub_10004D320(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v11 = sub_10004F288(v9, v10, a5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100009548(a3, a4);
    return v11 & 1;
  }

  if (v8 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1000F5728(v14, a3, a4, &v13);
  v11 = v5;
  sub_100009548(a3, a4);
  if (!v5)
  {
    v11 = v13;
  }

  return v11 & 1;
}

char *sub_10004D4B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_1003A5D40, &qword_1002C1740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004D5BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE50, &unk_1002C3710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004D6C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004074(&qword_10039FE68, &qword_1002C3730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004D810(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE58, &qword_1002C96F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004D96C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004DA78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE48, &qword_1002C3708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10004DB7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004DCB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FEB0, &unk_1002C37A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10004DDCC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100004074(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_10004DEE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100004074(a5, a6);
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

char *sub_10004E0BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE78, &qword_1002C3740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_10004E1BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE60, &qword_1002C3728);
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
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004E2DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004E4C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E2FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004E5D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E31C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004E71C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E33C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EEC0(a1, a2, a3, *v3, &qword_10039FE40, &unk_1002C36F8, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

void *sub_10004E380(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EEC0(a1, a2, a3, *v3, &qword_10039E2D8, &qword_1002C3720, &type metadata accessor for TLV);
  *v3 = result;
  return result;
}

void *sub_10004E3C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004E828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E3E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004E95C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E404(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EAA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E424(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E444(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EDB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E464(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EEC0(a1, a2, a3, *v3, &qword_10039FE88, &qword_1002C3758, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_10004E4A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F09C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E4C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_1003A5D40, &qword_1002C1740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004E5D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FEE0, &qword_1002C37E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004074(&qword_10039FEE8, &qword_1002C37E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004E71C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004E828(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004074(&qword_10039FE90, &unk_1002C5970);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004E95C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004EAA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE98, &unk_1002C3770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004EBB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FE48, &qword_1002C3708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10004ECB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FEB8, &qword_1002C3DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_10004EDB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039FEA8, &qword_1002C3798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004EEC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100004074(a5, a6);
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

char *sub_10004F09C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

BOOL sub_10004F190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_10004F288(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = __DataStorage._bytes.getter();
  v12 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000F5728(v12, a5, a6, &v14);
  if (!v6)
  {
    return v14;
  }

  return v13;
}

unint64_t sub_10004F340()
{
  result = qword_10039FE28;
  if (!qword_10039FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FE28);
  }

  return result;
}

unint64_t sub_10004F3D0()
{
  result = qword_10039FE38;
  if (!qword_10039FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FE38);
  }

  return result;
}

uint64_t sub_10004F424(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F494(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_10004F504@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *sub_10004F5D8(uint64_t a1)
{
  v59 = type metadata accessor for HPKE.AEAD();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for HPKE.KDF();
  v57 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for HPKE.KEM();
  v60 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v62);
  v61 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v54 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v67;
  sub_1000E5EA8(v86);
  if (v18)
  {
    v67 = v18;

    return v8;
  }

  v48 = v12;
  v49 = v8;
  v51 = v17;
  v52 = v14;
  v53 = v11;
  v50 = v6;
  v20 = v64;
  v19 = v65;
  v21 = v63;
  v8 = v66;
  sub_1000E650C(v84);
  sub_1000E4518(v83);
  sub_1000E6B70(v80);
  sub_1000E71D4();
  v47 = v23;
  sub_1000E7738(v79);
  v67 = 0;
  v45[1] = a1;
  v24 = v87;
  v46 = v88;
  sub_10000BE18(v86, v87);
  v25 = v67;
  sub_1000C7DD8(v24, v46);
  v67 = v25;
  if (v25)
  {

    sub_10000959C(v79);
    sub_10000959C(v83);
    sub_10000959C(v80);
    sub_10000959C(v84);
    sub_10000959C(v86);
    return v8;
  }

  sub_10000BE18(v84, v85);
  sub_10014E718(v77);
  sub_10000BE18(v84, v85);
  sub_10014E988(v76);
  sub_10000CCE4(v83, v75);
  v26 = v81;
  v46 = v82;
  sub_10000BE18(v80, v81);
  sub_1000C289C(1u, v26, v46);
  sub_10000CCE4(v79, v73);
  v46 = sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  v45[0] = "startBackgroundCertsRefresh()";
  static DispatchQoS.background.getter();
  (*(v54 + 104))(v52, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v48);
  v68[0] = _swiftEmptyArrayStorage;
  v54 = sub_1000508C0(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10001A570(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = sub_100022438(v75, v75[3]);
  v53 = v45;
  __chkstk_darwin(v27);
  v29 = (v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v32 = type metadata accessor for DefaultSecureTimeKeeper();
  v72[3] = v32;
  v72[4] = &off_100384E70;
  v72[0] = v31;
  type metadata accessor for CertificateManager(0);
  v54 = swift_allocObject();
  v33 = sub_100022438(v72, v32);
  v51 = v45;
  __chkstk_darwin(v33);
  v35 = (v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v70 = v32;
  v71 = &off_100384E70;
  *&v69 = v37;
  v38 = v49;
  static String.Encoding.utf8.getter();
  v48 = String.data(using:allowLossyConversion:)();
  v40 = v39;
  result = (v56)[1](v38, v50);
  if (v40 >> 60 != 15)
  {
    v41 = v54;
    *(v54 + 16) = v48;
    *(v41 + 24) = v40;
    v68[4] = nullsub_1;
    v68[5] = 0;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 1107296256;
    v68[2] = sub_100003974;
    v68[3] = &unk_100381398;
    v56 = _Block_copy(v68);
    v89 = _swiftEmptyArrayStorage;
    v50 = sub_1000508C0(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    *(v54 + 192) = DispatchWorkItem.init(flags:block:)();
    v56 = OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize256;
    v42 = *(v60 + 104);
    v60 += 104;
    v61 = v42;
    (v42)(v21, enum case for HPKE.KEM.P256_HKDF_SHA256(_:), v19);
    v62 = *(v57 + 104);
    v62(v20, enum case for HPKE.KDF.HKDF_SHA256(_:), v8);
    v57 = *(v55 + 104);
    v43 = v58;
    (v57)(v58, enum case for HPKE.AEAD.AES_GCM_128(_:), v59);
    v8 = v54;
    HPKE.Ciphersuite.init(kem:kdf:aead:)();
    v55 = OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize384;
    (v61)(v21, enum case for HPKE.KEM.P384_HKDF_SHA384(_:), v65);
    v62(v20, enum case for HPKE.KDF.HKDF_SHA384(_:), v66);
    LODWORD(v56) = enum case for HPKE.AEAD.AES_GCM_256(_:);
    v44 = v57;
    (v57)(v43);
    HPKE.Ciphersuite.init(kem:kdf:aead:)();
    v55 = OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize521;
    (v61)(v21, enum case for HPKE.KEM.P521_HKDF_SHA512(_:), v65);
    v62(v20, enum case for HPKE.KDF.HKDF_SHA512(_:), v66);
    v44(v43, v56, v59);
    HPKE.Ciphersuite.init(kem:kdf:aead:)();

    sub_10000959C(v79);
    sub_10000959C(v83);
    sub_100029790(&v78, (v8 + 32));
    sub_100029790(v77, (v8 + 112));
    sub_100029790(v76, (v8 + 152));
    sub_100029790(&v69, (v8 + 72));
    sub_100029790(&v74, (v8 + 208));
    *(v8 + 31) = v47;
    sub_100029790(v73, (v8 + 256));
    *(v8 + 25) = v52;
    sub_10000959C(v72);
    sub_10000959C(v75);
    sub_10000959C(v80);
    sub_10000959C(v84);
    sub_10000959C(v86);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100050224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (String.isValidBase64()())
  {
    v4 = Data.init(base64Encoded:options:)();
    v6 = v5;

    if (v6 >> 60 != 15)
    {
      type metadata accessor for JSONDecoder();
      sub_10009A814(_swiftEmptyArrayStorage);
      sub_100050760();
      static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
      if (v2)
      {

        if (qword_10039D368 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_10000403C(v7, qword_10039FC08);
        v8 = Logger.logObject.getter();
        v3 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v3))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, v3, "ValidationToken.init: Input not decodable to JSON", v9, 2u);
        }

        v10 = 0x8000000100347F00;
        v11 = 0xD00000000000001BLL;
      }

      else
      {

        v16 = Data.init(hexString:)();
        if (v17 >> 60 != 15)
        {
          v3 = v16;
          v22 = v17;

          Data.init(hexString:)();
          v24 = v23;

          if (v24 >> 60 == 15)
          {
            if (qword_10039D368 != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            sub_10000403C(v25, qword_10039FC08);
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&_mh_execute_header, v26, v27, "ValidationToken.init: keyIdentifier not decodable from hexString", v28, 2u);
            }

            sub_100020C74(10005, 0xD00000000000002ALL, 0x8000000100347F50, 0);
            swift_willThrow();
            sub_10001A074(v3, v22);
          }

          goto LABEL_22;
        }

        if (qword_10039D368 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_10000403C(v18, qword_10039FC08);
        v19 = Logger.logObject.getter();
        v3 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v3))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v19, v3, "ValidationToken.init: signature not decodable from hexString", v20, 2u);
        }

        v11 = 0xD000000000000026;
        v10 = 0x8000000100347F20;
      }

      sub_100020C74(10005, v11, v10, 0);
      swift_willThrow();
LABEL_22:
      sub_10001A074(v4, v6);
      return v3;
    }
  }

  else
  {
  }

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_10039FC08);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "ValidationToken.init: Input not decodable from Base64", v15, 2u);
  }

  sub_100020C74(10005, 0xD00000000000001FLL, 0x8000000100347EE0, 0);
  swift_willThrow();
  return v3;
}

unint64_t sub_100050760()
{
  result = qword_10039FEC0;
  if (!qword_10039FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FEC0);
  }

  return result;
}

uint64_t sub_1000507D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050808()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005084C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000508C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CertificateManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CertificateManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100050A6C()
{
  result = qword_10039FEF8;
  if (!qword_10039FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FEF8);
  }

  return result;
}

uint64_t sub_100050AC0(void *a1)
{
  v3 = sub_100004074(&qword_10039FF00, &qword_1002C3928);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100050CA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000959C(a1);
  return v7;
}

unint64_t sub_100050CA4()
{
  result = qword_10039FF08;
  if (!qword_10039FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FF08);
  }

  return result;
}

unint64_t sub_100050D0C()
{
  result = qword_10039FF10;
  if (!qword_10039FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FF10);
  }

  return result;
}

unint64_t sub_100050D64()
{
  result = qword_10039FF18;
  if (!qword_10039FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FF18);
  }

  return result;
}

unint64_t sub_100050DBC()
{
  result = qword_10039FF20;
  if (!qword_10039FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FF20);
  }

  return result;
}

id sub_100050E24(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v54 - v8;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  aBlock[7] = sub_10000403C(v10, qword_10039FF28);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  v13 = os_log_type_enabled(v11, v12);
  v55 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v54 = v1;
    v15 = v14;
    aBlock[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, aBlock);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1002C1660;
    *(v19 + 56) = &type metadata for Bool;
    *(v19 + 32) = a1 & 1;
    v20 = showFunction(signature:_:)(0xD000000000000021, 0x8000000100348810, v19);
    v22 = v21;

    v23 = sub_100008F6C(v20, v22, aBlock);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();

    v2 = v54;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_10039D708 != -1)
    {
      swift_once();
    }

    v24 = static GlobalState.shared;
    result = [*(static GlobalState.shared + 88) lock];
    v26 = *(v24 + 104);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      *(v24 + 104) = v28;
      while (*(v24 + 96) > 0 || *(v24 + 112) == 1)
      {
        result = [*(v24 + 88) wait];
      }

      v29 = *(v24 + 104);
      v27 = __OFSUB__(v29, 1);
      v30 = v29 - 1;
      if (!v27)
      {
        *(v24 + 104) = v30;
        *(v24 + 112) = 1;
        [*(v24 + 88) unlock];
        v31 = *(v24 + 16);
        v32 = *(v24 + 24);
        v33 = *(sub_100173EA8() + 2);

        *(v24 + 16) = v33;
        *(v24 + 24) = 0;
        sub_100173040();
        [*(v24 + 88) lock];
        *(v24 + 112) = 0;
        [*(v24 + 88) broadcast];
        result = [*(v24 + 88) unlock];
        if ((v32 & 1) != 0 || v31 < 1 || v33)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

LABEL_17:
  v34 = objc_opt_self();
  v35 = [v34 sharedHardwareManager];
  v36 = [v35 getHwSupport];

  if (v36 == 2)
  {
    static DispatchTime.now()();
    v37 = v55;
    + infix(_:_:)();
    v38 = *(v56 + 8);
    v39 = v7;
    v40 = v57;
    v38(v39, v57);
    v41 = v37;
    v42 = [v34 sharedHardwareManager];
    v43 = NFHardwareManager.startSecureElementManagerSession(deadline:)();
    if (!v2)
    {
      v51 = v43;

      v52 = v51;
      sub_100061524(v52);

      aBlock[4] = sub_10010051C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003974;
      aBlock[3] = &unk_100381798;
      v53 = _Block_copy(aBlock);
      [v52 endSessionWithCompletion:v53];
      _Block_release(v53);

      return (v38)(v41, v40);
    }

    v38(v37, v40);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to remove muirfield: Session Busy", v46, 2u);
    }

    v47 = 2026;
  }

  else
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to remove muirfield: NFC disabled", v50, 2u);
    }

    v47 = 2041;
  }

  sub_100020148(v47, 0, 0, 0);
  return swift_willThrow();
}

void *sub_1000514E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v47 = _swiftEmptyArrayStorage;
  sub_10004E3E4(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v32 = v3 + 72;
  v33 = v1;
  v34 = v8;
  v35 = v3 + 64;
  v36 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v37 = v7;
    v11 = *(v3 + 48);
    v12 = *(v3 + 56);
    v13 = v2;
    v14 = *(v11 + 8 * v6);
    sub_10000BDA4(v12 + 32 * v6, v44);
    v42 = v14;
    sub_100019D3C(v44, &v43);
    sub_100065074(&v42, &v40, &qword_1003A01B0, &unk_1002C3C10);
    v15 = v40;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v19 = v14;
    v2 = v13;

    *&v45 = v16;
    *(&v45 + 1) = v18;
    sub_100065074(&v42, &v38, &qword_1003A01B0, &unk_1002C3C10);

    sub_100019D3C(&v39, v46);
    sub_10000959C(v41);
    result = sub_10000BD44(&v42, &qword_1003A01B0, &unk_1002C3C10);
    v47 = v13;
    v21 = v13[2];
    v20 = v13[3];
    if (v21 >= v20 >> 1)
    {
      result = sub_10004E3E4((v20 > 1), v21 + 1, 1);
      v2 = v47;
    }

    v2[2] = v21 + 1;
    v22 = &v2[6 * v21];
    v23 = v45;
    v24 = v46[1];
    v22[3] = v46[0];
    v22[4] = v24;
    v22[2] = v23;
    v3 = v36;
    v9 = 1 << *(v36 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v35;
    v25 = *(v35 + 8 * v10);
    if ((v25 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v34;
    if (v34 != *(v36 + 36))
    {
      goto LABEL_26;
    }

    v26 = v25 & (-2 << (v6 & 0x3F));
    if (v26)
    {
      v9 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v10 << 6;
      v28 = v10 + 1;
      v29 = (v32 + 8 * v10);
      while (v28 < (v9 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_100064AB0(v6, v34, 0);
          v9 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_100064AB0(v6, v34, 0);
    }

LABEL_4:
    v7 = v37 + 1;
    v6 = v9;
    if (v37 + 1 == v33)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100051808(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  sub_10000BE18((a2 + 16), *(a2 + 40));
  sub_100023074(a3, *a1);

  *a1 = &_swiftEmptyDictionarySingleton;

  a1[1] = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100051888()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039FF28);
  sub_10000403C(v0, qword_10039FF28);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

uint64_t sub_1000518F4()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_10039FF40);
  v1 = sub_10000403C(v0, qword_10039FF40);
  if (qword_10039D738 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1000519BC()
{
  v1 = v0;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039FF28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000959C(v1 + 3);
  sub_10000959C(v1 + 8);
  sub_10000959C(v1 + 13);
  sub_10000959C(v1 + 18);
  sub_10000959C(v1 + 23);
  sub_10000959C(v1 + 28);
  sub_10000959C(v1 + 33);

  sub_10000959C(v1 + 40);
  sub_10000959C(v1 + 45);
  sub_10000959C(v1 + 50);
  sub_10000959C(v1 + 55);
  sub_10000959C(v1 + 60);
  sub_10000959C(v1 + 66);
  sub_10000959C(v1 + 71);
  sub_10000959C(v1 + 76);

  return v1;
}

uint64_t sub_100051C10()
{
  sub_1000519BC();

  return swift_deallocClassInstance();
}

void sub_100051C68(uint64_t (*a1)(char *, uint64_t, char *), void *a2, int a3, int a4, uint64_t a5, unint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v348 = a5;
  LODWORD(v344) = a4;
  v338 = a3;
  v343 = a1;
  v12 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v13 = __chkstk_darwin(v12 - 8);
  v327 = &v323 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v332 = &v323 - v15;
  v16 = type metadata accessor for UUID();
  v335 = *(v16 - 8);
  v336 = v16;
  v17 = __chkstk_darwin(v16);
  v328 = &v323 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v326 = &v323 - v20;
  v21 = __chkstk_darwin(v19);
  v325 = &v323 - v22;
  v23 = __chkstk_darwin(v21);
  v324 = &v323 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v323 - v26;
  __chkstk_darwin(v25);
  v333 = &v323 - v28;
  v330 = type metadata accessor for Configurator.StoreAndForwardState(0);
  v29 = __chkstk_darwin(v330);
  v329 = &v323 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v331 = &v323 - v31;
  v32 = type metadata accessor for OSSignpostID();
  v341 = *(v32 - 8);
  v342 = v32;
  v33 = __chkstk_darwin(v32);
  v340 = &v323 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v346 = (&v323 - v35);
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_10000403C(v36, qword_10039FF28);

  v345 = v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v347 = a2;
  if (v40)
  {
    v337 = v27;
    v339 = v9;
    v334 = v7;
    v41 = swift_slowAlloc();
    v357[0] = swift_slowAlloc();
    *v41 = 136315394;
    v42 = _typeName(_:qualified:)();
    v44 = sub_100008F6C(v42, v43, v357);

    *(v41 + 4) = v44;
    v45 = v347;
    *(v41 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v46 = swift_allocObject();
    v47 = v46;
    *(v46 + 16) = xmmword_1002C1690;
    if (v45)
    {
      v50 = String.redactedTokenFromBase64()();
      object = v50._object;
      countAndFlagsBits = v50._countAndFlagsBits;
      *(v47 + 56) = &type metadata for String;
      if (v50._object)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(v46 + 56) = &type metadata for String;
    }

    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
LABEL_11:
    *(v47 + 32) = countAndFlagsBits;
    *(v47 + 40) = object;
    *(v47 + 64) = v338 & 1;
    *(v47 + 96) = v344 & 1;
    *(v47 + 88) = &type metadata for Bool;
    *(v47 + 152) = &type metadata for String;
    v52 = v348;
    if (!a6)
    {
      v52 = 7104878;
    }

    v53 = 0xE300000000000000;
    if (a6)
    {
      v53 = a6;
    }

    *(v47 + 120) = &type metadata for Bool;
    *(v47 + 128) = v52;
    *(v47 + 136) = v53;

    v54 = showFunction(signature:_:)(0xD000000000000037, 0x80000001003487B0, v47);
    v56 = v55;

    v57 = sub_100008F6C(v54, v56, v357);

    *(v41 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s.%s", v41, 0x16u);
    swift_arrayDestroy();

    v8 = v334;
    v9 = v339;
    v27 = v337;
    v51 = v346;
    if (!a6)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v51 = v346;
  if (!a6)
  {
    goto LABEL_19;
  }

LABEL_16:
  v58 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v58 = v348 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {
    v75 = 0x8000000100348790;
    v73 = 2045;
    v74 = 0xD00000000000001CLL;
    goto LABEL_34;
  }

LABEL_19:
  swift_beginAccess();
  sub_10000BE18(v9 + 45, *(v9 + 48));
  if ((sub_1001392D0() & 1) == 0)
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Incorrect JCOP version", v61, 2u);
    }

    if (*(v9 + 312) == 1)
    {
      v62 = *(v9 + 38);
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v63 = swift_allocObject();
      *(v63 + 32) = 12;
      v64 = v63 + 32;
      *(v63 + 16) = xmmword_1002C1660;
      *(v63 + 64) = &type metadata for Int;
      *(v63 + 40) = 5;
      v65 = sub_100184144(v63);
      swift_setDeallocating();
      sub_10000BD44(v64, &qword_10039FED8, &unk_1002C37D0);
      v66 = swift_deallocClassInstance();
      v67 = *(v62 + 56);
      __chkstk_darwin(v66);
      v68 = (&v323 - 4);
      *(&v323 - 2) = v65;
      os_unfair_lock_lock((v67 + 32));
      sub_10006535C((v67 + 16));
      if (!v8)
      {
        os_unfair_lock_unlock((v67 + 32));

        v70 = *(v62 + 56);
        __chkstk_darwin(v69);
        *(&v323 - 2) = v62;
        *(&v323 - 8) = 3;
        os_unfair_lock_lock((v70 + 32));
        sub_1000653BC((v70 + 16));
        os_unfair_lock_unlock((v70 + 32));
        v71 = sub_10000BE18(v9 + 60, *(v9 + 63));
        v72 = sub_100020148(2033, 0, 0, 0);
        sub_10013F4E4(v72, *v71);

        v73 = 2033;
        v74 = 0;
        v75 = 0;
LABEL_34:
        sub_100020148(v73, v74, v75, 0);
        swift_willThrow();
        return;
      }

      goto LABEL_176;
    }
  }

  v323 = a6;
  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for OSSignposter();
  sub_10000403C(v76, qword_10039FF40);
  static OSSignpostID.exclusive.getter();
  v77 = OSSignposter.logHandle.getter();
  v78 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, v78, v80, "config-prepare-totalTime", "begin prepare", v79, 2u);
  }

  v81 = v341;
  v82 = v342;
  (*(v341 + 16))(v340, v51, v342);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v83 = OSSignpostIntervalState.init(id:isOpen:)();
  v84 = v51;
  v67 = v83;
  (*(v81 + 8))(v84, v82);
  v85 = *(v9 + 36);
  v86 = *(v9 + 37);
  sub_10000BE18(v9 + 33, v85);
  v62 = sub_100183EFC(_swiftEmptyArrayStorage);
  (*(v86 + 8))(3, 222, v62, v85, v86);

  v87 = v347;
  if (!v347)
  {
    v27 = v336;
    goto LABEL_38;
  }

  v337 = v27;
  v88 = v9;
  v9 = v8;
  v68 = *(v88 + 48);
  v339 = v88;
  v340 = v67;
  v89 = sub_10000BE18(v88 + 45, v68);
  v346 = &v323;
  v90 = *(v68 - 1);
  __chkstk_darwin(v89);
  v92 = &v323 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v92);
  v93 = *(*v92 + 16);

  v94 = [v93 serialNumber];
  if (!v94)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    os_unfair_lock_unlock(v27 + 8);
    __break(1u);
    goto LABEL_176;
  }

  v95 = v87;
  v96 = v94;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  (*(v90 + 8))(v92, v68);
  sub_10008C068(v343, v95, v97, v99, v358);
  v8 = v9;
  if (v9)
  {
    goto LABEL_45;
  }

  v100 = v332;
  sub_10008B618(v332);
  sub_10006413C(v358);
  v101 = v335;
  v27 = v336;
  if ((*(v335 + 48))(v100, 1, v336) == 1)
  {
    sub_10000BD44(v100, &qword_1003A0178, &unk_1002C3BB0);
    v9 = v339;
    v67 = v340;
LABEL_38:
    v62 = v323;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "kernel token nil or has no saftpid", v104, 2u);
    }

    if (v344)
    {
      v340 = v67;
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "this kernel token doesn't support StoreAndForward", v107, 2u);
      }

      v108 = *(v9 + 38);
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v109 = swift_allocObject();
      *(v109 + 32) = 12;
      v62 = v109 + 32;
      *(v109 + 16) = xmmword_1002C1660;
      *(v109 + 64) = &type metadata for Int;
      *(v109 + 40) = 13;
      v110 = sub_100184144(v109);
      swift_setDeallocating();
      sub_10000BD44(v62, &qword_10039FED8, &unk_1002C37D0);
      v111 = swift_deallocClassInstance();
      v67 = *(v108 + 56);
      __chkstk_darwin(v111);
      v68 = (&v323 - 4);
      *(&v323 - 2) = v110;
      os_unfair_lock_lock((v67 + 32));
      sub_10006535C((v67 + 16));
      if (!v8)
      {
        os_unfair_lock_unlock((v67 + 32));

        v113 = *(v108 + 56);
        __chkstk_darwin(v112);
        *(&v323 - 2) = v108;
        *(&v323 - 8) = 3;
        os_unfair_lock_lock((v113 + 32));
        sub_1000653BC((v113 + 16));
        os_unfair_lock_unlock((v113 + 32));
        sub_1000245C8(&off_10037E2B0);
        sub_100020148(2035, 0xD00000000000001CLL, 0x8000000100348650, 0);
        swift_willThrow();
LABEL_45:
        sub_10005500C(v340);
LABEL_111:

        return;
      }

LABEL_176:
      os_unfair_lock_unlock((v67 + 32));
      __break(1u);
      goto LABEL_177;
    }

    sub_10005535C(0);
    if (!v8)
    {
      v114 = v331;
      swift_storeEnumTagMultiPayload();
      v115 = v335;
      goto LABEL_48;
    }

LABEL_110:
    sub_10005500C(v67);
    goto LABEL_111;
  }

  v121 = v333;
  (*(v101 + 32))(v333, v100, v27);
  v122 = *(v101 + 16);
  v123 = v337;
  v346 = (v101 + 16);
  v62 = v122;
  v122(v337, v121, v27);
  v124 = v101;
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v125, v126))
  {
    LODWORD(v343) = v126;
    v334 = 0;
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v351[0] = v128;
    *v127 = 136315138;
    v129 = UUID.uuidString.getter();
    v355[0] = 0;
    v355[1] = 0xE000000000000000;
    v131 = HIBYTE(v130) & 0xF;
    if ((v130 & 0x2000000000000000) == 0)
    {
      v131 = v129 & 0xFFFFFFFFFFFFLL;
    }

    v357[0] = v129;
    v357[1] = v130;
    v357[2] = 0;
    v357[3] = v131;
    v132 = String.Iterator.next()();
    v9 = v62;
    if (v132.value._object)
    {
      v133 = v132.value._countAndFlagsBits;
      v134 = v132.value._object;
      do
      {
        Character.hexDigitValue.getter();
        if ((v136 & 1) == 0)
        {
          v137._countAndFlagsBits = v133;
          v137._object = v134;
          String.append(_:)(v137);
        }

        v135 = String.Iterator.next()();
        v133 = v135.value._countAndFlagsBits;
        v134 = v135.value._object;
      }

      while (v135.value._object);
    }

    v153 = v336;
    v347 = *(v335 + 8);
    (v347)(v337, v336);
    v154 = sub_100008F6C(v355[0], v355[1], v351);

    *(v127 + 4) = v154;
    _os_log_impl(&_mh_execute_header, v125, v343, "kernel token contains SAF tpid: %s", v127, 0xCu);
    sub_10000959C(v128);
    v27 = v153;

    v121 = v333;
    v8 = v334;
    if (!v323)
    {
      goto LABEL_71;
    }
  }

  else
  {

    v347 = *(v124 + 8);
    (v347)(v123, v27);
    v9 = v62;
    if (!v323)
    {
LABEL_71:
      sub_100020148(2035, 0xD000000000000022, 0x8000000100348670, 0);
      swift_willThrow();
      (v347)(v121, v27);
      goto LABEL_45;
    }
  }

  sub_10000BE18(v339 + 13, *(v339 + 16));
  sub_10003D678(v121, &v359);
  if (!v366)
  {
    sub_100041D1C(&v359);
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&_mh_execute_header, v160, v161, "Did not find SAF profile in cache", v162, 2u);
    }

    v163 = *(v339 + 38);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v164 = swift_allocObject();
    *(v164 + 32) = 12;
    v62 = v164 + 32;
    *(v164 + 16) = xmmword_1002C1660;
    *(v164 + 64) = &type metadata for Int;
    *(v164 + 40) = 11;
    v165 = sub_100184144(v164);
    swift_setDeallocating();
    sub_10000BD44(v62, &qword_10039FED8, &unk_1002C37D0);
    v166 = swift_deallocClassInstance();
    v67 = *(v163 + 56);
    __chkstk_darwin(v166);
    v68 = (&v323 - 4);
    *(&v323 - 2) = v165;
    os_unfair_lock_lock((v67 + 32));
    v167 = v8;
    sub_10006535C((v67 + 16));
    v168 = v340;
    if (!v167)
    {
      os_unfair_lock_unlock((v67 + 32));

      v170 = *(v163 + 56);
      __chkstk_darwin(v169);
      *(&v323 - 2) = v163;
      *(&v323 - 8) = 3;
      os_unfair_lock_lock((v170 + 32));
      sub_1000653BC((v170 + 16));
      os_unfair_lock_unlock((v170 + 32));
      sub_1000245C8(&off_10037E288);
      sub_100020148(2035, 0xD000000000000029, 0x80000001003486A0, 0);
      swift_willThrow();
      (v347)(v333, v336);
      sub_10005500C(v168);
      goto LABEL_111;
    }

    goto LABEL_176;
  }

  if ((v344 & 1) == 0)
  {
    sub_100041D1C(&v359);
    v171 = v339;
    v172 = *(v339 + 38);
    v62 = *(v172 + 56);
    os_unfair_lock_lock((v62 + 32));
    sub_10011C498(v62 + 16, 4);
    if (v8)
    {
LABEL_178:
      os_unfair_lock_unlock((v62 + 32));
      __break(1u);
      os_unfair_lock_unlock(v9 + 8);
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v62 + 32));
    sub_10005535C(0);
    v173 = 0;
    v9(v331, v121, v27);
    swift_storeEnumTagMultiPayload();
    sub_10000BE18(v171 + 13, *(v171 + 16));
    v186 = sub_10003EFB8(v121);
    if (v186)
    {
      v334 = 0;
      v187 = v325;
      v9(v325, v121, v27);
      v188 = Logger.logObject.getter();
      v189 = v27;
      v190 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v188, v190))
      {
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        v351[0] = v192;
        *v191 = 136315138;
        v193 = UUID.uuidString.getter();
        v355[0] = 0;
        v355[1] = 0xE000000000000000;
        v195 = HIBYTE(v194) & 0xF;
        if ((v194 & 0x2000000000000000) == 0)
        {
          v195 = v193 & 0xFFFFFFFFFFFFLL;
        }

        v357[0] = v193;
        v357[1] = v194;
        v357[2] = 0;
        v357[3] = v195;
        v196 = String.Iterator.next()();
        if (v196.value._object)
        {
          v197 = v196.value._countAndFlagsBits;
          v198 = v196.value._object;
          do
          {
            Character.hexDigitValue.getter();
            if ((v200 & 1) == 0)
            {
              v201._countAndFlagsBits = v197;
              v201._object = v198;
              String.append(_:)(v201);
            }

            v199 = String.Iterator.next()();
            v197 = v199.value._countAndFlagsBits;
            v198 = v199.value._object;
          }

          while (v199.value._object);
        }

        (v347)(v325, v336);
        v263 = sub_100008F6C(v355[0], v355[1], v351);

        *(v191 + 4) = v263;
        _os_log_impl(&_mh_execute_header, v188, v190, "saftpid exit SAF mode: %s", v191, 0xCu);
        sub_10000959C(v192);

        v121 = v333;
      }

      else
      {

        (v347)(v187, v189);
      }

      v264 = v339;
      sub_10000BE18(v339 + 13, *(v339 + 16));
      sub_10003F0D4(v121);
      v265 = *(v264 + 36);
      v266 = *(v264 + 37);
      sub_10000BE18(v264 + 33, v265);
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      v267 = swift_allocObject();
      *(v267 + 16) = xmmword_1002C1660;
      *(v267 + 32) = 0x64697074666173;
      *(v267 + 40) = 0xE700000000000000;
      v268 = UUID.uuidString.getter();
      *(v267 + 72) = &type metadata for String;
      *(v267 + 80) = &protocol witness table for String;
      *(v267 + 48) = v268;
      *(v267 + 56) = v269;
      v9 = sub_100184010(v267);
      swift_setDeallocating();
      sub_10000BD44(v267 + 32, &qword_10039FEC8, &unk_1002C37B0);
      swift_deallocClassInstance();
      sub_1000C2288(0x24u, v9, v265, v266);

      sub_1000245C8(&off_10037E260);
      v27 = v336;
    }

    else
    {
      v222 = v326;
      v9(v326, v121, v27);
      v223 = Logger.logObject.getter();
      v224 = v27;
      v225 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v223, v225))
      {

        (v347)(v222, v224);
        v27 = v224;
        goto LABEL_144;
      }

      v334 = 0;
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v351[0] = v227;
      *v226 = 136315138;
      v228 = UUID.uuidString.getter();
      v355[0] = 0;
      v355[1] = 0xE000000000000000;
      v230 = HIBYTE(v229) & 0xF;
      if ((v229 & 0x2000000000000000) == 0)
      {
        v230 = v228 & 0xFFFFFFFFFFFFLL;
      }

      v357[0] = v228;
      v357[1] = v229;
      v357[2] = 0;
      v357[3] = v230;
      v231 = String.Iterator.next()();
      if (v231.value._object)
      {
        v232 = v231.value._countAndFlagsBits;
        v233 = v231.value._object;
        do
        {
          Character.hexDigitValue.getter();
          if ((v235 & 1) == 0)
          {
            v236._countAndFlagsBits = v232;
            v236._object = v233;
            String.append(_:)(v236);
          }

          v234 = String.Iterator.next()();
          v232 = v234.value._countAndFlagsBits;
          v233 = v234.value._object;
        }

        while (v234.value._object);
      }

      v9 = v336;
      (v347)(v326, v336);
      v270 = sub_100008F6C(v355[0], v355[1], v351);

      *(v226 + 4) = v270;
      v271 = v225;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v223, v271, "saftpid was not in SAF mode: %s", v226, 0xCu);
      sub_10000959C(v227);
    }

    v173 = v334;
LABEL_144:
    v62 = v323;
    v68 = *(v172 + 56);
    os_unfair_lock_lock(v68 + 8);
    sub_10011CF8C((v68 + 2), 4);
    v67 = v340;
    v114 = v331;
    if (!v173)
    {
      v8 = 0;
      os_unfair_lock_unlock(v68 + 8);
      v115 = v335;
      (v347)(v333, v27);
      v9 = v339;
      goto LABEL_48;
    }

LABEL_177:
    os_unfair_lock_unlock(v68 + 8);
    __break(1u);
    goto LABEL_178;
  }

  v138 = v339;
  v344 = *(v339 + 38);
  v68 = *(v344 + 56);
  os_unfair_lock_lock(v68 + 8);
  sub_10011C498((v68 + 2), 3);
  if (v8)
  {
    goto LABEL_177;
  }

  os_unfair_lock_unlock(v68 + 8);
  sub_10000BE18(v138 + 23, *(v138 + 26));
  if (sub_1000B2244())
  {
    sub_100041D1C(&v359);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "Device rebooted since last online, cannot enter SAF mode", v141, 2u);
    }

    v142 = v344;
    v143 = *(v344 + 56);
    os_unfair_lock_lock(v143 + 8);
    sub_10011CF8C(&v143[4], 3);
    v67 = v340;
    os_unfair_lock_unlock(v143 + 8);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_1002C1660;
    *(v144 + 32) = 12;
    v145 = v144 + 32;
    *(v144 + 64) = &type metadata for Int;
    *(v144 + 40) = 12;
    v146 = sub_100184144(v144);
    swift_setDeallocating();
    sub_10000BD44(v145, &qword_10039FED8, &unk_1002C37D0);
    v147 = swift_deallocClassInstance();
    v148 = *(v142 + 56);
    __chkstk_darwin(v147);
    *(&v323 - 2) = v146;
    os_unfair_lock_lock((v148 + 32));
    sub_10006535C((v148 + 16));
    os_unfair_lock_unlock((v148 + 32));

    v150 = *(v142 + 56);
    __chkstk_darwin(v149);
    *(&v323 - 2) = v142;
    *(&v323 - 8) = 3;
    os_unfair_lock_lock((v150 + 32));
    sub_1000653BC((v150 + 16));
    os_unfair_lock_unlock((v150 + 32));
    sub_1000245C8(&off_10037E238);
    v151 = "Attestation failed.";
    v152 = 0xD000000000000021;
LABEL_109:
    sub_100020148(2035, v152, (v151 | 0x8000000000000000), 0);
    swift_willThrow();
    (v347)(v333, v336);
    goto LABEL_110;
  }

  v178 = v360;
  if (!v360)
  {
    sub_100041D1C(&v359);
    goto LABEL_106;
  }

  v343 = v9;
  v179 = v364;
  v180 = v365;
  v181 = v363;
  v182 = v362;
  v183 = v361;
  v184 = v359;

  sub_100041D1C(&v359);

  sub_10003F2A0(v184, v178, v183, v182, v181, v179, v180);
  if (!v180)
  {
LABEL_106:
    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      *v212 = 0;
      _os_log_impl(&_mh_execute_header, v210, v211, "no persisted attestation token, need previous prepare call.", v212, 2u);
    }

    v213 = v344;
    v214 = *(v344 + 56);
    os_unfair_lock_lock(v214 + 8);
    sub_10011CF8C(&v214[4], 3);
    v67 = v340;
    os_unfair_lock_unlock(v214 + 8);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v215 = swift_allocObject();
    *(v215 + 32) = 12;
    v216 = v215 + 32;
    *(v215 + 16) = xmmword_1002C1660;
    *(v215 + 64) = &type metadata for Int;
    *(v215 + 40) = 9;
    v217 = sub_100184144(v215);
    swift_setDeallocating();
    sub_10000BD44(v216, &qword_10039FED8, &unk_1002C37D0);
    v218 = swift_deallocClassInstance();
    v219 = *(v213 + 56);
    __chkstk_darwin(v218);
    *(&v323 - 2) = v217;
    os_unfair_lock_lock((v219 + 32));
    sub_10006535C((v219 + 16));
    os_unfair_lock_unlock((v219 + 32));

    v221 = *(v213 + 56);
    __chkstk_darwin(v220);
    *(&v323 - 2) = v213;
    *(&v323 - 8) = 3;
    os_unfair_lock_lock((v221 + 32));
    sub_1000653BC((v221 + 16));
    os_unfair_lock_unlock((v221 + 32));
    sub_1000245C8(&off_10037E210);
    v151 = "'t installed, OTA needed.";
    v152 = 0xD00000000000001FLL;
    goto LABEL_109;
  }

  sub_10000BE18(v339 + 18, *(v339 + 21));
  sub_100034704(v367);
  memcpy(v357, v367, 0x122uLL);
  sub_100031B40(v367, v355);

  sub_100031B40(v367, v355);
  sub_100176DD8(v179, v180, v368);
  v185 = 0;
  memcpy(v354, v368, sizeof(v354));

  v272 = Logger.logObject.getter();
  v273 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v272, v273))
  {
    v274 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v355[0] = v275;
    *v274 = 136315138;
    v276 = String.redactedToken()();
    v342 = 0;

    v277 = sub_100008F6C(v276._countAndFlagsBits, v276._object, v355);
    v185 = v342;

    *(v274 + 4) = v277;
    _os_log_impl(&_mh_execute_header, v272, v273, "persistedAttestationToken: %s, privacy: .public)", v274, 0xCu);
    sub_10000959C(v275);
  }

  else
  {
  }

  v278 = v336;
  v279 = v333;
  memcpy(v352, v354, sizeof(v352));
  nullsub_1();
  memcpy(v353, v357, sizeof(v353));
  sub_10000BD44(v353, &qword_10039F268, &qword_1002C2730);
  memcpy(v357, v352, 0x110uLL);
  v280 = v339;
  sub_10000BE18(v339 + 18, *(v339 + 21));
  memcpy(v379, v357, 0x122uLL);
  sub_10003385C(v379);
  sub_10005535C(1);
  if (v185)
  {
    (v347)(v279, v278);
    sub_100031B78(v367);
    memcpy(v355, v357, 0x122uLL);
    sub_100031B78(v355);
    goto LABEL_45;
  }

  sub_10000BE18(v280 + 23, *(v280 + 26));
  v281 = v327;
  (*(v335 + 56))(v327, 1, 1, v278);
  v282 = sub_1000B100C(v281, 0.0);
  sub_10000BD44(v281, &qword_1003A0178, &unk_1002C3BB0);
  if ((v282 & 1) == 0)
  {
    v298 = Logger.logObject.getter();
    v299 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v298, v299))
    {
      v300 = swift_slowAlloc();
      *v300 = 0;
      _os_log_impl(&_mh_execute_header, v298, v299, "failed attestation check, delete persisted attestation token, revert attestation state.", v300, 2u);
    }

    v301 = v339;
    sub_10000BE18(v339 + 13, *(v339 + 16));
    sub_10003EADC(0, 0, v279);
    sub_10000BE18(v301 + 18, *(v301 + 21));
    sub_10003385C(v367);
    sub_10005535C(0);
    v302 = v344;
    v303 = *(v344 + 56);
    os_unfair_lock_lock(v303 + 8);
    sub_10011CF8C(&v303[4], 3);
    os_unfair_lock_unlock(v303 + 8);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v304 = swift_allocObject();
    *(v304 + 32) = 12;
    v305 = v304 + 32;
    *(v304 + 16) = xmmword_1002C1660;
    *(v304 + 64) = &type metadata for Int;
    *(v304 + 40) = 8;
    v306 = sub_100184144(v304);
    swift_setDeallocating();
    sub_10000BD44(v305, &qword_10039FED8, &unk_1002C37D0);
    v307 = swift_deallocClassInstance();
    v308 = *(v302 + 56);
    __chkstk_darwin(v307);
    *(&v323 - 2) = v306;
    os_unfair_lock_lock((v308 + 32));
    sub_10006535C((v308 + 16));
    os_unfair_lock_unlock((v308 + 32));

    v310 = *(v302 + 56);
    __chkstk_darwin(v309);
    *(&v323 - 2) = v302;
    *(&v323 - 8) = 3;
    os_unfair_lock_lock((v310 + 32));
    sub_1000653BC((v310 + 16));
    os_unfair_lock_unlock((v310 + 32));
    sub_1000245C8(&off_10037E1E8);
    sub_100020148(2035, 0xD000000000000013, 0x8000000100348720, 0);
    swift_willThrow();
    sub_100031B78(v367);
    (v347)(v333, v336);
    memcpy(v355, v357, 0x122uLL);
    sub_100031B78(v355);
    sub_10005500C(v340);

    return;
  }

  memcpy(v355, v357, 0x122uLL);
  memcpy(v331, v357, 0x122uLL);
  swift_storeEnumTagMultiPayload();
  sub_10000BE18(v280 + 13, *(v280 + 16));
  sub_100031B40(v355, v351);
  v283 = sub_10003EFB8(v279);
  v334 = 0;
  if (v283)
  {
    v284 = v324;
    v343(v324, v279, v278);
    v285 = Logger.logObject.getter();
    v286 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      v380 = v288;
      *v287 = 136315138;
      v289 = UUID.uuidString.getter();
      v349 = 0;
      v350 = 0xE000000000000000;
      v291 = HIBYTE(v290) & 0xF;
      if ((v290 & 0x2000000000000000) == 0)
      {
        v291 = v289 & 0xFFFFFFFFFFFFLL;
      }

      v351[0] = v289;
      v351[1] = v290;
      v351[2] = 0;
      v351[3] = v291;
      v292 = String.Iterator.next()();
      if (v292.value._object)
      {
        v293 = v292.value._countAndFlagsBits;
        v294 = v292.value._object;
        do
        {
          Character.hexDigitValue.getter();
          if ((v296 & 1) == 0)
          {
            v297._countAndFlagsBits = v293;
            v297._object = v294;
            String.append(_:)(v297);
          }

          v295 = String.Iterator.next()();
          v293 = v295.value._countAndFlagsBits;
          v294 = v295.value._object;
        }

        while (v295.value._object);
      }

      (v347)(v324, v336);
      v320 = sub_100008F6C(v349, v350, &v380);

      *(v287 + 4) = v320;
      _os_log_impl(&_mh_execute_header, v285, v286, "The saftpid already isInSAFMode: %s", v287, 0xCu);
      sub_10000959C(v288);
    }

    else
    {

      (v347)(v284, v336);
    }

    v9 = v339;
    v67 = v340;
  }

  else
  {
    v311 = Logger.logObject.getter();
    v312 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      *v313 = 0;
      _os_log_impl(&_mh_execute_header, v311, v312, "enter SAF mode...", v313, 2u);
    }

    v9 = v339;
    sub_10000BE18(v339 + 13, *(v339 + 16));
    sub_10003F0CC(v279);
    v314 = *(v9 + 36);
    v315 = *(v9 + 37);
    sub_10000BE18(v9 + 33, v314);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    v316 = swift_allocObject();
    *(v316 + 16) = xmmword_1002C1660;
    *(v316 + 32) = 0x64697074666173;
    *(v316 + 40) = 0xE700000000000000;
    v317 = UUID.uuidString.getter();
    *(v316 + 72) = &type metadata for String;
    *(v316 + 80) = &protocol witness table for String;
    *(v316 + 48) = v317;
    *(v316 + 56) = v318;
    v319 = sub_100184010(v316);
    swift_setDeallocating();
    sub_10000BD44(v316 + 32, &qword_10039FEC8, &unk_1002C37B0);
    swift_deallocClassInstance();
    sub_1000C2288(0x23u, v319, v314, v315);

    sub_1000245C8(&off_10037E1C0);
    v67 = v340;
  }

  v68 = *(v344 + 56);
  os_unfair_lock_lock(v68 + 8);
  v321 = v334;
  sub_10011CF8C((v68 + 2), 3);
  v27 = v336;
  v322 = v333;
  v62 = v323;
  if (v321)
  {
    goto LABEL_177;
  }

  v8 = 0;
  os_unfair_lock_unlock(v68 + 8);
  sub_100031B78(v367);
  v115 = v335;
  (v347)(v322, v27);
  memcpy(v351, v357, 0x122uLL);
  sub_100031B78(v351);
  v114 = v331;
LABEL_48:
  v116 = v114;
  v117 = v329;
  sub_100065170(v116, v329);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v115 + 32))(v328, v117, v27);
      v68 = Logger.logObject.getter();
      v119 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v68, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&_mh_execute_header, v68, v119, "storeAndForwardState: onlineWithSAFCompatibleToken", v120, 2u);
      }

      if (!v62)
      {
        goto LABEL_174;
      }

      sub_100056094(v348, v62);
      sub_100064310(1, v369);
      v8 = 0;
      sub_100031B40(v369, v357);
      v204 = Logger.logObject.getter();
      v205 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        *v206 = 0;
        _os_log_impl(&_mh_execute_header, v204, v205, "persist attestation token for StoreAndForward", v206, 2u);
      }

      sub_10000CCE4(v9 + 104, v355);
      sub_10000BE18(v355, v355[3]);
      memcpy(v356, v369, sizeof(v356));
      memcpy(v357, v369, 0x110uLL);
      v207 = sub_100031A30(v357);
      v340 = v67;
      if (v207 == 1)
      {
        v208 = 0;
        v209 = 0;
      }

      else
      {
        v208 = v357[32];
        v209 = v357[33];
      }

      v176 = v371;
      v175 = v372;
      v62 = v373;
      v237 = v328;
      sub_10003EADC(v208, v209, v328);

      (*(v335 + 8))(v237, v336);
      sub_10000959C(v355);
      v177 = v370;
      v67 = v340;
    }

    else
    {
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        *v159 = 0;
        _os_log_impl(&_mh_execute_header, v157, v158, "storeAndForwardState: online", v159, 2u);
      }

      sub_100057300();
      if (v338)
      {
        v174 = 1;
      }

      else
      {
        sub_10000BE18(v9 + 23, *(v9 + 26));
        v202 = v327;
        (*(v335 + 56))(v327, 1, 1, v27);
        v203 = sub_1000B100C(v202, 0.0);
        sub_10000BD44(v202, &qword_1003A0178, &unk_1002C3BB0);
        v174 = v203 ^ 1;
      }

      sub_100064310(v174 & 1, v374);
      v175 = v377;
      v62 = v378;
      v176 = v376;
      v177 = v375;
      memcpy(v356, v374, sizeof(v356));
      sub_100031B40(v374, v357);
    }
  }

  else
  {
    memcpy(v357, v117, 0x122uLL);
    v68 = Logger.logObject.getter();
    v155 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&_mh_execute_header, v68, v155, "storeAndForwardState: storeAndForwardWithSAFCompatibleToken", v156, 2u);
    }

    if (!v62)
    {
      goto LABEL_175;
    }

    sub_100055790(v348, v62);
    v175 = v357[36];
    v62 = BYTE1(v357[36]);
    v176 = v357[35];
    v177 = v357[34];
    memcpy(v356, v357, sizeof(v356));
  }

  memcpy(v357, v356, 0x110uLL);
  v357[34] = v177;
  v357[35] = v176;
  LOBYTE(v357[36]) = v175;
  BYTE1(v357[36]) = v62;
  if ((v62 & 1) == 0)
  {
    v340 = v67;
    v254 = *(v9 + 38);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v255 = swift_allocObject();
    *(v255 + 16) = xmmword_1002C1660;
    *(v255 + 32) = 12;
    v256 = v255 + 32;
    *(v255 + 64) = &type metadata for Int;
    *(v255 + 40) = 7;
    v257 = sub_100184144(v255);
    swift_setDeallocating();
    sub_10000BD44(v256, &qword_10039FED8, &unk_1002C37D0);
    v258 = swift_deallocClassInstance();
    v259 = *(v254 + 56);
    __chkstk_darwin(v258);
    *(&v323 - 2) = v257;
    os_unfair_lock_lock((v259 + 32));
    sub_10006535C((v259 + 16));
    os_unfair_lock_unlock((v259 + 32));

    v261 = *(v254 + 56);
    __chkstk_darwin(v260);
    *(&v323 - 2) = v254;
    *(&v323 - 8) = 3;
    os_unfair_lock_lock((v261 + 32));
    sub_1000653BC((v261 + 16));
    os_unfair_lock_unlock((v261 + 32));
    sub_100098F34(v176, v175 & 1);
    swift_willThrow();
    sub_1000651D4(v331);
    sub_100031B78(v357);
    goto LABEL_45;
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v346 = JSONEncoder.init()();
  if (v177)
  {
    v238 = *(v177 + 16);
    v9 = _swiftEmptyArrayStorage;
    if (v238)
    {
      v351[0] = _swiftEmptyArrayStorage;
      v68 = v351;
      sub_10004E2DC(0, v238, 0);
      v239 = v177;
      v240 = 0;
      v9 = v351[0];
      v344 = v238;
      v345 = v239;
      v27 = (v239 + 64);
      v340 = v67;
      while (v240 < *(v345 + 16))
      {
        v62 = v67;
        v241 = v8;
        v242 = *(v27 - 3);
        v243 = *(v27 - 2);
        v244 = *(v27 - 1);
        v245 = *v27;
        v355[0] = *(v27 - 4);
        v355[1] = v242;
        v355[2] = v243;
        v355[3] = v244;
        v355[4] = v245;
        sub_100065230();

        v246 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v334 = v241;
        if (v241)
        {
          sub_1000651D4(v331);

          sub_100031B78(v357);
          sub_10005500C(v62);

          return;
        }

        v68 = v246;
        v248 = v247;
        v249 = Data.base64EncodedString(options:)(0);
        v347 = v249._object;
        v348 = v249._countAndFlagsBits;
        sub_100009548(v68, v248);

        v351[0] = v9;
        v251 = *(v9 + 2);
        v250 = *(v9 + 3);
        if (v251 >= v250 >> 1)
        {
          v68 = v351;
          sub_10004E2DC((v250 > 1), v251 + 1, 1);
          v9 = v351[0];
        }

        ++v240;
        *(v9 + 2) = v251 + 1;
        v252 = v9 + 16 * v251;
        v253 = v347;
        *(v252 + 4) = v348;
        *(v252 + 5) = v253;
        v27 += 40;
        v67 = v340;
        v8 = v334;
        if (v344 == v240)
        {
          goto LABEL_133;
        }
      }

      __break(1u);
      goto LABEL_173;
    }

LABEL_133:
    v355[0] = v9;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    BidirectionalCollection<>.joined(separator:)();
  }

  v262 = v331;
  memcpy(v355, v356, 0x110uLL);
  if (sub_100031A30(v355) != 1)
  {
  }

  sub_1000651D4(v262);
  sub_100031B78(v357);
  sub_10005500C(v67);
}

uint64_t sub_10005500C(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_10039FF40);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end prepare";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "config-prepare-totalTime", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100055298()
{
  UUID.uuidString.getter();
  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      Character.hexDigitValue.getter();
      if ((v4 & 1) == 0)
      {
        v5._countAndFlagsBits = countAndFlagsBits;
        v5._object = object;
        String.append(_:)(v5);
      }

      v3 = String.Iterator.next()();
      countAndFlagsBits = v3.value._countAndFlagsBits;
      object = v3.value._object;
    }

    while (v3.value._object);
  }

  return 0;
}

void sub_10005535C(char a1)
{
  v3 = v1;
  v5 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  if ((a1 & 1) != 0 && (sub_10000BE18(v1 + 28, v1[31]), sub_100043268(v7), v8 = type metadata accessor for Date(), v9 = (*(*(v8 - 8) + 48))(v7, 1, v8), sub_10000BD44(v7, &unk_1003A3BE0, &qword_1002C36F0), v9 == 1))
  {
    sub_100020148(2039, 0xD00000000000003DLL, 0x8000000100348610, 0);
    swift_willThrow();
  }

  else
  {
    sub_10000BE18(v3 + 50, v3[53]);
    sub_100147BC4(a1 & 1);
    if (!v2)
    {
      sub_10000BE18(v3 + 23, v3[26]);
      sub_1000ADB5C(a1 & 1);
      return;
    }
  }

  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_10039FF28);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    if (a1)
    {
      v15 = 0x656E696C66666FLL;
    }

    else
    {
      v15 = 0x656E696C6E6FLL;
    }

    if (a1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    v17 = sub_100008F6C(v15, v16, &v27);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to switch MPOCOperationMode to %s", v13, 0xCu);
    sub_10000959C(v14);
  }

  v18 = v3[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  inited = swift_initStackObject();
  *(inited + 32) = 12;
  v20 = inited + 32;
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 7;
  v21 = sub_100184144(inited);
  swift_setDeallocating();
  v22 = sub_10000BD44(v20, &qword_10039FED8, &unk_1002C37D0);
  v23 = *(v18 + 56);
  __chkstk_darwin(v22);
  *(&v26 - 2) = v21;
  os_unfair_lock_lock((v23 + 32));
  sub_10006535C((v23 + 16));
  os_unfair_lock_unlock((v23 + 32));

  v25 = *(v18 + 56);
  __chkstk_darwin(v24);
  *(&v26 - 2) = v18;
  *(&v26 - 8) = 3;
  os_unfair_lock_lock((v25 + 32));
  sub_1000653BC((v25 + 16));
  os_unfair_lock_unlock((v25 + 32));
  sub_100020148(2029, 0, 0, 0);
  swift_willThrow();
}

void *sub_100055790(void *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v69 = *(v8 - 1);
  __chkstk_darwin(v8);
  v68 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10 - 8);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_10039FF28);

  v65 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v76 = a1;
  v70 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v63 = v3;
    v20 = v19;
    v75 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = sub_100008F6C(v21, v22, &v75);
    v64 = v8;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1002C1660;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;

    v26 = showFunction(signature:_:)(0xD000000000000020, 0x80000001003485E0, v25);
    v28 = v27;

    v29 = v26;
    v8 = v64;
    v30 = sub_100008F6C(v29, v28, &v75);

    *(v20 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();

    v4 = v63;
  }

  sub_10000BE18(v5 + 76, v5[79]);
  result = sub_10014FBB4(0xC9, 0x726564616572, 0xE600000000000000, 4, 1);
  if (!v4)
  {
    v33 = v32;
    v34 = sub_10000BE18(v5 + 76, v5[79]);
    v63 = "config-prepare-renewCertificate";
    v62 = v5[65];
    v35 = *v34;
    v36 = *(*v34 + 288);
    v64 = *(*v34 + 280);
    v61 = v36;
    sub_10000CCE4((v35 + 2), &v75);
    v37 = v35[10];
    v38 = v35[11];
    sub_10000BE18(v35 + 7, v37);

    sub_1000C289C(4u, v37, v38);
    sub_10000BE18(v35 + 12, v35[15]);
    sub_10014EDF0(v73);
    v60 = v35[17];
    sub_10000CCE4((v35 + 25), v72);
    sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);

    static DispatchQoS.background.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    (v69[13])(v68, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
    v68 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v39 = sub_100022438(v72, v72[3]);
    v69 = &v59;
    __chkstk_darwin(v39);
    v41 = (&v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = *v41;
    v44 = type metadata accessor for DefaultSecureTimeKeeper();
    v71[4] = &off_100384E70;
    v71[3] = v44;
    v71[0] = v43;
    v45 = type metadata accessor for AAASigner();
    v46 = swift_allocObject();
    v47 = sub_100022438(v71, v44);
    __chkstk_darwin(v47);
    v49 = (&v59 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = *v49;
    v52 = v70;

    sub_100112354(v64, v61, 0xCB, 0xD000000000000010, (v63 | 0x8000000000000000), 1, v76, v52, &v75, v74, v73, v60, v51, v68, v62, v46);
    sub_10000959C(v71);
    sub_10000959C(v72);
    ObjectType = swift_getObjectType();
    if ((*(v33 + 48))(ObjectType, v33, 0.0))
    {
      v54 = sub_1000650DC(&qword_1003A01C0, type metadata accessor for AAASigner, &unk_1002C9A9C);
      if ((*(v54 + 48))(v45, v54, 0.0))
      {
LABEL_14:
        swift_unknownObjectRelease();
      }

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        v58 = "safSigner certificate not valid";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v55, v56, v58, v57, 2u);
      }
    }

    else
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        v58 = "readerBlobSigner certificate not valid";
        goto LABEL_12;
      }
    }

    sub_100020148(2035, 0, 0, 0);
    swift_willThrow();
    goto LABEL_14;
  }

  return result;
}

void *sub_100056094(void **a1, uint64_t a2)
{
  v3 = v2;
  v134 = a1;
  v133 = *v2;
  v118 = type metadata accessor for OSSignpostError();
  v5 = *(v118 - 8);
  __chkstk_darwin(v118);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for OSSignpostID();
  v8 = *(v131 - 8);
  v9 = __chkstk_darwin(v131);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v129 = &v111 - v13;
  v14 = __chkstk_darwin(v12);
  v120 = &v111 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v111 - v17;
  __chkstk_darwin(v16);
  v127 = &v111 - v19;
  v125 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v21 - 8);
  v122 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v23 - 8);
  v121 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000403C(v25, qword_10039FF28);

  v132 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v130 = v8;
  v119 = v11;
  v117 = v5;
  v116 = v7;
  v128 = v18;
  v126 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v30 = 136315394;
    v31 = _typeName(_:qualified:)();
    v33 = sub_100008F6C(v31, v32, &v139);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1002C1660;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 32) = v134;
    *(v34 + 40) = a2;

    v35 = showFunction(signature:_:)(0xD00000000000001ELL, 0x80000001003485C0, v34);
    v37 = v36;

    v38 = sub_100008F6C(v35, v37, &v139);

    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s.%s", v30, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000BE18(v3 + 76, v3[79]);
  v39 = v140;
  result = sub_10014FBB4(0xC9, 0x726564616572, 0xE600000000000000, 4, 0);
  if (!v39)
  {
    v115 = v41;
    v133 = result;
    v140 = 0;
    v42 = sub_10000BE18(v3 + 76, v3[79]);
    v113 = "config-prepare-renewCertificate";
    v112 = v3[65];
    v43 = *v42;
    v44 = *(*v42 + 288);
    v114 = *(*v42 + 280);
    sub_10000CCE4((v43 + 2), &v139);
    v45 = v43[10];
    v46 = v43[11];
    sub_10000BE18(v43 + 7, v45);

    sub_1000C289C(4u, v45, v46);
    sub_10000BE18(v43 + 12, v43[15]);
    sub_10014EDF0(&v137);
    v47 = v43[17];
    sub_10000CCE4((v43 + 25), v136);
    sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);

    static DispatchQoS.background.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    (*(v124 + 104))(v123, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v125);
    v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v49 = sub_100022438(v136, v136[3]);
    __chkstk_darwin(v49);
    v51 = (&v111 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51);
    v53 = *v51;
    v54 = type metadata accessor for DefaultSecureTimeKeeper();
    v135[4] = &off_100384E70;
    v135[3] = v54;
    v135[0] = v53;
    v125 = type metadata accessor for AAASigner();
    v55 = swift_allocObject();
    v56 = sub_100022438(v135, v54);
    __chkstk_darwin(v56);
    v58 = (&v111 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    v60 = *v58;
    v61 = v126;

    v134 = sub_100112354(v114, v44, 0xCB, 0xD000000000000010, (v113 | 0x8000000000000000), 0, v134, v61, &v139, &v138, &v137, v47, v60, v48, v112, v55);
    sub_10000959C(v135);
    sub_10000959C(v136);
    sub_10000BE18(v3 + 8, v3[11]);
    type metadata accessor for CertificateManager(0);
    if (sub_10004CDF4(86400.0))
    {
      v62 = 0;
      v63 = v131;
      v64 = v130;
      v65 = v129;
      v66 = v128;
    }

    else
    {
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      v69 = os_log_type_enabled(v67, v68);
      v63 = v131;
      v64 = v130;
      v65 = v129;
      v66 = v128;
      if (v69)
      {
        v70 = swift_slowAlloc();
        *v70 = 134217984;
        *(v70 + 4) = 24;
        _os_log_impl(&_mh_execute_header, v67, v68, "Certificate(s) expire before time required for SAF: %ld hour(s). Begin renewal.", v70, 0xCu);
      }

      v71 = v127;
      if (qword_10039D378 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for OSSignposter();
      sub_10000403C(v72, qword_10039FF40);
      static OSSignpostID.exclusive.getter();
      v73 = OSSignposter.logHandle.getter();
      v74 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        v76 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, v74, v76, "config-prepare-renewCertificate", "begin Configurator.renewCertificates()", v75, 2u);
        v71 = v127;
      }

      (*(v64 + 16))(v66, v71, v63);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v62 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v64 + 8))(v71, v63);
      v77 = v140;
      sub_100057804();
      v140 = v77;
      if (v77)
      {
        goto LABEL_15;
      }
    }

    ObjectType = swift_getObjectType();
    v79 = (*(v115 + 48))(86400.0);
    v80 = v120;
    if (v79)
    {
      goto LABEL_26;
    }

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 134217984;
      *(v83 + 4) = 24;
      _os_log_impl(&_mh_execute_header, v81, v82, "readerBlobSigner certificate expires before time required for SAF: %ld hour(s). Begin renewal.", v83, 0xCu);
      v80 = v120;
    }

    if (!v62)
    {
      if (qword_10039D378 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for OSSignposter();
      sub_10000403C(v84, qword_10039FF40);
      static OSSignpostID.exclusive.getter();
      v85 = OSSignposter.logHandle.getter();
      v86 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        v88 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v85, v86, v88, "config-prepare-renewCertificate", "begin readerBlobSigner.renewImmediately()", v87, 2u);
        v80 = v120;
      }

      (*(v64 + 16))(v66, v80, v63);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v62 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v64 + 8))(v80, v63);
    }

    v89 = v140;
    (*(v115 + 56))(ObjectType);
    v140 = v89;
    if (!v89)
    {
LABEL_26:
      v90 = sub_1000650DC(&qword_1003A01C0, type metadata accessor for AAASigner, &unk_1002C9A9C);
      if ((*(v90 + 48))(v125, v90, 86400.0))
      {
        if (!v62)
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_40;
      }

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 134217984;
        *(v93 + 4) = 24;
        _os_log_impl(&_mh_execute_header, v91, v92, "safSigner certificate expires before time required for SAF: %ld hour(s). Begin renewal.", v93, 0xCu);
      }

      if (!v62)
      {
        if (qword_10039D378 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for OSSignposter();
        sub_10000403C(v94, qword_10039FF40);
        static OSSignpostID.exclusive.getter();
        v95 = OSSignposter.logHandle.getter();
        v96 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          v98 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, v96, v98, "config-prepare-renewCertificate", "begin safSigner.renewImmediately()", v97, 2u);
        }

        (*(v64 + 16))(v66, v65, v63);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        OSSignpostIntervalState.init(id:isOpen:)();
        (*(v64 + 8))(v65, v63);
      }

      v99 = v140;
      (*(v90 + 56))(v125, v90);
      v140 = v99;
      if (!v99)
      {
LABEL_40:
        if (qword_10039D378 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for OSSignposter();
        sub_10000403C(v100, qword_10039FF40);
        v101 = OSSignposter.logHandle.getter();
        v102 = v119;
        OSSignpostIntervalState.signpostID.getter();
        v103 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v104 = v102;

          v105 = v116;
          checkForErrorAndConsumeState(state:)();

          v106 = v117;
          v107 = v118;
          if ((*(v117 + 88))(v105, v118) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v108 = "[Error] Interval already ended";
          }

          else
          {
            (*(v106 + 8))(v105, v107);
            v108 = "end renew certificate";
          }

          v109 = swift_slowAlloc();
          *v109 = 0;
          v110 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v101, v103, v110, "config-prepare-renewCertificate", v108, v109, 2u);

          swift_unknownObjectRelease();

          return (*(v64 + 8))(v104, v63);
        }

        else
        {

          swift_unknownObjectRelease();

          return (*(v64 + 8))(v102, v63);
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_15:
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100057300()
{
  v2 = type metadata accessor for OSSignpostError();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OSSignpostID();
  v4 = *(v42 - 8);
  v5 = __chkstk_darwin(v42);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v36 - v8;
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  sub_10000BE18((v0 + 64), *(v0 + 88));
  type metadata accessor for CertificateManager(0);
  result = sub_10004CD94();
  if (result)
  {
    if (qword_10039D370 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000403C(v13, qword_10039FF28);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v42;
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "certificates not valid, renew...", v18, 2u);
    }

    v37 = v1;

    if (qword_10039D378 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSSignposter();
    sub_10000403C(v19, qword_10039FF40);
    static OSSignpostID.exclusive.getter();
    v20 = OSSignposter.logHandle.getter();
    v21 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v21, v23, "config-prepare-renewCertificate", "begin renew certificate", v22, 2u);
      v17 = v42;
    }

    (*(v4 + 16))(v9, v11, v17);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v24 = *(v4 + 8);
    v24(v11, v17);
    v25 = v37;
    sub_100057804();
    if (v25)
    {
    }

    else
    {
      v26 = OSSignposter.logHandle.getter();
      v27 = v41;
      OSSignpostIntervalState.signpostID.getter();
      v28 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        v29 = v38;
        checkForErrorAndConsumeState(state:)();

        v31 = v39;
        v30 = v40;
        if ((*(v39 + 88))(v29, v40) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v32 = "[Error] Interval already ended";
        }

        else
        {
          (*(v31 + 8))(v29, v30);
          v32 = "end renew certificate";
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = v41;
        v35 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v28, v35, "config-prepare-renewCertificate", v32, v33, 2u);

        v27 = v34;
        v17 = v42;
      }

      return (v24)(v27, v17);
    }
  }

  return result;
}

uint64_t sub_100057804()
{
  v2 = v0;
  sub_10000BE18((v0 + 64), *(v0 + 88));
  type metadata accessor for CertificateManager(0);
  result = sub_10004CE60();
  if (v1)
  {
    _s3__C4CodeOMa_2(0);
    v40 = 2034;
    swift_errorRetain();
    sub_1000650DC(&qword_10039DBE8, _s3__C4CodeOMa_2, &unk_1002BFC28);
    v4 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v4)
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000403C(v5, qword_10039FF28);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_8;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Configurator.renewCertificates() operationNotAuthorized";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

LABEL_8:

      return swift_willThrow();
    }

    v40 = 2000;
    swift_errorRetain();
    v10 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v10)
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000403C(v11, qword_10039FF28);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Configurator.renewCertificates() connectionProblem", v14, 2u);
      }

      v15 = sub_10000BE18((v2 + 480), *(v2 + 504));
      v16 = sub_100020148(2000, 0, 0, 0);
      sub_10013F4E4(v16, *v15);

      return swift_willThrow();
    }

    v40 = 2025;
    swift_errorRetain();
    v17 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v17 & 1) != 0 || (v40 = v1, swift_errorRetain(), sub_100004074(&unk_1003A3C00, &unk_1002C16C0), v18 = swift_dynamicCast(), , v18) && v39 == 2)
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000403C(v19, qword_10039FF28);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Configurator.renewCertificates() cannotRenewCertificate: Could not get certificates from backend (possibly SecureChannelError) or\nmalformed response.", v22, 2u);
      }

      v23 = 2025;
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v40 = 2999;
      swift_errorRetain();
      v26 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v26)
      {
        if (qword_10039D370 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000403C(v27, qword_10039FF28);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_8;
        }

        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Configurator.renewCertificates() internal error";
        goto LABEL_7;
      }

      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000403C(v28, qword_10039FF28);
      swift_errorRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40 = v32;
        *v31 = 136315138;
        swift_errorRetain();
        v33 = String.init<A>(describing:)();
        v35 = sub_100008F6C(v33, v34, &v40);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Configurator.renewCertificates() unexpected error: %s", v31, 0xCu);
        sub_10000959C(v32);
      }

      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = v37;
      v23 = 2999;
      v24 = v36;
      v25 = v38;
    }

    sub_100020148(v23, v24, v25, 0);
    swift_willThrow();
  }

  return result;
}

void sub_100057E70(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10)
{
  v11 = v10;
  v221 = a6;
  v222 = a8;
  v219 = a5;
  v220 = a7;
  v234 = a4;
  v218 = a3;
  v244 = a1;
  v13 = *v10;
  v14 = type metadata accessor for UUID();
  v240 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v226 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v225 = &v204 - v18;
  v217 = v19;
  __chkstk_darwin(v17);
  v213 = &v204 - v20;
  v21 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v21 - 8);
  v230 = &v204 - v22;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v231 = v23;
  v232 = v24;
  __chkstk_darwin(v23);
  v26 = (&v204 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v238 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v215 = *(v238 - 8);
  v27 = __chkstk_darwin(v238);
  v212 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v223 = &v204 - v30;
  v31 = __chkstk_darwin(v29);
  v227 = &v204 - v32;
  v33 = __chkstk_darwin(v31);
  v214 = &v204 - v34;
  v35 = __chkstk_darwin(v33);
  v228 = &v204 - v36;
  v37 = __chkstk_darwin(v35);
  v224 = &v204 - v38;
  v216 = v39;
  __chkstk_darwin(v37);
  v243 = &v204 - v40;
  v41 = type metadata accessor for OSSignpostID();
  v236 = *(v41 - 8);
  v237 = v41;
  v42 = __chkstk_darwin(v41);
  v235 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v242 = &v204 - v44;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v45 = a9;
  v46 = type metadata accessor for Logger();
  v47 = sub_10000403C(v46, qword_10039FF28);

  v246 = v47;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v50 = os_log_type_enabled(v48, v49);
  v239 = v14;
  v229 = v26;
  v241 = v13;
  v233 = a2;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v252[0] = swift_slowAlloc();
    *v51 = 136315394;
    v52 = _typeName(_:qualified:)();
    v245 = a9;
    v54 = sub_100008F6C(v52, v53, v252);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1002C1660;
    v56 = String.redactedTokenFromBase64()();
    *(v55 + 56) = &type metadata for String;
    *(v55 + 32) = v56;
    v57 = showFunction(signature:_:)(0xD000000000000065, 0x80000001003484F0, v55);
    v59 = v58;

    v60 = v57;
    v45 = v245;
    v61 = sub_100008F6C(v60, v59, v252);

    *(v51 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v48, v49, "%s.%s", v51, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v62 = atomic_flag_test_and_set((v11 + 16));
  swift_endAccess();
  if (v62)
  {
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "install in progress", v65, 2u);
    }

    v66 = 0x80000001003484D0;
    v67 = 2026;
    v68 = 0xD000000000000013;
LABEL_24:
    v108 = sub_100020148(v67, v68, v66, 0);
    v45(0, v108);

    return;
  }

  v69 = [objc_opt_self() sharedHardwareManager];
  v70 = [v69 getHwSupport];

  if (v70 != 2)
  {
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "NFC not available", v107, 2u);
    }

    v67 = 2041;
    v68 = 0;
    v66 = 0;
    goto LABEL_24;
  }

  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for OSSignposter();
  v72 = sub_10000403C(v71, qword_10039FF40);
  v73 = v242;
  static OSSignpostID.exclusive.getter();
  v210 = v72;
  v74 = OSSignposter.logHandle.getter();
  v75 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, v75, v77, "config-install-totalTime", "start install", v76, 2u);
    v73 = v242;
  }

  v211 = a10;
  v245 = v45;

  v78 = v236;
  v79 = v73;
  v80 = v73;
  v81 = v237;
  (*(v236 + 2))(v235, v79, v237);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v82 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v78 + 8))(v80, v81);
  *(v11 + 648) = 0;
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v83 = static Terminator.shared;
  swift_allocObject();
  v84 = swift_weakInit();
  v85 = *(v83 + 24);
  __chkstk_darwin(v84);

  os_unfair_lock_lock((v85 + 32));
  sub_100064AFC((v85 + 16), v252);
  os_unfair_lock_unlock((v85 + 32));

  v86 = v252[0];

  v87 = swift_allocBox();
  v88 = v239;
  v89 = v240 + 56;
  v90 = *(v240 + 56);
  v208 = v91;
  v90(v91, 1, 1, v239);
  v206 = v90;
  v207 = v89;
  v90(v243, 1, 1, v88);
  v92 = swift_allocObject();
  swift_weakInit();
  v93 = swift_allocObject();
  *(v93 + 2) = v87;
  *(v93 + 3) = v92;
  v236 = v86;
  *(v93 + 4) = v86;
  *(v93 + 5) = v82;
  v94 = v211;
  *(v93 + 6) = v245;
  *(v93 + 7) = v94;
  v242 = v93;
  *(v93 + 8) = v241;
  swift_beginAccess();
  sub_10000BE18((v11 + 360), *(v11 + 384));

  v237 = v87;

  if ((sub_1001392D0() & 1) == 0)
  {
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Incorrect JCOP version", v97, 2u);
    }

    if (*(v11 + 312) == 1)
    {
      v98 = sub_100020148(2033, 0, 0, 0);
      v99 = *(v11 + 304);
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 4;
      v252[0] = v98;
      type metadata accessor for ConfigurationError(0);
      sub_1000650DC(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
      v101 = _BridgedStoredNSError.errorCode.getter();
      *(inited + 64) = &type metadata for Int;
      *(inited + 40) = v101;
      sub_100184144(inited);
      swift_setDeallocating();
      v102 = sub_10000BD44(inited + 32, &qword_10039FED8, &unk_1002C37D0);
      v103 = *(v99 + 56);
      __chkstk_darwin(v102);
      os_unfair_lock_lock((v103 + 32));
      sub_10006535C((v103 + 16));
      os_unfair_lock_unlock((v103 + 32));

      v104 = v98;
      sub_100059BF4(0, v98, v237, v92, v236, v82, v245, v211, v241);

      sub_10000BD44(v243, &qword_1003A0178, &unk_1002C3BB0);

      return;
    }
  }

  v209 = v92;
  v235 = v82;
  if (v234)
  {
    [v234 onUpdateWithEvent:0];
  }

  sub_100186948("config-install-preprosessing", 28, 2, v11, 0xD00000000000001BLL, 0x8000000100348410);
  v109 = *(v11 + 384);
  v110 = sub_10000BE18((v11 + 360), v109);
  v111 = *(v109 - 8);
  __chkstk_darwin(v110);
  v113 = &v204 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v111 + 16))(v113);
  v114 = [*(*v113 + 16) serialNumber];
  if (!v114)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v115 = v114;
  v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v117;

  (*(v111 + 8))(v113, v109);
  v119 = v233;

  sub_10008C068(v244, v119, v116, v118, v252);
  sub_10000BE18((v11 + 224), *(v11 + 248));
  v120 = v230;
  sub_100043268(v230);
  v122 = v231;
  v121 = v232;
  if ((*(v232 + 48))(v120, 1, v231) == 1)
  {
    v123 = v11;
    sub_10000BD44(v120, &unk_1003A3BE0, &qword_1002C36F0);
    v124 = sub_100020148(2039, 0xD00000000000001ELL, 0x80000001003483B0, 0);
    swift_willThrow();
    sub_10006413C(v252);
    v125 = v243;
    goto LABEL_30;
  }

  v134 = v229;
  (*(v121 + 32))(v229, v120, v122);
  sub_10008B7F4(v134);
  v125 = v243;
  v141 = v224;
  sub_10008BD6C(v224);
  v142 = v239;
  v143 = v240;
  v144 = (v240 + 48);
  v145 = *(v240 + 48);
  if ((v145)(v141, 1, v239) == 1)
  {
    sub_10000BD44(v141, &qword_1003A0178, &unk_1002C3BB0);
    sub_100064B9C(v252, &v248);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.error.getter();
    sub_10006413C(v252);
    if (os_log_type_enabled(v146, v147))
    {
      v148 = v11;
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *&v248 = v150;
      *v149 = 136446210;
      sub_10008BD6C(v228);
      v151 = String.init<A>(describing:)();
      v153 = sub_100008F6C(v151, v152, &v248);

      *(v149 + 4) = v153;
      _os_log_impl(&_mh_execute_header, v146, v147, "TPID of KernelToken: %{public}s", v149, 0xCu);
      sub_10000959C(v150);

      v11 = v148;
    }

    v154 = v229;
    v123 = v11;
    v155 = sub_10000BE18((v11 + 480), *(v11 + 504));
    v156 = sub_100020148(2011, 0, 0, 0);
    sub_10013F4E4(v156, *v155);

    v124 = sub_100020148(2011, 0, 0, 0);
    swift_willThrow();
    sub_10006413C(v252);
    (*(v232 + 8))(v154, v122);
LABEL_30:
    *&v248 = v124;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    type metadata accessor for ConfigurationError(0);
    if (swift_dynamicCast())
    {
      v126 = v247;
      v251[0] = v247;
      sub_1000650DC(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
      if (_BridgedStoredNSError.errorCode.getter() >= 2000)
      {
        v251[0] = v126;
        if (_BridgedStoredNSError.errorCode.getter() <= 2999)
        {

          v135 = *(v123 + 304);
          sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
          v136 = swift_initStackObject();
          *(v136 + 16) = xmmword_1002C1660;
          *(v136 + 32) = 4;
          v251[0] = v126;
          v137 = _BridgedStoredNSError.errorCode.getter();
          *(v136 + 64) = &type metadata for Int;
          *(v136 + 40) = v137;
          sub_100184144(v136);
          swift_setDeallocating();
          v138 = sub_10000BD44(v136 + 32, &qword_10039FED8, &unk_1002C37D0);
          v139 = *(v135 + 56);
          __chkstk_darwin(v138);
          os_unfair_lock_lock((v139 + 32));
          sub_10006535C((v139 + 16));
          os_unfair_lock_unlock((v139 + 32));

          v140 = v126;
          sub_100059BF4(0, v126, v237, v209, v236, v235, v245, v211, v241);

          sub_10000BD44(v125, &qword_1003A0178, &unk_1002C3BB0);

          goto LABEL_35;
        }
      }
    }

    swift_errorRetain();
    v127 = sub_100020148(2016, 0, 0, v124);

    v128 = *(v123 + 304);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v129 = swift_initStackObject();
    *(v129 + 16) = xmmword_1002C1660;
    *(v129 + 32) = 4;
    *&v248 = v127;
    sub_1000650DC(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
    v130 = _BridgedStoredNSError.errorCode.getter();
    *(v129 + 64) = &type metadata for Int;
    *(v129 + 40) = v130;
    sub_100184144(v129);
    swift_setDeallocating();
    v131 = sub_10000BD44(v129 + 32, &qword_10039FED8, &unk_1002C37D0);
    v132 = *(v128 + 56);
    __chkstk_darwin(v131);
    os_unfair_lock_lock((v132 + 32));
    sub_10006535C((v132 + 16));
    os_unfair_lock_unlock((v132 + 32));

    v133 = v127;
    sub_100059BF4(0, v127, v237, v209, v236, v235, v245, v211, v241);

    sub_10000BD44(v125, &qword_1003A0178, &unk_1002C3BB0);
LABEL_35:

    return;
  }

  v245 = v144;
  v158 = v143 + 32;
  v157 = *(v143 + 32);
  v230 = v145;
  v159 = v213;
  v157(v213, v141, v142);
  v160 = v228;
  sub_10008B618(v228);
  sub_10006413C(v252);
  (*(v232 + 8))(v229, v122);
  sub_10000BD44(v125, &qword_1003A0178, &unk_1002C3BB0);
  sub_100064190(v160, v125);
  v231 = v157;
  v232 = v158;
  v157(v160, v159, v142);
  v206(v160, 0, 1, v142);
  v161 = v208;
  swift_beginAccess();
  sub_100064BF8(v160, v161);
  sub_10000CCE4(v11 + 264, &v248);
  v162 = v249;
  v229 = v250;
  v163 = sub_10000BE18(&v248, v249);
  v164 = v240;
  v224 = v163;
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v165 = swift_initStackObject();
  *(v165 + 16) = xmmword_1002C1660;
  *(v165 + 32) = 1684631668;
  *(v165 + 40) = 0xE400000000000000;
  v166 = v214;
  sub_100065074(v161, v214, &qword_1003A0178, &unk_1002C3BB0);
  v167 = v230;
  if ((v230)(v166, 1, v142) == 1)
  {
    goto LABEL_52;
  }

  v168 = UUID.uuidString.getter();
  *(v165 + 72) = &type metadata for String;
  *(v165 + 80) = &protocol witness table for String;
  *(v165 + 48) = v168;
  *(v165 + 56) = v169;
  v170 = *(v164 + 8);
  v238 = v164 + 8;
  v236 = v170;
  v170(v166, v142);
  v171 = sub_100184010(v165);
  swift_setDeallocating();
  sub_10000BD44(v165 + 32, &qword_10039FEC8, &unk_1002C37B0);
  sub_1000C2288(0xFu, v171, v162, v229);

  sub_10000959C(&v248);
  v172 = v227;
  sub_100065074(v161, v227, &qword_1003A0178, &unk_1002C3BB0);
  if ((v167)(v172, 1, v142) == 1)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v173 = *(v240 + 16);
  v174 = v225;
  v173(v225, v172, v142);
  v175 = v223;
  sub_100065074(v243, v223, &qword_1003A0178, &unk_1002C3BB0);
  v176 = Logger.logObject.getter();
  v177 = v142;
  v178 = static os_log_type_t.default.getter();
  v179 = os_log_type_enabled(v176, v178);
  v205 = v11;
  v229 = v173;
  if (v179)
  {
    LODWORD(v246) = v178;
    v180 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    v251[0] = v224;
    *v180 = 136315394;
    v181 = _typeName(_:qualified:)();
    v183 = sub_100008F6C(v181, v182, v251);

    *(v180 + 4) = v183;
    *(v180 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_1002C1790;
    *(v184 + 56) = &type metadata for String;
    *(v184 + 32) = 0x746E6573657270;
    *(v184 + 40) = 0xE700000000000000;
    *(v184 + 88) = v177;
    v185 = sub_10000BE5C((v184 + 64));
    v173(v185, v225, v177);
    v186 = v212;
    sub_100065074(v175, v212, &qword_1003A0178, &unk_1002C3BB0);
    if ((v230)(v186, 1, v177) == 1)
    {
      sub_10000BD44(v186, &qword_1003A0178, &unk_1002C3BB0);
      *(v184 + 120) = &type metadata for String;
      *(v184 + 96) = 0;
      *(v184 + 104) = 0xE000000000000000;
    }

    else
    {
      v249 = v177;
      v187 = sub_10000BE5C(&v248);
      v231(v187, v186, v177);
      sub_100019D3C(&v248, (v184 + 96));
    }

    v188 = showFunction(signature:_:)(0xD000000000000072, 0x8000000100348430, v184);
    v190 = v189;

    sub_10000BD44(v223, &qword_1003A0178, &unk_1002C3BB0);
    v236(v225, v177);
    v191 = sub_100008F6C(v188, v190, v251);

    *(v180 + 14) = v191;
    _os_log_impl(&_mh_execute_header, v176, v246, "%s.%s", v180, 0x16u);
    swift_arrayDestroy();

    v172 = v227;
  }

  else
  {

    sub_10000BD44(v175, &qword_1003A0178, &unk_1002C3BB0);
    v236(v174, v177);
  }

  v229(v226, v172, v177);
  sub_100065074(v243, v228, &qword_1003A0178, &unk_1002C3BB0);
  v192 = (*(v240 + 80) + 56) & ~*(v240 + 80);
  v193 = (v217 + *(v215 + 80) + v192) & ~*(v215 + 80);
  v194 = v193 + v216;
  v195 = (v193 + v216) & 0xFFFFFFFFFFFFFFF8;
  v196 = (v195 + 31) & 0xFFFFFFFFFFFFFFF8;
  v197 = swift_allocObject();
  v197[2] = v205;
  v197[3] = sub_100064B68;
  v198 = v244;
  v197[4] = v242;
  v197[5] = v198;
  v197[6] = v233;
  v231(v197 + v192, v226, v177);
  sub_100064190(v228, v197 + v193);
  *(v197 + v194) = v218 & 1;
  v199 = v197 + v195;
  v200 = v220;
  v202 = v221;
  v201 = v222;
  *(v199 + 1) = v219;
  *(v199 + 2) = v202;
  v203 = (v197 + v196);
  *v203 = v200;
  v203[1] = v201;
  *(v197 + ((v196 + 23) & 0xFFFFFFFFFFFFFFF8)) = v234;
  swift_unknownObjectRetain();

  sub_1000648EC(sub_100064E24, v197);

  sub_10000BD44(v243, &qword_1003A0178, &unk_1002C3BB0);
  v236(v227, v177);
}

uint64_t sub_100059B4C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    *(result + 648) = 1;
    v3 = *(result + 48);
    v4 = *(result + 56);
    sub_10000BE18((result + 24), v3);
    (*(v4 + 24))(v3, v4);
    v5 = *(v2 + 656);
    if (v5)
    {
      *(v5 + 96) = 1;
    }
  }

  return result;
}

uint64_t sub_100059BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v68 = a6;
  v67 = a5;
  v72 = a1;
  v66 = type metadata accessor for OSSignpostError();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for OSSignpostID();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v14 - 8);
  v16 = v61 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  v74 = a2;
  if (a2)
  {
    v62 = v17;
    swift_errorRetain();
    if (qword_10039D370 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_10039FF28);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v61[1] = a8;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63 = a4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v61[0] = v20;
      v75[0] = v28;
      *v25 = 136315650;
      v29 = _typeName(_:qualified:)();
      v31 = sub_100008F6C(v29, v30, v75);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v32 = showFunction(signature:_:)(0xD000000000000065, 0x80000001003484F0, _swiftEmptyArrayStorage);
      v34 = sub_100008F6C(v32, v33, v75);

      *(v25 + 14) = v34;
      *(v25 + 22) = 2112;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v35;
      *v27 = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s.%s error :%@", v25, 0x20u);
      sub_10000BD44(v27, &unk_10039E220, &qword_1002C3D60);
      a4 = v63;

      swift_arrayDestroy();
      v20 = v61[0];
    }

    else
    {
    }

    v17 = v62;
  }

  swift_beginAccess();
  sub_100065074(v21, v16, &qword_1003A0178, &unk_1002C3BB0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000BD44(v16, &qword_1003A0178, &unk_1002C3BB0);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_10000CCE4(Strong + 264, v75);

      v37 = v76;
      v62 = v77;
      sub_10000BE18(v75, v76);
      v63 = a4;
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 1684631668;
      *(inited + 40) = 0xE400000000000000;
      v39 = UUID.uuidString.getter();
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = &protocol witness table for String;
      *(inited + 48) = v39;
      *(inited + 56) = v40;
      v41 = sub_100184010(inited);
      swift_setDeallocating();
      sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
      sub_1000C2288(0x12u, v41, v37, v62);

      (*(v18 + 8))(v20, v17);
      sub_10000959C(v75);
    }

    else
    {
      (*(v18 + 8))(v20, v17);
    }
  }

  swift_beginAccess();
  v42 = swift_weakLoadStrong();
  v43 = v69;
  if (v42)
  {
    sub_1000611D4();
  }

  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v44 = *(static Terminator.shared + 24);
  os_unfair_lock_lock(v44 + 8);
  sub_100189B50(&v44[4], v67);
  os_unfair_lock_unlock(v44 + 8);
  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for OSSignposter();
  sub_10000403C(v45, qword_10039FF40);
  v46 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v47 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v48 = v64;
    checkForErrorAndConsumeState(state:)();
    v49 = v48;

    v50 = v65;
    v51 = v48;
    v52 = v66;
    if ((*(v65 + 88))(v51, v66) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v53 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v49, v52);
      v53 = "end install";
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v47, v55, "config-install-totalTime", v53, v54, 2u);
  }

  (*(v70 + 8))(v43, v71);
  swift_beginAccess();
  v56 = swift_weakLoadStrong();
  if (v56)
  {
    v57 = *(v56 + 304);

    v59 = *(v57 + 56);
    __chkstk_darwin(v58);
    v61[-2] = v57;
    LOBYTE(v61[-1]) = 1;
    os_unfair_lock_lock((v59 + 32));
    sub_1000653BC((v59 + 16));
    os_unfair_lock_unlock((v59 + 32));
  }

  return v73(v72, v74);
}

void sub_10005A560(uint64_t a1, int a2, void *a3, uint64_t a4, void (*a5)(void, void *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v92 = a8;
  v91 = a7;
  v94 = a6;
  v93 = a5;
  v90 = a2;
  v88 = type metadata accessor for DispatchTime();
  v87 = *(v88 - 8);
  v19 = __chkstk_darwin(v88);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v86 = &v84 - v22;
  v23 = sub_100004074(&qword_1003A01A8, &unk_1002C3C00);
  __chkstk_darwin(v23 - 8);
  v25 = &v84 - v24;
  v26 = type metadata accessor for BeeStateInfo.SystemStatus();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v89 = &v84 - v31;
  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for OSSignposter();
  sub_10000403C(v32, qword_10039FF40);
  v95 = a4;
  sub_100186BE8("config-install-preprosessing", 28, 2, a4, 0xD000000000000019, 0x8000000100348560);
  if (a1)
  {
    if (*(a1 + 16) && (v33 = sub_1000F5EEC(3), (v34 & 1) != 0))
    {
      sub_10000BDA4(*(a1 + 56) + 32 * v33, v96);
      v35 = swift_dynamicCast();
      (*(v27 + 56))(v25, v35 ^ 1u, 1, v26);
      if ((*(v27 + 48))(v25, 1, v26) != 1)
      {
        v36 = v89;
        (*(v27 + 32))(v89, v25, v26);
        v37 = *(v27 + 104);
        LODWORD(v84) = enum case for BeeStateInfo.SystemStatus.needsRepair(_:);
        v85 = v37;
        (v37)(v30);
        v38 = static BeeStateInfo.SystemStatus.== infix(_:_:)();
        v39 = *(v27 + 8);
        v39(v30, v26);
        if (v38 & 1) != 0 || ((v85)(v30, enum case for BeeStateInfo.SystemStatus.terminated(_:), v26), v40 = static BeeStateInfo.SystemStatus.== infix(_:_:)(), v39(v30, v26), (v40))
        {
          (v85)(v30, v84, v26);
          v41 = static BeeStateInfo.SystemStatus.== infix(_:_:)();
          v85 = v39;
          v39(v30, v26);
          if (qword_10039D370 != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          v84 = sub_10000403C(v42, qword_10039FF28);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();
          v45 = os_log_type_enabled(v43, v44);
          v46 = v88;
          if (v45)
          {
            v47 = swift_slowAlloc();
            *v47 = 67109120;
            *(v47 + 4) = v41 & 1;
            _os_log_impl(&_mh_execute_header, v43, v44, "KernelManager indicated deletion required. forRecovery: %{BOOL}d", v47, 8u);
          }

          v48 = v95;

          static DispatchTime.now()();
          v49 = v41;
          v50 = v86;
          + infix(_:_:)();
          v51 = *(v87 + 8);
          v51(v21, v46);
          v71 = sub_100100874(v50, v48, v49 & 1);

          v51(v50, v46);
          v52 = v93;
          v72 = v85;
          v73 = v89;
          if ((v71 & 1) == 0)
          {
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              *v76 = 0;
              _os_log_impl(&_mh_execute_header, v74, v75, "Failed to delete: Session Busy", v76, 2u);
            }

            v77 = sub_100020148(2026, 0, 0, 0);
            swift_willThrow();
            swift_errorRetain();
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              *v80 = 138412290;
              swift_errorRetain();
              v82 = _swift_stdlib_bridgeErrorToNSError();
              *(v80 + 4) = v82;
              *v81 = v82;
              _os_log_impl(&_mh_execute_header, v78, v79, "Failed to delete: %@", v80, 0xCu);
              sub_10000BD44(v81, &unk_10039E220, &qword_1002C3D60);
              v73 = v89;

              v72 = v85;
            }

            swift_errorRetain();
            v83 = sub_100020148(2009, 0, 0, v77);

            v52(0, v83);
          }

          v72(v73, v26);
          goto LABEL_17;
        }

        v39(v36, v26);
LABEL_16:
        v52 = v93;
LABEL_17:
        v68 = sub_10005B390(a1);
        v70 = v69;
        sub_10006568C(v91, v92, a9, a10, v68, v69, v90 & 1, a11 & 1, a12, a13, a14, a15, a16, v52, v94);
        sub_100009548(v68, v70);
        return;
      }
    }

    else
    {
      (*(v27 + 56))(v25, 1, 1, v26);
    }

    sub_10000BD44(v25, &qword_1003A01A8, &unk_1002C3C00);
    goto LABEL_16;
  }

  if (a3)
  {
    v53 = v95;
    v54 = *(v95 + 304);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 4;
    swift_errorRetain();
    v56 = _convertErrorToNSError(_:)();
    v57 = [v56 code];

    *(inited + 64) = &type metadata for Int;
    *(inited + 40) = v57;
    sub_100184144(inited);
    swift_setDeallocating();
    v58 = sub_10000BD44(inited + 32, &qword_10039FED8, &unk_1002C37D0);
    v59 = *(v54 + 56);
    __chkstk_darwin(v58);
    os_unfair_lock_lock((v59 + 32));
    sub_10006535C((v59 + 16));
    os_unfair_lock_unlock((v59 + 32));

    _s3__C4CodeOMa_2(0);
    v96[0] = 2030;
    swift_errorRetain();
    sub_1000650DC(&qword_10039DBE8, _s3__C4CodeOMa_2, &unk_1002BFC28);
    LOBYTE(inited) = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (inited)
    {
      v60 = v93;
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_10000403C(v61, qword_10039FF28);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Prohibit Timer is active (session busy)", v64, 2u);
      }

      v65 = sub_10000BE18((v53 + 480), *(v53 + 504));
      v66 = sub_100020148(2030, 0, 0, 0);
      sub_10013F4E4(v66, *v65);

      swift_errorRetain();
      v67 = sub_100020148(2026, 0, 0, a3);

      v60(0, v67);
    }

    else
    {
      swift_errorRetain();
      v93(0, a3);
    }
  }
}

void *sub_10005B390(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A01A8, &unk_1002C3C00);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - v3;
  v5 = sub_100182BA0(_swiftEmptyArrayStorage);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v61 = 0x8000000100346420;
  v62 = 0x8000000100346440;
  v60 = 0x80000001003463F0;
  v55 = a1;

  v11 = 0;
  v59 = &type metadata for Any + 8;
  v58 = v4;
  v57 = a1 + 64;
  v56 = v10;
  while (v9)
  {
    v13 = v11;
LABEL_16:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v13 << 6);
    v18 = *(*(v55 + 48) + v17);
    sub_10000BDA4(*(v55 + 56) + 32 * v17, &v65);
    LOBYTE(v67) = v18;
    sub_100019D3C(&v65, (&v67 + 8));
LABEL_17:
    v70 = v67;
    v71 = v68;
    v72 = v69;
    if (!v69)
    {

      *(&v71 + 1) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
      *&v70 = v5;
      v52 = sub_100099560(&v70, 0, 1);
      sub_10000959C(&v70);
      return v52;
    }

    v19 = v70;
    sub_100019D3C((&v70 + 8), &v67);
    v66 = v59;
    *&v65 = swift_allocObject();
    sub_10000BDA4(&v67, v65 + 16);
    if (v19 == 3)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_10000BDA4(&v67, &v63);
    v21 = type metadata accessor for BeeStateInfo.SystemStatus();
    v22 = swift_dynamicCast();
    v23 = *(*(v21 - 8) + 56);
    if ((v22 & 1) == 0)
    {
      v23(v4, 1, 1, v21);
      sub_10000BD44(v4, &qword_1003A01A8, &unk_1002C3C00);
      v25 = 0;
      v64 = &type metadata for String;
      goto LABEL_24;
    }

    v24 = *(v21 - 8);
    v23(v4, 0, 1, v21);
    v25 = BeeStateInfo.SystemStatus.description.getter();
    v26 = v4;
    v28 = v27;
    (*(v24 + 8))(v26, v21);
    v64 = &type metadata for String;
    if (!v28)
    {
      v25 = 0;
LABEL_24:
      v28 = 0xE000000000000000;
    }

    *&v63 = v25;
    *(&v63 + 1) = v28;
    sub_10000959C(&v65);
    sub_100019D3C(&v63, &v65);
LABEL_26:
    v29 = 0x6F436C61626F6C67;
    if (v19 == 7)
    {
      v29 = 0x4965746174536573;
    }

    v30 = 0xEE0064496769666ELL;
    if (v19 == 7)
    {
      v30 = 0xEB000000006F666ELL;
    }

    if (v19 == 6)
    {
      v29 = 0x6572617764726168;
      v30 = 0xEC00000065707954;
    }

    v31 = 0xD000000000000018;
    if (v19 == 4)
    {
      v31 = 0xD000000000000013;
    }

    v32 = v62;
    if (v19 == 4)
    {
      v32 = v61;
    }

    if (v19 <= 5)
    {
      v29 = v31;
      v30 = v32;
    }

    v33 = 0xD000000000000019;
    if (v19 != 2)
    {
      v33 = 0x74536D6574737973;
    }

    v34 = v60;
    if (v19 != 2)
    {
      v34 = 0xEC00000073757461;
    }

    v35 = 0x666E6F4365726F63;
    if (!v19)
    {
      v35 = 0x736B706163;
    }

    v36 = 0xEC00000064496769;
    if (!v19)
    {
      v36 = 0xE500000000000000;
    }

    if (v19 <= 1)
    {
      v33 = v35;
      v34 = v36;
    }

    if (v19 <= 3)
    {
      v37 = v33;
    }

    else
    {
      v37 = v29;
    }

    if (v19 <= 3)
    {
      v38 = v34;
    }

    else
    {
      v38 = v30;
    }

    sub_10000BDA4(&v65, &v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v5;
    v41 = sub_1000F5A28(v37, v38);
    v42 = v5[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_69;
    }

    v45 = v40;
    if (v5[3] >= v44)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v40)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1001811FC();
        if (v45)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10017CA5C(v44, isUniquelyReferenced_nonNull_native);
      v46 = sub_1000F5A28(v37, v38);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_71;
      }

      v41 = v46;
      if (v45)
      {
LABEL_4:

        v5 = v73;
        v12 = (v73[7] + 32 * v41);
        sub_10000959C(v12);
        sub_100019D3C(&v63, v12);
        sub_10000959C(&v67);
        goto LABEL_5;
      }
    }

    v5 = v73;
    v73[(v41 >> 6) + 8] |= 1 << v41;
    v48 = (v5[6] + 16 * v41);
    *v48 = v37;
    v48[1] = v38;
    sub_100019D3C(&v63, (v5[7] + 32 * v41));
    sub_10000959C(&v67);
    v49 = v5[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_70;
    }

    v5[2] = v51;
LABEL_5:
    sub_10000959C(&v65);
    v4 = v58;
    v6 = v57;
    v10 = v56;
  }

  if (v10 <= v11 + 1)
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v9 = 0;
      v69 = 0;
      v11 = v15;
      v67 = 0u;
      v68 = 0u;
      goto LABEL_17;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10005BB38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, void *), uint64_t a6)
{
  v99 = a5;
  v101 = a3;
  v100 = type metadata accessor for UUID();
  v10 = *(v100 - 8);
  __chkstk_darwin(v100);
  v12 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v14 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v14);
  v17 = (v86 - v16);
  if (!a1)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000403C(v22, qword_10039FF28);
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v23, v24))
      {

        goto LABEL_23;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "session busy %@", v25, 0xCu);
      sub_10000BD44(v26, &unk_10039E220, &qword_1002C3D60);
    }

    else
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000403C(v31, qword_10039FF28);
      v23 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v23, v32, "no kernel manager", v33, 2u);
      }
    }

LABEL_23:
    swift_beginAccess();
    v34 = *(a4 + 16);
    v35 = sub_100020148(2026, 0, 0, 0);
    v99(0, v34, v35);

    return;
  }

  v98 = v15;
  v102 = a1;
  v18 = [v102 stateInformation];
  v91 = v17;
  v92 = v12;
  v96 = a4;
  v97 = v10;
  v19 = v101;
  v95 = a6;
  if (v18)
  {
    v20 = v18;
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v21 + 16))
    {
      sub_10000BDA4(v21 + 32, &aBlock);

      sub_100004074(&qword_1003A0190, &unk_1002C4040);
      if (swift_dynamicCast())
      {
        v94 = v110;
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v94 = sub_100182BA0(_swiftEmptyArrayStorage);
LABEL_13:
  if (qword_10039D3C0 != -1)
  {
    swift_once();
  }

  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v29 = v96;
  v28 = v97;
  v107 = &type metadata for SPRFeatures;
  v108 = sub_1000094A0();
  LOBYTE(aBlock) = 2;
  v30 = isFeatureEnabled(_:)();
  sub_10000959C(&aBlock);
  if ((v30 & 1) == 0)
  {
    swift_beginAccess();
    *(v29 + 16) = 1;
LABEL_31:
    if (qword_10039D370 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_10039FF28);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "using legacy flow", v44, 2u);
    }

    v52 = sub_10011D5D4();
    v54 = v53;
    v55 = v100;

    v56 = v91;
    sub_10005D568(v52, v54, v91);
    v57 = *(v28 + 6);
    v101 = (v28 + 48);
    v93 = v57;
    if (v57(v56, 1, v55) == 1)
    {
      sub_10000BD44(v56, &qword_1003A0178, &unk_1002C3BB0);

      v89 = v54;
    }

    else
    {
      v52 = UUID.uuidString.getter();
      v89 = v58;
      (*(v28 + 1))(v56, v55);
    }

    v59 = sub_100090AB0();
    v60 = *(v59 + 2);
    if (v60)
    {
      v86[1] = 0;
      v87 = v52;
      v88 = v54;
      v103 = _swiftEmptyArrayStorage;
      sub_10004E2DC(0, v60, 0);
      v62 = 0;
      v61 = v103;
      v86[0] = v59;
      v90 = (v28 + 8);
      v91 = (v28 + 32);
      v63 = v59 + 32;
      v97 = v59 + 32;
      do
      {
        v64 = &v63[16 * v62];
        v66 = *v64;
        v65 = v64[1];
        swift_bridgeObjectRetain_n();
        if (String.count.getter() == 32)
        {
          v67 = HIBYTE(v65) & 0xF;
          aBlock = v66;
          v105 = v65;
          if ((v65 & 0x2000000000000000) == 0)
          {
            v67 = v66 & 0xFFFFFFFFFFFFLL;
          }

          v106 = 0;
          v107 = v67;

          while (String.Iterator.next()().value._object)
          {
            Character.hexDigitValue.getter();
            v69 = v68;

            if (v69)
            {

              goto LABEL_53;
            }
          }

          aBlock = v66;
          v105 = v65;

          String.index(_:offsetBy:)();
          String.insert(_:at:)();
          String.index(_:offsetBy:)();
          String.insert(_:at:)();
          String.index(_:offsetBy:)();
          String.insert(_:at:)();
          String.index(_:offsetBy:)();

          String.insert(_:at:)();
          v70 = v98;
          UUID.init(uuidString:)();

          v71 = v100;
          if (v93(v70, 1, v100))
          {
            sub_10000BD44(v70, &qword_1003A0178, &unk_1002C3BB0);
          }

          else
          {
            v72 = v92;
            (*v91)(v92, v70, v71);
            v66 = UUID.uuidString.getter();
            v74 = v73;
            (*v90)(v72, v71);

            v65 = v74;
          }

          v63 = v97;
        }

        else
        {
        }

LABEL_53:
        v103 = v61;
        v76 = v61[2];
        v75 = v61[3];
        if (v76 >= v75 >> 1)
        {
          sub_10004E2DC((v75 > 1), v76 + 1, 1);
          v61 = v103;
        }

        ++v62;
        v61[2] = v76 + 1;
        v77 = &v61[2 * v76];
        v77[4] = v66;
        v77[5] = v65;
      }

      while (v62 != v60);

      v29 = v96;
      v52 = v87;
    }

    else
    {

      v61 = _swiftEmptyArrayStorage;
    }

    sub_100004074(&qword_1003A0188, &qword_1002C3BD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1790;
    *(inited + 32) = 7;
    *(inited + 64) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
    *(inited + 40) = v94;
    *(inited + 72) = 8;
    *(inited + 104) = &type metadata for String;
    v79 = v89;
    *(inited + 80) = v52;
    *(inited + 88) = v79;
    *(inited + 112) = 2;
    *(inited + 144) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    *(inited + 120) = v61;
    v80 = sub_10018436C(inited);
    swift_setDeallocating();
    sub_100004074(&qword_1003A0198, &qword_1002C3BF0);
    swift_arrayDestroy();

    v81 = v95;
    v82 = v99;
    v83 = swift_allocObject();
    *(v83 + 16) = v80;
    *(v83 + 24) = 0;
    *(v83 + 32) = v82;
    *(v83 + 40) = v81;
    *(v83 + 48) = v29;
    v108 = sub_100064FFC;
    v109 = v83;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_100003974;
    v107 = &unk_1003816F8;
    v84 = _Block_copy(&aBlock);

    v85 = v102;
    [v102 endSessionWithCompletion:v84];
    _Block_release(v84);

    v51 = v80;
    goto LABEL_58;
  }

  sub_10000BE18((v19 + 528), *(v19 + 552));
  v36 = sub_100092F30(v102);
  swift_beginAccess();
  *(v29 + 16) = v36 & 1;
  if (v36)
  {
    goto LABEL_31;
  }

  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000403C(v37, qword_10039FF28);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "kernel manager flow", v40, 2u);
  }

  sub_10000BE18((v101 + 528), *(v101 + 552));
  v45 = sub_100093144(v102);

  v46 = v95;
  v47 = v99;
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  *(v48 + 24) = 0;
  *(v48 + 32) = v47;
  *(v48 + 40) = v46;
  *(v48 + 48) = v29;
  v108 = sub_100065358;
  v109 = v48;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_100003974;
  v107 = &unk_100381748;
  v49 = _Block_copy(&aBlock);

  v50 = v102;
  [v102 endSessionWithCompletion:v49];
  _Block_release(v49);

  v51 = v45;
LABEL_58:
  sub_100064FF0(v51, 0);
}

uint64_t sub_10005D568@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (String.count.getter() == 32)
  {
    v9 = HIBYTE(a2) & 0xF;
    v16 = a1;
    v17 = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v18 = 0;
    v19 = v9;

    while (String.Iterator.next()().value._object)
    {
      Character.hexDigitValue.getter();
      v11 = v10;

      if (v11)
      {

        goto LABEL_8;
      }
    }

    v16 = a1;
    v17 = a2;

    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();

    String.insert(_:at:)();
    UUID.init(uuidString:)();

    v14 = type metadata accessor for UUID();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v8, 1, v14))
    {
      (*(v15 + 32))(a3, v8, v14);
      return (*(v15 + 56))(a3, 0, 1, v14);
    }

    sub_10000BD44(v8, &qword_1003A0178, &unk_1002C3BB0);
  }

  else
  {
LABEL_8:
  }

  v12 = type metadata accessor for UUID();
  return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
}

uint64_t sub_10005D828(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    v8 = *(a5 + 16);
    v9 = 0;
    v10 = a1;
  }

  else
  {
    swift_beginAccess();
    v8 = *(a5 + 16);
    v9 = a1;
    v10 = 0;
  }

  return a3(v9, v8, v10);
}

uint64_t sub_10005D8B0()
{
  *(v0 + 648) = 1;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_10000BE18((v0 + 24), v1);
  result = (*(v2 + 24))(v1, v2);
  v4 = *(v0 + 656);
  if (v4)
  {
    *(v4 + 96) = 1;
  }

  return result;
}

unint64_t sub_10005D924(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v425 = a1;
  v423 = type metadata accessor for UUID();
  v8 = *(v423 - 8);
  v9 = __chkstk_darwin(v423);
  v398 = v397 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v408 = v397 - v12;
  v13 = __chkstk_darwin(v11);
  v407 = v397 - v14;
  __chkstk_darwin(v13);
  v400 = v397 - v15;
  v16 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v16 - 8);
  v416 = v397 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v417 = v18;
  v418 = v19;
  __chkstk_darwin(v18);
  v412 = v397 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v22 = __chkstk_darwin(v21 - 8);
  v413 = v397 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v404 = v397 - v25;
  v26 = __chkstk_darwin(v24);
  v403 = v397 - v27;
  v28 = __chkstk_darwin(v26);
  v410 = v397 - v29;
  v30 = __chkstk_darwin(v28);
  v401 = v397 - v31;
  v32 = __chkstk_darwin(v30);
  v415 = v397 - v33;
  v34 = __chkstk_darwin(v32);
  v406 = v397 - v35;
  v36 = __chkstk_darwin(v34);
  v405 = v397 - v37;
  v38 = __chkstk_darwin(v36);
  v409 = v397 - v39;
  v40 = __chkstk_darwin(v38);
  v414 = v397 - v41;
  v42 = __chkstk_darwin(v40);
  v399 = v397 - v43;
  v44 = __chkstk_darwin(v42);
  v402 = v397 - v45;
  v46 = __chkstk_darwin(v44);
  v424 = v397 - v47;
  __chkstk_darwin(v46);
  v426 = v397 - v48;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  v50 = sub_10000403C(v49, qword_10039FF28);

  v421 = v50;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  v53 = os_log_type_enabled(v51, v52);
  v419 = v5;
  v420 = v8;
  v422 = a3;
  v427 = v4;
  if (v53)
  {
    v54 = swift_slowAlloc();
    *&v428 = swift_slowAlloc();
    *v54 = 136315394;
    v55 = _typeName(_:qualified:)();
    v57 = sub_100008F6C(v55, v56, &v428);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1002C1670;
    *(v58 + 32) = String.redactedTokenFromBase64()();
    *(v58 + 88) = &type metadata for Int;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = a3;
    v59 = showFunction(signature:_:)(0xD000000000000016, 0x80000001003483D0, v58);
    v61 = v60;

    v62 = sub_100008F6C(v59, v61, &v428);
    a3 = v422;

    *(v54 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v51, v52, "%s.%s", v54, 0x16u);
    swift_arrayDestroy();

    v8 = v420;
  }

  if ((a3 & 0x3FFF) == 0)
  {
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Received 0 status, returning empty dictionary", v88, 2u);
    }

    return sub_100182BA0(_swiftEmptyArrayStorage);
  }

  if (a3 >= 0x4000)
  {
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 134218240;
      *(v65 + 4) = 0x3FFFLL;
      *(v65 + 12) = 2048;
      *(v65 + 14) = 14;
      _os_log_impl(&_mh_execute_header, v63, v64, "Received status option greater than %ld. Ignoring all but last %ld bits.", v65, 0x16u);
    }
  }

  v66 = v8 + 14;
  v67 = *&v8[14]._os_unfair_lock_opaque;
  v68 = v423;
  v67(v426, 1, 1, v423);
  v67(v424, 1, 1, v68);
  v69 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v69 = v425 & 0xFFFFFFFFFFFFLL;
  }

  v411 = a2;
  if (v69)
  {
    v70 = v419;
    swift_beginAccess();
    v71 = v70[48];
    v72 = sub_10000BE18(v70 + 45, v71);
    v397[1] = v397;
    v73 = *(v71 - 8);
    __chkstk_darwin(v72);
    v75 = v397 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v75);
    v76 = [*(*v75 + 16) serialNumber];
    if (!v76)
    {
      __break(1u);
      goto LABEL_255;
    }

    v77 = v76;
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v82 = *(v73 + 8);
    v81 = (v73 + 8);
    v82(v75, v71);
    v83 = v411;

    v84 = v83;
    v85 = v427;
    sub_10008C068(v425, v84, v78, v80, v436);
    if (v85)
    {
      v427 = v85;
      sub_10000BD44(v424, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v426, &qword_1003A0178, &unk_1002C3BB0);
      return v81;
    }

    sub_10000BE18(v419 + 28, v419[31]);
    v81 = v416;
    sub_100043268(v416);
    v90 = v417;
    v89 = v418;
    if ((*(v418 + 48))(v81, 1, v417) == 1)
    {
      sub_10000BD44(v81, &unk_1003A3BE0, &qword_1002C36F0);
      v427 = sub_100020148(2039, 0xD00000000000001ELL, 0x80000001003483B0, 0);
      swift_willThrow();
      sub_10006413C(v436);
      sub_10000BD44(v424, &qword_1003A0178, &unk_1002C3BB0);
      v92 = v426;
LABEL_22:
      sub_10000BD44(v92, &qword_1003A0178, &unk_1002C3BB0);
      return v81;
    }

    v91 = v412;
    (*(v89 + 32))(v412, v81, v90);
    sub_10008B7F4(v91);
    v427 = 0;
    v93 = v402;
    sub_10008BD6C(v402);
    v81 = v420;
    v94 = v423;
    v95 = (*&v420[12]._os_unfair_lock_opaque)(v93, 1, v423);
    if (v95 == 1)
    {
      sub_10000BD44(v93, &qword_1003A0178, &unk_1002C3BB0);
      v427 = sub_100020148(2011, 0, 0, 0);
      swift_willThrow();
      sub_10006413C(v436);
      (*(v89 + 8))(v412, v90);
      sub_10000BD44(v424, &qword_1003A0178, &unk_1002C3BB0);
      v92 = v426;
      goto LABEL_22;
    }

    v96 = v426;
    sub_10000BD44(v426, &qword_1003A0178, &unk_1002C3BB0);
    v97 = v400;
    (*(v81 + 4))(v400, v93, v94);
    (*(v81 + 2))(v96, v97, v94);
    v67(v96, 0, 1, v94);
    v98 = v399;
    sub_10008B618(v399);
    sub_10006413C(v436);
    (*(v81 + 1))(v97, v94);
    (*(v418 + 8))(v412, v90);
    v99 = v424;
    sub_10000BD44(v424, &qword_1003A0178, &unk_1002C3BB0);
    sub_100064190(v98, v99);
    a3 = v422;
  }

  v100 = sub_100184494(_swiftEmptyArrayStorage);
  v445 = v100;
  type metadata accessor for StatusInspector();
  swift_allocObject();
  sub_100090FC8();
  v66 = &type metadata for Bool;
  v101 = v419;
  v418 = v102;
  if ((a3 & 0x1000) != 0)
  {
    goto LABEL_31;
  }

  v103 = v419;
  v104 = v414;
  sub_100065074(v424, v414, &qword_1003A0178, &unk_1002C3BB0);
  v105 = *&v420[12]._os_unfair_lock_opaque;
  v106 = v105(v104, 1, v423);
  v107 = v104;
  v101 = v103;
  v66 = &type metadata for Bool;
  sub_10000BD44(v107, &qword_1003A0178, &unk_1002C3BB0);
  if (v106 != 1)
  {
    sub_10000CCE4(v101 + 104, &v428);
    sub_10000BE18(&v428, *(&v429 + 1));
    v108 = v409;
    sub_100065074(v424, v409, &qword_1003A0178, &unk_1002C3BB0);
    v109 = v423;
    if (v105(v108, 1, v423) == 1)
    {
LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

    v110 = sub_10003EFB8(v108);
    (*&v420[2]._os_unfair_lock_opaque)(v108, v109);
    sub_10000959C(&v428);
    if (v110)
    {
      v100 = v445;
LABEL_31:
      v111 = SPRConfigurationStatusIsBrokenSeSepPairing;
      v112 = sub_100091684();
      *(&v429 + 1) = &type metadata for Bool;
      LOBYTE(v428) = (v112 & 1) == 0;
      sub_100019D3C(&v428, v433);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v435[0] = v100;
      sub_1001803A4(v433, v111, isUniquelyReferenced_nonNull_native);

      v445 = v435[0];
    }
  }

  v114 = v418;
  if (a3)
  {
    v115 = SPRConfigurationStatusKernelNeeded;
    v116 = sub_100091C28();
    if (v116 == 2)
    {
      sub_10017AD58(&v428);

      sub_10000BD44(&v428, &qword_10039E248, &qword_1002C23D0);
      if ((a3 & 0x100) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *(&v429 + 1) = &type metadata for Bool;
      LOBYTE(v428) = v116 & 1;
      sub_100019D3C(&v428, v433);
      v138 = v445;
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v435[0] = v138;
      sub_1001803A4(v433, v115, v139);

      v445 = v435[0];
      if ((a3 & 0x100) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_34:
    if ((a3 & 2) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_44;
  }

  if ((a3 & 0x100) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v117 = SPRConfigurationStatusKernelVersion;
  v118 = sub_100091C90();
  *(&v429 + 1) = &type metadata for String;
  if (v119)
  {
    v120 = v118;
  }

  else
  {
    v120 = 0;
  }

  v121 = 0xE000000000000000;
  if (v119)
  {
    v121 = v119;
  }

  *&v428 = v120;
  *(&v428 + 1) = v121;
  sub_100019D3C(&v428, v433);
  v122 = v445;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v435[0] = v122;
  sub_1001803A4(v433, v117, v123);

  v445 = v435[0];
  if ((a3 & 2) == 0)
  {
    goto LABEL_100;
  }

LABEL_44:
  v124 = sub_100091EF0();
  if (!v124)
  {
    goto LABEL_51;
  }

  v125 = v124;
  v126 = sub_10009211C();
  if (!v127)
  {

LABEL_51:
    if (*(v114 + 32) == 1)
    {
      v140 = SPRConfigurationStatusConfigNeeded;
      *(&v429 + 1) = &type metadata for Bool;
      LOBYTE(v428) = 1;
      sub_100019D3C(&v428, v433);
      v141 = v140;
      v142 = v445;
      v143 = swift_isUniquelyReferenced_nonNull_native();
      v435[0] = v142;
      sub_1001803A4(v433, v141, v143);

      v144 = v435[0];
      v145 = SPRConfigurationStatusProfileIDList;
      *(&v429 + 1) = &type metadata for String;
      *&v428 = 0;
      *(&v428 + 1) = 0xE000000000000000;
      sub_100019D3C(&v428, v433);
      v146 = v145;
      v147 = swift_isUniquelyReferenced_nonNull_native();
      v435[0] = v144;
      sub_1001803A4(v433, v146, v147);

      v445 = v435[0];
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&_mh_execute_header, v148, v149, "Config needed: GET profiles or GET Global Config failed: applet not installed", v150, 2u);
      }
    }

    goto LABEL_100;
  }

  v416 = v126;
  v417 = v127;
  *&v428 = v125;
  v128 = SPRConfigurationStatusProfileIDList;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_100064238();
  v129 = BidirectionalCollection<>.joined(separator:)();
  *(&v429 + 1) = &type metadata for String;
  *&v428 = v129;
  *(&v428 + 1) = v130;
  sub_100019D3C(&v428, v433);
  v131 = v445;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v435[0] = v131;
  sub_1001803A4(v433, v128, v132);

  v445 = v435[0];
  v133 = v405;
  sub_100065074(v426, v405, &qword_1003A0178, &unk_1002C3BB0);
  v134 = v420;
  v135 = *&v420[12]._os_unfair_lock_opaque;
  v136 = v423;
  if (v135(v133, 1, v423) == 1)
  {
    sub_10000BD44(v133, &qword_1003A0178, &unk_1002C3BB0);
    v137 = 2;
  }

  else
  {
    v151 = v407;
    (*&v134[8]._os_unfair_lock_opaque)(v407, v133, v136);
    sub_10000BE18(v419 + 13, v419[16]);
    sub_10003D678(v151, v437);
    v152 = v438;
    if (v438)
    {
      v153 = v440;
      v154 = v439;
      v155 = v437[7];

      v156 = sub_100041D1C(v437);
      *&v428 = v155;
      *(&v428 + 1) = v152;
      __chkstk_darwin(v156);
      v397[-2] = &v428;
      v157 = v427;
      LOBYTE(v155) = sub_10011D960(sub_1000653A0, &v397[-4], v125);
      v427 = v157;

      if (v155)
      {
        v114 = v418;
        v158 = v423;
        if (v154 == v416 && v153 == v417)
        {

          v159 = 0;
        }

        else
        {
          v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v159 = v165 ^ 1;
        }

        v164 = v406;
        (*&v420[2]._os_unfair_lock_opaque)(v407, v158);
      }

      else
      {
        (*&v420[2]._os_unfair_lock_opaque)(v407, v423);

        v159 = 1;
        v114 = v418;
        v164 = v406;
      }

      v137 = v159 & 1;
      v163 = v408;
      goto LABEL_68;
    }

    sub_100041D1C(v437);
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&_mh_execute_header, v160, v161, "Config needed: Profile cache returned a nil value", v162, 2u);
    }

    (*&v420[2]._os_unfair_lock_opaque)(v407, v136);
    v137 = 1;
  }

  v114 = v418;
  v163 = v408;
  v164 = v406;
LABEL_68:
  sub_100065074(v424, v164, &qword_1003A0178, &unk_1002C3BB0);
  v166 = v423;
  if (v135(v164, 1, v423) == 1)
  {

    sub_10000BD44(v164, &qword_1003A0178, &unk_1002C3BB0);
    v101 = v419;
    LOWORD(a3) = v422;
  }

  else
  {
    (*&v420[8]._os_unfair_lock_opaque)(v163, v164, v166);
    v101 = v419;
    LOWORD(a3) = v422;
    if (v137 == 2 || (v137) && (sub_10000BE18(v419 + 13, v419[16]), (sub_10003EFB8(v163) & 1) == 0))
    {
      (*&v420[2]._os_unfair_lock_opaque)(v163, v423);
    }

    else
    {
      sub_10000BE18((v101 + 104), *(v101 + 128));
      sub_10003D678(v163, v441);
      v167 = v442;
      if (v442)
      {
        v168 = v441[7];
        v170 = v443;
        v169 = v444;

        v171 = sub_100041D1C(v441);
        if (v137 == 2 || (v137 & 1) == 0)
        {
          *&v428 = v168;
          *(&v428 + 1) = v167;
          __chkstk_darwin(v171);
          v397[-2] = &v428;
          v173 = v427;
          v174 = sub_10011D960(sub_10006429C, &v397[-4], v125);
          v427 = v173;

          if (v174)
          {
            if (v170 == v416 && v169 == v417)
            {

              v172 = 0;
            }

            else
            {
              v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v172 = v179 ^ 1;
            }
          }

          else
          {

            v172 = 1;
          }

          LOWORD(a3) = v422;
        }

        else
        {

          v172 = 1;
        }

        v137 = v172 & 1;
        v180 = Logger.logObject.getter();
        v181 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          *&v428 = v183;
          *v182 = 136315138;
          LOBYTE(v433[0]) = v137;
          sub_100004074(&qword_1003A01A0, &qword_1002C3BF8);
          v184 = Optional.debugDescription.getter();
          a3 = sub_100008F6C(v184, v185, &v428);

          *(v182 + 4) = a3;
          LOWORD(a3) = v422;
          _os_log_impl(&_mh_execute_header, v180, v181, "Overriding config needed to %s: SAF profile id not found in cache, or cached global config id does not match current global config id", v182, 0xCu);
          sub_10000959C(v183);
        }

        (*&v420[2]._os_unfair_lock_opaque)(v408, v423);
        v114 = v418;
      }

      else
      {

        sub_100041D1C(v441);
        v175 = Logger.logObject.getter();
        v176 = static os_log_type_t.default.getter();
        v177 = os_log_type_enabled(v175, v176);
        v114 = v418;
        if (v177)
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&_mh_execute_header, v175, v176, "Config needed: Profile cache returned a nil value for SAF", v178, 2u);
        }

        (*&v420[2]._os_unfair_lock_opaque)(v163, v423);
        v137 = 1;
      }
    }
  }

  v186 = v417;

  v187 = HIBYTE(v186) & 0xF;
  if ((v186 & 0x2000000000000000) == 0)
  {
    v187 = v416 & 0xFFFFFFFFFFFFLL;
  }

  if (v187)
  {
    v188 = SPRConfigurationStatusConfigNeeded;
    if (v137 == 2)
    {
      v428 = 0u;
      v429 = 0u;
      v189 = SPRConfigurationStatusConfigNeeded;
      sub_10000BD44(&v428, &qword_10039E248, &qword_1002C23D0);
      sub_10017AD58(v433);

      v114 = v418;
      sub_10000BD44(v433, &qword_10039E248, &qword_1002C23D0);
      v66 = &type metadata for Bool;
      goto LABEL_100;
    }
  }

  else
  {
    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *v192 = 0;
      _os_log_impl(&_mh_execute_header, v190, v191, "Config needed: Global Config not loaded", v192, 2u);
    }

    v188 = SPRConfigurationStatusConfigNeeded;
    LOBYTE(v137) = 1;
  }

  *(&v429 + 1) = &type metadata for Bool;
  LOBYTE(v428) = v137;
  v66 = &type metadata for Bool;
  sub_100019D3C(&v428, v433);
  v193 = v188;
  v194 = v445;
  v195 = swift_isUniquelyReferenced_nonNull_native();
  v435[0] = v194;
  sub_1001803A4(v433, v193, v195);

  v445 = v435[0];
LABEL_100:
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_101;
  }

  v197 = v415;
  sub_100065074(v426, v415, &qword_1003A0178, &unk_1002C3BB0);
  v66 = v420 + 12;
  v417 = *&v420[12]._os_unfair_lock_opaque;
  v198 = (v417)(v197, 1, v423);
  sub_10000BD44(v197, &qword_1003A0178, &unk_1002C3BB0);
  if (v198 == 1)
  {
    v196 = 0;
    v416 = 0;
    v417 = 0xF000000000000000;
    v66 = &type metadata for Bool;
    goto LABEL_105;
  }

  v114 = sub_10009211C();
  v202 = v201;
  v203 = sub_100091EF0();
  v204 = sub_100092468();
  if (!v202 || !v203 || !v204)
  {

    v114 = v418;
    LOWORD(a3) = v422;
    v66 = &type metadata for Bool;
    if (*(v418 + 32) == 1)
    {
      v342 = SPRConfigurationStatusKernelUpdateNeeded;
      *(&v429 + 1) = &type metadata for Bool;
      LOBYTE(v428) = 1;
      sub_100019D3C(&v428, v433);
      v343 = v342;
      v344 = v445;
      v345 = swift_isUniquelyReferenced_nonNull_native();
      v435[0] = v344;
      sub_1001803A4(v433, v343, v345);

      v196 = 0;
      v416 = 0;
      v445 = v435[0];
      goto LABEL_102;
    }

LABEL_101:
    v196 = 0;
    v416 = 0;
LABEL_102:
    v417 = 0xF000000000000000;
    goto LABEL_105;
  }

  v416 = v203;
  v414 = v204;
  v205 = v401;
  sub_10005D568(v114, v202, v401);
  v206 = v423;
  if ((v417)(v205, 1, v423) == 1)
  {
    sub_10000BD44(v205, &qword_1003A0178, &unk_1002C3BB0);
    v409 = 0;
    v207 = 0xE000000000000000;
  }

  else
  {
    v409 = UUID.uuidString.getter();
    v207 = v349;
    (*&v420[2]._os_unfair_lock_opaque)(v205, v206);
  }

  v412 = v207;
  v350 = v416;
  a3 = *(v416 + 16);
  if (a3)
  {
    v101 = 0;
    v351 = (v416 + 32);
    v407 = &v420[2];
    v408 = &v420[8];
    v352 = _swiftEmptyArrayStorage;
    v415 = (v416 + 32);
    while (1)
    {
LABEL_215:
      if (v101 >= *(v350 + 16))
      {
        __break(1u);
        goto LABEL_253;
      }

      v353 = &v351[16 * v101];
      v114 = *v353;
      v354 = v353[1];
      ++v101;
      swift_bridgeObjectRetain_n();
      if (String.count.getter() == 32)
      {
        break;
      }

      swift_bridgeObjectRelease_n();
      if (v101 == a3)
      {
        goto LABEL_234;
      }
    }

    v355 = v352;
    v356 = HIBYTE(v354) & 0xF;
    *&v428 = v114;
    *(&v428 + 1) = v354;
    if ((v354 & 0x2000000000000000) == 0)
    {
      v356 = v114 & 0xFFFFFFFFFFFFLL;
    }

    *&v429 = 0;
    *(&v429 + 1) = v356;

    while (String.Iterator.next()().value._object)
    {
      Character.hexDigitValue.getter();
      v358 = v357;

      if (v358)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_225;
      }
    }

    *&v428 = v114;
    *(&v428 + 1) = v354;

    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();

    String.insert(_:at:)();
    v359 = v410;
    UUID.init(uuidString:)();

    if ((v417)(v359, 1, v423))
    {
      sub_10000BD44(v359, &qword_1003A0178, &unk_1002C3BB0);
LABEL_225:

      v351 = v415;
      v350 = v416;
      if (v101 != a3)
      {
        goto LABEL_215;
      }

      goto LABEL_234;
    }

    v360 = v398;
    v361 = v359;
    v362 = v423;
    (*v408)(v398, v361, v423);
    v406 = UUID.uuidString.getter();
    v114 = v363;

    (*v407)(v360, v362);
    v352 = v355;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v352 = sub_10004D4B0(0, *(v355 + 2) + 1, 1, v355);
    }

    v350 = v416;
    v365 = *(v352 + 2);
    v364 = *(v352 + 3);
    if (v365 >= v364 >> 1)
    {
      v352 = sub_10004D4B0((v364 > 1), v365 + 1, 1, v352);
    }

    *(v352 + 2) = v365 + 1;
    v366 = &v352[16 * v365];
    *(v366 + 4) = v406;
    *(v366 + 5) = v114;
    v351 = v415;
    if (v101 != a3)
    {
      goto LABEL_215;
    }
  }

  else
  {
    v352 = _swiftEmptyArrayStorage;
  }

LABEL_234:

  v367 = v412;

  v368 = v352;
  v369 = Logger.logObject.getter();
  v370 = static os_log_type_t.info.getter();

  v371 = os_log_type_enabled(v369, v370);
  v417 = v368;
  if (v371)
  {
    v372 = swift_slowAlloc();
    v416 = swift_slowAlloc();
    *&v428 = v416;
    *v372 = 136315650;
    v373 = Dictionary.description.getter();
    v375 = sub_100008F6C(v373, v374, &v428);

    *(v372 + 4) = v375;
    *(v372 + 12) = 2080;
    *(v372 + 14) = sub_100008F6C(v409, v367, &v428);
    *(v372 + 22) = 2080;
    v376 = Array.description.getter();
    v378 = sub_100008F6C(v376, v377, &v428);

    *(v372 + 24) = v378;
    _os_log_impl(&_mh_execute_header, v369, v370, "stateInfo: %s\nglobal: %s\nprofiles: %s", v372, 0x20u);
    swift_arrayDestroy();
  }

  v81 = v427;
  v114 = v418;
  v101 = v419;
  v66 = &type metadata for Bool;
  v379 = sub_100091050();
  if (!v379)
  {

    v196 = 0;
    v416 = 0;
    v417 = 0xF000000000000000;
    LOWORD(a3) = v422;
    goto LABEL_105;
  }

  a3 = v379;
  *(&v429 + 1) = &type metadata for SPRFeatures;
  v430 = sub_1000094A0();
  LOBYTE(v428) = 2;
  v380 = isFeatureEnabled(_:)();
  sub_10000959C(&v428);
  if (v380)
  {
    sub_10000BE18((v101 + 528), *(v101 + 552));
    v381 = sub_100092F30(a3);
    if (v81)
    {
      v382 = Logger.logObject.getter();
      v383 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v382, v383))
      {
        v384 = swift_slowAlloc();
        *v384 = 0;
        _os_log_impl(&_mh_execute_header, v382, v383, "Could not get the kernel manager, setting legacy flow to true.", v384, 2u);
      }

      v81 = 0;
    }

    else if ((v381 & 1) == 0)
    {

      v393 = Logger.logObject.getter();
      v394 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v393, v394))
      {
        v395 = swift_slowAlloc();
        *v395 = 0;
        _os_log_impl(&_mh_execute_header, v393, v394, "kernel manager flow", v395, 2u);
      }

      sub_10000BE18((v101 + 528), *(v101 + 552));
      *&v433[0] = sub_100093144(a3);
      *(&v429 + 1) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
      *&v428 = v417;
      sub_10002D530(&v428, 2);
      v416 = sub_10005B390(*&v433[0]);
      v417 = v396;
      v427 = 0;
LABEL_253:

      v196 = 0;
      LOWORD(a3) = v422;
      goto LABEL_105;
    }
  }

  v385 = Logger.logObject.getter();
  v386 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v385, v386))
  {
    v387 = swift_slowAlloc();
    *v387 = 0;
    _os_log_impl(&_mh_execute_header, v385, v386, "using the legacy flow", v387, 2u);
  }

  sub_100004074(&qword_1003A0188, &qword_1002C3BD8);
  v388 = swift_allocObject();
  *(v388 + 32) = 8;
  *(v388 + 16) = xmmword_1002C1790;
  *(v388 + 64) = &type metadata for String;
  v389 = v412;
  *(v388 + 40) = v409;
  *(v388 + 48) = v389;
  *(v388 + 72) = 2;
  *(v388 + 104) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  *(v388 + 80) = v417;
  *(v388 + 112) = 7;
  *(v388 + 144) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
  *(v388 + 120) = v414;
  v390 = sub_10018436C(v388);
  swift_setDeallocating();
  sub_100004074(&qword_1003A0198, &qword_1002C3BF0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v391 = sub_10005B390(v390);
  v427 = v81;
  if (v81)
  {

    sub_10000BD44(v424, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v426, &qword_1003A0178, &unk_1002C3BB0);

    return v81;
  }

  v416 = v391;
  v417 = v392;

  v196 = 1;
  LOWORD(a3) = v422;
  v114 = v418;
LABEL_105:
  if ((a3 & 8) != 0)
  {
    v199 = SPRConfigurationStatusPinAppletNeeded;
    v200 = sub_1000925A4();
    if (v200 == 2)
    {
      sub_10017AD58(&v428);

      sub_10000BD44(&v428, &qword_10039E248, &qword_1002C23D0);
    }

    else
    {
      *(&v429 + 1) = v66;
      LOBYTE(v428) = v200 & 1;
      sub_100019D3C(&v428, v433);
      v208 = v445;
      v209 = swift_isUniquelyReferenced_nonNull_native();
      v435[0] = v208;
      sub_1001803A4(v433, v199, v209);

      v445 = v435[0];
    }
  }

  if (*(v114 + 32) == 1)
  {
    if (*(v114 + 33) != 1)
    {
      v226 = SPRConfigurationStatusIsSeAvailable;
      *(&v429 + 1) = v66;
      LOBYTE(v428) = 1;
      sub_100019D3C(&v428, v433);
      v227 = v226;
      v228 = v445;
      v229 = swift_isUniquelyReferenced_nonNull_native();
      v435[0] = v228;
      sub_1001803A4(v433, v227, v229);

      v445 = v435[0];
      goto LABEL_126;
    }

    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v210, v211))
    {
      a3 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      *&v428 = v212;
      *a3 = 136315394;
      *(a3 + 4) = sub_100008F6C(0xD000000000000016, 0x80000001003483D0, &v428);
      *(a3 + 12) = 2048;
      *(a3 + 14) = 1172;
      _os_log_impl(&_mh_execute_header, v210, v211, "%s %ld: Applet not selectable but is present in SE stateInfo. May be due to prohibit timer.", a3, 0x16u);
      sub_10000959C(v212);
      v66 = &type metadata for Bool;

      LOWORD(a3) = v422;
    }

    v213 = SPRConfigurationStatusIsSeAvailable;
    *(&v429 + 1) = v66;
    LOBYTE(v428) = 0;
    sub_100019D3C(&v428, v433);
    v214 = v213;
    v215 = v445;
    v216 = swift_isUniquelyReferenced_nonNull_native();
    v435[0] = v215;
    sub_1001803A4(v433, v214, v216);

    v217 = v435[0];
    v445 = v435[0];
    if (a3)
    {
      v255 = Logger.logObject.getter();
      v256 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        *v257 = 0;
        _os_log_impl(&_mh_execute_header, v255, v256, "override isKernelNeeded to false", v257, 2u);
        v66 = &type metadata for Bool;
      }

      v258 = SPRConfigurationStatusKernelNeeded;
      *(&v429 + 1) = v66;
      LOBYTE(v428) = 0;
      sub_100019D3C(&v428, v433);
      a3 = v258;
      v259 = swift_isUniquelyReferenced_nonNull_native();
      v435[0] = v217;
      sub_1001803A4(v433, a3, v259);

      v217 = v435[0];
      v445 = v435[0];
      LOWORD(a3) = v422;
      if ((v422 & 2) == 0)
      {
LABEL_120:
        if ((a3 & 0x40) == 0)
        {
          goto LABEL_126;
        }

        goto LABEL_121;
      }
    }

    else if ((a3 & 2) == 0)
    {
      goto LABEL_120;
    }

    v260 = v403;
    sub_100065074(v426, v403, &qword_1003A0178, &unk_1002C3BB0);
    v261 = (*&v420[12]._os_unfair_lock_opaque)(v260, 1, v423);
    sub_10000BD44(v260, &qword_1003A0178, &unk_1002C3BB0);
    if (v261 == 1)
    {
      LOWORD(a3) = v422;
      v66 = &type metadata for Bool;
      if ((v422 & 0x40) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_121;
    }

    v337 = Logger.logObject.getter();
    v338 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v337, v338))
    {
      v339 = swift_slowAlloc();
      *v339 = 0;
      _os_log_impl(&_mh_execute_header, v337, v338, "override isConfigNeeded to false", v339, 2u);
    }

    v340 = SPRConfigurationStatusConfigNeeded;
    v66 = &type metadata for Bool;
    *(&v429 + 1) = &type metadata for Bool;
    LOBYTE(v428) = 0;
    sub_100019D3C(&v428, v433);
    a3 = v340;
    v341 = swift_isUniquelyReferenced_nonNull_native();
    v435[0] = v217;
    sub_1001803A4(v433, a3, v341);

    v217 = v435[0];
    v445 = v435[0];
    LOWORD(a3) = v422;
    if ((v422 & 0x40) != 0)
    {
LABEL_121:
      v218 = v404;
      sub_100065074(v426, v404, &qword_1003A0178, &unk_1002C3BB0);
      v219 = (*&v420[12]._os_unfair_lock_opaque)(v218, 1, v423);
      LOWORD(a3) = v422;
      sub_10000BD44(v218, &qword_1003A0178, &unk_1002C3BB0);
      v220 = v219 == 1;
      v66 = &type metadata for Bool;
      if (!v220)
      {
        v221 = Logger.logObject.getter();
        v222 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          *v223 = 0;
          _os_log_impl(&_mh_execute_header, v221, v222, "override isKernelUpdateNeeded to false", v223, 2u);
          v66 = &type metadata for Bool;
        }

        v224 = SPRConfigurationStatusKernelUpdateNeeded;
        *(&v429 + 1) = &type metadata for Bool;
        LOBYTE(v428) = 0;
        sub_100019D3C(&v428, v433);
        a3 = v224;
        v225 = swift_isUniquelyReferenced_nonNull_native();
        v435[0] = v217;
        sub_1001803A4(v433, a3, v225);

        v445 = v435[0];
        LOWORD(a3) = v422;
      }
    }
  }

LABEL_126:
  if (*(v114 + 34))
  {
    v230 = 1;
LABEL_128:
    v231 = SPRConfigurationStatusIsSecurityViolation;
    *(&v429 + 1) = v66;
    LOBYTE(v428) = v230;
    sub_100019D3C(&v428, v433);
    v232 = v231;
    v233 = v445;
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v434[0] = v233;
    sub_1001803A4(v433, v232, v234);

    v445 = v434[0];
    swift_beginAccess();
    v235 = *(v101 + 384);
    v236 = *(v101 + 392);
    sub_100022438(v101 + 360, v235);
    v237 = *(v236 + 88);
    v238 = v236;
    v66 = &type metadata for Bool;
    v237(v230, v235, v238);
    swift_endAccess();
    goto LABEL_131;
  }

  swift_beginAccess();
  v230 = *(*sub_10000BE18((v101 + 360), *(v101 + 384)) + 32);
  if ((a3 & 0x2000) != 0 || v230)
  {
    goto LABEL_128;
  }

LABEL_131:
  if (*(v114 + 32) == 1)
  {
    *(v114 + 32) = 0;
    v239 = sub_100091050();
    if (v239)
    {
      v240 = v239;
      v430 = sub_100091444;
      v431 = 0;
      *&v428 = _NSConcreteStackBlock;
      *(&v428 + 1) = 1107296256;
      *&v429 = sub_100003974;
      *(&v429 + 1) = &unk_100381590;
      v241 = _Block_copy(&v428);
      [v240 endSessionWithCompletion:v241];
      _Block_release(v241);
    }
  }

  v242 = v422;
  if (v417 >> 60 == 15)
  {
    goto LABEL_156;
  }

  v243 = v413;
  sub_100065074(v426, v413, &qword_1003A0178, &unk_1002C3BB0);
  if ((*&v420[12]._os_unfair_lock_opaque)(v243, 1, v423) != 1)
  {
    v244 = v416;
    v245 = v417;
    sub_1000094F4(v416, v417);
    sub_10000BD44(v243, &qword_1003A0178, &unk_1002C3BB0);
    v246 = v427;
    v247 = sub_100066728(v425, v411, v244, v245, v196);
    if (!v246)
    {
      v427 = 0;
      v262 = SPRConfigurationStatusKernelUpdateNeeded;
      v66 = &type metadata for Bool;
      *(&v429 + 1) = &type metadata for Bool;
      LOBYTE(v428) = v247 & 1;
      v263 = v247;
      sub_100019D3C(&v428, v433);
      v264 = v262;
      v265 = v445;
      v266 = swift_isUniquelyReferenced_nonNull_native();
      v434[0] = v265;
      sub_1001803A4(v433, v264, v266);

      v267 = v434[0];
      v268 = SPRConfigurationStatusConfigNeeded;
      *(&v429 + 1) = &type metadata for Bool;
      LOBYTE(v428) = HIBYTE(v263) & 1;
      sub_100019D3C(&v428, v433);
      v269 = v268;
      v270 = swift_isUniquelyReferenced_nonNull_native();
      v434[0] = v267;
      sub_1001803A4(v433, v269, v270);

      v445 = v434[0];
      if ((v263 & 0x100) != 0)
      {
        v346 = Logger.logObject.getter();
        v347 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v346, v347))
        {
          v348 = swift_slowAlloc();
          *v348 = 0;
          _os_log_impl(&_mh_execute_header, v346, v347, "Config needed: Configuration backend determined kernel or config update needed", v348, 2u);
        }

        sub_10001A074(v416, v417);

        if ((v242 & 4) != 0)
        {
          goto LABEL_157;
        }
      }

      else
      {
        sub_10001A074(v416, v417);
        if ((v242 & 4) != 0)
        {
          goto LABEL_157;
        }
      }

LABEL_137:
      if ((v242 & 0x10) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_159;
    }

    swift_errorRetain();
    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      *&v428 = v251;
      *v250 = 136315138;
      *&v433[0] = v246;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v252 = String.init<A>(describing:)();
      v254 = sub_100008F6C(v252, v253, &v428);

      *(v250 + 4) = v254;
      _os_log_impl(&_mh_execute_header, v248, v249, "network error for kernel update status\n%s", v250, 0xCu);
      sub_10000959C(v251);
      v242 = v422;

      sub_10001A074(v416, v417);
    }

    else
    {
      sub_10001A074(v416, v417);
    }

    v427 = 0;
    v66 = &type metadata for Bool;
LABEL_156:
    if ((v242 & 4) != 0)
    {
      goto LABEL_157;
    }

    goto LABEL_137;
  }

  sub_10000BD44(v243, &qword_1003A0178, &unk_1002C3BB0);
  if ((v242 & 4) == 0)
  {
    goto LABEL_137;
  }

LABEL_157:
  v271 = SPRConfigurationStatusSeIdentifier;
  swift_beginAccess();
  v272 = *(v101 + 384);
  v273 = sub_10000BE18((v101 + 360), v272);
  v274 = *(v272 - 8);
  __chkstk_darwin(v273);
  v276 = v397 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v274 + 16))(v276);
  a3 = *(*v276 + 16);
  v277 = v271;
  v278 = [a3 serialNumber];
  if (!v278)
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  v279 = v278;
  v280 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v282 = v281;

  (*(v274 + 8))(v276, v272);
  *(&v429 + 1) = &type metadata for String;
  *&v428 = v280;
  *(&v428 + 1) = v282;
  sub_100019D3C(&v428, v433);
  v283 = v445;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v434[0] = v283;
  sub_1001803A4(v433, v277, v284);

  v445 = v434[0];
  v101 = v419;
  v242 = v422;
  v66 = &type metadata for Bool;
  if ((v422 & 0x10) == 0)
  {
LABEL_138:
    if ((v242 & 0x20) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_160;
  }

LABEL_159:
  v285 = SPRConfigurationStatusIsProductionSigned;
  swift_beginAccess();
  v286 = *(*sub_10000BE18((v101 + 360), *(v101 + 384)) + 16);
  v287 = v285;
  v288 = [v286 isProductionSigned];
  *(&v429 + 1) = v66;
  LOBYTE(v428) = v288;
  sub_100019D3C(&v428, v433);
  v289 = v445;
  v290 = swift_isUniquelyReferenced_nonNull_native();
  v434[0] = v289;
  sub_1001803A4(v433, v287, v290);

  v445 = v434[0];
  if ((v242 & 0x20) == 0)
  {
LABEL_139:
    if ((v242 & 0x80) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_161;
  }

LABEL_160:
  v291 = SPRConfigurationStatusVersion;
  v292 = objc_opt_self();
  v293 = v291;
  v294 = [v292 current];
  v295 = [v294 bundleVersion];

  v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v298 = v297;

  *(&v429 + 1) = &type metadata for String;
  *&v428 = v296;
  *(&v428 + 1) = v298;
  v242 = v422;
  sub_100019D3C(&v428, v433);
  v299 = v445;
  v300 = swift_isUniquelyReferenced_nonNull_native();
  v434[0] = v299;
  sub_1001803A4(v433, v293, v300);

  v445 = v434[0];
  if ((v242 & 0x80) == 0)
  {
    goto LABEL_164;
  }

LABEL_161:
  v301 = qword_10039D728;
  v302 = SPRConfigurationStatusIsPasscodeEnabled;
  if (v301 != -1)
  {
    swift_once();
  }

  v303 = [qword_1003A6EA0 canEvaluatePolicy:2 error:0];
  *(&v429 + 1) = v66;
  LOBYTE(v428) = v303;
  sub_100019D3C(&v428, v433);
  v304 = v445;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v434[0] = v304;
  sub_1001803A4(v433, v302, v305);

  v445 = v434[0];
LABEL_164:
  if ((v242 & 0x800) != 0)
  {
    swift_beginAccess();
    sub_10000BE18((v101 + 360), *(v101 + 384));
    v307 = sub_1001392D0();
    if ((v307 & 1) == 0)
    {
      v308 = Logger.logObject.getter();
      v309 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v308, v309))
      {
        v310 = swift_slowAlloc();
        *v310 = 0;
        _os_log_impl(&_mh_execute_header, v308, v309, "Incorrect JCOP version", v310, 2u);
      }

      v311 = sub_10000BE18((v101 + 480), *(v101 + 504));
      v312 = sub_100020148(2033, 0, 0, 0);
      sub_10013F4E4(v312, *v311);
    }

    v313 = SPRConfigurationStatusIsJCOPVersionCorrect;
    *(&v429 + 1) = v66;
    LOBYTE(v428) = v307 & 1;
    sub_100019D3C(&v428, v433);
    v314 = v313;
    v315 = v445;
    v316 = swift_isUniquelyReferenced_nonNull_native();
    v432 = v315;
    sub_1001803A4(v433, v314, v316);

    v306 = v432;
    v445 = v432;
  }

  else
  {
    v306 = v445;
  }

  v317 = *(v101 + 304);
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  v318 = swift_allocObject();
  *(v318 + 16) = xmmword_1002C1690;
  *(v318 + 32) = 8;
  sub_1000F32D4(v306, &v428, SPRConfigurationStatusKernelNeeded);
  if (*(&v429 + 1))
  {
    if (swift_dynamicCast())
    {
      v319 = v433[0];
      *(v318 + 64) = &type metadata for Bool;
      *(v318 + 40) = v319;
      goto LABEL_176;
    }
  }

  else
  {
    sub_10000BD44(&v428, &qword_10039E248, &qword_1002C23D0);
  }

  *(v318 + 56) = 0u;
  *(v318 + 40) = 0u;
LABEL_176:
  *(v318 + 72) = 9;
  sub_1000F32D4(v306, &v428, SPRConfigurationStatusKernelUpdateNeeded);
  if (*(&v429 + 1))
  {
    if (swift_dynamicCast())
    {
      v320 = v433[0];
      *(v318 + 104) = &type metadata for Bool;
      *(v318 + 80) = v320;
      goto LABEL_181;
    }
  }

  else
  {
    sub_10000BD44(&v428, &qword_10039E248, &qword_1002C23D0);
  }

  *(v318 + 80) = 0u;
  *(v318 + 96) = 0u;
LABEL_181:
  *(v318 + 112) = 10;
  sub_1000F32D4(v306, &v428, SPRConfigurationStatusConfigNeeded);
  if (*(&v429 + 1))
  {
    if (swift_dynamicCast())
    {
      v321 = v433[0];
      *(v318 + 144) = &type metadata for Bool;
      *(v318 + 120) = v321;
      goto LABEL_186;
    }
  }

  else
  {
    sub_10000BD44(&v428, &qword_10039E248, &qword_1002C23D0);
  }

  *(v318 + 136) = 0u;
  *(v318 + 120) = 0u;
LABEL_186:
  *(v318 + 152) = 11;
  sub_1000F32D4(v306, &v428, SPRConfigurationStatusIsJCOPVersionCorrect);
  if (*(&v429 + 1))
  {
    if (swift_dynamicCast())
    {
      v322 = v433[0];
      *(v318 + 184) = &type metadata for Bool;
      *(v318 + 160) = v322;
      goto LABEL_191;
    }
  }

  else
  {
    sub_10000BD44(&v428, &qword_10039E248, &qword_1002C23D0);
  }

  *(v318 + 160) = 0u;
  *(v318 + 176) = 0u;
LABEL_191:
  a3 = sub_100184144(v318);
  swift_setDeallocating();
  sub_100004074(&qword_10039FED8, &unk_1002C37D0);
  swift_arrayDestroy();
  v323 = swift_deallocClassInstance();
  v66 = *(v317 + 56);
  __chkstk_darwin(v323);
  v397[-2] = a3;
  os_unfair_lock_lock(v66 + 8);
  v324 = v427;
  sub_1000507B4(&v66[4]._os_unfair_lock_opaque);
  if (!v324)
  {
    os_unfair_lock_unlock(v66 + 8);

    v326 = *(v317 + 56);
    __chkstk_darwin(v325);
    v397[-2] = v317;
    LOBYTE(v397[-1]) = 2;
    os_unfair_lock_lock((v326 + 32));
    sub_100064200((v326 + 16));
    os_unfair_lock_unlock((v326 + 32));
    if (sub_1000514E4(v306)[2])
    {
      sub_100004074(&qword_1003A0180, &unk_1002C3BC8);
      v327 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v327 = &_swiftEmptyDictionarySingleton;
    }

    *&v428 = v327;

    sub_100061930(v328, 1, &v428);
    v427 = 0;

    v81 = v428;

    v329 = Logger.logObject.getter();
    v330 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v329, v330))
    {
      v331 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      *&v428 = v332;
      *v331 = 136315138;
      v333 = Dictionary.description.getter();
      v335 = sub_100008F6C(v333, v334, &v428);

      *(v331 + 4) = v335;
      _os_log_impl(&_mh_execute_header, v329, v330, "Configurator.status() ended with result: %s", v331, 0xCu);
      sub_10000959C(v332);

      sub_10001A074(v416, v417);
    }

    else
    {
      sub_10001A074(v416, v417);
    }

    sub_10000BD44(v424, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v426, &qword_1003A0178, &unk_1002C3BB0);

    return v81;
  }

LABEL_257:
  os_unfair_lock_unlock(v66 + 8);
  __break(1u);
  os_unfair_lock_unlock((a3 + 32));
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}