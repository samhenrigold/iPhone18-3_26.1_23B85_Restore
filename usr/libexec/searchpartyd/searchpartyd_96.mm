void *sub_100A8A1DC(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v44 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  __chkstk_darwin(v3 - 8);
  v5 = (v36 - v4);
  v6 = _s18ConnectionKeyGroupVMa(0);
  v37 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v36 - v15;
  __chkstk_darwin(v14);
  v18 = v36 - v17;
  v19 = v46;
  v20 = sub_100ADA680(a1, v44);
  if (!v19)
  {
    v42 = v5;
    v43 = v8;
    v44 = v6;
    v45 = v9;
    v21 = v20[2];
    if (v21)
    {
      v39 = v16;
      v36[1] = 0;
      v36[2] = v20;
      v22 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v41 = (v37 + 48);
      v5 = _swiftEmptyArrayStorage;
      v40 = *(v10 + 72);
      v23 = v45;
      v38 = v13;
      do
      {
        v46 = v5;
        sub_1000D2A70(v22, v18, &qword_1016A5A80, &qword_1013B35A8);
        v24 = v18;
        v25 = v18;
        v26 = v39;
        sub_1000D2A70(v24, v39, &qword_1016A5A80, &qword_1013B35A8);
        v27 = *(v23 + 48);
        sub_1000D2AD8(v26, v13, &qword_10169BA30, &unk_101395620);
        v28 = v26 + v27;
        v18 = v25;
        sub_1000D2AD8(v28, &v13[v27], &qword_1016A5A70, &unk_1013D6860);
        v29 = &v13[v27];
        v30 = v42;
        sub_1000D2A70(v29, v42, &qword_1016A5A70, &unk_1013D6860);
        sub_10000B3A8(v13, &qword_1016A5A80, &qword_1013B35A8);
        sub_10000B3A8(v25, &qword_1016A5A80, &qword_1013B35A8);
        if ((*v41)(v30, 1, v44) == 1)
        {
          sub_10000B3A8(v30, &qword_1016A5A70, &unk_1013D6860);
          v5 = v46;
          v13 = v38;
        }

        else
        {
          sub_10002911C(v30, v43, _s18ConnectionKeyGroupVMa);
          v5 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_100A5BE18(0, v5[2] + 1, 1, v5);
          }

          v31 = v37;
          v13 = v38;
          v33 = v5[2];
          v32 = v5[3];
          if (v33 >= v32 >> 1)
          {
            v34 = sub_100A5BE18((v32 > 1), v33 + 1, 1, v5);
            v31 = v37;
            v5 = v34;
          }

          v5[2] = v33 + 1;
          sub_10002911C(v43, v5 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v33, _s18ConnectionKeyGroupVMa);
        }

        v22 += v40;
        --v21;
        v23 = v45;
      }

      while (v21);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v5;
}

void *sub_100A8A624(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v4 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  __chkstk_darwin(v4 - 8);
  v6 = v38 - v5;
  v7 = type metadata accessor for TimeBasedKey(0);
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v42 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v38 - v15;
  __chkstk_darwin(v14);
  v18 = v38 - v17;
  v49[3] = type metadata accessor for OwnedBeaconRecord(0);
  v49[4] = sub_10000768C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v19 = sub_1000280DC(v49);
  sub_100022A54(a1, v19, type metadata accessor for OwnedBeaconRecord);
  v20 = v50;
  v21 = sub_100ADA680(v49, a2);
  v22 = v20;
  sub_100007BAC(v49);
  if (!v20)
  {
    v46 = v6;
    v47 = v10;
    v44 = v9;
    v45 = v7;
    v23 = v21[2];
    if (v23)
    {
      v40 = v13;
      v41 = v16;
      v38[1] = v21;
      v38[2] = 0;
      v24 = v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v43 = (v39 + 48);
      v22 = _swiftEmptyArrayStorage;
      v42 = *(v42 + 72);
      v25 = v47;
      do
      {
        v48 = v23;
        v50 = v22;
        sub_1000D2A70(v24, v18, &qword_1016A5A80, &qword_1013B35A8);
        v26 = v18;
        v27 = v18;
        v28 = v41;
        sub_1000D2A70(v26, v41, &qword_1016A5A80, &qword_1013B35A8);
        v29 = *(v25 + 48);
        v30 = v40;
        sub_1000D2AD8(v28, v40, &qword_10169BA30, &unk_101395620);
        v31 = v28 + v29;
        v18 = v27;
        sub_1000D2AD8(v31, v30 + v29, &qword_1016A5A70, &unk_1013D6860);
        v32 = v46;
        sub_1000D2A70(v30, v46, &qword_10169BA30, &unk_101395620);
        sub_10000B3A8(v30, &qword_1016A5A80, &qword_1013B35A8);
        sub_10000B3A8(v27, &qword_1016A5A80, &qword_1013B35A8);
        if ((*v43)(v32, 1, v45) == 1)
        {
          sub_10000B3A8(v32, &qword_10169BA30, &unk_101395620);
          v22 = v50;
        }

        else
        {
          sub_10002911C(v32, v44, type metadata accessor for TimeBasedKey);
          v22 = v50;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_100A5BDF0(0, v22[2] + 1, 1, v22);
          }

          v34 = v22[2];
          v33 = v22[3];
          v35 = v39;
          if (v34 >= v33 >> 1)
          {
            v36 = sub_100A5BDF0((v33 > 1), v34 + 1, 1, v22);
            v35 = v39;
            v22 = v36;
          }

          v22[2] = v34 + 1;
          sub_10002911C(v44, v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, type metadata accessor for TimeBasedKey);
        }

        v24 += v42;
        v25 = v47;
        v23 = v48 - 1;
      }

      while (v48 != 1);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v22;
}

Swift::Int sub_100A8AAFC(uint64_t *a1)
{
  v2 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3200C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100AFBBC8(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100A8ABA4(uint64_t *a1)
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B320AC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100AFBCF4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100A8AC4C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for BeaconStatus(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100B32138(v5);
  }

  result = sub_100AFBE20(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_100A8AD0C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SharedBeaconRecord(0);
  result = __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(result + 64)) == 1)
  {
    v7 = *(v1 + *(result + 68));
    if (v7)
    {
      v8 = v7 - 1;
      if (is_mul_ok(v8, 0xFuLL))
      {
        if (is_mul_ok(15 * v8, 0x3CuLL))
        {
          return Date.addingTimeInterval(_:)();
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v9 = result;
      v10 = static os_log_type_t.error.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_101385D80;
      sub_100022A54(v1, v6, type metadata accessor for SharedBeaconRecord);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_100008C00();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v15 = v1;
      v16 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v16, "SharedBeaconRecord unexpectedly has advertisedIndex of 0: %@", 60, 2, v11);

      v17 = *(v9 + 72);
      v18 = type metadata accessor for Date();
      return (*(*(v18 - 8) + 16))(a1, v15 + v17, v18);
    }
  }

  else
  {

    return static Date.distantPast.getter();
  }

  return result;
}

void sub_100A8AF58()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177BA08);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requesting SPUnknownBeaconsSetChangedNotification to be posted before rate limit.", v3, 2u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v4)
  {
  }
}

void *sub_100A8B080(void *a1)
{
  v469 = type metadata accessor for Date();
  v486 = *(v469 - 8);
  v2 = __chkstk_darwin(v469);
  v426 = &v401[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v425 = &v401[-v4];
  v5 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  __chkstk_darwin(v5 - 8);
  v436 = &v401[-v6];
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v401[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v401[-v12];
  v14 = __chkstk_darwin(v11);
  v428 = &v401[-v15];
  v16 = __chkstk_darwin(v14);
  v430 = &v401[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v401[-v19];
  __chkstk_darwin(v18);
  v22 = &v401[-v21];
  v23 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v23 - 8);
  v432 = &v401[-v24];
  v431 = type metadata accessor for BeaconProductInfoRecord(0);
  v485 = *(v431 - 8);
  __chkstk_darwin(v431);
  v427 = &v401[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v461 = type metadata accessor for SystemInfo.DeviceLockState();
  v471 = *(v461 - 8);
  v26 = __chkstk_darwin(v461);
  v460 = &v401[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v459 = &v401[-v28];
  v29 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v29 - 8);
  v458 = &v401[-v30];
  v457 = type metadata accessor for OwnedBeaconRecord(0);
  v31 = *(v457 - 8);
  __chkstk_darwin(v457);
  v442 = &v401[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v483 = type metadata accessor for BeaconStatus(0);
  v473 = *(v483 - 8);
  v33 = __chkstk_darwin(v483);
  v35 = &v401[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __chkstk_darwin(v33);
  v482 = &v401[-v37];
  v38 = __chkstk_darwin(v36);
  v40 = &v401[-v39];
  v41 = __chkstk_darwin(v38);
  v484 = &v401[-v42];
  v43 = __chkstk_darwin(v41);
  v476 = &v401[-v44];
  v45 = __chkstk_darwin(v43);
  v452 = &v401[-v46];
  v47 = __chkstk_darwin(v45);
  v464 = &v401[-v48];
  v49 = __chkstk_darwin(v47);
  v480 = &v401[-v50];
  v51 = __chkstk_darwin(v49);
  v475 = &v401[-v52];
  v53 = __chkstk_darwin(v51);
  v462 = &v401[-v54];
  v55 = __chkstk_darwin(v53);
  v463 = &v401[-v56];
  v57 = __chkstk_darwin(v55);
  v479 = &v401[-v58];
  v59 = __chkstk_darwin(v57);
  v422 = &v401[-v60];
  v61 = __chkstk_darwin(v59);
  v416 = &v401[-v62];
  v63 = __chkstk_darwin(v61);
  v414 = &v401[-v64];
  v65 = __chkstk_darwin(v63);
  v415 = &v401[-v66];
  v67 = __chkstk_darwin(v65);
  v419 = &v401[-v68];
  v69 = __chkstk_darwin(v67);
  v412 = &v401[-v70];
  v71 = __chkstk_darwin(v69);
  v424 = &v401[-v72];
  v73 = __chkstk_darwin(v71);
  v437 = &v401[-v74];
  __chkstk_darwin(v73);
  v478 = &v401[-v75];
  v76 = type metadata accessor for UUID();
  v470 = *(v76 - 8);
  v77 = __chkstk_darwin(v76);
  v420 = &v401[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = __chkstk_darwin(v77);
  v456 = &v401[-v80];
  v81 = __chkstk_darwin(v79);
  v423 = &v401[-v82];
  v83 = __chkstk_darwin(v81);
  v421 = &v401[-v84];
  v85 = __chkstk_darwin(v83);
  v411 = &v401[-v86];
  v87 = __chkstk_darwin(v85);
  v474 = &v401[-v88];
  __chkstk_darwin(v87);
  v455 = &v401[-v89];
  v90 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v91 = __chkstk_darwin(v90 - 8);
  v92 = __chkstk_darwin(v91);
  v429 = &v401[-v93];
  __chkstk_darwin(v92);
  v443 = &v401[-v95];
  v438 = v7;
  v96 = *(*(a1 + *(v7 + 40)) + 16);
  if (v96 > 0xFF)
  {
    goto LABEL_213;
  }

  v481 = v76;
  if (v96 == 1)
  {
    if (qword_101694BF8 != -1)
    {
      goto LABEL_214;
    }

    goto LABEL_4;
  }

  v409 = v94;
  v406 = v13;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v451 = 0;
  sub_101073CD0(v488);

  v106 = v470 + 56;
  v10 = 1;
  v417 = *(v470 + 56);
  v417(v443, 1, 1, v76);
  v439 = a1;
  sub_100519FB0();
  v108 = 0;
  v110 = v107 + 56;
  v109 = *(v107 + 56);
  v454 = v107;
  v111 = 1 << *(v107 + 32);
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  else
  {
    v112 = -1;
  }

  v113 = (v111 + 63) >> 6;
  v472 = (v106 - 40);
  v453 = (v106 - 24);
  v450 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v449 = (v471 + 13);
  v448 = (v471 + 1);
  v435 = (v31 + 48);
  v413 = (v485 + 48);
  v408 = (v486 + 1);
  v418 = v106;
  v471 = (v106 - 48);
  v434 = (v31 + 56);
  v114 = &_swiftEmptySetSingleton;
  v447 = xmmword_10139D930;
  *(&v115 + 1) = 2;
  v446 = xmmword_101385D80;
  *&v115 = 141558275;
  v433 = v115;
  *&v115 = 16777987;
  v405 = v115;
  *&v115 = 141558531;
  v410 = v115;
  v407 = v20;
  v404 = v22;
  v116 = v112 & v109;
  v445 = v107 + 56;
  v444 = v113;
  v477 = v40;
LABEL_12:
  v485 = (v114 + 7);
  if (!v116)
  {
    goto LABEL_13;
  }

  do
  {
LABEL_17:
    v486 = v114;
    v466 = v108;
    v118 = *(v454 + 48);
    v119 = v470;
    v440 = *(v470 + 72);
    v120 = *(v470 + 16);
    v121 = v455;
    (v120)(v455, v118 + v440 * (__clz(__rbit64(v116)) | (v108 << 6)), v76);
    v122 = v474;
    v441 = *(v119 + 32);
    v441(v474, v121, v76);
    v123 = v478;
    v468 = v120;
    (v120)(v478, v122, v76);
    v124 = v483;
    static Date.distantPast.getter();
    v123[v124[5]] = 0;
    *&v123[v124[7]] = v447;
    v123[v124[8]] = 0;
    *&v123[v124[9]] = 0;
    v125 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v467 = (v116 - 1) & v116;
    v126 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v127 = swift_allocObject();
    *(v127 + 16) = v446;
    v128 = UUID.uuidString.getter();
    v130 = v129;
    *(v127 + 56) = &type metadata for String;
    *(v127 + 64) = sub_100008C00();
    *(v127 + 32) = v128;
    *(v127 + 40) = v130;
    os_log(_:dso:log:_:_:)(v125, &_mh_execute_header, v126, "ownedBeaconRecord(for uuid: %@)", 31, 2, v127);

    v131 = v459;
    static SystemInfo.lockState.getter();
    v132 = v460;
    v133 = v461;
    (*v449)(v460, v450, v461);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v128) = dispatch thunk of static Equatable.== infix(_:_:)();
    v134 = *v448;
    (*v448)(v132, v133);
    v134(v131, v133);
    if (v128)
    {
      v135 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v135, &_mh_execute_header, v126, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      v136 = v458;
      (*v434)(v458, 1, 1, v457);
      v137 = v456;
      v138 = v122;
LABEL_22:
      sub_10000B3A8(v136, &unk_1016A9A20, &qword_10138B280);
      v142 = v481;
      v143 = v486;
      v144 = v468;
      if (qword_101694BF8 != -1)
      {
        swift_once();
      }

      v145 = type metadata accessor for Logger();
      sub_1000076D4(v145, qword_10177BA38);
      v144(v137, v138, v142);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = v137;
        v150 = swift_slowAlloc();
        v488 = v150;
        *v148 = v433;
        *(v148 + 4) = 1752392040;
        *(v148 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v151 = dispatch thunk of CustomStringConvertible.description.getter();
        v153 = v152;
        a1 = *v471;
        (*v471)(v149, v481);
        v154 = sub_1000136BC(v151, v153, &v488);

        *(v148 + 14) = v154;
        _os_log_impl(&_mh_execute_header, v146, v147, "No beacon record for %{private,mask.hash}s", v148, 0x16u);
        sub_100007BAC(v150);
      }

      else
      {

        a1 = *v471;
        (*v471)(v137, v142);
      }

      sub_100022A54(v478, v484, type metadata accessor for BeaconStatus);
      Hasher.init(_seed:)();
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v155 = v483;
      sub_10000768C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v156 = Hasher._finalize()();
      v157 = -1 << *(v143 + 32);
      v10 = v156 & ~v157;
      if ((*(v485 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        v158 = ~v157;
        v159 = *(v473 + 72);
        do
        {
          sub_100022A54(v143[6] + v159 * v10, v35, type metadata accessor for BeaconStatus);
          v160 = v484;
          if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
          {
            v161 = v35[*(v155 + 20)];
            sub_100022C40(v35, type metadata accessor for BeaconStatus);
            v162 = v161 == v160[*(v483 + 20)];
            v155 = v483;
            if (v162)
            {
              v163 = type metadata accessor for BeaconStatus;
              v164 = v484;
              goto LABEL_36;
            }
          }

          else
          {
            sub_100022C40(v35, type metadata accessor for BeaconStatus);
          }

          v10 = (v10 + 1) & v158;
          v143 = v486;
        }

        while (((*(v485 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100022A54(v484, v477, type metadata accessor for BeaconStatus);
      v487 = v143;
      v257 = v143[2];
      if (v143[3] <= v257)
      {
        v258 = v482;
        v259 = v257 + 1;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_100DF7AB8(v259);
        }

        else
        {
          sub_100E0AF78(v259);
        }

        v260 = v487;
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        dispatch thunk of Hashable.hash(into:)();
        v261 = Hasher._finalize()();
        v262 = -1 << *(v260 + 32);
        v10 = v261 & ~v262;
        if ((*(v260 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10))
        {
          v263 = ~v262;
          v264 = *(v473 + 72);
          v265 = v477;
          while (1)
          {
            sub_100022A54(v260[6] + v264 * v10, v258, type metadata accessor for BeaconStatus);
            if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
            {
              v266 = v483;
              v267 = v482[*(v483 + 20)];
              sub_100022C40(v482, type metadata accessor for BeaconStatus);
              v268 = *(v266 + 20);
              v265 = v477;
              v162 = v267 == v477[v268];
              v258 = v482;
              if (v162)
              {
                goto LABEL_218;
              }
            }

            else
            {
              sub_100022C40(v258, type metadata accessor for BeaconStatus);
            }

            v10 = (v10 + 1) & v263;
            if (((*(v260 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) == 0)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100E055EC();
      }

      v265 = v477;
LABEL_108:
      v114 = v487;
      *(v487 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v10;
      sub_10002911C(v265, v114[6] + *(v473 + 72) * v10, type metadata accessor for BeaconStatus);
      v269 = v114[2];
      v270 = __OFADD__(v269, 1);
      v271 = v269 + 1;
      if (v270)
      {
        goto LABEL_212;
      }

      v114[2] = v271;
      sub_100022C40(v484, type metadata accessor for BeaconStatus);
      sub_100022C40(v478, type metadata accessor for BeaconStatus);
      v76 = v481;
      (a1)(v474, v481);
      goto LABEL_144;
    }

    v139 = sub_100025044();
    __chkstk_darwin(v139);
    *&v401[-16] = v122;
    v136 = v458;
    v140 = v451;
    sub_1012BBBD0(sub_100B27F94, v139, v458);
    v451 = v140;

    v141 = (*v435)(v136, 1, v457);
    v137 = v456;
    v138 = v122;
    if (v141 == 1)
    {
      goto LABEL_22;
    }

    sub_10002911C(v136, v442, type metadata accessor for OwnedBeaconRecord);
    v166 = v432;
    sub_100AC1584(v122, v432);
    v167 = v431;
    v168 = (*v413)(v166, 1, v431);
    v169 = v481;
    v170 = v436;
    v171 = v486;
    v172 = v468;
    if (v168 == 1)
    {
      sub_10000B3A8(v166, &unk_1016AF8C0, &unk_1013A07A0);
    }

    else
    {
      v173 = v166;
      v174 = v427;
      sub_10002911C(v173, v427, type metadata accessor for BeaconProductInfoRecord);
      v175 = *&v174[*(v167 + 84)];
      if (v175)
      {
        v176 = *(v175 + 16);
        if (v176)
        {
          v177 = 88;
          while (1)
          {
            v178 = *(v175 + v177);
            if (v178 != 2 && (v178 & 1) != 0)
            {
              break;
            }

            v177 += 64;
            if (!--v176)
            {
              goto LABEL_51;
            }
          }

          if (qword_101694BF8 != -1)
          {
            swift_once();
          }

          v179 = type metadata accessor for Logger();
          sub_1000076D4(v179, qword_10177BA38);
          v180 = v404;
          sub_100022A54(v439, v404, type metadata accessor for OwnedBeaconGroup);

          v181 = Logger.logObject.getter();
          v182 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v181, v182))
          {
            v183 = swift_slowAlloc();
            v403 = swift_slowAlloc();
            v488 = v403;
            *v183 = v410;
            *(v183 + 4) = 1752392040;
            *(v183 + 12) = 2081;
            v402 = v182;
            sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v184 = dispatch thunk of CustomStringConvertible.description.getter();
            v186 = v185;
            sub_100022C40(v180, type metadata accessor for OwnedBeaconGroup);
            v187 = sub_1000136BC(v184, v186, &v488);
            v169 = v481;

            *(v183 + 14) = v187;
            *(v183 + 22) = 2080;
            v188 = Array.description.getter();
            v190 = sub_1000136BC(v188, v189, &v488);

            *(v183 + 24) = v190;
            _os_log_impl(&_mh_execute_header, v181, v402, "Group %{private,mask.hash}s multipart layout template: %s", v183, 0x20u);
            swift_arrayDestroy();

            v170 = v436;
          }

          else
          {

            sub_100022C40(v180, type metadata accessor for OwnedBeaconGroup);
          }

          v203 = v443;
          sub_10000B3A8(v443, &qword_1016980D0, &unk_10138F3B0);
          sub_100022C40(v427, type metadata accessor for BeaconProductInfoRecord);
          goto LABEL_59;
        }
      }

LABEL_51:
      sub_100022C40(v174, type metadata accessor for BeaconProductInfoRecord);
    }

    v191 = sub_100D608FC();
    v192 = v483;
    if ((v191 & 0x1FF) != 2)
    {
      goto LABEL_60;
    }

    if (qword_101694BF8 != -1)
    {
      swift_once();
    }

    v193 = type metadata accessor for Logger();
    sub_1000076D4(v193, qword_10177BA38);
    v194 = v407;
    sub_100022A54(v439, v407, type metadata accessor for OwnedBeaconGroup);
    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v488 = v198;
      *v197 = v405;
      *(v197 + 4) = 28674;
      *(v197 + 6) = 8;
      *(v197 + 7) = 1752392040;
      *(v197 + 15) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v199 = dispatch thunk of CustomStringConvertible.description.getter();
      v201 = v200;
      sub_100022C40(v194, type metadata accessor for OwnedBeaconGroup);
      v202 = sub_1000136BC(v199, v201, &v488);
      v169 = v481;

      *(v197 + 17) = v202;
      _os_log_impl(&_mh_execute_header, v195, v196, "AlphaWasp: hardcoding primary part %hhu for group %{private,mask.hash}s.", v197, 0x19u);
      sub_100007BAC(v198);

      v170 = v436;
    }

    else
    {

      sub_100022C40(v194, type metadata accessor for OwnedBeaconGroup);
    }

    v203 = v443;
    sub_10000B3A8(v443, &qword_1016980D0, &unk_10138F3B0);
LABEL_59:
    v138 = v474;
    v172(v203, v474, v169);
    v417(v203, 0, 1, v169);
    v192 = v483;
LABEL_60:
    sub_100AC6DA0(v138, v170);
    v204 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
    if ((*(*(v204 - 8) + 48))(v170, 1, v204) != 1)
    {
      v215 = v170;
      v216 = v424;
      sub_10002911C(v215, v424, type metadata accessor for BeaconStatus);
      sub_10002911C(v216, v437, type metadata accessor for BeaconStatus);
      v217 = v425;
      Date.addingTimeInterval(_:)();
      v218 = v426;
      static Date.trustedNow.getter(v426);
      v219 = static Date.> infix(_:_:)();
      v220 = *v408;
      v221 = v218;
      v222 = v469;
      (*v408)(v221, v469);
      v220(v217, v222);
      if (v219)
      {
        v306 = v483;
        v307 = sub_10001993C(v437[*(v483 + 20)] & 0xB);
        v308 = sub_100B06298(v442, (v307 >> 8) & 1, HIWORD(v307) & 1, HIBYTE(v307) & 1, v465);
        v309 = v308[2];
        if (v309)
        {
          v487 = _swiftEmptyArrayStorage;
          sub_101123D4C(0, v309, 0);
          v310 = v487;
          v485 = v308;
          v311 = (v308 + 4);
          v312 = v411;
          v313 = v440;
          do
          {
            sub_10001F280(v311, &v488);
            v315 = v489;
            v314 = v490;
            sub_1000035D0(&v488, v489);
            (*(*(*(v314 + 8) + 8) + 32))(v315);
            sub_100007BAC(&v488);
            v487 = v310;
            v317 = v310[2];
            v316 = v310[3];
            if (v317 >= v316 >> 1)
            {
              sub_101123D4C((v316 > 1), v317 + 1, 1);
              v310 = v487;
            }

            v310[2] = v317 + 1;
            v441(v310 + ((*(v470 + 80) + 32) & ~*(v470 + 80)) + v317 * v313, v312, v481);
            v311 += 40;
            --v309;
          }

          while (v309);

          v306 = v483;
        }

        else
        {

          v310 = _swiftEmptyArrayStorage;
        }

        v318 = v412;
        sub_100022A54(v437, v412, type metadata accessor for BeaconStatus);
        v319 = sub_10000954C(v310);

        v320 = v306;
        v321 = *(v306 + 36);

        *&v318[v321] = v319;
        sub_100022A54(v318, v419, type metadata accessor for BeaconStatus);
        Hasher.init(_seed:)();
        a1 = sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v10 = *(v320 + 24);
        v485 = sub_10000768C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        dispatch thunk of Hashable.hash(into:)();
        v322 = Hasher._finalize()();
        v323 = v171 + 7;
        v324 = -1 << *(v171 + 32);
        v325 = v322 & ~v324;
        if ((*(v171 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v325))
        {
          v326 = ~v324;
          v327 = *(v473 + 72);
          v328 = v416;
          do
          {
            sub_100022A54(v171[6] + v327 * v325, v328, type metadata accessor for BeaconStatus);
            v329 = v419;
            if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
            {
              v330 = v483;
              v331 = v416[*(v483 + 20)];
              sub_100022C40(v416, type metadata accessor for BeaconStatus);
              v162 = v331 == v329[*(v330 + 20)];
              v328 = v416;
              if (v162)
              {
                sub_100022C40(v419, type metadata accessor for BeaconStatus);
                sub_100022C40(v437, type metadata accessor for BeaconStatus);
                sub_100022C40(v442, type metadata accessor for OwnedBeaconRecord);
                sub_100022C40(v478, type metadata accessor for BeaconStatus);
                v76 = v481;
                (*v471)(v474, v481);
                v116 = v467;
                v114 = v486;
                goto LABEL_178;
              }
            }

            else
            {
              sub_100022C40(v328, type metadata accessor for BeaconStatus);
            }

            v325 = (v325 + 1) & v326;
            v171 = v486;
          }

          while (((*(v323 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v325) & 1) != 0);
        }

        v332 = swift_isUniquelyReferenced_nonNull_native();
        sub_100022A54(v419, v415, type metadata accessor for BeaconStatus);
        v487 = v171;
        v333 = v171[2];
        if (v171[3] <= v333)
        {
          v334 = v333 + 1;
          if (v332)
          {
            sub_100DF7AB8(v334);
          }

          else
          {
            sub_100E0AF78(v334);
          }

          v10 = v485;
          v335 = v487;
          Hasher.init(_seed:)();
          dispatch thunk of Hashable.hash(into:)();
          v485 = *(v483 + 24);
          dispatch thunk of Hashable.hash(into:)();
          v336 = Hasher._finalize()();
          v337 = v335 + 7;
          v486 = v335;
          v338 = -1 << *(v335 + 32);
          v325 = v336 & ~v338;
          if ((*(v335 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v325))
          {
            v339 = ~v338;
            v340 = *(v473 + 72);
            v341 = v414;
            v342 = v462;
            do
            {
              v343 = v342;
              v344 = v341;
              sub_100022A54(v486[6] + v340 * v325, v341, type metadata accessor for BeaconStatus);
              v10 = v415;
              if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
              {
                v345 = v483;
                v346 = *(v344 + *(v483 + 20));
                sub_100022C40(v344, type metadata accessor for BeaconStatus);
                v342 = v462;
                if (v346 == *(v10 + *(v345 + 20)))
                {
                  goto LABEL_218;
                }
              }

              else
              {
                sub_100022C40(v344, type metadata accessor for BeaconStatus);
                v342 = v343;
              }

              v325 = (v325 + 1) & v339;
              v341 = v414;
            }

            while (((*(v337 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v325) & 1) != 0);
          }
        }

        else if ((v332 & 1) == 0)
        {
          sub_100E055EC();
        }

        v114 = v487;
        *(v487 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v325;
        sub_10002911C(v415, v114[6] + *(v473 + 72) * v325, type metadata accessor for BeaconStatus);
        v347 = v114[2];
        v270 = __OFADD__(v347, 1);
        v348 = v347 + 1;
        if (v270)
        {
          goto LABEL_217;
        }

        v114[2] = v348;
        sub_100022C40(v419, type metadata accessor for BeaconStatus);
        sub_100022C40(v437, type metadata accessor for BeaconStatus);
        sub_100022C40(v442, type metadata accessor for OwnedBeaconRecord);
        sub_100022C40(v478, type metadata accessor for BeaconStatus);
        v76 = v481;
        (*v471)(v474, v481);
        v116 = v467;
LABEL_178:
        sub_100022C40(v412, type metadata accessor for BeaconStatus);
        v110 = v445;
        v113 = v444;
        goto LABEL_145;
      }

      v223 = v421;
      if (qword_101694BF8 != -1)
      {
        swift_once();
      }

      v224 = type metadata accessor for Logger();
      sub_1000076D4(v224, qword_10177BA38);
      v172(v223, v474, v169);
      v225 = v422;
      sub_100022A54(v437, v422, type metadata accessor for BeaconStatus);
      v226 = Logger.logObject.getter();
      v227 = static os_log_type_t.default.getter();
      v228 = os_log_type_enabled(v226, v227);
      v229 = v483;
      if (v228)
      {
        v230 = swift_slowAlloc();
        v488 = swift_slowAlloc();
        *v230 = v410;
        *(v230 + 4) = 1752392040;
        *(v230 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v231 = dispatch thunk of CustomStringConvertible.description.getter();
        v233 = v232;
        v468 = *v471;
        (v468)(v223, v481);
        v234 = sub_1000136BC(v231, v233, &v488);

        *(v230 + 14) = v234;
        *(v230 + 22) = 2080;
        v235 = sub_10001993C(v225[*(v229 + 20)] & 0xB);
        v236 = sub_100019E48(v235 & 0x10101FF);
        v238 = v237;
        sub_100022C40(v225, type metadata accessor for BeaconStatus);
        v239 = sub_1000136BC(v236, v238, &v488);

        *(v230 + 24) = v239;
        _os_log_impl(&_mh_execute_header, v226, v227, "Beacon status for %{private,mask.hash}s expired. %s", v230, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100022C40(v225, type metadata accessor for BeaconStatus);
        v468 = *v471;
        (v468)(v223, v169);
      }

      sub_100022A54(v478, v479, type metadata accessor for BeaconStatus);
      v248 = v486;
      Hasher.init(_seed:)();
      a1 = sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      sub_10000768C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v249 = Hasher._finalize()();
      v250 = -1 << *(v248 + 32);
      v10 = v249 & ~v250;
      v251 = v475;
      if ((*(v485 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        v252 = ~v250;
        v253 = *(v473 + 72);
        do
        {
          sub_100022A54(v248[6] + v253 * v10, v251, type metadata accessor for BeaconStatus);
          v254 = v479;
          if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
          {
            v255 = v475[*(v229 + 20)];
            sub_100022C40(v475, type metadata accessor for BeaconStatus);
            v162 = v255 == v254[*(v229 + 20)];
            v251 = v475;
            if (v162)
            {
              sub_100022C40(v479, type metadata accessor for BeaconStatus);
              sub_100022C40(v437, type metadata accessor for BeaconStatus);
              sub_100022C40(v442, type metadata accessor for OwnedBeaconRecord);
              v165 = v474;
              v114 = v486;
              a1 = v468;
              goto LABEL_37;
            }
          }

          else
          {
            sub_100022C40(v251, type metadata accessor for BeaconStatus);
          }

          v10 = (v10 + 1) & v252;
          v248 = v486;
        }

        while (((*(v485 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
      }

      v276 = swift_isUniquelyReferenced_nonNull_native();
      sub_100022A54(v479, v463, type metadata accessor for BeaconStatus);
      v487 = v248;
      v277 = v248[2];
      if (v248[3] <= v277)
      {
        v280 = v277 + 1;
        if (v276)
        {
          sub_100DF7AB8(v280);
        }

        else
        {
          sub_100E0AF78(v280);
        }

        v294 = v462;
        v295 = v487;
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v486 = *(v483 + 24);
        dispatch thunk of Hashable.hash(into:)();
        v296 = Hasher._finalize()();
        v297 = v295 + 7;
        v298 = -1 << *(v295 + 32);
        v10 = v296 & ~v298;
        if ((*(v295 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10))
        {
          a1 = v295;
          v299 = ~v298;
          v300 = *(v473 + 72);
          do
          {
            sub_100022A54(a1[6] + v300 * v10, v294, type metadata accessor for BeaconStatus);
            v301 = v463;
            if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
            {
              v302 = v483;
              v303 = v462[*(v483 + 20)];
              sub_100022C40(v462, type metadata accessor for BeaconStatus);
              v294 = v462;
              if (v303 == v301[*(v302 + 20)])
              {
                goto LABEL_218;
              }
            }

            else
            {
              sub_100022C40(v294, type metadata accessor for BeaconStatus);
            }

            v10 = (v10 + 1) & v299;
          }

          while (((*(v297 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
        }
      }

      else if ((v276 & 1) == 0)
      {
        sub_100E055EC();
      }

      v114 = v487;
      *(v487 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v10;
      sub_10002911C(v463, v114[6] + *(v473 + 72) * v10, type metadata accessor for BeaconStatus);
      v304 = v114[2];
      v270 = __OFADD__(v304, 1);
      v305 = v304 + 1;
      if (v270)
      {
        goto LABEL_216;
      }

      v114[2] = v305;
      sub_100022C40(v479, type metadata accessor for BeaconStatus);
      v293 = v437;
      goto LABEL_143;
    }

    sub_10000B3A8(v170, &qword_10169DBD0, &unk_1013D6790);
    if (qword_101694BF8 != -1)
    {
      swift_once();
    }

    v205 = type metadata accessor for Logger();
    sub_1000076D4(v205, qword_10177BA38);
    v206 = v423;
    v172(v423, v474, v169);
    v207 = Logger.logObject.getter();
    v208 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v488 = v210;
      *v209 = v433;
      *(v209 + 4) = 1752392040;
      *(v209 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v211 = dispatch thunk of CustomStringConvertible.description.getter();
      v213 = v212;
      a1 = *v471;
      (*v471)(v206, v481);
      v214 = sub_1000136BC(v211, v213, &v488);

      *(v209 + 14) = v214;
      _os_log_impl(&_mh_execute_header, v207, v208, "No beacon status for %{private,mask.hash}s", v209, 0x16u);
      sub_100007BAC(v210);
    }

    else
    {

      a1 = *v471;
      (*v471)(v206, v169);
    }

    v240 = v476;
    sub_100022A54(v478, v480, type metadata accessor for BeaconStatus);
    v241 = v486;
    Hasher.init(_seed:)();
    v441 = sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    sub_10000768C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    v242 = Hasher._finalize()();
    v243 = -1 << *(v241 + 32);
    v10 = v242 & ~v243;
    if (((*(v485 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
LABEL_110:
      v272 = swift_isUniquelyReferenced_nonNull_native();
      sub_100022A54(v480, v464, type metadata accessor for BeaconStatus);
      v487 = v241;
      v273 = v241[2];
      v274 = v241[3];
      v275 = v462;
      v468 = a1;
      if (v274 <= v273)
      {
        v278 = v452;
        v279 = v273 + 1;
        if (v272)
        {
          sub_100DF7AB8(v279);
        }

        else
        {
          sub_100E0AF78(v279);
        }

        v281 = v487;
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v486 = *(v483 + 24);
        dispatch thunk of Hashable.hash(into:)();
        v282 = Hasher._finalize()();
        v283 = v281 + 7;
        v284 = -1 << *(v281 + 32);
        v10 = v282 & ~v284;
        if ((*(v281 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10))
        {
          a1 = v281;
          v285 = ~v284;
          v286 = *(v473 + 72);
          do
          {
            v287 = v275;
            sub_100022A54(a1[6] + v286 * v10, v278, type metadata accessor for BeaconStatus);
            v288 = v464;
            if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
            {
              v289 = v483;
              v290 = v452[*(v483 + 20)];
              sub_100022C40(v452, type metadata accessor for BeaconStatus);
              v162 = v290 == v288[*(v289 + 20)];
              v275 = v462;
              v278 = v452;
              if (v162)
              {
                goto LABEL_218;
              }
            }

            else
            {
              sub_100022C40(v278, type metadata accessor for BeaconStatus);
              v275 = v287;
            }

            v10 = (v10 + 1) & v285;
          }

          while (((*(v283 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
        }
      }

      else if ((v272 & 1) == 0)
      {
        sub_100E055EC();
      }

      v114 = v487;
      *(v487 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v10;
      sub_10002911C(v464, v114[6] + *(v473 + 72) * v10, type metadata accessor for BeaconStatus);
      v291 = v114[2];
      v270 = __OFADD__(v291, 1);
      v292 = v291 + 1;
      if (v270)
      {
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v114[2] = v292;
      v293 = v480;
LABEL_143:
      sub_100022C40(v293, type metadata accessor for BeaconStatus);
      sub_100022C40(v442, type metadata accessor for OwnedBeaconRecord);
      sub_100022C40(v478, type metadata accessor for BeaconStatus);
      v76 = v481;
      (v468)(v474, v481);
LABEL_144:
      v110 = v445;
      v113 = v444;
      v116 = v467;
LABEL_145:
      v108 = v466;
      goto LABEL_12;
    }

    v244 = ~v243;
    v245 = *(v473 + 72);
    while (1)
    {
      sub_100022A54(v241[6] + v245 * v10, v240, type metadata accessor for BeaconStatus);
      v246 = v480;
      if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
      {
        break;
      }

      sub_100022C40(v240, type metadata accessor for BeaconStatus);
LABEL_74:
      v10 = (v10 + 1) & v244;
      v241 = v486;
      if (((*(v485 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    v247 = v476[*(v192 + 20)];
    sub_100022C40(v476, type metadata accessor for BeaconStatus);
    v162 = v247 == v246[*(v192 + 20)];
    v240 = v476;
    if (!v162)
    {
      goto LABEL_74;
    }

    sub_100022C40(v480, type metadata accessor for BeaconStatus);
    v163 = type metadata accessor for OwnedBeaconRecord;
    v164 = v442;
LABEL_36:
    sub_100022C40(v164, v163);
    v165 = v474;
    v114 = v486;
LABEL_37:
    sub_100022C40(v478, type metadata accessor for BeaconStatus);
    v76 = v481;
    (a1)(v165, v481);
    v110 = v445;
    v113 = v444;
    v116 = v467;
    v108 = v466;
  }

  while (v467);
LABEL_13:
  while (1)
  {
    v117 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      break;
    }

    if (v117 >= v113)
    {

      v349 = v443;
      v350 = sub_100AD4838(v114, v443);

      if (qword_101694BF8 != -1)
      {
        swift_once();
      }

      v351 = type metadata accessor for Logger();
      sub_1000076D4(v351, qword_10177BA38);
      v352 = v430;
      sub_100022A54(v439, v430, type metadata accessor for OwnedBeaconGroup);

      v353 = Logger.logObject.getter();
      v354 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v353, v354))
      {
        v355 = swift_slowAlloc();
        v488 = swift_slowAlloc();
        *v355 = v410;
        *(v355 + 4) = 1752392040;
        *(v355 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v356 = dispatch thunk of CustomStringConvertible.description.getter();
        v357 = v352;
        v359 = v358;
        sub_100022C40(v357, type metadata accessor for OwnedBeaconGroup);
        v360 = sub_1000136BC(v356, v359, &v488);

        *(v355 + 14) = v360;
        *(v355 + 22) = 2080;
        sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
        sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
        v349 = v443;
        v361 = Set.description.getter();
        v363 = sub_1000136BC(v361, v362, &v488);

        *(v355 + 24) = v363;
        _os_log_impl(&_mh_execute_header, v353, v354, "MultipartStatus for %{private,mask.hash}s: %s)", v355, 0x20u);
        swift_arrayDestroy();

        v76 = v481;
      }

      else
      {

        sub_100022C40(v352, type metadata accessor for OwnedBeaconGroup);
      }

      v367 = v428;
      v368 = v429;
      sub_1000D2A70(v349, v429, &qword_1016980D0, &unk_10138F3B0);
      v369 = (*(v470 + 48))(v368, 1, v76);
      v370 = v439;
      if (v369 == 1)
      {
        sub_10000B3A8(v368, &qword_1016980D0, &unk_10138F3B0);
        sub_100022A54(v370, v367, type metadata accessor for OwnedBeaconGroup);
        v371 = Logger.logObject.getter();
        v372 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v371, v372))
        {
          v373 = swift_slowAlloc();
          v374 = swift_slowAlloc();
          v488 = v374;
          *v373 = v433;
          *(v373 + 4) = 1752392040;
          *(v373 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v375 = dispatch thunk of CustomStringConvertible.description.getter();
          v377 = v376;
          sub_100022C40(v367, type metadata accessor for OwnedBeaconGroup);
          v378 = sub_1000136BC(v375, v377, &v488);

          *(v373 + 14) = v378;
          _os_log_impl(&_mh_execute_header, v371, v372, "No primary beacon in group %{private,mask.hash}s.", v373, 0x16u);
          sub_100007BAC(v374);
        }

        else
        {

          sub_100022C40(v367, type metadata accessor for OwnedBeaconGroup);
        }

        v382 = v439;
        v383 = sub_100AC3C94(v439);
        if (v383 == 3)
        {
          sub_10000B3A8(v349, &qword_1016980D0, &unk_10138F3B0);
          return v350;
        }

        v384 = v383;
        v385 = v409;
        v417(v409, 1, 1, v481);
        v366 = sub_100B07144(v350, v385);

        sub_10000B3A8(v385, &qword_1016980D0, &unk_10138F3B0);
        v386 = v406;
        sub_100022A54(v382, v406, type metadata accessor for OwnedBeaconGroup);

        v387 = Logger.logObject.getter();
        v388 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v387, v388))
        {
          v389 = swift_slowAlloc();
          v488 = swift_slowAlloc();
          *v389 = 141558787;
          *(v389 + 4) = 1752392040;
          *(v389 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v390 = dispatch thunk of CustomStringConvertible.description.getter();
          v392 = v391;
          sub_100022C40(v386, type metadata accessor for OwnedBeaconGroup);
          v393 = sub_1000136BC(v390, v392, &v488);

          *(v389 + 14) = v393;
          *(v389 + 22) = 2080;
          if (v384 <= 1)
          {
            if (v384)
            {
              v349 = v443;
              if (v384 == 1)
              {
                v394 = 0xE900000000000064;
                goto LABEL_202;
              }

LABEL_203:
              v394 = 0xE700000000000000;
              v395 = 0x6E776F6E6B6E75;
              goto LABEL_207;
            }

            v394 = 0xE700000000000000;
            v395 = 0x6E776F6E6B6E75;
LABEL_206:
            v349 = v443;
            goto LABEL_207;
          }

          if (v384 == 2)
          {
            v394 = 0xE700000000000000;
            v395 = 0x646570756F7267;
            goto LABEL_206;
          }

          v349 = v443;
          if (v384 != 4)
          {
            goto LABEL_203;
          }

          v394 = 0xEF657361436E4964;
LABEL_202:
          v395 = 0x6574617261706573;
LABEL_207:
          v396 = sub_1000136BC(v395, v394, &v488);

          *(v389 + 24) = v396;
          *(v389 + 32) = 2080;
          sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
          sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
          v397 = Set.description.getter();
          v399 = sub_1000136BC(v397, v398, &v488);

          *(v389 + 34) = v399;
          _os_log_impl(&_mh_execute_header, v387, v388, "Group %{private,mask.hash}s legacy status: %s. After separated: %s.", v389, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          sub_100022C40(v386, type metadata accessor for OwnedBeaconGroup);
        }

        v381 = v349;
      }

      else
      {
        v379 = v420;
        (*v453)(v420, v368, v76);
        v380 = v409;
        (*v472)(v409, v379, v76);
        v417(v380, 0, 1, v76);
        v366 = sub_100B07144(v350, v380);

        sub_10000B3A8(v380, &qword_1016980D0, &unk_10138F3B0);
        (*v471)(v379, v76);
        v381 = v349;
      }

      sub_10000B3A8(v381, &qword_1016980D0, &unk_10138F3B0);
      return v366;
    }

    v116 = *(v110 + 8 * v117);
    ++v108;
    if (v116)
    {
      v108 = v117;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  swift_once();
LABEL_4:
  v97 = type metadata accessor for Logger();
  sub_1000076D4(v97, qword_10177BA38);
  sub_100022A54(a1, v10, type metadata accessor for OwnedBeaconGroup);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v488 = v101;
    *v100 = 141558275;
    *(v100 + 4) = 1752392040;
    *(v100 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = v103;
    sub_100022C40(v10, type metadata accessor for OwnedBeaconGroup);
    v105 = sub_1000136BC(v102, v104, &v488);

    *(v100 + 14) = v105;
    _os_log_impl(&_mh_execute_header, v98, v99, "%{private,mask.hash}s is a single beacon group, returning default set of 1 beacon", v100, 0x16u);
    sub_100007BAC(v101);
  }

  else
  {

    sub_100022C40(v10, type metadata accessor for OwnedBeaconGroup);
  }

  sub_1000BC4D4(&qword_1016B54A0, &qword_1013D6830);
  v364 = swift_allocObject();
  *(v364 + 16) = xmmword_101385D80;
  sub_100519FB0();
  *(v364 + 32) = v365;
  v366 = sub_10112AB64(v364);
  swift_setDeallocating();
  sub_10000B3A8(v364 + 32, &qword_1016AF8E0, &qword_101393130);
  swift_deallocClassInstance();
  return v366;
}

uint64_t sub_100A8F20C(uint64_t a1)
{
  v161 = a1;
  v2 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v2 - 8);
  v146 = &v140 - v3;
  v145 = type metadata accessor for BeaconProductInfoRecord(0);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v141 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v5 - 8);
  v149 = (&v140 - v6);
  v150 = type metadata accessor for OwnedBeaconGroup(0);
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v147 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v152 = &v140 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v159 = v10;
  v160 = v11;
  v12 = __chkstk_darwin(v10);
  v158 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v153 = &v140 - v15;
  v16 = __chkstk_darwin(v14);
  v154 = &v140 - v17;
  v18 = __chkstk_darwin(v16);
  v143 = &v140 - v19;
  v20 = __chkstk_darwin(v18);
  v142 = &v140 - v21;
  __chkstk_darwin(v20);
  v151 = &v140 - v22;
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v23 - 8);
  v25 = &v140 - v24;
  v157 = type metadata accessor for OwnedBeaconRecord(0);
  v26 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v28);
  v30 = &v140 - v29;
  v31 = type metadata accessor for BeaconNamingRecord(0);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v1;
  v35 = v161;
  v163 = v161;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v36 = *(v32 + 48);
  v156 = v31;
  if (v36(v30, 1, v31) != 1)
  {
    sub_10002911C(v30, v34, type metadata accessor for BeaconNamingRecord);
    sub_100AA33AC(v35, v25);
    v49 = v157;
    v50 = v34;
    if ((*(v26 + 48))(v25, 1, v157) == 1)
    {
      sub_10000B3A8(v25, &unk_1016A9A20, &qword_10138B280);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_1000076D4(v51, qword_10177BA08);
      v52 = v159;
      v53 = v160;
      v54 = v153;
      (*(v160 + 16))(v153, v35, v159);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v164 = v58;
        *v57 = 141558275;
        *(v57 + 4) = 1752392040;
        *(v57 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        (*(v53 + 8))(v54, v52);
        v62 = sub_1000136BC(v59, v61, &v164);

        *(v57 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "groupedBeaconDisplayName: No beacon record for beacon identifier %{private,mask.hash}s", v57, 0x16u);
        sub_100007BAC(v58);
      }

      else
      {

        (*(v53 + 8))(v54, v52);
      }

LABEL_24:
      v63 = *(v50 + *(v156 + 32));

      v85 = type metadata accessor for BeaconNamingRecord;
      v86 = v50;
LABEL_25:
      sub_100022C40(v86, v85);
      return v63;
    }

    v64 = v155;
    sub_10002911C(v25, v155, type metadata accessor for OwnedBeaconRecord);
    v65 = v152;
    sub_1000D2A70(v64 + *(v49 + 28), v152, &qword_1016980D0, &unk_10138F3B0);
    v66 = v159;
    v67 = v160;
    if ((*(v160 + 48))(v65, 1, v159) == 1)
    {
      sub_10000B3A8(v65, &qword_1016980D0, &unk_10138F3B0);
      v68 = v154;
LABEL_18:
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_1000076D4(v73, qword_10177BA08);
      (*(v67 + 16))(v68, v35, v66);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v164 = v77;
        *v76 = 141558275;
        *(v76 + 4) = 1752392040;
        *(v76 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v68;
        v80 = v64;
        v82 = v81;
        (*(v67 + 8))(v79, v66);
        v83 = sub_1000136BC(v78, v82, &v164);

        *(v76 + 14) = v83;
        _os_log_impl(&_mh_execute_header, v74, v75, "groupedBeaconDisplayName: Beacon %{private,mask.hash}s does not belong to an item group or group record is missing.", v76, 0x16u);
        sub_100007BAC(v77);

        v84 = v80;
      }

      else
      {

        (*(v67 + 8))(v68, v66);
        v84 = v64;
      }

      sub_100022C40(v84, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_24;
    }

    v69 = v151;
    (*(v67 + 32))(v151, v65, v66);
    v70 = v149;
    sub_100AC53EC(v69, v149);
    v71 = v150;
    v72 = (*(v148 + 48))(v70, 1, v150);
    v68 = v154;
    if (v72 == 1)
    {
      (*(v67 + 8))(v69, v66);
      sub_10000B3A8(v70, &unk_1016AF8B0, &unk_1013A0700);
      v35 = v161;
      goto LABEL_18;
    }

    v88 = v70;
    v89 = v147;
    sub_10002911C(v88, v147, type metadata accessor for OwnedBeaconGroup);
    v90 = *(*(v89 + *(v71 + 40)) + 16);
    if (v90 > 0xFF)
    {
      __break(1u);
    }

    else
    {
      v91 = v146;
      if (v90 != 1)
      {
        v104 = sub_100B0E7A8(v64);
        sub_100AC1584(v161, v91);
        v105 = v145;
        v106 = (*(v144 + 48))(v91, 1, v145);
        if (v106 == 1)
        {
          sub_10000B3A8(v91, &unk_1016AF8C0, &unk_1013A07A0);
        }

        else
        {
          v110 = v141;
          sub_10002911C(v91, v141, type metadata accessor for BeaconProductInfoRecord);
          v111 = *(v110 + *(v105 + 84));
          if (v111)
          {
            v112 = *(v111 + 16) + 1;
            while (--v112)
            {
              v113 = (v111 + 64);
              v114 = *(v111 + 32);
              v111 += 64;
              if (v104 == v114)
              {
                v115 = v71;
                v116 = *(v113 - 1);
                v117 = *v113;
                v118 = v147;
                v119 = (v147 + *(v115 + 36));
                v120 = v119[1];
                v164 = *v119;
                v165 = v120;

                v121._countAndFlagsBits = 2108704;
                v121._object = 0xE300000000000000;
                String.append(_:)(v121);

                v122._countAndFlagsBits = v116;
                v122._object = v117;
                String.append(_:)(v122);

                swift_bridgeObjectRelease_n();

                v63 = v164;
                (*(v67 + 8))(v151, v66);
                sub_100022C40(v64, type metadata accessor for OwnedBeaconRecord);
                sub_100022C40(v141, type metadata accessor for BeaconProductInfoRecord);
                sub_100022C40(v50, type metadata accessor for BeaconNamingRecord);
                v85 = type metadata accessor for OwnedBeaconGroup;
                v86 = v118;
                goto LABEL_25;
              }
            }
          }

          sub_100022C40(v110, type metadata accessor for BeaconProductInfoRecord);
        }

        v123 = v142;
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v158 = v50;
        v124 = type metadata accessor for Logger();
        sub_1000076D4(v124, qword_10177BA08);
        v125 = v160;
        (*(v160 + 16))(v123, v161, v66);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v164 = v129;
          *v128 = 141558275;
          *(v128 + 4) = 1752392040;
          *(v128 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v130 = dispatch thunk of CustomStringConvertible.description.getter();
          v132 = v131;
          v133 = *(v125 + 8);
          v133(v123, v66);
          v134 = sub_1000136BC(v130, v132, &v164);
          v64 = v155;

          *(v128 + 14) = v134;
          _os_log_impl(&_mh_execute_header, v126, v127, "groupedBeaconDisplayName: No product info or partInfo for %{private,mask.hash}s.", v128, 0x16u);
          sub_100007BAC(v129);
          v69 = v151;

          v71 = v150;
        }

        else
        {

          v133 = *(v125 + 8);
          v133(v123, v66);
        }

        v135 = v147;
        v136 = (v147 + *(v71 + 36));
        v137 = v136[1];
        v164 = *v136;
        v165 = v137;

        v138._countAndFlagsBits = 2108704;
        v138._object = 0xE300000000000000;
        String.append(_:)(v138);
        v139 = v158;
        String.append(_:)(*&v158[*(v156 + 32)]);
        v63 = v164;
        v133(v69, v66);
        sub_100022C40(v64, type metadata accessor for OwnedBeaconRecord);
        sub_100022C40(v139, type metadata accessor for BeaconNamingRecord);
        v85 = type metadata accessor for OwnedBeaconGroup;
        v86 = v135;
        goto LABEL_25;
      }

      if (qword_101694BE8 == -1)
      {
        goto LABEL_31;
      }
    }

    swift_once();
LABEL_31:
    v92 = type metadata accessor for Logger();
    sub_1000076D4(v92, qword_10177BA08);
    v93 = v143;
    (*(v67 + 16))(v143, v161, v66);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v164 = v97;
      *v96 = 141558275;
      *(v96 + 4) = 1752392040;
      *(v96 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v101 = *(v67 + 8);
      v101(v93, v66);
      v102 = sub_1000136BC(v98, v100, &v164);

      *(v96 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v94, v95, "groupedBeaconDisplayName: Beacon %{private,mask.hash}s is from a single group.", v96, 0x16u);
      sub_100007BAC(v97);

      v71 = v150;

      v101(v151, v66);
      v103 = v155;
    }

    else
    {

      v107 = *(v67 + 8);
      v107(v93, v66);
      v107(v69, v66);
      v103 = v64;
    }

    sub_100022C40(v103, type metadata accessor for OwnedBeaconRecord);
    sub_100022C40(v50, type metadata accessor for BeaconNamingRecord);
    v108 = *(v71 + 36);
    v109 = v147;
    v63 = *(v147 + v108);

    v85 = type metadata accessor for OwnedBeaconGroup;
    v86 = v109;
    goto LABEL_25;
  }

  sub_10000B3A8(v30, &unk_1016B29E0, &unk_1013B70E0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177BA08);
  v38 = v159;
  v39 = v160;
  v40 = v158;
  (*(v160 + 16))(v158, v35, v159);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v164 = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v39 + 8))(v40, v38);
    v48 = sub_1000136BC(v45, v47, &v164);

    *(v43 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "groupedBeaconDisplayName: No beacon naming record for beacon %{private,mask.hash}s", v43, 0x16u);
    sub_100007BAC(v44);
  }

  else
  {

    (*(v39 + 8))(v40, v38);
  }

  return 0;
}

uint64_t sub_100A906A4(char a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BA08);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 8u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(a1 & 1);
  if (v10)
  {
  }

  type metadata accessor for Transaction();
  return static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100A907FC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_100B22B70;
  v19 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101646650;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);
}

uint64_t sub_100A90B94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v0;
  if (qword_101694E08 != -1)
  {
LABEL_14:
    swift_once();
  }

  v5 = type metadata accessor for URL();
  v6 = sub_1000076D4(v5, qword_10177BF38);
  v7 = sub_100AF4FC0(v6, sub_1006011CC, sub_100FFDCB0);
  v8 = v7;
  v9 = 0;
  v10 = v7 + 8;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v7[8];
  v14 = (v11 + 63) >> 6;
  v18 = v2 + 16;
  if (v13)
  {
    while (1)
    {
      v15 = v9;
LABEL_10:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v2 + 16))(v4, v8[6] + *(v2 + 72) * (v16 | (v15 << 6)), v1);
      sub_100ACF470(v4);
      (*(v2 + 8))(v4, v1);
      if (!v13)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v15 >= v14)
    {
    }

    v13 = v10[v15];
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_10;
    }
  }
}

void *sub_100A90DAC()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for URL();
  v46 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v42 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BeaconStoreFileRecord(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v44 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v1 + 168);
  if (qword_101694E78 != -1)
  {
    swift_once();
  }

  v40 = sub_1000076D4(v5, qword_10177C070);
  v15 = sub_100B3A0F8(v40);
  v16 = v15[2];
  if (v16)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v33 = v15;
    v18 = v15 + v17;
    v19 = *(v12 + 20);
    v48 = (v46 + 6);
    v49 = v19;
    v47 = *(v13 + 72);
    v36 = (v46 + 1);
    v37 = (v46 + 4);
    v46 = (v34 + 56);
    v35 = (v34 + 48);
    v45 = _swiftEmptyArrayStorage;
    v20 = v44;
    v38 = v10;
    v39 = v4;
    while (1)
    {
      sub_100022A54(v18, v20, type metadata accessor for BeaconStoreFileRecord);
      sub_1000D2A70(v20 + v49, v4, &unk_101696AC0, &qword_101390A60);
      if ((*v48)(v4, 1, v5) == 1)
      {
        sub_100022C40(v20, type metadata accessor for BeaconStoreFileRecord);
        sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
        (*v46)(v9, 1, 1, v10);
      }

      else
      {
        v21 = v9;
        v22 = v43;
        (*v37)(v43, v4, v5);
        v23 = objc_autoreleasePoolPush();
        __chkstk_darwin(v23);
        *(&v33 - 4) = v22;
        *(&v33 - 3) = v24;
        *(&v33 - 2) = v40;
        sub_1000BC4D4(&qword_101696920, &unk_10138B200);
        v20 = v44;
        OS_dispatch_queue.sync<A>(execute:)();
        objc_autoreleasePoolPop(v23);
        sub_100022C40(v20, type metadata accessor for BeaconStoreFileRecord);
        (*v36)(v22, v5);
        if (v51)
        {
          sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
          v9 = v21;
          v10 = v38;
          v25 = swift_dynamicCast();
          (*v46)(v9, v25 ^ 1u, 1, v10);
        }

        else
        {
          sub_10000B3A8(v50, &qword_101696920, &unk_10138B200);
          v9 = v21;
          v26 = v21;
          v10 = v38;
          (*v46)(v26, 1, 1, v38);
        }

        v27 = (*v35)(v9, 1, v10);
        v4 = v39;
        if (v27 != 1)
        {
          sub_10002911C(v9, v42, type metadata accessor for OwnedBeaconRecord);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v28 = v45;
          }

          else
          {
            v28 = sub_100A5C050(0, v45[2] + 1, 1, v45);
          }

          v30 = v28[2];
          v29 = v28[3];
          if (v30 >= v29 >> 1)
          {
            v28 = sub_100A5C050((v29 > 1), v30 + 1, 1, v28);
          }

          v28[2] = v30 + 1;
          v31 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v45 = v28;
          sub_10002911C(v42, v28 + v31 + *(v34 + 72) * v30, type metadata accessor for OwnedBeaconRecord);
          goto LABEL_7;
        }
      }

      sub_10000B3A8(v9, &unk_1016A9A20, &qword_10138B280);
LABEL_7:
      v18 += v47;
      if (!--v16)
      {

        return v45;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100A9146C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v10 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v10 + 44) + 8) >> 60 != 15)
  {
    return sub_100022A54(a1, a4, type metadata accessor for OwnedBeaconRecord);
  }

  v42 = v12;
  v43 = v11;
  v49 = a4;
  v14 = dispatch_group_create();
  v15 = swift_allocBox();
  v47 = v16;
  sub_100022A54(a1, v16, type metadata accessor for OwnedBeaconRecord);
  dispatch_group_enter(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v45 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v14;
  v44 = v18;
  sub_100017D5C(a2, a3);
  v48 = v15;

  v46 = v14;
  v19 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100008C00();
  *(v21 + 32) = 0x65736C6166;
  *(v21 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Modify record. Disk First? (%@)", 31, 2, v21);

  v22 = objc_autoreleasePoolPush();
  sub_101121B40(a1);
  v24 = v23;
  v41 = v23;
  objc_autoreleasePoolPop(v22);
  v39 = v4;
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v50 = type metadata accessor for OwnedBeaconRecord;
  sub_100022A54(a1, v13, type metadata accessor for OwnedBeaconRecord);
  v25 = *(v43 + 80);
  v40 = a1;
  v26 = v42;
  v27 = v13;
  v28 = swift_allocObject();
  v29 = v45;
  *(v28 + 16) = sub_100B27190;
  *(v28 + 24) = v29;
  v43 = type metadata accessor for OwnedBeaconRecord;
  sub_10002911C(v27, v28 + ((v25 + 32) & ~v25), type metadata accessor for OwnedBeaconRecord);

  sub_100FDCA40(v24, sub_100B271A0, v28);

  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = sub_100B27198;
  *(v30 + 24) = v31;

  Future.addFailure(block:)();

  sub_100022A54(v40, v27, v50);
  v32 = (v25 + 16) & ~v25;
  v33 = (v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_10002911C(v27, v34 + v32, v43);
  *(v34 + v33) = v39;
  v35 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_100B27198;
  v35[1] = v31;

  Future.addSuccess(block:)();

  v36 = v46;
  OS_dispatch_group.wait()();

  v37 = v47;
  swift_beginAccess();
  sub_100022A54(v37, v49, v50);
}

uint64_t sub_100A919F8()
{
  _StringGuts.grow(_:)(31);

  type metadata accessor for UUID();
  sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x203A737265657020;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  type metadata accessor for BeaconStatus(0);
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v2 = Set.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A6574616420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Date.localISO8601.getter();
  String.append(_:)(v7);

  return 0x64496E6F63616562;
}

Swift::Int sub_100A91BB8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_10000768C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100A91CA4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_10000768C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100A91D78(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_10000768C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100A91F4C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074FE4(v12[1]);
  v6 = v5;

  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v6;

  sub_1008CE048(0, 0, v4, &unk_1013D6B50, v9);

  sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
  v8(v4, 1, 1, v7);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_100BB9ADC(0, 0, v4, &unk_1013D6B60, v10);

  return sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_100A92198(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  type metadata accessor for DispatchQoS();
  *(v5 + 32) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v5 + 40) = v6;
  *v6 = v5;
  v6[1] = sub_100A9225C;

  return daemon.getter();
}

uint64_t sub_100A9225C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100A92438;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A92438(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100A9258C;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_100A926A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A9258C()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A926A8()
{
  v1 = v0[3];
  v0[9] = type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100A927E0;
  v4 = v0[8];
  v5 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000022, 0x800000010136CF90, v5, &unk_1013D6B70, v2, &unk_1013D6B80, v4);
}

uint64_t sub_100A927E0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100A928E0, 0, 0);
}

uint64_t sub_100A928E0()
{
  *(v0[2] + 48) = v0[11];

  static DispatchQoS.background.getter();

  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100A929F4;
  v2 = v0[4];
  v3 = v0[2];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000012, 0x800000010136CFC0, v2, &unk_1013D6B90, v3, &unk_1013D6B98, 0);
}

uint64_t sub_100A929F4(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100A92AF4, 0, 0);
}

uint64_t sub_100A92AF4()
{
  *(v0[2] + 32) = v0[13];

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A92B74(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = type metadata accessor for XPCActivity.Criteria.Options();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.Priority();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  *(v3 + 96) = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Criteria();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100A92D28, 0, 0);
}

uint64_t sub_100A92D28()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_1000D2A70(*(v0 + 32), v3, &qword_10169E370, &qword_1013BA3F0);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);
    v15 = *(v0 + 24);
    v16 = *(v13 + 32);
    v16(v12, *(v0 + 96), v14);
    v16(v15, v12, v14);
    (*(v13 + 56))(v15, 0, 1, v14);
    goto LABEL_7;
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  sub_10000B3A8(*(v0 + 96), &qword_10169E370, &qword_1013BA3F0);
  result = (*(v6 + 104))(v4, enum case for XPCActivity.Priority.utility(_:), v5);
  v9 = v7 * 0.5;
  if (COERCE__INT64(fabs(v7 * 0.5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v10 = *(v0 + 112);
  v19 = *(v0 + 104);
  v18 = *(v0 + 24);
  sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138B360;
  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  static XPCActivity.Criteria.Options.requiresClassC.getter();
  static XPCActivity.Criteria.Options.allowBattery.getter();
  *(v0 + 16) = v11;
  sub_10000768C(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
  sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
  sub_1000041A4(&qword_10169E388, &qword_10169E380, &unk_1013B8530, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
  (*(v10 + 56))(v18, 0, 1, v19);
LABEL_7:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100A93070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100A93134, 0, 0);
}

uint64_t sub_100A93134()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for XPCActivity.State.checkIn(_:) && v4 != enum case for XPCActivity.State.wait(_:))
  {
    if (v4 == enum case for XPCActivity.State.run(_:))
    {
      if (sub_100B1BC50())
      {
        if (qword_101694BF0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000076D4(v8, qword_10177BA20);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Calling postMetrics()", v11, 2u);
        }

        v12 = swift_task_alloc();
        v0[8] = v12;
        *v12 = v0;
        v12[1] = sub_100A93504;

        return sub_100A936D4();
      }

      type metadata accessor for XPCActivity();
      sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v17;
      v16 = sub_100A9366C;
      goto LABEL_21;
    }

    if (v4 == enum case for XPCActivity.State.defer(_:))
    {
      type metadata accessor for XPCActivity();
      sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      v16 = sub_100A9349C;
LABEL_21:

      return _swift_task_switch(v16, v13, v15);
    }

    if (v4 != enum case for XPCActivity.State.continue(_:) && v4 != enum case for XPCActivity.State.done(_:) && v4 != enum case for XPCActivity.State.invalidated(_:))
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100A9349C()
{
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1000EFE28, 0, 0);
}

uint64_t sub_100A93504()
{

  type metadata accessor for XPCActivity();
  sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A9366C, v1, v0);
}

uint64_t sub_100A9366C()
{
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1008CD60C, 0, 0);
}

uint64_t sub_100A936D4()
{
  v1[19] = v0;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for StableIdentifier(0);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[29] = v3;
  *v3 = v1;
  v3[1] = sub_100A93850;

  return daemon.getter();
}

uint64_t sub_100A93850(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 240) = a1;

  v3 = swift_task_alloc();
  *(v2 + 248) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FMIPService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B1100, type metadata accessor for FMIPService, &unk_10138C708);
  *v3 = v9;
  v3[1] = sub_100A93A2C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A93A2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v5 = *(v3 + 152);
  if (v1)
  {

    v6 = sub_100A94460;
  }

  else
  {

    v6 = sub_100A93B90;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100A93B90()
{

  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_100A93C7C;
  v3 = *(v0 + 152);

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_100A93C7C()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_100A93D94, v1, 0);
}

uint64_t sub_100A93D94()
{
  result = *(v0 + 136);
  v20 = *(result + 16);
  if (v20)
  {
    v2 = 0;
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v4 = *(v0 + 224);
      v5 = *(v0 + 192);
      v6 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v7 = result;
      v8 = *(v19 + 72);
      sub_100022A54(result + v6 + v8 * v2, v4, type metadata accessor for OwnedBeaconRecord);
      v9 = *(v18 + 24);
      sub_100022A54(v4 + v9, v5, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100022C40(v5, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_12;
      }

      sub_100022A54(v4 + v9, *(v0 + 184), type metadata accessor for StableIdentifier);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 == 3)
      {
        break;
      }

      if (v11 == 2)
      {
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_11:
        v12 = *(v0 + 184);

        v13 = type metadata accessor for UUID();
        (*(*(v13 - 8) + 8))(v12, v13);
LABEL_12:
        sub_10002911C(*(v0 + 224), *(v0 + 216), type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_10112434C((v14 > 1), v15 + 1, 1);
        }

        v16 = *(v0 + 216);
        _swiftEmptyArrayStorage[2] = v15 + 1;
        sub_10002911C(v16, _swiftEmptyArrayStorage + v6 + v15 * v8, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      v3 = *(v0 + 184);
      sub_100022C40(*(v0 + 224), type metadata accessor for OwnedBeaconRecord);
      sub_100022C40(v3, type metadata accessor for StableIdentifier);
LABEL_4:
      ++v2;
      result = v7;
      if (v20 == v2)
      {
        goto LABEL_17;
      }
    }

    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    goto LABEL_11;
  }

LABEL_17:

  *(v0 + 144) = &_swiftEmptySetSingleton;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  sub_100A81D44((v0 + 16), _swiftEmptyArrayStorage, (v0 + 144), (v0 + 64));

  v17 = swift_task_alloc();
  *(v0 + 280) = v17;
  *v17 = v0;
  v17[1] = sub_100A94170;

  return sub_10012FF84(v0 + 64);
}

uint64_t sub_100A94170()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_100A945B4;
  }

  else
  {
    v4 = sub_100A9429C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100A9429C(uint64_t a1)
{
  v2 = v1[21];
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  if (qword_101694C30 != -1)
  {
    swift_once();
  }

  v4 = v1[20];
  v5 = v1[21];
  v6 = sub_1000BC4D4(&qword_1016B55E0, &qword_1013D6BB8);
  sub_1000076D4(v6, qword_1016B4938);
  sub_1000D2A70(v5, v4, &unk_101696900, &unk_10138B1E0);
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();

  sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);

  v7 = v1[1];

  return v7();
}

uint64_t sub_100A94460()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing FMIPService!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A945B4()
{
  if (qword_101694BF0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA20);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error from postMetrics: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100A947AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1000BC4D4(&qword_1016AF9F0, &qword_1013CAFE8);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016AF9F8, &qword_1013CAFF0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[11] = v7;
  *v7 = v4;
  v7[1] = sub_100A94910;

  return daemon.getter();
}

uint64_t sub_100A94910(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[12] = a1;

  v3 = swift_task_alloc();
  v2[13] = v3;
  v4 = type metadata accessor for Daemon();
  v2[14] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100A94AF0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A94AF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100A94C58, a1, 0);
  }
}

uint64_t sub_100A94C58()
{
  v1 = v0[16];
  sub_10001B108();
  v0[17] = v2;
  v0[18] = v1;
  sub_10000768C(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v5 = sub_100A94EF8;
  }

  else
  {
    v5 = sub_100A94D38;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A94D38()
{

  return _swift_task_switch(sub_100A94DAC, 0, 0);
}

uint64_t sub_100A94DAC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  OS_dispatch_queue.sync<A>(execute:)();

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[19] = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconProductInfoRecordCache;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_100A94F7C;
  v5 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v5);
}

uint64_t sub_100A94EF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A94F7C()
{

  return _swift_task_switch(sub_100A95078, 0, 0);
}

uint64_t sub_100A95078()
{
  if (v0[2])
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177BA08);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Flushing beaconProductInfoRecordCache", v4, 2u);
    }

    v5 = v0[19];
    v6 = v0[4];

    v7 = *(v6 + v5);
    os_unfair_lock_lock((v7 + 24));

    *(v7 + 16) = _swiftEmptyDictionarySingleton;
    os_unfair_lock_unlock((v7 + 24));

    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_100A94F7C;
    v9 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v9);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100A952A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100A95344, 0, 0);
}

uint64_t sub_100A95344()
{
  v1 = v0[2];
  v2 = *(v1 + 40);

  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));

  v3 = *(v1 + 32);
  v0[4] = v3;
  if (v3)
  {
    v10 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_100A954D0;
    v5 = v0[3];

    return v10(v5);
  }

  else
  {
    v7 = v0[3];
    v8 = type metadata accessor for XPCActivity.State();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_10000B3A8(v7, &unk_10169BA88, &qword_101395670);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100A954D0()
{

  return _swift_task_switch(sub_1008BFCD8, 0, 0);
}

uint64_t sub_100A955E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for XPCActivity.Criteria.Options();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.Priority();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Criteria();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100A9579C, 0, 0);
}

uint64_t sub_100A9579C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_1000D2A70(v0[4], v3, &qword_10169E370, &qword_1013BA3F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_10000B3A8(v0[12], &qword_10169E370, &qword_1013BA3F0);
    v5 = *(v4 + 40);

    os_unfair_lock_lock((v5 + 20));
    v6 = *(v5 + 16);
    os_unfair_lock_unlock((v5 + 20));

    v7 = v0[13];
    v8 = v0[14];
    if (v6)
    {
      v17 = v0[3];
      (*(v0[10] + 104))(v0[11], enum case for XPCActivity.Priority.maintenance(_:), v0[9]);
      sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10138BBE0;
      static XPCActivity.Criteria.Options.requiresNetwork.getter();
      static XPCActivity.Criteria.Options.requiresClassC.getter();
      v0[2] = v9;
      sub_10000768C(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
      sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
      sub_1000041A4(&qword_10169E388, &qword_10169E380, &unk_1013B8530, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
      (*(v8 + 56))(v17, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v0[3], 1, 1, v7);
    }
  }

  else
  {
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    v13 = v0[3];
    v14 = *(v11 + 32);
    v14(v10, v0[12], v12);
    v14(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100A95AB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for XPCActivity.State();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100A95B70, 0, 0);
}

uint64_t sub_100A95B70()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_100A95D54;

    return daemon.getter();
  }

  else if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    type metadata accessor for XPCActivity();
    sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100A963F4, v7, v6);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100A95D54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100A95F30;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A95F30(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100A96090;
    v6 = 0;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_100A96204;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100A96090()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177BA08);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Missing BeaconStoreActor!", v3, 2u);
  }

  type metadata accessor for XPCActivity();
  sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A9632C, v5, v4);
}

uint64_t sub_100A96204()
{
  sub_100E6D7E0();

  return _swift_task_switch(sub_100A9626C, 0, 0);
}

uint64_t sub_100A9626C()
{

  type metadata accessor for XPCActivity();
  sub_10000768C(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A9632C, v1, v0);
}

uint64_t sub_100A9632C()
{
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100A96394, 0, 0);
}

uint64_t sub_100A96394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A963F4()
{
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100B27E38, 0, 0);
}

unint64_t sub_100A9645C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B16E04(*a1);
  *a2 = result;
  return result;
}

CKRecordZoneID sub_100A96488()
{
  sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._object = v1;
  v2._countAndFlagsBits = 0x74536E6F63616542;
  v2._object = 0xEB0000000065726FLL;
  result.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v2, v0).super.isa;
  qword_10177BA50 = result.super.isa;
  return result;
}

uint64_t sub_100A96500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  if (*a1)
  {
    v11 = *a1;
  }

  else
  {
    v18 = *(a2 + 216);
    v12 = *(a2 + 192);
    v13 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v17[2] = "Could not restore record %@";
    v17[3] = v13;
    (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    v17[1] = sub_10000768C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    type metadata accessor for CloudKitCoordinator();
    v15 = swift_allocObject();

    v11 = sub_100B1C0B4(v18, a2, v12, v14, v15);

    *v19 = v11;
  }

  *v20 = v11;
}

uint64_t sub_100A96828()
{
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (*(v4 + 192) == 1 || *(v4 + 144) && (, v0 = sub_10050252C(), , (v0 & 1) != 0))
  {

    v1 = 1;
  }

  else
  {
    v2 = sub_10047B36C();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

id sub_100A96904()
{
  v1 = OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___locationStateCapture;
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___locationStateCapture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___locationStateCapture);
  }

  else
  {
    v4 = objc_allocWithZone(FMStateCapture);

    v5 = [v4 init];
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100B26C74;
    *(v6 + 24) = v0;
    v11[4] = sub_100B26C7C;
    v11[5] = v6;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10015013C;
    v11[3] = &unk_1016480B8;
    v7 = _Block_copy(v11);

    [v5 setStateCaptureBlock:v7];
    _Block_release(v7);

    v8 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_100A96A60@<X0>(uint64_t *a1@<X8>)
{
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000076D4(v2, qword_10177BF38);
  result = sub_100AF4FC0(v3, sub_1006011CC, sub_100FFDCB0);
  *a1 = result;
  return result;
}

uint64_t sub_100A96AF8()
{
  v1 = OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher);
  }

  else
  {
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    sub_1000BC4D4(&qword_1016B55C0, &qword_101411AA0);
    sub_1000041A4(&qword_1016B55C8, &qword_1016B55C0, &qword_101411AA0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100A96C40()
{
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher);
  }

  else
  {
    v1 = *(*(v0 + 168) + 56);
    *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher) = v1;
    swift_retain_n();
  }

  return v1;
}

void *sub_100A96C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v103 = a4;
  v113 = a2;
  v114 = a3;
  v115 = a1;
  v110 = *v4;
  v5 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v5 - 8);
  v104 = &v97 - v6;
  v107 = sub_1000BC4D4(&qword_1016B5608, &qword_1013D6BE8);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v97 - v7;
  v123 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v123);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchQoS();
  v109 = *(v112 - 8);
  v10 = __chkstk_darwin(v112);
  v108 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v97 - v12;
  v122 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v122 - 8);
  __chkstk_darwin(v122);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0x74536E6F63616542;
  v4[3] = 0xEB0000000065726FLL;
  v4[4] = 0;
  sub_1000BC4D4(&qword_1016B5610, &unk_1013D6BF0);
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  v4[5] = v17;
  v4[6] = 0;
  LOBYTE(aBlock[0]) = 0;
  sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
  swift_allocObject();
  v4[7] = CurrentValueSubject.init(_:)();
  v116 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v120 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v18 = *(v14 + 104);
  v121 = v14 + 104;
  v124 = v18;
  (v18)(v16);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v19 = sub_10000768C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v118 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v117 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  v119 = v19;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v97 = v16;
  v4[9] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[11] = 0;
  v98 = v4;
  v102 = ".searchpartyd.BeaconStore";
  v20 = v16;
  v21 = v120;
  v22 = v122;
  v23 = v124;
  v124(v20, v120, v122);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v97;
  v4[12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v102 = "parationMonitoringWorkQueue";
  v23(v24, v21, v22);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = v98;
  v98[13] = v25;
  v26[14] = 0;
  v102 = "parationMonitoringDataQueue";
  v26[15] = 0;
  v26[16] = 0;
  v27 = v120;
  v124(v24, v120, v22);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26[18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v124(v24, v27, v122);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v24;
  v26[19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v29 = qword_10177BA50;
  v26[20] = qword_10177BA50;
  v26[22] = 0;
  sub_1000BC4D4(&qword_1016B5618, &unk_1013D6C00);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 16) = 0;
  v26[26] = &_swiftEmptySetSingleton;
  v102 = (v26 + 26);
  v26[23] = v30;
  v31 = SPBeaconsChangedNotification;
  v32 = v29;
  v33 = v31;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v34 = SPUnknownBeaconsChangedNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v35 = SPUnknownBeaconsSetChangedNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v36 = SPSeparationMonitoringBeaconsChangedNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v37 = SPSeparationMonitoringStateChangedNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  v38 = SPAccessoryDidPairNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_analyticsXPCActivity) = 0;
  v39 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
  v124(v24, v120, v122);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v26 + v39) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_statusForBeacon) = _swiftEmptyDictionarySingleton;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_attachEventForBeacon) = _swiftEmptyDictionarySingleton;
  PressuredExitTransactionManager.init()();
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___locationStateCapture) = 0;
  v40 = (v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged);
  *v41 = 0;
  v41[1] = 0;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer) = 0;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher) = 0;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager) = 0;
  v42 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
  v101 = sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v26 + v42) = v43;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher) = 0;
  v44 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_estimatedLocationSubject;
  sub_1000BC4D4(&qword_1016B28A8, &qword_1013D3768);
  swift_allocObject();
  *(v26 + v44) = PassthroughSubject.init()();
  v45 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject;
  v99 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject;
  sub_1000BC4D4(&qword_1016B5620, &qword_1013D6C10);
  swift_allocObject();
  *(v26 + v45) = PassthroughSubject.init()();
  v46 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_changeSetSequence;
  type metadata accessor for Sequencer();
  *(v26 + v46) = Sequencer.__allocating_init(name:softTimeout:hardTimeout:)();
  v47 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper;
  _s22SharedBeaconUUIDMapperCMa();
  v48 = swift_allocObject();
  *(v48 + 16) = _swiftEmptyDictionarySingleton;
  *(v48 + 24) = _swiftEmptyDictionarySingleton;
  *(v26 + v47) = v48;
  v49 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_hiddenBeaconCoordinator;
  _s23HiddenBeaconCoordinatorCMa();
  v50 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v26 + v49) = v50;
  *(v50 + 112) = &_swiftEmptySetSingleton;
  v51 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueue;
  v124(v28, v120, v122);
  v111 = v13;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v100 = v9;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = v28;
  *(v26 + v51) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords) = 0;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords) = 0;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconNamingRecordCache) = _swiftEmptyDictionarySingleton;
  v53 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconProductInfoRecordCache;
  sub_1000BC4D4(&qword_1016B5628, &qword_1013D6C18);
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  *(v54 + 16) = _swiftEmptyDictionarySingleton;
  *(v26 + v53) = v54;
  v55 = v26[9];
  type metadata accessor for QueueSynchronizer();
  swift_allocObject();
  v56 = v55;
  v26[10] = QueueSynchronizer.init(queue:)();
  v57 = *(v26 + v51);
  swift_allocObject();
  v58 = v57;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer) = QueueSynchronizer.init(queue:)();
  v60 = v114;
  v59 = v115;
  v26[27] = v115;
  v26[24] = v113;
  v26[25] = v60;
  type metadata accessor for BeaconStoreFileManager();
  swift_allocObject();
  swift_retain_n();

  v26[21] = sub_100B29BB8(v59);
  v61 = v26[7];
  sub_1000BC4D4(&qword_1016B5630, &unk_1013D6C20);
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  v26[8] = v62;
  v63 = v103;
  v26[17] = v103;
  aBlock[0] = *(v26 + v99);
  sub_1000041A4(&qword_1016B5638, &qword_1016B5620, &qword_1013D6C10, &protocol conformance descriptor for PassthroughSubject<A, B>);

  v103 = v63;
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher) = Publisher.eraseToAnyPublisher()();
  aBlock[0] = *(v60 + 64);
  v126 = v26[9];
  v64 = v126;
  v65 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v66 = v104;
  (*(*(v65 - 8) + 56))(v104, 1, 1, v65);

  v67 = v64;
  sub_1000BC4D4(&qword_1016B2A78, &qword_1013EACA0);
  sub_1000041A4(&unk_1016B2A80, &qword_1016B2A78, &qword_1013EACA0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v68 = v105;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v66, &unk_1016B0FE0, &unk_101391980);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016B5640, &qword_1016B5608, &qword_1013D6BE8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v69 = v107;
  Publisher<>.sink(receiveValue:)();

  (*(v106 + 8))(v68, v69);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  type metadata accessor for InstructionEventCoalescer();
  swift_allocObject();

  v71 = sub_100E92444(v70);

  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer) = v71;

  v107 = 0x800000010136D250;
  v72 = v111;
  static DispatchQoS.background.getter();
  v73 = swift_allocObject();
  *(v73 + 16) = v110;
  type metadata accessor for XPCActivity();
  v74 = swift_allocObject();
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v74 + 40) = v75;
  swift_unknownObjectWeakInit();
  *(v74 + 88) = 0;
  *(v74 + 96) = 0;
  *(v74 + 104) = 0;
  v76 = v109;
  (*(v109 + 16))(v108, v72, v112);
  v124(v52, v120, v122);
  aBlock[0] = _swiftEmptyArrayStorage;

  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v74 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v74 + 24) = 0xD00000000000002BLL;
  *(v74 + 32) = v107;
  *(v74 + 48) = sub_100B27B88;
  *(v74 + 56) = v73;
  *(v74 + 64) = sub_100B27B90;
  *(v74 + 72) = v26;

  sub_100997398();

  (*(v76 + 8))(v111, v112);
  *(v26 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_analyticsXPCActivity) = v74;

  v77 = objc_opt_self();
  v78 = [v77 standardUserDefaults];
  v79 = String._bridgeToObjectiveC()();
  v80 = [v78 stringForKey:v79];

  if (v80)
  {
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_1000076D4(v84, qword_10177BA08);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock[0] = v88;
      *v87 = 136446210;
      v89 = sub_1000136BC(v81, v83, aBlock);

      *(v87 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v85, v86, "Previous daemon crashed during transaction: %{public}s", v87, 0xCu);
      sub_100007BAC(v88);
    }

    else
    {
    }

    v91 = [v77 standardUserDefaults];
    v92 = String._bridgeToObjectiveC()();
    [v91 setBool:1 forKey:v92];

    v93 = [v77 standardUserDefaults];
    v94 = String._bridgeToObjectiveC()();
    [v93 removeObjectForKey:v94];

    v90 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100A984E8;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A985BC;
    aBlock[3] = &unk_101648770;
    v95 = _Block_copy(aBlock);
    AnalyticsSendEventLazy();

    _Block_release(v95);
  }

  else
  {

    v90 = v103;
  }

  return v26;
}

uint64_t sub_100A981C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100AA2958();
  }

  return result;
}

void sub_100A9821C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 == 2)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BA08);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218496;
      *(v7 + 4) = 43200;
      *(v7 + 12) = 2048;
      *(v7 + 14) = 43200;
      *(v7 + 22) = 2048;
      *(v7 + 24) = 86400;
      _os_log_impl(&_mh_execute_header, v5, v6, "BeaconStore XPC criteria: delay %lld, gracePeriod %lld, interval %lld", v7, 0x20u);
    }

    v8 = xmmword_1013D6370;
    v9 = vdupq_n_s64(0xA8C0uLL);
    v3 = 257;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 8);
  }

  *a2 = v3;
  *(a2 + 8) = v9;
  *(a2 + 24) = v8;
}

void sub_100A9837C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  Transaction.capture()();
  if (a3 == 3)
  {
    sub_1009971C0();
  }

  else if (a3 == 2)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177BA08);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "XPC activity fired for BeaconStore", v8, 2u);
    }

    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    sub_1009971E8();
  }
}

unint64_t sub_100A984E8()
{
  sub_1000BC4D4(&qword_1016B5648, &qword_1013D6C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x800000010136D330;
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  v1 = sub_10090AFFC(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_1016B5650, &qword_1013D6C38);
  return v1;
}

Class sub_100A985BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void *sub_100A98658()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for CryptorRepairTool();
  v3 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v3[3] = v4;
  v3[4] = 0;
  v3[5] = sub_100B263F4;
  v3[6] = v2;
  sub_1000BC4D4(&qword_1016B55A8, &qword_1013D6AD0);
  swift_allocObject();
  v3[2] = KeyedThrottle.init(throttleInterval:)();
  *(*(v1 + 168) + 32) = v3;

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v8 & 1) == 0)
  {
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_100FD26B8();
    sub_100FD3164(1);
    sub_100FD3A30();
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }

  if (*(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer))
  {
    type metadata accessor for BeaconKeyManager(0);

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v6 = *(OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_publisher + 0x7365547265646E75);

    sub_100E9063C(v6);

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1012CF9EC();

    sub_100B1B1AC(v7, v1);

    unsafeFromAsyncTask<A>(_:)();

    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A98A28(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = type metadata accessor for Transaction();
    __chkstk_darwin(v2);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_100A98AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_100B26A24;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647E88;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v6, v4);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_100A98DE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a2[9];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = type metadata accessor for Transaction();
    __chkstk_darwin(v11);
    *&v12[-16] = a2;
    *&v12[-8] = v3;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A98F8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100A99020;

  return daemon.getter();
}

uint64_t sub_100A99020(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100A991FC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A991FC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100A993BC;
  }

  else
  {

    *(v4 + 48) = a1;
    v5 = sub_100A99350;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A99350()
{
  *(v0[2] + 176) = v0[6];

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A993BC()
{
  *(*(v0 + 16) + 176) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A99424(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100A994F0;

  return daemon.getter();
}

uint64_t sub_100A994F0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  type metadata accessor for Daemon();
  sub_10000768C(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A99648, v3, v2);
}

uint64_t sub_100A99648()
{
  *(v0 + 48) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100A996BC, 0, 0);
}

uint64_t sub_100A996BC()
{
  if (qword_101695240 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C648;
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  swift_weakInit();
  v5 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100A997F4;

  return v5(v1, &unk_1013D6B08, v2);
}

uint64_t sub_100A997F4(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100A99918, 0, 0);
}

uint64_t sub_100A99918()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013D6B18, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100A99A68()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_100A99B34(uint64_t a1, char a2)
{
  Transaction.capture()();
  if (a2)
  {
    v32[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_101694BE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = *(a1 + 16);
    v16 = (v12 + 63) >> 6;
    while (v14)
    {
      v17 = v10;
LABEL_14:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(*(a1 + 56) + ((v17 << 9) | (8 * v18)));
      v20 = __OFADD__(v11, v19);
      v11 += v19;
      if (v20)
      {
        __break(1u);
LABEL_17:
        sub_1001DB9A4(a1, 0);

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000076D4(v21, qword_10177BA08);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v32[0] = v25;
          *v24 = 136446210;
          *(v24 + 4) = sub_1000136BC(0xD000000000000038, 0x800000010136D370, v32);
          _os_log_impl(&_mh_execute_header, v22, v23, "Publishing %{public}s analytics event.", v24, 0xCu);
          sub_100007BAC(v25);
        }

        else
        {
        }

        v26 = String._bridgeToObjectiveC()();
        v27 = swift_allocObject();
        *(v27 + 16) = v15;
        *(v27 + 24) = v11;
        *(v27 + 32) = v15 != v11;
        v32[4] = sub_100B27BF4;
        v32[5] = v27;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 1107296256;
        v32[2] = sub_100A985BC;
        v32[3] = &unk_1016487C0;
        v28 = _Block_copy(v32);

        AnalyticsSendEventLazy();
        _Block_release(v28);

        if (v15 != v11)
        {
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 134218240;
            *(v31 + 4) = v11;
            *(v31 + 12) = 2048;
            *(v31 + 14) = v15;
            _os_log_impl(&_mh_execute_header, v29, v30, "DUPLICATE BEACONS DETECTED -- beaconCount: %ld stableIdentifierCount: %ld", v31, 0x16u);
          }
        }

        return;
      }
    }

    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        goto LABEL_17;
      }

      v14 = *(a1 + 64 + 8 * v17);
      ++v10;
      if (v14)
      {
        v10 = v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BA08);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_1001DB7B8(a1, 1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "duplicateReport error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_1001DB7B8(a1, 1);
  }

  else
  {

    sub_1001DB7B8(a1, 1);
  }
}

unint64_t sub_100A9A010()
{
  sub_1000BC4D4(&qword_1016B5648, &qword_1013D6C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x800000010136D3B0;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x664F7265626D756ELL;
  *(inited + 64) = 0xEF736E6F63616542;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x800000010136D3D0;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  v1 = sub_10090AFFC(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_1016B5650, &qword_1013D6C38);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_100A9A13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100A9A1D0;

  return sub_100A9A4DC();
}

uint64_t sub_100A9A1D0(char a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100A9A2D0, 0, 0);
}

uint64_t sub_100A9A2D0()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100A9A3C4;

  return unsafeBlocking<A>(_:)(v5, sub_1002FB50C, v4, &type metadata for () + 1);
}

uint64_t sub_100A9A3C4()
{

  return _swift_task_switch(sub_100014748, 0, 0);
}

uint64_t sub_100A9A4FC()
{
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v1 = v0[2];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100A9A63C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD000000000000014, 0x8000000101354C60, sub_10046825C, v1, &type metadata for Bool);
}

uint64_t sub_100A9A63C()
{

  return _swift_task_switch(sub_100A9A738, 0, 0);
}

uint64_t sub_100A9A738()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

void *sub_100A9A79C(uint64_t a1)
{
  v90 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(v90 - 8);
  v3 = __chkstk_darwin(v90);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v73 = &v66 - v6;
  __chkstk_darwin(v5);
  v8 = &v66 - v7;
  v9 = type metadata accessor for Date();
  __chkstk_darwin(v9 - 8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DateInterval();
  v12 = *(v83 - 8);
  v13 = __chkstk_darwin(v83);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v14;
  __chkstk_darwin(v13);
  v16 = &v66 - v15;
  static Date.trustedNow.getter(v11);
  v82 = v16;
  DateInterval.init(start:duration:)();
  v68 = *(a1 + 16);
  if (v68)
  {
    v17 = 0;
    v18 = 0;
    v19 = *(v2 + 80);
    v66 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
    v72 = (v19 + 32) & ~v19;
    v67 = a1 + v72;
    v75 = *(v2 + 72);
    v78 = v12 + 16;
    v77 = v12 + 32;
    v88 = _swiftEmptyArrayStorage;
    v76 = xmmword_101385D80;
    v79 = v12;
    v87 = v8;
    while (1)
    {
      v70 = v17;
      sub_100022A54(v67 + v75 * v17, v8, type metadata accessor for SharedBeaconRecord);
      if (*&v8[*(v90 + 44)] == -1 || (v20 = &off_10160CF50, *&v8[*(v90 + 48)] == -1))
      {
        v20 = &off_10160CF78;
      }

      v21 = v20[2];
      v69 = v20;
      if (v21)
      {
        break;
      }

LABEL_3:
      v17 = v70 + 1;

      sub_100022C40(v8, type metadata accessor for SharedBeaconRecord);
      if (v17 == v68)
      {
        goto LABEL_36;
      }
    }

    v85 = *(v86 + v66);
    v22 = (v20 + 4);
    v84 = sub_10000768C(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
    while (1)
    {
      v26 = *v22;
      v93[3] = v90;
      v93[4] = v84;
      v27 = sub_1000280DC(v93);
      sub_100022A54(v8, v27, type metadata accessor for SharedBeaconRecord);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v89 = v18;
      v28 = v91;
      sub_10001F280(v93, &v91);
      v29 = v80;
      v30 = v83;
      (*(v12 + 16))(v80, v82, v83);
      v31 = (*(v12 + 80) + 64) & ~*(v12 + 80);
      v32 = v31 + v81;
      v33 = swift_allocObject();
      *(v33 + 16) = v28;
      sub_10000A748(&v91, v33 + 24);
      (*(v12 + 32))(v33 + v31, v29, v30);
      v34 = v33 + v32;
      *v34 = v26;
      *(v34 + 1) = 0;

      unsafeFromAsyncTask<A>(_:)();

      v35 = v91;
      v36 = v92;
      sub_100007BAC(v93);
      v37 = static os_log_type_t.default.getter();
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          v46 = qword_10177C380;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v47 = swift_allocObject();
          *(v47 + 16) = v76;
          v48 = UUID.uuidString.getter();
          v50 = v49;
          *(v47 + 56) = &type metadata for String;
          *(v47 + 64) = sub_100008C00();
          *(v47 + 32) = v48;
          *(v47 + 40) = v50;
          v8 = v87;
          os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v46, "Found SharedKeys for %@", 23, 2, v47);
          sub_100359088(v35, *(&v35 + 1), 2u);
          goto LABEL_27;
        }

        v8 = v87;
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v57 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v58 = swift_allocObject();
        *(v58 + 16) = v76;
        v59 = UUID.uuidString.getter();
        v61 = v60;
        *(v58 + 56) = &type metadata for String;
        *(v58 + 64) = sub_100008C00();
        *(v58 + 32) = v59;
        *(v58 + 40) = v61;
        os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v57, "Missing SharedKeys for %@", 25, 2, v58);

        sub_100022A54(v8, v74, type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_100A5C0C8(0, v88[2] + 1, 1, v88);
        }

        v12 = v79;
        v18 = v89;
        v63 = v88[2];
        v62 = v88[3];
        if (v63 >= v62 >> 1)
        {
          v88 = sub_100A5C0C8((v62 > 1), v63 + 1, 1, v88);
        }

        v64 = v88;
        v88[2] = v63 + 1;
        v24 = v64 + v72 + v63 * v75;
        v25 = &v95;
      }

      else
      {
        if (v36)
        {
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          v51 = qword_10177C380;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v52 = swift_allocObject();
          *(v52 + 16) = v76;
          v53 = v87;
          v54 = UUID.uuidString.getter();
          v56 = v55;
          *(v52 + 56) = &type metadata for String;
          *(v52 + 64) = sub_100008C00();
          *(v52 + 32) = v54;
          *(v52 + 40) = v56;
          os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v51, "Found SharedKeys for %@", 23, 2, v52);
          sub_100359088(v35, *(&v35 + 1), 1u);
          v8 = v53;
LABEL_27:

          v12 = v79;
          v18 = v89;
          goto LABEL_11;
        }

        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v71 = *(&v35 + 1);
        v38 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v39 = swift_allocObject();
        *(v39 + 16) = v76;
        v40 = v87;
        v41 = UUID.uuidString.getter();
        v43 = v42;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = sub_100008C00();
        *(v39 + 32) = v41;
        *(v39 + 40) = v43;
        v8 = v40;
        os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Found partial SharedKeys for %@", 31, 2, v39);

        sub_100022A54(v40, v73, type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_100A5C0C8(0, v88[2] + 1, 1, v88);
        }

        v12 = v79;
        v18 = v89;
        v45 = v88[2];
        v44 = v88[3];
        if (v45 >= v44 >> 1)
        {
          v88 = sub_100A5C0C8((v44 > 1), v45 + 1, 1, v88);
        }

        sub_100359088(v35, v71, 0);
        v23 = v88;
        v88[2] = v45 + 1;
        v24 = v23 + v72 + v45 * v75;
        v25 = &v94;
      }

      sub_10002911C(*(v25 - 32), v24, type metadata accessor for SharedBeaconRecord);
LABEL_11:
      ++v22;
      if (!--v21)
      {
        goto LABEL_3;
      }
    }
  }

  v88 = _swiftEmptyArrayStorage;
LABEL_36:
  (*(v12 + 8))(v82, v83);
  return v88;
}

uint64_t sub_100A9B21C()
{
  v0 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v0 - 8);
  v52 = &v52 - v1;
  v2 = type metadata accessor for DispatchPredicate();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v4 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v59 = &v52 - v15;
  if (qword_101694F00 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177C158);
  v16 = objc_opt_self();
  v17 = [v16 standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  v56 = [v17 integerForKey:v18];

  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v5, qword_10177BA58);
  (*(v6 + 16))(v11, v19, v5);
  URL.appendingPathComponent(_:isDirectory:)();
  v22 = *(v6 + 8);
  v21 = v6 + 8;
  v20 = v22;
  v22(v11, v5);
  URL.appendingPathComponent(_:)();
  v22(v14, v5);
  v23 = v58;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  sub_10088F30C(2, qword_10177BA50);
  v24 = URL.checkResourceIsReachable()();
  if (v25)
  {

    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v55 = v21;
  v27 = URL.checkResourceIsReachable()();
  if (v28)
  {

    v29 = v57;
    if (!v26)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v29 = v57;
    if (v27 || !v26)
    {
      goto LABEL_19;
    }
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000076D4(v30, qword_10177BA08);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Recovering from 110328093", v33, 2u);
    v23 = v58;
  }

  v34 = [v16 standardUserDefaults];
  v35 = String._bridgeToObjectiveC()();
  [v34 removeObjectForKey:v35];

  v29 = v57;
LABEL_19:
  if (v56 == 28)
  {
LABEL_24:
    v20(v23, v5);
    return (v20)(v59, v5);
  }

  v56 = v20;
  v36 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    v51 = v36;
    swift_once();
    v36 = v51;
    v29 = v57;
  }

  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, qword_10177C380, "Migration attempting to re-initialize store.", 44, 2, _swiftEmptyArrayStorage);
  v37 = *(v29 + 168);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v38 = v60;
  v39 = *(v37 + 16);
  *v4 = v39;
  v40 = v53;
  v41 = v54;
  (*(v53 + 104))(v4, enum case for DispatchPredicate.notOnQueue(_:), v54);
  v42 = v39;
  v43 = _dispatchPreconditionTest(_:)();
  result = (*(v40 + 8))(v4, v41);
  if (v43)
  {
    v45 = dispatch_group_create();
    dispatch_group_enter(v45);

    v46 = v45;
    sub_1010101E8(0, v38, v37, v46);

    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v47 = v60;
    v48 = type metadata accessor for TaskPriority();
    v49 = v52;
    (*(*(v48 - 8) + 56))(v52, 1, 1, v48);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v47;

    sub_10025EDD4(0, 0, v49, &unk_101411AD0, v50);

    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();

    sub_100B1A674();
    v20 = v56;
    v23 = v58;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A9BA28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v41 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AE40);
  (*(v11 + 16))(v13, a1, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v43 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v2;
    v47 = v41;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v6;
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v23 = sub_1000136BC(v19, v22, &v47);
    v6 = v20;

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Reading sessionTokenRecord for %{private,mask.hash}s", v18, 0x16u);
    sub_100007BAC(v41);
    v3 = v42;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v24 = v44;
  static SystemInfo.lockState.getter();
  v25 = v45;
  (*(v6 + 104))(v45, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v6 + 8);
  v27(v25, v5);
  v27(v24, v5);
  if (v26)
  {
    v28 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v40 = v28;
      swift_once();
      v28 = v40;
    }

    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10177C380, "sessionTokenRecord call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
    v29 = type metadata accessor for SessionTokenRecord(0);
    return (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  }

  else
  {
    v31 = *(v3 + 168);
    if (qword_101694A68 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for URL();
    v33 = sub_1000076D4(v32, qword_10177B608);
    v34._object = 0x800000010135B5A0;
    v34._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v34);
    v47 = type metadata accessor for SessionTokenRecord(0);
    sub_1000BC4D4(&qword_1016B55A0, &qword_1013D6AB8);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = objc_autoreleasePoolPush();
    __chkstk_darwin(v38);
    v39 = v43;
    *(&v41 - 6) = v31;
    *(&v41 - 5) = v39;
    *(&v41 - 4) = v33;
    *(&v41 - 3) = v35;
    *(&v41 - 2) = v37;
    sub_1000BC4D4(&qword_101699B90, &unk_101392670);
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v38);
  }
}

uint64_t sub_100A9BFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SessionTokenRecord(0);
  v44 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v14;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177BA08);
  sub_100022A54(a1, v17, type metadata accessor for SessionTokenRecord);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = a1;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    sub_100022A54(v17, v15, type metadata accessor for SessionTokenRecord);
    v25 = String.init<A>(describing:)();
    v41 = v15;
    v26 = a2;
    v27 = v11;
    v28 = a3;
    v30 = v29;
    sub_100022C40(v17, type metadata accessor for SessionTokenRecord);
    v31 = sub_1000136BC(v25, v30, aBlock);
    a3 = v28;
    v11 = v27;
    a2 = v26;
    v15 = v41;

    *(v22 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "Saving SessionTokenRecord %s", v22, 0xCu);
    sub_100007BAC(v24);
    a1 = v42;

    v4 = v43;
  }

  else
  {

    sub_100022C40(v17, type metadata accessor for SessionTokenRecord);
  }

  sub_100022A54(a1, v15, type metadata accessor for SessionTokenRecord);
  v32 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v33 = (v45 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v4;
  sub_10002911C(v15, v34 + v32, type metadata accessor for SessionTokenRecord);
  v35 = (v34 + v33);
  *v35 = a2;
  v35[1] = a3;
  aBlock[4] = sub_100B26308;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647CD0;
  v36 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v37 = v47;
  v38 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);
  (*(v49 + 8))(v37, v38);
  (*(v46 + 8))(v11, v48);
}

uint64_t sub_100A9C5BC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v26[1] = a4;
  v6 = sub_1000BC4D4(&qword_101699BA0, &qword_1013D6AB0);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for SessionTokenRecord(0);
  v10 = __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v26 - v13;
  sub_1009F21F0(a2);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BA08);
  sub_100022A54(a2, v14, type metadata accessor for SessionTokenRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26[0] = a3;
    v20 = v19;
    v27 = v19;
    *v18 = 136315138;
    sub_100022A54(v14, v12, type metadata accessor for SessionTokenRecord);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100022C40(v14, type metadata accessor for SessionTokenRecord);
    v24 = sub_1000136BC(v21, v23, &v27);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Saved SessionTokenRecord %s", v18, 0xCu);
    sub_100007BAC(v20);
    a3 = v26[0];
  }

  else
  {

    sub_100022C40(v14, type metadata accessor for SessionTokenRecord);
  }

  sub_100022A54(a2, v8, type metadata accessor for SessionTokenRecord);
  swift_storeEnumTagMultiPayload();
  a3(v8);
  return sub_10000B3A8(v8, &qword_101699BA0, &qword_1013D6AB0);
}

uint64_t sub_100A9CA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a3;
  v55 = a2;
  v8 = type metadata accessor for MemberSharingCircle(0);
  v53 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v54 = v9;
  v56 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v15 = &v46[-v14];
  __chkstk_darwin(v13);
  v17 = &v46[-v16];
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177BA08);
  sub_100022A54(a1, v17, type metadata accessor for SharedBeaconRecord);
  v52 = a1;
  sub_100022A54(a1, v15, type metadata accessor for SharedBeaconRecord);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v21 = 136315651;
    sub_100022A54(v17, &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SharedBeaconRecord);
    v22 = String.init<A>(describing:)();
    v47 = v20;
    v23 = v22;
    v48 = v19;
    v24 = v5;
    v26 = v25;
    v50 = a4;
    sub_100022C40(v17, type metadata accessor for SharedBeaconRecord);
    v27 = sub_1000136BC(v23, v26, aBlock);
    v5 = v24;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2160;
    *(v21 + 14) = 1752392040;
    *(v21 + 22) = 2081;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    a4 = v50;
    sub_100022C40(v15, type metadata accessor for SharedBeaconRecord);
    v31 = sub_1000136BC(v28, v30, aBlock);
    v32 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];

    *(v21 + 24) = v31;
    v33 = v48;
    _os_log_impl(&_mh_execute_header, v48, v47, "Saving SharedBeaconRecord %s,\nbeacon %{private,mask.hash}s.", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v15, type metadata accessor for SharedBeaconRecord);
    sub_100022C40(v17, type metadata accessor for SharedBeaconRecord);
    v32 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  }

  v34 = *(v5 + 72);
  sub_100022A54(v52, v32, type metadata accessor for SharedBeaconRecord);
  v35 = v56;
  sub_100022A54(v55, v56, type metadata accessor for MemberSharingCircle);
  v36 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v37 = (v11 + *(v53 + 80) + v36) & ~*(v53 + 80);
  v38 = (v54 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v32;
  v41 = v39;
  *(v39 + 16) = v5;
  sub_10002911C(v40, v39 + v36, type metadata accessor for SharedBeaconRecord);
  sub_10002911C(v35, v41 + v37, type metadata accessor for MemberSharingCircle);
  v42 = (v41 + v38);
  *v42 = v57;
  v42[1] = a4;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100B261A4;
  *(v43 + 24) = v41;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101647C80;
  v44 = _Block_copy(aBlock);

  dispatch_sync(v34, v44);
  _Block_release(v44);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A9D050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v76 = a5;
  v77 = a4;
  v75 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v75);
  v74 = &v63 - v8;
  v9 = type metadata accessor for MemberSharingCircle(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v63 - v14;
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v72 = type metadata accessor for SharedBeaconRecord(0);
  v18 = __chkstk_darwin(v72);
  v73 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v63 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v63 - v24;
  __chkstk_darwin(v23);
  v27 = &v63 - v26;
  v28 = *(a1 + 168);
  v78 = a2;
  sub_1009F1368(a2);
  v68 = v28;
  v69 = a3;
  v70 = v12;
  v71 = v9;
  v67 = v17;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_1000076D4(v29, qword_10177BA08);
  v31 = v78;
  sub_100022A54(v78, v27, type metadata accessor for SharedBeaconRecord);
  sub_100022A54(v31, v25, type metadata accessor for SharedBeaconRecord);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v66 = v15;
    v35 = v34;
    v64 = swift_slowAlloc();
    v79[0] = v64;
    *v35 = 136315651;
    sub_100022A54(v27, v22, type metadata accessor for SharedBeaconRecord);
    v36 = String.init<A>(describing:)();
    v65 = v30;
    v37 = v33;
    v38 = v36;
    v40 = v39;
    sub_100022C40(v27, type metadata accessor for SharedBeaconRecord);
    v41 = sub_1000136BC(v38, v40, v79);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2160;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_100022C40(v25, type metadata accessor for SharedBeaconRecord);
    v45 = sub_1000136BC(v42, v44, v79);

    *(v35 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v32, v37, "Saved SharedBeaconRecord %s\nfor beacon %{private,mask.hash}s.", v35, 0x20u);
    swift_arrayDestroy();

    v15 = v66;
  }

  else
  {

    sub_100022C40(v25, type metadata accessor for SharedBeaconRecord);
    sub_100022C40(v27, type metadata accessor for SharedBeaconRecord);
  }

  v47 = v69;
  v46 = v70;
  sub_1009EF3EC(v69);
  v49 = v67;
  sub_100022A54(v47, v67, type metadata accessor for MemberSharingCircle);
  sub_100022A54(v47, v15, type metadata accessor for MemberSharingCircle);
  v50 = Logger.logObject.getter();
  v51 = v15;
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v52))
  {
    v53 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v53 = 136315651;
    sub_100022A54(v49, v46, type metadata accessor for MemberSharingCircle);
    v54 = String.init<A>(describing:)();
    v56 = v55;
    sub_100022C40(v49, type metadata accessor for MemberSharingCircle);
    v57 = sub_1000136BC(v54, v56, v79);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2160;
    *(v53 + 14) = 1752392040;
    *(v53 + 22) = 2081;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    sub_100022C40(v51, type metadata accessor for MemberSharingCircle);
    v61 = sub_1000136BC(v58, v60, v79);

    *(v53 + 24) = v61;
    _os_log_impl(&_mh_execute_header, v50, v52, "Saved MemberSharingCircle %s\nfor beacon %{private,mask.hash}s.", v53, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v51, type metadata accessor for MemberSharingCircle);
    sub_100022C40(v49, type metadata accessor for MemberSharingCircle);
  }

  v62 = v74;
  sub_100022A54(v78, v74, type metadata accessor for SharedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  v77(v62);
  return sub_10000B3A8(v62, &qword_101699BC8, &qword_1013926D8);
}

uint64_t sub_100A9DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v53 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v57 = *(v6 - 8);
  __chkstk_darwin(v6);
  v56 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BeaconEstimatedLocation(0);
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  sub_100022A54(a1, v15, type metadata accessor for BeaconEstimatedLocation);
  sub_100022A54(a1, v13, type metadata accessor for BeaconEstimatedLocation);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v50 = v17;
    v20 = v19;
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v20 = 136315651;
    sub_100022A54(v15, &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconEstimatedLocation);
    v21 = String.init<A>(describing:)();
    v49 = v18;
    v22 = v21;
    v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = a1;
    v24 = v6;
    v25 = v4;
    v27 = v26;
    v48 = type metadata accessor for BeaconEstimatedLocation;
    sub_100022C40(v15, type metadata accessor for BeaconEstimatedLocation);
    v28 = sub_1000136BC(v22, v27, aBlock);
    v4 = v25;
    v6 = v24;
    a1 = v23;

    *(v20 + 4) = v28;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v29 = v47;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_100022C40(v13, v48);
    v33 = sub_1000136BC(v30, v32, aBlock);

    *(v20 + 24) = v33;
    v34 = v50;
    _os_log_impl(&_mh_execute_header, v50, v49, "Saving BeaconEstimatedLocation record %s,\nbeacon %{private,mask.hash}s.", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v13, type metadata accessor for BeaconEstimatedLocation);
    sub_100022C40(v15, type metadata accessor for BeaconEstimatedLocation);
    v29 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v35 = v55;
  sub_100022A54(a1, v29, type metadata accessor for BeaconEstimatedLocation);
  v36 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v37 = (v9 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_10002911C(v29, v39 + v36, type metadata accessor for BeaconEstimatedLocation);
  v40 = (v39 + v37);
  v41 = v54;
  *v40 = v53;
  v40[1] = v41;
  *(v39 + v38) = v35;
  aBlock[4] = sub_100B25F90;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647A28;
  v42 = _Block_copy(aBlock);

  v43 = v56;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v44 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v59 + 8))(v44, v4);
  (*(v57 + 8))(v43, v6);
}

uint64_t sub_100A9E100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v181 = a4;
  v175 = a3;
  v174 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v183 = *(v5 - 8);
  __chkstk_darwin(v5);
  v177 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v178 = *(v7 - 8);
  __chkstk_darwin(v7);
  v176 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for DispatchQoS.QoSClass();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeaconEstimatedLocation(0);
  v162 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v185 = (&v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = &v151 - v14;
  v16 = __chkstk_darwin(v13);
  v171 = &v151 - v17;
  v18 = __chkstk_darwin(v16);
  v157 = &v151 - v19;
  v163 = v20;
  __chkstk_darwin(v18);
  v156 = &v151 - v21;
  v22 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v23 = __chkstk_darwin(v22 - 8);
  v159 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v167 = &v151 - v25;
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v161 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v172 = &v151 - v31;
  v32 = __chkstk_darwin(v30);
  v155 = &v151 - v33;
  v160 = v34;
  __chkstk_darwin(v32);
  v164 = &v151 - v35;
  v36 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v36 - 8);
  v38 = &v151 - v37;
  v166 = type metadata accessor for DirectorySequence();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v40 = &v151 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for URL();
  v182 = *(v186 - 1);
  v41 = __chkstk_darwin(v186);
  v43 = &v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v173 = &v151 - v44;
  v184 = a1;
  v45 = sub_1010E1954();
  v179 = v7;
  v180 = v5;
  if (v45)
  {
    v46 = v183;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177BA08);
    v48 = v184;
    sub_100022A54(v184, v15, type metadata accessor for BeaconEstimatedLocation);
    v49 = v48;
    v50 = v185;
    sub_100022A54(v49, v185, type metadata accessor for BeaconEstimatedLocation);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v53 = 136315651;
      sub_100022A54(v15, v171, type metadata accessor for BeaconEstimatedLocation);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      sub_100022C40(v15, type metadata accessor for BeaconEstimatedLocation);
      v57 = sub_1000136BC(v54, v56, &aBlock);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2160;
      *(v53 + 14) = 1752392040;
      *(v53 + 22) = 2081;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v58 = v185;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v62 = v178;
      sub_100022C40(v58, type metadata accessor for BeaconEstimatedLocation);
      v63 = sub_1000136BC(v59, v61, &aBlock);

      *(v53 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v51, v52, "Not saving blocked region BeaconEstimatedLocation record %s,\nbeacon %{private,mask.hash}s.", v53, 0x20u);
      swift_arrayDestroy();
      v64 = v183;

      v65 = v180;
    }

    else
    {

      sub_100022C40(v50, type metadata accessor for BeaconEstimatedLocation);
      sub_100022C40(v15, type metadata accessor for BeaconEstimatedLocation);
      v65 = v180;
      v62 = v178;
      v64 = v46;
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v94 = v169;
    v95 = v168;
    v96 = v170;
    (*(v169 + 104))(v168, enum case for DispatchQoS.QoSClass.default(_:), v170);
    v97 = static OS_dispatch_queue.global(qos:)();
    (*(v94 + 8))(v95, v96);
    v98 = swift_allocObject();
    v99 = v175;
    *(v98 + 16) = v174;
    *(v98 + 24) = v99;
    v191 = sub_100B2609C;
    v192 = v98;
    aBlock = _NSConcreteStackBlock;
    v188 = 1107296256;
    v189 = sub_100006684;
    v190 = &unk_101647B18;
    v100 = _Block_copy(&aBlock);

    v101 = v176;
    static DispatchQoS.unspecified.getter();
    v193 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v102 = v177;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v100);

    (*(v64 + 8))(v102, v65);
    (*(v62 + 8))(v101, v179);
  }

  v153 = v27;
  v158 = v26;
  v154 = v10;
  v66 = *(v10 + 24);
  v67 = *(v181 + 168);
  v68 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v69 = v186;
  sub_1000076D4(v186, qword_10177BF38);
  v152 = v66;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v68);
  aBlock = _swiftEmptyArrayStorage;
  v193 = _swiftEmptyArrayStorage;
  v70 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v185 = v40;
  DirectorySequence.next()();
  v71 = v69;
  v72 = *(v182 + 48);
  if (v72(v38, 1, v69) != 1)
  {
    v73 = v67;
    v74 = *(v182 + 32);
    v75 = (v182 + 8);
    do
    {
      v74(v43, v38, v71);
      v76 = objc_autoreleasePoolPush();
      sub_1006011CC(v43, v73, &aBlock, &v193);
      objc_autoreleasePoolPop(v76);
      (*v75)(v43, v186);
      DirectorySequence.next()();
      v71 = v186;
    }

    while (v72(v38, 1, v186) != 1);
  }

  (*(v165 + 8))(v185, v166);
  v77 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v78 = v71;
  v79 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_10138BBE0;
  v81 = aBlock;
  v82 = aBlock[2];
  *(v80 + 56) = &type metadata for Int;
  *(v80 + 64) = &protocol witness table for Int;
  *(v80 + 32) = v82;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v83 = v173;
  v84 = dispatch thunk of CustomStringConvertible.description.getter();
  v86 = v85;
  *(v80 + 96) = &type metadata for String;
  *(v80 + 104) = sub_100008C00();
  *(v80 + 72) = v84;
  *(v80 + 80) = v86;
  os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v79, "Found %i records at %@", 22, 2, v80);

  (*(v182 + 8))(v83, v78);

  v87 = v184;
  v88 = v167;
  v89 = v181;
  sub_100A9F938(v184 + v152, *(v184 + *(v154 + 44)), v81, v167);
  v90 = v153;
  v91 = *(v153 + 48);
  v92 = v158;
  if (v91(v88, 1, v158) == 1)
  {
    sub_10000B3A8(v88, &unk_101696900, &unk_10138B1E0);
    v93 = v180;
LABEL_17:
    v104 = v159;
    sub_100AA09DC(v81, 0x14u, v159);

    if (v91(v104, 1, v92) == 1)
    {
      v105 = v172;
      static Date.distantPast.getter();
      if (v91(v104, 1, v92) != 1)
      {
        sub_10000B3A8(v104, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v105 = v172;
      (*(v90 + 32))(v172, v104, v92);
    }

    v186 = *(v89 + 72);
    v106 = v171;
    sub_100022A54(v184, v171, type metadata accessor for BeaconEstimatedLocation);
    v107 = v161;
    (*(v90 + 16))(v161, v105, v92);
    v108 = (*(v162 + 80) + 24) & ~*(v162 + 80);
    v109 = (v163 + *(v90 + 80) + v108) & ~*(v90 + 80);
    v110 = v89;
    v111 = (v160 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = swift_allocObject();
    *(v112 + 16) = v110;
    sub_10002911C(v106, v112 + v108, type metadata accessor for BeaconEstimatedLocation);
    (*(v90 + 32))(v112 + v109, v107, v92);
    v113 = (v112 + v111);
    v114 = v175;
    *v113 = v174;
    v113[1] = v114;
    v191 = sub_100B2602C;
    v192 = v112;
    aBlock = _NSConcreteStackBlock;
    v188 = 1107296256;
    v189 = sub_100006684;
    v190 = &unk_101647A78;
    v115 = _Block_copy(&aBlock);

    v116 = v176;
    static DispatchQoS.unspecified.getter();
    v193 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v117 = v177;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v115);
    (*(v183 + 8))(v117, v93);
    (*(v178 + 8))(v116, v179);
    (*(v90 + 8))(v172, v92);
  }

  v103 = v164;
  (*(v90 + 32))(v164, v88, v92);
  if (static Date.> infix(_:_:)())
  {
    (*(v90 + 8))(v103, v92);
    v93 = v180;
    v89 = v181;
    goto LABEL_17;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v119 = type metadata accessor for Logger();
  sub_1000076D4(v119, qword_10177BA08);
  v120 = v155;
  (*(v90 + 16))(v155, v103, v92);
  v121 = v156;
  sub_100022A54(v87, v156, type metadata accessor for BeaconEstimatedLocation);
  v122 = v157;
  sub_100022A54(v87, v157, type metadata accessor for BeaconEstimatedLocation);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = v120;
    v126 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    aBlock = v185;
    *v126 = 136446979;
    sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v127 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v92;
    v130 = v129;
    v186 = *(v90 + 8);
    (v186)(v125, v128);
    v131 = sub_1000136BC(v127, v130, &aBlock);

    *(v126 + 4) = v131;
    *(v126 + 12) = 2160;
    *(v126 + 14) = 1752392040;
    *(v126 + 22) = 2081;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v132 = dispatch thunk of CustomStringConvertible.description.getter();
    v134 = v133;
    sub_100022C40(v121, type metadata accessor for BeaconEstimatedLocation);
    v135 = sub_1000136BC(v132, v134, &aBlock);

    *(v126 + 24) = v135;
    *(v126 + 32) = 2080;
    sub_100022A54(v122, v171, type metadata accessor for BeaconEstimatedLocation);
    v136 = String.init<A>(describing:)();
    v138 = v137;
    sub_100022C40(v122, type metadata accessor for BeaconEstimatedLocation);
    v139 = sub_1000136BC(v136, v138, &aBlock);

    *(v126 + 34) = v139;
    _os_log_impl(&_mh_execute_header, v123, v124, "Not saving outdated (latestLocationDate: %{public}s,\nbeacon %{private,mask.hash}s,\nBeaconEstimatedLocation record %s.", v126, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v122, type metadata accessor for BeaconEstimatedLocation);
    sub_100022C40(v121, type metadata accessor for BeaconEstimatedLocation);
    v186 = *(v90 + 8);
    (v186)(v120, v92);
  }

  v140 = v183;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v141 = v169;
  v142 = v168;
  v143 = v170;
  (*(v169 + 104))(v168, enum case for DispatchQoS.QoSClass.default(_:), v170);
  v144 = static OS_dispatch_queue.global(qos:)();
  (*(v141 + 8))(v142, v143);
  v145 = swift_allocObject();
  v146 = v175;
  *(v145 + 16) = v174;
  *(v145 + 24) = v146;
  v191 = sub_100B2606C;
  v192 = v145;
  aBlock = _NSConcreteStackBlock;
  v188 = 1107296256;
  v189 = sub_100006684;
  v190 = &unk_101647AC8;
  v147 = _Block_copy(&aBlock);

  v148 = v176;
  static DispatchQoS.unspecified.getter();
  v193 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v149 = v177;
  v150 = v180;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v147);

  (*(v140 + 8))(v149, v150);
  (*(v178 + 8))(v148, v179);
  (v186)(v164, v158);
}

uint64_t sub_100A9F938@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v136) = a2;
  v131 = a1;
  v110 = a4;
  v130 = type metadata accessor for URL();
  v108 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for UUID();
  v115 = *(v140 - 8);
  v6 = __chkstk_darwin(v140);
  v128 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v111 = &v105 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v105 - v14;
  v16 = type metadata accessor for BeaconEstimatedLocation(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v133 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v132 = &v105 - v21;
  v22 = __chkstk_darwin(v20);
  v113 = &v105 - v23;
  __chkstk_darwin(v22);
  v25 = &v105 - v24;
  v26 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v27 = __chkstk_darwin(v26 - 8);
  v125 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v124 = (&v105 - v30);
  __chkstk_darwin(v29);
  v137 = &v105 - v31;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v114 = sub_101073FC8(v141);

  v141 = a3;
  v112 = a3;

  sub_100A8AAFC(&v141);
  v32 = v141;
  v122 = *(v10 + 56);
  v123 = (v10 + 56);
  (v122)(v137, 1, 1, v9);
  v33 = *(v32 + 16);
  v138 = v16;
  v139 = 0;
  v126 = v17;
  if (v33)
  {
    LODWORD(v136) = v136;
    v34 = *(v16 + 44);
    v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v107 = v32;
    v106 = v35;
    v134 = (v32 + v35);
    sub_100022A54(v32 + v35, v25, type metadata accessor for BeaconEstimatedLocation);
    v135 = v34;
    v36 = v25[v34];
    v120 = (v10 + 16);
    v119 = (v10 + 48);
    v127 = (v10 + 32);
    v118 = (v10 + 8);
    v116 = _swiftEmptyArrayStorage;
    v37 = 1;
    *&v121 = v33;
    v117 = v25;
LABEL_5:
    v38 = v36;
    while (1)
    {
      v36 = v38;
      if (v38 == v136)
      {
        (*v120)(v15, &v25[*(v138 + 40)], v9);
        v39 = v125;
        sub_1000D2A70(v137, v125, &unk_101696900, &unk_10138B1E0);
        v40 = *v119;
        if ((*v119)(v39, 1, v9) == 1)
        {
          static Date.distantPast.getter();
          if (v40(v39, 1, v9) != 1)
          {
            sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          (*v127)(v13, v39, v9);
        }

        sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v41 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v42 = v137;
        sub_10000B3A8(v137, &unk_101696900, &unk_10138B1E0);
        if (v41)
        {
          v43 = v15;
        }

        else
        {
          v43 = v13;
        }

        if (v41)
        {
          v44 = v13;
        }

        else
        {
          v44 = v15;
        }

        (*v118)(v43, v9);
        v45 = v15;
        v46 = v13;
        v47 = v124;
        (*v127)(v124, v44, v9);
        (v122)(v47, 0, 1, v9);
        v48 = v47;
        v13 = v46;
        v15 = v45;
        sub_1000D2AD8(v48, v42, &unk_101696900, &unk_10138B1E0);
        v17 = v126;
        v33 = v121;
        v25 = v117;
      }

      sub_100022C40(v25, type metadata accessor for BeaconEstimatedLocation);
      if (v33 == v37)
      {
        break;
      }

      v49 = *(v17 + 72);
      sub_100022A54(v134 + v49 * v37++, v25, type metadata accessor for BeaconEstimatedLocation);
      v38 = v25[v135];
      if (v36 == v38)
      {
        sub_100022A54(v25, v113, type metadata accessor for BeaconEstimatedLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_100A5D0A0(0, v116[2] + 1, 1, v116);
        }

        v51 = v116[2];
        v50 = v116[3];
        v52 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          v105 = v51 + 1;
          v54 = sub_100A5D0A0((v50 > 1), v51 + 1, 1, v116);
          v52 = v105;
          v116 = v54;
        }

        v53 = v116;
        v116[2] = v52;
        sub_10002911C(v113, v53 + v106 + v51 * v49, type metadata accessor for BeaconEstimatedLocation);
        goto LABEL_5;
      }
    }

    v55 = v116;
  }

  else
  {

    v55 = _swiftEmptyArrayStorage;
  }

  v56 = v55[2];
  if (v114 >= v56)
  {
    v57 = v55[2];
  }

  else
  {
    v57 = v114;
  }

  v122 = v57;
  v58 = v140;
  v60 = v132;
  v59 = v133;
  v61 = v115;
  v62 = v112;
  v63 = v111;
  if (v114 < 0)
  {
    __break(1u);
  }

  else
  {
    v125 = v56;
    v64 = qword_101694770;

    if (v64 == -1)
    {
      goto LABEL_32;
    }
  }

  swift_once();
LABEL_32:
  v65 = type metadata accessor for Logger();
  v66 = sub_1000076D4(v65, qword_10177AE10);
  v134 = *(v61 + 16);
  v135 = v61 + 16;
  v134(v63, v131, v58);

  v136 = v66;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    LODWORD(v123) = v68;
    v71 = v62;
    v124 = v70;
    v141 = v70;
    *v69 = 134218755;
    v72 = v125;
    *(v69 + 4) = v125 - v122;

    *(v69 + 12) = 2048;
    *(v69 + 14) = *(v71 + 16);

    *(v69 + 22) = 2160;
    *(v69 + 24) = 1752392040;
    *(v69 + 32) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v55;
    v76 = v75;
    v127 = *(v115 + 8);
    (v127)(v63, v58);
    v77 = sub_1000136BC(v73, v76, &v141);
    v55 = v74;
    v61 = v115;

    *(v69 + 34) = v77;
    _os_log_impl(&_mh_execute_header, v67, v123, "Decimating %ld of %ld locations for beacon %{private,mask.hash}s.", v69, 0x2Au);
    sub_100007BAC(v124);

    v17 = v126;
  }

  else
  {

    v127 = *(v61 + 8);
    (v127)(v63, v58);
    v72 = v125;
  }

  if (v72 > v114)
  {
    v79 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v126 = *(v109 + 168);
    v80 = *(v17 + 72);
    v124 = (v61 + 8);
    v123 = (v108 + 8);
    v81 = v72 - v122;
    v125 = v80;
    v116 = v55;
    v82 = v55 + v79 + v80 * v122;
    *&v78 = 141558787;
    v121 = v78;
    do
    {
      sub_100022A54(v82, v60, type metadata accessor for BeaconEstimatedLocation);
      sub_100022A54(v60, v59, type metadata accessor for BeaconEstimatedLocation);
      v83 = v128;
      v134(v128, v131, v58);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v141 = v122;
        *v86 = v121;
        *(v86 + 4) = 1752392040;
        *(v86 + 12) = 2081;
        v87 = v138;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v59;
        v91 = v90;
        sub_100022C40(v89, type metadata accessor for BeaconEstimatedLocation);
        v92 = sub_1000136BC(v88, v91, &v141);

        *(v86 + 14) = v92;
        *(v86 + 22) = 2160;
        *(v86 + 24) = 1752392040;
        *(v86 + 32) = 2081;
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        (v127)(v83, v140);
        v96 = sub_1000136BC(v93, v95, &v141);

        *(v86 + 34) = v96;
        _os_log_impl(&_mh_execute_header, v84, v85, "Decimating beacon BeaconEstimatedLocation %{private,mask.hash}s for beacon %{private,mask.hash}s.", v86, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        (v127)(v83, v58);
        sub_100022C40(v59, type metadata accessor for BeaconEstimatedLocation);
        v87 = v138;
      }

      v97 = *(v87 + 20);
      v98 = objc_autoreleasePoolPush();
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v60 = v132;
      v99 = v130;
      sub_1000076D4(v130, qword_10177BF38);
      UUID.uuidString.getter();
      v100 = v129;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v98);
      __chkstk_darwin(v101);
      *(&v105 - 4) = v102;
      *(&v105 - 3) = v60 + v97;
      *(&v105 - 2) = v100;
      v103 = v139;
      OS_dispatch_queue.sync<A>(execute:)();
      v139 = v103;
      (*v123)(v100, v99);
      sub_100022C40(v60, type metadata accessor for BeaconEstimatedLocation);
      v82 += v125;
      --v81;
      v59 = v133;
      v58 = v140;
    }

    while (v81);
  }

  sub_1000D2AD8(v137, v110, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_100AA08F4(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3, uint64_t *a4, char a5)
{
  v9 = sub_1000BC4D4(a3, a4);
  __chkstk_darwin(v9);
  v11 = (&v15 - v10);
  sub_100139CA0();
  v12 = swift_allocError();
  *v13 = a5;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  a1(v11);
  return sub_10000B3A8(v11, a3, a4);
}

uint64_t sub_100AA09DC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v45 = type metadata accessor for BeaconEstimatedLocation(0);
  v5 = __chkstk_darwin(v45);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v39 - v9;
  v11 = __chkstk_darwin(v8);
  v41 = &v39 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - v14;
  __chkstk_darwin(v13);
  v40 = &v39 - v17;
  v18 = *(a1 + 16);
  v42 = v16;
  if (v18)
  {
    v19 = a2;
    v20 = *(v16 + 72);
    v44 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = a1 + v44;
    v22 = _swiftEmptyArrayStorage;
    do
    {
      sub_100022A54(v21, v15, type metadata accessor for BeaconEstimatedLocation);
      if (v19 == 20 || v15[*(v45 + 44)] == v19)
      {
        sub_10002911C(v15, v10, type metadata accessor for BeaconEstimatedLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124A24(0, v22[2] + 1, 1);
          v22 = v46;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_101124A24((v24 > 1), v25 + 1, 1);
          v22 = v46;
        }

        v22[2] = v25 + 1;
        sub_10002911C(v10, v22 + v44 + v25 * v20, type metadata accessor for BeaconEstimatedLocation);
      }

      else
      {
        sub_100022C40(v15, type metadata accessor for BeaconEstimatedLocation);
      }

      v21 += v20;
      --v18;
    }

    while (v18);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v26 = v22[2];
  if (v26)
  {
    v28 = v41;
    v27 = v42;
    v29 = v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    result = sub_100022A54(v29, v41, type metadata accessor for BeaconEstimatedLocation);
    if (v26 == 1)
    {
LABEL_15:

      v31 = v40;
      sub_10002911C(v28, v40, type metadata accessor for BeaconEstimatedLocation);
      v32 = *(v45 + 40);
      v33 = type metadata accessor for Date();
      v34 = *(v33 - 8);
      v35 = v31 + v32;
      v36 = v43;
      (*(v34 + 16))(v43, v35, v33);
      sub_100022C40(v31, type metadata accessor for BeaconEstimatedLocation);
      return (*(v34 + 56))(v36, 0, 1, v33);
    }

    else
    {
      v38 = 1;
      while (v38 < v22[2])
      {
        sub_100022A54(v29 + *(v27 + 72) * v38, v7, type metadata accessor for BeaconEstimatedLocation);
        if (static Date.< infix(_:_:)())
        {
          sub_100022C40(v28, type metadata accessor for BeaconEstimatedLocation);
          result = sub_10002911C(v7, v28, type metadata accessor for BeaconEstimatedLocation);
        }

        else
        {
          result = sub_100022C40(v7, type metadata accessor for BeaconEstimatedLocation);
        }

        if (v26 == ++v38)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  else
  {

    v37 = type metadata accessor for Date();
    return (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  }

  return result;
}

uint64_t sub_100AA0E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = a5;
  v93 = a4;
  v86 = a3;
  v92 = type metadata accessor for DispatchQoS.QoSClass();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v99 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for DispatchQoS();
  v100 = *(v95 - 8);
  __chkstk_darwin(v95);
  v98 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeaconObservation(0);
  v87 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for BeaconEstimatedLocation(0);
  v13 = *(v89 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v89);
  v88 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v80 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v80 - v20;
  __chkstk_darwin(v19);
  v23 = &v80 - v22;
  v101 = a2;
  sub_1009F245C(a2);
  v82 = 0;
  v81 = v10;
  v83 = v12;
  v84 = a1;
  v85 = v13;
  v88 = v18;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177BA08);
  v25 = v101;
  sub_100022A54(v101, v23, type metadata accessor for BeaconEstimatedLocation);
  sub_100022A54(v25, v21, type metadata accessor for BeaconEstimatedLocation);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = v14;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v29 = 136315651;
    v30 = v27;
    sub_100022A54(v23, v88, type metadata accessor for BeaconEstimatedLocation);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    sub_100022C40(v23, type metadata accessor for BeaconEstimatedLocation);
    v34 = sub_1000136BC(v31, v33, &aBlock);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2160;
    *(v29 + 14) = 1752392040;
    *(v29 + 22) = 2081;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    sub_100022C40(v21, type metadata accessor for BeaconEstimatedLocation);
    v38 = sub_1000136BC(v35, v37, &aBlock);

    *(v29 + 24) = v38;
    v39 = v30;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v26, v39, "Saved BeaconEstimatedLocation record %s\nfor beacon %{private,mask.hash}s.", v29, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022C40(v21, type metadata accessor for BeaconEstimatedLocation);
    sub_100022C40(v23, type metadata accessor for BeaconEstimatedLocation);
  }

  v40 = v87;
  v41 = v83;
  v42 = v81;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v43 = qword_10177B2E8;
  v44 = v89;
  v45 = *(v89 + 24);
  v46 = type metadata accessor for UUID();
  v47 = v101;
  (*(*(v46 - 8) + 16))(v41, v101 + v45, v46);
  v48 = *(v44 + 40);
  v49 = *(v42 + 20);
  v50 = type metadata accessor for Date();
  (*(*(v50 - 8) + 16))(v41 + v49, v47 + v48, v50);
  *(v41 + *(v42 + 24)) = 0;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v51 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v52 = v41;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_101385D80;
  sub_100022A54(v52, v53 + v51, type metadata accessor for BeaconObservation);
  v54 = type metadata accessor for Transaction();
  __chkstk_darwin(v54);
  *(&v80 - 4) = v43;
  *(&v80 - 3) = v53;
  *(&v80 - 2) = 0;
  *(&v80 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_100022C40(v52, type metadata accessor for BeaconObservation);
  v55 = v84;
  sub_100AA2B78(v47 + v45, &v105);
  sub_1000D2A70(&v105, &aBlock, &qword_101696920, &unk_10138B200);
  if (v108)
  {
    sub_10000A748(&aBlock, v104);
    v56 = static Date.> infix(_:_:)();
    v57 = v97;
    v58 = v96;
    v59 = v95;
    if (v56)
    {
      v89 = *(v55 + 152);
      v60 = v47;
      v61 = v55;
      v62 = v88;
      sub_100022A54(v60, v88, type metadata accessor for BeaconEstimatedLocation);
      sub_10001F280(v104, v103);
      v63 = (*(v85 + 80) + 24) & ~*(v85 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = v61;
      sub_10002911C(v62, v64 + v63, type metadata accessor for BeaconEstimatedLocation);
      sub_10000A748(v103, v64 + ((v28 + v63 + 7) & 0xFFFFFFFFFFFFFFF8));
      v109 = sub_100B26114;
      v110 = v64;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v107 = sub_100006684;
      v108 = &unk_101647C08;
      v65 = _Block_copy(&aBlock);

      v66 = v98;
      static DispatchQoS.unspecified.getter();
      v102 = _swiftEmptyArrayStorage;
      sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v67 = v99;
      v47 = v101;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v65);
      (*(v58 + 8))(v67, v57);
      (*(v100 + 8))(v66, v59);
      sub_100007BAC(v104);
    }

    else
    {
      sub_100007BAC(v104);
    }
  }

  else
  {
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v57 = v97;
    v58 = v96;
    v59 = v95;
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v68 = v91;
  v69 = v90;
  v70 = v92;
  (*(v91 + 104))(v90, enum case for DispatchQoS.QoSClass.default(_:), v92);
  v71 = static OS_dispatch_queue.global(qos:)();
  (*(v68 + 8))(v69, v70);
  v72 = v88;
  sub_100022A54(v47, v88, type metadata accessor for BeaconEstimatedLocation);
  v73 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v74 = swift_allocObject();
  v75 = v94;
  *(v74 + 16) = v93;
  *(v74 + 24) = v75;
  sub_10002911C(v72, v74 + v73, type metadata accessor for BeaconEstimatedLocation);
  v109 = sub_100B260D8;
  v110 = v74;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v107 = sub_100006684;
  v108 = &unk_101647BB8;
  v76 = _Block_copy(&aBlock);

  v77 = v98;
  static DispatchQoS.unspecified.getter();
  v104[0] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v78 = v99;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v76);

  (*(v58 + 8))(v78, v57);
  (*(v100 + 8))(v77, v59);
  sub_10000B3A8(&v105, &qword_101696920, &unk_10138B200);
}

uint64_t sub_100AA213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016B2A70, &unk_1013D37D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_100022A54(a2, &v11 - v7, type metadata accessor for BeaconEstimatedLocation);
  sub_10001F280(a3, &v8[v9]);
  PassthroughSubject.send(_:)();
  return sub_10000B3A8(v8, &qword_1016B2A70, &unk_1013D37D0);
}

uint64_t sub_100AA2228(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  *(&v9 - v6) = a3;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a1(v7);
  return sub_10000B3A8(v7, &qword_10169F438, &unk_1013B3300);
}

uint64_t sub_100AA22F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_100AA24B8(a3, sub_100AF59BC, v10);
}

uint64_t sub_100AA2444(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100AA24B8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v23 = *v3;
  v5 = sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for CloudKitChangeSet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  sub_1000D2A70(a1, v7, &qword_1016975C8, &qword_10138C1F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &qword_1016975C8, &qword_10138C1F0);
    return v24(0, 0);
  }

  else
  {
    sub_10002911C(v7, v14, type metadata accessor for CloudKitChangeSet);
    sub_100022A54(v14, v12, type metadata accessor for CloudKitChangeSet);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_10002911C(v12, v19 + v16, type metadata accessor for CloudKitChangeSet);
    *(v19 + v17) = v3;
    v20 = (v19 + v18);
    v21 = v25;
    *v20 = v24;
    v20[1] = v21;
    *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;

    Sequencer.perform(identifier:_:enqueueCompletion:)();

    return sub_100022C40(v14, type metadata accessor for CloudKitChangeSet);
  }
}

uint64_t sub_100AA279C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v2);
  v4 = (v12 - v3);
  v5 = static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v12[1] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Update failed: %@", 17, 2, v7);

  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_101141BDC(v4);
  return sub_10000B3A8(v4, &qword_101699BC8, &qword_1013926D8);
}

uint64_t sub_100AA2958()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 72);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v7 = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = static os_log_type_t.info.getter();
  if (qword_101695040 != -1)
  {
LABEL_5:
    v9 = v7;
    swift_once();
    v7 = v9;
  }

  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C388, "Received IDS push to refresh CloudKit state", 43, 2, _swiftEmptyArrayStorage);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100AA2B9C(void *a1, uint64_t a2)
{
  v60 = a2;
  v53 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v53);
  v56 = &v49 - v3;
  v4 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v4 - 8);
  v52 = &v49 - v5;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = __chkstk_darwin(v6 - 8);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v55 = &v49 - v10;
  __chkstk_darwin(v9);
  v58 = &v49 - v11;
  v12 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v22 = a1[4];
  sub_1000035D0(a1, v23);
  (*(*(*(v22 + 8) + 8) + 32))(v23);
  LOBYTE(v22) = static UUID.== infix(_:_:)();
  v54 = v19;
  v50 = *(v19 + 8);
  v50(v21, v18);
  if (v22)
  {
    goto LABEL_2;
  }

  sub_10001F280(a1, v59);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v25 = swift_dynamicCast();
  v26 = *(v16 + 56);
  if ((v25 & 1) == 0)
  {
    v26(v14, 1, 1, v15);
    v34 = &unk_101698C30;
    v35 = &unk_101392630;
LABEL_14:
    sub_10000B3A8(v14, v34, v35);
    v24 = 0;
    return v24 & 1;
  }

  v26(v14, 0, 1, v15);
  v27 = v14;
  v28 = v57;
  sub_10002911C(v27, v57, type metadata accessor for SharedBeaconRecord);
  v29 = v52;
  sub_1000D2A70(v28 + *(v15 + 80), v52, &unk_1016AF890, &qword_1013926D0);
  v30 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    sub_10000B3A8(v29, &unk_1016AF890, &qword_1013926D0);
    v31 = v54;
    v32 = v58;
    (*(v54 + 56))(v58, 1, 1, v18);
  }

  else
  {
    v32 = v58;
    sub_1000D2A70(v29 + *(v30 + 20), v58, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v29, type metadata accessor for SharedBeaconRecord.PropertyListContent);
    v31 = v54;
  }

  v33 = v55;
  (*(v31 + 16))(v55, v60, v18);
  (*(v31 + 56))(v33, 0, 1, v18);
  v36 = *(v53 + 48);
  v37 = v31;
  v38 = v32;
  v39 = v56;
  sub_1000D2A70(v38, v56, &qword_1016980D0, &unk_10138F3B0);
  v40 = v39;
  sub_1000D2A70(v33, v39 + v36, &qword_1016980D0, &unk_10138F3B0);
  v41 = v37;
  v42 = v18;
  v43 = v33;
  v44 = *(v41 + 48);
  if (v44(v40, 1, v18) != 1)
  {
    v45 = v51;
    sub_1000D2A70(v40, v51, &qword_1016980D0, &unk_10138F3B0);
    if (v44(v40 + v36, 1, v42) != 1)
    {
      (*(v54 + 32))(v21, v40 + v36, v42);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = v50;
      v48 = v40;
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47(v21, v42);
      sub_10000B3A8(v55, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
      sub_100022C40(v57, type metadata accessor for SharedBeaconRecord);
      v47(v45, v42);
      sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
      return v24 & 1;
    }

    sub_10000B3A8(v55, &qword_1016980D0, &unk_10138F3B0);
    v14 = v56;
    sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v57, type metadata accessor for SharedBeaconRecord);
    v50(v45, v42);
    goto LABEL_13;
  }

  sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
  v14 = v56;
  sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
  sub_100022C40(v57, type metadata accessor for SharedBeaconRecord);
  if (v44(&v14[v36], 1, v18) != 1)
  {
LABEL_13:
    v34 = &qword_1016AF880;
    v35 = &unk_10138CE20;
    goto LABEL_14;
  }

  sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
LABEL_2:
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_100AA33AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = static os_log_type_t.info.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = UUID.uuidString.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "ownedBeaconRecord(for uuid: %@)", 31, 2, v12);

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  if (v13)
  {
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v11, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
    v18 = type metadata accessor for OwnedBeaconRecord(0);
    return (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  }

  else
  {
    v20 = sub_100025044();
    __chkstk_darwin(v20);
    *(&v21 - 2) = a1;
    sub_1012BBBD0(sub_100B27F94, v20, v22);
  }
}

void *sub_100AA372C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v109 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v109);
  v7 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  v112 = *(v8 - 8);
  v113 = v8;
  v9 = __chkstk_darwin(v8);
  v106 = &v96[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v96[-v11];
  v13 = type metadata accessor for SystemInfo.DeviceLockState();
  v14 = *(v13 - 1);
  v15 = __chkstk_darwin(v13);
  v111 = &v96[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v110 = &v96[-v17];
  v18 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v18 - 8);
  if (qword_101694BE8 != -1)
  {
LABEL_115:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_1000076D4(v19, qword_10177BA08);
  sub_100017D5C(a1, a2);
  v108 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100016590(a1, a2);
  v23 = os_log_type_enabled(v21, v22);
  v103 = a2;
  v104 = a1;
  if (v23)
  {
    v107 = v3;
    v24 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v114 = v105;
    *v24 = 136315138;
    static String.Encoding.utf8.getter();
    v25 = String.init(data:encoding:)();
    if (!v26)
    {
      v25 = Data.hexString.getter();
    }

    a1 = v111;
    v27 = sub_1000136BC(v25, v26, &v114);

    *(v24 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "ownedBeaconGroups(serialNumber: %s", v24, 0xCu);
    sub_100007BAC(v105);

    v3 = v107;
  }

  else
  {

    a1 = v111;
  }

  v28 = v110;
  static SystemInfo.lockState.getter();
  (*(v14 + 104))(a1, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v13);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v14 + 8);
  v14 += 8;
  v30(a1, v13);
  v30(v28, v13);
  if (v29)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "ownedBeaconGroup call failed because in device is in beforeFirstUnlock state", v33, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v35 = sub_100025044();
  v36 = v35;
  v111 = v35[2];
  if (!v111)
  {
    v105 = _swiftEmptyArrayStorage;
LABEL_113:

    return v105;
  }

  a2 = 0;
  if (v104)
  {
    v37 = 0;
  }

  else
  {
    v37 = v103 == 0xC000000000000000;
  }

  v38 = !v37;
  v102 = v38;
  v107 = v103 >> 62;
  v108 = v7 + 8;
  v39 = __OFSUB__(HIDWORD(v104), v104);
  v99 = v39;
  v98 = HIDWORD(v104) - v104;
  v100 = 0;
  v101 = BYTE6(v103);
  v105 = _swiftEmptyArrayStorage;
  v110 = v35;
  while (1)
  {
    if (a2 >= *(v36 + 2))
    {
      __break(1u);
      goto LABEL_115;
    }

    v14 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    a1 = *(v112 + 72);
    sub_100022A54(&v36[v14 + a1 * a2], v12, type metadata accessor for OwnedBeaconRecord);
    sub_100022A54(&v12[*(v113 + 24)], v7, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v44 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v13 = v108;

        v45 = &v7[*(v44 + 80)];
        v3 = *v45;
        v43 = v45[1];
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          sub_100022C40(v7, type metadata accessor for StableIdentifier);
          goto LABEL_24;
        }

        v41 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v13 = v108;

        v42 = &v7[*(v41 + 80)];
        v3 = *v42;
        v43 = v42[1];
      }

      v46 = type metadata accessor for UUID();
      (*(*(v46 - 8) + 8))(v7, v46);
      v114 = v3;
      v115 = v43;
      sub_1000DF96C();
      v47 = Data.init<A>(hexString:)();
      if (v48 >> 60 == 15)
      {
        goto LABEL_23;
      }

      v49 = v47;
      v3 = v48;
      v114 = v47;
      v115 = v48;
      sub_1000E0A3C();
      if (DataProtocol.isNull.getter())
      {
        sub_100006654(v49, v3);
        goto LABEL_23;
      }

      result = Data.trimmed.getter();
      v51 = result;
      v52 = v50;
      v53 = v50 >> 62;
      if (v50 >> 62 == 3)
      {
        if (result)
        {
          v54 = 0;
        }

        else
        {
          v54 = v50 == 0xC000000000000000;
        }

        v56 = !v54 || v107 < 3;
        if (((v56 | v102) & 1) == 0)
        {
          sub_100006654(v49, v3);
          v73 = 0;
          v74 = 0xC000000000000000;
LABEL_106:
          sub_100016590(v73, v74);
          v36 = v110;
LABEL_107:
          sub_10002911C(v12, v106, type metadata accessor for OwnedBeaconRecord);
          v13 = v105;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10112434C(0, v13[2] + 1, 1);
            v36 = v110;
            v13 = v116;
          }

          v95 = v13[2];
          v94 = v13[3];
          v3 = v95 + 1;
          if (v95 >= v94 >> 1)
          {
            sub_10112434C((v94 > 1), v95 + 1, 1);
            v36 = v110;
            v13 = v116;
          }

          v13[2] = v3;
          v105 = v13;
          sub_10002911C(v106, v13 + v14 + v95 * a1, type metadata accessor for OwnedBeaconRecord);
          goto LABEL_25;
        }

        v57 = 0;
LABEL_86:
        v71 = v107;
        if (v107 <= 1)
        {
          goto LABEL_87;
        }

        goto LABEL_74;
      }

      v71 = v107;
      if (v53)
      {
        if (v53 != 1)
        {
          v84 = result[2];
          v83 = result[3];
          v77 = __OFSUB__(v83, v84);
          v57 = v83 - v84;
          if (v77)
          {
            goto LABEL_122;
          }

          goto LABEL_86;
        }

        LODWORD(v57) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_123;
        }

        v57 = v57;
        if (v107 <= 1)
        {
LABEL_87:
          v85 = v71;
          v78 = v101;
          if (v85)
          {
            v78 = v98;
            if (v99)
            {
              goto LABEL_117;
            }
          }

          goto LABEL_89;
        }
      }

      else
      {
        v57 = BYTE6(v50);
        if (v107 <= 1)
        {
          goto LABEL_87;
        }
      }

LABEL_74:
      if (v71 == 2)
      {
        v76 = *(v104 + 16);
        v75 = *(v104 + 24);
        v77 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        if (v77)
        {
          goto LABEL_119;
        }

LABEL_89:
        if (v57 != v78)
        {
          goto LABEL_93;
        }

        if (v57 < 1)
        {
LABEL_95:
          sub_100006654(v49, v3);
          v73 = v51;
          v74 = v52;
          goto LABEL_106;
        }

        v86 = v103;
        sub_100017D5C(v104, v103);
        v87 = v86;
        v13 = v100;
        v97 = sub_100F0B1BC(v51, v52, v104, v87);
        v100 = v13;
        sub_100006654(v49, v3);
        sub_100016590(v51, v52);
        v36 = v110;
        if (v97)
        {
          goto LABEL_107;
        }

        goto LABEL_24;
      }

      if (!v57)
      {
        goto LABEL_95;
      }

LABEL_93:
      sub_100006654(v49, v3);
      v62 = v51;
      v63 = v52;
LABEL_94:
      sub_100016590(v62, v63);
      v36 = v110;
      goto LABEL_24;
    }

    v3 = *(v7 + 4);
    v58 = *(v7 + 5);

    v59 = sub_100260364(v3, v58);
    v61 = v60;
    v114 = v59;
    v115 = v60;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      v62 = v59;
      v63 = v61;
      goto LABEL_94;
    }

    v3 = Data.trimmed.getter();
    v65 = v64;
    result = sub_100016590(v59, v61);
    v66 = v65 >> 62;
    if (v65 >> 62 == 3)
    {
      if (v3)
      {
        v67 = 0;
      }

      else
      {
        v67 = v65 == 0xC000000000000000;
      }

      v69 = !v67 || v107 < 3;
      if (((v69 | v102) & 1) == 0)
      {
        v73 = 0;
        v74 = 0xC000000000000000;
        goto LABEL_106;
      }

      v70 = 0;
LABEL_81:
      v72 = v107;
      if (v107 > 1)
      {
        goto LABEL_97;
      }

      goto LABEL_82;
    }

    v72 = v107;
    if (v66 == 2)
    {
      v80 = *(v3 + 16);
      v79 = *(v3 + 24);
      v77 = __OFSUB__(v79, v80);
      v70 = v79 - v80;
      if (v77)
      {
        goto LABEL_120;
      }

      goto LABEL_81;
    }

    if (v66 == 1)
    {
      break;
    }

    v70 = BYTE6(v65);
    if (v107 > 1)
    {
      goto LABEL_97;
    }

LABEL_82:
    v81 = v72;
    v82 = v101;
    if (v81)
    {
      v82 = v98;
      if (v99)
      {
        goto LABEL_118;
      }
    }

LABEL_99:
    if (v70 != v82)
    {
      goto LABEL_104;
    }

    if (v70 <= 0)
    {
      goto LABEL_105;
    }

    v90 = v103;
    sub_100017D5C(v104, v103);
    sub_100017D5C(v3, v65);
    v91 = v90;
    v13 = v100;
    v92 = sub_100F0B1BC(v3, v65, v104, v91);
    v100 = v13;
    sub_100016590(v3, v65);
    sub_100016590(v3, v65);
    v36 = v110;
    if (v92)
    {
      goto LABEL_107;
    }

LABEL_24:
    sub_100022C40(v12, type metadata accessor for OwnedBeaconRecord);
LABEL_25:
    if (v111 == ++a2)
    {
      goto LABEL_113;
    }
  }

  LODWORD(v70) = HIDWORD(v3) - v3;
  if (__OFSUB__(HIDWORD(v3), v3))
  {
    goto LABEL_121;
  }

  v70 = v70;
  if (v107 <= 1)
  {
    goto LABEL_82;
  }

LABEL_97:
  if (v72 != 2)
  {
    if (!v70)
    {
LABEL_105:
      v73 = v3;
      v74 = v65;
      goto LABEL_106;
    }

LABEL_104:
    sub_100016590(v3, v65);
LABEL_23:
    v36 = v110;
    goto LABEL_24;
  }

  v89 = *(v104 + 16);
  v88 = *(v104 + 24);
  v77 = __OFSUB__(v88, v89);
  v82 = v88 - v89;
  if (!v77)
  {
    goto LABEL_99;
  }

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
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_100AA42BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v4 - 8);
  v89 = &v82 - v5;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v90 = &v82 - v7;
  v86 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v8 = __chkstk_darwin(v86);
  v91 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v82 - v11;
  __chkstk_darwin(v10);
  v96 = &v82 - v13;
  v14 = type metadata accessor for SharedBeaconRecord(0);
  v102 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v88 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = &v82 - v17;
  v18 = type metadata accessor for SystemInfo.DeviceLockState();
  v101 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v100 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v99 = &v82 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v85 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v82 - v26;
  v28._countAndFlagsBits = 0xD00000000000001ELL;
  v28._object = 0x800000010136CCA0;
  prohibitAsyncContext(functionName:)(v28);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_1000076D4(v29, qword_10177BA08);
  v31 = *(v23 + 16);
  v97 = a1;
  v31(v27, a1, v22);
  v95 = v30;
  v32 = Logger.logObject.getter();
  v33 = v23;
  v34 = static os_log_type_t.info.getter();
  v35 = os_log_type_enabled(v32, v34);
  v92 = v12;
  v93 = v22;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v87 = v33;
    v83 = v37;
    v103[0] = v37;
    *v36 = 141558275;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v22;
    v40 = v14;
    v41 = a2;
    v43 = v42;
    v84 = *(v33 + 8);
    v84(v27, v39);
    v44 = sub_1000136BC(v38, v43, v103);
    a2 = v41;
    v14 = v40;

    *(v36 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v32, v34, "legacySharedBeaconRecord(for uuid: %{private,mask.hash}s", v36, 0x16u);
    sub_100007BAC(v83);

    v45 = v87;
  }

  else
  {

    v84 = *(v33 + 8);
    v84(v27, v22);
    v45 = v33;
  }

  v46 = v99;
  static SystemInfo.lockState.getter();
  v48 = v100;
  v47 = v101;
  (*(v101 + 13))(v100, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v18);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v47 + 1);
  v50(v48, v18);
  v50(v46, v18);
  if ((v49 & 1) == 0)
  {
    v55 = v98;
    v56 = sub_100030068();
    __chkstk_darwin(v56);
    v57 = v96;
    *(&v82 - 2) = v97;
    sub_1012BBC38(sub_100B25ED4, v56, v57);
    v58 = v57;

    v59 = v102;
    v60 = *(v102 + 48);
    if (v60(v58, 1, v14) == 1)
    {
      v61 = v58;
LABEL_12:
      sub_10000B3A8(v61, &unk_101698C30, &unk_101392630);
      return (*(v59 + 56))(a2, 1, 1, v14);
    }

    v101 = v60;
    v62 = v94;
    sub_10002911C(v58, v94, type metadata accessor for SharedBeaconRecord);
    v63 = v89;
    sub_1000D2A70(v62 + *(v14 + 80), v89, &unk_1016AF890, &qword_1013926D0);
    v64 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
    {
      sub_10000B3A8(v63, &unk_1016AF890, &qword_1013926D0);
      v65 = v90;
      (*(v45 + 56))(v90, 1, 1, v93);
    }

    else
    {
      v66 = v63 + *(v64 + 20);
      v65 = v90;
      sub_1000D2A70(v66, v90, &qword_1016980D0, &unk_10138F3B0);
      sub_100022C40(v63, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v67 = v93;
      if ((*(v45 + 48))(v65, 1, v93) != 1)
      {
        v100 = a2;
        v69 = v67;
        v70 = v85;
        (*(v45 + 32))(v85, v65, v69);
        v71 = *(v55 + 168);
        v87 = v45;
        if (qword_101695470 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for URL();
        v99 = sub_1000076D4(v72, qword_10177CD50);
        v73._object = 0x800000010135B5A0;
        v73._countAndFlagsBits = 0xD000000000000014;
        prohibitAsyncContext(functionName:)(v73);
        v103[0] = v14;
        sub_1000BC4D4(&qword_101697750, &qword_1013B3560);
        v74 = String.init<A>(describing:)();
        v76 = v75;
        v77 = objc_autoreleasePoolPush();
        __chkstk_darwin(v77);
        *(&v82 - 6) = v71;
        *(&v82 - 5) = v70;
        *(&v82 - 4) = v99;
        *(&v82 - 3) = v74;
        *(&v82 - 2) = v76;
        v78 = v92;
        OS_dispatch_queue.sync<A>(execute:)();
        v68 = v78;
        objc_autoreleasePoolPop(v77);

        sub_100022C40(v94, type metadata accessor for SharedBeaconRecord);
        v84(v70, v93);
        a2 = v100;
        v59 = v102;
LABEL_20:
        v79 = v91;
        sub_1000D2A70(v68, v91, &unk_101698C30, &unk_101392630);
        if (v101(v79, 1, v14) == 1)
        {
          sub_10000B3A8(v79, &unk_101698C30, &unk_101392630);
        }

        else
        {
          v80 = v88;
          sub_10002911C(v79, v88, type metadata accessor for SharedBeaconRecord);
          v81 = *(v80 + *(v14 + 64));
          sub_100022C40(v80, type metadata accessor for SharedBeaconRecord);
          if (v81 != 1)
          {
            v61 = v68;
            goto LABEL_12;
          }
        }

        return sub_1000D2AD8(v68, a2, &unk_101698C30, &unk_101392630);
      }
    }

    sub_10000B3A8(v65, &qword_1016980D0, &unk_10138F3B0);
    v68 = v92;
    sub_10002911C(v62, v92, type metadata accessor for SharedBeaconRecord);
    (*(v59 + 56))(v68, 0, 1, v14);
    goto LABEL_20;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "legacySharedBeaconRecord call failed because in device is in beforeFirstUnlock state", v53, 2u);
  }

  return (*(v102 + 56))(a2, 1, 1, v14);
}

uint64_t sub_100AA4E84(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v3 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SharedBeaconRecord(0);
  sub_1000D2A70(a1 + *(v13 + 80), v5, &unk_1016AF890, &qword_1013926D0);
  v14 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_10000B3A8(v5, &unk_1016AF890, &qword_1013926D0);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    v15 = static UUID.== infix(_:_:)();
    return v15 & 1;
  }

  sub_1000D2A70(&v5[*(v14 + 20)], v8, &qword_1016980D0, &unk_10138F3B0);
  sub_100022C40(v5, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  (*(v10 + 32))(v12, v8, v9);
  if (static UUID.== infix(_:_:)())
  {
    v16 = 1;
  }

  else
  {
    v16 = static UUID.== infix(_:_:)();
  }

  (*(v10 + 8))(v12, v9);
  v15 = v16;
  return v15 & 1;
}

uint64_t sub_100AA5198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SystemInfo.DeviceLockState();
  v39 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v33 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_1000076D4(v12, qword_10177BA08);
  (*(v9 + 16))(v11, a1, v8);
  v36 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = a1;
    v18 = a2;
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = sub_1000136BC(v17, v20, &v40);
    a2 = v18;
    a1 = v35;

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "sharedBeaconRecord(for uuid: %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v34);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v22 = v37;
  static SystemInfo.lockState.getter();
  v24 = v38;
  v23 = v39;
  (*(v39 + 104))(v38, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v4);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v23 + 8);
  v26(v24, v4);
  v26(v22, v4);
  if (v25)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "sharedBeaconRecord call failed because in device is in beforeFirstUnlock state", v29, 2u);
    }

    v30 = type metadata accessor for SharedBeaconRecord(0);
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  else
  {
    v32 = sub_100030068();
    __chkstk_darwin(v32);
    *(&v33 - 2) = a1;
    sub_1012BBC38(sub_100B25EA4, v32, a2);
  }
}

void *sub_100AA56A8(uint64_t a1)
{
  v47 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v47 - 8);
  v3 = __chkstk_darwin(v47);
  v49 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v48 = &v38[-v5];
  v53 = type metadata accessor for UUID();
  __chkstk_darwin(v53);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = *(v6 + 16);
  v10 = v6 + 16;
  v45 = v11;
  v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v44 = (v2 + 104);
  v43 = v2 + 8;
  v42 = (v10 - 8);
  v41 = *(v10 + 56);
  v40 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v39 = xmmword_101385D80;
  v50 = _swiftEmptyArrayStorage;
  v46 = v10;
  v13 = (v2 + 8);
  do
  {
    v51 = v12;
    v52 = v9;
    v45(v8);
    v14 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = v39;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "beaconRecord(for uuid: %@)", 26, 2, v16);

    v20 = v48;
    static SystemInfo.lockState.getter();
    v21 = v49;
    v22 = v47;
    (*v44)(v49, v40, v47);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = *v13;
    (*v13)(v21, v22);
    v24(v20, v22);
    if (v23)
    {
      v25 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v15, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
      v56 = 0;
      v54 = 0u;
      v55 = 0u;
    }

    else
    {
      v26 = sub_100007F54();
      __chkstk_darwin(v26);
      *&v38[-16] = v8;
      sub_1000314D0(sub_1004E4EC0, v26, &v54);
    }

    (*v42)(v8, v53);
    if (*(&v55 + 1))
    {
      sub_10000A748(&v54, v57);
      v27 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = sub_1000084AC(0, v50[2] + 1, 1, v50);
        v60 = v50;
      }

      v30 = v50[2];
      v29 = v50[3];
      if (v30 >= v29 >> 1)
      {
        v50 = sub_1000084AC((v29 > 1), v30 + 1, 1, v50);
        v60 = v50;
      }

      v31 = v58;
      v32 = v59;
      v33 = sub_10015049C(v57, v58);
      __chkstk_darwin(v33);
      v35 = &v38[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v36 + 16))(v35);
      sub_100B039C0(v30, v35, &v60, v31, v32);
      sub_100007BAC(v57);
    }

    else
    {
      sub_10000B3A8(&v54, &qword_101696920, &unk_10138B200);
    }

    v12 = v51 + v41;
    v9 = v52 - 1;
  }

  while (v52 != 1);
  return v50;
}

void *sub_100AA5C88()
{
  v0 = sub_1000BC4D4(&qword_1016BB090, &unk_1013D6A90);
  __chkstk_darwin(v0 - 8);
  v2 = (v14 - v1);
  v3 = type metadata accessor for StableIdentifier(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100EF8D90(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000B3A8(v2, &qword_1016BB090, &unk_1013D6A90);
    v7 = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      v13 = v7;
      swift_once();
      v7 = v13;
    }

    v8 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C370, "Local beaconing record Stable Identifier not found.", 51, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_10002911C(v2, v6, type metadata accessor for StableIdentifier);
    v9 = objc_autoreleasePoolPush();
    v10 = sub_100025044();
    __chkstk_darwin(v10);
    v14[-2] = v6;
    v14[0] = sub_10013D1C8(sub_100B25E04, &v14[-4], v11);

    sub_100A8ABA4(v14);

    v8 = v14[0];
    objc_autoreleasePoolPop(v9);
    sub_100022C40(v6, type metadata accessor for StableIdentifier);
  }

  return v8;
}

void *sub_100AA5F10()
{
  v0 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v0 - 8);
  v129 = &v101 - v1;
  v128 = type metadata accessor for OwnedBeaconRecord(0);
  v108 = *(v128 - 8);
  v2 = __chkstk_darwin(v128);
  v114 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v113 = &v101 - v4;
  v131 = type metadata accessor for OwnerSharingCircle(0);
  v106 = *(v131 - 8);
  v5 = __chkstk_darwin(v131);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v101 - v7;
  v9 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v9 - 8);
  *&v117 = &v101 - v10;
  v11 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v118 = *(v11 - 1);
  v119 = v11;
  __chkstk_darwin(v11);
  v111 = (&v101 - v12);
  v107 = type metadata accessor for URL();
  v13 = *(v107 - 8);
  v14 = __chkstk_darwin(v107);
  *&v109 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v101 - v17;
  __chkstk_darwin(v16);
  v20 = &v101 - v19;
  v21 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v21 - 8);
  v112 = (&v101 - v22);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v23 - 8);
  v132 = &v101 - v24;
  v25 = type metadata accessor for SystemInfo.DeviceLockState();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v101 - v30;
  v32._object = 0x800000010136CC20;
  v32._countAndFlagsBits = 0xD00000000000001BLL;
  prohibitAsyncContext(functionName:)(v32);
  static SystemInfo.lockState.getter();
  v33 = *(v26 + 104);
  v123 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v121 = v33;
  v122 = v26 + 104;
  v33(v29);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34 = *(v26 + 8);
  v125 = v29;
  v34(v29, v25);
  v124 = v31;
  v126 = v26 + 8;
  v127 = v25;
  v120 = v34;
  v34(v31, v25);
  if (v134 == v133)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177BA08);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "ownedDelegatedBeaconRecords call failed because device is in beforeFirstUnlock state", v38, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v130 = v8;
  v39 = type metadata accessor for UUID();
  v40 = *(*(v39 - 8) + 56);
  v110 = v39;
  v40(v132, 1, 1);
  v105 = *(v115 + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v41 = v107;
  v42 = sub_1000076D4(v107, qword_10177C0D8);
  v43 = v13;
  v44 = *(v13 + 16);
  v103 = v20;
  v44(v20, v42, v41);
  v44(v18, v20, v41);
  v45 = *(v119 + 10);
  v104 = v45;
  v46 = v119;
  v102 = type metadata accessor for DirectorySequence();
  v47 = *(*(v102 - 8) + 56);
  v48 = v111;
  v47(v111 + v45, 1, 1, v102);
  v44(v48, v18, v41);
  *(v48 + *(v46 + 9)) = v105;
  v44(v109, v18, v41);

  v49 = v117;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v50 = *(v43 + 8);
  v50(v18, v41);
  v50(v103, v41);
  v47(v49, 0, 1, v102);
  sub_10002311C(v49, v48 + v104, &qword_1016A5970, &unk_1013B3470);
  v51 = v119;
  v52 = *(v118 + 56);
  v53 = v112;
  v52(v112, 1, 1, v119);
  sub_10000B3A8(v53, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v48, v53, &qword_1016A7828, &unk_1013D7340);
  v54 = (v52)(v53, 0, 1, v51);
  __chkstk_darwin(v54);
  v55 = v132;
  *(&v101 - 2) = v132;
  *(&v101 - 8) = 1;
  sub_100E6B40C(sub_100B25D9C, (&v101 - 4));
  v57 = v56;
  sub_10000B3A8(v55, &qword_1016980D0, &unk_10138F3B0);
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v107 = v57;
    v60 = v57 + v59;
    v112 = (v108 + 48);
    v111 = (v108 + 56);
    v118 = *(v106 + 72);
    *(&v61 + 1) = 2;
    v117 = xmmword_101385D80;
    v62 = &_mh_execute_header;
    *&v61 = 136315138;
    v109 = v61;
    v119 = _swiftEmptyArrayStorage;
    v63 = v130;
    while (1)
    {
      v132 = v58;
      sub_100022A54(v60, v63, type metadata accessor for OwnerSharingCircle);
      v65 = *(v131 + 24);
      v66 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v67 = v63 + v65;
      v68 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v69 = swift_allocObject();
      *(v69 + 16) = v117;
      v70 = UUID.uuidString.getter();
      v72 = v71;
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = sub_100008C00();
      *(v69 + 32) = v70;
      *(v69 + 40) = v72;
      os_log(_:dso:log:_:_:)(v66, v62, v68, "ownedBeaconRecord(for uuid: %@)", 31, 2, v69);

      v73 = v124;
      static SystemInfo.lockState.getter();
      v74 = v125;
      v75 = v127;
      v121(v125, v123, v127);
      sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      v76 = dispatch thunk of static Equatable.== infix(_:_:)();
      v77 = v62;
      v78 = v120;
      v120(v74, v75);
      v78(v73, v75);
      if (v76)
      {
        break;
      }

      v82 = sub_100025044();
      __chkstk_darwin(v82);
      *(&v101 - 2) = v67;
      v83 = v129;
      sub_1012BBBD0(sub_100B27F94, v82, v129);
      v80 = v83;

      if ((*v112)(v83, 1, v128) == 1)
      {
        v81 = v116;
        v62 = &_mh_execute_header;
        goto LABEL_20;
      }

      v95 = v113;
      sub_10002911C(v83, v113, type metadata accessor for OwnedBeaconRecord);
      sub_100022A54(v95, v114, type metadata accessor for OwnedBeaconRecord);
      v62 = &_mh_execute_header;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v96 = v119;
      }

      else
      {
        v96 = sub_100A5C050(0, v119[2] + 1, 1, v119);
      }

      v63 = v130;
      v98 = v96[2];
      v97 = v96[3];
      if (v98 >= v97 >> 1)
      {
        v119 = sub_100A5C050((v97 > 1), v98 + 1, 1, v96);
      }

      else
      {
        v119 = v96;
      }

      sub_100022C40(v113, type metadata accessor for OwnedBeaconRecord);
      sub_100022C40(v63, type metadata accessor for OwnerSharingCircle);
      v99 = v119;
      v119[2] = v98 + 1;
      sub_10002911C(v114, v99 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v98, type metadata accessor for OwnedBeaconRecord);
LABEL_13:
      v60 += v118;
      v58 = v132 - 1;
      if (v132 == 1)
      {

        return v119;
      }
    }

    v79 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v79, v77, v68, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
    v80 = v129;
    (*v111)(v129, 1, 1, v128);
    v81 = v116;
    v62 = v77;
LABEL_20:
    sub_10000B3A8(v80, &unk_1016A9A20, &qword_10138B280);
    v63 = v130;
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_1000076D4(v84, qword_10177AE28);
    sub_100022A54(v63, v81, type metadata accessor for OwnerSharingCircle);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = v81;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v134 = v89;
      *v88 = v109;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v93 = v87;
      v63 = v130;
      sub_100022C40(v93, type metadata accessor for OwnerSharingCircle);
      v94 = sub_1000136BC(v90, v92, &v134);

      *(v88 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v85, v86, "Owned beacon record not found for delegated beacon identifier %s", v88, 0xCu);
      sub_100007BAC(v89);

      v64 = v63;
      v62 = &_mh_execute_header;
    }

    else
    {

      sub_100022C40(v81, type metadata accessor for OwnerSharingCircle);
      v64 = v63;
    }

    sub_100022C40(v64, type metadata accessor for OwnerSharingCircle);
    goto LABEL_13;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100AA6F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a3;
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v85 - v6;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v85 - v9;
  v109 = type metadata accessor for UUID();
  v92 = *(v109 - 8);
  v11 = __chkstk_darwin(v109);
  v100 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v102 = &v85 - v14;
  v15 = __chkstk_darwin(v13);
  v101 = &v85 - v16;
  v17 = __chkstk_darwin(v15);
  v103 = &v85 - v18;
  __chkstk_darwin(v17);
  v106 = &v85 - v19;
  v108 = type metadata accessor for SharedBeaconRecord(0);
  v20 = *(v108 - 8);
  __chkstk_darwin(v108);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  v23 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper);
  swift_beginAccess();
  *(v23 + 16) = _swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v105 = v23;
  *(v23 + 24) = _swiftEmptyDictionarySingleton;

  v87 = a2;
  v24 = *(a2 + 16);
  if (!v24)
  {
LABEL_31:
    v82 = v85;
    v83 = sub_100AA81F4(v87);
    *(v82 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords) = v83;

    *v86 = v83;
    return result;
  }

  v25 = v87 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v99 = (v92 + 48);
  v97 = (v92 + 32);
  v104 = (v92 + 16);
  v96 = v92 + 8;
  v91 = (v92 + 40);
  v98 = (v92 + 56);
  v26 = *(v20 + 72);
  v90 = v7;
  v89 = v10;
  v88 = v26;
  v107 = v22;
  while (1)
  {
    sub_100022A54(v25, v22, type metadata accessor for SharedBeaconRecord);
    sub_1000D2A70(&v22[*(v108 + 80)], v7, &unk_1016AF890, &qword_1013926D0);
    v27 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v27 - 8) + 48))(v7, 1, v27) != 1)
    {
      break;
    }

    sub_100022C40(v22, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v7, &unk_1016AF890, &qword_1013926D0);
    (*v98)(v10, 1, 1, v109);
LABEL_4:
    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
LABEL_5:
    v25 += v26;
    if (!--v24)
    {
      goto LABEL_31;
    }
  }

  sub_1000D2A70(&v7[*(v27 + 20)], v10, &qword_1016980D0, &unk_10138F3B0);
  sub_100022C40(v7, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  v28 = v109;
  if ((*v99)(v10, 1, v109) == 1)
  {
    v22 = v107;
    sub_100022C40(v107, type metadata accessor for SharedBeaconRecord);
    goto LABEL_4;
  }

  v29 = v106;
  v95 = *v97;
  v95(v106, v10, v28);
  v30 = v103;
  v31 = *v104;
  v32 = *(v108 + 20);
  (*v104)(v103, &v107[v32], v28);
  v33 = v105;
  swift_beginAccess();
  v31(v101, v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = *(v33 + 16);
  v35 = v110;
  *(v33 + 16) = 0x8000000000000000;
  v37 = sub_1000210EC(v30);
  v38 = v35[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (!__OFADD__(v38, v39))
  {
    v41 = v36;
    if (v35[3] >= v40)
    {
      v22 = v107;
      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = v110;
        if ((v36 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_101005D44();
        v44 = v110;
        if ((v41 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_100FE80C8(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_1000210EC(v103);
      v22 = v107;
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_36;
      }

      v37 = v42;
      v44 = v110;
      if ((v41 & 1) == 0)
      {
LABEL_18:
        v44[(v37 >> 6) + 8] |= 1 << v37;
        v49 = v44[6];
        v50 = v92;
        v94 = *(v92 + 72);
        v51 = v94 * v37;
        v52 = v49 + v94 * v37;
        v53 = v103;
        v54 = v109;
        v31(v52, v103, v109);
        v95((v44[7] + v51), v101, v54);
        v55 = *(v50 + 8);
        v56 = v53;
        v48 = v54;
        v55(v56, v54);
        v57 = v44[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_34;
        }

        v93 = v55;
        v44[2] = v59;
        v22 = v107;
LABEL_20:
        v60 = v105;
        *(v105 + 16) = v44;

        swift_endAccess();
        v61 = v102;
        v31(v102, v106, v48);
        swift_beginAccess();
        v31(v100, &v22[v32], v48);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v110 = *(v60 + 24);
        v63 = v110;
        *(v60 + 24) = 0x8000000000000000;
        v64 = sub_1000210EC(v61);
        v66 = v63[2];
        v67 = (v65 & 1) == 0;
        v58 = __OFADD__(v66, v67);
        v68 = v66 + v67;
        if (v58)
        {
          goto LABEL_33;
        }

        v69 = v65;
        if (v63[3] >= v68)
        {
          if (v62)
          {
            goto LABEL_25;
          }

          v74 = v64;
          sub_101005D44();
          v64 = v74;
          v71 = v110;
          if ((v69 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_26:
          v72 = v109;
          (*v91)(v71[7] + v94 * v64, v100, v109);
          v73 = v93;
          v93(v102, v72);
        }

        else
        {
          sub_100FE80C8(v68, v62);
          v64 = sub_1000210EC(v102);
          if ((v69 & 1) != (v70 & 1))
          {
            goto LABEL_36;
          }

LABEL_25:
          v71 = v110;
          if (v69)
          {
            goto LABEL_26;
          }

LABEL_28:
          v71[(v64 >> 6) + 8] |= 1 << v64;
          v75 = v94 * v64;
          v76 = v102;
          v77 = v109;
          v31(v71[6] + v94 * v64, v102, v109);
          v95((v71[7] + v75), v100, v77);
          v78 = v76;
          v72 = v77;
          v79 = v77;
          v73 = v93;
          v93(v78, v79);
          v80 = v71[2];
          v58 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v58)
          {
            goto LABEL_35;
          }

          v71[2] = v81;
        }

        *(v105 + 24) = v71;

        swift_endAccess();
        v73(v106, v72);
        sub_100022C40(v22, type metadata accessor for SharedBeaconRecord);
        v7 = v90;
        v10 = v89;
        v26 = v88;
        goto LABEL_5;
      }
    }

    v45 = v44[7];
    v46 = v92;
    v94 = *(v92 + 72);
    v47 = v45 + v94 * v37;
    v48 = v109;
    (*(v92 + 40))(v47, v101, v109);
    v93 = *(v46 + 8);
    v93(v103, v48);
    goto LABEL_20;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100AA79B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100AA79D4, 0, 0);
}

uint64_t sub_100AA79D4()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100AA7A9C;
  v3 = *(v0 + 24);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_100B25D94, v3, v2);
}

uint64_t sub_100AA7A9C()
{

  return _swift_task_switch(sub_100AA7BB4, 0, 0);
}

uint64_t sub_100AA7BB4()
{
  v11 = v0;
  v1 = v0[4];
  v2 = v0[2];
  v0[6] = v2;
  v3 = v1[2];
  if (v3)
  {
    v4 = sub_1003A86B0(v3, 0);
    v5 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
    v6 = sub_1003A9970(&v10, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v1);
    v7 = v10;

    result = sub_1000128F8(v7);
    if (v6 != v3)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v0[7] = v4;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_100AA7D38;

  return sub_100393724(v4, v2);
}

uint64_t sub_100AA7D38()
{

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

uint64_t sub_100AA7E50@<X0>(void *a2@<X8>)
{
  type metadata accessor for BeaconKeyManager(0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *a2 = v4;
  return result;
}

uint64_t sub_100AA7ED8()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing CloudStorageService!", v4, 2u);
  }

  **(v0 + 48) = _swiftEmptyArrayStorage;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100AA7FFC()
{
  v12 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure to return accessory records %s!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  **(v0 + 48) = _swiftEmptyArrayStorage;
  v9 = *(v0 + 8);

  return v9();
}

void *sub_100AA81F4(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v41 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v54 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v41 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueue);
  *v13 = v14;
  v15 = *(v11 + 104);
  v50 = enum case for DispatchPredicate.onQueue(_:);
  v48 = v15;
  v49 = v11 + 104;
  v15(v13);
  v47 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v17 = *(v11 + 8);
  v51 = v11 + 8;
  v52 = v10;
  v46 = v17;
  result = v17(v13, v10);
  if (v16)
  {
    v19 = *(a1 + 16);
    if (v19)
    {
      v43 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper;
      v45 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v20 = a1 + v45;
      v21 = *(v6 + 72);
      v22 = _swiftEmptyArrayStorage;
      v23 = v41;
      v24 = v53;
      while (1)
      {
        sub_100022A54(v20, v24, type metadata accessor for SharedBeaconRecord);
        v26 = v47;
        v25 = v48;
        *v13 = v47;
        v27 = v52;
        v25(v13, v50, v52);
        v28 = v26;
        LOBYTE(v26) = _dispatchPreconditionTest(_:)();
        result = v46(v13, v27);
        if ((v26 & 1) == 0)
        {
          __break(1u);
          goto LABEL_24;
        }

        if (*(v24 + *(v23 + 64)) != 1)
        {
          goto LABEL_16;
        }

        v29 = *(v44 + v43);
        v30 = *(v23 + 20);
        swift_beginAccess();
        v31 = *(v29 + 24);
        if (*(v31 + 16))
        {
          v32 = sub_1000210EC(v24 + v30);
          if (v33)
          {
            v34 = v32;
            v42 = *(v31 + 56);
            v35 = type metadata accessor for UUID();
            v36 = v5;
            v37 = *(v35 - 8);
            (*(v37 + 16))(v36, v42 + *(v37 + 72) * v34, v35);
            (*(v37 + 56))(v36, 0, 1, v35);
            v5 = v36;
            v23 = v41;
          }

          else
          {
            v35 = type metadata accessor for UUID();
            (*(*(v35 - 8) + 56))(v5, 1, 1, v35);
          }

          v24 = v53;
        }

        else
        {
          v35 = type metadata accessor for UUID();
          (*(*(v35 - 8) + 56))(v5, 1, 1, v35);
        }

        swift_endAccess();
        type metadata accessor for UUID();
        if ((*(*(v35 - 8) + 48))(v5, 1, v35) == 1)
        {
          break;
        }

        sub_100022C40(v24, type metadata accessor for SharedBeaconRecord);
        sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
LABEL_5:
        v20 += v21;
        if (!--v19)
        {
          return v22;
        }
      }

      sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
LABEL_16:
      sub_10002911C(v24, v54, type metadata accessor for SharedBeaconRecord);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10112421C(0, v22[2] + 1, 1);
        v22 = v55;
      }

      v40 = v22[2];
      v39 = v22[3];
      if (v40 >= v39 >> 1)
      {
        sub_10112421C((v39 > 1), v40 + 1, 1);
        v22 = v55;
      }

      v22[2] = v40 + 1;
      sub_10002911C(v54, v22 + v45 + v40 * v21, type metadata accessor for SharedBeaconRecord);
      v24 = v53;
      goto LABEL_5;
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_100AA87D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_100030068();

  return sub_100397750(a1, a2);
}

uint64_t sub_100AA882C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper);
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = sub_1000210EC(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a3, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

void *sub_100AA899C()
{
  v1 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v60 - v2;
  v4 = type metadata accessor for ShareRecord(0);
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = __chkstk_darwin(v4);
  v84 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v60 - v7;
  v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - v10;
  v74 = type metadata accessor for DirectorySequence();
  v12 = *(v74 - 8);
  __chkstk_darwin(v74);
  v80 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for URL();
  v14 = *(v73 - 8);
  v15 = __chkstk_darwin(v73);
  v62 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v60 - v17;
  v18 = type metadata accessor for OwnedBeaconRecord(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100025044();
  v72 = v22[2];
  if (v72)
  {
    v71 = *(v18 + 20);
    v61 = *(v0 + 168);
    v70 = v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v75 = v22;
    v69 = objc_opt_self();
    result = v75;
    v24 = 0;
    v25 = 0;
    v67 = (v12 + 8);
    v76 = _swiftEmptyDictionarySingleton;
    v66 = xmmword_10138BBE0;
    v81 = v8;
    v82 = v3;
    v65 = v11;
    v64 = v19;
    v63 = v21;
    v68 = (v14 + 48);
    v60 = (v14 + 32);
    v83 = (v14 + 8);
    while (v24 < result[2])
    {
      v28 = *(v19 + 72);
      v78 = v24;
      sub_100022A54(&v70[v28 * v24], v21, type metadata accessor for OwnedBeaconRecord);
      v29 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v30 = v73;
      sub_1000076D4(v73, qword_10177A518);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v31 = v29;
      v32 = v30;
      objc_autoreleasePoolPop(v31);
      v88 = _swiftEmptyArrayStorage;
      v89 = _swiftEmptyArrayStorage;
      v33 = [v69 defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      DirectorySequence.next()();
      v34 = *v68;
      if ((*v68)(v11, 1, v30) == 1)
      {
        v35 = v80;
      }

      else
      {
        v87 = *v60;
        v36 = v62;
        v37 = v61;
        v35 = v80;
        do
        {
          v87(v36, v11, v32);
          v38 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v36, v37, &v89, &v88);
          objc_autoreleasePoolPop(v38);
          (*v83)(v36, v32);
          DirectorySequence.next()();
        }

        while (v34(v11, 1, v32) != 1);
      }

      v77 = v25;
      (*v67)(v35, v74);
      v39 = static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v40 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v41 = swift_allocObject();
      *(v41 + 16) = v66;
      v42 = v32;
      v43 = v89;
      v44 = v89[2];
      *(v41 + 56) = &type metadata for Int;
      *(v41 + 64) = &protocol witness table for Int;
      *(v41 + 32) = v44;
      sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

      v45 = v79;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      *(v41 + 96) = &type metadata for String;
      *(v41 + 104) = sub_100008C00();
      *(v41 + 72) = v46;
      *(v41 + 80) = v48;
      os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "Found %i records at %@", 22, 2, v41);

      (*v83)(v45, v42);

      v87 = v43[2];
      if (v87)
      {
        v49 = 0;
        v50 = _swiftEmptyArrayStorage;
        v51 = v81;
        v52 = v82;
        while (v49 < v43[2])
        {
          v53 = (*(v85 + 80) + 32) & ~*(v85 + 80);
          v54 = *(v85 + 72);
          sub_100022A54(v43 + v53 + v54 * v49, v51, type metadata accessor for ShareRecord);
          sub_1000D2A70(v51 + *(v86 + 32), v52, &unk_101696900, &unk_10138B1E0);
          v55 = type metadata accessor for Date();
          v56 = (*(*(v55 - 8) + 48))(v52, 1, v55);
          sub_10000B3A8(v52, &unk_101696900, &unk_10138B1E0);
          if (v56 == 1)
          {
            result = sub_100022C40(v51, type metadata accessor for ShareRecord);
          }

          else
          {
            sub_10002911C(v51, v84, type metadata accessor for ShareRecord);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v89 = v50;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101124CDC(0, v50[2] + 1, 1);
              v50 = v89;
            }

            v59 = v50[2];
            v58 = v50[3];
            if (v59 >= v58 >> 1)
            {
              sub_101124CDC((v58 > 1), v59 + 1, 1);
              v50 = v89;
            }

            v50[2] = v59 + 1;
            result = sub_10002911C(v84, v50 + v53 + v59 * v54, type metadata accessor for ShareRecord);
            v51 = v81;
            v52 = v82;
          }

          if (v87 == ++v49)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

      v50 = _swiftEmptyArrayStorage;
LABEL_24:

      if (v50[2])
      {
        v26 = v76;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v26;
        v21 = v63;
        sub_100FFDCF0(v50, v63, v27);
        v76 = v89;
        sub_100022C40(v21, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v21 = v63;
        sub_100022C40(v63, type metadata accessor for OwnedBeaconRecord);
      }

      v11 = v65;
      v19 = v64;
      v25 = v77;
      v24 = v78 + 1;
      result = v75;
      if (v78 + 1 == v72)
      {

        return v76;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100AA9390(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v110 = a2;
  v108 = a3;
  v107 = type metadata accessor for BeaconStoreFileRecord(0);
  v105 = *(v107 - 1);
  __chkstk_darwin(v107);
  v104 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v106 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v103 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v89 - v8;
  v114 = type metadata accessor for UUID();
  v112 = *(v114 - 1);
  v9 = __chkstk_darwin(v114);
  v92 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v89 - v12;
  __chkstk_darwin(v11);
  v95 = &v89 - v14;
  v93 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v93);
  v94 = &v89 - v15;
  v16 = type metadata accessor for OwnedBeaconGroup(0);
  v100 = *(v16 - 8);
  v17 = *(v100 + 64);
  v18 = __chkstk_darwin(v16);
  v101 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v89 - v19;
  v21 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C380;
  v102 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  v97 = xmmword_101385D80;
  *(v23 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v20, type metadata accessor for OwnedBeaconGroup);
  v109 = v16;
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v98 = sub_100008C00();
  *(v23 + 64) = v98;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v99 = v22;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Attempting to remove: %@", 24, 2, v23);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C218;
  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 isInternalBuild];

  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();
    v29 = [v27 BOOLForKey:v30];
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v32 = result;
    v33 = [result aa_primaryAppleAccount];

    v113 = a1;
    if (v33 && (v33, (v29 & 1) == 0))
    {
      v101 = v17;
      v47 = v106;
      v103 = v20;
      v104 = v5;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v48 = *(v109 + 24);
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v52 = v111;
      v53 = *(v111 + 160);
      v54._countAndFlagsBits = v49;
      v54._object = v51;
      isa = CKRecordID.init(recordName:zoneID:)(v54, v53).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v92 = isa;
      v109 = sub_100FDB020(isa);

      v93 = swift_allocBox();
      v56 = a1;
      v57 = *(v105 + 56);
      v91 = v58;
      v59 = v107;
      v105 += 56;
      v90 = v57;
      v57(v58, 1, 1, v107);
      v60 = *(v52 + 168);
      v61 = v112;
      v62 = v95;
      (*(v112 + 16))(v95, v56 + v48, v114);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v63 = v104;
      v64 = sub_1000076D4(v104, qword_10177AEF8);
      v65 = v96;
      v66 = (*(v47 + 16))(v96, v64, v63);
      __chkstk_darwin(v66);
      *(&v89 - 4) = v60;
      *(&v89 - 3) = v62;
      *(&v89 - 2) = v65;
      v67 = v94;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v47 + 8))(v65, v63);
      (*(v61 + 8))(v62, v114);
      v90(v67, 0, 1, v59);
      sub_10002311C(v67, v91, &qword_1016B53E0, &unk_1013D65D0);
      v70 = v98;
      v69 = v99;
      v71 = v92;
      v72 = static os_log_type_t.default.getter();
      v73 = swift_allocObject();
      *(v73 + 16) = v97;
      v74 = v71;
      v114 = v74;
      v75 = [v74 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = v70;
      *(v73 + 32) = v76;
      *(v73 + 40) = v78;
      os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v69, "cloudBacked item deleted from disk: %@", 38, 2, v73);

      v79 = v103;
      sub_100022A54(v113, v103, type metadata accessor for OwnedBeaconGroup);
      v80 = *(v100 + 80);
      v112 = (v80 + 32) & ~v80;
      v81 = &v101[v112 + 7] & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      v83 = v93;
      v84 = v111;
      *(v82 + 16) = v93;
      *(v82 + 24) = v84;
      v107 = type metadata accessor for OwnedBeaconGroup;
      sub_10002911C(v79, v82 + ((v80 + 32) & ~v80), type metadata accessor for OwnedBeaconGroup);
      v85 = (v82 + v81);
      v86 = v108;
      *v85 = v110;
      v85[1] = v86;

      Future.addSuccess(block:)();

      sub_100022A54(v113, v79, type metadata accessor for OwnedBeaconGroup);
      v87 = swift_allocObject();
      *(v87 + 16) = v83;
      *(v87 + 24) = v84;
      sub_10002911C(v79, v87 + v112, v107);
      v88 = (v87 + v81);
      *v88 = v110;
      v88[1] = v86;

      Future.addFailure(block:)();
    }

    else
    {
      v34 = v106;
      v35 = v5;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177BA08);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109376;
        *(v39 + 4) = v29;
        *(v39 + 8) = 1024;
        *(v39 + 10) = v33 != 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v39, 0xEu);
      }

      v40 = *(v111 + 168);
      v41 = v113 + *(v109 + 24);
      v42 = v13;
      v105 = *(v112 + 16);
      (v105)(v13, v41, v114);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v43 = sub_1000076D4(v5, qword_10177AEF8);
      v44 = v103;
      v45 = (*(v34 + 16))(v103, v43, v35);
      __chkstk_darwin(v45);
      *(&v89 - 4) = v40;
      *(&v89 - 3) = v13;
      *(&v89 - 2) = v44;
      v46 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v34 + 8))(v44, v35);
      (*(v112 + 8))(v42, v114);
      sub_100B39D8C(v46);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v68 = sub_100A8306C(9u);
      sub_100A8375C(v68);
      v110(0);
      return sub_100022C40(v46, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}