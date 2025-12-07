void NSFileManager.parsec_removeItemOrLogError(at:message:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for URL();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100003664();
  v11 = v10 - v9;
  URL.standardizedFileURL.getter();
  v12 = URL.path.getter();
  v14 = v13;
  (*(v7 + 8))(v11, v5);
  v15 = String.utf8CString.getter();
  LODWORD(v5) = unlink((v15 + 32));

  if (v5 == noErr.getter())
  {
  }

  else
  {
    if (qword_1002141B8 != -1)
    {
      sub_100004270(&qword_1002141B8);
    }

    v16 = type metadata accessor for Logger();
    sub_10000964C(v16, qword_100232D18);
    sub_10000835C();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315650;
      *(v19 + 4) = sub_100009684(a2, a3, &v22);
      *(v19 + 12) = 2080;
      v21 = sub_100009684(v12, v14, &v22);

      *(v19 + 14) = v21;
      *(v19 + 22) = 1024;
      *(v19 + 24) = errno.getter();
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: at path %s errno: %d)", v19, 0x1Cu);
      swift_arrayDestroy();
      sub_1000036D4(v20);
      sub_1000036D4(v19);
    }

    else
    {
    }
  }
}

uint64_t NSFileManager.parsec_renameForStateChange(sessionFile:toState:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v8 = sub_100046184(&qword_100218230, &unk_100199A00);
  v9 = sub_100005490(v8);
  __chkstk_darwin(v9);
  sub_100003838();
  v62 = v10;
  sub_100007F80();
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for URL();
  sub_100003650();
  v64 = v15;
  __chkstk_darwin(v16);
  sub_100003838();
  v60 = v17;
  sub_100007F80();
  __chkstk_darwin(v18);
  sub_100005924();
  v59 = v19;
  sub_100007F80();
  __chkstk_darwin(v20);
  sub_100005924();
  v61 = v21;
  sub_100007F80();
  __chkstk_darwin(v22);
  v24 = &v55 - v23;
  __chkstk_darwin(v25);
  sub_1000F0A70();
  __chkstk_darwin(v26);
  v28 = &v55 - v27;
  v63 = v3;
  NSFileManager.parsecdSessionFBDirectoryURL.getter();
  if (sub_100008D0C(v13, 1, v14) == 1)
  {
    sub_10000F94C(v13, &qword_100218230, &unk_100199A00);
    v29 = 1;
    return sub_1000051C0(a3, v29, 1, v14);
  }

  v56 = a3;
  v57 = v4;
  SessionFilename.filenameString.getter();
  URL.appendingPathComponent(_:)();

  v58 = a2;
  v30 = v64;
  v31 = *(v64 + 8);
  v31(v13, v14);
  URL.standardizedFileURL.getter();
  v55 = v31;
  v31(v24, v14);
  v32 = v58;
  v33 = *(v30 + 32);
  v33(v28, v5, v14);
  v34 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
  swift_beginAccess();
  if (sub_1000BCD94())
  {
    a3 = v56;
    v33(v56, v28, v14);
    v29 = 0;
    return sub_1000051C0(a3, v29, 1, v14);
  }

  v64 = v30 + 32;
  *(v65 + v34) = v32;
  v35 = v14;
  v37 = v62;
  v36 = v63;
  NSFileManager.parsecdSessionFBDirectoryURL.getter();
  if (sub_100008D0C(v37, 1, v35) == 1)
  {
    sub_10000F94C(v37, &qword_100218230, &unk_100199A00);
    v55(v28, v35);
    v29 = 1;
    a3 = v56;
LABEL_9:
    v14 = v35;
    return sub_1000051C0(a3, v29, 1, v14);
  }

  SessionFilename.filenameString.getter();
  v38 = v60;
  URL.appendingPathComponent(_:)();

  v39 = v37;
  v40 = v55;
  v55(v39, v35);
  URL.standardizedFileURL.getter();
  v41 = v38;
  v42 = v40;
  v40(v41, v35);
  v43 = v61;
  v44 = sub_100015B74();
  (v33)(v44);
  URL._bridgeToObjectiveC()(v45);
  v47 = v46;
  URL._bridgeToObjectiveC()(v48);
  v50 = v49;
  v66 = 0;
  v51 = [v36 moveItemAtURL:v47 toURL:v49 error:&v66];

  if (v51)
  {
    v52 = v66;
    v42(v28, v35);
    a3 = v56;
    v33(v56, v43, v35);
    v29 = 0;
    goto LABEL_9;
  }

  v54 = v66;
  sub_10000835C();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v42(v43, v35);
  return (v42)(v28, v35);
}

void *NSFileManager.parsec_getPrunedSessionFiles(maximum:)(uint64_t a1)
{
  NSFileManager.sessionFiles.getter();
  v4 = *(v3 + 16);
  if (v4 <= a1)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = v4 - a1 / 2;
  if (__OFSUB__(v4, a1 / 2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v3;

  a1 = 0;
  sub_1000ECF20(&v14);

  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000F086C(0, v5, v14);
  v5 = v6;
  a1 = v7;
  v1 = v8;

  if (v1)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = _swiftEmptyArrayStorage;
    }

    v12 = v11[2];

    if (!__OFSUB__(v1 >> 1, a1))
    {
      if (v12 == (v1 >> 1) - a1)
      {
        swift_dynamicCastClass();
        sub_10000835C();
        swift_unknownObjectRelease_n();
        if (v5)
        {
          return v5;
        }

        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }

LABEL_18:
      swift_unknownObjectRelease_n();
      goto LABEL_5;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  v9 = sub_1000041F8();
  sub_1000ED224(v9, v10, a1, v1);
  sub_10000835C();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1000EBC78(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v2 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v2 - 8);
  v61 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v68 = &v52 - v5;
  v67 = type metadata accessor for Date();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v52 - v8;
  v9 = sub_100046184(&qword_100219BC8, &unk_10019FCF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v15 = type metadata accessor for URLResourceValues();
  v66 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v21 = sub_100046184(&qword_100219BC0, &qword_10019EA80);
  inited = swift_initStackObject();
  v62 = xmmword_100197F20;
  *(inited + 16) = xmmword_100197F20;
  *(inited + 32) = NSURLCreationDateKey;
  v23 = NSURLCreationDateKey;
  sub_10002DD0C(inited);
  v24 = v69;
  URL.resourceValues(forKeys:)();
  if (v24)
  {

    v25 = 1;
    sub_1000051C0(v14, 1, 1, v15);
    v26 = v14;
LABEL_3:
    sub_10000F94C(v26, &qword_100219BC8, &unk_10019FCF0);
    return v25 & 1;
  }

  v69 = 0;
  v57 = v21;
  v58 = v23;
  v56 = v17;
  v59 = v11;

  sub_1000051C0(v14, 0, 1, v15);
  v27 = v66;
  v55 = *(v66 + 32);
  v55(v20, v14, v15);
  v28 = v68;
  URLResourceValues.creationDate.getter();
  v29 = v67;
  v30 = sub_100008D0C(v28, 1, v67);
  v31 = v27;
  if (v30 == 1)
  {
    (*(v27 + 8))(v20, v15);
    sub_10000F94C(v68, &qword_100217050, &qword_100199180);
    v25 = 1;
    return v25 & 1;
  }

  v53 = v15;
  v54 = v20;
  v33 = v64;
  v32 = v65;
  v34 = *(v65 + 32);
  v34(v64, v68, v29);
  v35 = swift_initStackObject();
  *(v35 + 16) = v62;
  v36 = v58;
  *(v35 + 32) = v58;
  v37 = v36;
  sub_10002DD0C(v35);
  v38 = v59;
  v39 = v69;
  URL.resourceValues(forKeys:)();
  if (v39)
  {

    (*(v32 + 8))(v33, v67);
    v40 = v53;
    (*(v31 + 8))(v54, v53);
    v25 = 1;
    sub_1000051C0(v38, 1, 1, v40);
    v26 = v38;
    goto LABEL_3;
  }

  v69 = v34;

  v41 = v53;
  sub_1000051C0(v38, 0, 1, v53);
  v42 = v56;
  v55(v56, v38, v41);
  v43 = v61;
  URLResourceValues.creationDate.getter();
  v44 = v67;
  if (sub_100008D0C(v43, 1, v67) == 1)
  {
    v45 = *(v66 + 8);
    v45(v42, v41);
    (*(v65 + 8))(v64, v44);
    v45(v54, v41);
    sub_10000F94C(v43, &qword_100217050, &qword_100199180);
    v25 = 1;
  }

  else
  {
    v46 = v60;
    v69(v60, v43, v44);
    v47 = v64;
    v25 = static Date.< infix(_:_:)();
    v48 = v44;
    v49 = *(v65 + 8);
    v49(v46, v48);
    v50 = *(v66 + 8);
    v50(v56, v41);
    v49(v47, v48);
    v50(v54, v41);
  }

  return v25 & 1;
}

Swift::Void __swiftcall NSFileManager.parsec_pruneSessionFiles(maximum:)(Swift::Int maximum)
{
  sub_100005478();
  v2 = v1;
  v3 = type metadata accessor for URL();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003664();
  v9 = v8 - v7;
  v10 = NSFileManager.parsec_getPrunedSessionFiles(maximum:)(v2);
  v11 = v10[2];
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    sub_10001AC4C();
    v16 = v10 + v15;
    v17 = *(v12 + 56);
    do
    {
      v13(v9, v16, v3);
      NSFileManager.parsec_removeItemOrLogError(at:message:)(v9, 0xD00000000000001BLL, 0x80000001001B0BB0);
      (*(v12 - 8))(v9, v3);
      v16 += v17;
      --v11;
    }

    while (v11);

    sub_100005460();
  }

  else
  {
    sub_100005460();
  }
}

uint64_t NSFileManager.databaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v2);
  sub_100003760();
  __chkstk_darwin(v3);
  v5 = &v9 - v4;
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  v6 = type metadata accessor for URL();
  if (sub_100008D0C(v5, 1, v6) == 1)
  {
    sub_10000F94C(v5, &qword_100218230, &unk_100199A00);
    v7 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = 0;
  }

  return sub_1000051C0(a1, v7, 1, v6);
}

uint64_t sub_1000EC58C(uint64_t a1)
{
  *(v1 + qword_10021A9E8) = a1;
  swift_errorRetain();
}

void sub_1000EC5D0()
{
  if ((v0[81] & 1) == 0)
  {
    v1 = &v0[*(*v0 + 472)];
    v2 = sub_1001032C8(*v1, *(v1 + 2));
    sub_10000E2D4(v2);

    sub_100046184(&unk_100217040, &qword_1001989F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100197F20;
    v4 = *v1;
    *(v3 + 56) = &type metadata for Int;
    *(v3 + 64) = &protocol witness table for Int;
    *(v3 + 32) = v4;
    sub_10000E384("bytesWritten=%{signpost.description:attribute,public}llu", 56, 2, v3);

    v5 = *(*&v0[*(*v0 + 152)] + 16);

    os_unfair_lock_lock(v5);
    if ((v0[81] & 1) == 0)
    {
      sub_10002F5E4();
    }

    os_unfair_lock_unlock(v5);
  }
}

void *sub_1000EC700(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100046184(&qword_10021AC30, &qword_10019FB60);
  v4 = sub_10000590C();
  j__malloc_size(v4);
  sub_100008084();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1000EC7B8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100046184(&qword_1002153A8, &qword_1001996B0);
  v4 = sub_10000590C();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

void *sub_1000EC87C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100046184(&qword_100219BE0, &qword_10019EA90);
  v4 = *(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000ECAA4()
{
  sub_100005478();
  v1 = v0;
  v2 = type metadata accessor for SessionType();
  sub_100003650();
  v36 = v3;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_100009934();
  v40 = v8;
  if (*(v1 + 16) && (sub_100046184(&qword_100219BF8, &qword_10019EAA0), v9 = sub_10001BD20(), v10 = v9, (v35 = *(v1 + 16)) != 0))
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
      sub_100007CF0();
      sub_1000F09E8(&qword_100217588, v16, &protocol conformance descriptor for SessionType);
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
        sub_100007CF0();
        sub_1000F09E8(&qword_100218B58, v24, &protocol conformance descriptor for SessionType);
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

    sub_100005460();
  }
}

uint64_t sub_1000ECD9C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = _swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_100046184(&qword_100217B38, &qword_10019BE20);
  result = sub_10001BD20();
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
    v10 = ~(-1 << *(v3 + 32));
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

      v15 = (v3[6] + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (v3[6] + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v3[2] = v20;
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

void sub_1000ECF20(uint64_t *a1)
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100117B20();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1000ED328(v6);
  *a1 = v3;
}

void sub_1000ECFC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100046184(&qword_100214808, &unk_1001A2E40);
      v7 = sub_10000590C();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_10008C5AC();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1000ED09C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100046184(&qword_10021AC30, &qword_10019FB60);
      v7 = sub_10000590C();
      j__malloc_size(v7);
      sub_100008084();
      v7[2] = v5;
      v7[3] = v8;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1000ED158(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_1000058BC();
  v5 = sub_1000EC87C(v4, 0);
  v6 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  sub_100005490(v6);
  sub_10001AC4C();
  sub_1000F040C(v9, v5 + v7, v3, v1);
  sub_10001BBFC();
  sub_100007A80();
  if (v2 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_1000ED224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_10001A830(v5, 0, &qword_100219C10, &qword_10019EAB8, &type metadata accessor for URL);
    if (v4 != a3)
    {
      type metadata accessor for URL();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_1000ED328(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for URL();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URL() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000EDE18(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000ED458(0, v2, 1, a1);
  }
}

void sub_1000ED458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *&v102 = a1;
  v7 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v7 - 8);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v86 = &v72 - v11;
  v88 = type metadata accessor for Date();
  v12 = *(v88 - 8);
  __chkstk_darwin(v88);
  v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v87 = &v72 - v15;
  v16 = sub_100046184(&qword_100219BC8, &unk_10019FCF0);
  __chkstk_darwin(v16 - 8);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  v21 = type metadata accessor for URLResourceValues();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v80 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v91 = &v72 - v25;
  v26 = type metadata accessor for URL();
  __chkstk_darwin(v26);
  v95 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v105 = &v72 - v29;
  __chkstk_darwin(v30);
  v104 = &v72 - v32;
  v73 = a2;
  if (a3 == a2)
  {
    return;
  }

  v101 = v20;
  v79 = v9;
  v33 = *a4;
  v35 = *(v31 + 16);
  v34 = v31 + 16;
  v97 = v35;
  v98 = NSURLCreationDateKey;
  v36 = *(v34 + 56);
  v90 = (v22 + 32);
  v84 = (v12 + 32);
  v82 = (v12 + 8);
  v85 = (v22 + 8);
  v96 = (v34 - 8);
  v99 = v34;
  v93 = (v34 + 16);
  v37 = (v33 + v36 * (a3 - 1));
  v92 = -v36;
  v38 = v102 - a3;
  v94 = v33;
  v72 = v36;
  v39 = v33 + v36 * a3;
  v102 = xmmword_100197F20;
  v103 = v21;
  v100 = v26;
  while (2)
  {
    v78 = a3;
    v75 = v39;
    v76 = v38;
    v77 = v37;
    do
    {
      v40 = v97;
      v97(v104, v39, v26);
      v40(v105, v37, v26);
      sub_100046184(&qword_100219BC0, &qword_10019EA80);
      inited = swift_initStackObject();
      *(inited + 16) = v102;
      v42 = v98;
      *(inited + 32) = v98;
      v43 = v42;
      sub_10002DD0C(inited);
      v44 = v101;
      v45 = v106;
      URL.resourceValues(forKeys:)();
      if (v45)
      {

        sub_1000051C0(v44, 1, 1, v103);
        v46 = v44;
LABEL_6:
        sub_10000F94C(v46, &qword_100219BC8, &unk_10019FCF0);
        v106 = 0;
LABEL_10:
        v54 = *v96;
        v26 = v100;
        (*v96)(v105, v100);
        v54(v104, v26);
        goto LABEL_11;
      }

      v106 = 0;

      v47 = v103;
      sub_1000051C0(v44, 0, 1, v103);
      v48 = v91;
      v89 = *v90;
      v89();
      v49 = v86;
      URLResourceValues.creationDate.getter();
      v50 = v49;
      v51 = v49;
      v52 = v88;
      if (sub_100008D0C(v51, 1, v88) == 1)
      {
        (*v85)(v48, v47);
        v53 = v50;
LABEL_9:
        sub_10000F94C(v53, &qword_100217050, &qword_100199180);
        goto LABEL_10;
      }

      v58 = *v84;
      (*v84)(v87, v50, v52);
      v59 = swift_initStackObject();
      *(v59 + 16) = v102;
      *(v59 + 32) = v43;
      v60 = v43;
      sub_10002DD0C(v59);
      v61 = v83;
      v62 = v106;
      URL.resourceValues(forKeys:)();
      if (v62)
      {

        (*v82)(v87, v52);
        v63 = v103;
        (*v85)(v48, v103);
        sub_1000051C0(v61, 1, 1, v63);
        v46 = v61;
        goto LABEL_6;
      }

      v81 = v58;
      v106 = 0;

      v64 = v103;
      sub_1000051C0(v61, 0, 1, v103);
      v65 = v80;
      (v89)(v80, v61, v64);
      v66 = v79;
      URLResourceValues.creationDate.getter();
      if (sub_100008D0C(v66, 1, v52) == 1)
      {
        v67 = *v85;
        (*v85)(v65, v64);
        (*v82)(v87, v52);
        v67(v91, v64);
        v53 = v66;
        goto LABEL_9;
      }

      v68 = v74;
      v81(v74, v66, v52);
      LODWORD(v89) = static Date.< infix(_:_:)();
      v69 = *v82;
      (*v82)(v68, v52);
      v70 = *v85;
      (*v85)(v65, v64);
      v69(v87, v88);
      v70(v91, v64);
      v71 = *v96;
      v26 = v100;
      (*v96)(v105, v100);
      v71(v104, v26);
      if ((v89 & 1) == 0)
      {
        break;
      }

LABEL_11:
      if (!v94)
      {
        __break(1u);
        return;
      }

      v55 = *v93;
      v56 = v95;
      (*v93)(v95, v39, v26);
      swift_arrayInitWithTakeFrontToBack();
      v55(v37, v56, v26);
      v37 += v92;
      v39 += v92;
    }

    while (!__CFADD__(v38++, 1));
    a3 = v78 + 1;
    v37 = &v77[v72];
    v38 = v76 - 1;
    v39 = v75 + v72;
    if (v78 + 1 != v73)
    {
      continue;
    }

    break;
  }
}

void sub_1000EDE18(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v234 = a4;
  v230 = a1;
  v7 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v7 - 8);
  v242 = &v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v252 = &v224 - v10;
  __chkstk_darwin(v11);
  v229 = &v224 - v12;
  __chkstk_darwin(v13);
  v233 = &v224 - v14;
  v254 = type metadata accessor for Date();
  v15 = *(v254 - 8);
  __chkstk_darwin(v254);
  v238 = &v224 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v224 - v18;
  __chkstk_darwin(v20);
  v225 = &v224 - v21;
  __chkstk_darwin(v22);
  v24 = &v224 - v23;
  v25 = sub_100046184(&qword_100219BC8, &unk_10019FCF0);
  __chkstk_darwin(v25 - 8);
  v27 = &v224 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v261 = &v224 - v29;
  __chkstk_darwin(v30);
  v32 = &v224 - v31;
  __chkstk_darwin(v33);
  v35 = &v224 - v34;
  v267 = type metadata accessor for URLResourceValues();
  v36 = *(v267 - 8);
  __chkstk_darwin(v267);
  v241 = &v224 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v256 = &v224 - v39;
  __chkstk_darwin(v40);
  v228 = &v224 - v41;
  __chkstk_darwin(v42);
  v240 = &v224 - v43;
  v268 = type metadata accessor for URL();
  __chkstk_darwin(v268);
  v239 = &v224 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v260 = &v224 - v46;
  __chkstk_darwin(v47);
  v278 = &v224 - v48;
  __chkstk_darwin(v49);
  v271 = &v224 - v50;
  __chkstk_darwin(v51);
  v246 = &v224 - v52;
  __chkstk_darwin(v53);
  v245 = &v224 - v54;
  __chkstk_darwin(v55);
  v227 = &v224 - v56;
  __chkstk_darwin(v57);
  v226 = &v224 - v59;
  v244 = a3;
  v60 = a3[1];
  v243 = v58;
  if (v60 < 1)
  {
    v62 = _swiftEmptyArrayStorage;
LABEL_136:
    v280 = *v230;
    if (!v280)
    {
LABEL_180:
      __break(1u);
      return;
    }

    v15 = v62;
    v111 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v214 = v15;
LABEL_139:
      v215 = v214 + 16;
      v216 = *(v214 + 2);
      while (v216 >= 2)
      {
        if (!*v244)
        {
          goto LABEL_177;
        }

        v15 = v214;
        v217 = &v214[16 * v216];
        v218 = *v217;
        v219 = &v215[2 * v216];
        v220 = *(v219 + 1);
        sub_1000EF8DC((*v244 + *(v243 + 72) * *v217), (*v244 + *(v243 + 72) * *v219), (*v244 + *(v243 + 72) * v220), v280);
        if (v111)
        {
          break;
        }

        if (v220 < v218)
        {
          goto LABEL_165;
        }

        if (v216 - 2 >= *v215)
        {
          goto LABEL_166;
        }

        *v217 = v218;
        *(v217 + 1) = v220;
        v221 = *v215 - v216;
        if (*v215 < v216)
        {
          goto LABEL_167;
        }

        v216 = *v215 - 1;
        sub_100117CA4(v219 + 16, v221, v219);
        *v215 = v216;
        v214 = v15;
      }

LABEL_147:

      return;
    }

LABEL_174:
    v214 = sub_10011775C(v15);
    goto LABEL_139;
  }

  v61 = 0;
  v266 = v58 + 16;
  v265 = (v58 + 8);
  v264 = NSURLCreationDateKey;
  v255 = (v36 + 32);
  v250 = (v15 + 32);
  v249 = (v15 + 8);
  v253 = (v36 + 8);
  v263 = (v58 + 32);
  v62 = _swiftEmptyArrayStorage;
  v272 = xmmword_100197F20;
  v248 = v19;
  v235 = v24;
  v247 = v27;
  v231 = v32;
  v237 = v35;
  v63 = v271;
  while (1)
  {
    v232 = v62;
    v64 = v61;
    v65 = v61 + 1;
    v262 = v61;
    if (v61 + 1 >= v60)
    {
      v110 = v234;
      v111 = v268;
    }

    else
    {
      v275 = v60;
      v66 = *v244;
      v67 = *(v243 + 72);
      v251 = v61 + 1;
      v15 = v66 + v67 * v65;
      v68 = *(v243 + 16);
      v69 = v226;
      v70 = v268;
      v68(v226, v15, v268);
      v71 = v66 + v67 * v64;
      v72 = v227;
      v273 = v68;
      v68(v227, v71, v70);
      LODWORD(v274) = sub_1000EBC78(v69, v72);
      v73 = &v279;
      if (v5)
      {
        goto LABEL_149;
      }

      v74 = *v265;
      (*v265)(v72, v70);
      v270 = v74;
      v74(v69, v70);
      v75 = (v262 + 2);
      v76 = v66 + v67 * (v262 + 2);
      v65 = v251;
      v77 = v275;
      v276 = v67;
      v78 = v237;
      while (1)
      {
        v79 = v75;
        if (v65 + 1 >= v77)
        {
          break;
        }

        v280 = v75;
        v251 = v65;
        v80 = v268;
        v81 = v273;
        v273(v245, v76, v268);
        v81(v246, v15, v80);
        sub_100046184(&qword_100219BC0, &qword_10019EA80);
        inited = swift_initStackObject();
        *(inited + 16) = v272;
        v83 = v264;
        *(inited + 32) = v264;
        v84 = v83;
        sub_10002DD0C(inited);
        URL.resourceValues(forKeys:)();
        if (v5)
        {

          v85 = 1;
          sub_1000051C0(v78, 1, 1, v267);
          sub_10000F94C(v78, &qword_100219BC8, &unk_10019FCF0);
          v5 = 0;
        }

        else
        {
          v277 = 0;

          v86 = v267;
          sub_1000051C0(v78, 0, 1, v267);
          v87 = v240;
          v88 = v78;
          v89 = *v255;
          (*v255)(v240, v88, v86);
          v90 = v233;
          URLResourceValues.creationDate.getter();
          v91 = v254;
          if (sub_100008D0C(v90, 1, v254) == 1)
          {
            (*v253)(v87, v86);
            sub_10000F94C(v90, &qword_100217050, &qword_100199180);
            v85 = 1;
            v5 = v277;
          }

          else
          {
            v92 = *v250;
            (*v250)(v235, v90, v91);
            v93 = swift_initStackObject();
            *(v93 + 16) = v272;
            *(v93 + 32) = v84;
            v94 = v84;
            sub_10002DD0C(v93);
            v95 = v231;
            v96 = v277;
            URL.resourceValues(forKeys:)();
            v5 = v96;
            if (v96)
            {

              (*v249)(v235, v91);
              v97 = v267;
              (*v253)(v240, v267);
              v85 = 1;
              sub_1000051C0(v95, 1, 1, v97);
              sub_10000F94C(v95, &qword_100219BC8, &unk_10019FCF0);
              v5 = 0;
            }

            else
            {

              sub_1000051C0(v95, 0, 1, v267);
              v98 = v228;
              v89();
              v99 = v229;
              URLResourceValues.creationDate.getter();
              if (sub_100008D0C(v99, 1, v91) == 1)
              {
                v100 = *v253;
                v101 = v98;
                v102 = v267;
                (*v253)(v101, v267);
                (*v249)(v235, v91);
                v100(v240, v102);
                sub_10000F94C(v99, &qword_100217050, &qword_100199180);
                v85 = 1;
              }

              else
              {
                v103 = v98;
                v104 = v225;
                v92(v225, v99, v91);
                v85 = static Date.< infix(_:_:)();
                v277 = *v249;
                v277(v104, v91);
                v105 = *v253;
                v106 = v103;
                v107 = v267;
                (*v253)(v106, v267);
                v277(v235, v91);
                v105(v240, v107);
              }
            }
          }

          v78 = v237;
        }

        v108 = v268;
        v109 = v270;
        v270(v246, v268);
        v109(v245, v108);
        v67 = v276;
        v76 += v276;
        v15 += v276;
        v65 = v251 + 1;
        v79 = v280;
        v75 = v280 + 1;
        v77 = v275;
        if ((v274 & 1) != (v85 & 1))
        {
          goto LABEL_21;
        }
      }

      v65 = v77;
LABEL_21:
      if (v274)
      {
        v110 = v234;
        v111 = v268;
        v63 = v271;
        if (v65 < v262)
        {
          goto LABEL_173;
        }

        if (v262 < v65)
        {
          v277 = v5;
          if (v77 >= v79)
          {
            v112 = v79;
          }

          else
          {
            v112 = v77;
          }

          v113 = v67 * (v112 - 1);
          v114 = v67 * v112;
          v115 = v262 * v67;
          v251 = v65;
          v116 = v262;
          while (1)
          {
            if (v116 != --v65)
            {
              v117 = *v244;
              if (!*v244)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v15 = v117 + v115;
              v118 = *v263;
              (*v263)(v239, v117 + v115, v111);
              if (v115 < v113 || v15 >= (v117 + v114))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v115 != v113)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v118((v117 + v113), v239, v111);
              v110 = v234;
              v67 = v276;
            }

            ++v116;
            v113 -= v67;
            v114 -= v67;
            v115 += v67;
            if (v116 >= v65)
            {
              v5 = v277;
              v63 = v271;
              v65 = v251;
              goto LABEL_42;
            }
          }
        }

        v64 = v262;
      }

      else
      {
        v110 = v234;
        v111 = v268;
        v63 = v271;
LABEL_42:
        v64 = v262;
      }
    }

    v120 = v244[1];
    if (v65 < v120)
    {
      if (__OFSUB__(v65, v64))
      {
        goto LABEL_170;
      }

      if (v65 - v64 < v110)
      {
        break;
      }
    }

LABEL_82:
    if (v65 < v64)
    {
      goto LABEL_169;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v251 = v65;
    if (isUniquelyReferenced_nonNull_native)
    {
      v62 = v232;
    }

    else
    {
      sub_10006C888();
      v62 = v212;
    }

    v169 = v62[2];
    v170 = v169 + 1;
    if (v169 >= v62[3] >> 1)
    {
      sub_10006C888();
      v62 = v213;
    }

    v62[2] = v170;
    v171 = v62 + 4;
    v172 = &v62[2 * v169 + 4];
    v173 = v251;
    *v172 = v262;
    v172[1] = v173;
    v280 = *v230;
    if (!v280)
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v111 = v5;
    if (v169)
    {
      v15 = v62;
      while (1)
      {
        v174 = v170 - 1;
        v175 = &v171[2 * v170 - 2];
        v176 = &v62[2 * v170];
        if (v170 >= 4)
        {
          break;
        }

        v177 = v243;
        if (v170 == 3)
        {
          v178 = v62[4];
          v179 = v62[5];
          v188 = __OFSUB__(v179, v178);
          v180 = v179 - v178;
          v181 = v188;
LABEL_103:
          if (v181)
          {
            goto LABEL_156;
          }

          v193 = *v176;
          v192 = v176[1];
          v194 = __OFSUB__(v192, v193);
          v195 = v192 - v193;
          v196 = v194;
          if (v194)
          {
            goto LABEL_159;
          }

          v197 = v175[1];
          v198 = v197 - *v175;
          if (__OFSUB__(v197, *v175))
          {
            goto LABEL_162;
          }

          if (__OFADD__(v195, v198))
          {
            goto LABEL_164;
          }

          if (v195 + v198 >= v180)
          {
            if (v180 < v198)
            {
              v174 = v170 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        if (v170 < 2)
        {
          goto LABEL_158;
        }

        v200 = *v176;
        v199 = v176[1];
        v188 = __OFSUB__(v199, v200);
        v195 = v199 - v200;
        v196 = v188;
LABEL_118:
        if (v196)
        {
          goto LABEL_161;
        }

        v202 = *v175;
        v201 = v175[1];
        v188 = __OFSUB__(v201, v202);
        v203 = v201 - v202;
        if (v188)
        {
          goto LABEL_163;
        }

        if (v203 < v195)
        {
          v62 = v15;
          goto LABEL_132;
        }

LABEL_125:
        if (v174 - 1 >= v170)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if (!*v244)
        {
          goto LABEL_176;
        }

        v207 = &v171[2 * v174 - 2];
        v208 = *v207;
        v209 = &v171[2 * v174];
        v210 = *(v209 + 1);
        sub_1000EF8DC((*v244 + *(v177 + 72) * *v207), (*v244 + *(v177 + 72) * *v209), (*v244 + *(v177 + 72) * v210), v280);
        if (v111)
        {
          goto LABEL_147;
        }

        if (v210 < v208)
        {
          goto LABEL_151;
        }

        v211 = *(v15 + 16);
        if (v174 > v211)
        {
          goto LABEL_152;
        }

        *v207 = v208;
        v207[1] = v210;
        if (v174 >= v211)
        {
          goto LABEL_153;
        }

        v170 = v211 - 1;
        sub_100117CA4(v209 + 16, v211 - 1 - v174, &v171[2 * v174]);
        v62 = v15;
        *(v15 + 16) = v211 - 1;
        v63 = v271;
        if (v211 <= 2)
        {
          goto LABEL_132;
        }
      }

      v182 = &v171[2 * v170];
      v183 = *(v182 - 8);
      v184 = *(v182 - 7);
      v188 = __OFSUB__(v184, v183);
      v185 = v184 - v183;
      if (v188)
      {
        goto LABEL_154;
      }

      v187 = *(v182 - 6);
      v186 = *(v182 - 5);
      v188 = __OFSUB__(v186, v187);
      v180 = v186 - v187;
      v181 = v188;
      v177 = v243;
      if (v188)
      {
        goto LABEL_155;
      }

      v189 = v176[1];
      v190 = v189 - *v176;
      if (__OFSUB__(v189, *v176))
      {
        goto LABEL_157;
      }

      v188 = __OFADD__(v180, v190);
      v191 = v180 + v190;
      if (v188)
      {
        goto LABEL_160;
      }

      if (v191 >= v185)
      {
        v205 = *v175;
        v204 = v175[1];
        v188 = __OFSUB__(v204, v205);
        v206 = v204 - v205;
        if (v188)
        {
          goto LABEL_168;
        }

        if (v180 < v206)
        {
          v174 = v170 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_103;
    }

LABEL_132:
    v60 = v244[1];
    v61 = v251;
    v5 = v111;
    if (v251 >= v60)
    {
      goto LABEL_136;
    }
  }

  if (__OFADD__(v64, v110))
  {
    goto LABEL_171;
  }

  if (v64 + v110 >= v120)
  {
    v15 = v244[1];
  }

  else
  {
    v15 = v64 + v110;
  }

  if (v15 < v64)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v65 == v15)
  {
    goto LABEL_82;
  }

  v121 = *v244;
  v259 = sub_100046184(&qword_100219C18, &qword_10019EAC0);
  v258 = *(v243 + 72);
  v257 = *(v243 + 16);
  v236 = v15;
  v275 = v121;
LABEL_54:
  v251 = v65;
LABEL_55:
  v277 = v5;
  v122 = v258;
  v274 = v121 + v258 * v65;
  v123 = v257;
  v257(v63);
  v280 = (v65 - 1);
  v273 = (v121 + (v65 - 1) * v122);
  v123(v278);
  v270 = sub_100046184(&qword_100219BC0, &qword_10019EA80);
  v124 = swift_initStackObject();
  *(v124 + 16) = v272;
  v125 = v264;
  *(v124 + 32) = v264;
  v126 = static _SetStorage.allocate(capacity:)();
  v127 = v126 + 56;
  v70 = *(v124 + 32);
  v269 = v125;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  v276 = v70;
  String.hash(into:)();
  v128 = Hasher._finalize()();

  v129 = ~(-1 << *(v126 + 32));
  while (1)
  {
    v130 = v128 & v129;
    v131 = (v128 & v129) >> 6;
    v132 = *(v127 + 8 * v131);
    v133 = 1 << (v128 & v129);
    if ((v133 & v132) == 0)
    {
      break;
    }

    v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v136 = v135;
    if (v134 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v136 == v137)
    {

      goto LABEL_67;
    }

    v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v139)
    {

LABEL_67:
      v141 = v277;
      v72 = v261;
      v69 = v280;
LABEL_68:
      swift_setDeallocating();
      sub_1000FA5B8();
      v63 = v271;
      URL.resourceValues(forKeys:)();
      v5 = v141;
      if (v141)
      {

        sub_1000051C0(v72, 1, 1, v267);
        sub_10000F94C(v72, &qword_100219BC8, &unk_10019FCF0);
        v5 = 0;
        v121 = v275;
        goto LABEL_75;
      }

      v142 = v267;
      sub_1000051C0(v72, 0, 1, v267);
      v143 = *v255;
      v144 = v256;
      (*v255)(v256, v72, v142);
      v145 = v252;
      URLResourceValues.creationDate.getter();
      v146 = v254;
      if (sub_100008D0C(v145, 1, v254) == 1)
      {
        (*v253)(v144, v142);
        sub_10000F94C(v145, &qword_100217050, &qword_100199180);
LABEL_74:
        v121 = v275;
        v69 = v280;
LABEL_75:
        v156 = *v265;
        v111 = v268;
        (*v265)(v278, v268);
        v156(v63, v111);
        v64 = v262;
        goto LABEL_76;
      }

      v147 = *v250;
      v148 = v248;
      (*v250)(v248, v145, v146);
      v149 = swift_initStackObject();
      *(v149 + 16) = v272;
      v150 = v269;
      *(v149 + 32) = v269;
      v151 = v150;
      sub_10002DD0C(v149);
      v152 = v247;
      URL.resourceValues(forKeys:)();

      sub_1000051C0(v152, 0, 1, v142);
      v153 = v241;
      (v143)(v241, v152, v142);
      v154 = v242;
      URLResourceValues.creationDate.getter();
      if (sub_100008D0C(v154, 1, v146) == 1)
      {
        v155 = *v253;
        (*v253)(v153, v142);
        (*v249)(v148, v146);
        v155(v256, v142);
        sub_10000F94C(v154, &qword_100217050, &qword_100199180);
        v63 = v271;
        goto LABEL_74;
      }

      v164 = v238;
      v147(v238, v154, v146);
      LODWORD(v277) = static Date.< infix(_:_:)();
      v165 = *v249;
      (*v249)(v164, v146);
      v166 = *v253;
      (*v253)(v153, v142);
      v165(v148, v146);
      v166(v256, v142);
      v167 = *v265;
      v111 = v268;
      (*v265)(v278, v268);
      v63 = v271;
      v167(v271, v111);
      v64 = v262;
      v121 = v275;
      v69 = v280;
      if ((v277 & 1) == 0)
      {
LABEL_80:
        v65 = v251 + 1;
        v15 = v236;
        if (v251 + 1 == v236)
        {
          v65 = v236;
          goto LABEL_82;
        }

        goto LABEL_54;
      }

LABEL_76:
      if (!v121)
      {
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v157 = *v263;
      v158 = v260;
      v159 = v69;
      v160 = v64;
      v161 = v63;
      (*v263)(v260, v274, v111);
      v162 = v273;
      swift_arrayInitWithTakeFrontToBack();
      v163 = v162;
      v63 = v161;
      v64 = v160;
      v65 = v159;
      v121 = v275;
      v157(v163, v158, v111);
      if (v65 == v64)
      {
        goto LABEL_80;
      }

      goto LABEL_55;
    }

    v128 = v130 + 1;
  }

  *(v127 + 8 * v131) = v133 | v132;
  *(*(v126 + 48) + 8 * v130) = v276;
  v140 = *(v126 + 16);
  v188 = __OFADD__(v140, 1);
  v73 = (v140 + 1);
  v141 = v277;
  v72 = v261;
  v69 = v280;
  if (!v188)
  {
    *(v126 + 16) = v73;
    goto LABEL_68;
  }

  __break(1u);
LABEL_149:
  v222 = *(v73 - 32);
  v223 = *v222;
  (*v222)(v72, v70);
  v223(v69, v70);
}

void sub_1000EF8DC(char *a1, char *a2, char *a3, char *a4)
{
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v72 - v11;
  __chkstk_darwin(v13);
  v15 = &v72 - v14;
  __chkstk_darwin(v16);
  v19 = &v72 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_66;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_67;
  }

  v88 = a1;
  v87 = a4;
  v81 = a3;
  v82 = (v17 + 16);
  v83 = (v17 + 8);
  v25 = v23 / v21;
  v26 = v21;
  if ((a2 - a1) / v21 >= v23 / v21)
  {
    v77 = v12;
    sub_100115B70(a2, v23 / v21, a4);
    v42 = a2;
    v43 = &a4[v25 * v26];
    v44 = -v26;
    v45 = v43;
    v46 = v81;
    v47 = a1;
    v48 = v85;
    v74 = v44;
    v75 = a1;
    v76 = a4;
LABEL_39:
    v78 = v42;
    v79 = &v42[v44];
    v49 = v46;
    v72 = v45;
    v50 = v45;
    v51 = v80;
    while (1)
    {
      if (v43 <= a4)
      {
        v85 = v48;
        v86 = v50;
        v88 = v42;
        goto LABEL_64;
      }

      if (v42 <= v47)
      {
        v88 = v42;
        v85 = v48;
        v86 = v72;
        goto LABEL_64;
      }

      v52 = v51;
      v53 = v49;
      v73 = v50;
      v54 = v48;
      v81 = v43;
      v55 = v43 + v44;
      v56 = *v82;
      v57 = v77;
      (*v82)(v77, v43 + v44, v8);
      (v56)(v52, v79, v8);
      v58 = sub_1000EBC78(v57, v52);
      v85 = v54;
      if (v54)
      {
        break;
      }

      v59 = v58;
      v46 = &v53[v44];
      v60 = *v83;
      (*v83)(v52, v8);
      v60(v57, v8);
      if (v59)
      {
        v64 = v53 < v78 || v46 >= v78;
        a4 = v76;
        if (v64)
        {
          v65 = v79;
          swift_arrayInitWithTakeFrontToBack();
          v42 = v65;
          v45 = v73;
          v44 = v74;
          v47 = v75;
          v48 = v85;
          v43 = v81;
        }

        else
        {
          v44 = v74;
          v45 = v73;
          v22 = v53 == v78;
          v66 = v79;
          v42 = v79;
          v47 = v75;
          v48 = v85;
          v43 = v81;
          if (!v22)
          {
            v67 = v85;
            v68 = v74;
            v69 = v73;
            swift_arrayInitWithTakeBackToFront();
            v43 = v81;
            v48 = v67;
            v42 = v66;
            v45 = v69;
            v44 = v68;
          }
        }

        goto LABEL_39;
      }

      v61 = v53 < v81 || v46 >= v81;
      a4 = v76;
      if (v61)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = &v53[v44];
        v43 = v55;
        v50 = v55;
        v42 = v78;
        v44 = v74;
        v47 = v75;
        v48 = v85;
        v51 = v80;
      }

      else
      {
        v50 = v55;
        v22 = v81 == v53;
        v49 = &v53[v44];
        v43 = v55;
        v42 = v78;
        v44 = v74;
        v47 = v75;
        v48 = v85;
        v51 = v80;
        if (!v22)
        {
          v62 = v78;
          v63 = v85;
          swift_arrayInitWithTakeBackToFront();
          v48 = v63;
          v42 = v62;
          v49 = v46;
          v43 = v55;
          v50 = v55;
        }
      }
    }

    v71 = *v83;
    (*v83)(v52, v8);
    v71(v57, v8);
    v88 = v78;
    v86 = v73;
  }

  else
  {
    v27 = v8;
    v28 = (a2 - a1) / v21;
    sub_100115B70(a1, v28, a4);
    v29 = a2;
    v79 = v19;
    v80 = &a4[v28 * v26];
    v86 = v80;
    v30 = v81;
    v31 = a1;
    v84 = v27;
    v78 = v15;
    while (a4 < v80 && v29 < v30)
    {
      v33 = v26;
      v34 = *v82;
      v35 = v29;
      (*v82)(v19);
      (v34)(v15, a4, v27);
      v36 = v85;
      v37 = sub_1000EBC78(v19, v15);
      v85 = v36;
      if (v36)
      {
        v70 = *v83;
        (*v83)(v15, v27);
        v70(v19, v27);
        break;
      }

      v38 = v37;
      v39 = *v83;
      (*v83)(v15, v27);
      v39(v19, v27);
      v26 = v33;
      if (v38)
      {
        if (v31 < v35 || v31 >= &v35[v33])
        {
          swift_arrayInitWithTakeFrontToBack();
          v29 = &v35[v33];
          v15 = v78;
        }

        else
        {
          v15 = v78;
          if (v31 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = &v35[v33];
        }

        v19 = v79;
      }

      else
      {
        if (v31 < a4 || v31 >= &a4[v33])
        {
          swift_arrayInitWithTakeFrontToBack();
          v15 = v78;
        }

        else
        {
          v15 = v78;
          if (v31 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v87 = &a4[v33];
        a4 += v33;
        v19 = v79;
        v29 = v35;
      }

      v31 += v33;
      v88 = v31;
      v30 = v81;
      v27 = v84;
    }
  }

LABEL_64:
  sub_100117858(&v88, &v87, &v86);
}

void sub_1000EFF30()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for Trialpb_TrialExperiment();
  sub_100003650();
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  sub_100003838();
  v27 = v10;
  sub_100007F80();
  __chkstk_darwin(v11);
  sub_100009934();
  v26 = v12;
  v13 = v1 + 56;
  v25 = -1 << *(v1 + 32);
  if (-v25 < 64)
  {
    v14 = ~(-1 << -v25);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v1 + 56);
  if (!v5)
  {
    v18 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v13;
    v7[2] = ~v25;
    v7[3] = v18;
    v7[4] = v15;
    sub_100005460();
    return;
  }

  v16 = v3;
  if (!v3)
  {
    v18 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v24 = v1 + 56;
    v17 = 0;
    v18 = 0;
    while (v17 < v16)
    {
      if (__OFADD__(v17, 1))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        v13 = v24;
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v19 >= ((63 - v25) >> 6))
          {
            v15 = 0;
            goto LABEL_22;
          }

          v15 = *(v24 + 8 * v19);
          ++v18;
          if (v15)
          {
            v30 = v17 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v30 = v17 + 1;
      v19 = v18;
LABEL_17:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v1;
      v22 = *(v29 + 72);
      (*(v29 + 16))(v27, *(v1 + 48) + v22 * (v20 | (v19 << 6)), v28);
      v23 = *(v29 + 32);
      v23(v26, v27, v28);
      v23(v5, v26, v28);
      v16 = v3;
      v17 = v30;
      if (v30 == v3)
      {
        v18 = v19;
        v13 = v24;
        v1 = v21;
        goto LABEL_22;
      }

      v5 += v22;
      v18 = v19;
      v1 = v21;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

void sub_1000F0198()
{
  sub_100005478();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  sub_10000E1C4();
  if (!v7)
  {
    v12 = 0;
LABEL_17:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v0;
    v5[3] = v12;
    v5[4] = v1;
    sub_100005460();
    return;
  }

  v9 = v8;
  if (!v8)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v7;
    v11 = 0;
    v12 = 0;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= ((63 - v0) >> 6))
          {
            v1 = 0;
            goto LABEL_17;
          }

          v1 = *(v6 + 8 * v14);
          ++v12;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v12;
LABEL_12:
      v15 = (*(v3 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v1)))));
      v16 = v15[1];
      v1 &= v1 - 1;
      *v10 = *v15;
      v10[1] = v16;
      if (v13 == v9)
      {

        v12 = v14;
        goto LABEL_17;
      }

      v10 += 2;

      v11 = v13;
      v12 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1000F02CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 + 64;
  sub_10000E1C4();
  if (!v9)
  {
    v14 = 0;
LABEL_16:
    *a1 = a4;
    a1[1] = v8;
    a1[2] = ~v4;
    a1[3] = v14;
    a1[4] = v5;
    return;
  }

  v11 = v10;
  if (!v10)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v9;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (!v5)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v16 >= ((63 - v4) >> 6))
          {
            v5 = 0;
            goto LABEL_16;
          }

          v5 = *(v8 + 8 * v16);
          ++v14;
          if (v5)
          {
            v14 = v16;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v17 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_100009848(*(a4 + 56) + ((v14 << 11) | (32 * v17)), v18);
      sub_100028734(v18, v19);
      sub_100028734(v19, v12);
      v12 += 2;
      v13 = v15;
      if (v15 == v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1000F040C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v34 - v10;
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  v41 = a2;
  if (!a2)
  {
    v16 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v16;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = v12;
    v36 = a1;
    v15 = 0;
    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (1)
    {
      if (v15 >= a3)
      {
        goto LABEL_24;
      }

      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_25;
      }

      if (!v14)
      {
        while (1)
        {
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v19 >= v17)
          {
            v14 = 0;
            a1 = v36;
            goto LABEL_19;
          }

          v14 = *(v11 + 8 * v19);
          ++v16;
          if (v14)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v19 = v16;
LABEL_15:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v19 << 6);
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = *(a4 + 56);
      v25 = *(v23 + 8 * v21);
      v26 = v24 + *(*(type metadata accessor for TopicCacheEntry(0) - 8) + 72) * v21;
      v27 = v39;
      sub_1000F0914(v26, &v39[*(v40 + 48)]);
      *v27 = v25;
      v28 = v27;
      v29 = v38;
      sub_1000F0978(v28, v38);
      v30 = v29;
      v31 = v41;
      sub_1000F0978(v30, v41);
      if (v18 == a3)
      {
        break;
      }

      v41 = v31 + *(v37 + 72);
      v32 = v25;
      v15 = v18;
      v16 = v19;
      a4 = v22;
    }

    v33 = v25;
    v16 = v19;
    a1 = v36;
    a4 = v22;
LABEL_19:
    v12 = v35;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

id sub_1000F0690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for FileAttributeKey(0);
  sub_1000F09E8(&qword_1002147B0, type metadata accessor for FileAttributeKey, &unk_10019897C);
  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [a5 createFileAtPath:a1 contents:isa attributes:v8];

  return v9;
}

id sub_1000F076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:isa options:a3 error:a4];

  return v10;
}

unint64_t sub_1000F0800(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000F086C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for URL();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000F0914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicCacheEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F0978(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F09E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000F0A30(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1000F0A84()
{
}

void sub_1000F0A9C()
{
  sub_100005478();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100003664();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003664();
  v14 = v13 - v12;
  v19[4] = sub_1000F39B0;
  v20 = v0;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v19[2] = v15;
  v19[3] = &unk_1001FC908;
  v16 = _Block_copy(v19);

  static DispatchQoS.unspecified.getter();
  sub_100006B40();
  sub_1000F3AA0(v17, 255, v18, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);

  sub_100005460();
}

void sub_1000F0CB4()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003664();
  v10 = v9 - v8;
  type metadata accessor for DispatchQoS();
  sub_100003650();
  v40 = v12;
  v41 = v11;
  __chkstk_darwin(v11);
  sub_100003664();
  v15 = v14 - v13;
  type metadata accessor for QueryCacheSpan(0);
  sub_1000092B4(v0 + 16, v42);

  v17 = sub_1000FDBCC(v16, 2, v42);
  v18 = (v3 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
  v19 = *(v3 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 24);
  if (!v19)
  {
    v32 = 0;
LABEL_10:
    sub_1000FDCDC(v32, 1);
LABEL_12:

    goto LABEL_13;
  }

  v39 = v6;
  v20 = v18[2];

  if (String.count.getter() < 1)
  {

    v32 = 1;
    goto LABEL_10;
  }

  v38 = v4;
  v21 = v17;

  v22 = String.count.getter();

  if (String.count.getter() >= v22)
  {
    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = v1;
    v33[4] = v21;
    v33[5] = v20;
    v33[6] = v19;
    v42[4] = sub_1000F3AE8;
    v42[5] = v33;
    sub_100003784();
    sub_1000040A8(COERCE_DOUBLE(1107296256));
    v42[2] = v34;
    v42[3] = &unk_1001FC980;
    v35 = _Block_copy(v42);

    static DispatchQoS.unspecified.getter();
    sub_100006B40();
    sub_1000F3AA0(v36, 255, v37, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v39 + 8))(v10, v38);
    (*(v40 + 8))(v15, v41);
    goto LABEL_12;
  }

  sub_1000FDCDC(2, 1);
  if (qword_1002140D8 != -1)
  {
    sub_10000393C(&qword_1002140D8);
  }

  v23 = type metadata accessor for Logger();
  sub_10000964C(v23, qword_100232AF8);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42[0] = v27;
    *v26 = 136643075;
    v28 = sub_100009684(v20, v19, v42);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2085;
    v29 = *v18;
    v30 = v18[1];

    v31 = sub_100009684(v29, v30, v42);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "BUG: NOT caching '%{sensitive}s' because input is longer than completed query '%{sensitive}s'", v26, 0x16u);
    swift_arrayDestroy();
    sub_1000036D4(v27);
    sub_1000036D4(v26);
  }

  else
  {
  }

LABEL_13:
  sub_100005460();
}

uint64_t sub_1000F1164(void *a1, uint64_t a2)
{
  v76 = a2;
  v72._object = type metadata accessor for URLComponents();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003664();
  v9 = v8 - v7;
  v10 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v69 - v11;
  v13 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v13 - 8);
  v15 = &v69 - v14;
  v16 = type metadata accessor for URL();
  sub_100003650();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100003664();
  v22 = v21 - v20;
  v23 = sub_1000F39B4(a1);
  if (v23)
  {
    v24 = *(v23 + 16);

    if (v24)
    {
      return 0;
    }
  }

  v72._countAndFlagsBits = v5;
  type metadata accessor for QueryCacheSpan(0);
  v75 = v2;
  sub_1000092B4(v2 + 16, &v78);

  v74 = sub_1000FDBCC(v26, 1, &v78);
  [a1 scale];
  v28 = v27;
  v29 = [a1 queryString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = String.lowercased()();
  countAndFlagsBits = v30._countAndFlagsBits;
  object = v30._object;

  sub_100053240(v76, v12, &unk_100218500, &qword_10019C7D8);
  v33 = type metadata accessor for URLRequest();
  if (sub_100008D0C(v12, 1, v33) == 1)
  {
    sub_10000F94C(v12, &unk_100218500, &qword_10019C7D8);
    sub_1000051C0(v15, 1, 1, v16);
LABEL_7:
    sub_10000F94C(v15, &qword_100218230, &unk_100199A00);
    goto LABEL_8;
  }

  URLRequest.url.getter();
  (*(*(v33 - 8) + 8))(v12, v33);
  if (sub_100008D0C(v15, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  (*(v18 + 32))(v22, v15, v16);
  v57 = objc_opt_self();
  URL._bridgeToObjectiveC()(v58);
  v60 = v59;
  v61 = [v57 parsec_componentsWithURL:v59 resolvingAgainstBaseURL:0];

  if (v61)
  {
    static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

    if (URLComponents.queryItems.getter())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000F190C();
      v71 = v62;
      v38 = v63;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v18;
      sub_1000F190C();
      v69 = v64;
      v36 = v65;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000F190C();
      v73 = v66;
      v34 = v67;

      v68 = v9;
      v35 = v69;
      v37 = v71;
      (*(v72._countAndFlagsBits + 8))(v68, v72._object);
      (*(v70 + 8))(v22, v16);
      goto LABEL_9;
    }

    (*(v72._countAndFlagsBits + 8))(v9, v72._object);
  }

  (*(v18 + 8))(v22, v16);
LABEL_8:
  v73 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
LABEL_9:
  if (qword_1002140D8 != -1)
  {
    sub_10000393C(&qword_1002140D8);
  }

  v39 = type metadata accessor for Logger();
  sub_10000964C(v39, qword_100232AF8);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v77[0] = v70;
    *v42 = 136643331;
    *(v42 + 4) = sub_100009684(v30._countAndFlagsBits, v30._object, v77);
    *(v42 + 12) = 2080;
    v78 = v37;
    v79 = v38;

    sub_100046184(&qword_1002181F0, &qword_10019C610);
    v71 = v38;
    v43 = v35;
    v44 = String.init<A>(describing:)();
    v72 = v30;
    v46 = v37;
    v47 = v34;
    v48 = sub_100009684(v44, v45, v77);

    *(v42 + 14) = v48;
    v34 = v47;
    v37 = v46;
    *(v42 + 22) = 2085;
    v78 = v35;
    v79 = v36;

    v49 = String.init<A>(describing:)();
    v51 = sub_100009684(v49, v50, v77);
    v52 = v72;
    object = v52._object;
    countAndFlagsBits = v52._countAndFlagsBits;

    *(v42 + 24) = v51;
    v35 = v43;
    v38 = v71;
    _os_log_impl(&_mh_execute_header, v40, v41, "cache lookup: '%{sensitive}s' qtype %s suggest %{sensitive}s", v42, 0x20u);
    v53 = v70;
    swift_arrayDestroy();
    sub_1000036D4(v53);
    sub_1000036D4(v42);
  }

  __chkstk_darwin(v54);
  *(&v69 - 12) = countAndFlagsBits;
  *(&v69 - 11) = object;
  *(&v69 - 10) = v55;
  *(&v69 - 9) = v28;
  *(&v69 - 8) = v37;
  *(&v69 - 7) = v38;
  *(&v69 - 6) = v35;
  *(&v69 - 5) = v36;
  v56 = v74;
  *(&v69 - 4) = v73;
  *(&v69 - 3) = v34;
  *(&v69 - 2) = v76;
  *(&v69 - 1) = v56;
  sub_100046184(&qword_100219D50, &unk_10019EC18);
  OS_dispatch_queue.sync<A>(execute:)();

  return v78;
}

void sub_1000F190C()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for URLQueryItem();
  sub_100003650();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003664();
  v12 = v11 - v10;
  v13 = 0;
  v19 = v5;
  v14 = *(v5 + 16);
  v15 = (v8 + 8);
  while (v14 != v13)
  {
    (*(v8 + 16))(v12, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v6);
    if (URLQueryItem.name.getter() == v3 && v16 == v1)
    {

LABEL_11:
      URLQueryItem.value.getter();
      (*v15)(v12, v6);
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_11;
    }

    (*v15)(v12, v6);
    ++v13;
  }

  sub_100005460();
}

const char *sub_1000F1AA0(char a1)
{
  result = "lifetime";
  switch(a1)
  {
    case 1:
      result = "cacheAccess";
      break;
    case 2:
      result = "cacheWrite";
      break;
    case 3:
      result = "resultLifetime";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000F1B08(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000F1B18@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F1B08(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F1B44()
{
  v0 = qword_100219C20;

  return v0;
}

uint64_t sub_1000F1B7C()
{
  v0 = aQuerycache_2[0];

  return v0;
}

uint64_t sub_1000F1BD4()
{
  v1 = objc_autoreleasePoolPush();
  *(v0 + 64) = 0;

  objc_autoreleasePoolPop(v1);
  sub_100007378((v0 + 16));

  sub_10000B218(v0 + 72);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000F1C40()
{
  sub_1000F1BD4();

  return _swift_deallocClassInstance(v0, 104, 7);
}

void sub_1000F1C74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[11];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = v1[5];
    v10 = v1[6];
    sub_100007534(v1 + 2, v9);
    if (!sub_1000569FC(v9, v10))
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v1[5];
      v13 = v1[6];
      sub_100007534(v1 + 2, v12);
      (*(v13 + 56))(v12, v13);
      objc_autoreleasePoolPop(v11);
      sub_1000F1DF8("query cache became empty");
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000F1DF8(const char *a1)
{
  if (qword_1002140D8 != -1)
  {
    sub_10000393C(&qword_1002140D8);
  }

  v2 = type metadata accessor for Logger();
  sub_10000964C(v2, qword_100232AF8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
    sub_1000036D4(v4);
  }
}

void sub_1000F1ED0()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003664();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100003664();
  v38 = v16 - v15;
  if (qword_1002140D8 != -1)
  {
    sub_10000393C(&qword_1002140D8);
  }

  v17 = type metadata accessor for Logger();
  sub_10000964C(v17, qword_100232AF8);
  v18 = v3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39[0] = v35;
    *v21 = 136315138;
    v22 = [v18 name];
    v36 = v1;
    v37 = v13;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v10;
    v25 = v11;
    v26 = v4;
    v27 = v6;
    v29 = v28;

    v30 = sub_100009684(v23, v29, v39);
    v6 = v27;
    v4 = v26;
    v11 = v25;
    v10 = v24;
    v13 = v37;

    *(v21 + 4) = v30;
    v1 = v36;
    _os_log_impl(&_mh_execute_header, v19, v20, "cache clear notification: name = %s", v21, 0xCu);
    sub_100007378(v35);
    sub_1000036D4(v35);
    sub_1000036D4(v21);
  }

  v39[4] = sub_1000F3AFC;
  v39[5] = v1;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v39[2] = v31;
  v39[3] = &unk_1001FC930;
  v32 = _Block_copy(v39);

  static DispatchQoS.unspecified.getter();
  sub_100006B40();
  sub_1000F3AA0(v33, 255, v34, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v38, v11);

  sub_100005460();
}

_BYTE *storeEnumTagSinglePayload for QueryCache.Activity(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1000F239C(uint64_t a1)
{
  *(a1 + 8) = sub_1000F23CC();
  result = sub_1000F2420();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F23CC()
{
  result = qword_100219D08;
  if (!qword_100219D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D08);
  }

  return result;
}

unint64_t sub_1000F2420()
{
  result = qword_100219D10;
  if (!qword_100219D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D10);
  }

  return result;
}

unint64_t sub_1000F2478()
{
  result = qword_100219D18;
  if (!qword_100219D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D18);
  }

  return result;
}

unint64_t sub_1000F24D0()
{
  result = qword_100219D20;
  if (!qword_100219D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D20);
  }

  return result;
}

uint64_t sub_1000F2524(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3AA0(&unk_100219D40, a2, type metadata accessor for QueryCache, &unk_10019EBE0);
  *(a1 + 8) = result;
  return result;
}

void *sub_1000F257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = v9;
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v14 = type metadata accessor for Date();
  sub_100003650();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100003664();
  v20 = v19 - v18;
  v21 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100003664();
  v27 = v26 - v25;
  v28 = v10[11];
  *(v26 - v25) = v28;
  (*(v23 + 104))(v26 - v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  result = (*(v23 + 8))(v27, v21);
  if (v28)
  {
    Date.init()();
    v50 = _swiftEmptyArrayStorage;
    v31 = String.count.getter();
    v49 = _swiftEmptySetSingleton;
    v32 = v10[6];
    v33 = sub_100007534(v10 + 2, v10[5]);
    v34 = __chkstk_darwin(v33);
    *(&v43 - 12) = v20;
    *(&v43 - 11) = &v49;
    *(&v43 - 10) = a9;
    v35 = v43;
    v36 = v44;
    *(&v43 - 9) = v31;
    *(&v43 - 8) = v35;
    v38 = v45;
    v37 = v46;
    *(&v43 - 7) = v36;
    *(&v43 - 6) = v38;
    *(&v43 - 5) = v37;
    v39 = v48;
    *(&v43 - 4) = v47;
    *(&v43 - 3) = v39;
    *(&v43 - 2) = &v50;
    (*(v32 + 40))(a1, a2, sub_1000F3A5C, v34);
    v40 = v10[5];
    v41 = v10[6];
    sub_100007534(v10 + 2, v40);
    (*(v41 + 72))(v49, v40, v41);

    v42 = v50;
    (*(v16 + 8))(v20, v14);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F2844(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v41 = a8;
  v42 = a6;
  v38 = a7;
  v39 = a1;
  v40 = a5;
  v17 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v17 - 8);
  v19 = &v37 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  v24 = a3 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
  v25 = type metadata accessor for CachedResultSet.Result(0);
  sub_100053240(v24 + v25[6], v19, &qword_100217050, &qword_100199180);
  if (sub_100008D0C(v19, 1, v20) == 1)
  {
    sub_10000F94C(v19, &qword_100217050, &qword_100199180);
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_1000F3AA0(&qword_1002183B8, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {

      sub_1000936D4(&v43, v39, a2);

      (*(v21 + 8))(v23, v20);
      return 1;
    }

    (*(v21 + 8))(v23, v20);
  }

  if (a9 <= 0.0 || *(v24 + v25[8]) == a9)
  {

    v26 = String.count.getter();

    if (v26 <= v42)
    {
      v27 = (v24 + v25[11]);
      v28 = v27[1];
      if (v28)
      {
        if (!v41)
        {
          return 1;
        }

        v29 = *v27 == v38 && v28 == v41;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 1;
        }
      }

      else if (v41)
      {
        return 1;
      }

      v30 = (v24 + v25[12]);
      v31 = v30[1];
      if (v31)
      {
        if (!a11)
        {
          return 1;
        }

        v32 = *v30 == a10 && v31 == a11;
        if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 1;
        }
      }

      else if (a11)
      {
        return 1;
      }

      v33 = (v24 + v25[13]);
      v34 = v33[1];
      if (v34)
      {
        if (!a13)
        {
          return 1;
        }

        v35 = *v33 == a12 && v34 == a13;
        if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 1;
        }
      }

      else if (a13)
      {
        return 1;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100110858(*((*a14 & 0xFFFFFFFFFFFFFF8) + 0x10));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  return 1;
}

uint64_t sub_1000F2BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v85 = a8;
  v91 = a7;
  v19 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  __chkstk_darwin(v19 - 8);
  v82 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v81 = &v79 - v22;
  __chkstk_darwin(v23);
  v83 = &v79 - v24;
  __chkstk_darwin(v25);
  v84 = &v79 - v26;
  v27 = String.count.getter();
  v28 = sub_1000F257C(a1, a2, a3, a4, a5, a6, v91, a10, a9);
  result = sub_10000D57C(v28);
  v30 = result;
  if (result)
  {
    if (result < 1)
    {
      goto LABEL_71;
    }

    v31 = 0;
    v32 = -1;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v28 + 8 * v31 + 32);
      }

      if (*(v33 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 24))
      {

        v34 = String.count.getter();

        if (__OFSUB__(v34, v27))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          return result;
        }

        if (v34 - v27 >= v32)
        {
          v35 = v32;
        }

        else
        {
          v35 = v34 - v27;
        }

        if (v32 == -1)
        {
          v32 = v34 - v27;
        }

        else
        {
          v32 = v35;
        }
      }

      else
      {
      }

      if (v30 == ++v31)
      {
        goto LABEL_19;
      }
    }
  }

  v32 = -1;
LABEL_19:
  v93 = _swiftEmptyArrayStorage;
  v36 = sub_10000D57C(v28);
  result = sub_1000BC3D0(v36, 0);
  v88 = v93;
  if (v30)
  {
    if (v30 < 1)
    {
      goto LABEL_72;
    }

    for (i = 0; i != v30; ++i)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v28 + 8 * i + 32);
      }

      if (!*(v38 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 24))
      {
        goto LABEL_31;
      }

      v39 = String.count.getter();

      if (__OFSUB__(v39, v27))
      {
        goto LABEL_70;
      }

      if (v39 - v27 == v32)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v88 = v93;
      }

      else
      {
LABEL_31:
      }
    }
  }

  v40 = v88;
  result = sub_10000D57C(v88);
  if (!result)
  {
LABEL_58:
    v70 = 0;
    goto LABEL_68;
  }

  v42 = result;
  if (result < 1)
  {
    goto LABEL_73;
  }

  v43 = 0;
  v44 = 0;
  v80 = a11;
  v90 = v40 & 0xC000000000000001;
  v45 = 0.0;
  *&v41 = 136643331;
  v86 = v41;
  v87 = result;
  do
  {
    if (v90)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v46 = *(v40 + 8 * v43 + 32);
    }

    v47 = (v46 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
    v48 = *(v47 + *(type metadata accessor for CachedResultSet.Result(0) + 36));
    if (qword_1002140D8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    v50 = sub_10000964C(v49, qword_100232AF8);

    v89 = v50;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v91 = v44;
      v53 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v53 = v86;
      if (v47[3])
      {
        v54 = v47[2];
        v55 = v47[3];
      }

      else
      {
        v55 = 0xE500000000000000;
        v54 = 0x296C696E28;
      }

      v56 = sub_100009684(v54, v55, v92);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2085;
      v58 = *v47;
      v57 = v47[1];

      v59 = sub_100009684(v58, v57, v92);

      *(v53 + 14) = v59;
      *(v53 + 22) = 2048;
      *(v53 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v51, v52, "cache entry prefix: %{sensitive}s input: %{sensitive}s score: %f", v53, 0x20u);
      swift_arrayDestroy();

      v42 = v87;
      v40 = v88;
      v44 = v91;
      if (!v91)
      {
        goto LABEL_51;
      }
    }

    else
    {

      if (!v44)
      {
        goto LABEL_51;
      }
    }

    if (v48 > 0.0 && v45 < v48)
    {

LABEL_51:
      v44 = v46;
      goto LABEL_53;
    }

    v48 = v45;
LABEL_53:
    ++v43;
    v45 = v48;
  }

  while (v42 != v43);
  v60 = v84;
  if (!v44)
  {
    goto LABEL_58;
  }

  v91 = v44;
  v61 = v80;
  sub_100053240(v80, v84, &unk_100218500, &qword_10019C7D8);
  v62 = v83;
  sub_100053240(v61, v83, &unk_100218500, &qword_10019C7D8);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v65 = 136643075;
    v66 = v81;
    sub_100053240(v60, v81, &unk_100218500, &qword_10019C7D8);
    v67 = type metadata accessor for URLRequest();
    if (sub_100008D0C(v66, 1, v67) == 1)
    {
      sub_10000F94C(v66, &unk_100218500, &qword_10019C7D8);
      v68 = 0;
      v69 = 0xE000000000000000;
    }

    else
    {
      v68 = URLRequest.debugDescription.getter();
      v69 = v71;
      (*(*(v67 - 8) + 8))(v66, v67);
    }

    sub_10000F94C(v84, &unk_100218500, &qword_10019C7D8);
    v72 = sub_100009684(v68, v69, v92);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2085;
    v73 = v82;
    sub_100053240(v83, v82, &unk_100218500, &qword_10019C7D8);
    if (sub_100008D0C(v73, 1, v67) == 1)
    {
      sub_10000F94C(v73, &unk_100218500, &qword_10019C7D8);
      goto LABEL_65;
    }

    v74 = URLRequest.allHTTPHeaderFields.getter();
    (*(*(v67 - 8) + 8))(v73, v67);
    if (v74)
    {
      v75 = Dictionary.debugDescription.getter();
      v77 = v76;
    }

    else
    {
LABEL_65:
      v77 = 0xE200000000000000;
      v75 = 23899;
    }

    sub_10000F94C(v83, &unk_100218500, &qword_10019C7D8);
    v78 = sub_100009684(v75, v77, v92);

    *(v65 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v63, v64, "cache hit for request %{sensitive}s header: %{sensitive}s", v65, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000F94C(v62, &unk_100218500, &qword_10019C7D8);
    sub_10000F94C(v60, &unk_100218500, &qword_10019C7D8);
  }

  v70 = v91;
LABEL_68:
  *(a12 + qword_100232D38) = v70;

  *v85 = v70;
  return result;
}

void sub_1000F3558(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1001092C8();
  v11 = a2[5];
  v12 = a2[6];
  sub_100007534(a2 + 2, v11);
  if ((*(v12 + 24))(v11, v12) >= v10)
  {
    if (qword_1002140D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000964C(v17, qword_100232AF8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136643075;
      *(v20 + 4) = sub_100009684(a4, a5, &v29);
      *(v20 + 12) = 2048;
      *(v20 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v18, v19, "caching '%{sensitive}s' with cost %lu", v20, 0x16u);
      sub_100007378(v21);
    }

    v22 = a2[5];
    v23 = a2[6];
    sub_100007534(a2 + 2, v22);
    LOBYTE(v23) = sub_1000569FC(v22, v23);
    v24 = a2[5];
    v25 = a2[6];
    sub_100007534(a2 + 2, v24);
    (*(v25 + 80))(a1, a4, a5, v24, v25);
    sub_100046184(&unk_100217040, &qword_1001989F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100197F20;
    *(inited + 56) = &type metadata for UInt;
    *(inited + 64) = &protocol witness table for UInt;
    *(inited + 32) = v10;
    sub_100046184(&qword_100219120, &qword_10019E270);
    swift_allocObject();

    *(a1 + 16) = sub_10007E180(v27, 3, "cost=%{signpost.description.attribute,public}llu", 48, 2, inited);

    if (v23)
    {
      sub_1000F1DF8("query cache no longer empty");
    }

    *(a3 + qword_100232D38) = a1;
  }

  else
  {
    sub_1000FDCDC(v10, 0);
    if (qword_1002140D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000964C(v13, qword_100232AF8);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136643075;
      *(v15 + 4) = sub_100009684(a4, a5, &v29);
      *(v15 + 12) = 2048;
      *(v15 + 14) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v14, "NOT caching '%{sensitive}s' with cost %lu", v15, 0x16u);
      sub_100007378(v16);
    }

    else
    {
    }
  }
}

uint64_t sub_1000F39B4(void *a1)
{
  v1 = [a1 queryItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for URLQueryItem();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000F3AA0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for TopicCacheEntry(uint64_t a1)
{
  result = qword_100219DB0;
  if (!qword_100219DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F3B78(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1000F3BFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F3BFC(uint64_t a1)
{
  if (!qword_100219DC0)
  {
    type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100219DC0);
    }
  }
}

uint64_t sub_1000F3C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
  sub_100003650();
  v12 = v11;
  v14.n128_f64[0] = __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v31 = v7;
    v32 = v5;
    v33 = a2;
    v34 = v2;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v18 = v20;
    v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v35 = a1;
    v22 = a1 + v21;
    v23 = *(v19 + 56);
    v24 = 900;
    do
    {
      v18(v16, v22, v10, v14);
      if (Apple_Parsec_Spotlight_V1alpha_Result.maxAgeSeconds.getter() < v24)
      {
        v24 = Apple_Parsec_Spotlight_V1alpha_Result.maxAgeSeconds.getter();
      }

      (*(v19 - 8))(v16, v10);
      v22 += v23;
      --v17;
    }

    while (v17);
    if (v24 > 0)
    {
      v25 = v36;
      Date.init()();
      v26 = v33;
      Date.addingTimeInterval(_:)();
      (*(v31 + 8))(v25, v32);
      result = type metadata accessor for TopicCacheEntry(0);
      *(v26 + *(result + 20)) = v35;
      return result;
    }

    sub_1000F3EC8();
    swift_allocError();
    v29 = 1;
  }

  else
  {

    sub_1000F3EC8();
    swift_allocError();
    v29 = 0;
  }

  *v28 = v29;
  return swift_willThrow();
}

unint64_t sub_1000F3EC8()
{
  result = qword_100219DF0;
  if (!qword_100219DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopicCacheEntryError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1000F3FFC()
{
  result = qword_100219DF8;
  if (!qword_100219DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DF8);
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  Lock.init()();
  return v0;
}

void Lock.withLock<A>(_:)()
{
  sub_100008508();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

void Lock.withLockVoid(_:)()
{
  sub_100008508();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

uint64_t ConditionLock.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ConditionLock.init(value:)(a1);
  return v2;
}

char *ConditionLock.init(value:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 112);
  *&v2[v5] = swift_slowAlloc();
  v6 = *(v4 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[*(*v2 + 96)], a1, v6);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  Lock.init()();
  *&v2[*(*v2 + 104)] = v8;
  LODWORD(v8) = pthread_cond_init(*&v2[*(*v2 + 112)], 0);
  result = (*(v7 + 8))(a1, v6);
  if (!v8)
  {
    return v2;
  }

  __break(1u);
  return result;
}

char *ConditionLock.deinit()
{
  v1 = *v0;

  sub_1000037B0();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  sub_1000037B0();

  return v0;
}

uint64_t ConditionLock.__deallocating_deinit()
{
  ConditionLock.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void ConditionLock.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  ConditionLock.lock()();
  sub_1000037B0();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  ConditionLock.unlock()();
}

uint64_t ConditionLock.lock(whenValue:)()
{
  v1 = v0;
  sub_100005D28();
  v19[1] = v3;
  v19[2] = v2;
  v5 = *(v4 + 80);
  sub_1000043D0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  ConditionLock.lock()();
  sub_100005D28();
  v12 = *(v11 + 96);
  v14 = *(v13 + 112);
  v15 = *(v13 + 104);
  swift_beginAccess();
  v16 = *(v7 + 16);
  while (1)
  {
    v16(v10, v1 + v12, v5);
    v17 = sub_100006B58();
    result = (*(v7 + 8))(v10, v5);
    if (v17)
    {
      break;
    }

    result = pthread_cond_wait(*(v1 + v14), *(*(v1 + v15) + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t ConditionLock.lock(whenValue:timeoutSeconds:)(uint64_t a1, double a2)
{
  v30[2] = a1;
  sub_100005D28();
  v30[1] = v4;
  v6 = *(v5 + 80);
  sub_1000043D0();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = v30 - v11;
  if (v10 < 0.0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ConditionLock.lock()();
  v13 = a2 * 1000000000.0;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35.tv_sec = 0;
  v35.tv_usec = 0;
  gettimeofday(&v35, 0);
  v14 = 1000 * v35.tv_usec;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (__OFADD__(v35.tv_sec, v16 / 1000000000))
  {
    goto LABEL_18;
  }

  v34.tv_sec = v35.tv_sec + v16 / 1000000000;
  v34.tv_nsec = v16 % 1000000000;
  v17 = *v2;
  v18 = *(*v2 + 96);
  v30[0] = *(*v2 + 112);
  v19 = *(v17 + 104);
  swift_beginAccess();
  v20 = v8 + 16;
  v21 = *(v8 + 16);
  v22 = (v20 - 8);
  do
  {
    v21(v12, &v2[v18], v6);
    v23 = sub_100006B58();
    (*v22)(v12, v6);
    if (v23)
    {
      return v23 & 1;
    }

    v24 = pthread_cond_timedwait(*&v2[v30[0]], *(*&v2[v19] + 16), &v34);
  }

  while (!v24);
  if (v24 == 60)
  {
    ConditionLock.unlock()();
    return v23 & 1;
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  v26 = v24;
  _StringGuts.grow(_:)(51);
  v27._countAndFlagsBits = 0x6520746867756163;
  v27._object = 0xED000020726F7272;
  String.append(_:)(v27);
  v31 = v26;
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._object = 0x80000001001B0DA0;
  v29._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ConditionLock.unlock(withValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  ConditionLock.unlock()();
  sub_1000037B0();
  result = pthread_cond_broadcast(*(v1 + *(v5 + 112)));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F4AC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F4B90(uint64_t a1, uint64_t *a2)
{
  v26 = a2;
  v32 = type metadata accessor for Trialpb_TrialExperiment();
  __chkstk_darwin(v32);
  v30 = v3;
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v28 = a1;
  v29 = v3 + 16;
  v27 = (v3 + 8);

  v11 = 0;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v13 = *(v30 + 72);
      v14 = *(v30 + 16);
      v14(v31, *(v28 + 48) + v13 * (__clz(__rbit64(v8)) | (v11 << 6)), v32);
      if (Trialpb_TrialExperiment.experimentNamespace.getter() == 0x4145535F49524953 && v15 == 0xEF4142535F484352)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_15;
      }

LABEL_20:
      v8 &= v8 - 1;
      result = (*v27)(v31, v32);
      if (!v8)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    v18 = v26;
    v19 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006D050(0, *(v19 + 16) + 1, 1, v19);
      v19 = v23;
      *v26 = v23;
    }

    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_10006D050(v21 > 1, v22 + 1, 1, v19);
      v19 = v24;
      *v26 = v24;
    }

    *(v19 + 16) = v22 + 1;
    v14((v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + v22 * v13), v31, v32);
    goto LABEL_20;
  }

LABEL_4:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000F4E58()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_10000B880(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
  v2 = v13;
  if (v13 >= 2)
  {
    v7 = qword_1002140E8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000964C(v8, qword_100232B28);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found state for client identifier", v11, 2u);
    }

    sub_100016250(v13);
  }

  else
  {
    sub_100016250(v13);
    if (qword_1002140E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000964C(v3, qword_100232B28);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Client state fetch failed", v6, 2u);
    }

    return 0;
  }

  return v2;
}

void sub_1000F5048(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v288 = a3;
  v273 = type metadata accessor for Apple_Parsec_Search_V2_TransportationMode();
  sub_100003650();
  v272 = v8;
  __chkstk_darwin(v9);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v10);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v11);
  sub_100009934();
  sub_10000549C(v12);
  v13 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  v14 = sub_100005490(v13);
  __chkstk_darwin(v14);
  sub_100003664();
  sub_100007C68(v16 - v15);
  v17 = sub_100046184(&qword_100217B90, &unk_10019E900);
  v18 = sub_100005490(v17);
  __chkstk_darwin(v18);
  sub_10000549C(&v267 - v19);
  v276 = type metadata accessor for Trialpb_TrialExperiment();
  sub_100003650();
  v269 = v20;
  __chkstk_darwin(v21);
  sub_100003664();
  v24 = sub_10000549C(v23 - v22);
  v292 = type metadata accessor for SessionTokens(v24);
  sub_1000036B8();
  __chkstk_darwin(v25);
  v27 = &v267 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v29);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v30);
  sub_100009934();
  sub_100007C68(v31);
  v32 = sub_100046184(&qword_100219F20, &qword_10019ED28);
  v33 = sub_100005490(v32);
  __chkstk_darwin(v33);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v34);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v35);
  sub_100009934();
  sub_10000549C(v36);
  v296 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions();
  sub_100003650();
  v291 = v37;
  __chkstk_darwin(v38);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v39);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v40);
  sub_100009934();
  sub_100007C68(v41);
  v42 = sub_100046184(&qword_100219F28, &qword_10019ED30);
  v43 = sub_100005490(v42);
  __chkstk_darwin(v43);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v44);
  sub_100005924();
  v293 = v45;
  __chkstk_darwin(v46);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v47);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v48);
  sub_100009934();
  sub_10000549C(v49);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
  sub_100003650();
  v303 = v51;
  v304 = v50;
  __chkstk_darwin(v50);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v52);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v53);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v54);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v55);
  sub_100009934();
  sub_100007C68(v56);
  v57 = sub_100046184(&qword_100219F30, &qword_10019ED38);
  v58 = sub_100005490(v57);
  __chkstk_darwin(v58);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v59);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v60);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v61);
  v63 = (&v267 - v62);
  __chkstk_darwin(v64);
  sub_10000CCF0();
  v300 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  sub_100003650();
  v295 = v65;
  __chkstk_darwin(v66);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v67);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v68);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v69);
  v71 = &v267 - v70;
  __chkstk_darwin(v72);
  sub_100005924();
  v294 = v73;
  __chkstk_darwin(v74);
  v76 = &v267 - v75;
  type metadata accessor for UUID();
  sub_100003650();
  v298 = v78;
  v299 = v77;
  __chkstk_darwin(v77);
  sub_100003664();
  v297 = v80 - v79;
  v81 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem();
  v82 = sub_100005490(v81);
  __chkstk_darwin(v82);
  sub_100003664();
  v302 = v84 - v83;
  v85 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v86 = sub_100005490(v85);
  __chkstk_darwin(v86);
  sub_100003664();
  v301 = v88 - v87;
  Apple_Parsec_Search_PegasusQueryContext.init()();
  v305 = a2;
  sub_100084494();
  sub_100007534(&v308, v309);
  dispatch thunk of NetworkAuthTokenProviding.encryptedToken.getter();
  v307 = a4;
  Apple_Parsec_Search_PegasusQueryContext.encryptedAuthToken.setter();
  sub_100007378(&v308);
  v89 = _swiftEmptyArrayStorage;
  switch(a1)
  {
    case 1uLL:
      v114 = objc_allocWithZone(PARSessionConfiguration);
      v115 = sub_1000F839C(0x697261666153, 0xE600000000000000, 0x312F697261666153, 0xE800000000000000);
      sub_100007608();
      v116 = sub_1000F4E58();
      swift_unknownObjectRelease();
      if (v116)
      {
        swift_unknownObjectRetain();
        sub_1000E75A0();
        swift_unknownObjectRelease();
        sub_10001AE20();
        v118 = *&v27[v117];

        sub_100056990(v27);
        if (v118)
        {
          sub_1000669EC(v118);
        }

        v89 = v307;
        Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
        swift_unknownObjectRetain();
        sub_1000E7480();
        swift_unknownObjectRelease();
        UUID.uuidString.getter();
        a1 = v226;
        v227 = sub_10001BD4C();
        v228(v227);
        sub_10000BE80();
        Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      }

      v229 = v305;
      sub_10002044C(&v308);
      sub_1000078F8();
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      sub_100007378(&v308);
      v230 = sub_1000F7A48();
      sub_100006748(v230, v231);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      v232 = type metadata accessor for PegasusContext(0);
      if (sub_10000AB74(v232))
      {
        sub_100023F78();
      }

      else
      {
        sub_100007D08();
      }

      v233 = v300;
      v235 = v303;
      v234 = v304;
      v236 = v296;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (v89[1])
      {
        sub_1000F8D40();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (v89[10])
      {
        a1 = v89[10];
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      sub_10000FEA8();

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (v89[8])
      {
        sub_10000FFC8();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      sub_1000135E0();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      sub_1000189CC();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      sub_10001BE94();
      sub_1000F73F0(v237);
      v238 = sub_10000F268();
      sub_10000C944(v238, v239, v234);
      if (v98)
      {
        v240 = *(v235 + 104);
        v243 = v235 + 104;
        v240(v283, enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.unknown(_:), v234);
        v241 = sub_10000F268();
        sub_10000C944(v241, v242, v234);
        if (!v98)
        {
          sub_10000B240(a1, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        v243 = v235 + 32;
        v244 = sub_10000BE80();
        v245(v244);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      v246 = v281;
      sub_1000F7690(v281);
      sub_10000C944(v246, 1, v233);
      if (v98)
      {
        sub_10000B240(v246, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        v247 = v295;
        v248 = sub_1000F8D20();
        v249(v248);
        v250 = sub_10000E1E4();
        v251(v250, v243, v233);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        a1 = (v247 + 8);
        v252 = sub_10001BD4C();
        v253(v252);
      }

      if (*(v89 + v229[35]) != 6)
      {
        sub_100017CB4();
        sub_100067238(v254, v255);
        v256 = v272;
        v257 = v271;
        a1 = v273;
        (*(v272 + 32))(v271, v89, v273);
        v258 = sub_10001AC58();
        v259(v258, v257, a1);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.transportationMode.setter();
        (*(v256 + 8))(v257, a1);
      }

      Apple_Parsec_Search_PegasusQueryContext.managedDevice.setter();
      if (v89[5])
      {
        sub_10000FF3C();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      sub_10001BE94();
      sub_1000F7564(v260);
      v261 = sub_10000F268();
      sub_10000C944(v261, v262, v236);
      if (v98)
      {
        sub_100017CB4();
        Apple_Parsec_Search_V2_Subscriptions.init()();
        v263 = sub_10000F268();
        sub_10000C944(v263, v264, v236);
        if (!v98)
        {
          sub_10000B240(a1, &qword_100219F20, &qword_10019ED28);
        }
      }

      else
      {
        sub_100007730();
        v265 = sub_10000BE80();
        v266(v265);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.subscriptions.setter();
      if (sub_100007AA4())
      {
        sub_100012658();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      if (qword_100214168 != -1)
      {
        sub_100006028(&qword_100214168);
      }

      sub_100015B80();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();

      return;
    case 2uLL:
      v119 = type metadata accessor for PegasusContext(0);
      if (sub_10000AB74(v119))
      {
        sub_100023F78();
      }

      else
      {
        sub_100007D08();
      }

      v204 = v304;
      v205 = v300;
      v206 = v303;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (_swiftEmptyArrayStorage[1])
      {
        sub_1000F8D40();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      sub_10000FEA8();

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (_swiftEmptyArrayStorage[5])
      {
        sub_10000FF3C();
      }

      else
      {
        sub_100007D08();
      }

      v207 = v280;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (_swiftEmptyArrayStorage[8])
      {
        sub_10000FFC8();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (sub_100007AA4())
      {
        sub_100023F78();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      sub_1000189CC();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      sub_1000135E0();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      sub_100014C74();
      if (qword_100214168 != -1)
      {
        sub_100006028(&qword_100214168);
      }

      sub_100015B80();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      sub_10002044C(&v308);
      v208 = sub_1000078F8();
      sub_100014988(v208);
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      sub_1000F73F0(v207);
      sub_10000C944(v207, 1, v204);
      if (v98)
      {
        v209 = *(v206 + 104);
        v210 = v206 + 104;
        v209(v279, enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.unknown(_:), v204);
        sub_10000C944(v207, 1, v204);
        if (!v98)
        {
          sub_10000B240(v207, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        v211 = *(v206 + 32);
        v210 = v206 + 32;
        v211(v279, v207, v204);
      }

      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      v212 = v278;
      sub_1000F7690(v278);
      sub_10000C944(v212, 1, v205);
      v214 = v297;
      v213 = v298;
      if (v98)
      {
        sub_10000B240(v212, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        sub_100019078();
        v215 = sub_1000F8D20();
        v216(v215);
        v217 = sub_10000E1E4();
        v218(v217, v210, v205);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        v219 = sub_10001BD4C();
        v220(v219);
      }

      sub_1000844F0();
      sub_1000E7480();
      swift_unknownObjectRelease();
      UUID.uuidString.getter();
      sub_1000126F0();
      (*(v213 + 8))(v214, v299);
      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      return;
    case 3uLL:
    case 0x14uLL:
    case 0x16uLL:
      sub_10008487C();
      v90 = sub_10001E3CC();

      if (v90)
      {
        sub_1000669EC(v90);
      }

      v92 = v306;
      v93 = v304;
      v94 = v293;
      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
      v95 = type metadata accessor for PegasusContext(0);
      Apple_Parsec_Search_PegasusQueryContext.hsEnabled.setter();
      if (*(v92 + v95[19] + 8))
      {
        sub_1000F8D34();
      }

      else
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (!v92[1])
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (*(v92 + v95[27] + 8))
      {
        sub_1000F8D34();
      }

      else
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.sil.setter();
      sub_100066FC0(v92[14], v92[15]);
      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      if (!v92[10])
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      sub_100067090(v92[2], v92[3]);
      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      if (qword_100214168 != -1)
      {
        sub_100006028(&qword_100214168);
      }

      Apple_Parsec_Search_PegasusQueryContext.internalBuild.setter();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();

      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (!v92[8])
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      sub_1000F73F0(v94);
      v96 = sub_10000F268();
      sub_10000C944(v96, v97, v93);
      if (v98)
      {
        v99 = sub_10001AC58();
        v100(v99);
        v101 = sub_10000F268();
        sub_10000C944(v101, v102, v93);
        if (!v98)
        {
          sub_10000B240(v94, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        v103 = sub_10000BE80();
        v104(v103);
      }

      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      if (!v92[5])
      {
        sub_100007D08();
      }

      sub_10000BE80();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      v105 = sub_1000F7A48();
      sub_100006748(v105, v106);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      sub_1000848E0();
      sub_100007534(&v308, v309);
      sub_1000B2EF8();
      sub_100007378(&v308);
      sub_10000BE80();
      Apple_Parsec_Search_PegasusQueryContext.ampBaselineExperimentMetadata.setter();
      if (*(v92 + v95[26] + 8))
      {
        sub_100012658();
      }

      else
      {
        sub_100008A5C();
      }

      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      static ConfigurationContext.modelNumber.getter();
      Apple_Parsec_Search_PegasusQueryContext.deviceModel.setter();
      v107 = ClientType.rawValue.getter();
      if (v107 == ClientType.rawValue.getter())
      {
        goto LABEL_30;
      }

      return;
    case 5uLL:
LABEL_30:
      sub_10002044C(&v308);
      v108 = sub_1000078F8();
      sub_100014988(v108);
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      return;
    case 6uLL:
      v113 = type metadata accessor for PegasusContext(0);
      if (sub_10000AEF4(v113))
      {
        sub_100012658();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (!a1[5])
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();

      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (a1[1])
      {
        sub_10002DF4C();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (!a1[8])
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (!a1[10])
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      return;
    case 7uLL:
    case 8uLL:
      v91 = type metadata accessor for PegasusContext(0);
      if (sub_10000AB74(v91))
      {
        sub_100023F78();
      }

      else
      {
        sub_100007D08();
      }

      v122 = v300;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (_swiftEmptyArrayStorage[1])
      {
        sub_1000F8D40();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      sub_10000FEA8();

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (_swiftEmptyArrayStorage[5])
      {
        sub_10000FF3C();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (_swiftEmptyArrayStorage[8])
      {
        sub_10000FFC8();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (sub_100007AA4())
      {
        sub_100023F78();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      sub_1000189CC();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      sub_1000135E0();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      sub_100014C74();
      if (qword_100214168 != -1)
      {
        sub_100006028(&qword_100214168);
      }

      sub_100015B80();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      sub_1000844F0();
      v123 = v297;
      sub_1000E7480();
      swift_unknownObjectRelease();
      UUID.uuidString.getter();
      sub_1000126F0();
      (*(v298 + 8))(v123, v299);
      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      sub_1000F7690(v4);
      sub_10000C944(v4, 1, v122);
      if (v98)
      {
        sub_10000B240(v4, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        sub_100019078();
        v124(v76, v4, v122);
        v125 = sub_10000E1E4();
        v126(v125, v76, v122);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        v63[1](v76, v122);
      }

      v127 = v290;
      v128 = v289;
      sub_1000F73F0(v289);
      v129 = sub_100009940();
      v130 = v304;
      sub_10000C944(v129, v131, v304);
      if (v98)
      {
        v132 = sub_10001AC58();
        v133(v132);
        v134 = sub_100009940();
        sub_10000C944(v134, v135, v130);
        if (!v98)
        {
          sub_10000B240(v128, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        v136 = sub_10001AC58();
        v137(v136, v128, v130);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      sub_1000F7564(v127);
      v138 = sub_10000F268();
      v139 = v296;
      sub_10000C944(v138, v140, v296);
      if (v98)
      {
        sub_100017CB4();
        Apple_Parsec_Search_V2_Subscriptions.init()();
        v141 = sub_10000F268();
        sub_10000C944(v141, v142, v139);
        if (!v98)
        {
          sub_10000B240(v127, &qword_100219F20, &qword_10019ED28);
        }
      }

      else
      {
        sub_100007730();
        v143 = sub_10000BE80();
        v144(v143);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.subscriptions.setter();
      v145 = sub_1000F7A48();
      sub_100006748(v145, v146);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      return;
    case 0xAuLL:
      a1 = v306;
      if (!v306[10])
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      if (!*(a1 + *(type metadata accessor for PegasusContext(0) + 76) + 8))
      {
        goto LABEL_191;
      }

      goto LABEL_190;
    case 0xDuLL:
      v110 = type metadata accessor for PegasusContext(0);
      v111 = v306;
      if (*(v306 + *(v110 + 76) + 8))
      {
        sub_1000F8D34();
      }

      else
      {
        sub_100009984();
      }

      v167 = v300;

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (!v111[1])
      {
        sub_100009984();
      }

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (!v111[5])
      {
        sub_100009984();
      }

      v168 = v284;

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (!v111[8])
      {
        sub_100009984();
      }

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (*(v111 + *(v110 + 104) + 8))
      {
        sub_1000F8D34();
      }

      else
      {
        sub_100009984();
      }

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      sub_100066FC0(v111[14], v111[15]);
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      sub_100067090(v111[2], v111[3]);
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      Apple_Parsec_Search_PegasusQueryContext.managedDevice.setter();
      if (qword_100214168 != -1)
      {
        sub_100006028(&qword_100214168);
      }

      sub_100015B80();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      sub_10002044C(&v308);
      sub_1000078F8();
      sub_100007378(&v308);
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      sub_1000844F0();
      v169 = v297;
      sub_1000E7480();
      swift_unknownObjectRelease();
      UUID.uuidString.getter();
      (*(v298 + 8))(v169, v299);
      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      sub_1000F7690(v63);
      v170 = sub_100009940();
      sub_10000C944(v170, v171, v167);
      if (v98)
      {
        sub_10000B240(v63, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        v172 = v295;
        (*(v295 + 32))(v71, v63, v167);
        (*(v172 + 16))(v294, v71, v167);
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        (*(v172 + 8))(v71, v167);
      }

      v173 = v303;
      v174 = v296;
      v175 = v286;
      sub_1000F73F0(v168);
      v176 = v304;
      sub_10000C944(v168, 1, v304);
      if (v98)
      {
        (*(v173 + 104))(v282, enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.unknown(_:), v176);
        sub_10000C944(v168, 1, v176);
        if (!v98)
        {
          sub_10000B240(v168, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        (*(v173 + 32))(v282, v168, v176);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      sub_1000F7564(v175);
      sub_10000C944(v175, 1, v174);
      if (v98)
      {
        sub_100017CB4();
        Apple_Parsec_Search_V2_Subscriptions.init()();
        sub_10000C944(v175, 1, v174);
        if (!v98)
        {
          sub_10000B240(v175, &qword_100219F20, &qword_10019ED28);
        }
      }

      else
      {
        sub_100007730();
        v177 = sub_10001AC58();
        v178(v177, v175, v174);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.subscriptions.setter();
      v179 = sub_1000F7A48();
      sub_100006748(v179, v180);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      v181 = objc_allocWithZone(PARSessionConfiguration);
      v182 = sub_1000F839C(0xD000000000000018, 0x80000001001ABD40, 0xD000000000000014, 0x80000001001B0E00);
      sub_100007608();
      v183 = sub_1000F4E58();
      swift_unknownObjectRelease();
      if (!v183)
      {

        return;
      }

      v184 = *(v183 + 64);
      swift_unknownObjectRetain();

      v185 = v274;
      v186 = v184;
      sub_1000E75A0();
      swift_unknownObjectRelease();
      v187 = v277;
      sub_10001F324(v185, v277);
      sub_10001AE20();
      if (*(v187 + v188))
      {
        sub_100017CB4();
        sub_100066648(v189, v190);
        v191 = v276;
        sub_10000C944(v184, 1, v276);
        if (!v98)
        {
          v192 = v269;
          v193 = v268;
          (*(v269 + 32))(v268, v184, v191);
          sub_100046184(&qword_100219BF0, &qword_1001A0710);
          v194 = (*(v192 + 80) + 32) & ~*(v192 + 80);
          v195 = swift_allocObject();
          *(v195 + 16) = xmmword_100197F20;
          (*(v192 + 16))(v195 + v194, v193, v191);
          sub_100008098();
          Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
          if (qword_1002140E8 != -1)
          {
            sub_100005E54(&qword_1002140E8);
          }

          v196 = type metadata accessor for Logger();
          sub_10000964C(v196, qword_100232B28);
          v197 = Logger.logObject.getter();
          v198 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v197, v198))
          {
            *swift_slowAlloc() = 0;
            sub_1000079DC(&_mh_execute_header, v199, v200, "Found valid trial experiment Identifiers");
          }

          v201 = sub_10001BD4C();
          v202(v201);
          goto LABEL_202;
        }
      }

      else
      {
        v186 = v275;
        sub_1000051C0(v275, 1, 1, v276);
      }

      sub_10000B240(v186, &qword_100217B90, &unk_10019E900);
      if (qword_1002140E8 != -1)
      {
        sub_100005E54(&qword_1002140E8);
      }

      v221 = type metadata accessor for Logger();
      sub_10000964C(v221, qword_100232B28);
      v222 = Logger.logObject.getter();
      v223 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v222, v223))
      {
        *swift_slowAlloc() = 0;
        sub_1000079DC(&_mh_execute_header, v224, v225, "Could not find trial experiment Identifiers");
      }

LABEL_202:
      sub_100056990(v187);
      return;
    case 0x13uLL:
      if (!v306[1])
      {
        goto LABEL_194;
      }

      sub_100012658();
      goto LABEL_195;
    case 0x15uLL:
      v112 = v306;
      if (v306[1])
      {
        sub_10002DF4C();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (*(v112 + *(type metadata accessor for PegasusContext(0) + 76) + 8))
      {
        sub_100012658();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (!v112[10])
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      v308 = _swiftEmptyArrayStorage;
      sub_10001E0F8();
      v203 = sub_10001E3CC();

      if (v203)
      {
        sub_1000F4B90(v203, &v308);
      }

      Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
      return;
    case 0x17uLL:
      v109 = type metadata accessor for PegasusContext(0);
      if (sub_10000AB74(v109))
      {
        sub_100023F78();
      }

      else
      {
        sub_100007D08();
      }

      v148 = v299;
      v147 = v300;
      v149 = v297;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (_swiftEmptyArrayStorage[1])
      {
        sub_1000F8D40();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (_swiftEmptyArrayStorage[5])
      {
        sub_10000FF3C();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (_swiftEmptyArrayStorage[8])
      {
        sub_10000FFC8();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (qword_100214168 != -1)
      {
        sub_100006028(&qword_100214168);
      }

      sub_100015B80();
      if (!_swiftEmptyArrayStorage[10])
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      sub_100014C74();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      sub_10002044C(&v308);
      v150 = sub_1000078F8();
      sub_100014988(v150);
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      sub_1000844F0();
      sub_1000E7480();
      swift_unknownObjectRelease();
      UUID.uuidString.getter();
      sub_1000126F0();
      (*(v298 + 8))(v149, v148);
      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      sub_1000844F0();
      v151 = v285;
      sub_100030008(v285);
      swift_unknownObjectRelease();
      sub_10001AE20();
      v153 = *(v151 + v152);

      sub_100056990(v151);
      if (v153)
      {
        sub_1000669EC(v153);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
      v154 = sub_1000F7A48();
      sub_100006748(v154, v155);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      v156 = sub_10000FEA8();
      if (v98)
      {
        v157 = _swiftEmptyArrayStorage;
      }

      else
      {
        v157 = v156;
      }

      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      sub_10001BE94();
      sub_1000F7690(v158);
      v159 = sub_10000F268();
      sub_10000C944(v159, v160, v147);
      if (v98)
      {
        sub_10000B240(_swiftEmptyArrayStorage, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        sub_100019078();
        v161 = v270;
        v162(v270, _swiftEmptyArrayStorage, v147);
        v163 = sub_10000E1E4();
        v164(v163, v161, v147);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        (v157[1])(v161, v147);
      }

      v165 = v287;
      if (!_swiftEmptyArrayStorage[17])
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.region.setter();
      v166 = swift_unknownObjectRetain();
      sub_1000F7A74(v166, v165);
      Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.setter();
      return;
    case 0x1AuLL:
      if (qword_100214168 != -1)
      {
        sub_100006028(&qword_100214168);
      }

      Apple_Parsec_Search_PegasusQueryContext.internalBuild.setter();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      v120 = type metadata accessor for PegasusContext(0);
      if (sub_10000AEF4(v120))
      {
        sub_100012658();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (a1[1])
      {
        sub_10002DF4C();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();

      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      return;
    case 0x1DuLL:
      v121 = type metadata accessor for PegasusContext(0);
      if (sub_10000AEF4(v121))
      {
LABEL_190:
        sub_100012658();
      }

      else
      {
LABEL_191:
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (a1[1])
      {
        sub_10002DF4C();
      }

      else
      {
LABEL_194:
        sub_100008A5C();
      }

LABEL_195:

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      return;
    default:
      return;
  }
}

uint64_t sub_1000F73F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000AA4C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, kCFPreferencesAnyApplication, 0);

  if (AppBooleanValue)
  {
    v5 = &enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.twentyFour(_:);
LABEL_5:
    v8 = *v5;
    v9 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
    sub_1000036B8();
    (*(v10 + 104))(a1, v8, v9);
    v11 = sub_10001BD3C();
    v14 = v9;
    goto LABEL_6;
  }

  v6 = sub_10000AA4C();
  v7 = CFPreferencesGetAppBooleanValue(v6, kCFPreferencesAnyApplication, 0);

  if (v7)
  {
    v5 = &enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.twelve(_:);
    goto LABEL_5;
  }

  v16 = *(v1 + 48);
  if (v16 == 2)
  {
    type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
    v11 = sub_100009940();
    v13 = 1;
  }

  else
  {
    v17 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
    sub_1000036B8();
    v19 = &enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.twentyFour(_:);
    if ((v16 & 1) == 0)
    {
      v19 = &enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.twelve(_:);
    }

    (*(v18 + 104))(a1, *v19, v17);
    v11 = sub_10001BD3C();
    v14 = v17;
  }

LABEL_6:

  return sub_1000051C0(v11, v12, v13, v14);
}

uint64_t sub_1000F7564@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003664();
  v9 = v8 - v7;
  if (*(v1 + 104) && (static String.Encoding.utf8.getter(), String.data(using:allowLossyConversion:)(), v11 = v10, (*(v5 + 8))(v9, v3), v11 >> 60 != 15))
  {
    Apple_Parsec_Search_V2_Subscriptions.init()();
    Apple_Parsec_Search_V2_Subscriptions.subscriptionJson.setter();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions();
  return sub_1000051C0(a1, v12, 1, v13);
}

uint64_t sub_1000F7690@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  sub_10000CCF0();
  v12 = type metadata accessor for Apple_Parsec_Search_V2_Location.Source();
  v13 = sub_100005490(v12);
  __chkstk_darwin(v13);
  sub_100003664();
  v16 = v15 - v14;
  v17 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  sub_100003650();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100003664();
  v23 = v22 - v21;
  v24 = *(v3 + 144);
  if (v24)
  {
    v47 = v10;
    v48 = v5;
    v49 = a1;
    v25 = v24;
    Apple_Parsec_Search_V2_Location.init()();
    [v25 horizontalAccuracy];
    Apple_Parsec_Search_V2_Location.horizontalAccuracy.setter();
    [v25 coordinate];
    Apple_Parsec_Search_V2_Location.latitude.setter();
    [v25 coordinate];
    Apple_Parsec_Search_V2_Location.longitude.setter();
    sub_1000FA7F4(v16);
    Apple_Parsec_Search_V2_Location.source.setter();
    v50[3] = &unk_1001F8E80;
    v50[4] = sub_1000772F0();
    LOBYTE(v50[0]) = 0;
    v26 = isFeatureEnabled(_:)();
    sub_100007378(v50);
    if ((v26 & 1) != 0 && (v27 = *(v3 + *(type metadata accessor for PegasusContext(0) + 64))) != 0)
    {
      v28 = v27;
      Apple_Parsec_Search_V2_RevGeoResolution.init()();
      v29 = sub_1000F8B50(v28, &selRef_country);
      sub_1000F8D4C(v29, v30);
      Apple_Parsec_Search_V2_RevGeoResolution.country.setter();
      v31 = sub_1000F8B50(v28, &selRef_administrativeArea);
      sub_1000F8D4C(v31, v32);
      Apple_Parsec_Search_V2_RevGeoResolution.administrativeArea.setter();
      v33 = sub_1000F8B50(v28, &selRef_subAdministrativeArea);
      sub_1000F8D4C(v33, v34);
      Apple_Parsec_Search_V2_RevGeoResolution.subAdministrativeArea.setter();
      v35 = sub_1000F8B50(v28, &selRef_locality);
      sub_1000F8D4C(v35, v36);
      Apple_Parsec_Search_V2_RevGeoResolution.locality.setter();
      v37 = sub_1000F8BAC(v28);
      if (!v37 || (v38 = sub_10008C290(v37), , !v38))
      {
      }

      v39 = v49;
      Apple_Parsec_Search_V2_RevGeoResolution.formattedAddressLines.setter();
      v40 = v48;
      (*(v7 + 16))(v47, v2, v48);
      Apple_Parsec_Search_V2_Location.revGeoResolution.setter();

      (*(v7 + 8))(v2, v40);
    }

    else
    {

      v39 = v49;
    }

    (*(v19 + 32))(v39, v23, v17);
    v41 = sub_10001BD3C();
    return sub_1000051C0(v41, v42, v43, v17);
  }

  else
  {
    v45 = sub_100009940();

    return sub_1000051C0(v45, v46, 1, v17);
  }
}

uint64_t sub_1000F7A48()
{
  v0 = sub_10000CB70();
  if (v1)
  {
    return sub_1000F7E94(v0, v1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F7A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  Apple_Parsec_Search_V2_MarketplaceInfo.init()();
  swift_unknownObjectRetain();
  sub_100050134(&v26);
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_100008C84(&v26, v28);
    sub_100007534(v28, v29);
    Apple_Parsec_Search_V2_MarketplaceInfo.isMarketplaceEligible.setter();
    v9 = sub_100007534(v28, v29);
    v10 = sub_1000BAB98(v9[2]);
    v11 = v10[2];
    if (v11)
    {
      v20[1] = a2;
      v20[2] = a1;
      v25 = _swiftEmptyArrayStorage;
      sub_1000ECA24(0, v11, 0);
      v12 = v25;
      v20[0] = v10;
      v13 = (v10 + 4);
      v14 = (v22 + 32);
      do
      {
        sub_1000092B4(v13, &v26);
        sub_1000092B4(&v26, v23);
        Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.init()();
        sub_100007534(v23, v24);

        Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.id.setter();
        if (sub_100007534(v23, v24)[4])
        {

          Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.territory.setter();
        }

        sub_100007378(&v26);
        v15 = *v14;
        v16 = v21;
        (*v14)(v21, v6, v4);
        sub_100007378(v23);
        v25 = v12;
        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          sub_1000ECA24(v17 > 1, v18 + 1, 1);
          v16 = v21;
          v12 = v25;
        }

        v12[2] = v18 + 1;
        v15(v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v16, v4);
        v13 += 40;
        --v11;
      }

      while (v11);
    }

    Apple_Parsec_Search_V2_MarketplaceInfo.supportedMarketplaces.setter();
    swift_unknownObjectRelease();
    return sub_100007378(v28);
  }

  else
  {
    swift_unknownObjectRelease();
    return sub_10000B240(&v26, &qword_100217B88, &unk_10019BE50);
  }
}

uint64_t sub_1000F7D88(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v8 = v2;
  v9 = sub_1000F8CBC();
  v3 = sub_1000205C4(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_100007534(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)(&v6);
  sub_100007378(v7);
  (*(v4 + 8))(a1, v2);
  return sub_10000BE80();
}

uint64_t sub_1000F7E94(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v38[0] = a1;
  v38[1] = a2;
  *&v41 = a1;
  *(&v41 + 1) = a2;

  sub_100046184(&qword_100219F38, &unk_1001A8740);
  if (swift_dynamicCast())
  {
    sub_100008C84(v39, &v42);
    sub_100007534(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)(&v41);
    v39[0] = v41;
    sub_100007378(&v42);
    goto LABEL_56;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_10000B240(v39, &qword_100219F40, &unk_10019ED40);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v39[0] = a1;
    *(&v39[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v39;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  sub_1000F843C(v5, v6, &v42);
  v7 = *(&v42 + 1);
  v8 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    v39[0] = v42;
    goto LABEL_56;
  }

LABEL_9:
  *&v39[0] = Data._Representation.init(count:)();
  *(&v39[0] + 1) = v9;
  __chkstk_darwin(*&v39[0]);
  v33[2] = v38;
  v10 = sub_1000F8558(sub_1000F8C40, v33);
  v12 = *(&v39[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v39[0]);
  switch(*(&v39[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v39[0]) - LODWORD(v39[0]);
      if (__OFSUB__(DWORD1(v39[0]), v39[0]))
      {
        goto LABEL_63;
      }

      v19 = v19;
LABEL_19:
      if (v11 == v19)
      {
        goto LABEL_20;
      }

      if (v12 == 2)
      {
        v18 = *(*&v39[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v39[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v21 = *(*&v39[0] + 16);
      v20 = *(*&v39[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v11)
      {
        v18 = 0;
LABEL_53:
        if (v18 < v11)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v33[4] = v4;
      v34 = v8;
      v35 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      v36 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v37 = v15 & 0xFFFFFFFFFFFFFFLL;
      *(&v41 + 7) = 0;
      *&v41 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v19 = BYTE14(v39[0]);
      goto LABEL_19;
  }

  while (4 * v24 != v17 >> 14)
  {
    v4 = v17 & 0xC;
    v27 = v17;
    if (v4 == v26)
    {
      v27 = sub_1000F8AF4(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v13;
      *(&v42 + 1) = v37;
      v30 = *(&v42 + v28);
    }

    else
    {
      v29 = v36;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    if (v4 == v26)
    {
      v17 = sub_1000F8AF4(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_59;
    }

    v17 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v41 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_58;
    }

    if (v23 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v23) = 0;
    }
  }

  if (!v23)
  {

    sub_100014A2C(v34, v35);
    goto LABEL_56;
  }

  *&v42 = v41;
  *(&v42 + 6) = *(&v41 + 6);
  Data._Representation.append(contentsOf:)();
  sub_100014A2C(v34, v35);
LABEL_55:

LABEL_56:
  v31 = v39[0];
  sub_100014924(*&v39[0], *(&v39[0] + 1));

  sub_100014A40(v31, *(&v31 + 1));
  return v31;
}

id sub_1000F839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithId:v6 userAgent:v7];

  return v8;
}

uint64_t sub_1000F843C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1000F8504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1000F89DC(sub_1000F8C9C, v5, a1, a2);
}

uint64_t sub_1000F8558(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100014A40(v7, v6);
      *v5 = xmmword_10019BF30;
      sub_100014A40(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1000F8A40(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100014A40(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_10019BF30;
      sub_100014A40(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v7 = v17;
      v10 = sub_1000F8A40(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_100014A40(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1000F891C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1000F8994(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000F89DC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1000F8A40(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000F8AF4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_10001BC20(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_10001BC20(v3);
    return v4 | 8;
  }
}

uint64_t sub_1000F8B50(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000126F0();

  return v2;
}

uint64_t sub_1000F8BAC(void *a1)
{
  v1 = [a1 formattedAddressLines];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_1000F8C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1000F8504(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1000F8C5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000F8994(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1000F8CBC()
{
  result = qword_1002193C0;
  if (!qword_1002193C0)
  {
    type metadata accessor for SHA256Digest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002193C0);
  }

  return result;
}

uint64_t sub_1000F8D4C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000F8D58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  sub_100046184(&qword_10021A0F8, &qword_10019EF48);
  swift_allocObject();
  v25 = a1;
  sub_10000D1D4(a7, a8);
  sub_10000D1D4(a5, a6);
  v18 = sub_1000F9828(v25, a2, a3, a7, a8, a5, a6);
  sub_100046184(&qword_10021A100, &qword_10019EF50);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *(v9 + 16) = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;

  v22 = a4;
  sub_1000FEDF4(0, 0, a4, &unk_10019EF60, v21);
  v23 = *(v9 + 16);
  os_unfair_lock_lock((v23 + 24));
  sub_1000FA7D4((v23 + 16));
  os_unfair_lock_unlock((v23 + 24));

  sub_100010300(a5, a6);
  sub_100010300(a7, a8);

  sub_10000B240(v22, &unk_10021A820, &qword_1001992D0);
  return v9;
}

uint64_t sub_1000F8F44()
{
  v7 = *v1;
  sub_100005898();
  *v2 = v7;
  *(v7 + 136) = v0;

  v3 = sub_100005A08();
  v4(v3);
  if (v0)
  {
    v5 = sub_1000F91FC;
  }

  else
  {
    v5 = sub_1000F9070;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F9070()
{
  sub_100006EE0();
  (*(v1[14] + 8))(v1[15], v1[13]);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100009990();
    Strong = swift_weakLoadStrong();
    v4 = v1[13];
    if (Strong)
    {
      sub_10000CA20(Strong);

      os_unfair_lock_lock(v2 + 6);
      sub_1000080A4();
      os_unfair_lock_unlock(v2 + 6);

      sub_10000AB8C();
      if (!v5)
      {
        v6 = sub_100011A18();
        v7(v6);
        sub_10000F5B0();
        v8 = swift_task_alloc();
        sub_10000BEF0(v8);
        sub_100006048();
        sub_1000349D8(v9, v10, &protocol conformance descriptor for ContinuousClock);
        sub_100005630();
        *v0 = v11;
        v12 = sub_10000852C();

        return static Task<>.sleep<A>(until:tolerance:clock:)(v12);
      }
    }

    else
    {
      v13 = sub_10000DEAC();
      sub_1000051C0(v13, v14, v15, v4);
    }

    sub_10000B240(v1[12], &qword_1002159E8, &qword_100199C38);
  }

  sub_100012664();

  sub_100006758();

  return v16();
}

uint64_t sub_1000F91FC()
{
  sub_100006EE0();
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F9294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_100046184(&qword_1002159E8, &qword_100199C38);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000F93E8, 0, 0);
}

uint64_t sub_1000F93E8()
{
  sub_100006EE0();
  sub_100009990();
  swift_beginAccess();
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100009990();
    Strong = swift_weakLoadStrong();
    v4 = *(v1 + 104);
    if (Strong)
    {
      sub_10000CA20(Strong);

      os_unfair_lock_lock(v2 + 6);
      sub_100007D14();
      os_unfair_lock_unlock(v2 + 6);

      sub_10000AB8C();
      if (!v5)
      {
        v6 = sub_100011A18();
        v7(v6);
        sub_10000F5B0();
        v8 = swift_task_alloc();
        sub_10000BEF0(v8);
        sub_100006048();
        sub_1000349D8(v9, v10, &protocol conformance descriptor for ContinuousClock);
        sub_100005630();
        *v0 = v11;
        v12 = sub_10000852C();

        return static Task<>.sleep<A>(until:tolerance:clock:)(v12);
      }
    }

    else
    {
      v13 = sub_10000DEAC();
      sub_1000051C0(v13, v14, v15, v4);
    }

    sub_10000B240(*(v1 + 96), &qword_1002159E8, &qword_100199C38);
  }

  sub_100012664();

  sub_100006758();

  return v16();
}

uint64_t sub_1000F9570()
{
  v7 = *v1;
  sub_100005898();
  *v2 = v7;
  *(v7 + 136) = v0;

  v3 = sub_100005A08();
  v4(v3);
  if (v0)
  {
    v5 = sub_1000FA7EC;
  }

  else
  {
    v5 = sub_1000F969C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F969C()
{
  sub_100006EE0();
  (*(v1[14] + 8))(v1[15], v1[13]);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100009990();
    Strong = swift_weakLoadStrong();
    v4 = v1[13];
    if (Strong)
    {
      sub_10000CA20(Strong);

      os_unfair_lock_lock(v2 + 6);
      sub_100007D14();
      os_unfair_lock_unlock(v2 + 6);

      sub_10000AB8C();
      if (!v5)
      {
        v6 = sub_100011A18();
        v7(v6);
        sub_10000F5B0();
        v8 = swift_task_alloc();
        sub_10000BEF0(v8);
        sub_100006048();
        sub_1000349D8(v9, v10, &protocol conformance descriptor for ContinuousClock);
        sub_100005630();
        *v0 = v11;
        v12 = sub_10000852C();

        return static Task<>.sleep<A>(until:tolerance:clock:)(v12);
      }
    }

    else
    {
      v13 = sub_10000DEAC();
      sub_1000051C0(v13, v14, v15, v4);
    }

    sub_10000B240(v1[12], &qword_1002159E8, &qword_100199C38);
  }

  sub_100012664();

  sub_100006758();

  return v16();
}

uint64_t sub_1000F9828(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a6;
  v37 = a7;
  v14 = type metadata accessor for ContinuousClock.Instant();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100046184(&qword_1002159E8, &qword_100199C38);
  __chkstk_darwin(v18 - 8);
  v20 = &v35 - v19;
  *(v8 + 16) = 0;
  sub_1000051C0(v8 + qword_100215938, 1, 1, v14);
  v21 = (v8 + qword_100215948);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v8 + qword_100215950);
  *v22 = 0;
  v22[1] = 0;
  *(v8 + qword_100215958) = 0;
  *(v8 + 16) = a1;
  v23 = (v8 + qword_100215940);
  *v23 = a2;
  v23[1] = a3;
  v24 = a1;
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();

  (*(v15 + 8))(v17, v14);
  sub_1000051C0(v20, 0, 1, v14);
  v25 = qword_100215938;
  swift_beginAccess();
  sub_1000114E0(v20, v8 + v25);
  swift_endAccess();
  v26 = (v8 + qword_100215948);
  v27 = *(v8 + qword_100215948);
  v28 = *(v8 + qword_100215948 + 8);
  *v26 = a4;
  v26[1] = a5;
  sub_10000D1D4(a4, a5);
  sub_100010300(v27, v28);
  sub_100010300(a4, a5);
  v29 = (v8 + qword_100215950);
  v30 = *(v8 + qword_100215950);
  v31 = *(v8 + qword_100215950 + 8);
  v33 = v36;
  v32 = v37;
  *v29 = v36;
  v29[1] = v32;
  sub_10000D1D4(v33, v32);
  sub_100010300(v30, v31);
  sub_100010300(v33, v32);
  return v8;
}

void sub_1000F9AA4()
{
  v1 = v0;
  v2 = sub_100046184(&qword_1002159E8, &qword_100199C38);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = (v0 + qword_100215948);
    v7 = *(v0 + qword_100215948);
    if (v7)
    {
      v8 = v6[1];

      sub_10000D1D4(v7, v8);
      v7(v5);
      sub_100010300(v7, v8);
      v9 = *v6;
    }

    else
    {

      v9 = 0;
    }

    v10 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    sub_100010300(v9, v10);
    *(v1 + 16) = 0;

    v11 = type metadata accessor for ContinuousClock.Instant();
    sub_1000051C0(v4, 1, 1, v11);
    v12 = qword_100215938;
    swift_beginAccess();
    sub_1000114E0(v4, v1 + v12);
    swift_endAccess();
    v13 = (v1 + qword_100215950);
    v14 = *(v1 + qword_100215950);
    if (v14)
    {
      v15 = v13[1];

      v14(v16);

      sub_100010300(v14, v15);
    }

    else
    {
    }

    v17 = *v13;
    v18 = v13[1];
    *v13 = 0;
    v13[1] = 0;
    sub_100010300(v17, v18);
    *(v1 + qword_100215958) = 0;
  }
}

void sub_1000F9C54()
{
  v1 = v0;
  v2 = sub_100046184(&qword_1002159E8, &qword_100199C38);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = (v0 + qword_100215948);
    v7 = *(v0 + qword_100215948);
    if (v7)
    {
      v8 = v6[1];
      v9 = v5;
      sub_10000D1D4(v7, v8);
      v7(v5);
      sub_100010300(v7, v8);
      v10 = *v6;
    }

    else
    {
      v11 = v5;
      v10 = 0;
    }

    v12 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    sub_100010300(v10, v12);
    v13 = *(v1 + 16);
    *(v1 + 16) = 0;

    v14 = type metadata accessor for ContinuousClock.Instant();
    sub_1000051C0(v4, 1, 1, v14);
    v15 = qword_100215938;
    swift_beginAccess();
    sub_1000114E0(v4, v1 + v15);
    swift_endAccess();
    v16 = (v1 + qword_100215950);
    v17 = *(v1 + qword_100215950);
    if (v17)
    {
      v18 = v16[1];

      v17(v19);

      sub_100010300(v17, v18);
    }

    else
    {
    }

    v20 = *v16;
    v21 = v16[1];
    *v16 = 0;
    v16[1] = 0;
    sub_100010300(v20, v21);
    *(v1 + qword_100215958) = 0;
  }
}

const char *sub_1000F9DF4(char a1)
{
  if (!a1)
  {
    return "lifetime";
  }

  if (a1 == 1)
  {
    return "contextUpdate";
  }

  return "notBagFetchable";
}

uint64_t sub_1000F9E38()
{
  v0 = qword_100219F48;

  return v0;
}

uint64_t sub_1000F9E70()
{
  v0 = aContextmanager_5[0];

  return v0;
}

void *sub_1000F9EC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003664();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC7parsecd14ContextManager_logger;
  (*(v4 + 16))(v7 - v6, v1 + OBJC_IVAR____TtC7parsecd14ContextManager_logger, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "ContextManager is destroyed", v12, 2u);
    sub_1000036D4(v12);
  }

  v13 = *(v4 + 8);
  v13(v8, v2);
  v14 = objc_autoreleasePoolPush();
  *(v1 + 24) = 0;

  objc_autoreleasePoolPop(v14);

  sub_10000B218(v1 + 32);

  sub_10001E6A4(v1 + OBJC_IVAR____TtC7parsecd14ContextManager_context, type metadata accessor for PegasusContext);

  v13(v1 + v9, v2);

  return v1;
}

uint64_t sub_1000FA0D4()
{
  sub_1000F9EC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ContextManager(uint64_t a1)
{
  result = qword_100219FC8;
  if (!qword_100219FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FA180(uint64_t a1)
{
  result = type metadata accessor for PegasusContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextManager.Configuration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ContextManager.Configuration(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ContextManager.Activity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000FA3C4(uint64_t a1)
{
  *(a1 + 8) = sub_1000FA3F4();
  result = sub_1000FA448();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000FA3F4()
{
  result = qword_10021A0A8;
  if (!qword_10021A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A0A8);
  }

  return result;
}

unint64_t sub_1000FA448()
{
  result = qword_10021A0B0;
  if (!qword_10021A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A0B0);
  }

  return result;
}

unint64_t sub_1000FA4A0()
{
  result = qword_10021A0B8;
  if (!qword_10021A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A0B8);
  }

  return result;
}

unint64_t sub_1000FA4F8()
{
  result = qword_10021A0C0;
  if (!qword_10021A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A0C0);
  }

  return result;
}

uint64_t sub_1000FA54C(uint64_t a1)
{
  result = sub_1000349D8(&qword_10021A0E0, type metadata accessor for ContextManager, &unk_10019EEE4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000FA5B8()
{
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000FA60C()
{
  sub_100006EE0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000B0D0(v1);

  return sub_1000F9294(v2, v3, v4, v5);
}

uint64_t sub_1000FA6A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FA6E8()
{
  v1 = *v0;
  sub_100005898();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000FA7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 type] - 1;
  if (v3 > 0xC)
  {
    v4 = &enum case for Apple_Parsec_Search_V2_Location.Source.unknown(_:);
  }

  else
  {
    v4 = *(&off_1001FCD80 + v3);
  }

  v5 = *v4;
  v6 = type metadata accessor for Apple_Parsec_Search_V2_Location.Source();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t *sub_1000FA894()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v1 + 80);
  sub_1000FA930(sub_1000FAA6C, v2, v3, v4);

  return v0;
}

uint64_t sub_1000FA930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v9 = *(*v4 + 80);
  v10 = a1;
  v11 = a2;
  v6 = type metadata accessor for DeferredSetup.State(0, v9, a3, a4);
  sub_10003B428(sub_1000FAAF0, &v8, v5, v6, &type metadata for Bool);
  return v12;
}

uint64_t sub_1000FA9C0()
{
  sub_1000FA894();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000FAA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1000FAA74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = 0;
  }

  else
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    *a1 = a2;
    *(a1 + 8) = a3;
    v5 = 1;
    *(a1 + 16) = 1;

    dispatch_group_leave(v7);
    sub_100046214(v7, v6, 0);
  }

  *a4 = v5;
}

void sub_1000FAB10(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v7 - 8);
  v9 = v46 - v8;
  v10 = type metadata accessor for URL();
  sub_100003650();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v46 - v17;
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  if (sub_100008D0C(v9, 1, v10) == 1)
  {
    sub_10000F94C(v9, &qword_100218230, &unk_100199A00);
    if (qword_1002141C0 != -1)
    {
      sub_100006060(&qword_1002141C0);
    }

    v19 = type metadata accessor for Logger();
    sub_100006674(v19, qword_10021A240);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (sub_100007BE8(v21))
    {
      v22 = sub_100006640();
      sub_10000594C(v22);
      sub_10000554C(&_mh_execute_header, v23, v24, "Couldn't find com.apple.parsecd cache directory");
      sub_1000036D4(v18);
    }
  }

  else
  {
    (*(v12 + 32))(v18, v9, v10);
    v25 = String._bridgeToObjectiveC()();
    v26 = [a1 objectForKey:v25];

    if (v26)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v46, 0, sizeof(v46));
    }

    sub_10000F94C(v46, &qword_1002181D0, &qword_100198E00);
    if (a4 && v26)
    {
      if (qword_1002141C0 != -1)
      {
        sub_100006060(&qword_1002141C0);
      }

      v27 = type metadata accessor for Logger();
      sub_100006674(v27, qword_10021A240);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (sub_100007670(v29))
      {
        v30 = sub_100006640();
        *v30 = 0;
        sub_100006768(&_mh_execute_header, v31, v32, "Found cached app whitelist data, no update required.");
        sub_1000036D4(v30);
      }

      (*(v12 + 8))(v18, v10);
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.appendingPathComponent(_:)();

      URL.path.getter();
      v33 = String._bridgeToObjectiveC()();

      v34 = [a2 fileExistsAtPath:v33];

      if (v34)
      {
        sub_100005180(0, &qword_100217408, NSXPCConnection_ptr);
        v35 = sub_10000CC24(0xD000000000000014, 0x80000001001AE470, 0);
        v36 = objc_allocWithZone(type metadata accessor for FlusherClient());
        v37 = FlusherClient.init(connection:)(v35);
        (*((swift_isaMask & v37->isa) + 0x78))(0, 0, 0);
      }

      else
      {
        if (qword_1002141C0 != -1)
        {
          sub_100006060(&qword_1002141C0);
        }

        v38 = type metadata accessor for Logger();
        sub_100006674(v38, qword_10021A240);
        v37 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (sub_100007670(v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v46[0] = v41;
          *v40 = 136315138;
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = sub_100009684(v42, v43, v46);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v37, v39, "App whitelist data update required, but no %s file found. Bailing to prevent useless wake of parsec-fbf.", v40, 0xCu);
          sub_100007378(v41);
          sub_1000036D4(v41);
          sub_1000036D4(v40);
        }
      }

      v45 = *(v12 + 8);
      v45(v15, v10);
      v45(v18, v10);
    }
  }
}

uint64_t sub_1000FB070()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_10021A240);
  sub_10000964C(v0, qword_10021A240);
  return Logger.init(subsystem:category:)();
}

uint64_t FlusherClient.flushSessionEagerly(atURL:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v3[OBJC_IVAR____TtC7parsecd13FlusherClient_connection];
  v51 = sub_1000FBCF0;
  v52 = 0;
  sub_100008548();
  v48 = 1107296256;
  sub_100003A98();
  v49 = v15;
  v50 = &unk_1001FCF38;
  v16 = _Block_copy(&aBlock);
  v17 = [v14 remoteObjectProxyWithErrorHandler:v16];
  _Block_release(v16);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009848(v53, &aBlock);
  sub_100046184(&qword_10021A2C0, &qword_10019F078);
  if (swift_dynamicCast())
  {
    v45 = v46;
    if (qword_1002141C0 != -1)
    {
      sub_100006060(&qword_1002141C0);
    }

    v18 = type metadata accessor for Logger();
    sub_100006674(v18, qword_10021A240);
    (*(v10 + 16))(v13, a1, v8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = a2;
      v22 = v21;
      v23 = swift_slowAlloc();
      v42[1] = a1;
      v24 = v23;
      aBlock = v23;
      *v22 = 136315138;
      v25 = URL.lastPathComponent.getter();
      v44 = v4;
      v26 = a3;
      v28 = v27;
      (*(v10 + 8))(v13, v8);
      v29 = sub_100009684(v25, v28, &aBlock);
      a3 = v26;
      v4 = v44;

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "Flushing session %s eagerly.", v22, 0xCu);
      sub_100007378(v24);
      sub_1000036D4(v24);
      v30 = v22;
      a2 = v43;
      sub_1000036D4(v30);
    }

    else
    {

      (*(v10 + 8))(v13, v8);
    }

    URL._bridgeToObjectiveC()(v31);
    v33 = v36;
    v37 = swift_allocObject();
    v37[2] = a2;
    v37[3] = a3;
    v37[4] = v4;
    v51 = sub_1000FBCD8;
    v52 = v37;
    sub_100008548();
    v48 = 1107296256;
    sub_100005D74();
    v49 = v38;
    v50 = &unk_1001FCF88;
    v39 = _Block_copy(&aBlock);
    sub_10000D1D4(a2, a3);
    v40 = v4;

    [v45 flushSessionEagerly:v33 completion:v39];
    _Block_release(v39);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002141C0 != -1)
    {
      sub_100006060(&qword_1002141C0);
    }

    v32 = type metadata accessor for Logger();
    sub_100006674(v32, qword_10021A240);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (sub_100007670(v34))
    {
      v35 = sub_100006640();
      sub_10000594C(v35);
      _os_log_impl(&_mh_execute_header, v33, v34, "FBF proxy didn't conform to expected remote object protocol", v16, 2u);
      sub_1000036D4(v16);
    }
  }

  return sub_100007378(v53);
}

void sub_1000FB52C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000FB594(void (*a1)(void), uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002141C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000964C(v12, qword_10021A240);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = v11;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Eager flush finished", v15, 2u);
    v11 = v22;
  }

  if (a1)
  {
    a1();
  }

  v16 = FlusherClient.invalidationQueue.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  aBlock[4] = sub_1000FBCF4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FD0E0;
  v18 = _Block_copy(aBlock);
  v19 = a3;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100024990();
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v23);
}

Swift::Void __swiftcall FlusherClient.deleteSafariFeedbackEagerly()()
{
  v2 = *(v0 + OBJC_IVAR____TtC7parsecd13FlusherClient_connection);
  aBlock[4] = sub_1000FBCF0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_100003A98();
  aBlock[2] = v3;
  aBlock[3] = &unk_1001FD040;
  v4 = _Block_copy(aBlock);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v4];
  _Block_release(v4);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009848(aBlock, v14);
  v6 = sub_100046184(&qword_10021A2C0, &qword_10019F078);
  if (sub_100005640(v6))
  {
    [v13 deleteSafariFeedbackEagerly];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002141C0 != -1)
    {
      sub_100006060(&qword_1002141C0);
    }

    v7 = type metadata accessor for Logger();
    sub_100006674(v7, qword_10021A240);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (sub_100007BE8(v9))
    {
      v10 = sub_100006640();
      sub_10000594C(v10);
      sub_10000554C(&_mh_execute_header, v11, v12, "FBF proxy didn't conform to expected remote object protocol");
      sub_1000036D4(v1);
    }
  }

  sub_100007378(aBlock);
}

void sub_1000FBAAC(uint64_t a1)
{
  if (qword_1002141C0 != -1)
  {
    sub_100006060(&qword_1002141C0);
  }

  v1 = type metadata accessor for Logger();
  sub_100006674(v1, qword_10021A240);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_100009684(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "fbf connection closed with error: %s", v3, 0xCu);
    sub_100007378(v4);
    sub_1000036D4(v4);
    sub_1000036D4(v3);
  }

  else
  {
  }
}

uint64_t sub_1000FBD2C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000FBD9C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100006080();
  sub_1000FBF50(v1, v2, &protocol conformance descriptor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000FBE10()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100006080();
  sub_1000FBF50(v0, v1, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000FBE90(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100006080();
  sub_1000FBF50(v1, v2, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000FBF50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000FBF98(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000FD46C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000FC0D8()
{
  sub_100005D28();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();
  sub_1000037B0();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v4 + 112));
  sub_1000037B0();

  sub_1000037B0();
  sub_100015C0C(v0 + *(v6 + 136), &unk_100214C80, &qword_10019AFC0);
  sub_1000037B0();
  v8 = *(v7 + 144);
  type metadata accessor for Date();
  sub_10000690C();
  (*(v9 + 8))(v0 + v8);
  sub_1000037B0();

  return v0;
}

uint64_t sub_1000FC264()
{
  v1 = v0;
  sub_100005D28();
  v4 = type metadata accessor for ActivitySpan.ActivityData(0, *(v2 + 80), *(v2 + 88), v3);

  v39 = v4;
  sub_10008C66C(sub_1000FD964);

  v47 = v43;
  v48 = v44;
  v49 = v45;
  v50 = v46;
  v5 = *&v1[*(*v1 + 128)];
  v6 = static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)("LEAKED SPAN: {{{", 16, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100197F30;
  sub_1000FC8A4();
  v8 = StaticString.description.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_10000512C();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = sub_1000FC850();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 72) = v12;
  *(v7 + 80) = v13;
  v14 = sub_1000FC7FC();
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v11;
  v42 = v11;
  *(v7 + 112) = v14;
  *(v7 + 120) = v15;
  os_log(_:dso:log:type:_:)("Name: %s, Category: %s, Subsystem: %s", v37, v39, v41);

  if ((BYTE1(v48) & 1) == 0)
  {
    static os_log_type_t.error.getter();
    v16 = sub_100011A2C();
    *(v16 + 16) = xmmword_100197F20;
    v17 = StaticString.description.getter();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v11;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_100008568();
    os_log(_:dso:log:type:_:)(v19);

    v20 = v49;
    if (v49)
    {

      static os_log_type_t.error.getter();
      v21 = sub_100011A2C();
      *(v21 + 16) = xmmword_100197F20;
      *(v21 + 56) = sub_100046184(&unk_10021BC50, &qword_1001A0680);
      *(v21 + 64) = sub_100095D74(&unk_10021A4B0, &unk_10021BC50, &qword_1001A0680, &protocol conformance descriptor for [A]);
      *(v21 + 32) = v20;
      sub_100008568();
      os_log(_:dso:log:type:_:)(v22);
    }
  }

  v23 = *(&v48 + 1);
  if (*(&v48 + 1))
  {

    static os_log_type_t.error.getter();
    v24 = sub_100011A2C();
    *(v24 + 16) = xmmword_100197F20;
    *(v24 + 56) = sub_100046184(&unk_10021BC40, &qword_10019F288);
    *(v24 + 64) = sub_100095D74(&unk_10021A4A0, &unk_10021BC40, &qword_10019F288, &protocol conformance descriptor for [A : B]);
    *(v24 + 32) = v23;
    sub_100008568();
    os_log(_:dso:log:type:_:)(v25);
  }

  v26 = *(&v49 + 1);
  result = sub_10000D57C(*(&v49 + 1));
  v28 = v40;
  if (result)
  {
    v29 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v38 = v1;

    v30 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v30;
      static os_log_type_t.error.getter();
      v31 = sub_100011A2C();
      *(v31 + 16) = xmmword_100197F20;
      swift_unknownObjectRetain();
      v32 = String.init<A>(describing:)();
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = v42;
      *(v31 + 32) = v32;
      *(v31 + 40) = v33;
      os_log(_:dso:log:type:_:)("Leaked cancellables: %s", v38);
      swift_unknownObjectRelease();
    }

    while (v29 != v30);

    v28 = v40;
  }

  static os_log_type_t.error.getter();
  sub_100008568();
  os_log(_:dso:log:type:_:)(v34);
  if (sub_1000FC90C())
  {
    static os_log_type_t.fault.getter();
    sub_100008568();
    os_log(_:dso:log:type:_:)(v35);
  }

  sub_10000690C();
  return (*(v36 + 8))(&v47, v28);
}

uint64_t sub_1000FC7FC()
{
  sub_100005D28();
  sub_100003710();
  return (*(*(v0 + 88) + 24))();
}

uint64_t sub_1000FC850()
{
  sub_100005D28();
  sub_100003710();
  return (*(*(v0 + 88) + 32))();
}

uint64_t sub_1000FC8A4()
{
  sub_100005D28();
  sub_100003710();
  return v1(*(v0 + 80));
}

uint64_t sub_1000FC90C()
{
  sub_100005D28();
  v2 = *(v1 + 80);
  __chkstk_darwin(v3);
  v5 = v12 - v4;
  sub_100003710();
  (*(v7 + 16))(v5, v0 + *(v6 + 112), v2);
  sub_100046184(&qword_10021A4C8, &qword_10019F290);
  if (swift_dynamicCast())
  {
    sub_100008C84(v12, v14);
    v8 = v15;
    v9 = v16;
    sub_100007534(v14, v15);
    v10 = (*(v9 + 8))(v8, v9);
    sub_100007378(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_100015C0C(v12, &unk_10021A4D0, &qword_10019F298);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1000FCA84()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000037B0();
  (*(v2 + 16))(v4, v0 + *(v5 + 144), v1);
  Date.timeIntervalSinceNow.getter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000FCBE4(void (*a1)(void), uint64_t a2)
{
  sub_1000037B0();
  v5 = *(*(v2 + *(v4 + 152)) + 16);

  os_unfair_lock_lock(v5);
  sub_1000FD5C0(v2, a1);
  os_unfair_lock_unlock(v5);
}

uint64_t sub_1000FCC6C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v54 - v7;
  v9 = *(v2 + 80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = *(v1 + 40);
  v64 = *(v1 + 24);
  v65 = v17;
  v66 = *(v1 + 56);
  v67 = *(v1 + 72);
  v18 = *(&v17 + 1);
  v58 = *(v2 + 88);
  v20 = type metadata accessor for ActivitySpan.ActivityData(0, v9, v58, v19);
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v57 = v20;
  v22(v59, &v64);
  sub_1000FD614(v18);
  if ((BYTE1(v65) & 1) == 0)
  {
    v23 = v66;
    if (v66)
    {
      v56 = *(&v64 + 1);
      v24 = v64;
      HIDWORD(v55) = v65;
      sub_1000036C8();
      (*(v10 + 16))(v16, v1 + *(v25 + 112), v9);
      sub_1000036C8();
      v27 = *(v26 + 136);
      swift_beginAccess();
      sub_100008C9C(v1 + v27, v8);
      v28 = type metadata accessor for OSSignpostID();
      result = sub_100008D0C(v8, 1, v28);
      if (result != 1)
      {
        v30 = v8;
        sub_1000036C8();
        v32 = *(v1 + *(v31 + 128));

        sub_1000FD33C(v30, v32, v24, v56, SBYTE4(v55), v23, v9, v58);

        (*(v10 + 8))(v16, v9);
        sub_10000690C();
        (*(v33 + 8))(v30, v28);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  sub_1000036C8();
  (*(v10 + 16))(v13, v1 + *(v34 + 112), v9);
  sub_1000036C8();
  v36 = *(v35 + 136);
  swift_beginAccess();
  sub_100008C9C(v1 + v36, v5);
  v37 = type metadata accessor for OSSignpostID();
  result = sub_100008D0C(v5, 1, v37);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1000036C8();
  v32 = *(v1 + *(v38 + 128));
  sub_1000FD2AC(v5, v32, v9, v58);
  (*(v10 + 8))(v13, v9);
  sub_10000690C();
  (*(v39 + 8))(v5, v37);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan(0, v9, v58, v41);
    sub_1000BE4E4(v1, v42, v43, &off_1001FD218, v44, v45, v46, v47, v54, v55);
    v62 = 0uLL;
    v63 = 0;
    *&v61[6] = 0;
    *&v61[14] = 0;

    v48 = *(v21 + 8);
    v49 = v57;
    v48(&v64, v57);
    v50 = *(v1 + 40);
    v59[0] = *(v1 + 24);
    v51 = *(v1 + 56);
    v59[1] = v50;
    v59[2] = v51;
    v60 = *(v1 + 72);
    *(v1 + 24) = v62;
    *(v1 + 40) = v63;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v61;
    *(v1 + 56) = *&v61[14];
    *(v1 + 64) = _swiftEmptyArrayStorage;
    *(v1 + 72) = 0;
    v48(v59, v49);
    sub_1000036C8();
    *(v1 + *(v52 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1000FC90C())
    {
      v53 = static os_log_type_t.fault.getter();
      os_log(_:dso:log:type:_:)("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &_mh_execute_header, v32, v53, _swiftEmptyArrayStorage);
    }

    return (*(v21 + 8))(&v64, v57);
  }
}

uint64_t sub_1000FD20C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  v6 = a3;
  sub_1000037B0();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_1000FD7EC(v4, a1, a2, v6, a4);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_1000FD2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_signpost_type_t.end.getter();
  (*(a4 + 40))(a3, a4);

  return os_signpost(_:dso:log:name:signpostID:)();
}

void sub_1000FD33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = static os_signpost_type_t.end.getter();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_1000070D0(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_1000FD3FC()
{
  sub_1000FC0D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1000FD46C(uint64_t a1)
{
  if (!qword_10021A410[0])
  {
    type metadata accessor for OSSignpostID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_10021A410);
    }
  }
}

uint64_t sub_1000FD4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000FD500(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000FD51C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1000FD55C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1000FD5C0(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_1000FCC6C();
  }

  return result;
}

void sub_1000FD614(uint64_t a1)
{
  if (sub_1000FD96C(a1))
  {
    sub_1000037B0();
    static os_log_type_t.debug.getter();
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100198F10;
    v2 = sub_1000FC850();
    v4 = v3;
    *(v1 + 56) = &type metadata for String;
    v5 = sub_10000512C();
    *(v1 + 64) = v5;
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    sub_10000EA9C();
    sub_10000ABB4();
    v6 = Dictionary.description.getter();
    *(v1 + 96) = &type metadata for String;
    *(v1 + 104) = v5;
    *(v1 + 72) = v6;
    *(v1 + 80) = v7;
    sub_100008568();
    os_log(_:dso:log:type:_:)(v8);

    sub_1000FC7FC();
    v9 = sub_1000FC850();
    v11 = v10;

    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v9;
    v13._object = v11;
    String.append(_:)(v13);

    v14 = String._bridgeToObjectiveC()();

    sub_10000ABB4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    AnalyticsSendEvent();
  }
}

uint64_t sub_1000FD7EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  *(a1 + 56) = a5;
}

uint64_t sub_1000FD838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  v10[0] = *(a1 + 3);
  v10[1] = v4;
  v11 = *(a1 + 7);
  v5 = v11;
  v12 = a1[9];
  v6 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  v7 = type metadata accessor for ActivitySpan.ActivityData(0, *(v3 + 80), *(v3 + 88), a2);
  return (*(*(v7 - 8) + 16))(v9, v10, v7);
}

uint64_t sub_1000FD96C(uint64_t a1)
{
  v2 = v1;
  sub_100005D28();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  (*(v6 + 16))(&v19 - v9, v2 + *(v11 + 112), v5, v8);
  DynamicType = swift_getDynamicType();
  (*(v6 + 8))(v10, v5);
  v14 = sub_100029FC4(DynamicType, DynamicType, &protocol descriptor for __CoreAnalyticsActivity);
  result = 0;
  if (v14)
  {
    if (a1)
    {
      v16 = v13;
      v17 = *(v13 + 16);

      v17(v14, v16);
      dispatch thunk of RawRepresentable.rawValue.getter();
      UInt._bridgeToObjectiveC()();
      swift_isUniquelyReferenced_nonNull_native();
      v19 = a1;
      sub_10000F318();

      v18 = v19;
      (*(v16 + 8))(v14, v16);
      sub_1000FCA84();
      Double._bridgeToObjectiveC()();
      swift_isUniquelyReferenced_nonNull_native();
      v20 = v18;
      sub_10000F318();

      return v20;
    }
  }

  return result;
}

uint64_t sub_1000FDBCC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100046184(&unk_100217040, &qword_1001989F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  v7 = a3[3];
  v8 = a3[4];
  sub_100007534(a3, v7);
  v9 = (*(v8 + 16))(v7, v8);
  *(inited + 56) = &type metadata for UInt;
  *(inited + 64) = &protocol witness table for UInt;
  *(inited + 32) = v9;
  type metadata accessor for QueryCacheSpan(0);
  *(swift_allocObject() + qword_100232D38) = 0;
  v10 = sub_10007E180(a1, a2, "currentCost=%{signpost.description.attribute,public}llu", 55, 2, inited);
  sub_100007378(a3);
  return v10;
}

uint64_t sub_1000FDCDC(uint64_t a1, char a2)
{
  sub_100046184(&unk_100217040, &qword_1001989F0);
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100197F20;
    v11 = a1;
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_10000512C();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_10000E384("error=%{signpost.description.attribute,public}s", 47, 2, v4, v11, 1);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100198F10;
    *(v9 + 56) = &type metadata for String;
    v10 = sub_10000512C();
    *(v9 + 32) = 0xD000000000000013;
    *(v9 + 40) = 0x80000001001B1430;
    *(v9 + 96) = &type metadata for UInt;
    *(v9 + 104) = &protocol witness table for UInt;
    *(v9 + 64) = v10;
    *(v9 + 72) = a1;
    sub_10000E384("error=%{signpost.description.attribute,public}s, cost=%{signpost.description.attribute,public}llu", 97, 2, v9);
  }
}

uint64_t sub_1000FDE50()
{
  if ((*(v0 + 81) & 1) == 0)
  {
    sub_1000FDF78();
  }

  v1 = sub_10002FCF4();

  return v1;
}

uint64_t sub_1000FDE94()
{
  v0 = sub_1000FDE50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for QueryCacheSpan(uint64_t a1)
{
  result = qword_10021A508;
  if (!qword_10021A508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FDF78()
{
  v1 = v0;
  v2 = *&v0[qword_100232D38];
  if (v2)
  {
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100198F10;
    v4 = sub_1001092C8();
    *(v3 + 56) = &type metadata for UInt;
    *(v3 + 64) = &protocol witness table for UInt;
    *(v3 + 32) = v4;
    v6 = *(v2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
    v5 = *(v2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 8);
    *(v3 + 96) = &type metadata for String;
    *(v3 + 104) = sub_10000512C();
    *(v3 + 72) = v6;
    *(v3 + 80) = v5;

    sub_10000E384("cost=%{signpost.description.attribute,public}llu, input=%{sensitive}s", 69, 2, v3);
  }

  v7 = *(*&v1[*(*v1 + 152)] + 16);

  os_unfair_lock_lock(v7);
  if ((v1[81] & 1) == 0)
  {
    sub_100112BA4();
  }

  os_unfair_lock_unlock(v7);
}

uint64_t initializeBufferWithCopyOfBuffer for QueryCacheSpan.Error(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for QueryCacheSpan.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QueryCacheSpan.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000FE12C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FE148(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void sub_1000FE178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v10);
  sub_100003760();
  __chkstk_darwin(v11);
  sub_10000BEFC();
  sub_100023F84(a3);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_10001497C();
  v15 = sub_100008D0C(v13, v14, v12);

  if (v15 == 1)
  {
    sub_100015C0C(v5, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000690C();
    (*(v16 + 8))(v5, v12);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = v18;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100012F58();
    if (a2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100006634();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v17 | v19)
      {
        sub_10000AF08();
      }

      swift_task_create();
      sub_10000835C();

      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006634();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v19)
  {
    sub_10000E1F4();
  }

  swift_task_create();
LABEL_13:
  sub_100007CB4();
}

void sub_1000FE3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v10);
  sub_100003760();
  __chkstk_darwin(v11);
  sub_10000BEFC();
  sub_100023F84(a3);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_10001497C();
  v15 = sub_100008D0C(v13, v14, v12);

  if (v15 == 1)
  {
    sub_100015C0C(v5, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000690C();
    (*(v16 + 8))(v5, v12);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = v18;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100012F58();
    if (a2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100006634();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100046184(&unk_100217470, &qword_10019BA80);
      if (v17 | v19)
      {
        sub_10000AF08();
      }

      swift_task_create();
      sub_10000835C();

      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006634();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  sub_100046184(&unk_100217470, &qword_10019BA80);
  if (v17 | v19)
  {
    sub_10000E1F4();
  }

  swift_task_create();
LABEL_13:
  sub_100007CB4();
}

void sub_1000FE634()
{
  sub_100015B9C();
  if (v1)
  {
    sub_100046184(&qword_10021A830, &qword_10019F450);
    v3 = sub_100006FC4();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_10000DC78();
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = v3 + 8;

  v10 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (*(v0 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100009848(*(v0 + 56) + 32 * v12, v36);
    *&v35 = v15;
    *(&v35 + 1) = v14;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_100028734(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_100028734(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_100028734(v32, v33);
    v16 = AnyHashable._rawHashValue(seed:)(v3[5]) & ~(-1 << *(v3 + 32));
    if (((-1 << v16) & ~v9[v16 >> 6]) == 0)
    {
      sub_10001BC38();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (v9[v17] != -1)
        {
          sub_100007AB4();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1001028FC();
LABEL_21:
    v7 &= v7 - 1;
    sub_10001BD58();
    *(v9 + v21) |= v22;
    v24 = v3[6] + 40 * v23;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    sub_100028734(v33, (v3[7] + 32 * v23));
    ++v3[2];
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = *(v2 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}