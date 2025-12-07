void *sub_10055DF9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = _swiftEmptyArrayStorage;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1005761C0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10021E8E8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_100816AB0;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

const char *sub_10055E124(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v51 - v12;
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  ppStmt = 0;
  swift_beginAccess();
  v16 = *(a1 + 40);
  if (v16 || (sub_1005507F8(), (v16 = *(a1 + 40)) != 0))
  {
    v17 = String.utf8CString.getter();
    v18 = sqlite3_prepare_v3(v16, (v17 + 32), -1, 0, &ppStmt, 0);

    if (v18)
    {
      result = sqlite3_errmsg(v16);
      if (result)
      {
        v20 = String.init(cString:)();
        v22 = v21;
        defaultLogger()();

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v51 = v26;
          *v25 = 136446210;
          v27 = sub_100141FE4(v20, v22, &v51);

          *(v25 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v23, v24, "coreidvd: failed to prepare select statement: %{public}s", v25, 0xCu);
          sub_10000BB78(v26);
        }

        else
        {
        }

        return (*(v7 + 8))(v10, v6);
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v28 = ppStmt;
    if (qword_100832CA0 != -1)
    {
      swift_once();
    }

    v29 = qword_1008823D0;
    v30 = String.utf8CString.getter();
    v31 = sqlite3_bind_text(v28, 1, (v30 + 32), -1, v29);

    if (v31)
    {
      result = sqlite3_errmsg(v16);
      if (!result)
      {
        goto LABEL_30;
      }

      v32 = String.init(cString:)();
      v34 = v33;
      defaultLogger()();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v51 = v38;
        *v37 = 136446210;
        v39 = sub_100141FE4(v32, v34, &v51);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "coreidvd: failure binding service_name: %{public}s", v37, 0xCu);
        sub_10000BB78(v38);
      }

      else
      {
      }

      (*(v7 + 8))(v13, v6);
    }

    else
    {
      while (sqlite3_step(ppStmt) == 100)
      {
        if (!sqlite3_column_text(ppStmt, 0))
        {
          __break(1u);
        }

        v41 = String.init(cString:)();
        v43 = v42;
        v44 = *a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_1003C5110(0, *(v44 + 2) + 1, 1, v44);
          *a4 = v44;
        }

        v47 = *(v44 + 2);
        v46 = *(v44 + 3);
        if (v47 >= v46 >> 1)
        {
          v44 = sub_1003C5110((v46 > 1), v47 + 1, 1, v44);
          *a4 = v44;
        }

        *(v44 + 2) = v47 + 1;
        v40 = &v44[16 * v47];
        *(v40 + 4) = v41;
        *(v40 + 5) = v43;
      }
    }

    return sqlite3_finalize(ppStmt);
  }

  defaultLogger()();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "coreidvd: unable to obtain sqlite database pointer", v50, 2u);
  }

  return (*(v7 + 8))(v15, v6);
}

const char *sub_10055E6C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v409 = a3;
  v428 = a2;
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v4 - 8);
  v411 = &v392 - v5;
  v6 = type metadata accessor for Date();
  v414 = *(v6 - 8);
  v415 = v6;
  v7 = __chkstk_darwin(v6);
  v410 = &v392 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v412 = &v392 - v9;
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v421 = &v392 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = type metadata accessor for VerifiedClaim(0);
  __chkstk_darwin(v422);
  v423 = &v392 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v426 = *(v13 - 1);
  v427 = v13;
  __chkstk_darwin(v13);
  v15 = &v392 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v429 = v16;
  v430 = v17;
  v18 = __chkstk_darwin(v16);
  v403 = &v392 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v405 = &v392 - v21;
  v22 = __chkstk_darwin(v20);
  v404 = &v392 - v23;
  v24 = __chkstk_darwin(v22);
  v408 = &v392 - v25;
  v26 = __chkstk_darwin(v24);
  v406 = &v392 - v27;
  v28 = __chkstk_darwin(v26);
  v407 = &v392 - v29;
  v30 = __chkstk_darwin(v28);
  v413 = &v392 - v31;
  v32 = __chkstk_darwin(v30);
  v416 = &v392 - v33;
  v34 = __chkstk_darwin(v32);
  v417 = &v392 - v35;
  v36 = __chkstk_darwin(v34);
  v418 = &v392 - v37;
  v38 = __chkstk_darwin(v36);
  v419 = &v392 - v39;
  v40 = __chkstk_darwin(v38);
  v420 = &v392 - v41;
  v42 = __chkstk_darwin(v40);
  v425 = (&v392 - v43);
  v44 = __chkstk_darwin(v42);
  v46 = &v392 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v392 - v48;
  v50 = __chkstk_darwin(v47);
  v52 = &v392 - v51;
  __chkstk_darwin(v50);
  v54 = &v392 - v53;
  v55 = type metadata accessor for DIPError.Code();
  v56 = *(v55 - 8);
  v431 = v55;
  v432 = v56;
  __chkstk_darwin(v55);
  v433 = &v392 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v58 = *(a1 + 40);
  if (!v58)
  {
    sub_1005507F8();
    v58 = *(a1 + 40);
    if (!v58)
    {
      (*(v432 + 104))(v433, enum case for DIPError.Code.databaseInaccessible(_:), v431);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_17:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v59 = String.utf8CString.getter();
  v60 = sqlite3_prepare_v3(v58, (v59 + 32), -1, 0, &ppStmt, 0);

  if (v60)
  {
    if (sqlite3_errmsg(v58))
    {
      v61 = String.init(cString:)();
      v63 = v62;
      defaultLogger()();

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v443[0] = v67;
        *v66 = 136446210;
        v68 = sub_100141FE4(v61, v63, v443);

        *(v66 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v64, v65, "coreidvd: failed to prepare insert statement %{public}s", v66, 0xCu);
        sub_10000BB78(v67);
      }

      else
      {
      }

      (*(v430 + 8))(v54, v429);
      (*(v432 + 104))(v433, enum case for DIPError.Code.internalError(_:), v431);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_17;
    }

    __break(1u);
LABEL_92:
    v303 = v411;
    sub_10000BBC4(v409, v411, &unk_100849400, &unk_1006BFBB0);
    if ((*(v414 + 48))(v303, 1, v415) == 1)
    {
      sub_10000BE18(v411, &unk_100849400, &unk_1006BFBB0);
      if (sqlite3_bind_null(ppStmt, 11))
      {
        result = sqlite3_errmsg(v402);
        if (result)
        {

          v304 = String.init(cString:)();
          v306 = v305;
          defaultLogger()();

          v307 = Logger.logObject.getter();
          v308 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v307, v308))
          {
            v309 = swift_slowAlloc();
            v310 = swift_slowAlloc();
            *&v434 = v310;
            *v309 = 136446210;
            *(v309 + 4) = sub_100141FE4(v304, v306, &v434);
            _os_log_impl(&_mh_execute_header, v307, v308, "coreidvd: failure binding null deleteAfter: %{public}s", v309, 0xCu);
            sub_10000BB78(v310);
          }

          (*(v430 + 8))(v406, v429);
          *&v434 = 0;
          *(&v434 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(46);

          *&v434 = 0xD00000000000002CLL;
          *(&v434 + 1) = 0x800000010071FC80;
          v311._countAndFlagsBits = v304;
          v311._object = v306;
          String.append(_:)(v311);

          v430 = v434;
          (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v312 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v313 = (*(*v312 + 80) + 32) & ~*(*v312 + 80);
          v314 = swift_allocObject();
          *(v314 + 16) = xmmword_1006BF520;
          v315 = v314 + v313;
          v316 = v315 + v312[14];
          v317 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v318 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v318 - 8) + 104))(v315, v317, v318);
          v319 = sqlite3_errcode(v402);
          *(v316 + 24) = &type metadata for Int32;
          *(v316 + 32) = &protocol witness table for Int32;
          *v316 = v319;
          sub_10003C9C0(v314);
          swift_setDeallocating();
          sub_10000BE18(v315, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
LABEL_90:
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000B90C(v392, v393);
          sub_10000B90C(v394, v395);
          sub_10000B90C(v400, v397);
          sub_10000B90C(v401, v422);
          return sqlite3_finalize(ppStmt);
        }

        goto LABEL_132;
      }

      goto LABEL_106;
    }

    goto LABEL_99;
  }

  v401 = v15;
  v402 = v58;
  v69 = ppStmt;
  v70 = v428;
  v71 = qword_100832CA0;

  if (v71 != -1)
  {
    swift_once();
  }

  v72 = qword_1008823D0;
  v73 = String.utf8CString.getter();

  v74 = sqlite3_bind_text(v69, 1, (v73 + 32), -1, v72);

  if (v74)
  {
    if (!sqlite3_errmsg(v402))
    {
      __break(1u);
LABEL_99:
      (*(v414 + 32))(v410, v411, v415);
      Date.timeIntervalSinceReferenceDate.getter();
      if (sqlite3_bind_double(ppStmt, 11, v320))
      {
        result = sqlite3_errmsg(v402);
        if (result)
        {

          v321 = String.init(cString:)();
          v323 = v322;
          defaultLogger()();

          v324 = Logger.logObject.getter();
          v325 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v324, v325))
          {
            v326 = swift_slowAlloc();
            v327 = swift_slowAlloc();
            *&v434 = v327;
            *v326 = 136446210;
            *(v326 + 4) = sub_100141FE4(v321, v323, &v434);
            _os_log_impl(&_mh_execute_header, v324, v325, "coreidvd: failure binding deleteAfter: %{public}s", v326, 0xCu);
            sub_10000BB78(v327);
          }

          (*(v430 + 8))(v407, v429);
          *&v434 = 0;
          *(&v434 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(41);

          *&v434 = 0xD000000000000027;
          *(&v434 + 1) = 0x800000010071FD00;
          v328._countAndFlagsBits = v321;
          v328._object = v323;
          String.append(_:)(v328);

          v429 = *(&v434 + 1);
          v430 = v434;
          (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v329 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v330 = (*(*v329 + 80) + 32) & ~*(*v329 + 80);
          v331 = swift_allocObject();
          *(v331 + 16) = xmmword_1006BF520;
          v332 = v331 + v330;
          v333 = v332 + v329[14];
          v334 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v335 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v335 - 8) + 104))(v332, v334, v335);
          v336 = sqlite3_errcode(v402);
          *(v333 + 24) = &type metadata for Int32;
          *(v333 + 32) = &protocol witness table for Int32;
          *v333 = v336;
          sub_10003C9C0(v331);
          swift_setDeallocating();
          sub_10000BE18(v332, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000B90C(v392, v393);
          sub_10000B90C(v394, v395);
          sub_10000B90C(v400, v397);
          sub_10000B90C(v401, v422);
          v425(v410, v415);
          return sqlite3_finalize(ppStmt);
        }

        goto LABEL_133;
      }

      goto LABEL_105;
    }

    v75 = String.init(cString:)();
    v77 = v76;
    defaultLogger()();

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v443[0] = v81;
      *v80 = 136446210;
      *(v80 + 4) = sub_100141FE4(v75, v77, v443);
      _os_log_impl(&_mh_execute_header, v78, v79, "coreidvd: failure binding providerid: %{public}s", v80, 0xCu);
      sub_10000BB78(v81);
    }

    (*(v430 + 8))(v52, v429);
    *&v443[0] = 0;
    *(&v443[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v443[0] = 0xD00000000000002BLL;
    *(&v443[0] + 1) = 0x800000010071FE50;
    v82._countAndFlagsBits = v75;
    v82._object = v77;
    String.append(_:)(v82);

    v430 = *&v443[0];
    (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v83 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v84 = (*(*v83 + 80) + 32) & ~*(*v83 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1006BF520;
    v86 = v85 + v84;
    v87 = v86 + v83[14];
    v88 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v89 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v89 - 8) + 104))(v86, v88, v89);
    v90 = sqlite3_errcode(v402);
    *(v87 + 24) = &type metadata for Int32;
    *(v87 + 32) = &protocol witness table for Int32;
    *v87 = v90;
    sub_10003C9C0(v85);
    swift_setDeallocating();
    sub_10000BE18(v86, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_33;
  }

  v92 = ppStmt;
  v93 = String.utf8CString.getter();
  LODWORD(v92) = sqlite3_bind_text(v92, 2, (v93 + 32), -1, v72);

  if (v92)
  {
    if (!sqlite3_errmsg(v402))
    {
      __break(1u);
LABEL_105:
      v425(v410, v415);
LABEL_106:
      v337 = ppStmt;
      v338 = String.utf8CString.getter();
      LODWORD(v337) = sqlite3_bind_text(v337, 12, (v338 + 32), -1, v427);

      if (v337)
      {
        result = sqlite3_errmsg(v402);
        if (result)
        {

          v339 = String.init(cString:)();
          v341 = v340;
          defaultLogger()();

          v342 = Logger.logObject.getter();
          v343 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v342, v343))
          {
            v344 = swift_slowAlloc();
            v345 = swift_slowAlloc();
            *&v434 = v345;
            *v344 = 136446210;
            *(v344 + 4) = sub_100141FE4(v339, v341, &v434);
            _os_log_impl(&_mh_execute_header, v342, v343, "coreidvd: failure binding serviceName: %{public}s", v344, 0xCu);
            sub_10000BB78(v345);
          }

          (*(v430 + 8))(v408, v429);
          *&v434 = 0;
          *(&v434 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(46);

          *&v434 = 0xD00000000000002CLL;
          *(&v434 + 1) = 0x800000010071F720;
          v346._countAndFlagsBits = v339;
          v346._object = v341;
          String.append(_:)(v346);

          v430 = v434;
          (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v347 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v348 = (*(*v347 + 80) + 32) & ~*(*v347 + 80);
          v349 = swift_allocObject();
          *(v349 + 16) = xmmword_1006BF520;
          v350 = v349 + v348;
          v351 = v350 + v347[14];
          v352 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v353 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v353 - 8) + 104))(v350, v352, v353);
          v354 = sqlite3_errcode(v402);
          *(v351 + 24) = &type metadata for Int32;
          *(v351 + 32) = &protocol witness table for Int32;
          *v351 = v354;
          sub_10003C9C0(v349);
          swift_setDeallocating();
          sub_10000BE18(v350, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_90;
        }

        goto LABEL_134;
      }

      *&v434 = *(v428 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_acl);

      sub_100007224(&qword_100834EA0, &qword_1006C06B0);
      sub_1000BA30C(&qword_100848930, &qword_100834EA0, &qword_1006C06B0, &protocol conformance descriptor for [A]);
      BidirectionalCollection<>.joined(separator:)();

      v355 = ppStmt;
      v356 = String.utf8CString.getter();
      LODWORD(v355) = sqlite3_bind_text(v355, 13, (v356 + 32), -1, v427);

      if (v355)
      {
        result = sqlite3_errmsg(v402);
        if (result)
        {

          v357 = String.init(cString:)();
          v359 = v358;
          defaultLogger()();

          v360 = Logger.logObject.getter();
          v361 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v360, v361))
          {
            v362 = swift_slowAlloc();
            v363 = swift_slowAlloc();
            *&v434 = v363;
            *v362 = 136446210;
            *(v362 + 4) = sub_100141FE4(v357, v359, &v434);
            _os_log_impl(&_mh_execute_header, v360, v361, "coreidvd: failure binding acl: %{public}s", v362, 0xCu);
            sub_10000BB78(v363);
          }

          (*(v430 + 8))(v404, v429);
          *&v434 = 0;
          *(&v434 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          *&v434 = 0xD000000000000024;
          *(&v434 + 1) = 0x800000010071FCB0;
          v364._countAndFlagsBits = v357;
          v364._object = v359;
          String.append(_:)(v364);

          v430 = v434;
          (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v365 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v366 = (*(*v365 + 80) + 32) & ~*(*v365 + 80);
          v367 = swift_allocObject();
          *(v367 + 16) = xmmword_1006BF520;
          v368 = v367 + v366;
          v369 = v368 + v365[14];
          v370 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v371 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v371 - 8) + 104))(v368, v370, v371);
          v372 = sqlite3_errcode(v402);
          *(v369 + 24) = &type metadata for Int32;
          *(v369 + 32) = &protocol witness table for Int32;
          *v369 = v372;
          sub_10003C9C0(v367);
          swift_setDeallocating();
          sub_10000BE18(v368, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_90;
        }

        goto LABEL_135;
      }

      goto LABEL_117;
    }

    v94 = String.init(cString:)();
    v96 = v95;
    defaultLogger()();

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v443[0] = v100;
      *v99 = 136446210;
      *(v99 + 4) = sub_100141FE4(v94, v96, v443);
      _os_log_impl(&_mh_execute_header, v97, v98, "coreidvd: failure binding tier: %{public}s", v99, 0xCu);
      sub_10000BB78(v100);
    }

    (*(v430 + 8))(v49, v429);
    *&v443[0] = 0;
    *(&v443[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    *&v443[0] = 0xD000000000000025;
    *(&v443[0] + 1) = 0x800000010071FE80;
    v101._countAndFlagsBits = v94;
    v101._object = v96;
    String.append(_:)(v101);

    v430 = *&v443[0];
    (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v102 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v103 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1006BF520;
    v105 = v104 + v103;
    v106 = v105 + v102[14];
    v107 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v108 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v108 - 8) + 104))(v105, v107, v108);
    v109 = sqlite3_errcode(v402);
    *(v106 + 24) = &type metadata for Int32;
    *(v106 + 32) = &protocol witness table for Int32;
    *v106 = v109;
    sub_10003C9C0(v104);
    swift_setDeallocating();
    sub_10000BE18(v105, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_33;
  }

  v110 = ppStmt;
  v111 = String.utf8CString.getter();
  LODWORD(v110) = sqlite3_bind_text(v110, 3, (v111 + 32), -1, v72);

  if (!v110)
  {
    v128 = ppStmt;
    v129 = v72;
    v130 = OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim;
    v132 = v426;
    v131 = v427;
    v133 = v401;
    (*(v426 + 16))(v401, v70 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim, v427);
    JWSSignedJSON.payload.getter();
    (*(v132 + 8))(v133, v131);
    v443[6] = v440;
    v443[7] = v441;
    v444 = v442;
    v443[0] = v434;
    v443[1] = v435;
    v443[2] = v436;
    v443[3] = v437;
    v443[4] = v438;
    v443[5] = v439;

    sub_1000C3BBC(v443);
    v134 = String.utf8CString.getter();

    v135 = sqlite3_bind_text(v128, 4, (v134 + 32), -1, v129);

    if (v135)
    {
      if (!sqlite3_errmsg(v402))
      {
        __break(1u);
        goto LABEL_122;
      }

      v136 = String.init(cString:)();
      v138 = v137;
      v139 = v425;
      defaultLogger()();

      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *&v434 = v143;
        *v142 = 136446210;
        *(v142 + 4) = sub_100141FE4(v136, v138, &v434);
        _os_log_impl(&_mh_execute_header, v140, v141, "coreidvd: failure binding claimid: %{public}s", v142, 0xCu);
        sub_10000BB78(v143);
      }

      (*(v430 + 8))(v139, v429);
      *&v434 = 0;
      *(&v434 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      *&v434 = 0xD000000000000028;
      *(&v434 + 1) = 0x800000010071FB10;
      v144._countAndFlagsBits = v136;
      v144._object = v138;
      String.append(_:)(v144);

      v430 = v434;
      (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v145 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v146 = (*(*v145 + 80) + 32) & ~*(*v145 + 80);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_1006BF520;
      v148 = v147 + v146;
      v149 = v148 + v145[14];
      v150 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v151 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v151 - 8) + 104))(v148, v150, v151);
      v152 = sqlite3_errcode(v402);
      *(v149 + 24) = &type metadata for Int32;
      *(v149 + 32) = &protocol witness table for Int32;
      *v149 = v152;
      sub_10003C9C0(v147);
      swift_setDeallocating();
      sub_10000BE18(v148, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_33;
    }

    v427 = v129;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v153 = v428;
    v154 = v428 + v130;
    v155 = v423;
    sub_100575E78(v154, v423);
    sub_10057628C(&qword_100837960, type metadata accessor for VerifiedClaim, &unk_1006D0E08);
    v156 = v424;
    v157 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v156)
    {
      sub_1005762D4(v155, type metadata accessor for VerifiedClaim);

      return sqlite3_finalize(ppStmt);
    }

    v159 = v157;
    v160 = v158;
    sub_1005762D4(v155, type metadata accessor for VerifiedClaim);

    *&v434 = v159;
    *(&v434 + 1) = v160;
    static String.Encoding.utf8.getter();
    v425 = sub_10053B880();
    v424 = String.init<A>(bytes:encoding:)();
    v426 = v161;
    swift_allocObject();
    JSONEncoder.init()();
    *&v434 = *(v153 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);

    sub_100007224(&unk_10084A070, &unk_1006E7DF0);
    sub_1000AB81C();
    v162 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v401 = v159;
    v422 = v160;
    v163 = v162;
    v165 = v164;

    v400 = v163;
    *&v434 = v163;
    *(&v434 + 1) = v165;
    static String.Encoding.utf8.getter();
    v399 = String.init<A>(bytes:encoding:)();
    v167 = v166;
    swift_allocObject();
    JSONEncoder.init()();
    *&v434 = *(v428 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);

    v168 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v423 = 0;
    v169 = v168;
    v171 = v170;
    v397 = v165;
    v398 = v167;

    *&v434 = v169;
    *(&v434 + 1) = v171;
    static String.Encoding.utf8.getter();
    String.init<A>(bytes:encoding:)();
    v173 = v172;
    swift_allocObject();
    JSONEncoder.init()();
    *&v434 = *(v428 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData);

    sub_100007224(&qword_100848088, &qword_1006E8388);
    v174 = v171;
    sub_100575F98();
    v175 = v423;
    v176 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v423 = v175;
    if (v175)
    {

      sub_10000B90C(v169, v171);
      sub_10000B90C(v400, v397);
      sub_10000B90C(v401, v422);

      return sqlite3_finalize(ppStmt);
    }

    v178 = v177;
    v395 = v174;
    v396 = v173;
    v394 = v169;
    v179 = v176;

    v392 = v179;
    v393 = v178;
    *&v434 = v179;
    *(&v434 + 1) = v178;
    static String.Encoding.utf8.getter();
    String.init<A>(bytes:encoding:)();
    v181 = v180;
    v182 = ppStmt;
    if (v426)
    {
      v183 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v183 = 0;
    }

    v184 = sqlite3_bind_text(v182, 5, v183, -1, v427);
    swift_unknownObjectRelease();
    if (v184)
    {
      result = sqlite3_errmsg(v402);
      if (result)
      {

        v185 = String.init(cString:)();
        v187 = v186;
        v188 = v420;
        defaultLogger()();

        v189 = Logger.logObject.getter();
        v190 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          *&v434 = v192;
          *v191 = 136446210;
          *(v191 + 4) = sub_100141FE4(v185, v187, &v434);
          _os_log_impl(&_mh_execute_header, v189, v190, "coreidvd: failure binding claim: %{public}s", v191, 0xCu);
          sub_10000BB78(v192);
        }

        (*(v430 + 8))(v188, v429);
        *&v434 = 0;
        *(&v434 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        *&v434 = 0xD000000000000026;
        *(&v434 + 1) = 0x800000010071FB40;
        v193._countAndFlagsBits = v185;
        v193._object = v187;
        String.append(_:)(v193);

        v430 = v434;
        (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v194 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v195 = (*(*v194 + 80) + 32) & ~*(*v194 + 80);
        v196 = swift_allocObject();
        *(v196 + 16) = xmmword_1006BF520;
        v197 = v196 + v195;
        v198 = v197 + v194[14];
        v199 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v200 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v200 - 8) + 104))(v197, v199, v200);
        v201 = sqlite3_errcode(v402);
        *(v198 + 24) = &type metadata for Int32;
        *(v198 + 32) = &protocol witness table for Int32;
        *v198 = v201;
        sub_10003C9C0(v196);
        swift_setDeallocating();
        sub_10000BE18(v197, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_90;
      }

      __break(1u);
      goto LABEL_127;
    }

    v202 = ppStmt;
    if (v398)
    {
      v203 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v203 = 0;
    }

    v204 = sqlite3_bind_text(v202, 6, v203, -1, v427);
    swift_unknownObjectRelease();
    if (v204)
    {
      result = sqlite3_errmsg(v402);
      if (result)
      {

        v205 = String.init(cString:)();
        v207 = v206;
        defaultLogger()();

        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          *&v434 = v211;
          *v210 = 136446210;
          *(v210 + 4) = sub_100141FE4(v205, v207, &v434);
          _os_log_impl(&_mh_execute_header, v208, v209, "coreidvd: failure binding claimdata: %{public}s", v210, 0xCu);
          sub_10000BB78(v211);
        }

        (*(v430 + 8))(v419, v429);
        *&v434 = 0;
        *(&v434 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        *&v434 = 0xD00000000000002ALL;
        *(&v434 + 1) = 0x800000010071FB70;
        v212._countAndFlagsBits = v205;
        v212._object = v207;
        String.append(_:)(v212);

        v430 = v434;
        (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v213 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v214 = (*(*v213 + 80) + 32) & ~*(*v213 + 80);
        v215 = swift_allocObject();
        *(v215 + 16) = xmmword_1006BF520;
        v216 = v215 + v214;
        v217 = v216 + v213[14];
        v218 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v219 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v219 - 8) + 104))(v216, v218, v219);
        v220 = sqlite3_errcode(v402);
        *(v217 + 24) = &type metadata for Int32;
        *(v217 + 32) = &protocol witness table for Int32;
        *v217 = v220;
        sub_10003C9C0(v215);
        swift_setDeallocating();
        sub_10000BE18(v216, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_90;
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v221 = ppStmt;
    if (v396)
    {
      v222 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v222 = 0;
    }

    v223 = sqlite3_bind_text(v221, 7, v222, -1, v427);
    swift_unknownObjectRelease();
    if (v223)
    {
      result = sqlite3_errmsg(v402);
      if (result)
      {

        v224 = String.init(cString:)();
        v226 = v225;
        defaultLogger()();

        v227 = Logger.logObject.getter();
        v228 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v227, v228))
        {
          v229 = swift_slowAlloc();
          v230 = swift_slowAlloc();
          *&v434 = v230;
          *v229 = 136446210;
          *(v229 + 4) = sub_100141FE4(v224, v226, &v434);
          _os_log_impl(&_mh_execute_header, v227, v228, "coreidvd: failure binding unverifiedClaimdata: %{public}s", v229, 0xCu);
          sub_10000BB78(v230);
        }

        (*(v430 + 8))(v418, v429);
        *&v434 = 0;
        *(&v434 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v231._countAndFlagsBits = 0xD000000000000034;
        v231._object = 0x800000010071FEE0;
        String.append(_:)(v231);
        v232._countAndFlagsBits = v224;
        v232._object = v226;
        String.append(_:)(v232);

        v430 = v434;
        (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v233 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v234 = (*(*v233 + 80) + 32) & ~*(*v233 + 80);
        v235 = swift_allocObject();
        *(v235 + 16) = xmmword_1006BF520;
        v236 = v235 + v234;
        v237 = v236 + v233[14];
        v238 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v239 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v239 - 8) + 104))(v236, v238, v239);
        v240 = sqlite3_errcode(v402);
        *(v237 + 24) = &type metadata for Int32;
        *(v237 + 32) = &protocol witness table for Int32;
        *v237 = v240;
        sub_10003C9C0(v235);
        swift_setDeallocating();
        sub_10000BE18(v236, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_90;
      }

      goto LABEL_128;
    }

    v241 = ppStmt;
    if (v181)
    {
      v242 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v242 = 0;
    }

    v243 = sqlite3_bind_text(v241, 8, v242, -1, v427);
    swift_unknownObjectRelease();
    if (v243)
    {
      result = sqlite3_errmsg(v402);
      if (result)
      {

        v244 = String.init(cString:)();
        v246 = v245;
        defaultLogger()();

        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v247, v248))
        {
          v249 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          *&v434 = v250;
          *v249 = 136446210;
          *(v249 + 4) = sub_100141FE4(v244, v246, &v434);
          _os_log_impl(&_mh_execute_header, v247, v248, "coreidvd: failure binding encryptedClaimdata: %{public}s", v249, 0xCu);
          sub_10000BB78(v250);
        }

        (*(v430 + 8))(v417, v429);
        *&v434 = 0;
        *(&v434 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        v251._countAndFlagsBits = 0xD000000000000033;
        v251._object = 0x800000010071FF20;
        String.append(_:)(v251);
        v252._countAndFlagsBits = v244;
        v252._object = v246;
        String.append(_:)(v252);

        v430 = v434;
        (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v253 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v254 = (*(*v253 + 80) + 32) & ~*(*v253 + 80);
        v255 = swift_allocObject();
        *(v255 + 16) = xmmword_1006BF520;
        v256 = v255 + v254;
        v257 = v256 + v253[14];
        v258 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v259 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v259 - 8) + 104))(v256, v258, v259);
        v260 = sqlite3_errcode(v402);
        *(v257 + 24) = &type metadata for Int32;
        *(v257 + 32) = &protocol witness table for Int32;
        *v257 = v260;
        sub_10003C9C0(v255);
        swift_setDeallocating();
        sub_10000BE18(v256, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_90;
      }

      goto LABEL_129;
    }

    v261 = [objc_opt_self() mainBundle];
    v262 = [v261 infoDictionary];

    if (v262)
    {
      v263 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v263 + 16) && (v264 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v265 & 1) != 0))
      {
        sub_10001F2EC(*(v263 + 56) + 32 * v264, &v434);
      }

      else
      {
        v434 = 0u;
        v435 = 0u;
      }

      if (*(&v435 + 1))
      {
        swift_dynamicCast();
LABEL_80:
        v266 = ppStmt;
        v267 = String.utf8CString.getter();
        LODWORD(v266) = sqlite3_bind_text(v266, 9, (v267 + 32), -1, v427);

        if (!v266)
        {
          v284 = v412;
          Date.init()();
          Date.timeIntervalSinceReferenceDate.getter();
          v286 = v285;
          v425 = *(v414 + 8);
          v425(v284, v415);
          if (!sqlite3_bind_double(ppStmt, 10, v286))
          {
            goto LABEL_92;
          }

          result = sqlite3_errmsg(v402);
          if (result)
          {

            v287 = String.init(cString:)();
            v289 = v288;
            defaultLogger()();

            v290 = Logger.logObject.getter();
            v291 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v290, v291))
            {
              v292 = swift_slowAlloc();
              v293 = swift_slowAlloc();
              *&v434 = v293;
              *v292 = 136446210;
              *(v292 + 4) = sub_100141FE4(v287, v289, &v434);
              _os_log_impl(&_mh_execute_header, v290, v291, "coreidvd: failure binding date: %{public}s", v292, 0xCu);
              sub_10000BB78(v293);
            }

            (*(v430 + 8))(v413, v429);
            *&v434 = 0;
            *(&v434 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(39);

            *&v434 = 0xD000000000000025;
            *(&v434 + 1) = 0x800000010071FF60;
            v294._countAndFlagsBits = v287;
            v294._object = v289;
            String.append(_:)(v294);

            v430 = v434;
            (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v295 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v296 = (*(*v295 + 80) + 32) & ~*(*v295 + 80);
            v297 = swift_allocObject();
            *(v297 + 16) = xmmword_1006BF520;
            v298 = v297 + v296;
            v299 = v298 + v295[14];
            v300 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v301 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v301 - 8) + 104))(v298, v300, v301);
            v302 = sqlite3_errcode(v402);
            *(v299 + 24) = &type metadata for Int32;
            *(v299 + 32) = &protocol witness table for Int32;
            *v299 = v302;
            sub_10003C9C0(v297);
            swift_setDeallocating();
            sub_10000BE18(v298, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            goto LABEL_90;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        result = sqlite3_errmsg(v402);
        if (result)
        {

          v268 = String.init(cString:)();
          v270 = v269;
          defaultLogger()();

          v271 = Logger.logObject.getter();
          v272 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v271, v272))
          {
            v273 = swift_slowAlloc();
            v274 = swift_slowAlloc();
            *&v434 = v274;
            *v273 = 136446210;
            *(v273 + 4) = sub_100141FE4(v268, v270, &v434);
            _os_log_impl(&_mh_execute_header, v271, v272, "coreidvd: failure binding idvVersion: %{public}s", v273, 0xCu);
            sub_10000BB78(v274);
          }

          (*(v430 + 8))(v416, v429);
          *&v434 = 0;
          *(&v434 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(45);

          *&v434 = 0xD00000000000002BLL;
          *(&v434 + 1) = 0x800000010071FC20;
          v275._countAndFlagsBits = v268;
          v275._object = v270;
          String.append(_:)(v275);

          v430 = v434;
          (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v276 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v277 = (*(*v276 + 80) + 32) & ~*(*v276 + 80);
          v278 = swift_allocObject();
          *(v278 + 16) = xmmword_1006BF520;
          v279 = v278 + v277;
          v280 = v279 + v276[14];
          v281 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v282 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v282 - 8) + 104))(v279, v281, v282);
          v283 = sqlite3_errcode(v402);
          *(v280 + 24) = &type metadata for Int32;
          *(v280 + 32) = &protocol witness table for Int32;
          *v280 = v283;
          sub_10003C9C0(v278);
          swift_setDeallocating();
          sub_10000BE18(v279, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_90;
        }

LABEL_130:
        __break(1u);
        goto LABEL_131;
      }
    }

    else
    {
      v434 = 0u;
      v435 = 0u;
    }

    sub_10000BE18(&v434, &unk_100845ED0, &qword_1006DA1D0);
    goto LABEL_80;
  }

  if (sqlite3_errmsg(v402))
  {
    v112 = String.init(cString:)();
    v114 = v113;
    defaultLogger()();

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v443[0] = v118;
      *v117 = 136446210;
      *(v117 + 4) = sub_100141FE4(v112, v114, v443);
      _os_log_impl(&_mh_execute_header, v115, v116, "coreidvd: failure binding workflowid: %{public}s", v117, 0xCu);
      sub_10000BB78(v118);
    }

    (*(v430 + 8))(v46, v429);
    *&v443[0] = 0;
    *(&v443[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v443[0] = 0xD00000000000002BLL;
    *(&v443[0] + 1) = 0x800000010071FEB0;
    v119._countAndFlagsBits = v112;
    v119._object = v114;
    String.append(_:)(v119);

    v430 = *&v443[0];
    (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v120 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v121 = (*(*v120 + 80) + 32) & ~*(*v120 + 80);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_1006BF520;
    v123 = v122 + v121;
    v124 = v123 + v120[14];
    v125 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v126 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v126 - 8) + 104))(v123, v125, v126);
    v127 = sqlite3_errcode(v402);
    *(v124 + 24) = &type metadata for Int32;
    *(v124 + 32) = &protocol witness table for Int32;
    *v124 = v127;
    sub_10003C9C0(v122);
    swift_setDeallocating();
    sub_10000BE18(v123, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_33:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

  __break(1u);
LABEL_117:
  if (sqlite3_step(ppStmt) == 101)
  {

    defaultLogger()();
    v373 = Logger.logObject.getter();
    v374 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v373, v374))
    {
      v375 = swift_slowAlloc();
      *v375 = 0;
      _os_log_impl(&_mh_execute_header, v373, v374, "coredivd: Stored new claim", v375, 2u);
    }

    sub_10000B90C(v392, v393);
    sub_10000B90C(v394, v395);
    sub_10000B90C(v400, v397);
    sub_10000B90C(v401, v422);

    (*(v430 + 8))(v403, v429);
    return sqlite3_finalize(ppStmt);
  }

LABEL_122:
  result = sqlite3_errmsg(v402);
  if (result)
  {

    v376 = String.init(cString:)();
    v378 = v377;
    defaultLogger()();

    v379 = Logger.logObject.getter();
    v380 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v379, v380))
    {
      v381 = swift_slowAlloc();
      v382 = swift_slowAlloc();
      *&v434 = v382;
      *v381 = 136446210;
      *(v381 + 4) = sub_100141FE4(v376, v378, &v434);
      _os_log_impl(&_mh_execute_header, v379, v380, "coreidvd: failure inserting claim to sqlite: %{public}s", v381, 0xCu);
      sub_10000BB78(v382);
    }

    (*(v430 + 8))(v405, v429);
    *&v434 = 0;
    *(&v434 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v434 = 0xD000000000000021;
    *(&v434 + 1) = 0x800000010071FF90;
    v383._countAndFlagsBits = v376;
    v383._object = v378;
    String.append(_:)(v383);

    v430 = v434;
    (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v384 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v385 = (*(*v384 + 80) + 32) & ~*(*v384 + 80);
    v386 = swift_allocObject();
    *(v386 + 16) = xmmword_1006BF520;
    v387 = v386 + v385;
    v388 = v387 + v384[14];
    v389 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v390 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v390 - 8) + 104))(v387, v389, v390);
    v391 = sqlite3_errcode(v402);
    *(v388 + 24) = &type metadata for Int32;
    *(v388 + 32) = &protocol witness table for Int32;
    *v388 = v391;
    sub_10003C9C0(v386);
    swift_setDeallocating();
    sub_10000BE18(v387, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_90;
  }

LABEL_136:
  __break(1u);
  return result;
}

const char *sub_1005630B8(uint64_t a1, void *a2, uint64_t a3)
{
  v411 = a3;
  v428 = a2;
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v4 - 8);
  v413 = &v388 - v5;
  v6 = type metadata accessor for Date();
  v416 = *(v6 - 8);
  v417 = v6;
  v7 = __chkstk_darwin(v6);
  v412 = &v388 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v414 = &v388 - v9;
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v423 = &v388 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = type metadata accessor for VerifiedClaim(0);
  __chkstk_darwin(v424);
  v425 = &v388 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v427 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v388 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v429 = v16;
  v430 = v17;
  v18 = __chkstk_darwin(v16);
  v403 = &v388 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v405 = &v388 - v21;
  v22 = __chkstk_darwin(v20);
  v404 = &v388 - v23;
  v24 = __chkstk_darwin(v22);
  v406 = &v388 - v25;
  v26 = __chkstk_darwin(v24);
  v407 = &v388 - v27;
  v28 = __chkstk_darwin(v26);
  v408 = &v388 - v29;
  v30 = __chkstk_darwin(v28);
  v409 = &v388 - v31;
  v32 = __chkstk_darwin(v30);
  v410 = &v388 - v33;
  v34 = __chkstk_darwin(v32);
  v415 = &v388 - v35;
  v36 = __chkstk_darwin(v34);
  v418 = &v388 - v37;
  v38 = __chkstk_darwin(v36);
  v419 = &v388 - v39;
  v40 = __chkstk_darwin(v38);
  v420 = &v388 - v41;
  v42 = __chkstk_darwin(v40);
  v421 = &v388 - v43;
  v44 = __chkstk_darwin(v42);
  v422 = &v388 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = &v388 - v47;
  v49 = __chkstk_darwin(v46);
  v51 = &v388 - v50;
  __chkstk_darwin(v49);
  v53 = &v388 - v52;
  v54 = type metadata accessor for DIPError.Code();
  v55 = *(v54 - 8);
  v431 = v54;
  v432 = v55;
  __chkstk_darwin(v54);
  v433 = &v388 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v57 = *(a1 + 40);
  if (!v57)
  {
    sub_1005507F8();
    v57 = *(a1 + 40);
    if (!v57)
    {
      (*(v432 + 104))(v433, enum case for DIPError.Code.databaseInaccessible(_:), v431);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_17:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v58 = String.utf8CString.getter();
  v59 = sqlite3_prepare_v3(v57, (v58 + 32), -1, 0, &ppStmt, 0);

  if (v59)
  {
    if (sqlite3_errmsg(v57))
    {
      v60 = String.init(cString:)();
      v62 = v61;
      defaultLogger()();

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v443[0] = v66;
        *v65 = 136446210;
        v67 = sub_100141FE4(v60, v62, v443);

        *(v65 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v63, v64, "coreidvd: failed to prepare update statement %{public}s", v65, 0xCu);
        sub_10000BB78(v66);
      }

      else
      {
      }

      (*(v430 + 8))(v53, v429);
      (*(v432 + 104))(v433, enum case for DIPError.Code.internalError(_:), v431);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_91;
  }

  v402 = v57;
  v68 = ppStmt;
  v69 = qword_100832CA0;

  if (v69 != -1)
  {
    swift_once();
  }

  v70 = qword_1008823D0;
  v71 = String.utf8CString.getter();

  v72 = sqlite3_bind_text(v68, 1, (v71 + 32), -1, v70);

  if (!v72)
  {
    v90 = ppStmt;
    v91 = OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim;
    v92 = v427;
    (*(v427 + 16))(v15, v428 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim, v13);
    JWSSignedJSON.payload.getter();
    (*(v92 + 8))(v15, v13);
    v443[6] = v440;
    v443[7] = v441;
    v444 = v442;
    v443[0] = v434;
    v443[1] = v435;
    v443[2] = v436;
    v443[3] = v437;
    v443[4] = v438;
    v443[5] = v439;

    sub_1000C3BBC(v443);
    v93 = String.utf8CString.getter();

    v94 = sqlite3_bind_text(v90, 2, (v93 + 32), -1, v70);

    if (v94)
    {
      if (!sqlite3_errmsg(v402))
      {
        __break(1u);
        goto LABEL_109;
      }

      v95 = String.init(cString:)();
      v97 = v96;
      defaultLogger()();

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v434 = v101;
        *v100 = 136446210;
        *(v100 + 4) = sub_100141FE4(v95, v97, &v434);
        _os_log_impl(&_mh_execute_header, v98, v99, "coreidvd: failure binding claimid: %{public}s", v100, 0xCu);
        sub_10000BB78(v101);
      }

      (*(v430 + 8))(v48, v429);
      *&v434 = 0;
      *(&v434 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      *&v434 = 0xD000000000000028;
      *(&v434 + 1) = 0x800000010071FB10;
      v102._countAndFlagsBits = v95;
      v102._object = v97;
      String.append(_:)(v102);

      v430 = v434;
      (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v103 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v104 = (*(*v103 + 80) + 32) & ~*(*v103 + 80);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1006BF520;
      v106 = v105 + v104;
      v107 = v106 + v103[14];
      v108 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v109 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v109 - 8) + 104))(v106, v108, v109);
      v110 = sqlite3_errcode(v402);
      *(v107 + 24) = &type metadata for Int32;
      *(v107 + 32) = &protocol witness table for Int32;
      *v107 = v110;
      sub_10003C9C0(v105);
      swift_setDeallocating();
      sub_10000BE18(v106, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_23;
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v111 = v428;
    v112 = v428 + v91;
    v113 = v425;
    sub_100575E78(v112, v425);
    sub_10057628C(&qword_100837960, type metadata accessor for VerifiedClaim, &unk_1006D0E08);
    v114 = v426;
    v115 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v114)
    {
      sub_1005762D4(v113, type metadata accessor for VerifiedClaim);

      return sqlite3_finalize(ppStmt);
    }

    v117 = v115;
    v118 = v116;
    v424 = v70;
    sub_1005762D4(v113, type metadata accessor for VerifiedClaim);

    *&v434 = v117;
    *(&v434 + 1) = v118;
    static String.Encoding.utf8.getter();
    v426 = sub_10053B880();
    v425 = String.init<A>(bytes:encoding:)();
    v427 = v119;
    swift_allocObject();
    JSONEncoder.init()();
    *&v434 = *(v111 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);

    sub_100007224(&unk_10084A070, &unk_1006E7DF0);
    sub_1000AB81C();
    v120 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v399 = v117;
    v400 = v118;
    v121 = v120;
    v123 = v122;

    v398 = v121;
    *&v434 = v121;
    *(&v434 + 1) = v123;
    static String.Encoding.utf8.getter();
    v397 = String.init<A>(bytes:encoding:)();
    v401 = v124;
    swift_allocObject();
    JSONEncoder.init()();
    *&v434 = *(v428 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);

    v125 = v123;
    v126 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v128 = v127;

    *&v434 = v126;
    *(&v434 + 1) = v128;
    static String.Encoding.utf8.getter();
    v129 = v128;
    v395 = String.init<A>(bytes:encoding:)();
    v131 = v130;
    swift_allocObject();
    JSONEncoder.init()();
    *&v434 = *(v428 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData);

    sub_100007224(&qword_100848088, &qword_1006E8388);
    v132 = v126;
    sub_100575F98();
    v133 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v396 = 0;
    v135 = v134;
    v393 = v125;
    v394 = v131;
    v391 = v132;
    v392 = v129;
    v136 = v133;

    v389 = v136;
    *&v434 = v136;
    *(&v434 + 1) = v135;
    static String.Encoding.utf8.getter();
    String.init<A>(bytes:encoding:)();
    v138 = v137;
    v139 = ppStmt;
    if (v427)
    {
      v140 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v140 = 0;
    }

    v141 = v394;
    v142 = sqlite3_bind_text(v139, 3, v140, -1, v424);
    swift_unknownObjectRelease();
    v390 = v135;
    if (v142)
    {
      result = sqlite3_errmsg(v402);
      if (result)
      {

        v143 = String.init(cString:)();
        v145 = v144;
        v146 = v422;
        defaultLogger()();

        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *&v434 = v150;
          *v149 = 136446210;
          *(v149 + 4) = sub_100141FE4(v143, v145, &v434);
          _os_log_impl(&_mh_execute_header, v147, v148, "coreidvd: failure binding claim: %{public}s", v149, 0xCu);
          sub_10000BB78(v150);
        }

        (*(v430 + 8))(v146, v429);
        *&v434 = 0;
        *(&v434 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        *&v434 = 0xD000000000000026;
        *(&v434 + 1) = 0x800000010071FB40;
        v151._countAndFlagsBits = v143;
        v151._object = v145;
        String.append(_:)(v151);

        v430 = v434;
        (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v152 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v153 = (*(*v152 + 80) + 32) & ~*(*v152 + 80);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_1006BF520;
        v155 = v154 + v153;
        v156 = v155 + v152[14];
        v157 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v158 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v158 - 8) + 104))(v155, v157, v158);
        v159 = sqlite3_errcode(v402);
        *(v156 + 24) = &type metadata for Int32;
        *(v156 + 32) = &protocol witness table for Int32;
        *v156 = v159;
        sub_10003C9C0(v154);
        swift_setDeallocating();
        sub_10000BE18(v155, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_78;
      }

      __break(1u);
      goto LABEL_123;
    }

    v160 = ppStmt;
    if (v401)
    {
      v161 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v161 = 0;
    }

    v162 = sqlite3_bind_text(v160, 4, v161, -1, v424);
    swift_unknownObjectRelease();
    if (v162)
    {
      result = sqlite3_errmsg(v402);
      if (result)
      {

        v163 = String.init(cString:)();
        v165 = v164;
        v166 = v421;
        defaultLogger()();

        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          *&v434 = v170;
          *v169 = 136446210;
          *(v169 + 4) = sub_100141FE4(v163, v165, &v434);
          _os_log_impl(&_mh_execute_header, v167, v168, "coreidvd: failure binding claimdata: %{public}s", v169, 0xCu);
          sub_10000BB78(v170);
        }

        (*(v430 + 8))(v166, v429);
        *&v434 = 0;
        *(&v434 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        *&v434 = 0xD00000000000002ALL;
        *(&v434 + 1) = 0x800000010071FB70;
        v171._countAndFlagsBits = v163;
        v171._object = v165;
        String.append(_:)(v171);

        v430 = v434;
        (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v172 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v173 = (*(*v172 + 80) + 32) & ~*(*v172 + 80);
        v174 = swift_allocObject();
        *(v174 + 16) = xmmword_1006BF520;
        v175 = v174 + v173;
        v176 = v175 + v172[14];
        v177 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v178 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v178 - 8) + 104))(v175, v177, v178);
        v179 = sqlite3_errcode(v402);
        *(v176 + 24) = &type metadata for Int32;
        *(v176 + 32) = &protocol witness table for Int32;
        *v176 = v179;
        sub_10003C9C0(v174);
        swift_setDeallocating();
        sub_10000BE18(v175, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_78;
      }

LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v180 = ppStmt;
    if (v141)
    {
      v181 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v181 = 0;
    }

    v182 = sqlite3_bind_text(v180, 5, v181, -1, v424);
    swift_unknownObjectRelease();
    if (v182)
    {
      result = sqlite3_errmsg(v402);
      if (result)
      {

        v183 = String.init(cString:)();
        v185 = v184;
        v186 = v420;
        defaultLogger()();

        v187 = Logger.logObject.getter();
        v188 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          *&v434 = v190;
          *v189 = 136446210;
          *(v189 + 4) = sub_100141FE4(v183, v185, &v434);
          _os_log_impl(&_mh_execute_header, v187, v188, "coreidvd: failure binding unverifiedClaimdata: %{public}s", v189, 0xCu);
          sub_10000BB78(v190);
        }

        (*(v430 + 8))(v186, v429);
        *&v434 = 0;
        *(&v434 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(56);
        v191._countAndFlagsBits = 0xD000000000000036;
        v191._object = 0x800000010071FBA0;
        String.append(_:)(v191);
        v192._countAndFlagsBits = v183;
        v192._object = v185;
        String.append(_:)(v192);

        v430 = v434;
        (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v193 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v194 = (*(*v193 + 80) + 32) & ~*(*v193 + 80);
        v195 = swift_allocObject();
        *(v195 + 16) = xmmword_1006BF520;
        v196 = v195 + v194;
        v197 = v196 + v193[14];
        v198 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v199 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v199 - 8) + 104))(v196, v198, v199);
        v200 = sqlite3_errcode(v402);
        *(v197 + 24) = &type metadata for Int32;
        *(v197 + 32) = &protocol witness table for Int32;
        *v197 = v200;
        sub_10003C9C0(v195);
        swift_setDeallocating();
        sub_10000BE18(v196, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_78;
      }

      goto LABEL_124;
    }

    v201 = ppStmt;
    if (v138)
    {
      v202 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v202 = 0;
    }

    v203 = sqlite3_bind_text(v201, 6, v202, -1, v424);
    swift_unknownObjectRelease();
    if (v203)
    {
      result = sqlite3_errmsg(v402);
      if (result)
      {

        v204 = String.init(cString:)();
        v206 = v205;
        defaultLogger()();

        v207 = Logger.logObject.getter();
        v208 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          *&v434 = v210;
          *v209 = 136446210;
          *(v209 + 4) = sub_100141FE4(v204, v206, &v434);
          _os_log_impl(&_mh_execute_header, v207, v208, "coreidvd: failure binding encryptedClaimdata: %{public}s", v209, 0xCu);
          sub_10000BB78(v210);
        }

        (*(v430 + 8))(v419, v429);
        *&v434 = 0;
        *(&v434 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v211._countAndFlagsBits = 0xD000000000000035;
        v211._object = 0x800000010071FBE0;
        String.append(_:)(v211);
        v212._countAndFlagsBits = v204;
        v212._object = v206;
        String.append(_:)(v212);

        v430 = v434;
        (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v213 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v214 = (*(*v213 + 80) + 32) & ~*(*v213 + 80);
        v215 = swift_allocObject();
        *(v215 + 16) = xmmword_1006BF520;
        v216 = v215 + v214;
        v217 = v216 + v213[14];
        v218 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v219 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v219 - 8) + 104))(v216, v218, v219);
        v220 = sqlite3_errcode(v402);
        *(v217 + 24) = &type metadata for Int32;
        *(v217 + 32) = &protocol witness table for Int32;
        *v217 = v220;
        sub_10003C9C0(v215);
        swift_setDeallocating();
        sub_10000BE18(v216, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_78;
      }

      goto LABEL_125;
    }

    v221 = [objc_opt_self() mainBundle];
    v222 = [v221 infoDictionary];

    if (v222)
    {
      v223 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v223 + 16) && (v224 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v225 & 1) != 0))
      {
        sub_10001F2EC(*(v223 + 56) + 32 * v224, &v434);
      }

      else
      {
        v434 = 0u;
        v435 = 0u;
      }

      if (*(&v435 + 1))
      {
        swift_dynamicCast();
LABEL_68:
        v226 = ppStmt;
        v227 = String.utf8CString.getter();
        LODWORD(v226) = sqlite3_bind_text(v226, 7, (v227 + 32), -1, v424);

        if (!v226)
        {
          v244 = v414;
          Date.init()();
          Date.timeIntervalSinceReferenceDate.getter();
          v246 = v245;
          v426 = *(v416 + 8);
          v426(v244, v417);
          if (!sqlite3_bind_double(ppStmt, 8, v246))
          {
            v263 = v413;
            sub_10000BBC4(v411, v413, &unk_100849400, &unk_1006BFBB0);
            if ((*(v416 + 48))(v263, 1, v417) != 1)
            {
              (*(v416 + 32))(v412, v413, v417);
              Date.timeIntervalSinceReferenceDate.getter();
              if (!sqlite3_bind_double(ppStmt, 9, v280))
              {
LABEL_91:
                v426(v412, v417);
                goto LABEL_92;
              }

              result = sqlite3_errmsg(v402);
              if (result)
              {

                v281 = String.init(cString:)();
                v283 = v282;
                defaultLogger()();

                v284 = Logger.logObject.getter();
                v285 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v284, v285))
                {
                  v286 = swift_slowAlloc();
                  v287 = swift_slowAlloc();
                  *&v434 = v287;
                  *v286 = 136446210;
                  *(v286 + 4) = sub_100141FE4(v281, v283, &v434);
                  _os_log_impl(&_mh_execute_header, v284, v285, "coreidvd: failure binding deleteAfter: %{public}s", v286, 0xCu);
                  sub_10000BB78(v287);
                }

                (*(v430 + 8))(v410, v429);
                *&v434 = 0;
                *(&v434 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(41);

                *&v434 = 0xD000000000000027;
                *(&v434 + 1) = 0x800000010071FD00;
                v288._countAndFlagsBits = v281;
                v288._object = v283;
                String.append(_:)(v288);

                v429 = *(&v434 + 1);
                v430 = v434;
                (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
                sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
                v289 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
                v290 = (*(*v289 + 80) + 32) & ~*(*v289 + 80);
                v291 = swift_allocObject();
                *(v291 + 16) = xmmword_1006BF520;
                v292 = v291 + v290;
                v293 = v292 + v289[14];
                v294 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
                v295 = type metadata accessor for DIPError.PropertyKey();
                (*(*(v295 - 8) + 104))(v292, v294, v295);
                v296 = sqlite3_errcode(v402);
                *(v293 + 24) = &type metadata for Int32;
                *(v293 + 32) = &protocol witness table for Int32;
                *v293 = v296;
                sub_10003C9C0(v291);
                swift_setDeallocating();
                sub_10000BE18(v292, &qword_1008341D0, &unk_1006BF8D0);
                swift_deallocClassInstance();
                type metadata accessor for DIPError();
                sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
                swift_allocError();
                DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                swift_willThrow();
                sub_10000B90C(v389, v390);
                sub_10000B90C(v391, v392);
                sub_10000B90C(v398, v393);
                sub_10000B90C(v399, v400);
                v426(v412, v417);
                return sqlite3_finalize(ppStmt);
              }

LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
              return result;
            }

            sub_10000BE18(v413, &unk_100849400, &unk_1006BFBB0);
            if (!sqlite3_bind_null(ppStmt, 9))
            {
LABEL_92:
              v297 = ppStmt;
              v298 = String.utf8CString.getter();
              LODWORD(v297) = sqlite3_bind_text(v297, 10, (v298 + 32), -1, v424);

              if (v297)
              {
                result = sqlite3_errmsg(v402);
                if (result)
                {

                  v299 = String.init(cString:)();
                  v301 = v300;
                  defaultLogger()();

                  v302 = Logger.logObject.getter();
                  v303 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v302, v303))
                  {
                    v304 = swift_slowAlloc();
                    v305 = swift_slowAlloc();
                    *&v434 = v305;
                    *v304 = 136446210;
                    *(v304 + 4) = sub_100141FE4(v299, v301, &v434);
                    _os_log_impl(&_mh_execute_header, v302, v303, "coreidvd: failure binding serviceName: %{public}s", v304, 0xCu);
                    sub_10000BB78(v305);
                  }

                  (*(v430 + 8))(v408, v429);
                  *&v434 = 0;
                  *(&v434 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(46);

                  *&v434 = 0xD00000000000002CLL;
                  *(&v434 + 1) = 0x800000010071F720;
                  v306._countAndFlagsBits = v299;
                  v306._object = v301;
                  String.append(_:)(v306);

                  v430 = v434;
                  (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
                  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
                  v307 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
                  v308 = (*(*v307 + 80) + 32) & ~*(*v307 + 80);
                  v309 = swift_allocObject();
                  *(v309 + 16) = xmmword_1006BF520;
                  v310 = v309 + v308;
                  v311 = v310 + v307[14];
                  v312 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
                  v313 = type metadata accessor for DIPError.PropertyKey();
                  (*(*(v313 - 8) + 104))(v310, v312, v313);
                  v314 = sqlite3_errcode(v402);
                  *(v311 + 24) = &type metadata for Int32;
                  *(v311 + 32) = &protocol witness table for Int32;
                  *v311 = v314;
                  sub_10003C9C0(v309);
                  swift_setDeallocating();
                  sub_10000BE18(v310, &qword_1008341D0, &unk_1006BF8D0);
                  swift_deallocClassInstance();
                  type metadata accessor for DIPError();
                  sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
                  swift_allocError();
LABEL_78:
                  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                  swift_willThrow();
                  sub_10000B90C(v389, v390);
                  sub_10000B90C(v391, v392);
                  sub_10000B90C(v398, v393);
                  sub_10000B90C(v399, v400);
                  return sqlite3_finalize(ppStmt);
                }

                goto LABEL_130;
              }

              *&v434 = *(v428 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_acl);

              sub_100007224(&qword_100834EA0, &qword_1006C06B0);
              sub_1000BA30C(&qword_100848930, &qword_100834EA0, &qword_1006C06B0, &protocol conformance descriptor for [A]);
              BidirectionalCollection<>.joined(separator:)();

              v315 = ppStmt;
              v316 = String.utf8CString.getter();
              LODWORD(v315) = sqlite3_bind_text(v315, 11, (v316 + 32), -1, v424);

              if (v315)
              {
                result = sqlite3_errmsg(v402);
                if (result)
                {

                  v317 = String.init(cString:)();
                  v319 = v318;
                  defaultLogger()();

                  v320 = Logger.logObject.getter();
                  v321 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v320, v321))
                  {
                    v322 = swift_slowAlloc();
                    v323 = swift_slowAlloc();
                    *&v434 = v323;
                    *v322 = 136446210;
                    *(v322 + 4) = sub_100141FE4(v317, v319, &v434);
                    _os_log_impl(&_mh_execute_header, v320, v321, "coreidvd: failure binding acl: %{public}s", v322, 0xCu);
                    sub_10000BB78(v323);
                  }

                  (*(v430 + 8))(v407, v429);
                  *&v434 = 0;
                  *(&v434 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(38);

                  *&v434 = 0xD000000000000024;
                  *(&v434 + 1) = 0x800000010071FCB0;
                  v324._countAndFlagsBits = v317;
                  v324._object = v319;
                  String.append(_:)(v324);

                  v430 = v434;
                  (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
                  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
                  v325 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
                  v326 = (*(*v325 + 80) + 32) & ~*(*v325 + 80);
                  v327 = swift_allocObject();
                  *(v327 + 16) = xmmword_1006BF520;
                  v328 = v327 + v326;
                  v329 = v328 + v325[14];
                  v330 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
                  v331 = type metadata accessor for DIPError.PropertyKey();
                  (*(*(v331 - 8) + 104))(v328, v330, v331);
                  v332 = sqlite3_errcode(v402);
                  *(v329 + 24) = &type metadata for Int32;
                  *(v329 + 32) = &protocol witness table for Int32;
                  *v329 = v332;
                  sub_10003C9C0(v327);
                  swift_setDeallocating();
                  sub_10000BE18(v328, &qword_1008341D0, &unk_1006BF8D0);
                  swift_deallocClassInstance();
                  type metadata accessor for DIPError();
                  sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
                  swift_allocError();
                  goto LABEL_78;
                }

                goto LABEL_131;
              }

              goto LABEL_103;
            }

            result = sqlite3_errmsg(v402);
            if (result)
            {

              v264 = String.init(cString:)();
              v266 = v265;
              defaultLogger()();

              v267 = Logger.logObject.getter();
              v268 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v267, v268))
              {
                v269 = swift_slowAlloc();
                v270 = swift_slowAlloc();
                *&v434 = v270;
                *v269 = 136446210;
                *(v269 + 4) = sub_100141FE4(v264, v266, &v434);
                _os_log_impl(&_mh_execute_header, v267, v268, "coreidvd: failure binding null deleteAfter: %{public}s", v269, 0xCu);
                sub_10000BB78(v270);
              }

              (*(v430 + 8))(v409, v429);
              *&v434 = 0;
              *(&v434 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(46);

              *&v434 = 0xD00000000000002CLL;
              *(&v434 + 1) = 0x800000010071FC80;
              v271._countAndFlagsBits = v264;
              v271._object = v266;
              String.append(_:)(v271);

              v430 = v434;
              (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
              sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
              v272 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
              v273 = (*(*v272 + 80) + 32) & ~*(*v272 + 80);
              v274 = swift_allocObject();
              *(v274 + 16) = xmmword_1006BF520;
              v275 = v274 + v273;
              v276 = v275 + v272[14];
              v277 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
              v278 = type metadata accessor for DIPError.PropertyKey();
              (*(*(v278 - 8) + 104))(v275, v277, v278);
              v279 = sqlite3_errcode(v402);
              *(v276 + 24) = &type metadata for Int32;
              *(v276 + 32) = &protocol witness table for Int32;
              *v276 = v279;
              sub_10003C9C0(v274);
              swift_setDeallocating();
              sub_10000BE18(v275, &qword_1008341D0, &unk_1006BF8D0);
              swift_deallocClassInstance();
              type metadata accessor for DIPError();
              sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
              swift_allocError();
              goto LABEL_78;
            }

LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          result = sqlite3_errmsg(v402);
          if (result)
          {

            v247 = String.init(cString:)();
            v249 = v248;
            defaultLogger()();

            v250 = Logger.logObject.getter();
            v251 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v250, v251))
            {
              v252 = swift_slowAlloc();
              v253 = swift_slowAlloc();
              *&v434 = v253;
              *v252 = 136446210;
              *(v252 + 4) = sub_100141FE4(v247, v249, &v434);
              _os_log_impl(&_mh_execute_header, v250, v251, "coreidvd: failure binding update_date: %{public}s", v252, 0xCu);
              sub_10000BB78(v253);
            }

            (*(v430 + 8))(v415, v429);
            *&v434 = 0;
            *(&v434 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(46);

            *&v434 = 0xD00000000000002CLL;
            *(&v434 + 1) = 0x800000010071FC50;
            v254._countAndFlagsBits = v247;
            v254._object = v249;
            String.append(_:)(v254);

            v430 = v434;
            (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v255 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v256 = (*(*v255 + 80) + 32) & ~*(*v255 + 80);
            v257 = swift_allocObject();
            *(v257 + 16) = xmmword_1006BF520;
            v258 = v257 + v256;
            v259 = v258 + v255[14];
            v260 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v261 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v261 - 8) + 104))(v258, v260, v261);
            v262 = sqlite3_errcode(v402);
            *(v259 + 24) = &type metadata for Int32;
            *(v259 + 32) = &protocol witness table for Int32;
            *v259 = v262;
            sub_10003C9C0(v257);
            swift_setDeallocating();
            sub_10000BE18(v258, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            goto LABEL_78;
          }

LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        result = sqlite3_errmsg(v402);
        if (result)
        {

          v228 = String.init(cString:)();
          v230 = v229;
          defaultLogger()();

          v231 = Logger.logObject.getter();
          v232 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v231, v232))
          {
            v233 = swift_slowAlloc();
            v234 = swift_slowAlloc();
            *&v434 = v234;
            *v233 = 136446210;
            *(v233 + 4) = sub_100141FE4(v228, v230, &v434);
            _os_log_impl(&_mh_execute_header, v231, v232, "coreidvd: failure binding idvVersion: %{public}s", v233, 0xCu);
            sub_10000BB78(v234);
          }

          (*(v430 + 8))(v418, v429);
          *&v434 = 0;
          *(&v434 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(45);

          *&v434 = 0xD00000000000002BLL;
          *(&v434 + 1) = 0x800000010071FC20;
          v235._countAndFlagsBits = v228;
          v235._object = v230;
          String.append(_:)(v235);

          v430 = v434;
          (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v236 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v237 = (*(*v236 + 80) + 32) & ~*(*v236 + 80);
          v238 = swift_allocObject();
          *(v238 + 16) = xmmword_1006BF520;
          v239 = v238 + v237;
          v240 = v239 + v236[14];
          v241 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v242 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v242 - 8) + 104))(v239, v241, v242);
          v243 = sqlite3_errcode(v402);
          *(v240 + 24) = &type metadata for Int32;
          *(v240 + 32) = &protocol witness table for Int32;
          *v240 = v243;
          sub_10003C9C0(v238);
          swift_setDeallocating();
          sub_10000BE18(v239, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_78;
        }

LABEL_126:
        __break(1u);
        goto LABEL_127;
      }
    }

    else
    {
      v434 = 0u;
      v435 = 0u;
    }

    sub_10000BE18(&v434, &unk_100845ED0, &qword_1006DA1D0);
    goto LABEL_68;
  }

  if (sqlite3_errmsg(v402))
  {
    v73 = String.init(cString:)();
    v75 = v74;
    defaultLogger()();

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v443[0] = v79;
      *v78 = 136446210;
      *(v78 + 4) = sub_100141FE4(v73, v75, v443);
      _os_log_impl(&_mh_execute_header, v76, v77, "coreidvd: failure binding workflowid: %{public}s", v78, 0xCu);
      sub_10000BB78(v79);
    }

    (*(v430 + 8))(v51, v429);
    *&v443[0] = 0;
    *(&v443[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v443[0] = 0xD00000000000002BLL;
    *(&v443[0] + 1) = 0x800000010071FAE0;
    v80._countAndFlagsBits = v73;
    v80._object = v75;
    String.append(_:)(v80);

    v430 = *&v443[0];
    (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v81 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v82 = (*(*v81 + 80) + 32) & ~*(*v81 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1006BF520;
    v84 = v83 + v82;
    v85 = v84 + v81[14];
    v86 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v87 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v87 - 8) + 104))(v84, v86, v87);
    v88 = sqlite3_errcode(v402);
    *(v85 + 24) = &type metadata for Int32;
    *(v85 + 32) = &protocol witness table for Int32;
    *v85 = v88;
    sub_10003C9C0(v83);
    swift_setDeallocating();
    sub_10000BE18(v84, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_23:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

  __break(1u);
LABEL_103:
  v333 = ppStmt;
  v334 = String.utf8CString.getter();
  LODWORD(v333) = sqlite3_bind_text(v333, 12, (v334 + 32), -1, v424);

  if (v333)
  {
    result = sqlite3_errmsg(v402);
    if (result)
    {

      v335 = String.init(cString:)();
      v337 = v336;
      defaultLogger()();

      v338 = Logger.logObject.getter();
      v339 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v338, v339))
      {
        v340 = swift_slowAlloc();
        v341 = swift_slowAlloc();
        *&v434 = v341;
        *v340 = 136446210;
        *(v340 + 4) = sub_100141FE4(v335, v337, &v434);
        _os_log_impl(&_mh_execute_header, v338, v339, "coreidvd: failure binding providerid: %{public}s", v340, 0xCu);
        sub_10000BB78(v341);
      }

      (*(v430 + 8))(v406, v429);
      *&v434 = 0;
      *(&v434 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      *&v434 = 0xD00000000000002BLL;
      *(&v434 + 1) = 0x800000010071F5A0;
      v342._countAndFlagsBits = v335;
      v342._object = v337;
      String.append(_:)(v342);

      v430 = v434;
      (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v343 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v344 = (*(*v343 + 80) + 32) & ~*(*v343 + 80);
      v345 = swift_allocObject();
      *(v345 + 16) = xmmword_1006BF520;
      v346 = v345 + v344;
      v347 = v346 + v343[14];
      v348 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v349 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v349 - 8) + 104))(v346, v348, v349);
      v350 = sqlite3_errcode(v402);
      *(v347 + 24) = &type metadata for Int32;
      *(v347 + 32) = &protocol witness table for Int32;
      *v347 = v350;
      sub_10003C9C0(v345);
      swift_setDeallocating();
      sub_10000BE18(v346, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_78;
    }

    goto LABEL_132;
  }

LABEL_109:
  v351 = ppStmt;
  v352 = String.utf8CString.getter();
  LODWORD(v351) = sqlite3_bind_text(v351, 13, (v352 + 32), -1, v424);

  if (v351)
  {
    result = sqlite3_errmsg(v402);
    if (result)
    {

      v353 = String.init(cString:)();
      v355 = v354;
      defaultLogger()();

      v356 = Logger.logObject.getter();
      v357 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v356, v357))
      {
        v358 = swift_slowAlloc();
        v359 = swift_slowAlloc();
        *&v434 = v359;
        *v358 = 136446210;
        *(v358 + 4) = sub_100141FE4(v353, v355, &v434);
        _os_log_impl(&_mh_execute_header, v356, v357, "coreidvd: failure binding tier: %{public}s", v358, 0xCu);
        sub_10000BB78(v359);
      }

      (*(v430 + 8))(v404, v429);
      *&v434 = 0;
      *(&v434 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      *&v434 = 0xD000000000000026;
      *(&v434 + 1) = 0x800000010071F5D0;
      v360._countAndFlagsBits = v353;
      v360._object = v355;
      String.append(_:)(v360);

      v430 = v434;
      (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v361 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v362 = (*(*v361 + 80) + 32) & ~*(*v361 + 80);
      v363 = swift_allocObject();
      *(v363 + 16) = xmmword_1006BF520;
      v364 = v363 + v362;
      v365 = v364 + v361[14];
      v366 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v367 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v367 - 8) + 104))(v364, v366, v367);
      v368 = sqlite3_errcode(v402);
      *(v365 + 24) = &type metadata for Int32;
      *(v365 + 32) = &protocol witness table for Int32;
      *v365 = v368;
      sub_10003C9C0(v363);
      swift_setDeallocating();
      sub_10000BE18(v364, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_78;
    }

    goto LABEL_133;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    result = sqlite3_errmsg(v402);
    if (result)
    {

      v372 = String.init(cString:)();
      v374 = v373;
      defaultLogger()();

      v375 = Logger.logObject.getter();
      v376 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v375, v376))
      {
        v377 = swift_slowAlloc();
        v378 = swift_slowAlloc();
        *&v434 = v378;
        *v377 = 136446210;
        *(v377 + 4) = sub_100141FE4(v372, v374, &v434);
        _os_log_impl(&_mh_execute_header, v375, v376, "coreidvd: failure updating claim: %{public}s", v377, 0xCu);
        sub_10000BB78(v378);
      }

      (*(v430 + 8))(v405, v429);
      *&v434 = 0;
      *(&v434 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      *&v434 = 0xD000000000000016;
      *(&v434 + 1) = 0x800000010071FCE0;
      v379._countAndFlagsBits = v372;
      v379._object = v374;
      String.append(_:)(v379);

      v430 = v434;
      (*(v432 + 104))(v433, enum case for DIPError.Code.sqliteError(_:), v431);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v380 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v381 = (*(*v380 + 80) + 32) & ~*(*v380 + 80);
      v382 = swift_allocObject();
      *(v382 + 16) = xmmword_1006BF520;
      v383 = v382 + v381;
      v384 = v383 + v380[14];
      v385 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v386 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v386 - 8) + 104))(v383, v385, v386);
      v387 = sqlite3_errcode(v402);
      *(v384 + 24) = &type metadata for Int32;
      *(v384 + 32) = &protocol witness table for Int32;
      *v384 = v387;
      sub_10003C9C0(v382);
      swift_setDeallocating();
      sub_10000BE18(v383, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_78;
    }

    goto LABEL_134;
  }

  defaultLogger()();
  v369 = Logger.logObject.getter();
  v370 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v369, v370))
  {
    v371 = swift_slowAlloc();
    *v371 = 0;
    _os_log_impl(&_mh_execute_header, v369, v370, "coreidvd: updated claim", v371, 2u);
  }

  sub_10000B90C(v389, v390);
  sub_10000B90C(v391, v392);
  sub_10000B90C(v398, v393);
  sub_10000B90C(v399, v400);

  (*(v430 + 8))(v403, v429);
  return sqlite3_finalize(ppStmt);
}

const char *sub_100567B58(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v102 = v3;
  v103 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v101 = &v101 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v101 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v101 - v14;
  __chkstk_darwin(v13);
  v17 = &v101 - v16;
  v18 = type metadata accessor for DIPError.Code();
  v104 = *(v18 - 8);
  v105 = v18;
  __chkstk_darwin(v18);
  v106 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_1005507F8();
    v20 = *(a1 + 40);
    if (!v20)
    {
      (*(v104 + 104))(v106, enum case for DIPError.Code.databaseInaccessible(_:), v105);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v21 = String.utf8CString.getter();
  v22 = sqlite3_prepare_v3(v20, (v21 + 32), -1, 0, &ppStmt, 0);

  v107 = v20;
  if (v22)
  {
    result = sqlite3_errmsg(v20);
    if (result)
    {
      v24 = String.init(cString:)();
      v26 = v25;
      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v108 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_100141FE4(v24, v26, &v108);
        _os_log_impl(&_mh_execute_header, v27, v28, "coreidvd: failed to prepare delete claim statement %{public}s", v29, 0xCu);
        sub_10000BB78(v30);
      }

      (*(v103 + 8))(v17, v102);
      v108 = 0;
      v109 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v108 = 0xD000000000000028;
      v109 = 0x800000010071F570;
      v31._countAndFlagsBits = v24;
      v31._object = v26;
      String.append(_:)(v31);

      (*(v104 + 104))(v106, enum case for DIPError.Code.sqliteError(_:), v105);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v32 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1006BF520;
      v35 = v34 + v33;
      v36 = v35 + v32[14];
      v37 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v38 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v38 - 8) + 104))(v35, v37, v38);
      v39 = sqlite3_errcode(v107);
      *(v36 + 24) = &type metadata for Int32;
      *(v36 + 32) = &protocol witness table for Int32;
      *v36 = v39;
      sub_10003C9C0(v34);
      swift_setDeallocating();
      sub_10000BE18(v35, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_33;
  }

  v40 = ppStmt;
  v41 = qword_100832CA0;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_1008823D0;
  v43 = String.utf8CString.getter();

  v44 = sqlite3_bind_text(v40, 1, (v43 + 32), -1, v42);

  if (v44)
  {
    result = sqlite3_errmsg(v107);
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v45 = String.init(cString:)();
    v47 = v46;
    defaultLogger()();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v108 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_100141FE4(v45, v47, &v108);
      _os_log_impl(&_mh_execute_header, v48, v49, "coreidvd: failure binding providerid: %{public}s", v50, 0xCu);
      sub_10000BB78(v51);
    }

    (*(v103 + 8))(v15, v102);
    v108 = 0;
    v109 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v108 = 0xD00000000000002BLL;
    v109 = 0x800000010071F5A0;
    v52._countAndFlagsBits = v45;
    v52._object = v47;
    String.append(_:)(v52);

    (*(v104 + 104))(v106, enum case for DIPError.Code.sqliteError(_:), v105);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v53 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1006BF520;
    v56 = v55 + v54;
    v57 = v56 + v53[14];
    v58 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v59 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v59 - 8) + 104))(v56, v58, v59);
    v60 = sqlite3_errcode(v107);
    *(v57 + 24) = &type metadata for Int32;
    *(v57 + 32) = &protocol witness table for Int32;
    *v57 = v60;
    sub_10003C9C0(v55);
    swift_setDeallocating();
    sub_10000BE18(v56, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  v61 = ppStmt;
  v62 = String.utf8CString.getter();
  v63 = sqlite3_bind_text(v61, 2, (v62 + 32), -1, v42);

  if (v63)
  {
    result = sqlite3_errmsg(v107);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v64 = String.init(cString:)();
    v66 = v65;
    defaultLogger()();

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v108 = v70;
      *v69 = 136446210;
      *(v69 + 4) = sub_100141FE4(v64, v66, &v108);
      _os_log_impl(&_mh_execute_header, v67, v68, "coreidvd: failure binding tier: %{public}s", v69, 0xCu);
      sub_10000BB78(v70);
    }

    (*(v103 + 8))(v12, v102);
    v108 = 0;
    v109 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v108 = 0xD000000000000026;
    v109 = 0x800000010071F5D0;
    v71._countAndFlagsBits = v64;
    v71._object = v66;
    String.append(_:)(v71);

    (*(v104 + 104))(v106, enum case for DIPError.Code.sqliteError(_:), v105);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v72 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v73 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1006BF520;
    v75 = v74 + v73;
    v76 = v75 + v72[14];
    v77 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v78 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v78 - 8) + 104))(v75, v77, v78);
    v79 = sqlite3_errcode(v107);
    *(v76 + 24) = &type metadata for Int32;
    *(v76 + 32) = &protocol witness table for Int32;
    *v76 = v79;
    sub_10003C9C0(v74);
    swift_setDeallocating();
    sub_10000BE18(v75, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  v80 = v107;
  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "coreidvd: deleted out of date claims", v83, 2u);
    }

    (*(v103 + 8))(v7, v102);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v80);
  if (result)
  {
    v84 = String.init(cString:)();
    v86 = v85;
    v87 = v101;
    defaultLogger()();

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v108 = v91;
      *v90 = 136446210;
      *(v90 + 4) = sub_100141FE4(v84, v86, &v108);
      _os_log_impl(&_mh_execute_header, v88, v89, "coreidvd: failure deleting claim: %{public}s", v90, 0xCu);
      sub_10000BB78(v91);
    }

    (*(v103 + 8))(v87, v102);
    v108 = 0;
    v109 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v108 = 0xD000000000000022;
    v109 = 0x800000010071F600;
    v92._countAndFlagsBits = v84;
    v92._object = v86;
    String.append(_:)(v92);

    (*(v104 + 104))(v106, enum case for DIPError.Code.sqliteError(_:), v105);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v93 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v94 = (*(*v93 + 80) + 32) & ~*(*v93 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1006BF520;
    v96 = v95 + v94;
    v97 = v96 + v93[14];
    v98 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v99 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v99 - 8) + 104))(v96, v98, v99);
    v100 = sqlite3_errcode(v107);
    *(v97 + 24) = &type metadata for Int32;
    *(v97 + 32) = &protocol witness table for Int32;
    *v97 = v100;
    sub_10003C9C0(v95);
    swift_setDeallocating();
    sub_10000BE18(v96, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_30:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_35:
  __break(1u);
  return result;
}

const char *sub_100568DE8(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v80 = v6;
  v81 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v79 = &v78 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v78 - v14;
  __chkstk_darwin(v13);
  v17 = &v78 - v16;
  v18 = type metadata accessor for DIPError.Code();
  v83 = *(v18 - 8);
  v84 = v18;
  __chkstk_darwin(v18);
  v85 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_1005507F8();
    v20 = *(a1 + 40);
    if (!v20)
    {
      (*(v83 + 104))(v85, enum case for DIPError.Code.databaseInaccessible(_:), v84);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_14:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v21 = String.utf8CString.getter();
  v22 = sqlite3_prepare_v3(v20, (v21 + 32), -1, 0, &ppStmt, 0);

  v82 = v20;
  if (v22)
  {
    result = sqlite3_errmsg(v20);
    if (result)
    {
      v24 = String.init(cString:)();
      v26 = v25;
      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v86 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_100141FE4(v24, v26, &v86);
        _os_log_impl(&_mh_execute_header, v27, v28, "coreidvd: failed to prepare delete statement %{public}s", v29, 0xCu);
        sub_10000BB78(v30);
      }

      (*(v81 + 8))(v17, v80);
      v86 = 0;
      v87 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v86 = 0xD000000000000029;
      v87 = 0x8000000100721C60;
      v31._countAndFlagsBits = v24;
      v31._object = v26;
      String.append(_:)(v31);

      (*(v83 + 104))(v85, enum case for DIPError.Code.sqliteError(_:), v84);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v32 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1006BF520;
      v35 = v34 + v33;
      v36 = v35 + v32[14];
      v37 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v38 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v38 - 8) + 104))(v35, v37, v38);
      v39 = sqlite3_errcode(v82);
      *(v36 + 24) = &type metadata for Int32;
      *(v36 + 32) = &protocol witness table for Int32;
      *v36 = v39;
      sub_10003C9C0(v34);
      swift_setDeallocating();
      sub_10000BE18(v35, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_25;
  }

  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v41 = v40;
  (*(v3 + 8))(v5, v2);
  if (sqlite3_bind_double(ppStmt, 1, v41))
  {
    result = sqlite3_errmsg(v82);
    if (!result)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v42 = String.init(cString:)();
    v44 = v43;
    defaultLogger()();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v86 = v48;
      *v47 = 136446210;
      *(v47 + 4) = sub_100141FE4(v42, v44, &v86);
      _os_log_impl(&_mh_execute_header, v45, v46, "coreidvd: failure binding date: %{public}s", v47, 0xCu);
      sub_10000BB78(v48);
    }

    (*(v81 + 8))(v15, v80);
    v86 = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v86 = 0xD000000000000025;
    v87 = 0x800000010071FF60;
    v49._countAndFlagsBits = v42;
    v49._object = v44;
    String.append(_:)(v49);

    (*(v83 + 104))(v85, enum case for DIPError.Code.sqliteError(_:), v84);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v50 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1006BF520;
    v53 = v52 + v51;
    v54 = v53 + v50[14];
    v55 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v56 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v56 - 8) + 104))(v53, v55, v56);
    v57 = sqlite3_errcode(v82);
    *(v54 + 24) = &type metadata for Int32;
    *(v54 + 32) = &protocol witness table for Int32;
    *v54 = v57;
    sub_10003C9C0(v52);
    swift_setDeallocating();
    sub_10000BE18(v53, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_23:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    result = sqlite3_errmsg(v82);
    if (!result)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v61 = String.init(cString:)();
    v63 = v62;
    v64 = v79;
    defaultLogger()();

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v86 = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_100141FE4(v61, v63, &v86);
      _os_log_impl(&_mh_execute_header, v65, v66, "coreidvd: failure deleting claim: %{public}s", v67, 0xCu);
      sub_10000BB78(v68);
    }

    (*(v81 + 8))(v64, v80);
    v86 = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v86 = 0xD000000000000022;
    v87 = 0x800000010071F600;
    v69._countAndFlagsBits = v61;
    v69._object = v63;
    String.append(_:)(v69);

    (*(v83 + 104))(v85, enum case for DIPError.Code.sqliteError(_:), v84);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v70 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v71 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1006BF520;
    v73 = v72 + v71;
    v74 = v73 + v70[14];
    v75 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v76 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v76 - 8) + 104))(v73, v75, v76);
    v77 = sqlite3_errcode(v82);
    *(v74 + 24) = &type metadata for Int32;
    *(v74 + 32) = &protocol witness table for Int32;
    *v74 = v77;
    sub_10003C9C0(v72);
    swift_setDeallocating();
    sub_10000BE18(v73, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_23;
  }

  defaultLogger()();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "coreidvd: deleted out of date claims", v60, 2u);
  }

  (*(v81 + 8))(v10, v80);
  return sqlite3_finalize(ppStmt);
}

const char *sub_100569D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v106._countAndFlagsBits = a4;
  v106._object = a5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v107 = v6;
  v108 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v104 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v105 = &v103 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v103 - v16;
  __chkstk_darwin(v15);
  v19 = &v103 - v18;
  v20 = type metadata accessor for DIPError.Code();
  v109 = *(v20 - 8);
  v110 = v20;
  __chkstk_darwin(v20);
  v111 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v22 = *(a1 + 40);
  if (!v22)
  {
    sub_1005507F8();
    v22 = *(a1 + 40);
    if (!v22)
    {
      (*(v109 + 104))(v111, enum case for DIPError.Code.databaseInaccessible(_:), v110);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v23 = String.utf8CString.getter();
  v24 = sqlite3_prepare_v3(v22, (v23 + 32), -1, 0, &ppStmt, 0);

  v112 = v22;
  if (v24)
  {
    result = sqlite3_errmsg(v22);
    if (result)
    {
      v26 = String.init(cString:)();
      v28 = v27;
      defaultLogger()();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v113 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_100141FE4(v26, v28, &v113);
        _os_log_impl(&_mh_execute_header, v29, v30, "coreidvd: failed to prepare delete sp claims statement %{public}s", v31, 0xCu);
        sub_10000BB78(v32);
      }

      (*(v108 + 8))(v19, v107);
      v113 = 0;
      v114 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v113 = 0xD00000000000002CLL;
      v114 = 0x800000010071F6F0;
      v33._countAndFlagsBits = v26;
      v33._object = v28;
      String.append(_:)(v33);

      (*(v109 + 104))(v111, enum case for DIPError.Code.sqliteError(_:), v110);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v34 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1006BF520;
      v37 = v36 + v35;
      v38 = v37 + v34[14];
      v39 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v40 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v40 - 8) + 104))(v37, v39, v40);
      v41 = sqlite3_errcode(v112);
      *(v38 + 24) = &type metadata for Int32;
      *(v38 + 32) = &protocol witness table for Int32;
      *v38 = v41;
      sub_10003C9C0(v36);
      swift_setDeallocating();
      sub_10000BE18(v37, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_33;
  }

  v42 = ppStmt;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v43 = qword_1008823D0;
  v44 = String.utf8CString.getter();
  v45 = sqlite3_bind_text(v42, 1, (v44 + 32), -1, v43);

  if (v45)
  {
    result = sqlite3_errmsg(v112);
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v46 = String.init(cString:)();
    v48 = v47;
    defaultLogger()();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v113 = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_100141FE4(v46, v48, &v113);
      _os_log_impl(&_mh_execute_header, v49, v50, "coreidvd: failure binding serviceName: %{public}s", v51, 0xCu);
      sub_10000BB78(v52);
    }

    (*(v108 + 8))(v17, v107);
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v113 = 0xD00000000000002CLL;
    v114 = 0x800000010071F720;
    v53._countAndFlagsBits = v46;
    v53._object = v48;
    String.append(_:)(v53);

    (*(v109 + 104))(v111, enum case for DIPError.Code.sqliteError(_:), v110);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v54 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1006BF520;
    v57 = v56 + v55;
    v58 = v57 + v54[14];
    v59 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v60 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v60 - 8) + 104))(v57, v59, v60);
    v61 = sqlite3_errcode(v112);
    *(v58 + 24) = &type metadata for Int32;
    *(v58 + 32) = &protocol witness table for Int32;
    *v58 = v61;
    sub_10003C9C0(v56);
    swift_setDeallocating();
    sub_10000BE18(v57, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  v62 = ppStmt;
  v113 = 37;
  v114 = 0xE100000000000000;
  String.append(_:)(v106);

  v63._countAndFlagsBits = 37;
  v63._object = 0xE100000000000000;
  String.append(_:)(v63);

  v64 = String.utf8CString.getter();

  LODWORD(v62) = sqlite3_bind_text(v62, 2, (v64 + 32), -1, v43);

  if (v62)
  {
    result = sqlite3_errmsg(v112);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v65 = String.init(cString:)();
    v67 = v66;
    v68 = v105;
    defaultLogger()();

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v113 = v72;
      *v71 = 136446210;
      *(v71 + 4) = sub_100141FE4(v65, v67, &v113);
      _os_log_impl(&_mh_execute_header, v69, v70, "coreidvd: failure binding applicationIdentifier: %{public}s", v71, 0xCu);
      sub_10000BB78(v72);
    }

    (*(v108 + 8))(v68, v107);
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v73._countAndFlagsBits = 0xD000000000000036;
    v73._object = 0x800000010071F750;
    String.append(_:)(v73);
    v74._countAndFlagsBits = v65;
    v74._object = v67;
    String.append(_:)(v74);

    (*(v109 + 104))(v111, enum case for DIPError.Code.sqliteError(_:), v110);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v75 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v76 = (*(*v75 + 80) + 32) & ~*(*v75 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1006BF520;
    v78 = v77 + v76;
    v79 = v78 + v75[14];
    v80 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v81 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v81 - 8) + 104))(v78, v80, v81);
    v82 = sqlite3_errcode(v112);
    *(v79 + 24) = &type metadata for Int32;
    *(v79 + 32) = &protocol witness table for Int32;
    *v79 = v82;
    sub_10003C9C0(v77);
    swift_setDeallocating();
    sub_10000BE18(v78, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "coreidvd: deleted claims", v85, 2u);
    }

    (*(v108 + 8))(v10, v107);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v112);
  if (result)
  {
    v86 = String.init(cString:)();
    v88 = v87;
    v89 = v104;
    defaultLogger()();

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v113 = v93;
      *v92 = 136446210;
      *(v92 + 4) = sub_100141FE4(v86, v88, &v113);
      _os_log_impl(&_mh_execute_header, v90, v91, "coreidvd: failure deleting sp claims: %{public}s", v92, 0xCu);
      sub_10000BB78(v93);
    }

    (*(v108 + 8))(v89, v107);
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v113 = 0xD000000000000022;
    v114 = 0x800000010071F600;
    v94._countAndFlagsBits = v86;
    v94._object = v88;
    String.append(_:)(v94);

    (*(v109 + 104))(v111, enum case for DIPError.Code.sqliteError(_:), v110);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v95 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v96 = (*(*v95 + 80) + 32) & ~*(*v95 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1006BF520;
    v98 = v97 + v96;
    v99 = v98 + v95[14];
    v100 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v101 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v101 - 8) + 104))(v98, v100, v101);
    v102 = sqlite3_errcode(v112);
    *(v99 + 24) = &type metadata for Int32;
    *(v99 + 32) = &protocol witness table for Int32;
    *v99 = v102;
    sub_10003C9C0(v97);
    swift_setDeallocating();
    sub_10000BE18(v98, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_30:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_35:
  __break(1u);
  return result;
}

const char *sub_10056B014(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v81 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v82 = v5;
  v83 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v80 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v80 - v14;
  __chkstk_darwin(v13);
  v17 = &v80 - v16;
  v18 = type metadata accessor for DIPError.Code();
  v84 = *(v18 - 8);
  v85 = v18;
  __chkstk_darwin(v18);
  v86 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_1005507F8();
    v20 = *(a1 + 40);
    if (!v20)
    {
      (*(v84 + 104))(v86, enum case for DIPError.Code.databaseInaccessible(_:), v85);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v21 = String.utf8CString.getter();
  v22 = sqlite3_prepare_v3(v20, (v21 + 32), -1, 0, &ppStmt, 0);

  if (v22)
  {
    result = sqlite3_errmsg(v20);
    if (result)
    {
      v24 = String.init(cString:)();
      v26 = v25;
      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v87 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_100141FE4(v24, v26, &v87);
        _os_log_impl(&_mh_execute_header, v27, v28, "coreidvd: failed to prepare delete sp claims statement %{public}s", v29, 0xCu);
        sub_10000BB78(v30);
      }

      (*(v83 + 8))(v17, v82);
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v87 = 0xD00000000000002CLL;
      v88 = 0x800000010071F6F0;
      v31._countAndFlagsBits = v24;
      v31._object = v26;
      String.append(_:)(v31);

      v83 = v87;
      (*(v84 + 104))(v86, enum case for DIPError.Code.sqliteError(_:), v85);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v32 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1006BF520;
      v35 = v34 + v33;
      v36 = v35 + v32[14];
      v37 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v38 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v38 - 8) + 104))(v35, v37, v38);
      v39 = sqlite3_errcode(v20);
      *(v36 + 24) = &type metadata for Int32;
      *(v36 + 32) = &protocol witness table for Int32;
      *v36 = v39;
      sub_10003C9C0(v34);
      swift_setDeallocating();
      sub_10000BE18(v35, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_28;
  }

  v40 = ppStmt;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v41 = qword_1008823D0;
  v42 = String.utf8CString.getter();
  v43 = sqlite3_bind_text(v40, 1, (v42 + 32), -1, v41);

  if (v43)
  {
    result = sqlite3_errmsg(v20);
    if (!result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v44 = String.init(cString:)();
    v46 = v45;
    defaultLogger()();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v87 = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_100141FE4(v44, v46, &v87);
      _os_log_impl(&_mh_execute_header, v47, v48, "coreidvd: failure binding serviceName: %{public}s", v49, 0xCu);
      sub_10000BB78(v50);
    }

    (*(v83 + 8))(v15, v82);
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v87 = 0xD00000000000002CLL;
    v88 = 0x800000010071F720;
    v51._countAndFlagsBits = v44;
    v51._object = v46;
    String.append(_:)(v51);

    v83 = v87;
    (*(v84 + 104))(v86, enum case for DIPError.Code.sqliteError(_:), v85);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v52 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v53 = (*(*v52 + 80) + 32) & ~*(*v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1006BF520;
    v55 = v54 + v53;
    v56 = v55 + v52[14];
    v57 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v58 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v58 - 8) + 104))(v55, v57, v58);
    v59 = sqlite3_errcode(v20);
    *(v56 + 24) = &type metadata for Int32;
    *(v56 + 32) = &protocol witness table for Int32;
    *v56 = v59;
    sub_10003C9C0(v54);
    swift_setDeallocating();
    sub_10000BE18(v55, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_25;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v87 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_100141FE4(v81, a3, &v87);
      _os_log_impl(&_mh_execute_header, v60, v61, "coreidvd: deleted claims for service provider %s", v62, 0xCu);
      sub_10000BB78(v63);
    }

    (*(v83 + 8))(v9, v82);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v20);
  if (result)
  {
    v64 = String.init(cString:)();
    v66 = v65;
    defaultLogger()();

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v87 = v70;
      *v69 = 136446210;
      *(v69 + 4) = sub_100141FE4(v64, v66, &v87);
      _os_log_impl(&_mh_execute_header, v67, v68, "coreidvd: failure deleting sp claims: %{public}s", v69, 0xCu);
      sub_10000BB78(v70);
    }

    (*(v83 + 8))(v12, v82);
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v87 = 0xD000000000000022;
    v88 = 0x800000010071F600;
    v71._countAndFlagsBits = v64;
    v71._object = v66;
    String.append(_:)(v71);

    v83 = v87;
    (*(v84 + 104))(v86, enum case for DIPError.Code.sqliteError(_:), v85);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v72 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v73 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1006BF520;
    v75 = v74 + v73;
    v76 = v75 + v72[14];
    v77 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v78 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v78 - 8) + 104))(v75, v77, v78);
    v79 = sqlite3_errcode(v20);
    *(v76 + 24) = &type metadata for Int32;
    *(v76 + 32) = &protocol witness table for Int32;
    *v76 = v79;
    sub_10003C9C0(v74);
    swift_setDeallocating();
    sub_10000BE18(v75, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_25:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_10056BF5C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError();
  v174 = *(v4 - 8);
  __chkstk_darwin(v4);
  v173 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for DIPError.Code();
  v6 = *(v179 - 8);
  __chkstk_darwin(v179);
  v180 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = __chkstk_darwin(v8);
  v11 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v12);
  v14 = __chkstk_darwin(v13);
  v16 = &v163 - v15;
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v21 = &v163 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v163 - v23;
  v25 = __chkstk_darwin(v22);
  v32 = &v163 - v31;
  if (!*(a1 + 64))
  {
    return;
  }

  v171 = v27;
  v170 = v26;
  v169 = v16;
  v167 = v30;
  v168 = v29;
  v172 = v2;
  v175 = v6;
  v176 = v25;
  v177 = v4;
  v178 = v28;
  v33 = *(a1 + 48);

  v34 = String._bridgeToObjectiveC()();
  v183[0] = 0;
  v35 = [v33 attributesOfItemAtPath:v34 error:v183];

  if (!v35)
  {
    v62 = v183[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v63 = v175[13];
    v178 = 0x800000010071F430;
    v176 = 0x80000001007219D0;
    v63(v180, enum case for DIPError.Code.sqliteError(_:), v179);
    goto LABEL_30;
  }

  v36 = v183[0];
  if ([v35 fileSize] >= 0x1900001)
  {
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v166 = v35;
    if (v39)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Db getting too large. Attempting cleanup of old data", v40, 2u);
      v35 = v166;
    }

    v41 = *(v178 + 8);
    v178 += 8;
    v41(v32, v176);
    ppStmt = 0;
    swift_beginAccess();
    v42 = *(a1 + 40);
    if (v42 || (sub_1005507F8(), (v42 = *(a1 + 40)) != 0))
    {
      v165 = v41;
      v43 = String.utf8CString.getter();
      v44 = sqlite3_prepare_v3(v42, (v43 + 32), -1, 0, &ppStmt, 0);

      v164 = v42;
      if (v44)
      {
        if (sqlite3_errmsg(v42))
        {

          v45 = String.init(cString:)();
          v47 = v46;
          defaultLogger()();

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v181 = v51;
            *v50 = 136446210;
            *(v50 + 4) = sub_100141FE4(v45, v47, &v181);
            _os_log_impl(&_mh_execute_header, v48, v49, "failed to prepare delete old signalmap statement %{public}s", v50, 0xCu);
            sub_10000BB78(v51);
          }

          v165(v24, v176);
          v181 = 0;
          v182 = 0xE000000000000000;
          _StringGuts.grow(_:)(50);

          v181 = 0xD000000000000030;
          v182 = 0x8000000100721A60;
          v52._countAndFlagsBits = v45;
          v52._object = v47;
          String.append(_:)(v52);

          v53 = v175[13];
          v174 = (v175 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v175 = v53;
          (v53)(v180, enum case for DIPError.Code.sqliteError(_:), v179);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v54 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1006BF520;
          v57 = v56 + v55;
          v58 = v57 + v54[14];
          v59 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v60 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v60 - 8) + 104))(v57, v59, v60);
          v61 = sqlite3_errcode(v164);
          *(v58 + 24) = &type metadata for Int32;
          *(v58 + 32) = &protocol witness table for Int32;
          *v58 = v61;
          sub_10003C9C0(v56);
          swift_setDeallocating();
          sub_10000BE18(v57, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_52;
      }

      if (sqlite3_step(ppStmt) != 101)
      {
        if (sqlite3_errmsg(v42))
        {

          v88 = String.init(cString:)();
          v90 = v89;
          defaultLogger()();

          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v181 = v94;
            *v93 = 136446210;
            *(v93 + 4) = sub_100141FE4(v88, v90, &v181);
            _os_log_impl(&_mh_execute_header, v91, v92, "failure deleting old signalmap: %{public}s", v93, 0xCu);
            sub_10000BB78(v94);
          }

          v165(v21, v176);
          v181 = 0;
          v182 = 0xE000000000000000;
          _StringGuts.grow(_:)(36);

          v181 = 0xD000000000000022;
          v182 = 0x800000010071F600;
          v95._countAndFlagsBits = v88;
          v95._object = v90;
          String.append(_:)(v95);

          v96 = v175[13];
          v174 = (v175 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v175 = v96;
          (v96)(v180, enum case for DIPError.Code.sqliteError(_:), v179);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v97 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v98 = (*(*v97 + 80) + 32) & ~*(*v97 + 80);
          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_1006BF520;
          v100 = v99 + v98;
          v101 = v100 + v97[14];
          v102 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v103 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v103 - 8) + 104))(v100, v102, v103);
          v104 = sqlite3_errcode(v164);
          *(v101 + 24) = &type metadata for Int32;
          *(v101 + 32) = &protocol witness table for Int32;
          *v101 = v104;
          sub_10003C9C0(v99);
          swift_setDeallocating();
          sub_10000BE18(v100, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_27;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      sqlite3_finalize(ppStmt);
      ppStmt = 0;
      v67 = String.utf8CString.getter();
      v68 = sqlite3_prepare_v3(v42, (v67 + 32), -1, 0, &ppStmt, 0);

      if (v68)
      {
        if (sqlite3_errmsg(v42))
        {

          v69 = String.init(cString:)();
          v71 = v70;
          v72 = v171;
          defaultLogger()();

          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v181 = v76;
            *v75 = 136446210;
            *(v75 + 4) = sub_100141FE4(v69, v71, &v181);
            _os_log_impl(&_mh_execute_header, v73, v74, "failed to prepare delete old signallabel statement %{public}s", v75, 0xCu);
            sub_10000BB78(v76);
          }

          v165(v72, v176);
          v181 = 0;
          v182 = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v77._countAndFlagsBits = 0xD000000000000032;
          v77._object = 0x8000000100721B30;
          String.append(_:)(v77);
          v78._countAndFlagsBits = v69;
          v78._object = v71;
          String.append(_:)(v78);

          v79 = v175[13];
          v174 = (v175 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v175 = v79;
          (v79)(v180, enum case for DIPError.Code.sqliteError(_:), v179);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v80 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v81 = (*(*v80 + 80) + 32) & ~*(*v80 + 80);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_1006BF520;
          v83 = v82 + v81;
          v84 = v83 + v80[14];
          v85 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v86 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v86 - 8) + 104))(v83, v85, v86);
          v87 = sqlite3_errcode(v164);
          *(v84 + 24) = &type metadata for Int32;
          *(v84 + 32) = &protocol witness table for Int32;
          *v84 = v87;
          sub_10003C9C0(v82);
          swift_setDeallocating();
          sub_10000BE18(v83, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_27;
        }

        goto LABEL_53;
      }

      if (sqlite3_step(ppStmt) == 101)
      {
        sqlite3_finalize(ppStmt);
        ppStmt = 0;
        v114 = String.utf8CString.getter();
        v115 = sqlite3_prepare_v3(v42, (v114 + 32), -1, 0, &ppStmt, 0);

        v116 = v175;
        if (v115)
        {
          if (sqlite3_errmsg(v42))
          {

            v117 = String.init(cString:)();
            v119 = v118;
            v120 = v169;
            defaultLogger()();

            v121 = Logger.logObject.getter();
            v122 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v121, v122))
            {
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v181 = v124;
              *v123 = 136446210;
              *(v123 + 4) = sub_100141FE4(v117, v119, &v181);
              _os_log_impl(&_mh_execute_header, v121, v122, "failed to prepare delete old signallabel statement %{public}s", v123, 0xCu);
              sub_10000BB78(v124);
            }

            v165(v120, v176);
            v181 = 0;
            v182 = 0xE000000000000000;
            _StringGuts.grow(_:)(52);
            v125._countAndFlagsBits = 0xD000000000000032;
            v125._object = 0x8000000100721B30;
            String.append(_:)(v125);
            v126._countAndFlagsBits = v117;
            v126._object = v119;
            String.append(_:)(v126);

            v127 = v175[13];
            v174 = (v175 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
            v175 = v127;
            (v127)(v180, enum case for DIPError.Code.sqliteError(_:), v179);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v128 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v129 = (*(*v128 + 80) + 32) & ~*(*v128 + 80);
            v130 = swift_allocObject();
            *(v130 + 16) = xmmword_1006BF520;
            v131 = v130 + v129;
            v132 = v131 + v128[14];
            v133 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v134 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v134 - 8) + 104))(v131, v133, v134);
            v135 = sqlite3_errcode(v164);
            *(v132 + 24) = &type metadata for Int32;
            *(v132 + 32) = &protocol witness table for Int32;
            *v132 = v135;
            sub_10003C9C0(v130);
            swift_setDeallocating();
            sub_10000BE18(v131, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            goto LABEL_27;
          }

          goto LABEL_55;
        }

        if (sqlite3_step(ppStmt) == 101)
        {

          sqlite3_finalize(ppStmt);
          ppStmt = 0;
          (v116[13])(v180, enum case for DIPError.Code.dbLimitReachedAndCleared(_:), v179);
          sub_1000402AC(_swiftEmptyArrayStorage);
          v154 = v173;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v155 = v177;
          swift_allocError();
          v156 = v174;
          (*(v174 + 16))(v157, v154, v155);
          v158 = v167;
          defaultLogger()();
          DIPRecordError(_:message:log:)();
          v165(v158, v176);
          (*(v156 + 8))(v154, v155);

          if (ppStmt)
          {
            sqlite3_finalize(ppStmt);
          }

          return;
        }

        if (!sqlite3_errmsg(v42))
        {
LABEL_56:
          __break(1u);
          return;
        }

        v136 = String.init(cString:)();
        v138 = v159;
        v139 = v168;
        defaultLogger()();

        v140 = Logger.logObject.getter();
        v160 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v140, v160))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v181 = v162;
          *v161 = 136446210;
          *(v161 + 4) = sub_100141FE4(v136, v138, &v181);
          _os_log_impl(&_mh_execute_header, v140, v160, "failure deleting old signallabel: %{public}s", v161, 0xCu);
          sub_10000BB78(v162);
        }
      }

      else
      {
        if (!sqlite3_errmsg(v42))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v136 = String.init(cString:)();
        v138 = v137;
        v139 = v170;
        defaultLogger()();

        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v181 = v143;
          *v142 = 136446210;
          *(v142 + 4) = sub_100141FE4(v136, v138, &v181);
          _os_log_impl(&_mh_execute_header, v140, v141, "failure deleting old signallabel: %{public}s", v142, 0xCu);
          sub_10000BB78(v143);
        }
      }

      v165(v139, v176);
      v181 = 0;
      v182 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v181 = 0xD000000000000022;
      v182 = 0x800000010071F600;
      v144._countAndFlagsBits = v136;
      v144._object = v138;
      String.append(_:)(v144);

      v145 = v175[13];
      v174 = (v175 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v175 = v145;
      (v145)(v180, enum case for DIPError.Code.sqliteError(_:), v179);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v146 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v147 = (*(*v146 + 80) + 32) & ~*(*v146 + 80);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_1006BF520;
      v149 = v148 + v147;
      v150 = v149 + v146[14];
      v151 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v152 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v152 - 8) + 104))(v149, v151, v152);
      v153 = sqlite3_errcode(v164);
      *(v150 + 24) = &type metadata for Int32;
      *(v150 + 32) = &protocol witness table for Int32;
      *v150 = v153;
      sub_10003C9C0(v148);
      swift_setDeallocating();
      sub_10000BE18(v149, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_27:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      if (ppStmt)
      {
        sqlite3_finalize(ppStmt);
      }

      v178 = 0x800000010071F430;
      v176 = 0x80000001007219D0;
      (v175)(v180, enum case for DIPError.Code.sqliteError(_:), v179);
      goto LABEL_30;
    }

    v113 = v175[13];
    v113(v180, enum case for DIPError.Code.databaseInaccessible(_:), v179);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v176 = 0x80000001007219D0;
    v178 = 0x800000010071F430;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v113(v180, enum case for DIPError.Code.sqliteError(_:), v179);
LABEL_30:
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v105 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v106 = (*(*v105 + 80) + 32) & ~*(*v105 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1006BF520;
    v108 = v107 + v106;
    v109 = (v108 + v105[14]);
    v110 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v111 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v111 - 8) + 104))(v108, v110, v111);
    swift_getErrorValue();
    v112 = dispatch thunk of Error._code.getter();
    v109[3] = &type metadata for Int;
    v109[4] = &protocol witness table for Int;
    *v109 = v112;
    sub_10003C9C0(v107);
    swift_setDeallocating();
    sub_10000BE18(v108, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  defaultLogger()();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "File is still less than max", v66, 2u);
  }

  (*(v178 + 8))(v11, v176);
}

const char *sub_10056E060(uint64_t a1, void *a2)
{
  v416 = a2;
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v406 = &v399 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v417 = v5;
  v418 = v6;
  v7 = __chkstk_darwin(v5);
  v400 = &v399 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v401 = &v399 - v10;
  v11 = __chkstk_darwin(v9);
  v402 = &v399 - v12;
  v13 = __chkstk_darwin(v11);
  v403 = &v399 - v14;
  v15 = __chkstk_darwin(v13);
  v404 = &v399 - v16;
  v17 = __chkstk_darwin(v15);
  v405 = &v399 - v18;
  v19 = __chkstk_darwin(v17);
  v408 = &v399 - v20;
  v21 = __chkstk_darwin(v19);
  v407 = &v399 - v22;
  v23 = __chkstk_darwin(v21);
  v410 = &v399 - v24;
  v25 = __chkstk_darwin(v23);
  v411 = &v399 - v26;
  v27 = __chkstk_darwin(v25);
  v412 = &v399 - v28;
  v29 = __chkstk_darwin(v27);
  v413 = &v399 - v30;
  v31 = __chkstk_darwin(v29);
  v414 = &v399 - v32;
  v33 = __chkstk_darwin(v31);
  v415 = &v399 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v399 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v399 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v399 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v399 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v399 - v48;
  __chkstk_darwin(v47);
  v51 = &v399 - v50;
  v52 = type metadata accessor for DIPError.Code();
  v53 = *(v52 - 8);
  v419 = v52;
  v420 = v53;
  __chkstk_darwin(v52);
  v421 = &v399 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v55 = *(a1 + 40);
  if (!v55)
  {
    sub_1005507F8();
    v55 = *(a1 + 40);
    if (!v55)
    {
      (*(v420 + 104))(v421, enum case for DIPError.Code.databaseInaccessible(_:), v419);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v56 = String.utf8CString.getter();
  v57 = sqlite3_prepare_v3(v55, (v56 + 32), -1, 0, &ppStmt, 0);

  v422 = v55;
  if (v57)
  {
    if (sqlite3_errmsg(v55))
    {
      v58 = String.init(cString:)();
      v60 = v59;
      defaultLogger()();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v423 = v64;
        *v63 = 136446210;
        *(v63 + 4) = sub_100141FE4(v58, v60, &v423);
        _os_log_impl(&_mh_execute_header, v61, v62, "coreidvd: failed to prepare insert statement %{public}s", v63, 0xCu);
        sub_10000BB78(v64);
      }

      (*(v418 + 8))(v51, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v65._countAndFlagsBits = 0xD00000000000003BLL;
      v65._object = 0x8000000100720480;
      String.append(_:)(v65);
      v66._countAndFlagsBits = v58;
      v66._object = v60;
      String.append(_:)(v66);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v67 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v68 = (*(*v67 + 80) + 32) & ~*(*v67 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1006BF520;
      v70 = v69 + v68;
      v71 = v70 + v67[14];
      v72 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v73 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v73 - 8) + 104))(v70, v72, v73);
      v74 = sqlite3_errcode(v422);
      *(v71 + 24) = &type metadata for Int32;
      *(v71 + 32) = &protocol witness table for Int32;
      *v71 = v74;
      sub_10003C9C0(v69);
      swift_setDeallocating();
      sub_10000BE18(v70, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_116;
  }

  v75 = ppStmt;
  v76 = v416;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v77 = qword_1008823D0;
  v78 = String.utf8CString.getter();
  v79 = sqlite3_bind_text(v75, 1, (v78 + 32), -1, v77);

  if (v79)
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v81 = String.init(cString:)();
      v83 = v82;
      defaultLogger()();

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v423 = v87;
        *v86 = 136315138;
        *(v86 + 4) = sub_100141FE4(v81, v83, &v423);
        _os_log_impl(&_mh_execute_header, v84, v85, "coreidvd: failure binding workflowID: %s", v86, 0xCu);
        sub_10000BB78(v87);
      }

      (*(v418 + 8))(v49, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v423 = 0xD00000000000002BLL;
      v424 = 0x80000001007202D0;
      v88._countAndFlagsBits = v81;
      v88._object = v83;
      String.append(_:)(v88);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v89 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v90 = (*(*v89 + 80) + 32) & ~*(*v89 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1006BF520;
      v92 = v91 + v90;
      v93 = v92 + v89[14];
      v94 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v95 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v95 - 8) + 104))(v92, v94, v95);
      v96 = sqlite3_errcode(v422);
      *(v93 + 24) = &type metadata for Int32;
      *(v93 + 32) = &protocol witness table for Int32;
      *v93 = v96;
      sub_10003C9C0(v91);
      swift_setDeallocating();
      sub_10000BE18(v92, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_121;
  }

  v97 = type metadata accessor for DIPPregeneratedAssessment(0);
  Date.timeIntervalSinceReferenceDate.getter();
  if (sqlite3_bind_double(ppStmt, 2, v98))
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v99 = String.init(cString:)();
      v101 = v100;
      defaultLogger()();

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v423 = v105;
        *v104 = 136446210;
        *(v104 + 4) = sub_100141FE4(v99, v101, &v423);
        _os_log_impl(&_mh_execute_header, v102, v103, "coreidvd: failure binding createdAt: %{public}s", v104, 0xCu);
        sub_10000BB78(v105);
      }

      (*(v418 + 8))(v46, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v423 = 0xD00000000000002ALL;
      v424 = 0x80000001007204C0;
      v106._countAndFlagsBits = v99;
      v106._object = v101;
      String.append(_:)(v106);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v107 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v108 = (*(*v107 + 80) + 32) & ~*(*v107 + 80);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_1006BF520;
      v110 = v109 + v108;
      v111 = v110 + v107[14];
      v112 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v113 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v113 - 8) + 104))(v110, v112, v113);
      v114 = sqlite3_errcode(v422);
      *(v111 + 24) = &type metadata for Int32;
      *(v111 + 32) = &protocol witness table for Int32;
      *v111 = v114;
      sub_10003C9C0(v109);
      swift_setDeallocating();
      sub_10000BE18(v110, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v115 = ppStmt;
  v116 = String.utf8CString.getter();
  LODWORD(v115) = sqlite3_bind_text(v115, 3, (v116 + 32), -1, v77);

  if (v115)
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v117 = String.init(cString:)();
      v119 = v118;
      defaultLogger()();

      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v423 = v123;
        *v122 = 136446210;
        *(v122 + 4) = sub_100141FE4(v117, v119, &v423);
        _os_log_impl(&_mh_execute_header, v120, v121, "coreidvd: failure binding assessment: %{public}s", v122, 0xCu);
        sub_10000BB78(v123);
      }

      (*(v418 + 8))(v43, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v423 = 0xD00000000000002BLL;
      v424 = 0x80000001007204F0;
      v124._countAndFlagsBits = v117;
      v124._object = v119;
      String.append(_:)(v124);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v125 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v126 = (*(*v125 + 80) + 32) & ~*(*v125 + 80);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_1006BF520;
      v128 = v127 + v126;
      v129 = v128 + v125[14];
      v130 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v131 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v131 - 8) + 104))(v128, v130, v131);
      v132 = sqlite3_errcode(v422);
      *(v129 + 24) = &type metadata for Int32;
      *(v129 + 32) = &protocol witness table for Int32;
      *v129 = v132;
      sub_10003C9C0(v127);
      swift_setDeallocating();
      sub_10000BE18(v128, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_122;
  }

  if (*(v76 + v97[7] + 8))
  {
    v133 = ppStmt;
    v134 = String.utf8CString.getter();
    LODWORD(v133) = sqlite3_bind_text(v133, 4, (v134 + 32), -1, v77);

    if (v133)
    {
      result = sqlite3_errmsg(v422);
      if (result)
      {
        v135 = String.init(cString:)();
        v137 = v136;
        defaultLogger()();

        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v423 = v141;
          *v140 = 136446210;
          *(v140 + 4) = sub_100141FE4(v135, v137, &v423);
          _os_log_impl(&_mh_execute_header, v138, v139, "coreidvd: failure binding training data: %{public}s", v140, 0xCu);
          sub_10000BB78(v141);
        }

        (*(v418 + 8))(v40, v417);
        v423 = 0;
        v424 = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v423 = 0xD00000000000002ELL;
        v424 = 0x8000000100720710;
        v142._countAndFlagsBits = v135;
        v142._object = v137;
        String.append(_:)(v142);

        (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v143 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v144 = (*(*v143 + 80) + 32) & ~*(*v143 + 80);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_1006BF520;
        v146 = v145 + v144;
        v147 = v146 + v143[14];
        v148 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v149 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v149 - 8) + 104))(v146, v148, v149);
        v150 = sqlite3_errcode(v422);
        *(v147 + 24) = &type metadata for Int32;
        *(v147 + 32) = &protocol witness table for Int32;
        *v147 = v150;
        sub_10003C9C0(v145);
        swift_setDeallocating();
        sub_10000BE18(v146, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_125;
    }
  }

  else if (sqlite3_bind_null(ppStmt, 4))
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v151 = String.init(cString:)();
      v153 = v152;
      defaultLogger()();

      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v423 = v157;
        *v156 = 136446210;
        *(v156 + 4) = sub_100141FE4(v151, v153, &v423);
        _os_log_impl(&_mh_execute_header, v154, v155, "coreidvd: failure binding null otd_request: %{public}s", v156, 0xCu);
        sub_10000BB78(v157);
      }

      (*(v418 + 8))(v37, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v423 = 0xD00000000000002CLL;
      v424 = 0x8000000100720520;
      v158._countAndFlagsBits = v151;
      v158._object = v153;
      String.append(_:)(v158);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v159 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v160 = (*(*v159 + 80) + 32) & ~*(*v159 + 80);
      v161 = swift_allocObject();
      *(v161 + 16) = xmmword_1006BF520;
      v162 = v161 + v160;
      v163 = v162 + v159[14];
      v164 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v165 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v165 - 8) + 104))(v162, v164, v165);
      v166 = sqlite3_errcode(v422);
      *(v163 + 24) = &type metadata for Int32;
      *(v163 + 32) = &protocol witness table for Int32;
      *v163 = v166;
      sub_10003C9C0(v161);
      swift_setDeallocating();
      sub_10000BE18(v162, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_126;
  }

  v167 = ppStmt;
  v168 = String.utf8CString.getter();
  LODWORD(v167) = sqlite3_bind_text(v167, 5, (v168 + 32), -1, v77);

  if (v167)
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v169 = String.init(cString:)();
      v171 = v170;
      v172 = v415;
      defaultLogger()();

      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v423 = v176;
        *v175 = 136446210;
        *(v175 + 4) = sub_100141FE4(v169, v171, &v423);
        _os_log_impl(&_mh_execute_header, v173, v174, "coreidvd: failure binding assessment guid: %{public}s", v175, 0xCu);
        sub_10000BB78(v176);
      }

      (*(v418 + 8))(v172, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v423 = 0xD000000000000030;
      v424 = 0x8000000100720550;
      v177._countAndFlagsBits = v169;
      v177._object = v171;
      String.append(_:)(v177);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v178 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v179 = (*(*v178 + 80) + 32) & ~*(*v178 + 80);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_1006BF520;
      v181 = v180 + v179;
      v182 = v181 + v178[14];
      v183 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v184 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v184 - 8) + 104))(v181, v183, v184);
      v185 = sqlite3_errcode(v422);
      *(v182 + 24) = &type metadata for Int32;
      *(v182 + 32) = &protocol witness table for Int32;
      *v182 = v185;
      sub_10003C9C0(v180);
      swift_setDeallocating();
      sub_10000BE18(v181, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_127;
  }

  v186 = ppStmt;
  v187 = String.utf8CString.getter();
  LODWORD(v186) = sqlite3_bind_text(v186, 6, (v187 + 32), -1, v77);

  if (v186)
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v188 = String.init(cString:)();
      v190 = v189;
      v191 = v414;
      defaultLogger()();

      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v423 = v195;
        *v194 = 136446210;
        *(v194 + 4) = sub_100141FE4(v188, v190, &v423);
        _os_log_impl(&_mh_execute_header, v192, v193, "coreidvd: failure binding assessment guid seeds: %{public}s", v194, 0xCu);
        sub_10000BB78(v195);
      }

      (*(v418 + 8))(v191, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v196._countAndFlagsBits = 0xD000000000000036;
      v196._object = 0x8000000100720590;
      String.append(_:)(v196);
      v197._countAndFlagsBits = v188;
      v197._object = v190;
      String.append(_:)(v197);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v198 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v199 = (*(*v198 + 80) + 32) & ~*(*v198 + 80);
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_1006BF520;
      v201 = v200 + v199;
      v202 = v201 + v198[14];
      v203 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v204 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v204 - 8) + 104))(v201, v203, v204);
      v205 = sqlite3_errcode(v422);
      *(v202 + 24) = &type metadata for Int32;
      *(v202 + 32) = &protocol witness table for Int32;
      *v202 = v205;
      sub_10003C9C0(v200);
      swift_setDeallocating();
      sub_10000BE18(v201, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_128;
  }

  v206 = ppStmt;
  v207 = String.utf8CString.getter();
  LODWORD(v206) = sqlite3_bind_text(v206, 7, (v207 + 32), -1, v77);

  if (v206)
  {
    result = sqlite3_errmsg(v422);
    if (!result)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v208 = String.init(cString:)();
    v210 = v209;
    v211 = v413;
    defaultLogger()();

    v212 = Logger.logObject.getter();
    v213 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v423 = v215;
      *v214 = 136446210;
      *(v214 + 4) = sub_100141FE4(v208, v210, &v423);
      _os_log_impl(&_mh_execute_header, v212, v213, "coreidvd: failure binding training guid: %{public}s", v214, 0xCu);
      sub_10000BB78(v215);
    }

LABEL_54:

    (*(v418 + 8))(v211, v417);
    v423 = 0;
    v424 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v423 = 0xD00000000000002BLL;
    v424 = 0x80000001007204F0;
    v216._countAndFlagsBits = v208;
    v216._object = v210;
    String.append(_:)(v216);

    (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v217 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v218 = (*(*v217 + 80) + 32) & ~*(*v217 + 80);
    v219 = swift_allocObject();
    *(v219 + 16) = xmmword_1006BF520;
    v220 = v219 + v218;
    v221 = v220 + v217[14];
    v222 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v223 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v223 - 8) + 104))(v220, v222, v223);
    v224 = sqlite3_errcode(v422);
    *(v221 + 24) = &type metadata for Int32;
    *(v221 + 32) = &protocol witness table for Int32;
    *v221 = v224;
    sub_10003C9C0(v219);
    swift_setDeallocating();
    sub_10000BE18(v220, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_27:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

  v225 = ppStmt;
  v226 = String.utf8CString.getter();
  LODWORD(v225) = sqlite3_bind_text(v225, 8, (v226 + 32), -1, v77);

  if (v225)
  {
    result = sqlite3_errmsg(v422);
    if (!result)
    {
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v208 = String.init(cString:)();
    v210 = v227;
    v211 = v412;
    defaultLogger()();

    v212 = Logger.logObject.getter();
    v228 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v212, v228))
    {
      v229 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v423 = v230;
      *v229 = 136446210;
      *(v229 + 4) = sub_100141FE4(v208, v210, &v423);
      _os_log_impl(&_mh_execute_header, v212, v228, "coreidvd: failure binding training guid seeds: %{public}s", v229, 0xCu);
      sub_10000BB78(v230);
    }

    goto LABEL_54;
  }

  v231 = ppStmt;
  v232 = String.utf8CString.getter();
  LODWORD(v231) = sqlite3_bind_text(v231, 9, (v232 + 32), -1, v77);

  if (v231)
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v233 = String.init(cString:)();
      v235 = v234;
      v236 = v411;
      defaultLogger()();

      v237 = Logger.logObject.getter();
      v238 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        v423 = v240;
        *v239 = 136446210;
        *(v239 + 4) = sub_100141FE4(v233, v235, &v423);
        _os_log_impl(&_mh_execute_header, v237, v238, "coreidvd: failure binding training signal id: %{public}s", v239, 0xCu);
        sub_10000BB78(v240);
      }

      (*(v418 + 8))(v236, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v241._countAndFlagsBits = 0xD000000000000033;
      v241._object = 0x80000001007205D0;
      String.append(_:)(v241);
      v242._countAndFlagsBits = v233;
      v242._object = v235;
      String.append(_:)(v242);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v243 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v244 = (*(*v243 + 80) + 32) & ~*(*v243 + 80);
      v245 = swift_allocObject();
      *(v245 + 16) = xmmword_1006BF520;
      v246 = v245 + v244;
      v247 = v246 + v243[14];
      v248 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v249 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v249 - 8) + 104))(v246, v248, v249);
      v250 = sqlite3_errcode(v422);
      *(v247 + 24) = &type metadata for Int32;
      *(v247 + 32) = &protocol witness table for Int32;
      *v247 = v250;
      sub_10003C9C0(v245);
      swift_setDeallocating();
      sub_10000BE18(v246, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_131;
  }

  v251 = *(v76 + v97[13]);
  if (v251 < 0xFFFFFFFF80000000)
  {
    goto LABEL_123;
  }

  if (v251 > 0x7FFFFFFF)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v252 = v97;
  if (sqlite3_bind_int(ppStmt, 10, v251))
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v253 = String.init(cString:)();
      v255 = v254;
      defaultLogger()();

      v256 = Logger.logObject.getter();
      v257 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v256, v257))
      {
        v258 = swift_slowAlloc();
        v259 = swift_slowAlloc();
        v423 = v259;
        *v258 = 136446210;
        *(v258 + 4) = sub_100141FE4(v253, v255, &v423);
        _os_log_impl(&_mh_execute_header, v256, v257, "coreidvd: failure binding digestIndex: %{public}s", v258, 0xCu);
        sub_10000BB78(v259);
      }

      (*(v418 + 8))(v410, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v423 = 0xD00000000000002CLL;
      v424 = 0x8000000100720610;
      v260._countAndFlagsBits = v253;
      v260._object = v255;
      String.append(_:)(v260);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v261 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v262 = (*(*v261 + 80) + 32) & ~*(*v261 + 80);
      v263 = swift_allocObject();
      *(v263 + 16) = xmmword_1006BF520;
      v264 = v263 + v262;
      v265 = v264 + v261[14];
      v266 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v267 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v267 - 8) + 104))(v264, v266, v267);
      v268 = sqlite3_errcode(v422);
      *(v265 + 24) = &type metadata for Int32;
      *(v265 + 32) = &protocol witness table for Int32;
      *v265 = v268;
      sub_10003C9C0(v263);
      swift_setDeallocating();
      sub_10000BE18(v264, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_132;
  }

  v269 = *(v416 + v97[14]);
  if (v269)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v423 = v269;
    sub_10057612C();
    v270 = v409;
    v271 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v409 = v270;
    if (v270)
    {

      return sqlite3_finalize(ppStmt);
    }

    v289 = v271;
    v290 = v272;

    v423 = v289;
    v424 = v290;
    static String.Encoding.utf8.getter();
    sub_10053B880();
    String.init<A>(bytes:encoding:)();
    v291 = ppStmt;
    if (v292)
    {
      v293 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v293 = 0;
    }

    v294 = sqlite3_bind_text(v291, 11, v293, -1, v77);
    swift_unknownObjectRelease();
    if (v294)
    {
      result = sqlite3_errmsg(v422);
      if (result)
      {

        v295 = String.init(cString:)();
        v297 = v296;
        defaultLogger()();

        v298 = Logger.logObject.getter();
        v299 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          v423 = v301;
          *v300 = 136446210;
          *(v300 + 4) = sub_100141FE4(v295, v297, &v423);
          _os_log_impl(&_mh_execute_header, v298, v299, "coreidvd: failure binding bindings: %{public}s", v300, 0xCu);
          sub_10000BB78(v301);
        }

        (*(v418 + 8))(v407, v417);
        v423 = 0;
        v424 = 0xE000000000000000;
        _StringGuts.grow(_:)(43);

        v423 = 0xD000000000000029;
        v424 = 0x8000000100720640;
        v302._countAndFlagsBits = v295;
        v302._object = v297;
        String.append(_:)(v302);

        v417 = v424;
        v418 = v423;
        (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v303 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v304 = (*(*v303 + 80) + 32) & ~*(*v303 + 80);
        v305 = swift_allocObject();
        *(v305 + 16) = xmmword_1006BF520;
        v306 = v305 + v304;
        v307 = v306 + v303[14];
        v308 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v309 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v309 - 8) + 104))(v306, v308, v309);
        v310 = sqlite3_errcode(v422);
        *(v307 + 24) = &type metadata for Int32;
        *(v307 + 32) = &protocol witness table for Int32;
        *v307 = v310;
        sub_10003C9C0(v305);
        swift_setDeallocating();
        sub_10000BE18(v306, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10000B90C(v289, v290);
        return sqlite3_finalize(ppStmt);
      }

      goto LABEL_134;
    }

    sub_10000B90C(v289, v290);
  }

  else if (sqlite3_bind_null(ppStmt, 11))
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v273 = String.init(cString:)();
      v275 = v274;
      defaultLogger()();

      v276 = Logger.logObject.getter();
      v277 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v276, v277))
      {
        v278 = swift_slowAlloc();
        v279 = swift_slowAlloc();
        v423 = v279;
        *v278 = 136446210;
        *(v278 + 4) = sub_100141FE4(v273, v275, &v423);
        _os_log_impl(&_mh_execute_header, v276, v277, "coreidvd: failure binding null bindings: %{public}s", v278, 0xCu);
        sub_10000BB78(v279);
      }

      (*(v418 + 8))(v408, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v423 = 0xD000000000000029;
      v424 = 0x8000000100720640;
      v280._countAndFlagsBits = v273;
      v280._object = v275;
      String.append(_:)(v280);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v281 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v282 = (*(*v281 + 80) + 32) & ~*(*v281 + 80);
      v283 = swift_allocObject();
      *(v283 + 16) = xmmword_1006BF520;
      v284 = v283 + v282;
      v285 = v284 + v281[14];
      v286 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v287 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v287 - 8) + 104))(v284, v286, v287);
      v288 = sqlite3_errcode(v422);
      *(v285 + 24) = &type metadata for Int32;
      *(v285 + 32) = &protocol witness table for Int32;
      *v285 = v288;
      sub_10003C9C0(v283);
      swift_setDeallocating();
      sub_10000BE18(v284, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_133;
  }

  if (*(v416 + v252[15] + 8))
  {
    v311 = ppStmt;
    v312 = String.utf8CString.getter();
    LODWORD(v311) = sqlite3_bind_text(v311, 12, (v312 + 32), -1, v77);

    if (v311)
    {
      result = sqlite3_errmsg(v422);
      if (result)
      {
        v313 = String.init(cString:)();
        v315 = v314;
        defaultLogger()();

        v316 = Logger.logObject.getter();
        v317 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v316, v317))
        {
          v318 = swift_slowAlloc();
          v319 = swift_slowAlloc();
          v423 = v319;
          *v318 = 136446210;
          *(v318 + 4) = sub_100141FE4(v313, v315, &v423);
          _os_log_impl(&_mh_execute_header, v316, v317, "coreidvd: failure binding encryptedTSID: %{public}s", v318, 0xCu);
          sub_10000BB78(v319);
        }

        (*(v418 + 8))(v405, v417);
        v423 = 0;
        v424 = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v423 = 0xD00000000000002ELL;
        v424 = 0x8000000100720670;
        v320._countAndFlagsBits = v313;
        v320._object = v315;
        String.append(_:)(v320);

        (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v321 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v322 = (*(*v321 + 80) + 32) & ~*(*v321 + 80);
        v323 = swift_allocObject();
        *(v323 + 16) = xmmword_1006BF520;
        v324 = v323 + v322;
        v325 = v324 + v321[14];
        v326 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v327 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v327 - 8) + 104))(v324, v326, v327);
        v328 = sqlite3_errcode(v422);
        *(v325 + 24) = &type metadata for Int32;
        *(v325 + 32) = &protocol witness table for Int32;
        *v325 = v328;
        sub_10003C9C0(v323);
        swift_setDeallocating();
        sub_10000BE18(v324, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_135;
    }
  }

  else if (sqlite3_bind_null(ppStmt, 12))
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v329 = String.init(cString:)();
      v331 = v330;
      defaultLogger()();

      v332 = Logger.logObject.getter();
      v333 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v332, v333))
      {
        v334 = swift_slowAlloc();
        v335 = swift_slowAlloc();
        v423 = v335;
        *v334 = 136446210;
        *(v334 + 4) = sub_100141FE4(v329, v331, &v423);
        _os_log_impl(&_mh_execute_header, v332, v333, "coreidvd: failure binding null encryptedTSID: %{public}s", v334, 0xCu);
        sub_10000BB78(v335);
      }

      (*(v418 + 8))(v404, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v423 = 0xD00000000000002ELL;
      v424 = 0x8000000100720670;
      v336._countAndFlagsBits = v329;
      v336._object = v331;
      String.append(_:)(v336);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v337 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v338 = (*(*v337 + 80) + 32) & ~*(*v337 + 80);
      v339 = swift_allocObject();
      *(v339 + 16) = xmmword_1006BF520;
      v340 = v339 + v338;
      v341 = v340 + v337[14];
      v342 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v343 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v343 - 8) + 104))(v340, v342, v343);
      v344 = sqlite3_errcode(v422);
      *(v341 + 24) = &type metadata for Int32;
      *(v341 + 32) = &protocol witness table for Int32;
      *v341 = v344;
      sub_10003C9C0(v339);
      swift_setDeallocating();
      sub_10000BE18(v340, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_136;
  }

  if (*(v416 + v252[16] + 8))
  {
    v345 = ppStmt;
    v346 = String.utf8CString.getter();
    LODWORD(v345) = sqlite3_bind_text(v345, 13, (v346 + 32), -1, v77);

    if (v345)
    {
      result = sqlite3_errmsg(v422);
      if (result)
      {
        v347 = String.init(cString:)();
        v349 = v348;
        defaultLogger()();

        v350 = Logger.logObject.getter();
        v351 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v350, v351))
        {
          v352 = swift_slowAlloc();
          v353 = swift_slowAlloc();
          v423 = v353;
          *v352 = 136446210;
          *(v352 + 4) = sub_100141FE4(v347, v349, &v423);
          _os_log_impl(&_mh_execute_header, v350, v351, "coreidvd: failure binding encryptedAGUID: %{public}s", v352, 0xCu);
          sub_10000BB78(v353);
        }

        (*(v418 + 8))(v403, v417);
        v423 = 0;
        v424 = 0xE000000000000000;
        _StringGuts.grow(_:)(49);

        v423 = 0xD00000000000002FLL;
        v424 = 0x80000001007206A0;
        v354._countAndFlagsBits = v347;
        v354._object = v349;
        String.append(_:)(v354);

        (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v355 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v356 = (*(*v355 + 80) + 32) & ~*(*v355 + 80);
        v357 = swift_allocObject();
        *(v357 + 16) = xmmword_1006BF520;
        v358 = v357 + v356;
        v359 = v358 + v355[14];
        v360 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v361 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v361 - 8) + 104))(v358, v360, v361);
        v362 = sqlite3_errcode(v422);
        *(v359 + 24) = &type metadata for Int32;
        *(v359 + 32) = &protocol witness table for Int32;
        *v359 = v362;
        sub_10003C9C0(v357);
        swift_setDeallocating();
        sub_10000BE18(v358, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_137;
    }
  }

  else if (sqlite3_bind_null(ppStmt, 13))
  {
    result = sqlite3_errmsg(v422);
    if (result)
    {
      v363 = String.init(cString:)();
      v365 = v364;
      defaultLogger()();

      v366 = Logger.logObject.getter();
      v367 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v366, v367))
      {
        v368 = swift_slowAlloc();
        v369 = swift_slowAlloc();
        v423 = v369;
        *v368 = 136446210;
        *(v368 + 4) = sub_100141FE4(v363, v365, &v423);
        _os_log_impl(&_mh_execute_header, v366, v367, "coreidvd: failure binding null encryptedAGUID: %{public}s", v368, 0xCu);
        sub_10000BB78(v369);
      }

      (*(v418 + 8))(v402, v417);
      v423 = 0;
      v424 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      v423 = 0xD00000000000002FLL;
      v424 = 0x80000001007206A0;
      v370._countAndFlagsBits = v363;
      v370._object = v365;
      String.append(_:)(v370);

      (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v371 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v372 = (*(*v371 + 80) + 32) & ~*(*v371 + 80);
      v373 = swift_allocObject();
      *(v373 + 16) = xmmword_1006BF520;
      v374 = v373 + v372;
      v375 = v374 + v371[14];
      v376 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v377 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v377 - 8) + 104))(v374, v376, v377);
      v378 = sqlite3_errcode(v422);
      *(v375 + 24) = &type metadata for Int32;
      *(v375 + 32) = &protocol witness table for Int32;
      *v375 = v378;
      sub_10003C9C0(v373);
      swift_setDeallocating();
      sub_10000BE18(v374, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_138;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();
    v379 = Logger.logObject.getter();
    v380 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v379, v380))
    {
      v381 = swift_slowAlloc();
      *v381 = 0;
      _os_log_impl(&_mh_execute_header, v379, v380, "coredivd: Stored new pregenerated assessment", v381, 2u);
    }

    (*(v418 + 8))(v400, v417);
    return sqlite3_finalize(ppStmt);
  }

LABEL_116:
  result = sqlite3_errmsg(v422);
  if (result)
  {
    v382 = String.init(cString:)();
    v384 = v383;
    defaultLogger()();

    v385 = Logger.logObject.getter();
    v386 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v385, v386))
    {
      v387 = swift_slowAlloc();
      v388 = swift_slowAlloc();
      v423 = v388;
      *v387 = 136446210;
      *(v387 + 4) = sub_100141FE4(v382, v384, &v423);
      _os_log_impl(&_mh_execute_header, v385, v386, "coreidvd: failure inserting pregenerated assessment to sqlite: %{public}s", v387, 0xCu);
      sub_10000BB78(v388);
    }

    (*(v418 + 8))(v401, v417);
    v423 = 0;
    v424 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v389._countAndFlagsBits = 0xD00000000000003BLL;
    v389._object = 0x80000001007206D0;
    String.append(_:)(v389);
    v390._countAndFlagsBits = v382;
    v390._object = v384;
    String.append(_:)(v390);

    (*(v420 + 104))(v421, enum case for DIPError.Code.sqliteError(_:), v419);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v391 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v392 = (*(*v391 + 80) + 32) & ~*(*v391 + 80);
    v393 = swift_allocObject();
    *(v393 + 16) = xmmword_1006BF520;
    v394 = v393 + v392;
    v395 = v394 + v391[14];
    v396 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v397 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v397 - 8) + 104))(v394, v396, v397);
    v398 = sqlite3_errcode(v422);
    *(v395 + 24) = &type metadata for Int32;
    *(v395 + 32) = &protocol witness table for Int32;
    *v395 = v398;
    sub_10003C9C0(v393);
    swift_setDeallocating();
    sub_10000BE18(v394, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_27;
  }

LABEL_139:
  __break(1u);
  return result;
}

const char *sub_100572B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v141 = a4;
  v136 = a2;
  v137 = a3;
  v120 = type metadata accessor for Logger();
  v119 = *(v120 - 8);
  v5 = __chkstk_darwin(v120);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v113 - v9;
  v11 = __chkstk_darwin(v8);
  v116 = &v113 - v12;
  __chkstk_darwin(v11);
  v115 = &v113 - v13;
  v14 = type metadata accessor for DIPPregeneratedAssessment(0);
  v124 = *(v14 - 1);
  __chkstk_darwin(v14);
  v16 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = type metadata accessor for String.Encoding();
  v135 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Date();
  v18 = *(v140 - 8);
  __chkstk_darwin(v140);
  v142 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for DIPError.Code();
  v20 = *(v138 - 8);
  __chkstk_darwin(v138);
  v139 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v22 = *(a1 + 40);
  if (!v22)
  {
    sub_1005507F8();
    v22 = *(a1 + 40);
    if (!v22)
    {
      (*(v20 + 104))(v139, enum case for DIPError.Code.databaseInaccessible(_:), v138);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_15:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v23 = String.utf8CString.getter();
  v24 = sqlite3_prepare_v3(v22, (v23 + 32), -1, 0, &ppStmt, 0);

  if (!v24)
  {
    v43 = ppStmt;
    if (qword_100832CA0 != -1)
    {
      swift_once();
    }

    v44 = qword_1008823D0;
    v45 = String.utf8CString.getter();
    v46 = sqlite3_bind_text(v43, 1, (v45 + 32), -1, v44);

    if (v46)
    {
      result = sqlite3_errmsg(v22);
      if (!result)
      {
        goto LABEL_63;
      }

      v47 = String.init(cString:)();
      v49 = v48;
      defaultLogger()();

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v143[0] = v53;
        *v52 = 136446210;
        v54 = sub_100141FE4(v47, v49, v143);

        *(v52 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "coreidvd: failure binding workflowID: %{public}s", v52, 0xCu);
        sub_10000BB78(v53);
      }

      else
      {
      }

      (*(v119 + 8))(v10, v120);
      (*(v20 + 104))(v139, enum case for DIPError.Code.internalError(_:), v138);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return sqlite3_finalize(ppStmt);
    }

    if (sqlite3_step(ppStmt) == 100)
    {
      v114 = (v135 + 8);
      v117 = (v18 + 16);
      v118 = (v18 + 8);
      do
      {
        if (!sqlite3_column_text(ppStmt, 0))
        {
          goto LABEL_58;
        }

        v55 = String.init(cString:)();
        v57 = v56;
        sqlite3_column_double(ppStmt, 1);
        Date.init(timeIntervalSinceReferenceDate:)();
        if (!sqlite3_column_text(ppStmt, 2))
        {
          goto LABEL_59;
        }

        v58 = String.init(cString:)();
        v60 = v59;
        if (sqlite3_column_text(ppStmt, 3))
        {
          v131 = String.init(cString:)();
          v62 = v61;
        }

        else
        {
          v131 = 0;
          v62 = 0;
        }

        if (!sqlite3_column_text(ppStmt, 4))
        {
          goto LABEL_56;
        }

        v130 = String.init(cString:)();
        v139 = v63;
        if (!sqlite3_column_text(ppStmt, 5))
        {
          goto LABEL_57;
        }

        v129 = String.init(cString:)();
        v138 = v64;
        if (!sqlite3_column_text(ppStmt, 6))
        {
          __break(1u);
LABEL_56:
          __break(1u);
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
        }

        v128 = v58;
        v137 = v62;
        v65 = String.init(cString:)();
        v136 = v66;
        if (!sqlite3_column_text(ppStmt, 7))
        {
          goto LABEL_60;
        }

        v67 = String.init(cString:)();
        v135 = v68;
        if (!sqlite3_column_text(ppStmt, 8))
        {
          goto LABEL_61;
        }

        v133 = v60;
        v134 = v57;
        v127 = String.init(cString:)();
        v132 = v69;
        v126 = sqlite3_column_int(ppStmt, 9);
        if (sqlite3_column_text(ppStmt, 10) && (String.init(cString:)(), v70 = v121, static String.Encoding.utf8.getter(), v125 = String.data(using:allowLossyConversion:)(), v72 = v71, , (*v114)(v70, v122), v72 >> 60 != 15))
        {
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_1005760D8();
          v73 = v125;
          v74 = v123;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v123 = v74;
          if (v74)
          {
            (*v118)(v142, v140);
            sub_10000BD94(v73, v72);

            return sqlite3_finalize(ppStmt);
          }

          sub_10000BD94(v73, v72);

          v125 = v143[0];
        }

        else
        {
          v125 = 0;
        }

        if (sqlite3_column_text(ppStmt, 11))
        {
          v75 = String.init(cString:)();
          v77 = v76;
        }

        else
        {
          v75 = 0;
          v77 = 0;
        }

        if (sqlite3_column_text(ppStmt, 12))
        {
          v78 = String.init(cString:)();
          v80 = v79;
        }

        else
        {
          v78 = 0;
          v80 = 0;
        }

        (*v117)(v16 + v14[5], v142, v140);
        v81 = v126;
        v82 = v134;
        *v16 = v55;
        v16[1] = v82;
        v83 = (v16 + v14[6]);
        v84 = v133;
        *v83 = v128;
        v83[1] = v84;
        v85 = (v16 + v14[7]);
        v86 = v137;
        *v85 = v131;
        v85[1] = v86;
        v87 = (v16 + v14[8]);
        v88 = v139;
        *v87 = v130;
        v87[1] = v88;
        v89 = (v16 + v14[9]);
        v90 = v138;
        *v89 = v129;
        v89[1] = v90;
        v91 = (v16 + v14[10]);
        v92 = v135;
        v93 = v136;
        *v91 = v65;
        v91[1] = v93;
        v94 = (v16 + v14[11]);
        *v94 = v67;
        v94[1] = v92;
        v95 = (v16 + v14[12]);
        v96 = v132;
        *v95 = v127;
        v95[1] = v96;
        *(v16 + v14[13]) = v81;
        *(v16 + v14[14]) = v125;
        v97 = (v16 + v14[15]);
        *v97 = v75;
        v97[1] = v77;
        v98 = (v16 + v14[16]);
        *v98 = v78;
        v98[1] = v80;
        v99 = v141;
        v100 = *v141;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v99 = v100;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v100 = sub_1003C6774(0, v100[2] + 1, 1, v100);
          *v141 = v100;
        }

        v103 = v100[2];
        v102 = v100[3];
        if (v103 >= v102 >> 1)
        {
          v105 = sub_1003C6774((v102 > 1), v103 + 1, 1, v100);
          *v141 = v105;
        }

        (*v118)(v142, v140);
        v104 = *v141;
        *(v104 + 16) = v103 + 1;
        sub_100576224(v16, v104 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v103, type metadata accessor for DIPPregeneratedAssessment);
      }

      while (sqlite3_step(ppStmt) == 100);
    }

    if (*(*v141 + 16))
    {
      v106 = v116;
      defaultLogger()();
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        v110 = "found pre-generated assessments";
LABEL_51:
        _os_log_impl(&_mh_execute_header, v107, v108, v110, v109, 2u);
      }
    }

    else
    {
      v106 = v115;
      defaultLogger()();
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        v110 = "no pre-generated assessment was found";
        goto LABEL_51;
      }
    }

    v111 = v120;
    v112 = v119;

    (*(v112 + 8))(v106, v111);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v22);
  if (result)
  {
    v26 = String.init(cString:)();
    v28 = v27;
    defaultLogger()();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v143[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_100141FE4(v26, v28, v143);
      _os_log_impl(&_mh_execute_header, v29, v30, "coreidvd: failed to prepare select statement: %{public}s", v31, 0xCu);
      sub_10000BB78(v32);
    }

    (*(v119 + 8))(v7, v120);
    v143[0] = 0;
    v143[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v33._countAndFlagsBits = 0xD000000000000043;
    v33._object = 0x8000000100720120;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v26;
    v34._object = v28;
    String.append(_:)(v34);

    v142 = v143[0];
    (*(v20 + 104))(v139, enum case for DIPError.Code.sqliteError(_:), v138);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v35 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v36 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1006BF520;
    v38 = v37 + v36;
    v39 = v38 + v35[14];
    v40 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v41 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v41 - 8) + 104))(v38, v40, v41);
    v42 = sqlite3_errcode(v22);
    *(v39 + 24) = &type metadata for Int32;
    *(v39 + 32) = &protocol witness table for Int32;
    *v39 = v42;
    sub_10003C9C0(v37);
    swift_setDeallocating();
    sub_10000BE18(v38, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_15;
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

const char *sub_100573D10(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v102[1] = a4;
  v103 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v104 = v6;
  v105 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v102[0] = v102 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v102 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v102 - v17;
  __chkstk_darwin(v16);
  v20 = v102 - v19;
  v21 = type metadata accessor for DIPError.Code();
  v106 = *(v21 - 8);
  v107 = v21;
  __chkstk_darwin(v21);
  v108 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v23 = *(a1 + 40);
  if (!v23)
  {
    sub_1005507F8();
    v23 = *(a1 + 40);
    if (!v23)
    {
      (*(v106 + 104))(v108, enum case for DIPError.Code.databaseInaccessible(_:), v107);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v24 = String.utf8CString.getter();
  v25 = sqlite3_prepare_v3(v23, (v24 + 32), -1, 0, &ppStmt, 0);

  v109 = v23;
  if (v25)
  {
    result = sqlite3_errmsg(v23);
    if (result)
    {
      v27 = String.init(cString:)();
      v29 = v28;
      defaultLogger()();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v110 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_100141FE4(v27, v29, &v110);
        _os_log_impl(&_mh_execute_header, v30, v31, "coreidvd: failed to prepare delete pre-generated assessments statement %{public}s", v32, 0xCu);
        sub_10000BB78(v33);
      }

      (*(v105 + 8))(v20, v104);
      v110 = 0;
      v111 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v34._countAndFlagsBits = 0xD00000000000003CLL;
      v34._object = 0x8000000100720290;
      String.append(_:)(v34);
      v35._countAndFlagsBits = v27;
      v35._object = v29;
      String.append(_:)(v35);

      (*(v106 + 104))(v108, enum case for DIPError.Code.sqliteError(_:), v107);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v36 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v37 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1006BF520;
      v39 = v38 + v37;
      v40 = v39 + v36[14];
      v41 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v42 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v42 - 8) + 104))(v39, v41, v42);
      v43 = sqlite3_errcode(v109);
      *(v40 + 24) = &type metadata for Int32;
      *(v40 + 32) = &protocol witness table for Int32;
      *v40 = v43;
      sub_10003C9C0(v38);
      swift_setDeallocating();
      sub_10000BE18(v39, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_33;
  }

  v44 = ppStmt;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v45 = qword_1008823D0;
  v46 = String.utf8CString.getter();
  v47 = sqlite3_bind_text(v44, 1, (v46 + 32), -1, v45);

  if (v47)
  {
    result = sqlite3_errmsg(v109);
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v48 = String.init(cString:)();
    v50 = v49;
    defaultLogger()();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v110 = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_100141FE4(v48, v50, &v110);
      _os_log_impl(&_mh_execute_header, v51, v52, "coreidvd: failure binding workflowID: %{public}s", v53, 0xCu);
      sub_10000BB78(v54);
    }

    (*(v105 + 8))(v18, v104);
    v110 = 0;
    v111 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v110 = 0xD00000000000002BLL;
    v111 = 0x80000001007202D0;
    v55._countAndFlagsBits = v48;
    v55._object = v50;
    String.append(_:)(v55);

    (*(v106 + 104))(v108, enum case for DIPError.Code.sqliteError(_:), v107);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v56 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v57 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1006BF520;
    v59 = v58 + v57;
    v60 = v59 + v56[14];
    v61 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v62 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v62 - 8) + 104))(v59, v61, v62);
    v63 = sqlite3_errcode(v109);
    *(v60 + 24) = &type metadata for Int32;
    *(v60 + 32) = &protocol witness table for Int32;
    *v60 = v63;
    sub_10003C9C0(v58);
    swift_setDeallocating();
    sub_10000BE18(v59, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  if (sqlite3_bind_double(ppStmt, 2, v64))
  {
    result = sqlite3_errmsg(v109);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v65 = String.init(cString:)();
    v67 = v66;
    defaultLogger()();

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v110 = v71;
      *v70 = 136446210;
      *(v70 + 4) = sub_100141FE4(v65, v67, &v110);
      _os_log_impl(&_mh_execute_header, v68, v69, "coreidvd: failure binding createdBefore: %{public}s", v70, 0xCu);
      sub_10000BB78(v71);
    }

    (*(v105 + 8))(v15, v104);
    v110 = 0;
    v111 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v110 = 0xD00000000000002ELL;
    v111 = 0x8000000100720300;
    v72._countAndFlagsBits = v65;
    v72._object = v67;
    String.append(_:)(v72);

    (*(v106 + 104))(v108, enum case for DIPError.Code.sqliteError(_:), v107);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v73 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v74 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1006BF520;
    v76 = v75 + v74;
    v77 = v76 + v73[14];
    v78 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v79 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v79 - 8) + 104))(v76, v78, v79);
    v80 = sqlite3_errcode(v109);
    *(v77 + 24) = &type metadata for Int32;
    *(v77 + 32) = &protocol witness table for Int32;
    *v77 = v80;
    sub_10003C9C0(v75);
    swift_setDeallocating();
    sub_10000BE18(v76, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v110 = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_100141FE4(v103, a3, &v110);
      _os_log_impl(&_mh_execute_header, v81, v82, "coreidvd: deleted old pre-generated assessments for workflow %s", v83, 0xCu);
      sub_10000BB78(v84);
    }

    (*(v105 + 8))(v10, v104);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v109);
  if (result)
  {
    v85 = String.init(cString:)();
    v87 = v86;
    v88 = v102[0];
    defaultLogger()();

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v110 = v92;
      *v91 = 136446210;
      *(v91 + 4) = sub_100141FE4(v85, v87, &v110);
      _os_log_impl(&_mh_execute_header, v89, v90, "coreidvd: failure deleting pre-generated assessments: %{public}s", v91, 0xCu);
      sub_10000BB78(v92);
    }

    (*(v105 + 8))(v88, v104);
    v110 = 0;
    v111 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v110 = 0xD000000000000022;
    v111 = 0x800000010071F600;
    v93._countAndFlagsBits = v85;
    v93._object = v87;
    String.append(_:)(v93);

    (*(v106 + 104))(v108, enum case for DIPError.Code.sqliteError(_:), v107);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v94 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v95 = (*(*v94 + 80) + 32) & ~*(*v94 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1006BF520;
    v97 = v96 + v95;
    v98 = v97 + v94[14];
    v99 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v100 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v100 - 8) + 104))(v97, v99, v100);
    v101 = sqlite3_errcode(v109);
    *(v98 + 24) = &type metadata for Int32;
    *(v98 + 32) = &protocol witness table for Int32;
    *v98 = v101;
    sub_10003C9C0(v96);
    swift_setDeallocating();
    sub_10000BE18(v97, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_30:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_35:
  __break(1u);
  return result;
}

const char *sub_100574FE8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  v4 = __chkstk_darwin(v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v74 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v74 - v11;
  __chkstk_darwin(v10);
  v14 = &v74 - v13;
  v15 = type metadata accessor for DIPError.Code();
  v76 = *(v15 - 8);
  v77 = v15;
  __chkstk_darwin(v15);
  v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v17 = *(a1 + 40);
  if (!v17)
  {
    sub_1005507F8();
    v17 = *(a1 + 40);
    if (!v17)
    {
      (*(v76 + 104))(v78, enum case for DIPError.Code.databaseInaccessible(_:), v77);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_14:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v18 = String.utf8CString.getter();
  v19 = sqlite3_prepare_v3(v17, (v18 + 32), -1, 0, &ppStmt, 0);

  if (v19)
  {
    result = sqlite3_errmsg(v17);
    if (result)
    {
      v21 = String.init(cString:)();
      v23 = v22;
      defaultLogger()();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v79 = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_100141FE4(v21, v23, &v79);
        _os_log_impl(&_mh_execute_header, v24, v25, "coreidvd: failed to prepare delete pre-generated assessments statement %{public}s", v26, 0xCu);
        sub_10000BB78(v27);
      }

      (*(v75 + 8))(v14, v74);
      v79 = 0;
      v80 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v28._countAndFlagsBits = 0xD00000000000003CLL;
      v28._object = 0x8000000100720290;
      String.append(_:)(v28);
      v29._countAndFlagsBits = v21;
      v29._object = v23;
      String.append(_:)(v29);

      v75 = v79;
      (*(v76 + 104))(v78, enum case for DIPError.Code.sqliteError(_:), v77);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v30 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v31 = (*(*v30 + 80) + 32) & ~*(*v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1006BF520;
      v33 = v32 + v31;
      v34 = v33 + v30[14];
      v35 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v36 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v36 - 8) + 104))(v33, v35, v36);
      v37 = sqlite3_errcode(v17);
      *(v34 + 24) = &type metadata for Int32;
      *(v34 + 32) = &protocol witness table for Int32;
      *v34 = v37;
      sub_10003C9C0(v32);
      swift_setDeallocating();
      sub_10000BE18(v33, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_26;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  if (sqlite3_bind_double(ppStmt, 1, v38))
  {
    result = sqlite3_errmsg(v17);
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v39 = String.init(cString:)();
    v41 = v40;
    defaultLogger()();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_100141FE4(v39, v41, &v79);
      _os_log_impl(&_mh_execute_header, v42, v43, "coreidvd: failure binding createdBefore: %{public}s", v44, 0xCu);
      sub_10000BB78(v45);
    }

    (*(v75 + 8))(v12, v74);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v79 = 0xD00000000000002ELL;
    v80 = 0x8000000100720300;
    v46._countAndFlagsBits = v39;
    v46._object = v41;
    String.append(_:)(v46);

    v75 = v79;
    (*(v76 + 104))(v78, enum case for DIPError.Code.sqliteError(_:), v77);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v47 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1006BF520;
    v50 = v49 + v48;
    v51 = v50 + v47[14];
    v52 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v53 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v53 - 8) + 104))(v50, v52, v53);
    v54 = sqlite3_errcode(v17);
    *(v51 + 24) = &type metadata for Int32;
    *(v51 + 32) = &protocol witness table for Int32;
    *v51 = v54;
    sub_10003C9C0(v49);
    swift_setDeallocating();
    sub_10000BE18(v50, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_23;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "coreidvd: deleted old pre-generated assessments for all workflows", v57, 2u);
    }

    (*(v75 + 8))(v6, v74);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v17);
  if (result)
  {
    v58 = String.init(cString:)();
    v60 = v59;
    defaultLogger()();

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v79 = v64;
      *v63 = 136446210;
      *(v63 + 4) = sub_100141FE4(v58, v60, &v79);
      _os_log_impl(&_mh_execute_header, v61, v62, "coreidvd: failure deleting pre-generated assessments: %{public}s", v63, 0xCu);
      sub_10000BB78(v64);
    }

    (*(v75 + 8))(v9, v74);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v79 = 0xD000000000000022;
    v80 = 0x800000010071F600;
    v65._countAndFlagsBits = v58;
    v65._object = v60;
    String.append(_:)(v65);

    v75 = v79;
    (*(v76 + 104))(v78, enum case for DIPError.Code.sqliteError(_:), v77);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v66 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v67 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1006BF520;
    v69 = v68 + v67;
    v70 = v69 + v66[14];
    v71 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v72 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v72 - 8) + 104))(v69, v71, v72);
    v73 = sqlite3_errcode(v17);
    *(v70 + 24) = &type metadata for Int32;
    *(v70 + 32) = &protocol witness table for Int32;
    *v70 = v73;
    sub_10003C9C0(v68);
    swift_setDeallocating();
    sub_10000BE18(v69, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_23:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100575E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerifiedClaim(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100575EDC()
{
  result = qword_100848078;
  if (!qword_100848078)
  {
    sub_10000B870(&qword_100848070, &unk_1006E8370);
    sub_10057628C(&qword_100848080, type metadata accessor for VerifiedEncryptedDataWrapper, &unk_1006E7F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848078);
  }

  return result;
}

unint64_t sub_100575F98()
{
  result = qword_100848090;
  if (!qword_100848090)
  {
    sub_10000B870(&qword_100848088, &qword_1006E8388);
    sub_10057601C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848090);
  }

  return result;
}

unint64_t sub_10057601C()
{
  result = qword_100848098;
  if (!qword_100848098)
  {
    sub_10000B870(&qword_100848070, &unk_1006E8370);
    sub_10057628C(&qword_1008480A0, type metadata accessor for VerifiedEncryptedDataWrapper, &unk_1006E7F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848098);
  }

  return result;
}

unint64_t sub_1005760D8()
{
  result = qword_1008480A8;
  if (!qword_1008480A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008480A8);
  }

  return result;
}

unint64_t sub_10057612C()
{
  result = qword_1008480B0;
  if (!qword_1008480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008480B0);
  }

  return result;
}

uint64_t sub_100576180()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005761DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100576224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10057628C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005762D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100576340()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_1000318FC(&v2[4], v5);
  os_unfair_lock_unlock(v2 + 54);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    sub_100031918(v5);
    v3 = sub_10054BCA8();

    v4 = [v3 newBackgroundContext];

    *(v0 + 16) = v4;
  }
}

id sub_100576468()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v19[0] = 0;
  if ([v5 save:v19])
  {
    return v19[0];
  }

  v7 = v19[0];
  v8 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x8000000100721E40;
  String.append(_:)(v9);
  v18[6] = v8;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v18[1] = v19[0];
  (*(v2 + 104))(v4, enum case for DIPError.Code.coreDataErrorBiomeDataContextSaveFailed(_:), v1);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BF520;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  v15 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v16 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  swift_getErrorValue();
  swift_errorRetain();
  v17 = dispatch thunk of Error._code.getter();
  v14[3] = &type metadata for Int;
  v14[4] = &protocol witness table for Int;
  *v14 = v17;
  sub_10003C9C0(v12);
  swift_setDeallocating();
  sub_100224AFC(v13);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100576834(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1005776B8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10021E8E8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_100816B78;
  v8 = _Block_copy(aBlock);

  [v5 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1005769C8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = __chkstk_darwin(v2);
  return a1(v3);
}

uint64_t sub_100576B70(uint64_t a1, void *a2)
{
  v30 = type metadata accessor for DIPError.Code();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithEntityName:v8];

  [v9 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v10 = swift_allocObject();
  v29 = xmmword_1006BF520;
  *(v10 + 16) = xmmword_1006BF520;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10057762C();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = NSPredicate.init(format:_:)();
  [v9 setPredicate:v11];

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v13._countAndFlagsBits = 0xD000000000000035;
    v13._object = 0x8000000100721DB0;
    String.append(_:)(v13);
    v14._countAndFlagsBits = a1;
    v14._object = a2;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0x3A726F727265203ALL;
    v15._object = 0xE900000000000020;
    String.append(_:)(v15);
    v34 = v2;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v28[1] = v32;
    (*(v5 + 104))(v31, enum case for DIPError.Code.coreDataErrorFetchBiomeMetadataFailed(_:), v30);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v16 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v29;
    v19 = v18 + v17;
    v20 = (v18 + v17 + v16[14]);
    v21 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v22 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v22 - 8) + 104))(v19, v21, v22);
    swift_getErrorValue();
    swift_errorRetain();
    v23 = dispatch thunk of Error._code.getter();
    v20[3] = &type metadata for Int;
    v20[4] = &protocol witness table for Int;
    *v20 = v23;
    v24 = sub_10003C9C0(v18);
    swift_setDeallocating();
    sub_100224AFC(v19);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v24;
  }

  v25 = sub_10057A0CC(v12);

  if (!v25)
  {
LABEL_12:

    return 0;
  }

  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v25 + 32);
LABEL_9:
    v24 = v27;

    return v24;
  }

  __break(1u);
  return result;
}

void *sub_1005770D4(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v30 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v7 = swift_allocObject();
  v27 = xmmword_1006BF520;
  *(v7 + 16) = xmmword_1006BF520;
  v8 = IdentityDocumentType.description.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10057762C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v11 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v11];

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v13._countAndFlagsBits = 0xD00000000000002FLL;
    v13._object = 0x8000000100721D00;
    String.append(_:)(v13);
    v14._countAndFlagsBits = IdentityDocumentType.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x203A726F72726520;
    v15._object = 0xE800000000000000;
    String.append(_:)(v15);
    v33 = v1;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v26[1] = v31;
    (*(v28 + 104))(v30, enum case for DIPError.Code.coreDataErrorFetchBiomeMetadataFailed(_:), v29);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v16 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v27;
    v19 = v18 + v17;
    v20 = (v19 + v16[14]);
    v21 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v22 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v22 - 8) + 104))(v19, v21, v22);
    swift_getErrorValue();
    swift_errorRetain();
    v23 = dispatch thunk of Error._code.getter();
    v20[3] = &type metadata for Int;
    v20[4] = &protocol witness table for Int;
    *v20 = v23;
    sub_10003C9C0(v18);
    swift_setDeallocating();
    sub_100224AFC(v19);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v25 = sub_10057A0CC(v12);

    return v25;
  }
}

unint64_t sub_1005775E0()
{
  result = qword_1008481C0;
  if (!qword_1008481C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008481C0);
  }

  return result;
}

unint64_t sub_10057762C()
{
  result = qword_1008481D0;
  if (!qword_1008481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008481D0);
  }

  return result;
}

uint64_t sub_100577680()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005776D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1005776EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = String._bridgeToObjectiveC()();
  [a1 setProofingSessionID:v22];

  if (a5)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [a1 setDob:{v23, a12}];

  if (a7)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [a1 setGender:v24];

  if (a9)
  {
    v25 = String._bridgeToObjectiveC()();
    [a1 setEthnicity:v25];

    if (a11)
    {
      v26 = 0;
    }

    else
    {
      v26 = a10;
    }

    [a1 setSkinTone:v26];
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    [a1 setEthnicity:0];
    if (a11)
    {
      v28 = 0;
    }

    else
    {
      v28 = a10;
    }

    [a1 setSkinTone:v28];
    v27 = 0;
  }

  [a1 setEthnicity:v27];

  if (a13)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  [a1 setDeviceLanguage:v29];

  if (a15)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [a1 setIssuer:v30];

  [a1 setShouldDonateProofingDecision:a16 & 1];
  if (a17)
  {
    v31.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v31.super.isa = 0;
  }

  [a1 setAxSettings:v31.super.isa];

  if (a19)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  [a1 setIdentityType:?];
}

void sub_1005779B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSString a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v50 = a15;
  v51 = a9;
  [a1 setLivenessAssessment:a2];
  [a1 setGestureAssessment:a3];
  if (a5)
  {
    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = 0;
  }

  [a1 setPadtoolVersion:v52];

  if (a7)
  {
    a7 = String._bridgeToObjectiveC()();
  }

  [a1 setPrdVersion:a7];

  if (a9)
  {
    v51 = String._bridgeToObjectiveC()();
  }

  [a1 setFacePoseVersion:v51];

  [a1 setPassiveLivenessAssessment:a10];
  [a1 setPassiveGestureAssessment:a11];
  if (a13)
  {
    v53 = String._bridgeToObjectiveC()();
  }

  else
  {
    v53 = 0;
  }

  [a1 setPassiveLivenessFacVersion:v53];

  if (a15)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  [a1 setPassiveLivenessFacePoseVersion:v50];

  if (a17)
  {
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  [a1 setPassiveLivenessPrdVersion:v54];

  if (a19)
  {
    v55 = String._bridgeToObjectiveC()();
  }

  else
  {
    v55 = 0;
  }

  [a1 setPassiveLivenessPadtoolVersion:v55];

  [a1 setDidStepUp:a20 & 1];
  if (a22)
  {
    v56 = String._bridgeToObjectiveC()();
  }

  else
  {
    v56 = 0;
  }

  [a1 setLivenessShadowLabel:v56];

  if (a24)
  {
    v57 = String._bridgeToObjectiveC()();
  }

  else
  {
    v57 = 0;
  }

  [a1 setLivenessShadowFacVersion:v57];

  if (a26)
  {
    v58 = String._bridgeToObjectiveC()();
  }

  else
  {
    v58 = 0;
  }

  [a1 setLivenessShadowFacePoseVersion:v58];

  if (a28)
  {
    v59 = String._bridgeToObjectiveC()();
  }

  else
  {
    v59 = 0;
  }

  [a1 setLivenessShadowPrdVersion:v59];

  if (a30)
  {
    v60 = String._bridgeToObjectiveC()();
  }

  else
  {
    v60 = 0;
  }

  [a1 setLivenessShadowPadtoolVersion:v60];

  if (a32)
  {
    v61 = String._bridgeToObjectiveC()();
  }

  else
  {
    v61 = 0;
  }

  [a1 setLivenessShadowLivenessAssessment:v61];

  if (a34)
  {
    v62 = String._bridgeToObjectiveC()();
  }

  else
  {
    v62 = 0;
  }

  [a1 setLivenessShadowGestureAssessment:v62];

  if (a36)
  {
    v63 = String._bridgeToObjectiveC()();
  }

  else
  {
    v63 = 0;
  }

  [a1 setLivenessShadowLivenessType:v63];

  if (a38)
  {
    v64 = String._bridgeToObjectiveC()();
    [a1 setFaceMatchingModelVersion:v64];

    v65 = String._bridgeToObjectiveC()();
  }

  else
  {
    [a1 setFaceMatchingModelVersion:0];
    v65 = 0;
  }

  [a1 setFaceMatchingModelVersion:v65];

  if (a40)
  {
    v66 = String._bridgeToObjectiveC()();
  }

  else
  {
    v66 = 0;
  }

  [a1 setFaceMatchingDetectorModelVersion:v66];

  if (a42)
  {
    v67 = String._bridgeToObjectiveC()();
  }

  else
  {
    v67 = 0;
  }

  [a1 setFaceMatchingShadowAssessment:v67];

  if (a44)
  {
    v68 = String._bridgeToObjectiveC()();
  }

  else
  {
    v68 = 0;
  }

  [a1 setFaceMatchingShadowModelVersion:v68];

  if (a46)
  {
    v69 = String._bridgeToObjectiveC()();
  }

  else
  {
    v69 = 0;
  }

  v70 = v69;
  [a1 setFaceMatchingShadowDetectorModelVersion:?];
}

uint64_t sub_100577FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_100578014()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredProofingBiomeData();
  v5 = static StoredProofingBiomeData.fetchRequest()();
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v0)
  {

    (*(v2 + 104))(v4, enum case for DIPError.Code.coreDataErrorAsyncFetchProofingBiomeDataFailed(_:), v1);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v7 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1006BF520;
    v10 = v9 + v8;
    v11 = (v10 + v7[14]);
    v12 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v13 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v13 - 8) + 104))(v10, v12, v13);
    swift_getErrorValue();
    swift_errorRetain();
    v14 = dispatch thunk of Error._code.getter();
    v11[3] = &type metadata for Int;
    v11[4] = &protocol witness table for Int;
    *v11 = v14;
    v15 = sub_10003C9C0(v9);
    swift_setDeallocating();
    sub_100224AFC(v10);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v15;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v17 = result;
  v18 = _CocoaArrayWrapper.endIndex.getter();
  result = v17;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);
LABEL_8:
    v15 = v16;

    return v15;
  }

  __break(1u);
  return result;
}

id sub_1005783D4()
{
  v1 = *(v0 + 16);
  v4 = 0;
  if ([v1 save:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

unint64_t sub_10057847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for StoredProofingSession();
  v9 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  v10 = &unk_1006BF000;
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10057762C();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  if (a1 == 3)
  {
    v5 = v4;
    v10 = &unk_1006BF000;
  }

  v12 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v13 = swift_allocObject();
  v32 = v10[82];
  *(v13 + 16) = v32;
  v14 = v12;
  v15 = IdentityTarget.rawValue.getter();
  *(v13 + 56) = &type metadata for Int64;
  *(v13 + 64) = &protocol witness table for Int64;
  *(v13 + 32) = v15;
  v16 = NSPredicate.init(format:_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v32;
  v18 = IdentityDocumentType.description.getter();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_10057762C();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006E8400;
  *(v22 + 32) = v14;
  *(v22 + 40) = v16;
  *(v22 + 48) = v21;
  v23 = v16;
  v24 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v9 setPredicate:v26];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {

    v28 = v24;
    v24 = v23;
    v26 = v14;
LABEL_14:

    return v21;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    v21 = 0;
    goto LABEL_13;
  }

  v30 = result;
  v31 = _CocoaArrayWrapper.endIndex.getter();
  result = v30;
  if (!v31)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(result + 32);
LABEL_10:
    v21 = v29;

LABEL_13:
    v28 = v23;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057886C(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 16) objectWithID:a1];
  type metadata accessor for StoredProofingSession();
  result = swift_dynamicCastClass();
  if (!result)
  {

    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v9 = [a1 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 0xD00000000000001FLL;
    v14._object = 0x80000001007094F0;
    String.append(_:)(v14);
    (*(v4 + 104))(v6, enum case for DIPError.Code.coreDataError(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_100578AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for StoredProofingSession();
  v25 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_10057762C();
  *(v9 + 64) = v10;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v11 = NSPredicate.init(format:_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BF520;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = v10;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  v13 = NSPredicate.init(format:_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF520;
  v15 = IdentityTarget.rawValue.getter();
  *(v14 + 56) = &type metadata for Int64;
  *(v14 + 64) = &protocol witness table for Int64;
  *(v14 + 32) = v15;
  v16 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006E8400;
  *(v17 + 32) = v11;
  *(v17 + 40) = v13;
  *(v17 + 48) = v16;
  v18 = v11;
  v19 = v13;
  v20 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v25 setPredicate:v22];
  v23 = NSManagedObjectContext.fetch<A>(_:)();

  return v23;
}

uint64_t sub_100578D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100578E3C, 0, 0);
}

uint64_t sub_100578E3C()
{
  v1 = v0[9];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[10] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  (*(*(v7 - 8) + 104))(v1, v6, v7);

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100578F8C;
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v9, sub_10057A074, v5, v10);
}

uint64_t sub_100578F8C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100579164, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100579164()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005791C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredProofingSession();
  v4 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF520;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10057762C();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v6];

  v7 = NSManagedObjectContext.fetch<A>(_:)();
  return v7;
}

unint64_t sub_1005792EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for StoredProofingSession();
  v5 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10057762C();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = NSPredicate.init(format:_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  v9 = IdentityTarget.rawValue.getter();
  *(v8 + 56) = &type metadata for Int64;
  *(v8 + 64) = &protocol witness table for Int64;
  *(v8 + 32) = v9;
  v10 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006DAEA0;
  *(v11 + 32) = v7;
  *(v11 + 40) = v10;
  v12 = v7;
  v13 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v5 setPredicate:v15];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v20)
  {

LABEL_11:
    return v10;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  v18 = result;
  v19 = _CocoaArrayWrapper.endIndex.getter();
  result = v18;
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 32);
LABEL_8:
    v10 = v17;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005795AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredProofingSession();
  v4 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF520;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10057762C();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v6];
  v7 = NSManagedObjectContext.fetch<A>(_:)();

  return v7;
}

uint64_t sub_1005796D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StoredProofingSession();
  v7 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_10057762C();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v10 = NSPredicate.init(format:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v9;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  v12 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006DAEA0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  v14 = v10;
  v15 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v7 setPredicate:v17];
  v18 = NSManagedObjectContext.fetch<A>(_:)();

  return v18;
}

uint64_t sub_1005798F8(uint64_t a1)
{
  v1 = type metadata accessor for DIPError.Code();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v27 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredProofingBiomeData();
  v3 = static StoredProofingBiomeData.fetchRequest()();
  [v3 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v4 = swift_allocObject();
  v24 = xmmword_1006BF520;
  *(v4 + 16) = xmmword_1006BF520;
  v5 = IdentityDocumentType.description.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10057762C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v8];

  v9 = v28;
  v10 = NSManagedObjectContext.fetch<A>(_:)();

  if (v9)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v11._countAndFlagsBits = 0xD000000000000033;
    v11._object = 0x8000000100721F30;
    String.append(_:)(v11);
    v12._countAndFlagsBits = IdentityDocumentType.description.getter();
    v28 = v10;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x3A726F727265203ALL;
    v13._object = 0xE900000000000020;
    String.append(_:)(v13);
    v31 = v9;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v23[1] = v29;
    (*(v25 + 104))(v27, enum case for DIPError.Code.coreDataError(_:), v26);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v14 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v24;
    v17 = v16 + v15;
    v18 = (v17 + v14[14]);
    v19 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    swift_getErrorValue();
    swift_errorRetain();
    v21 = dispatch thunk of Error._code.getter();
    v18[3] = &type metadata for Int;
    v18[4] = &protocol witness table for Int;
    *v18 = v21;
    sub_10003C9C0(v16);
    swift_setDeallocating();
    sub_100224AFC(v17);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v28;
  }

  return v10;
}

unint64_t sub_100579D9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for StoredProofingSession();
  v6 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10057762C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v8];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100579F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100027B9C;

  return sub_100578D74(a1, a2, a3, a4);
}

uint64_t sub_10057A03C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_10057A0FC(uint64_t a1, uint64_t (*a2)(void))
{
  v8 = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10001F2EC(i, v7);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

void *sub_10057A210(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10057A388(uint64_t a1, unint64_t a2, char a3)
{
  v40 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityDocumentType.Category();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  sub_1005775E0();
  v13 = sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v14 = swift_allocObject();
  v36 = xmmword_1006BF520;
  *(v14 + 16) = xmmword_1006BF520;
  v15 = IdentityTarget.rawValue.getter();
  *(v14 + 56) = &type metadata for Int64;
  *(v14 + 64) = &protocol witness table for Int64;
  *(v14 + 32) = v15;
  v16 = NSPredicate.init(format:_:)();
  if (a3)
  {
    [v12 setPredicate:v16];
  }

  else
  {
    v35 = v12;
    IdentityDocumentType.category.getter();
    v17 = (*(v7 + 88))(v9, v6);
    if (v17 == enum case for IdentityDocumentType.Category.mDL(_:))
    {
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1006DAEA0;
      *(v18 + 32) = v16;
      v19 = v16;
      *(v18 + 40) = sub_10057B7D4();
      v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v21 = [objc_opt_self() andPredicateWithSubpredicates:v20.super.isa];
    }

    else
    {
      if (v17 != enum case for IdentityDocumentType.Category.passport(_:))
      {
        v42 = 0;
        v43 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v31._countAndFlagsBits = 0xD000000000000016;
        v31._object = 0x8000000100721FC0;
        String.append(_:)(v31);
        v32._countAndFlagsBits = IdentityDocumentType.description.getter();
        v44 = v6;
        String.append(_:)(v32);

        v33._countAndFlagsBits = 0xD00000000000001ELL;
        v33._object = 0x8000000100721FE0;
        String.append(_:)(v33);
        v40 = v43;
        v41 = v42;
        (*(v37 + 104))(v39, enum case for DIPError.Code.unexpectedIDType(_:), v38);
        v13 = 0x8000000100722040;
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v7 + 8))(v9, v44);
        return v13;
      }

      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1006DAEA0;
      *(v22 + 32) = v16;
      v13 = swift_allocObject();
      *(v13 + 16) = v36;
      v23 = v16;
      v24 = IdentityDocumentType.description.getter();
      v26 = v25;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_10057762C();
      *(v13 + 32) = v24;
      *(v13 + 40) = v26;
      *(v22 + 40) = NSPredicate.init(format:_:)();
      v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v21 = [objc_opt_self() andPredicateWithSubpredicates:v20.super.isa];
    }

    v27 = v21;

    v12 = v35;
    [v35 setPredicate:v27];
  }

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v28 = v44;
  v29 = NSManagedObjectContext.fetch<A>(_:)();
  if (v28)
  {
  }

  else
  {
    v13 = sub_10057A210(v29, &type metadata accessor for StoredProofingSession);
  }

  return v13;
}

void *sub_10057A980(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IdentityDocumentType.Category();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithEntityName:v9];

  IdentityDocumentType.category.getter();
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v12 = sub_10057B7D4();
  }

  else
  {
    if (v11 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v18._countAndFlagsBits = 0xD000000000000016;
      v18._object = 0x8000000100721FC0;
      String.append(_:)(v18);
      v19._countAndFlagsBits = IdentityDocumentType.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 0xD00000000000001ELL;
      v20._object = 0x8000000100721FE0;
      String.append(_:)(v20);
      v22[1] = v25;
      v22[2] = v24;
      (*(v23 + 104))(v26, enum case for DIPError.Code.unexpectedIDType(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*(v5 + 8))(v7, v4);
      return v4;
    }

    sub_1005775E0();
    sub_100007224(&unk_1008483D0, &unk_1006E83E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006BF520;
    v14 = IdentityDocumentType.description.getter();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10057762C();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v12 = NSPredicate.init(format:_:)();
  }

  v4 = v12;
  [v10 setPredicate:v12];

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v4 = sub_10057A210(v17, &type metadata accessor for StoredProofingSession);
  }

  return v4;
}

uint64_t sub_10057ADE4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithEntityName:v9];

  [v10 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v11 = swift_allocObject();
  v34 = xmmword_1006BF520;
  *(v11 + 16) = xmmword_1006BF520;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10057762C();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = NSPredicate.init(format:_:)();
  [v10 setPredicate:v12];

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v14._countAndFlagsBits = 0xD000000000000037;
    v14._object = 0x80000001007220E0;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x3A726F727265203ALL;
    v16._object = 0xE900000000000020;
    String.append(_:)(v16);
    v38 = v2;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v33[1] = v36;
    (*(v6 + 104))(v35, enum case for DIPError.Code.coreDataErrorProofingSessionFetchPrearmTrustFailed(_:), v5);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v17 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v34;
    v20 = v19 + v18;
    v21 = (v19 + v18 + v17[14]);
    v22 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v23 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v23 - 8) + 104))(v20, v22, v23);
    swift_getErrorValue();
    swift_errorRetain();
    v24 = dispatch thunk of Error._code.getter();
    v21[3] = &type metadata for Int;
    v21[4] = &protocol witness table for Int;
    *v21 = v24;
    v25 = sub_10003C9C0(v19);
    swift_setDeallocating();
    sub_100224AFC(v20);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v25;
  }

  v26 = v13;
  if (v13 >> 62)
  {
    type metadata accessor for StoredPrearmTrust();

    v32 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v26 = v32;
  }

  else
  {
    v27 = v13 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for StoredPrearmTrust();
    if (swift_dynamicCastMetatype() || (v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
    }

    else
    {
      v31 = v27 + 32;
      while (swift_dynamicCastClass())
      {
        v31 += 8;
        if (!--v30)
        {
          goto LABEL_5;
        }
      }

      v26 = v27 | 1;
    }
  }

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_20:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v26 + 32);
LABEL_11:
    v25 = v29;

    return v25;
  }

  __break(1u);
  return result;
}

void sub_10057B404(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10057ADE4(a1, a2);
  if (v3)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    v11._object = 0x8000000100722070;
    v11._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 0x203A726F72726520;
    v13._object = 0xE800000000000000;
    String.append(_:)(v13);
    v27 = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v24[1] = v25;
    (*(v7 + 104))(v9, enum case for DIPError.Code.coreDataErrorProofingSessionDeletePrearmTrustFailed(_:), v6);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v14 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006BF520;
    v17 = v16 + v15;
    v18 = (v17 + v14[14]);
    v19 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    swift_getErrorValue();
    swift_errorRetain();
    v21 = dispatch thunk of Error._code.getter();
    v18[3] = &type metadata for Int;
    v18[4] = &protocol witness table for Int;
    *v18 = v21;
    sub_10003C9C0(v16);
    swift_setDeallocating();
    sub_100224AFC(v17);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else if (v10)
  {
    v22 = *(v2 + 16);
    v23 = v10;
    [v22 deleteObject:v10];
  }
}

id sub_10057B7D4()
{
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006BF520;
  v1 = IdentityDocumentType.description.getter();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  v4 = sub_10057762C();
  *(v0 + 64) = v4;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v5 = NSPredicate.init(format:_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = IdentityDocumentType.description.getter();
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = v4;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = IdentityDocumentType.description.getter();
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v4;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006E8400;
  *(v14 + 32) = v5;
  *(v14 + 40) = v9;
  *(v14 + 48) = v13;
  v15 = v5;
  v16 = v9;
  v17 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  return v19;
}

void *sub_10057B9D0@<X0>(void *a1@<X8>)
{
  result = sub_10054C274();
  if (!v1)
  {
    v4 = result;
    v5 = [result newBackgroundContext];

    type metadata accessor for IdentityProofingAsyncDataContext();
    result = swift_allocObject();
    result[2] = v5;
    *a1 = result;
  }

  return result;
}

id sub_10057BA64()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  result = [v5 hasChanges];
  if (result)
  {
    v19[0] = 0;
    if ([v5 save:v19])
    {
      return v19[0];
    }

    else
    {
      v7 = v19[0];
      v8 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      v9._countAndFlagsBits = 0xD00000000000002ELL;
      v9._object = 0x8000000100721E40;
      String.append(_:)(v9);
      v18[6] = v8;
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      _print_unlocked<A, B>(_:_:)();
      v18[1] = v19[0];
      (*(v2 + 104))(v4, enum case for DIPError.Code.coreDataErrorSavingProofingDataFailed(_:), v1);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1006BF520;
      v13 = v12 + v11;
      v14 = (v13 + v10[14]);
      v15 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v16 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v16 - 8) + 104))(v13, v15, v16);
      swift_getErrorValue();
      swift_errorRetain();
      v17 = dispatch thunk of Error._code.getter();
      v14[3] = &type metadata for Int;
      v14[4] = &protocol witness table for Int;
      *v14 = v17;
      sub_10003C9C0(v12);
      swift_setDeallocating();
      sub_100224AFC(v13);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  return result;
}

void sub_10057BE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithEntityName:v6];

  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10057762C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = IdentityTarget.rawValue.getter();
  *(v10 + 56) = &type metadata for Int64;
  *(v10 + 64) = &protocol witness table for Int64;
  *(v10 + 32) = v11;
  v12 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006DAEA0;
  *(v13 + 32) = v9;
  *(v13 + 40) = v12;
  v14 = v9;
  v15 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v7 setPredicate:v17];
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v18 = NSManagedObjectContext.fetch<A>(_:)();
  if (v21)
  {

    return;
  }

  if (v18 >> 62)
  {
    v19 = v18;
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v19;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  type metadata accessor for StoredProofingSession();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10057C18C(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100267C5C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10057E5F8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_100816C18;
  v8 = _Block_copy(aBlock);

  [v5 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

void sub_10057C320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v42 = a6;
  v43 = a4;
  v10 = type metadata accessor for Logger();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v38 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdentityDocumentType.Category();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredProofingSession();
  v44 = static StoredProofingSession.fetchRequest()();
  v36[1] = a1;
  IdentityDocumentType.category.getter();
  v39 = v13;
  v16 = *(v13 + 88);
  v37 = v12;
  v17 = v16(v15, v12);
  if (v17 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v18 = sub_10057E984(a2, a3, v43, a5 & 1, v42 & 1);
  }

  else
  {
    v19 = v42;
    v20 = v43;
    if (v17 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v26 = v38;
      defaultLogger()();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v46 = v30;
        *v29 = 136315138;
        v31 = IdentityDocumentType.description.getter();
        v33 = sub_100141FE4(v31, v32, &v46);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "invalid documentType: %s cannot fetch proofing session", v29, 0xCu);
        sub_10000BB78(v30);
      }

      (*(v40 + 8))(v26, v41);
      (*(v39 + 8))(v15, v37);
      return;
    }

    v21 = String.lowercased()();
    v18 = sub_10057E638(v21._countAndFlagsBits, v21._object, v20, a5 & 1, v19 & 1);
  }

  v22 = v44;
  [v44 setPredicate:v18];
  v23 = v45;
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  if (v23)
  {

    return;
  }

  if (v24 >> 62)
  {
    v34 = v24;
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v34;
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_17:

    return;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v24 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_12:

    return;
  }

  __break(1u);
}

unint64_t sub_10057C738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for StoredProofingSession();
  v6 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10057762C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v8];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

LABEL_11:
    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v3 = 0;
    goto LABEL_11;
  }

  v11 = result;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_10057C8F0(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10057DC18(a1, a2);
  if (v3)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    v11._countAndFlagsBits = 0xD00000000000003FLL;
    v11._object = 0x8000000100722070;
    String.append(_:)(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 0x203A726F72726520;
    v13._object = 0xE800000000000000;
    String.append(_:)(v13);
    v27 = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v24[1] = v25;
    (*(v7 + 104))(v9, enum case for DIPError.Code.coreDataErrorDeletePrearmTrustFailed(_:), v6);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v14 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006BF520;
    v17 = v16 + v15;
    v18 = (v17 + v14[14]);
    v19 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    swift_getErrorValue();
    swift_errorRetain();
    v21 = dispatch thunk of Error._code.getter();
    v18[3] = &type metadata for Int;
    v18[4] = &protocol witness table for Int;
    *v18 = v21;
    sub_10003C9C0(v16);
    swift_setDeallocating();
    sub_100224AFC(v17);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else if (v10)
  {
    v22 = *(v2 + 16);
    v23 = v10;
    [v22 deleteObject:v10];
  }
}

void sub_10057CCBC(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithEntityName:v6];

  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10057762C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  [v7 setPredicate:v9];

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
  }

  else
  {
    sub_10057A0B4(v10);
  }
}

void sub_10057CE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithEntityName:v6];

  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10057762C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = IdentityTarget.rawValue.getter();
  *(v10 + 56) = &type metadata for Int64;
  *(v10 + 64) = &protocol witness table for Int64;
  *(v10 + 32) = v11;
  v12 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006DAEA0;
  *(v13 + 32) = v9;
  *(v13 + 40) = v12;
  v14 = v9;
  v15 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v7 setPredicate:v17];
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v18 = NSManagedObjectContext.fetch<A>(_:)();
  if (v21)
  {

    return;
  }

  if (v18 >> 62)
  {
    v19 = v18;
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v19;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  type metadata accessor for StoredProofingSession();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }
}