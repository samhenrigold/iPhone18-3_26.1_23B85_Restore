uint64_t sub_10014B844(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10014B8C8(uint64_t a1)
{
  v9 = sub_100004074(&qword_1003A46F0, &qword_1002C8C38);
  v10 = sub_10001A570(&qword_1003A46F8, &qword_1003A46F0, &qword_1002C8C38, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_10000BE18(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10014B4B8(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000959C(v8);
  return v5;
}

uint64_t sub_10014B9A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_10014BA44()
{
  result = qword_1003A46E8;
  if (!qword_1003A46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A46E8);
  }

  return result;
}

uint64_t sub_10014BA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014BAB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10014BAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10014B54C(sub_10014BB58, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void sub_10014BB78(uint64_t a1)
{
  v2 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v113 = *(v2 - 8);
  v114 = v2;
  __chkstk_darwin(v2);
  v112 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v110);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v111 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v115;
  sub_1000E3850(v143);
  if (v16)
  {

    return;
  }

  v105 = v6;
  v106 = v11;
  v107 = v5;
  v108 = v8;
  v17 = v114;
  v109 = v15;
  v115 = v13;
  sub_1000E5EA8(v140);
  v18 = a1;
  v104 = v12;
  v19 = v141;
  v20 = v142;
  sub_10000BE18(v140, v141);
  sub_1000C7DD8(v19, v20);
  sub_1000EE7EC(v136);
  sub_1000E9D90(v135);
  sub_1000E6B70(v132);
  v21 = v138;
  v22 = v139;
  sub_10000BE18(v137, v138);
  if (qword_10039D678 != -1)
  {
    swift_once();
  }

  v23 = (*(v22 + 32))(qword_1003A6DE0, *algn_1003A6DE8, v21, v22);
  v25 = v23;
  v26 = v24;
  *&v103 = 0;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_16;
    }

    v28 = *(v23 + 16);
    v29 = *(v23 + 24);
  }

  else
  {
    if (!v27)
    {
      if ((v24 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v28 = v23;
    v29 = v23 >> 32;
  }

  if (v28 == v29)
  {
    goto LABEL_16;
  }

LABEL_13:
  v30 = Data._Representation.subscript.getter();
  if (v30 != 1)
  {
    if (!v30)
    {
      sub_100009548(v25, v26);
LABEL_21:
      v100 = 0;
      goto LABEL_22;
    }

LABEL_16:
    if (qword_10039D670 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000403C(v31, qword_1003A4528);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Found invalid mode data in persistence. Using .online", v34, 2u);
    }

    sub_100009548(v25, v26);

    goto LABEL_21;
  }

  sub_100009548(v25, v26);
  v100 = 1;
LABEL_22:
  v35 = v103;
  v36 = *(*sub_10000BE18(v135, v135[3]) + 296);
  os_unfair_lock_lock((v36 + 24));
  sub_1000B4F6C((v36 + 16), &v129);
  os_unfair_lock_unlock((v36 + 24));
  if (v35)
  {
    __break(1u);
  }

  else
  {
    v103 = v129;
    v37 = v18 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v101 = type metadata accessor for Settings(0);
    v102 = v37;
    v38 = *(v37 + *(v101 + 19));
    v39 = sub_10000BE18(v143, v143[3]);
    v41 = v115 + 16;
    v40 = *(v115 + 16);
    (v40)(v109, *v39 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v104);
    sub_10000CCE4(v137, &v129);
    sub_1000E4518(v128);
    v42 = v101;
    v43 = v102;
    v97 = v40;
    v98 = v41;
    v99 = sub_10000BE18(v136, v136[3]);
    v44 = v133;
    v45 = v134;
    sub_10000BE18(v132, v133);
    sub_1000C289C(8u, v44, v45);
    sub_10013B458(v127);
    sub_10000959C(v126);
    sub_1000EEE50(v126);
    v46 = *(v43 + *(v42 + 21));
    v47 = sub_100022438(v128, v128[3]);
    v101 = &v91;
    __chkstk_darwin(v47);
    v49 = (&v91 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = sub_100022438(v127, v127[3]);
    v99 = &v91;
    __chkstk_darwin(v51);
    v53 = (&v91 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v53);
    v55 = sub_100022438(v126, v126[3]);
    v96 = &v91;
    __chkstk_darwin(v55);
    v57 = (&v91 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    v59 = *v49;
    v60 = *v53;
    v61 = *v57;
    v62 = type metadata accessor for DefaultSecureTimeKeeper();
    v125[3] = v62;
    v125[4] = &off_100384E70;
    v125[0] = v59;
    v92 = type metadata accessor for DefaultSecureChannelCrypto();
    v123 = v92;
    v124 = &off_100384C48;
    v122[0] = v60;
    v91 = type metadata accessor for DefaultSecureChannelHTTP();
    v120 = v91;
    v121 = &off_100384C58;
    v119[0] = v61;
    type metadata accessor for DefaultTimeTokenManager(0);
    v102 = swift_allocObject();
    v63 = sub_100022438(v125, v62);
    v95 = &v91;
    __chkstk_darwin(v63);
    v65 = (&v91 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65);
    v67 = sub_100022438(v122, v123);
    v94 = &v91;
    __chkstk_darwin(v67);
    v69 = (&v91 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    v71 = sub_100022438(v119, v120);
    v93 = &v91;
    __chkstk_darwin(v71);
    v73 = (&v91 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v74 + 16))(v73);
    v75 = *v65;
    v76 = *v69;
    v77 = *v73;
    v118[3] = v62;
    v118[4] = &off_100384E70;
    v118[0] = v75;
    v117[3] = v92;
    v117[4] = &off_100384C48;
    v117[0] = v76;
    v116[3] = v91;
    v116[4] = &off_100384C58;
    v116[0] = v77;
    v78 = v102;
    *(v102 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) = 0;
    *(v78 + 16) = v100;
    *(v78 + 24) = v38;
    (v97)(v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_url, v109, v104);
    sub_10000CCE4(&v129, v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist);
    sub_10000CCE4(v118, v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper);
    sub_10000CCE4(v117, v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_crypto);
    sub_10000CCE4(v116, v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_http);
    *(v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_signer) = v103;
    *(v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_resourceTimeout) = v46;
    v79 = sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
    v97 = "TimeTokenManagerMode";
    v98 = v79;
    swift_unknownObjectRetain();
    static DispatchQoS.background.getter();
    v111[13](v108, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v105);
    v144 = _swiftEmptyArrayStorage;
    v105 = sub_10014CE54(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
    v111 = &protocol conformance descriptor for [A];
    sub_10001A570(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v80 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_queue) = v80;
    v110 = sub_10000411C(0, &qword_10039D7E8, OS_dispatch_source_ptr);
    v144 = _swiftEmptyArrayStorage;
    v107 = sub_10014CE54(&qword_1003A1668, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
    v108 = v80;
    sub_100004074(&qword_1003A1670, &qword_1002C59A8);
    sub_10001A570(&qword_1003A1678, &qword_1003A1670, &qword_1002C59A8, v111);
    v81 = v112;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v82 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v113 + 8))(v81, v17);
    *(v78 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer) = v82;
    v83 = v130;
    v84 = v131;
    v85 = sub_10000BE18(&v129, v130);
    v86 = qword_1003A6DE0;
    v113 = *algn_1003A6DE8;
    v114 = v85;
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1002C1660;
    *(v87 + 32) = v100;
    v88 = sub_10014B8C8(v87);
    v90 = v89;

    (*(v84 + 40))(v86, v113, v88, v90, v83, v84);
    swift_unknownObjectRelease();
    sub_100009548(v88, v90);

    (*(v115 + 8))(v109, v104);
    sub_10000959C(v116);
    sub_10000959C(v117);
    sub_10000959C(v118);
    sub_10000959C(&v129);
    sub_10000959C(v119);
    sub_10000959C(v122);
    sub_10000959C(v125);
    sub_10000959C(v126);
    sub_10000959C(v127);
    sub_10000959C(v128);
    sub_10000959C(v132);
    sub_10000959C(v135);
    sub_10000959C(v136);
    sub_10000959C(v137);
    sub_10000959C(v140);
    sub_10000959C(v143);
  }
}

uint64_t sub_10014CE54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014CE9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014CEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014CF30()
{
  result = qword_1003A4718;
  if (!qword_1003A4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4718);
  }

  return result;
}

unint64_t sub_10014CF98()
{
  result = qword_1003A4728;
  if (!qword_1003A4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4728);
  }

  return result;
}

unint64_t sub_10014CFF0()
{
  result = qword_1003A4730;
  if (!qword_1003A4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4730);
  }

  return result;
}

unint64_t sub_10014D048()
{
  result = qword_1003A4738;
  if (!qword_1003A4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4738);
  }

  return result;
}

uint64_t sub_10014D0AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 != 300)
  {
    if (a1 == 200 && (a2 == 0x702D657275636573 && a3 == 0xEE0064616F6C7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v8 = a2;
      v9 = a3;

      v5 = 0x747265632DLL;
      v6 = 0xE500000000000000;
      goto LABEL_11;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((a2 != 7596553831663430000 || a3 != 0xEE006E6F69746164) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = a2;
  v9 = a3;

  v5 = 0x73747265632DLL;
  v6 = 0xE600000000000000;
LABEL_11:
  String.append(_:)(*&v5);

  return sub_100146900(v8, v9);
}

__n128 sub_10014D218(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10014D22C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014D274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014D2D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014D31C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10014D378(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
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

uint64_t sub_10014D478()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4740);
  sub_10000403C(v0, qword_1003A4740);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_10014D4D4(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D680 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v46 = sub_10000403C(v10, qword_1003A4740);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v45 = v2;
    v14 = v13;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v14 = 136315394;
    *(v14 + 4) = sub_100008F6C(0xD000000000000017, 0x80000001002C8E80, &v48);
    *(v14 + 12) = 2080;
    v15 = showFunction(signature:_:)(0xD000000000000015, 0x800000010034FEE0, _swiftEmptyArrayStorage);
    v43 = v5;
    v17 = v9;
    v18 = v7;
    v19 = v6;
    v20 = sub_100008F6C(v15, v16, &v48);
    v5 = v43;

    *(v14 + 14) = v20;
    v6 = v19;
    v7 = v18;
    v9 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();

    v2 = v45;
  }

  sub_10000BE18((v2 + 8), *(v2 + 32));
  sub_100043268(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10014E40C(v5);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "CertificateTimeVerifier using wall time to verify certificate", v23, 2u);
    }

    v24 = *(v2 + 32);
    v25 = *(v2 + 40);
    sub_10000BE18((v2 + 8), v24);
    (*(*(v25 + 8) + 8))(v24);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  SecCertificateNotValidBefore();
  v27 = v26;
  Date.timeIntervalSinceReferenceDate.getter();
  v29 = v27 - v28;
  if (v29 > 5.0)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    Double.write<A>(to:)();
    v30._countAndFlagsBits = 0x73646E6F63657320;
    v30._object = 0xEE00796C72616520;
    String.append(_:)(v30);
    v31 = v48;
    v32 = v49;
    v33 = 10011;
LABEL_21:
    sub_100020C74(v33, v31, v32, 0);
    swift_willThrow();
    return (*(v7 + 8))(v9, v6);
  }

  if (v29 > 0.0)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v34, v35, "Certificate valid with allowed drift: %f", v36, 0xCu);
    }
  }

  SecCertificateNotValidAfter();
  v38 = v37;
  Date.timeIntervalSinceReferenceDate.getter();
  v40 = v38 - v39;
  if (v40 < 0.0)
  {
    v33 = 10012;
LABEL_20:
    v31 = 0;
    v32 = 0;
    goto LABEL_21;
  }

  if (v40 < *v2)
  {
    v33 = 10014;
    goto LABEL_20;
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_10014DA88(unint64_t a1)
{
  v2 = v1;
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v55 - v5;
  v7 = type metadata accessor for Date();
  v56 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v57 = a1;
  if (a1 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55 = v7;
  if (v13 != 1)
  {

    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v14 = *(a1 + 32);

    v15 = v14;
  }

  v16 = v15;
  v17 = sub_10014E474();

  if (v17)
  {
    a1 = v17;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_9:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_11;
    }

LABEL_50:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_9;
  }

LABEL_11:
  trust = 0;
  type metadata accessor for SecCertificate(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19 = SecTrustCreateWithCertificates(isa, *(v2 + 40), &trust);

  if (!v19 && trust)
  {
    v20 = trust;
    v21 = Array._bridgeToObjectiveC()().super.isa;
    v22 = SecTrustSetAnchorCertificates(v20, v21);

    if (v22)
    {
      v23 = v22;
LABEL_17:
      sub_10009C9F0(v23, 0);
      swift_willThrow();

      goto LABEL_18;
    }

    v23 = SecTrustSetAnchorCertificatesOnly(v20, 0);
    if (v23)
    {
      goto LABEL_17;
    }

    sub_10000BE18(v2, *(v2 + 24));
    sub_100043268(v6);
    v26 = v55;
    v25 = v56;
    if ((*(v56 + 48))(v6, 1, v55) == 1)
    {
      sub_10014E40C(v6);
      if (qword_10039D680 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000403C(v27, qword_1003A4740);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "CertificateTrustVerifier using wall time to verify certificate", v30, 2u);
      }

      v32 = *(v2 + 24);
      v31 = *(v2 + 32);
      sub_10000BE18(v2, v32);
      (*(*(v31 + 8) + 8))(v32);
      v26 = v55;
      v33 = v56;
    }

    else
    {
      (*(v25 + 32))(v12, v6, v26);
      v33 = v25;
    }

    static Date.+ infix(_:_:)();
    v34 = Date._bridgeToObjectiveC()().super.isa;
    v36 = *(v33 + 8);
    v35 = v33 + 8;
    v37 = v10;
    v38 = v36;
    v36(v37, v26);
    v39 = v26;
    v40 = SecTrustSetVerifyDate(v20, v34);

    if (v40)
    {
      sub_10009C9F0(v40, 0);
      swift_willThrow();

      v38(v12, v39);
      goto LABEL_18;
    }

    v56 = v35;
    error = 0;
    if (SecTrustEvaluateWithError(v20, &error))
    {
      v38(v12, v55);

LABEL_46:
      goto LABEL_18;
    }

    if (!error)
    {
      v47 = 0;
      v48 = 0;
LABEL_45:
      v54 = v47;
      sub_100020C74(10997, 0, 0, v48);

      swift_willThrow();

      v38(v12, v55);
      goto LABEL_46;
    }

    v41 = v38;
    v42 = error;
    v43 = CFErrorGetDomain(v42);
    if (v43)
    {
      v44 = v43;
      if (kCFErrorDomainOSStatus)
      {
        type metadata accessor for CFString(0);
        sub_10014E63C(&qword_10039DF60, type metadata accessor for CFString, &unk_1002C0844);
        v45 = kCFErrorDomainOSStatus;
        v46 = static _CFObject.== infix(_:_:)();

        if ((v46 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_37:
        Code = CFErrorGetCode(v42);

        if (Code < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (Code <= 0x7FFFFFFF)
        {
          type metadata accessor for CFError(0);
          sub_10014E63C(&qword_1003A4758, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
          v50 = swift_allocError();
          *v51 = v42;
          v52 = v42;
          sub_10009C9F0(Code, v50);

          swift_willThrow();

          v41(v12, v55);
          goto LABEL_46;
        }

        __break(1u);
      }
    }

    else if (!kCFErrorDomainOSStatus)
    {
      goto LABEL_37;
    }

LABEL_41:

    v47 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_10014E63C(&qword_1003A4758, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
      v48 = swift_allocError();
      *v53 = v47;
    }

    else
    {
      v48 = 0;
    }

    v38 = v41;
    goto LABEL_45;
  }

  sub_10009C9F0(v19, 0);
  swift_willThrow();
LABEL_18:
  v24 = trust;
}

uint64_t sub_10014E224()
{
  sub_100004074(&qword_10039E3C0, &unk_1002C7840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C8E00;
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v0 + 32) = result;
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 40) = result;
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v0 + 48) = result;
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v0 + 56) = result;
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (result)
  {
    *(v0 + 64) = result;
    qword_1003A6E28 = v0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10014E34C(void *a1)
{
  sub_100004074(&qword_10039E3C0, &unk_1002C7840);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002C6960;
  *(v2 + 32) = a1;
  v3 = a1;
  sub_10014DA88(v2);
}

uint64_t sub_10014E40C(uint64_t a1)
{
  v2 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10014E474()
{
  AuthorityKeyID = SecCertificateGetAuthorityKeyID();
  if (!AuthorityKeyID)
  {
    return 0;
  }

  v2 = qword_10039D688;
  v12 = AuthorityKeyID;
  if (v2 != -1)
  {
    goto LABEL_19;
  }

LABEL_3:
  v3 = qword_1003A6E28;
  if (!(qword_1003A6E28 >> 62))
  {
    v4 = *((qword_1003A6E28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_5;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
LABEL_5:
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:

          return v0;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_19:
          swift_once();
          goto LABEL_3;
        }

        v6 = *(v3 + 8 * v5 + 32);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      v0 = v6;
      SubjectKeyID = SecCertificateGetSubjectKeyID();
      if (SubjectKeyID)
      {
        v9 = SubjectKeyID;
        type metadata accessor for CFData(0);
        sub_10014E63C(&qword_1003A4760, type metadata accessor for CFData, &unk_1002C1528);
        v10 = v9;
        LOBYTE(v9) = static _CFObject.== infix(_:_:)();

        if (v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      ++v5;
    }

    while (v7 != v4);
  }

LABEL_21:

  return 0;
}

uint64_t sub_10014E63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014E684()
{
  sub_100004074(&qword_1003A4908, &qword_1002C8FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C1670;
  *(v0 + 32) = SecPolicyCreateBasicX509();
  *(v0 + 40) = SecPolicyCreateRevocation(3uLL);
  sub_100004074(&qword_1003A4910, &qword_1002C8FC8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  qword_1003A6E30 = isa;
  return result;
}

void sub_10014E718(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 56, &v17);
  if (v18)
  {
    goto LABEL_10;
  }

  sub_10014F0D0(&v17);
  sub_10000CCE4(v1 + 280, v16);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  ApplePinned = SecPolicyCreateApplePinned();

  if (ApplePinned)
  {
    v7 = *(v1 + 320);
    sub_100004074(&qword_10039E3C0, &unk_1002C7840);
    if (v7 == 1)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1002C17A0;
      if (qword_10039D6A0 != -1)
      {
        swift_once();
      }

      v9 = qword_1003A6E40;
      *(v8 + 32) = qword_1003A6E40;
      v10 = (v8 + 40);
      v11 = qword_10039D698;
      v12 = v9;
      if (v11 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1002C6960;
      v10 = (v8 + 32);
      if (qword_10039D698 == -1)
      {
        goto LABEL_9;
      }
    }

    swift_once();
LABEL_9:
    v13 = qword_1003A6E38;
    *v10 = qword_1003A6E38;
    v14 = v13;
    v18 = &type metadata for CertificateTrustVerifier;
    v19 = &off_100385290;
    v15 = swift_allocObject();
    *&v17 = v15;
    sub_100029790(v16, (v15 + 2));
    v15[7] = ApplePinned;
    v15[8] = v8;
    v15[9] = 0;
    sub_10000CCE4(&v17, v16);
    swift_beginAccess();
    sub_10014F170(v16, v1 + 56);
    swift_endAccess();
LABEL_10:
    sub_100029790(&v17, a1);
    return;
  }

  __break(1u);
}

uint64_t sub_10014E988@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 96, &v22);
  if (!v23)
  {
    sub_10014F0D0(&v22);
    sub_10000CCE4(v1 + 280, v21);
    if (qword_10039D690 != -1)
    {
      swift_once();
    }

    v3 = qword_1003A6E30;
    v4 = *(v1 + 320);
    sub_100004074(&qword_10039E3C0, &unk_1002C7840);
    if (v4 == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1002C8EE0;
      v6 = qword_10039D6A0;
      v7 = v3;
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = qword_1003A6E40;
      *(v5 + 32) = qword_1003A6E40;
      v9 = qword_10039D6A8;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = qword_1003A6E48;
      *(v5 + 40) = qword_1003A6E48;
      v12 = (v5 + 48);
    }

    else
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1002C17A0;
      v13 = qword_10039D6A8;
      v14 = v3;
      if (v13 != -1)
      {
        swift_once();
      }

      v11 = qword_1003A6E48;
      *(v5 + 32) = qword_1003A6E48;
      v12 = (v5 + 40);
    }

    v15 = qword_10039D698;
    v16 = v11;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_1003A6E38;
    *v12 = qword_1003A6E38;
    v18 = v17;
    v23 = &type metadata for CertificateTrustVerifier;
    v24 = &off_100385290;
    v19 = swift_allocObject();
    *&v22 = v19;
    sub_100029790(v21, (v19 + 2));
    v19[7] = v3;
    v19[8] = v5;
    v19[9] = 0;
    sub_10000CCE4(&v22, v21);
    swift_beginAccess();
    sub_10014F170(v21, v1 + 96);
    swift_endAccess();
  }

  return sub_100029790(&v22, a1);
}

uint64_t sub_10014EC20@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 136, &v5);
  if (v6)
  {
    return sub_100029790(&v5, a1);
  }

  sub_10014F0D0(&v5);
  a1[3] = &type metadata for CertificateTimeVerifier;
  a1[4] = &off_1003852A8;
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10000CCE4(v1 + 280, v4 + 24);
  *(v4 + 16) = *(v1 + 256);
  sub_10000CCE4(a1, &v5);
  swift_beginAccess();
  sub_10014F170(&v5, v1 + 136);
  return swift_endAccess();
}

uint64_t sub_10014ED08@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 176, &v5);
  if (v6)
  {
    return sub_100029790(&v5, a1);
  }

  sub_10014F0D0(&v5);
  a1[3] = &type metadata for CertificateTimeVerifier;
  a1[4] = &off_1003852A8;
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10000CCE4(v1 + 280, v4 + 24);
  *(v4 + 16) = *(v1 + 264);
  sub_10000CCE4(a1, &v5);
  swift_beginAccess();
  sub_10014F170(&v5, v1 + 176);
  return swift_endAccess();
}

uint64_t sub_10014EDF0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 216, &v5);
  if (v6)
  {
    return sub_100029790(&v5, a1);
  }

  sub_10014F0D0(&v5);
  a1[3] = &type metadata for CertificateTimeVerifier;
  a1[4] = &off_1003852A8;
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10000CCE4(v1 + 280, v4 + 24);
  *(v4 + 16) = *(v1 + 272);
  sub_10000CCE4(a1, &v5);
  swift_beginAccess();
  sub_10014F170(&v5, v1 + 216);
  return swift_endAccess();
}

uint64_t sub_10014EED8()
{
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (result)
  {
    qword_1003A6E38 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014EF2C()
{
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (result)
  {
    qword_1003A6E40 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014EF80()
{
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (result)
  {
    qword_1003A6E48 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014EFD4()
{
  sub_10014F0D0(v0 + 16);
  sub_10014F0D0(v0 + 56);
  sub_10014F0D0(v0 + 96);
  sub_10014F0D0(v0 + 136);
  sub_10014F0D0(v0 + 176);
  sub_10014F0D0(v0 + 216);
  sub_10000959C((v0 + 280));

  return swift_deallocClassInstance();
}

uint64_t sub_10014F060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A4900, &unk_1002C8FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F0D0(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A4900, &unk_1002C8FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014F138()
{
  sub_10000959C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10014F170(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A4900, &unk_1002C8FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F1E0()
{
  sub_10000959C((v0 + 16));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10014F228(uint64_t a1)
{
  sub_1000E4518(v23);
  if (!v2)
  {
    v4 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v5 = type metadata accessor for Settings(0);
    v6 = *(v4 + v5[6]);
    v7 = *(v4 + v5[10]);
    v8 = *(v4 + v5[11]);
    v9 = *(v4 + v5[12]);
    v10 = sub_100022438(v23, v23[3]);
    __chkstk_darwin(v10);
    v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for DefaultSecureTimeKeeper();
    v22[3] = v15;
    v22[4] = &off_100384E70;
    v22[0] = v14;
    type metadata accessor for CertificateVerifierFactory();
    v1 = swift_allocObject();
    v16 = sub_100022438(v22, v15);
    __chkstk_darwin(v16);
    v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    *(v1 + 304) = v15;
    *(v1 + 312) = &off_100384E70;
    *(v1 + 280) = v20;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 320) = (v6 & 1) == 0;
    *(v1 + 256) = v7;
    *(v1 + 264) = v8;
    *(v1 + 272) = v9;
    sub_10000959C(v22);
    sub_10000959C(v23);
  }

  return v1;
}

uint64_t sub_10014F48C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v13 = *a1;
  if (v13)
  {
    v14 = sub_100150B58(&qword_1003A4A40, type metadata accessor for BAASigner, &unk_1002C99CC);
    *a3 = v13;
    a3[1] = v14;
  }

  else
  {
    v56 = v12;
    v57 = a3;
    v58 = v3;
    v15 = a2[36];
    v55 = a2[35];
    sub_10000CCE4((a2 + 2), v67);
    v16 = a2[10];
    v17 = a2[11];
    sub_10000BE18(a2 + 7, v16);
    v54 = v15;

    sub_1000C289C(5u, v16, v17);
    sub_10000BE18(a2 + 12, a2[15]);
    sub_10014ED08(v65);
    v18 = a2[17];
    sub_10000CCE4((a2 + 18), v64);
    sub_10000CCE4((a2 + 25), v63);
    v19 = a2[23];
    v20 = a2[24];
    v52 = v19;
    sub_1001500A0();
    v53 = v18;

    static DispatchQoS.background.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    (v68)[13](v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
    v68 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    if (qword_10039D6D8 != -1)
    {
      swift_once();
    }

    v21 = qword_10039D6D0;
    v50 = qword_1003A6E70;
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_1003A6E68;
    v23 = sub_100022438(v64, v64[3]);
    v51 = &v49;
    __chkstk_darwin(v23);
    v25 = (&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = sub_100022438(v63, v63[3]);
    v49 = &v49;
    __chkstk_darwin(v27);
    v29 = (&v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = *v25;
    v32 = *v29;
    v33 = type metadata accessor for SystemInfo();
    v62[3] = v33;
    v62[4] = &off_100386330;
    v62[0] = v31;
    v60 = type metadata accessor for DefaultSecureTimeKeeper();
    v61 = &off_100384E70;
    v59[0] = v32;
    type metadata accessor for BAASigner();
    v34 = swift_allocObject();
    v35 = sub_100022438(v62, v33);
    __chkstk_darwin(v35);
    v37 = (&v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = sub_100022438(v59, v60);
    __chkstk_darwin(v39);
    v41 = (&v49 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = *v37;
    v44 = *v41;

    v45 = sub_1001500EC(v55, v54, 0x190, 0x632D657275636573, 0xEE006C656E6E6168, 0, 0, 0, v67, v66, v65, v53, v43, v44, v52, v20, v68, v50, v22, 0x927C0, v34);
    sub_10000959C(v59);
    sub_10000959C(v62);
    sub_10000959C(v63);
    sub_10000959C(v64);
    *v56 = v45;
    v46 = sub_100150B58(&qword_1003A4A40, type metadata accessor for BAASigner, &unk_1002C99CC);
    v47 = v57;
    *v57 = v45;
    v47[1] = v46;
  }
}

void *sub_10014FBB4(NSObject *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = v5;
  v31 = a5;
  LODWORD(v28) = a4;
  v33 = a2;
  v32 = a1;
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v13 = v6[36];
  v30 = v6[35];
  sub_10000CCE4((v6 + 2), v40);
  v15 = v6[10];
  v14 = v6[11];
  sub_10000BE18(v6 + 7, v15);
  v29 = v13;

  v34 = a3;

  sub_1000C289C(v28, v15, v14);
  sub_10000BE18(v6 + 12, v6[15]);
  sub_10014EC20(v38);
  v16 = v6[17];
  sub_10000CCE4((v6 + 18), v37);
  sub_10000CCE4((v6 + 25), v36);
  v17 = v6[23];
  v18 = v6[24];
  v28 = v17;
  sub_1001500A0();

  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v27);
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_10039D6C0 != -1)
  {
    swift_once();
  }

  v20 = qword_10039D6B8;
  v21 = qword_1003A6E58;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1003A6E50;
  v35[3] = &type metadata for SystemRandomNumberGenerator;
  v35[4] = &protocol witness table for SystemRandomNumberGenerator;
  type metadata accessor for SESSigner();
  swift_allocObject();

  v23 = v40[7];
  result = sub_10015EFC8(v30, v29, v32, v33, v34, v31 & 1, v40, v39, v38, v16, v37, v36, v28, v18, v19, v21, v22, v35);
  if (!v23)
  {
    v25 = result;
    sub_100150B58(&qword_1003A4A38, type metadata accessor for SESSigner, &unk_1002C98D4);
    return v25;
  }

  return result;
}

void *sub_10014FFE0()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  sub_10000959C(v0 + 12);

  sub_10000959C(v0 + 18);

  sub_10000959C(v0 + 25);
  sub_10000959C(v0 + 30);

  return v0;
}

uint64_t sub_100150048()
{
  sub_10014FFE0();

  return swift_deallocClassInstance();
}

unint64_t sub_1001500A0()
{
  result = qword_10039D7D8;
  if (!qword_10039D7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10039D7D8);
  }

  return result;
}

void **sub_1001500EC(void *a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void **a21)
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v23);
  v67[3] = &type metadata for SystemRandomNumberGenerator;
  v67[4] = &protocol witness table for SystemRandomNumberGenerator;
  v66[3] = type metadata accessor for SystemInfo();
  v66[4] = &off_100386330;
  v66[0] = a13;
  v65[3] = type metadata accessor for DefaultSecureTimeKeeper();
  v65[4] = &off_100384E70;
  aBlock[5] = 0;
  v65[0] = a14;
  a21[9] = 0;
  aBlock[4] = nullsub_1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100385378;
  _Block_copy(aBlock);
  sub_100150B58(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_100150BA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  a21[46] = DispatchWorkItem.init(flags:block:)();
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v25 = a17;
  v24 = a18;
  v26 = type metadata accessor for Logger();
  sub_10000403C(v26, qword_1003A51C8);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = a5;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v30 = 136315394;
    nullsub_1();
    v31 = _typeName(_:qualified:)();
    v33 = sub_100008F6C(v31, v32, aBlock);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1002C1670;
    v57 = v28;
    v35 = a1;
    *(v34 + 32) = a1;
    *(v34 + 40) = a2;
    *(v34 + 88) = &type metadata for String;
    v36 = a4;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = a4;
    *(v34 + 72) = v29;

    v37 = showFunction(signature:_:)(0xD0000000000000C5, 0x8000000100352000, v34);
    v39 = v38;

    v40 = v37;
    v25 = a17;
    v41 = sub_100008F6C(v40, v39, aBlock);

    *(v30 + 14) = v41;
    v24 = a18;
    _os_log_impl(&_mh_execute_header, v27, v57, "%s.%s", v30, 0x16u);
    swift_arrayDestroy();

    v42 = a9;
    v43 = a10;
  }

  else
  {

    v42 = a9;
    v43 = a10;
    v36 = a4;
    v35 = a1;
  }

  a21[2] = v35;
  a21[3] = a2;
  a21[4] = a3;
  a21[5] = v36;
  a21[6] = v29;
  a21[7] = a7;
  a21[8] = a8;
  sub_10000CCE4(v42, (a21 + 10));
  sub_10000CCE4(v43, (a21 + 15));
  sub_10000CCE4(a11, (a21 + 35));
  a21[40] = a12;
  sub_10000CCE4(v66, (a21 + 41));
  sub_10000CCE4(v65, (a21 + 30));
  a21[20] = v25;
  a21[21] = v24;
  a21[22] = a19;
  a21[23] = a15;
  a21[24] = a16;
  sub_10000CCE4(v67, (a21 + 25));
  a21[47] = a20;

  v44 = v25;
  v45 = v24;
  v46 = sub_10016704C();
  if (v46)
  {
    v47 = v46;
    v48 = *(v46 + 24);
    v49 = *(v46 + 32);
    sub_1000094F4(v48, v49);
    v50 = sub_10016950C(v48, v49);
    sub_100009548(v48, v49);
    if (v50)
    {
      a21[9] = v47;

      sub_10016807C(v47);

LABEL_9:

      goto LABEL_16;
    }

    sub_100167CE8();
  }

  if ((a6 & 1) == 0)
  {
    sub_100166890();
    v55 = v54;
    sub_100167650(v54);
    sub_10016807C(v55);

    goto LABEL_9;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Not allowed to create initial identity", v53, 2u);
  }

LABEL_16:
  sub_10000959C(a11);
  sub_10000959C(v43);
  sub_10000959C(v42);
  sub_10000959C(v67);
  sub_10000959C(v65);
  sub_10000959C(v66);
  return a21;
}

uint64_t sub_100150B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100150B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100150BA0()
{
  result = qword_10039E2B0;
  if (!qword_10039E2B0)
  {
    sub_1000040BC(&qword_10039DD40, &qword_1002BFEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2B0);
  }

  return result;
}

void *sub_100150C04()
{
  sub_1000E5EA8(v74);
  if (v0)
  {

    return v1;
  }

  sub_1000E6B70(v73);
  sub_1000E650C(v72);
  sub_1000EE288();
  v4 = v3;
  sub_1000E90C8(v71);
  sub_1000E5844(v70);
  sub_1000E4518(v69);
  v5 = v75;
  v6 = v76;
  sub_10000BE18(v74, v75);
  (*(v6 + 8))(v68, 0, v5, v6);
  sub_10000CCE4(v73, v67);
  sub_10000CCE4(v72, v66);
  sub_10000CCE4(v71, v65);
  result = [*(*sub_10000BE18(v70 v70[3]) + 16)];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v9;
    v51 = v8;

    sub_10000CCE4(v69, v64);
    v10 = sub_100022438(v66, v66[3]);
    v77 = v43;
    __chkstk_darwin(v10);
    v12 = (v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = sub_100022438(v65, v65[3]);
    v49 = v43;
    __chkstk_darwin(v14);
    v16 = (v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_100022438(v64, v64[3]);
    v48 = v43;
    __chkstk_darwin(v18);
    v20 = (v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v12;
    v23 = *v16;
    v24 = *v20;
    v62 = type metadata accessor for CertificateVerifierFactory();
    v63 = &off_1003852C0;
    v25 = v62;
    v61[0] = v22;
    v45 = type metadata accessor for SystemInfo();
    v59 = v45;
    v60 = &off_100386330;
    v58[0] = v23;
    v44 = type metadata accessor for DefaultSecureTimeKeeper();
    v56 = v44;
    v57 = &off_100384E70;
    v55[0] = v24;
    v53 = &type metadata for SystemRandomNumberGenerator;
    v54 = &protocol witness table for SystemRandomNumberGenerator;
    type metadata accessor for SignerFactory();
    v1 = swift_allocObject();
    v26 = sub_100022438(v61, v25);
    v47 = v43;
    v43[0] = v25;
    __chkstk_darwin(v26);
    v28 = (v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = sub_100022438(v58, v59);
    v46 = v43;
    __chkstk_darwin(v30);
    v32 = (v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = sub_100022438(v55, v56);
    v43[1] = v43;
    __chkstk_darwin(v34);
    v36 = (v43 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36);
    v38 = *v28;
    v39 = *v32;
    v40 = *v36;
    v1[15] = v43[0];
    v1[16] = &off_1003852C0;
    v1[12] = v38;
    v1[21] = v45;
    v1[22] = &off_100386330;
    v1[18] = v39;
    v1[28] = v44;
    v1[29] = &off_100384E70;
    v1[25] = v40;
    v1[35] = 0xD000000000000017;
    v1[36] = 0x800000010034A1A0;
    sub_100004074(&qword_1003A4A48, &qword_1002C9058);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;

    sub_10000959C(v69);
    sub_10000959C(v71);
    sub_10000959C(v72);
    sub_10000959C(v73);
    *(v41 + 16) = 0;
    v1[37] = v41;
    sub_100029790(v68, (v1 + 2));
    sub_100029790(v67, (v1 + 7));
    v1[17] = v4;
    v42 = v50;
    v1[23] = v51;
    v1[24] = v42;
    sub_100029790(&v52, (v1 + 30));
    sub_10000959C(v55);
    sub_10000959C(v58);
    sub_10000959C(v61);
    sub_10000959C(v64);
    sub_10000959C(v65);
    sub_10000959C(v66);
    sub_10000959C(v70);
    sub_10000959C(v74);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10015140C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10015149C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      v11 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v5 == v8 && v6 == v9)
      {
        if (v7 != v10)
        {
          return 0;
        }
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v13 & 1) == 0 || v7 != v10)
        {
          return result;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100151598(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_1000094F4(v7, v6);
          sub_1000094F4(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_1000094F4(v7, v6);
        sub_1000094F4(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_1000094F4(v7, v6);
          sub_1000094F4(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_1000F5728(v24, v25, v26, v33);
          sub_100009548(v9, v8);
          sub_100009548(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_1000094F4(v7, v6);
        sub_1000094F4(v9, v8);
      }

      sub_1000F5728(v33, v9, v8, &v32);
      sub_100009548(v9, v8);
      sub_100009548(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1001519A4(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for SecCertificate(0);
    v4 = v11;
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v3 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        sub_100155CFC(&qword_1003A4BA8, 255, type metadata accessor for SecCertificate, &unk_1002C0940);
        v19 = static _CFObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v5)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v5 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v25 = *v20++;
      v24 = v25;
      v26 = *v21++;
      v3 = sub_100155CFC(&qword_1003A4BA8, 255, type metadata accessor for SecCertificate, &unk_1002C0940);
      v27 = v24;
      v28 = v26;
      v19 = static _CFObject.== infix(_:_:)();

      v30 = a2-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100151C68(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100151CC4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4A50);
  sub_10000403C(v0, qword_1003A4A50);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_100151D20()
{
  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C7370;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 104) = v5;
  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v6;
  *(v0 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 136) = v7;
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v8;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 160) = result;
  *(v0 + 168) = v10;
  qword_1003A6E50 = v0;
  return result;
}

void sub_100151E28()
{
  v0 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly, 0x40000001uLL, 0);
  if (v0)
  {
    v1 = v0;
    sub_100184270(&off_10037E138);
    sub_10000BD44(&unk_10037E158, &qword_1003A4B88, &qword_1002C9188);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();

    qword_1003A6E58 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100151EF8()
{
  v1 = v0;
  _StringGuts.grow(_:)(90);
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000014;
  v6._object = 0x8000000100352160;
  String.append(_:)(v6);
  type metadata accessor for SecAccessControl(0);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x6F6C4279656B202CLL;
  v7._object = 0xEB00000000203A62;
  String.append(_:)(v7);
  v8 = Data.hexString()();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x203A6661656C202CLL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10 = *(v0 + 24);
  v11 = *(v1 + 32);
  sub_1000094F4(*(v1 + 24), v11);
  v12 = Data.base64EncodedString(options:)(0);
  sub_100009548(v10, v11);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD000000000000011;
  v13._object = 0x8000000100352180;
  String.append(_:)(v13);
  v14 = *(v1 + 40);
  v15 = *(v14 + 16);
  if (v15)
  {

    sub_10004E2DC(0, v15, 0);
    v16 = (v14 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      sub_1000094F4(v17, *v16);
      v19 = Data.base64EncodedString(options:)(0);
      v20._countAndFlagsBits = 44;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      sub_100009548(v17, v18);
      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_10004E2DC((v21 > 1), v22 + 1, 1);
      }

      v16 += 2;
      _swiftEmptyArrayStorage[2] = v22 + 1;
      *&_swiftEmptyArrayStorage[2 * v22 + 4] = v19;
      --v15;
    }

    while (v15);
  }

  v23 = Array.description.getter();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._object = 0x80000001003521A0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = sub_10017233C(*(v1 + 56));
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32044;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  return 0;
}

uint64_t sub_100152274()
{
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v3 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v3 + 104) > 0 || *(v3 + 112) == 1)
  {
    [*(v3 + 88) wait];
  }

  v4 = *(v3 + 96);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v3 + 96) = v6;
  [*(v3 + 88) unlock];
  if (*(v3 + 48))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v3 + 32);
  }

  if (*(v3 + 48))
  {
    v1 = -INFINITY;
  }

  else
  {
    v1 = *(v3 + 40);
  }

  [*(v3 + 88) lock];
  v8 = *(v3 + 96);
  v5 = __OFSUB__(v8, 1);
  v9 = v8 - 1;
  if (v5)
  {
    goto LABEL_51;
  }

  *(v3 + 96) = v9;
  if (!v9)
  {
    [*(v3 + 88) broadcast];
  }

  [*(v3 + 88) unlock];
  v10 = *(v0 + 48);
  if (v7 < v10)
  {
    return 1;
  }

  v2 = *(v0 + 56);
  if (v10 >= v7 && v1 < v2)
  {
    return 1;
  }

  [*(v3 + 88) lock];
  if (*(v3 + 104) > 0 || *(v3 + 112) == 1)
  {
    do
    {
      do
      {
        [*(v3 + 88) wait];
      }

      while (*(v3 + 104) > 0);
    }

    while ((*(v3 + 112) & 1) != 0);
  }

  v12 = *(v3 + 96);
  v5 = __OFADD__(v12, 1);
  v13 = v12 + 1;
  if (v5)
  {
    goto LABEL_52;
  }

  *(v3 + 96) = v13;
  [*(v3 + 88) unlock];
  if (*(v3 + 56))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v3 + 52);
  }

  [*(v3 + 88) lock];
  v15 = *(v3 + 96);
  v5 = __OFSUB__(v15, 1);
  v16 = v15 - 1;
  if (v5)
  {
    goto LABEL_53;
  }

  *(v3 + 96) = v16;
  if (!v16)
  {
    [*(v3 + 88) broadcast];
  }

  [*(v3 + 88) unlock];
  TMGetKernelMonotonicClock();
  if (v14 < v7 || v7 >= v14 && v17 < v1)
  {
    v36 = v0;
    if (qword_10039D6B0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A4A50);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "corrupt timestamp stored in device", v21, 2u);
    }

    result = [*(v3 + 88) lock];
    v22 = *(v3 + 104);
    v5 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v3 + 104) = v23;
      while (*(v3 + 96) > 0 || *(v3 + 112) == 1)
      {
        result = [*(v3 + 88) wait];
      }

      v24 = *(v3 + 104);
      v5 = __OFSUB__(v24, 1);
      v25 = v24 - 1;
      if (!v5)
      {
        *(v3 + 104) = v25;
        *(v3 + 112) = 1;
        [*(v3 + 88) unlock];
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 48) = 1;
        sub_100173040();
        [*(v3 + 88) lock];
        *(v3 + 112) = 0;
        [*(v3 + 88) broadcast];
        [*(v3 + 88) unlock];
        goto LABEL_46;
      }
    }

    __break(1u);
    return result;
  }

LABEL_46:
  if (qword_10039D6B0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000403C(v26, qword_1003A4A50);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = sub_10017233C(v2);
    v32 = sub_100008F6C(v30, v31, &v37);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = sub_10017233C(v1);
    v35 = sub_100008F6C(v33, v34, &v37);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "certificate timestamp(%s) is less than last MFD timestamp(%s)", v29, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

void sub_10015278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  if (qword_10039D6B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A4A50);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v108 = a8;
    v19 = swift_slowAlloc();
    v105 = a4;
    v121 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = _typeName(_:qualified:)();
    v106 = a7;
    v22 = sub_100008F6C(v20, v21, &v121);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = v11;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1002C1660;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 32) = a1;
    *(v24 + 40) = a2;

    v25 = showFunction(signature:_:)(0xD00000000000004BLL, 0x8000000100352310, v24);
    v27 = v26;

    v28 = sub_100008F6C(v25, v27, &v121);
    v11 = v23;

    *(v19 + 14) = v28;
    a7 = v106;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();
    a4 = v105;

    a8 = v108;
  }

  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v121 = 0;
  v29 = [qword_1003A6EA0 canEvaluatePolicy:2 error:&v121];
  v30 = v121;
  v125 = v121;
  if (!v29)
  {
    v116 = v121;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = a7;
      v40 = swift_slowAlloc();
      v121 = v40;
      *v38 = 136315138;
      *&v124 = v30;
      sub_100004074(&qword_1003A10C0, &qword_1002C9180);
      v41 = Optional.debugDescription.getter();
      v43 = sub_100008F6C(v41, v42, &v121);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "Owner authentication error: %s", v38, 0xCu);
      sub_10000959C(v40);
      a7 = v39;
    }

    sub_100020C74(10003, 0, 0, 0);
    swift_willThrow();
    sub_100009548(a7, a8);

    v44 = type metadata accessor for DispatchTime();
    (*(*(v44 - 8) + 8))(a10, v44);
    v45 = v116;
    goto LABEL_34;
  }

  v124 = xmmword_1002C3C70;
  v31 = type metadata accessor for NFSESessionBlock();
  v32 = v30;

  v33 = a5;
  v34 = sub_100100494(a10, v31, &v124, a3, a4, v33, &v125, v11);
  if (v112)
  {
    v35 = type metadata accessor for DispatchTime();
    (*(*(v35 - 8) + 8))(a10, v35);

    sub_100009548(a7, a8);

LABEL_33:
    sub_10001A074(v124, *(&v124 + 1));
    v45 = v125;
LABEL_34:

    return;
  }

  if ((v34 & 1) == 0)
  {

    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v78._countAndFlagsBits = 0xD000000000000031;
    v78._object = 0x80000001003522D0;
    String.append(_:)(v78);
    v79._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 46;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    v81._countAndFlagsBits = showFunction(signature:_:)(0xD00000000000004BLL, 0x8000000100352310, _swiftEmptyArrayStorage);
    String.append(_:)(v81);

    sub_100020C74(10001, v121, v122, 0);
    swift_willThrow();
    sub_100009548(a7, a8);

    v82 = type metadata accessor for DispatchTime();
    (*(*(v82 - 8) + 8))(a10, v82);
    goto LABEL_33;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v104 = v33;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v121 = v113;
    *v48 = 136315138;
    v49 = _typeName(_:qualified:)();
    v51 = a7;
    v52 = a8;
    v53 = sub_100008F6C(v49, v50, &v121);

    *(v48 + 4) = v53;
    a8 = v52;
    a7 = v51;
    _os_log_impl(&_mh_execute_header, v46, v47, "SESKeyAttest from %s.init(...)", v48, 0xCu);
    sub_10000959C(v113);
  }

  v54 = *(&v124 + 1);
  if (*(&v124 + 1) >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v114 = v124;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v56 = String._bridgeToObjectiveC()();
  v107 = a7;
  v109 = a8;
  v57 = Data._bridgeToObjectiveC()().super.isa;
  v117 = v54;
  v58 = Array._bridgeToObjectiveC()().super.isa;
  v59 = Int._bridgeToObjectiveC()().super.super.isa;
  v60 = v125;
  v121 = v125;
  v61 = SESKeyAttestWithSEBAA();

  v62 = v121;
  v125 = v121;
  v63 = v121;

  if (v61)
  {
    v118 = v63;
    v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    sub_1000094F4(v114, v117);

    if (qword_10039D708 != -1)
    {
      swift_once();
    }

    v66 = static GlobalState.shared;
    [*(static GlobalState.shared + 88) lock];
    while (*(v66 + 104) > 0 || *(v66 + 112) == 1)
    {
      [*(v66 + 88) wait];
    }

    v67 = *(v66 + 96);
    v68 = __OFADD__(v67, 1);
    v69 = v67 + 1;
    if (v68)
    {
      __break(1u);
    }

    else
    {
      *(v66 + 96) = v69;
      [*(v66 + 88) unlock];
      if (*(v66 + 56))
      {
        v70 = 0;
      }

      else
      {
        v70 = *(v66 + 52);
      }

      [*(v66 + 88) lock];
      v71 = *(v66 + 96);
      v68 = __OFSUB__(v71, 1);
      v72 = v71 - 1;
      if (!v68)
      {
        *(v66 + 96) = v72;
        if (!v72)
        {
          [*(v66 + 88) broadcast];
        }

        [*(v66 + 88) unlock];
        TMGetKernelMonotonicClock();
        v74 = v73;
        v75 = swift_allocObject();
        *(v75 + 88) = 0;
        *(v75 + 72) = v117;
        *(v75 + 80) = v104;
        *(v75 + 64) = v114;
        *(v75 + 24) = v111;
        *(v75 + 32) = v65;
        *(v75 + 40) = _swiftEmptyArrayStorage;
        *(v75 + 48) = v70;
        *(v75 + 56) = v74;
        swift_beginAccess();
        v76 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
        swift_endAccess();
        sub_100009548(v107, v109);
        v77 = type metadata accessor for DispatchTime();
        (*(*(v77 - 8) + 8))(a10, v77);
        *(v75 + 16) = v76;
        sub_10001A074(v124, *(&v124 + 1));

        return;
      }
    }

    __break(1u);
  }

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v83, v84))
  {
    goto LABEL_38;
  }

  v85 = v63;
  v86 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  v121 = v87;
  *v86 = 136315138;
  v123 = v62;
  sub_100004074(&qword_1003A10C0, &qword_1002C9180);
  v88 = Optional.debugDescription.getter();
  v90 = sub_100008F6C(v88, v89, &v121);

  *(v86 + 4) = v90;
  _os_log_impl(&_mh_execute_header, v83, v84, "Get certificate from SESKeyAttest failed: %s", v86, 0xCu);
  sub_10000959C(v87);

  v63 = v85;

  v91 = a10;
  v92 = v107;
  if (*(&v124 + 1) >> 60 == 15)
  {
    __break(1u);
LABEL_38:

    v91 = a10;
    v92 = v107;
  }

  v93 = Data._bridgeToObjectiveC()().super.isa;
  v121 = 0;
  SESKeyDelete();

  v94 = v121;
  if (v121)
  {
    v95 = v121;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v119 = v63;
      v98 = swift_slowAlloc();
      v99 = v91;
      v100 = swift_slowAlloc();
      *v98 = 138412290;
      *(v98 + 4) = v95;
      *v100 = v94;
      v101 = v92;
      v102 = v95;
      _os_log_impl(&_mh_execute_header, v96, v97, "Failed to delete SES key (init): %@", v98, 0xCu);
      sub_10000BD44(v100, &unk_10039E220, &qword_1002C3D60);
      v91 = v99;

      v63 = v119;

      v95 = v96;
      v96 = v102;
      v92 = v101;
    }
  }

  sub_100020C74(10002, 0, 0, 0);
  swift_willThrow();
  sub_100009548(v92, v109);

  v103 = type metadata accessor for DispatchTime();
  (*(*(v103 - 8) + 8))(v91, v103);

  sub_10001A074(v124, *(&v124 + 1));
}

uint64_t sub_100153494(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, id *a6, uint64_t a7)
{
  if (qword_10039D6B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A4A50);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v63 = v12;
    *v11 = 136315138;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, &v63);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "SESKeyCreate from %s.init(...)", v11, 0xCu);
    sub_10000959C(v12);
  }

  v16 = String._bridgeToObjectiveC()();
  v63 = *a6;
  v17 = SESKeyCreateWithSession();

  v18 = v63;
  v19 = *a6;
  *a6 = v63;
  v20 = v18;

  if (v17)
  {
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  v24 = *a2;
  v25 = a2[1];
  *a2 = v21;
  a2[1] = v23;
  result = sub_10001A074(v24, v25);
  if (a2[1] >> 60 == 15)
  {
    v27 = *a6;
    if (*a6)
    {
      v28 = v27;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v27;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "Error from SESKeyCreate: %@", v31, 0xCu);
        sub_10000BD44(v32, &unk_10039E220, &qword_1002C3D60);

        v28 = v29;
        v29 = v33;
      }
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Attempt to restore SE-SEP pairing and retry SESKeyCreate", v36, 2u);
    }

    type metadata accessor for StatusInspector();
    swift_initStackObject();
    v37 = sub_10009100C(a1);
    v38 = a1;
    if ((sub_100091684() & 1) == 0 && *(v37 + 34) == 1)
    {
      sub_100020C74(10018, 0, 0, 0);
LABEL_27:
      swift_willThrow();
    }

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v63 = v42;
      *v41 = 136315138;
      v43 = _typeName(_:qualified:)();
      v45 = sub_100008F6C(v43, v44, &v63);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "SESKeyCreate from %s.init(...)", v41, 0xCu);
      sub_10000959C(v42);
    }

    v46 = String._bridgeToObjectiveC()();
    v63 = *a6;
    v47 = SESKeyCreateWithSession();

    v48 = v63;
    v49 = *a6;
    *a6 = v63;
    v50 = v48;

    if (v47)
    {
      v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0xF000000000000000;
    }

    v54 = *a2;
    v55 = a2[1];
    *a2 = v51;
    a2[1] = v53;
    sub_10001A074(v54, v55);
    if (a2[1] >> 60 == 15)
    {
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "SESKeyCreate returned nil on second try", v58, 2u);
      }

      v59 = *a6;
      v60 = *a6;
      sub_100020C74(10001, 0, 0, v59);

      goto LABEL_27;
    }
  }

  return result;
}

uint64_t sub_100153AF0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  if (qword_10039D6B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A4A50);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *&v29 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, &v29);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = showFunction(signature:_:)(0xD000000000000014, 0x80000001003522B0, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, &v29);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
    v5 = v4;
  }

  else
  {
  }

  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v19 = *(v6 + 80);
  v20 = qword_1003A6EA0;
  sub_1001849B0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v29 = 0;
  v22 = [v20 evaluateAccessControl:v19 operation:3 options:isa error:&v29];

  if (!v22)
  {
    v27 = v29;
    a2 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    sub_100020C74(10003, 0x617461446E676973, 0xE800000000000000, a2);

    swift_willThrow();

    return a2;
  }

  v23 = v29;

  v29 = xmmword_1002C3C70;

  sub_1000094F4(a1, a2);
  v24 = sub_100100A5C(a3, v6, a1, a2, &v29);
  sub_100009548(a1, a2);

  if (v5)
  {
LABEL_15:
    sub_10001A074(v29, *(&v29 + 1));
    return a2;
  }

  if ((v24 & 1) == 0)
  {
    sub_100020C74(10999, 0xD00000000000002BLL, 0x8000000100352280, 0);
    swift_willThrow();
    goto LABEL_15;
  }

  v26 = *(&v29 + 1);
  if (*(&v29 + 1) >> 60 != 15)
  {
    a2 = v29;
    sub_1000094F4(v29, *(&v29 + 1));
    sub_10001A074(a2, v26);
    return a2;
  }

  __break(1u);
  return result;
}

void sub_100153F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = 0;
  v6 = [objc_opt_self() embeddedSecureElementWithError:&v31];
  if (v6)
  {
    v7 = v6;
    v8 = v31;
    v9 = [v7 serialNumber];

    if (v9)
    {
      v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v12 = qword_10039D728;
      v13 = kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = qword_1003A6EA0;
      v15 = [v14 externalizedContext];
      if (v15)
      {
        v16 = v15;

        v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100009548(v17, v19);
        v31 = 0;
        v21 = SESKeySignDataWithSession();

        v22 = v31;
        v23 = v22;
        if (v21)
        {
          v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = *a5;
          v28 = a5[1];
          *a5 = v24;
          a5[1] = v26;
          sub_10001A074(v27, v28);
        }

        else
        {
          v30 = v22;
          sub_100020C74(10004, 0x695379654B534553, 0xEE00617461446E67, v23);

          swift_willThrow();
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_100020C74(10004, 0xD000000000000016, 0x8000000100352240, 0);
      swift_willThrow();
    }
  }

  else
  {
    v29 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100154200(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  if (qword_10039D6B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A4A50);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *&v29 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, &v29);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = showFunction(signature:_:)(0xD000000000000016, 0x8000000100352220, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, &v29);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
    v5 = v4;
  }

  else
  {
  }

  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v19 = *(v6 + 80);
  v20 = qword_1003A6EA0;
  sub_1001849B0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v29 = 0;
  v22 = [v20 evaluateAccessControl:v19 operation:3 options:isa error:&v29];

  if (!v22)
  {
    v27 = v29;
    a2 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    sub_100020C74(10003, 0x656769446E676973, 0xEA00000000007473, a2);

    swift_willThrow();

    return a2;
  }

  v23 = v29;

  v29 = xmmword_1002C3C70;

  sub_1000094F4(a1, a2);
  v24 = sub_100100A9C(a3, v6, a1, a2, &v29);
  sub_100009548(a1, a2);

  if (v5)
  {
LABEL_15:
    sub_10001A074(v29, *(&v29 + 1));
    return a2;
  }

  if ((v24 & 1) == 0)
  {
    sub_100020C74(10999, 0xD000000000000038, 0x80000001003521E0, 0);
    swift_willThrow();
    goto LABEL_15;
  }

  v26 = *(&v29 + 1);
  if (*(&v29 + 1) >> 60 != 15)
  {
    a2 = v29;
    sub_1000094F4(v29, *(&v29 + 1));
    sub_10001A074(a2, v26);
    return a2;
  }

  __break(1u);
  return result;
}

void sub_100154648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = 0;
  v6 = [objc_opt_self() embeddedSecureElementWithError:&v31];
  if (v6)
  {
    v7 = v6;
    v8 = v31;
    v9 = [v7 serialNumber];

    if (v9)
    {
      v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v12 = qword_10039D728;
      v13 = kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = qword_1003A6EA0;
      v15 = [v14 externalizedContext];
      if (v15)
      {
        v16 = v15;

        v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100009548(v17, v19);
        v31 = 0;
        v21 = SESKeySignPrecomputedDigestWithSession();

        v22 = v31;
        if (v21)
        {
          v23 = v31;
          v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = *a5;
          v28 = a5[1];
          *a5 = v24;
          a5[1] = v26;
          sub_10001A074(v27, v28);
        }

        else
        {
          v30 = v31;
          sub_100020C74(10004, 0xD00000000000001BLL, 0x8000000100352260, v22);

          swift_willThrow();
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_100020C74(10004, 0xD000000000000016, 0x8000000100352240, 0);
      swift_willThrow();
    }
  }

  else
  {
    v29 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100154914()
{
  v1 = v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  SESKeyDelete();

  *(v1 + 88) = 1;
}

uint64_t sub_100154ADC()
{
  v1 = 0x6F43737365636361;
  v2 = 0x6369666974726563;
  if (*v0 != 2)
  {
    v2 = 0x73656D695479656BLL;
  }

  if (*v0)
  {
    v1 = 0x626F6C4279656BLL;
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

uint64_t sub_100154B74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100155200(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100154B9C(uint64_t a1)
{
  v2 = sub_100155AE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100154BD8(uint64_t a1)
{
  v2 = sub_100155AE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100154C14(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A4B78, &unk_1002C9170);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_100155AE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  result = SecAccessControlCopyData();
  if (result)
  {
    v10 = result;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v17 = v11;
    v18 = v13;
    v19 = 0;
    sub_1001002CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      v14 = *(v3 + 72);
      v17 = *(v3 + 64);
      v18 = v14;
      v19 = 1;
      sub_1000094F4(v17, v14);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100009548(v17, v18);
      v15 = *(v3 + 32);
      v17 = *(v3 + 24);
      v18 = v15;
      v19 = 2;
      sub_1000094F4(v17, v15);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100009548(v17, v18);
      v16 = *(v3 + 56);
      LODWORD(v17) = *(v3 + 48);
      v18 = v16;
      v19 = 3;
      sub_100155B90();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v6 + 8))(v8, v5);
    return sub_100009548(v11, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100154EAC()
{
  sub_100009548(v0[3], v0[4]);

  sub_100009548(v0[8], v0[9]);
  v1 = v0[10];
}

uint64_t sub_100154EEC()
{
  v1 = v0[3];
  v2 = v0[4];

  sub_100009548(v1, v2);

  sub_100009548(v0[8], v0[9]);
  v3 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_100154F88()
{
  v1 = *(*v0 + 24);
  sub_1000094F4(v1, *(*v0 + 32));
  return v1;
}

void sub_100154FFC(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_100155374(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_10015504C(void *a1, uint64_t a2)
{
  a1[1] = sub_100155CFC(&qword_1003A4B48, a2, type metadata accessor for SESSigningIdentity, &unk_1002C90CC);
  a1[2] = sub_100155CFC(&qword_1003A4B50, v3, type metadata accessor for SESSigningIdentity, &unk_1002C90A4);
  result = sub_100155CFC(&qword_1003A4B58, v4, type metadata accessor for SESSigningIdentity, &unk_1002C911C);
  a1[3] = result;
  return result;
}

BOOL sub_1001550F8(uint64_t a1, uint64_t a2)
{
  if (sub_10017688C(*(a1 + 64), *(a1 + 72), *(a2 + 64), *(a2 + 72)) && (v4 = *(a1 + 24), v5 = *(a1 + 32), v6 = *(a2 + 24), v7 = *(a2 + 32), sub_1000094F4(v4, v5), sub_1000094F4(v6, v7), v8 = sub_10017688C(v4, v5, v6, v7), sub_100009548(v6, v7), sub_100009548(v4, v5), v8) && (v9 = *(a1 + 40), v10 = *(a2 + 40), , , v11 = sub_100151598(v9, v10), , , (v11 & 1) != 0) && *(a1 + 48) == *(a2 + 48))
  {
    return *(a1 + 56) == *(a2 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100155200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43737365636361 && a2 == 0xED00006C6F72746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626F6C4279656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369666974726563 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656D695479656BLL && a2 == 0xEC000000706D6174)
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

void sub_100155374(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DecodingError();
  v47 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v40 - v7;
  v8 = sub_100004074(&qword_1003A4B60, &unk_1002C9160);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  sub_10000BE18(a1, a1[3]);
  sub_100155AE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v45 = v9;
    LOBYTE(v54) = 0;
    sub_100100278();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v50;
    v56 = 0;
    v44 = v49;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = SecAccessControlCreateFromData();

    if (v19)
    {
      v43 = v19;
      LOBYTE(v54) = 3;
      sub_100155B3C();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v23 = v45;
      if (v51)
      {
        if (qword_10039D708 != -1)
        {
          swift_once();
        }

        v24 = static GlobalState.shared;
        [*(static GlobalState.shared + 88) lock];
        while (*(v24 + 104) > 0 || *(v24 + 112) == 1)
        {
          [*(v24 + 88) wait];
        }

        v25 = *(v24 + 96);
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          __break(1u);
        }

        else
        {
          *(v24 + 96) = v27;
          [*(v24 + 88) unlock];
          v28 = *(v24 + 52);
          if (*(v24 + 56))
          {
            v28 = 0;
          }

          v42 = v28;
          [*(v24 + 88) lock];
          v29 = *(v24 + 96);
          v26 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (!v26)
          {
            *(v24 + 96) = v30;
            if (!v30)
            {
              [*(v24 + 88) broadcast];
            }

            [*(v24 + 88) unlock];
            TMGetKernelMonotonicClock();
            v32 = v31;
            v23 = v45;
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      v32 = v50;
      v42 = v49;
LABEL_25:
      LOBYTE(v49) = 1;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v41 = v54;
      v45 = v55;
      LOBYTE(v49) = 2;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v33 = v17;
      v34 = v23;
      v35 = v52;
      v36 = v53;
      type metadata accessor for SESSigningIdentity();
      v37 = swift_allocObject();
      *(v37 + 88) = 0;
      v38 = v43;
      *(v37 + 64) = v41;
      *(v37 + 72) = v45;
      *(v37 + 80) = v38;
      *(v37 + 24) = v35;
      *(v37 + 32) = v36;
      *(v37 + 40) = _swiftEmptyArrayStorage;
      *(v37 + 48) = v42;
      *(v37 + 56) = v32;
      swift_beginAccess();
      v39 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
      swift_endAccess();
      sub_100009548(v44, v33);
      (*(v34 + 8))(v11, v8);
      *(v37 + 16) = v39;
      sub_10000959C(a1);
      return;
    }

    v20 = v56;
    if (!v56)
    {
      __break(1u);
      return;
    }

    type metadata accessor for CFError(0);
    sub_100155CFC(&qword_1003A4758, 255, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    v21 = swift_allocError();
    *v22 = v20;
    v2 = sub_100020C74(10005, 0x6320737365636361, 0xEE006C6F72746E6FLL, v21);

    swift_willThrow();
    sub_100009548(v44, v17);
    (*(v45 + 8))(v11, v8);
  }

  v12 = v48;
  v49 = v2;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  if (swift_dynamicCast())
  {

    v14 = v46;
    v13 = v47;
    (*(v47 + 32))(v46, v12, v4);
    v15 = swift_allocError();
    (*(v13 + 16))(v16, v14, v4);
    sub_100020C74(10005, 0xD000000000000010, 0x80000001003521C0, v15);

    swift_willThrow();
    (*(v13 + 8))(v14, v4);
  }

  sub_10000959C(a1);
}

unint64_t sub_100155AE8()
{
  result = qword_1003A4B68;
  if (!qword_1003A4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B68);
  }

  return result;
}

unint64_t sub_100155B3C()
{
  result = qword_1003A4B70;
  if (!qword_1003A4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B70);
  }

  return result;
}

unint64_t sub_100155B90()
{
  result = qword_1003A4B80;
  if (!qword_1003A4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B80);
  }

  return result;
}

unint64_t sub_100155BF8()
{
  result = qword_1003A4B90;
  if (!qword_1003A4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B90);
  }

  return result;
}

unint64_t sub_100155C50()
{
  result = qword_1003A4B98;
  if (!qword_1003A4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B98);
  }

  return result;
}

unint64_t sub_100155CA8()
{
  result = qword_1003A4BA0;
  if (!qword_1003A4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4BA0);
  }

  return result;
}

uint64_t sub_100155CFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100155D44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v21 = a4;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v20[-v15];
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v18 = (*(a6 + 32))(a1, a2, a3, v21, v16, v22, a6);
  v17(v16, v10);
  return v18;
}

uint64_t sub_100155ECC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v21 = a4;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v20[-v15];
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v18 = (*(a6 + 40))(a1, a2, a3, v21, v16, v22, a6);
  v17(v16, v10);
  return v18;
}

CFStringRef sub_100156088(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_15:
      type metadata accessor for CFString(0);
      v10 = Array.description.getter();

      return v10;
    }

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        result = CFCopyDescription(v6);
        if (!result)
        {
          goto LABEL_20;
        }

        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
        if (v5 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v7 = (v1 + 32);
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (v8)
      {
        v9 = *v7;
        result = CFCopyDescription(v9);
        if (!result)
        {
          goto LABEL_20;
        }

        v1 = result;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v8;
        ++v7;
        if (!--i)
        {
          goto LABEL_15;
        }
      }
    }

    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_10015623C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_15:
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    v19 = BidirectionalCollection<>.joined(separator:)();

    return v19;
  }

  result = sub_10004E2DC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = SecCertificateRef.pemRepresentation.getter();
        v7 = v6;
        swift_unknownObjectRelease();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_10004E2DC((v8 > 1), v9 + 1, 1);
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[2 * v9];
        v10[4] = v5;
        v10[5] = v7;
      }

      while (v2 != v4);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *v11;
        v13 = SecCertificateRef.pemRepresentation.getter();
        v15 = v14;

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_10004E2DC((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v13;
        v18[5] = v15;
        ++v11;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100156440()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4C50);
  sub_10000403C(v0, qword_1003A4C50);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_10015649C()
{
  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C1680;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 96) = result;
  *(v0 + 104) = v6;
  qword_1003A6E68 = v0;
  return result;
}

void sub_100156554()
{
  v0 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, 0);
  if (v0)
  {
    v1 = v0;
    sub_100184270(&off_10037EF50);
    sub_10000BD44(&unk_10037EF70, &qword_1003A4B88, &qword_1002C9188);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();

    qword_1003A6E70 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100156620()
{
  v1 = v0;
  _StringGuts.grow(_:)(89);
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 60;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0xD000000000000014;
  v5._object = 0x8000000100352160;
  String.append(_:)(v5);
  type metadata accessor for SecAccessControl(0);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 0x73614879656B202CLL;
  v6._object = 0xEB00000000203A68;
  String.append(_:)(v6);
  type metadata accessor for SecKey(0);
  sub_100159E44(&qword_1003A4D98, type metadata accessor for SecKey, &unk_1002C1474);
  _CFObject.hashValue.getter();
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x203A6661656C202CLL;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  v9 = v0[3];
  v10 = v1[4];
  sub_1000094F4(v1[3], v10);
  v11 = Data.base64EncodedString(options:)(0);
  sub_100009548(v9, v10);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000011;
  v12._object = 0x8000000100352180;
  String.append(_:)(v12);
  v13 = v1[5];
  v14 = *(v13 + 16);
  if (v14)
  {

    sub_10004E2DC(0, v14, 0);
    v15 = (v13 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      sub_1000094F4(v16, *v15);
      v18 = Data.base64EncodedString(options:)(0);
      v19._countAndFlagsBits = 44;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      sub_100009548(v16, v17);
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10004E2DC((v20 > 1), v21 + 1, 1);
      }

      v15 += 2;
      _swiftEmptyArrayStorage[2] = v21 + 1;
      *&_swiftEmptyArrayStorage[2 * v21 + 4] = v18;
      --v14;
    }

    while (v14);
  }

  v22 = Array.description.getter();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._object = 0x80000001003521A0;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = sub_10017233C(*(v1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp + 8));
  String.append(_:)(v27);

  v28._countAndFlagsBits = 32044;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  return 0;
}

NSObject *sub_100156A0C(uint64_t a1, int a2, void **a3, NSObject *a4, uint64_t a5, unint64_t a6, uint64_t a7, double a8)
{
  v154 = a3;
  v149 = a7;
  v159 = a5;
  v160 = a6;
  v146 = a2;
  v12 = type metadata accessor for UUID();
  v156 = *(v12 - 8);
  v157 = v12;
  __chkstk_darwin(v12);
  v148 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v152 = *(v14 - 1);
  v153 = v14;
  v15 = __chkstk_darwin(v14);
  v150 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v151 = &v135 - v17;
  if (qword_10039D6C8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000403C(v18, qword_1003A4C50);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = os_log_type_enabled(v20, v21);
  v147 = v8;
  v158 = a4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100008F6C(v24, v25, v162);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = showFunction(signature:_:)(0xD00000000000003ALL, 0x8000000100352450, _swiftEmptyArrayStorage);
    v29 = sub_100008F6C(v27, v28, v162);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v162[0] = 0;
  v30 = [qword_1003A6EA0 canEvaluatePolicy:2 error:v162];
  v31 = v162[0];
  v32 = v162[0];
  v33 = v32;
  if (v30)
  {
    v145 = v32;
    v34 = DeviceIdentityUCRTAttestationSupported();
    if ((v34 & 1) == 0)
    {
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "UCRT not supported, switching to SCRT", v37, 2u);
      }
    }

    v140 = v19;
    v38 = v149 / 60;
    sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C9390;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v40;
    v149 = a1;
    v41 = UUID.uuidString.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v41;
    *(inited + 56) = v42;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v43;
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = 0xD000000000000017;
    *(inited + 104) = 0x800000010034A1A0;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v44;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 0;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v45;
    *(inited + 216) = &type metadata for Double;
    *(inited + 192) = 0x401C000000000000;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v46;
    *(inited + 264) = &type metadata for Int;
    *(inited + 240) = v38;
    *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 280) = v47;
    *(inited + 312) = &type metadata for Bool;
    *(inited + 288) = v34 ^ 1;
    *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 328) = v48;
    *(inited + 360) = &type metadata for Data;
    v50 = v159;
    v49 = v160;
    *(inited + 336) = v159;
    *(inited + 344) = v49;
    *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 376) = v51;
    type metadata accessor for SecAccessControl(0);
    *(inited + 408) = v52;
    v53 = v154;
    *(inited + 384) = v154;
    *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 424) = v54;
    *(inited + 456) = &type metadata for Int;
    *(inited + 432) = 1;
    *(inited + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 472) = v55;
    *(inited + 504) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    *(inited + 480) = v158;
    sub_1000094F4(v50, v49);
    v142 = v53;

    v56 = sub_100182BA0(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
    swift_arrayDestroy();
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    v139 = (v57 + 16);
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    v138 = (v58 + 16);
    v59 = swift_allocObject();
    v59[2] = 0;
    v137 = v59 + 2;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    v136 = (v60 + 16);
    v61 = dispatch_semaphore_create(0);
    v141 = v56;
    sub_100157C18(v56);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v63 = swift_allocObject();
    v63[2] = v61;
    v63[3] = v57;
    v63[4] = v58;
    v63[5] = v59;
    v64 = v155;
    v63[6] = v60;
    v63[7] = v64;
    v162[4] = sub_100159E14;
    v162[5] = v63;
    v162[0] = _NSConcreteStackBlock;
    v162[1] = 1107296256;
    v162[2] = sub_1001584EC;
    v162[3] = &unk_1003855E0;
    v65 = _Block_copy(v162);
    v66 = v61;
    v67 = v60;
    v68 = v66;
    v143 = v57;

    v144 = v58;

    v154 = v59;
    v69 = v68;

    DeviceIdentityIssueClientCertificateWithCompletion();
    _Block_release(v65);

    v70 = v150;
    static DispatchTime.now()();
    v71 = v151;
    + infix(_:_:)();
    v72 = v153;
    v73 = *(v152 + 1);
    v73(v70, v153);
    OS_dispatch_semaphore.wait(timeout:)();
    v73(v71, v72);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      v19 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v19, v74, "Time out requesting BAA certificate.", v75, 2u);
      }

      sub_100020C74(10002, 0, 0, 0);
      swift_willThrow();

      sub_100009548(v159, v160);
      (*(v156 + 8))(v149, v157);
LABEL_31:

LABEL_32:

      return v19;
    }

    v19 = v158;
    v84 = v139;
    swift_beginAccess();
    if (*v84)
    {
      swift_errorRetain();

      swift_willThrow();

      sub_100009548(v159, v160);
      (*(v156 + 8))(v149, v157);

      return v19;
    }

    v85 = v138;
    swift_beginAccess();
    v86 = *v85;
    v87 = v149;
    if (!v86 || (v88 = v137, swift_beginAccess(), (v89 = *v88) == 0) || (v90 = v136, swift_beginAccess(), (v91 = *v90) == 0))
    {
      v19 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&_mh_execute_header, v19, v105, "Unexpected nil value after receiving BAA certificate", v106, 2u);
      }

      sub_100020C74(10002, 0, 0, 0);
      swift_willThrow();

      sub_100009548(v159, v160);
      (*(v156 + 8))(v87, v157);
      goto LABEL_31;
    }

    v158 = v67;
    v92 = v91;
    v93 = v89;
    v94 = v92;
    v95 = v93;
    v153 = v86;
    v96 = SecCertificateCopyData(v95);
    v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = SecCertificateCopyData(v94);
    v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = v99 >> 62;
    v152 = v97;
    if ((v99 >> 62) > 1)
    {
      if (v104 != 2)
      {
        goto LABEL_46;
      }

      v108 = *(v97 + 16);
      v109 = *(v97 + 24);
    }

    else
    {
      if (!v104)
      {
        if ((v99 & 0xFF000000000000) == 0)
        {
          goto LABEL_46;
        }

LABEL_38:
        v110 = v103 >> 62;
        if ((v103 >> 62) > 1)
        {
          if (v110 != 2)
          {
            goto LABEL_46;
          }

          v111 = *(v101 + 16);
          v112 = *(v101 + 24);
        }

        else
        {
          if (!v110)
          {
            if ((v103 & 0xFF000000000000) == 0)
            {
LABEL_46:
              v19 = Logger.logObject.getter();
              v113 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v19, v113))
              {
                v114 = swift_slowAlloc();
                v155 = v99;
                *v114 = 0;
                _os_log_impl(&_mh_execute_header, v19, v113, "Unexpected empty data after copying BAA certificate data", v114, 2u);
                v69 = v68;
                v99 = v155;
LABEL_48:

                goto LABEL_49;
              }

              goto LABEL_49;
            }

LABEL_51:
            type metadata accessor for SecCertificate(0);
            v115 = static SecCertificateRef.parse(derRepresentation:)();
            if (v115)
            {
              v150 = v115;
              v151 = v68;
              v116 = SecCertificateRef.publicKey.getter();
              if (v116)
              {
                v117 = v116;
                v118 = SecKeyRef.externalRepresentation.getter();
                v120 = v119;

                if (v120 >> 60 != 15)
                {
                  v125 = Data.sha256Digest.getter();
                  v138 = v126;
                  v139 = v125;
                  v141 = v120;
                  v137 = *(v156 + 16);
                  (v137)(v148, v149, v157);
                  sub_100004074(&qword_10039FE58, &qword_1002C96F0);
                  v127 = swift_allocObject();
                  v140 = v118;
                  v128 = v127;
                  *(v127 + 16) = xmmword_1002C1660;
                  *(v127 + 32) = v101;
                  *(v127 + 40) = v103;
                  v19 = swift_allocObject();
                  *(&v19->isa + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_accessControl) = v142;
                  (v137)(v19 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_uuid, v148, v157);
                  *(&v19->isa + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_key) = v153;
                  v19[3].isa = v152;
                  v19[4].isa = v99;
                  v19[5].isa = v128;
                  v129 = (v19 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp);
                  *v129 = v146;
                  v129[1] = a8;
                  v130 = (&v19->isa + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest);
                  v131 = v138;
                  *v130 = v139;
                  v130[1] = v131;
                  swift_beginAccess();
                  sub_1000094F4(v101, v103);
                  v132 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
                  swift_endAccess();

                  sub_10001A074(v140, v141);
                  sub_100009548(v101, v103);

                  sub_100009548(v159, v160);
                  v133 = v157;
                  v134 = *(v156 + 8);
                  v134(v149, v157);
                  v134(v148, v133);

                  v19[2].isa = v132;
                  return v19;
                }
              }

              v19 = Logger.logObject.getter();
              v121 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v19, v121))
              {
                v122 = swift_slowAlloc();
                *v122 = 0;
                _os_log_impl(&_mh_execute_header, v19, v121, "Could not get public key from SecCertificate", v122, 2u);
              }

              sub_100020C74(10001, 0, 0, 0);
              swift_willThrow();

              sub_100009548(v152, v99);
              sub_100009548(v101, v103);

              goto LABEL_50;
            }

            v19 = Logger.logObject.getter();
            v123 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v19, v123))
            {
              v124 = swift_slowAlloc();
              v151 = v68;
              *v124 = 0;
              _os_log_impl(&_mh_execute_header, v19, v123, "Could not create SecCertificate from derRepresentation", v124, 2u);
              v69 = v151;
              goto LABEL_48;
            }

LABEL_49:

            sub_100020C74(10002, 0, 0, 0);
            swift_willThrow();

            sub_100009548(v152, v99);
            sub_100009548(v101, v103);

LABEL_50:
            sub_100009548(v159, v160);
            (*(v156 + 8))(v149, v157);

            goto LABEL_32;
          }

          v111 = v101;
          v112 = v101 >> 32;
        }

        if (v111 == v112)
        {
          goto LABEL_46;
        }

        goto LABEL_51;
      }

      v108 = v97;
      v109 = v97 >> 32;
    }

    if (v108 == v109)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = v33;
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v162[0] = v80;
    *v79 = 136315138;
    v161[0] = v31;
    sub_100004074(&qword_1003A10C0, &qword_1002C9180);
    v81 = Optional.debugDescription.getter();
    v19 = v82;
    v83 = sub_100008F6C(v81, v82, v162);

    *(v79 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v76, v77, "Owner authentication error: %s", v79, 0xCu);
    sub_10000959C(v80);

    v33 = v78;
  }

  sub_100020C74(10003, 0xD000000000000019, 0x8000000100352430, 0);
  swift_willThrow();

  sub_100009548(v159, v160);
  (*(v156 + 8))(a1, v157);

  return v19;
}

void sub_100157C18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004074(&qword_1003A4DA8, &unk_1002C94B0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10000BDA4(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100019D3C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100019D3C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100019D3C(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100019D3C(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100157EE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    if (qword_10039D6C8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A4C50);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v51[0] = v16;
      *v14 = 136315394;
      v17 = _typeName(_:qualified:)();
      v19 = sub_100008F6C(v17, v18, v51);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s.init(...): Error getting DeviceIdentity certificate: %@", v14, 0x16u);
      sub_10000BD44(v15, &unk_10039E220, &qword_1002C3D60);

      sub_10000959C(v16);
    }

    v21 = sub_100020C74(10001, 0, 0, 0);
    swift_beginAccess();
    *(a5 + 16) = v21;
    goto LABEL_27;
  }

  if (a1)
  {
    if (a2)
    {
      v23 = *(a2 + 16);
      if (v23 == 2)
      {
        swift_beginAccess();
        v27 = *(a6 + 16);
        *(a6 + 16) = a1;
        v28 = a1;

        sub_10000BDA4(a2 + 32, v51);
        type metadata accessor for SecCertificate(0);
        swift_dynamicCast();
        swift_beginAccess();
        v29 = *(a7 + 16);
        *(a7 + 16) = v49;

        sub_10000BDA4(a2 + 64, v51);
        swift_dynamicCast();
        swift_beginAccess();
        v30 = *(a8 + 16);
        *(a8 + 16) = v50;

        OS_dispatch_semaphore.signal()();
        return spr_releaseCFObject();
      }

      v42 = qword_10039D6C8;
      v37 = a1;
      if (v42 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000403C(v43, qword_1003A4C50);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        *(v46 + 4) = v23;

        _os_log_impl(&_mh_execute_header, v44, v45, "BAA returned incorrect number of certificate references. Expected: 2, received: %ld", v46, 0xCu);
      }

      else
      {
      }
    }

    else
    {
      v36 = qword_10039D6C8;
      v37 = a1;
      if (v36 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000403C(v38, qword_1003A4C50);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to create certificate references", v41, 2u);
      }
    }

    v47 = sub_100020C74(10002, 0, 0, 0);

    swift_beginAccess();
    *(a5 + 16) = v47;
LABEL_27:

    OS_dispatch_semaphore.signal()();
    return spr_releaseCFObject();
  }

  if (qword_10039D6C8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000403C(v31, qword_1003A4C50);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed to create key reference", v34, 2u);
  }

  v35 = sub_100020C74(10001, 0, 0, 0);
  swift_beginAccess();
  *(a5 + 16) = v35;

  OS_dispatch_semaphore.signal()();
  return spr_releaseCFObject();
}

uint64_t sub_1001584EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

uint64_t sub_100158674@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X3>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v10 = *(a1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_accessControl);
  v11 = qword_1003A6EA0;
  sub_1001849B0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = 0;
  v13 = [v11 evaluateAccessControl:v10 operation:3 options:isa error:&v24];

  if (!v13)
  {
    v18 = v24;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v17 = sub_100020C74(10003, a6, a7, v19);

    swift_willThrow();
    goto LABEL_7;
  }

  v14 = v24;

  result = SecKeyRef.createSignature(algorithm:data:)();
  if (v8)
  {
    swift_errorRetain();
    v17 = sub_100020C74(10004, 0, 0, v8);

    swift_willThrow();
LABEL_7:

    *a4 = v17;
    return result;
  }

  *a8 = result;
  a8[1] = v16;
  return result;
}

void sub_1001588A0()
{
  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v5 = sub_100182BA0(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
  swift_arrayDestroy();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_100157C18(v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = sub_100159D64;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001584EC;
  aBlock[3] = &unk_100385540;
  v8 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v8);

  swift_beginAccess();
  if (*(v6 + 16))
  {
    if (qword_10039D6C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A4C50);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_100004074(&qword_1003A4DA0, &qword_1002C94A8);
      v14 = String.init<A>(describing:)();
      v16 = sub_100008F6C(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to delete BAA key and certificate: %s", v12, 0xCu);
      sub_10000959C(v13);
    }
  }

  else
  {
  }
}

uint64_t sub_100158C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a4 + 16) = a3;
  swift_errorRetain();
}

uint64_t sub_100158C6C()
{
  if (*v0)
  {
    return 0x73656D695479656BLL;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_100158CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656D695479656BLL && a2 == 0xEC000000706D6174)
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

uint64_t sub_100158D88(uint64_t a1)
{
  v2 = sub_100159B6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158DC4(uint64_t a1)
{
  v2 = sub_100159B6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

NSObject *sub_100158E00(void *a1)
{
  v57 = type metadata accessor for DecodingError();
  v55 = *(v57 - 8);
  v2 = __chkstk_darwin(v57);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v56 = &v49 - v4;
  v5 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v5 - 8);
  v53 = &v49 - v6;
  v7 = type metadata accessor for UUID();
  v52 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = sub_100004074(&qword_1003A4DB0, &unk_1002C94C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = a1[3];
  v58 = a1;
  sub_10000BE18(a1, v17);
  sub_100159B6C();
  v18 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v26 = v56;
    v27 = v57;
    v28 = v58;
    v61 = v18;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {

      v30 = v54;
      v29 = v55;
      (*(v55 + 32))(v54, v26, v27);
      v26 = swift_allocError();
      (*(v29 + 16))(v31, v30, v27);
      sub_100020C74(10005, 0xD000000000000010, 0x80000001003521C0, v26);

      swift_willThrow();
      (*(v29 + 8))(v30, v27);
    }

    sub_10000959C(v28);
    return v26;
  }

  v50 = v10;
  v51 = v12;
  v59 = v14;
  LOBYTE(v61) = 0;
  sub_100159E44(&qword_10039FB38, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19 = v53;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v52;
  v21 = *(v52 + 48);
  v22 = v21(v19, 1, v7);
  v49 = v7;
  if (v22 == 1)
  {
    v23 = v51;
    UUID.init()();
    v24 = v21(v19, 1, v7);
    v25 = v23;
    if (v24 != 1)
    {
      sub_10000BD44(v53, &qword_1003A0178, &unk_1002C3BB0);
    }
  }

  else
  {
    v25 = v51;
    (*(v20 + 32))(v51, v19, v7);
  }

  v60 = 1;
  sub_100155B3C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if ((v63 & 1) == 0)
  {
    v40 = v13;
    v42 = v62;
    v37 = v61;
LABEL_27:
    (*(v52 + 16))(v50, v25, v49);
    v43 = v59;
    if (qword_10039D6D8 != -1)
    {
      swift_once();
    }

    v44 = qword_10039D6D0;
    v45 = qword_1003A6E70;
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = qword_1003A6E68;

    v47 = static Data.randomBytes(count:)();
    v26 = sub_100156A0C(v50, v37, v45, v46, v47, v48, 600000, v42);
    (*(v52 + 8))(v51, v49);
    (*(v43 + 8))(v16, v40);
    sub_10000959C(v58);
    return v26;
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v33 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v33 + 104) > 0 || *(v33 + 112) == 1)
  {
    result = [*(v33 + 88) wait];
  }

  v34 = *(v33 + 96);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v33 + 96) = v36;
    [*(v33 + 88) unlock];
    if (*(v33 + 56))
    {
      v37 = 0;
    }

    else
    {
      v37 = *(v33 + 52);
    }

    result = [*(v33 + 88) lock];
    v38 = *(v33 + 96);
    v35 = __OFSUB__(v38, 1);
    v39 = v38 - 1;
    if (!v35)
    {
      *(v33 + 96) = v39;
      v25 = v51;
      if (!v39)
      {
        [*(v33 + 88) broadcast];
      }

      v40 = v13;
      [*(v33 + 88) unlock];
      TMGetKernelMonotonicClock();
      v42 = v41;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001595C0(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A4D88, &unk_1002C9490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BE18(a1, a1[3]);
  sub_100159B6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_100159E44(&qword_10039FB18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp + 8);
    v12 = *(v3 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp);
    v13 = v9;
    v11[15] = 1;
    sub_100155B90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001597A0()
{
  sub_100009548(*(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest);
  v4 = *(v0 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest + 8);

  return sub_100009548(v3, v4);
}

uint64_t sub_10015984C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_100009548(v1, v2);

  v3 = OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_uuid;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_100009548(*(v0 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest), *(v0 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BAASigningIdentity(uint64_t a1)
{
  result = qword_1003A4CA0;
  if (!qword_1003A4CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001599A0(uint64_t a1)
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

NSObject *sub_100159A64@<X0>(void *a1@<X0>, NSObject **a2@<X8>)
{
  result = sub_100158E00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100159AC0(void *a1)
{
  a1[1] = sub_100159E44(&qword_1003A4D70, type metadata accessor for BAASigningIdentity, &unk_1002C9448);
  a1[2] = sub_100159E44(&qword_1003A4D78, type metadata accessor for BAASigningIdentity, &unk_1002C9420);
  result = sub_100159E44(&qword_1003A4D80, type metadata accessor for BAASigningIdentity, &unk_1002C93F8);
  a1[3] = result;
  return result;
}

unint64_t sub_100159B6C()
{
  result = qword_1003A4D90;
  if (!qword_1003A4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4D90);
  }

  return result;
}

BOOL sub_100159BC0(void *a1, void *a2)
{
  type metadata accessor for SecKey(0);
  sub_100159E44(&qword_1003A4D98, type metadata accessor for SecKey, &unk_1002C1474);
  if (static _CFObject.== infix(_:_:)() & 1) != 0 && (v4 = a1[3], v5 = a1[4], v6 = a2[3], v7 = a2[4], sub_1000094F4(v4, v5), sub_1000094F4(v6, v7), v8 = sub_10017688C(v4, v5, v6, v7), sub_100009548(v6, v7), sub_100009548(v4, v5), v8) && (v9 = a1[5], v10 = a2[5], , , v11 = sub_100151598(v9, v10), , , (v11) && *(a1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp) == *(a2 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp))
  {
    return *(a1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp + 8) == *(a2 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100159D2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100159D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100159D84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100159DBC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100159E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100159EA0()
{
  result = qword_1003A4DB8;
  if (!qword_1003A4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4DB8);
  }

  return result;
}

unint64_t sub_100159EF8()
{
  result = qword_1003A4DC0;
  if (!qword_1003A4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4DC0);
  }

  return result;
}

unint64_t sub_100159F50()
{
  result = qword_1003A4DC8;
  if (!qword_1003A4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4DC8);
  }

  return result;
}

uint64_t sub_100159FB0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_10001A074(v4, v8);
}

uint64_t sub_10015A05C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4DD0);
  sub_10000403C(v0, qword_1003A4DD0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.security.getter();
}

uint64_t sub_10015A0C8()
{
  v1 = v0;
  _StringGuts.grow(_:)(70);
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 60;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x79656B207B203A3ELL;
  v5._object = 0xEE00203A68736148;
  String.append(_:)(v5);
  String.hashValue.getter();
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203A6661656C202CLL;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8 = *(v0 + 24);
  v9 = *(v1 + 32);
  sub_1000094F4(*(v1 + 24), v9);
  v10 = Data.base64EncodedString(options:)(0);
  sub_100009548(v8, v9);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000011;
  v11._object = 0x8000000100352180;
  String.append(_:)(v11);
  v12 = *(v1 + 40);
  v13 = *(v12 + 16);
  if (v13)
  {

    sub_10004E2DC(0, v13, 0);
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      sub_1000094F4(v15, *v14);
      v17 = Data.base64EncodedString(options:)(0);
      v18._countAndFlagsBits = 44;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      sub_100009548(v15, v16);
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_10004E2DC((v19 > 1), v20 + 1, 1);
      }

      v14 += 2;
      _swiftEmptyArrayStorage[2] = v20 + 1;
      *&_swiftEmptyArrayStorage[2 * v20 + 4] = v17;
      --v13;
    }

    while (v13);
  }

  v21 = Array.description.getter();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._object = 0x80000001003521A0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = sub_10017233C(*(v1 + 72));
  String.append(_:)(v26);

  v27._countAndFlagsBits = 32044;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  return 0;
}

uint64_t sub_10015A408(int a1, double a2)
{
  v3 = v2;
  v120 = a1;
  v5 = type metadata accessor for DispatchTime();
  v126 = *(v5 - 8);
  v127 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v125 = &v112 - v9;
  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v121 = sub_10000403C(v10, qword_1003A4DD0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v122 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100008F6C(v15, v16, aBlock);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = showFunction(signature:_:)(0xD000000000000013, 0x80000001003525F0, _swiftEmptyArrayStorage);
    v20 = sub_100008F6C(v18, v19, aBlock);
    v3 = v122;

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = [objc_opt_self() sharedService];
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = (v22 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = dispatch_semaphore_create(0);
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v22;
  v26[4] = v24;
  v26[5] = v3;
  aBlock[4] = sub_10015EE38;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015B50C;
  aBlock[3] = &unk_100385860;
  v27 = _Block_copy(aBlock);
  v28 = v25;
  v124 = v22;
  v29 = v24;

  v123 = v21;
  [v21 generateKeyWithCompletionHandler:v27];
  _Block_release(v27);
  static DispatchTime.now()();
  v30 = v125;
  + infix(_:_:)();
  v31 = v127;
  v32 = *(v126 + 8);
  v33 = v8;
  v34 = v28;
  v32(v33, v127);
  OS_dispatch_semaphore.wait(timeout:)();
  v32(v30, v31);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
LABEL_9:

      sub_100020C74(10002, 0, 0, 0);
      swift_willThrow();

LABEL_12:
      return v34;
    }

    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = 0x4014000000000000;
    v38 = "Timed out waiting for deviceCheckService.generateKey for %f seconds";
    v39 = v36;
    v40 = v35;
    v41 = v37;
    v42 = 12;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v40, v39, v38, v41, v42);

    goto LABEL_9;
  }

  swift_beginAccess();
  if (*v23)
  {
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_12;
  }

  swift_beginAccess();
  v44 = *(v29 + 24);
  if (!v44)
  {
    v35 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v51))
    {
      goto LABEL_9;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v38 = "Unexpected nil key after requesting DeviceCheck Creation";
    v39 = v51;
    v40 = v35;
    v41 = v52;
    v42 = 2;
    goto LABEL_8;
  }

  v45 = *(v29 + 16);

  v46 = sub_10015B5A4();
  v48 = v46;
  v49 = v47;
  if (v50)
  {
    swift_willThrow();
    swift_errorRetain();

    return v34;
  }

  if (!v46 || !v47)
  {

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Unexpected nil value after receiving AAA certificate", v62, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();

    goto LABEL_45;
  }

  v53 = v47;
  v119 = v48;
  v54 = SecCertificateCopyData(v119);
  v127 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = SecCertificateCopyData(v53);
  v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v58;

  v59 = v56 >> 62;
  if ((v56 >> 62) > 1)
  {
    if (v59 != 2)
    {
      goto LABEL_40;
    }

    v63 = *(v127 + 16);
    v64 = *(v127 + 24);
  }

  else
  {
    if (!v59)
    {
      if ((v56 & 0xFF000000000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }

    v63 = v127;
    v64 = v127 >> 32;
  }

  if (v63 == v64)
  {
    goto LABEL_40;
  }

LABEL_32:
  v65 = v126 >> 62;
  if ((v126 >> 62) > 1)
  {
    if (v65 != 2)
    {
      goto LABEL_40;
    }

    v66 = *(v125 + 16);
    v67 = *(v125 + 24);
    goto LABEL_39;
  }

  if (v65)
  {
    v66 = v125;
    v67 = v125 >> 32;
LABEL_39:
    if (v66 != v67)
    {
      goto LABEL_46;
    }

LABEL_40:
    v68 = v56;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Unexpected empty data after copying AAA certificate data", v71, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();
    v72 = v119;

    v73 = v127;
    v74 = v68;
LABEL_43:
    sub_100009548(v73, v74);
    sub_100009548(v125, v126);

LABEL_44:

LABEL_45:

    return v34;
  }

  if ((v126 & 0xFF000000000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_46:
  type metadata accessor for SecCertificate(0);
  v118 = v56;
  v75 = static SecCertificateRef.parse(derRepresentation:)();
  if (!v75)
  {

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Could not create leaf SecCertificate from derRepresentation", v89, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();
    v72 = v119;

    v73 = v127;
    v74 = v118;
    goto LABEL_43;
  }

  v76 = v75;
  v77 = static SecCertificateRef.parse(derRepresentation:)();
  if (!v77)
  {
    v90 = v76;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Cold not create intermediate Certificate from derRepresentation", v93, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();
    v94 = v119;

    sub_100009548(v127, v118);
    sub_100009548(v125, v126);

    goto LABEL_44;
  }

  v117 = v76;
  v78 = SecCertificateRef.publicKey.getter();
  if (!v78 || (v79 = v78, v80 = SecKeyRef.externalRepresentation.getter(), v82 = v81, v79, v82 >> 60 == 15))
  {

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Could not get public key from SecCertificate", v85, 2u);
    }

    sub_100020C74(10001, 0, 0, 0);
    swift_willThrow();
    v86 = v119;

    sub_100009548(v127, v118);
    sub_100009548(v125, v126);

    goto LABEL_44;
  }

  v116 = v34;
  v114 = v80;
  v113 = v82;
  v95 = Data.sha256Digest.getter();
  v115 = v96;
  sub_100004074(&qword_10039FE58, &qword_1002C96F0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1002C1660;
  v99 = v125;
  v98 = v126;
  *(v97 + 32) = v125;
  *(v97 + 40) = v98;
  v34 = swift_allocObject();
  *(v34 + 48) = v45;
  *(v34 + 56) = v44;
  sub_1000094F4(v99, v98);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v122 = v53;
    v103 = v102;
    v104 = swift_slowAlloc();
    v121 = v95;
    v105 = v104;
    v128[0] = v104;
    *v103 = 136315138;

    v106 = sub_100008F6C(v45, v44, v128);

    *(v103 + 4) = v106;
    _os_log_impl(&_mh_execute_header, v100, v101, "AAASigningIdentity.init with key: %s", v103, 0xCu);
    sub_10000959C(v105);
    v95 = v121;

    v53 = v122;
  }

  v107 = v127;
  v108 = v118;
  *(v34 + 24) = v127;
  *(v34 + 32) = v108;
  *(v34 + 40) = v97;
  *(v34 + 64) = v120;
  *(v34 + 72) = a2;
  v109 = v115;
  *(v34 + 80) = v95;
  *(v34 + 88) = v109;
  swift_beginAccess();
  sub_1000094F4(v107, v108);
  sub_1000094F4(v95, v109);
  v110 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
  swift_endAccess();
  v111 = v119;

  sub_10001A074(v114, v113);
  sub_100009548(v125, v126);

  sub_100009548(v95, v109);
  sub_100009548(v107, v108);

  *(v34 + 16) = v110;
  return v34;
}

Swift::Int sub_10015B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000403C(v8, qword_1003A4DD0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_7;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v11 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.init(...): Error creating AAA Key: %@", v11, 0x16u);
    sub_100041D90(v12);

    sub_10000959C(v13);

    goto LABEL_6;
  }

  if (a2)
  {
    swift_beginAccess();
    *(a6 + 16) = a1;
    *(a6 + 24) = a2;

    return OS_dispatch_semaphore.signal()();
  }

  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000403C(v23, qword_1003A4DD0);
  v9 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v9, v24, "Failed to create key reference", v25, 2u);
LABEL_6:
  }

LABEL_7:

  v18 = sub_100020C74(10001, 0, 0, 0);
  swift_beginAccess();
  *(a5 + 16) = v18;

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10015B50C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void *sub_10015B5A4()
{
  v40 = type metadata accessor for DispatchTime();
  v39 = *(v40 - 8);
  v0 = __chkstk_darwin(v40);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v0);
  v4 = &v36 - v3;
  v36 = [objc_opt_self() sharedService];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v43 = v5 + 16;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v42 = v6 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v41 = (v7 + 16);
  v8 = static Data.randomBytes(count:)();
  v10 = v9;
  v11 = dispatch_semaphore_create(0);
  v12 = String._bridgeToObjectiveC()();
  v37 = v8;
  v38 = v10;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v7;
  v14[4] = v5;
  v14[5] = v6;
  v14[6] = v45;
  aBlock[4] = sub_10015ED2C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100159FB0;
  aBlock[3] = &unk_1003857E8;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v44 = v7;
  v17 = v16;

  v45 = v5;
  v18 = v6;
  v19 = v36;

  [v19 attestKey:v12 clientDataHash:isa completionHandler:v15];
  _Block_release(v15);

  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v39 + 8);
  v21 = v2;
  v22 = v40;
  v20(v21, v40);
  OS_dispatch_semaphore.wait(timeout:)();
  v20(v4, v22);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v23 = v37;
    v24 = v38;
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000403C(v25, qword_1003A4DD0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Time out waiting for the new certificate.", v28, 2u);
    }

    v29 = sub_100020C74(10002, 0, 0, 0);
    sub_100009548(v23, v24);

    v30 = v41;
    swift_beginAccess();
    *v30 = v29;
  }

  else
  {
    sub_100009548(v37, v38);
  }

  swift_beginAccess();
  v31 = *(v45 + 16);
  swift_beginAccess();
  v32 = *(v18 + 16);
  swift_beginAccess();
  v33 = v31;
  v34 = v32;
  swift_errorRetain();

  return v31;
}

uint64_t sub_10015BA94()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchTime();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = v39 - v7;
  v8 = swift_allocObject();
  v45 = v8;
  *(v8 + 16) = xmmword_1002C3C70;
  v39[2] = v8 + 16;
  v9 = swift_allocObject();
  v47 = v9;
  *(v9 + 16) = 0;
  v10 = v9 + 16;
  v11 = dispatch_semaphore_create(0);
  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v40 = v10;
  v12 = type metadata accessor for Logger();
  v13 = sub_10000403C(v12, qword_1003A4DD0);

  v41 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v39[1] = v1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100008F6C(*(v2 + 48), *(v2 + 56), aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "AAASigningIdentity.sign with key: %s", v17, 0xCu);
    sub_10000959C(v18);
  }

  v19 = [objc_opt_self() sharedService];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v21 = String._bridgeToObjectiveC()();
  v22 = swift_allocObject();
  v23 = v45;
  v22[2] = v11;
  v22[3] = v23;
  v22[4] = v47;
  aBlock[4] = sub_10015EC80;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100159FB0;
  aBlock[3] = &unk_100385770;
  v24 = _Block_copy(aBlock);
  v25 = v11;

  [v19 sign:isa withKey:v21 completionHandler:v24];
  _Block_release(v24);

  static DispatchTime.now()();
  v26 = v42;
  + infix(_:_:)();
  v27 = v44;
  v28 = *(v43 + 8);
  v28(v6, v44);
  OS_dispatch_semaphore.wait(timeout:)();
  v28(v26, v27);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v29 = v41;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v32 = "Time out waiting for Signature.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v30, v31, v32, v29, 2u);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v33 = v40;
  swift_beginAccess();
  if (*v33)
  {

    v29 = v41;
    v30 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v34))
    {
      v29 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v29 = 138412290;
      if (*v33)
      {
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      *(v29 + 4) = v36;
      *v35 = v37;
      _os_log_impl(&_mh_execute_header, v30, v34, "Error in signature block: %@", v29, 0xCu);
      sub_100041D90(v35);

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  if (*(v23 + 24) >> 60 == 15)
  {
    v29 = v41;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v32 = "No resulting signature found.";
      goto LABEL_8;
    }

LABEL_20:

    sub_100020C74(10004, 0, 0, 0);
    swift_willThrow();

    return v29;
  }

  v29 = *(v23 + 16);
  sub_1000094F4(v29, *(v23 + 24));

  return v29;
}

Swift::Int sub_10015C0B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  sub_10001A3E8(a1, a2);
  sub_10001A074(v11, v12);
  swift_beginAccess();
  *(a6 + 16) = a3;
  swift_errorRetain();

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10015C16C()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 1717658988;
  v4 = 0x64656D7265746E69;
  if (v1 != 4)
  {
    v4 = 0x654B63696C627570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73656D695479656BLL;
  if (v1 != 1)
  {
    v5 = 7955819;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10015C22C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10015E0F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10015C254(uint64_t a1)
{
  v2 = sub_10015EB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015C290(uint64_t a1)
{
  v2 = sub_10015EB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015C2CC(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A4EF8, &unk_1002C96E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_10015EB2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 72);
    LODWORD(v15) = *(v3 + 64);
    v16 = v9;
    v14 = 1;
    sub_100155B90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 32);
    v15 = *(v3 + 24);
    v16 = v10;
    v14 = 3;
    sub_1000094F4(v15, v10);
    sub_1001002CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v15, v16);
    v15 = *(v3 + 40);
    v14 = 4;
    sub_100004074(&qword_1003A4EE8, &qword_1002C96D8);
    sub_10015EB80(&qword_1003A4F00, sub_1001002CC, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 88);
    v15 = *(v3 + 80);
    v16 = v11;
    v14 = 5;
    sub_1000094F4(v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v15, v16);
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_10015C570()
{
  v1 = v0;
  v2 = sub_10015B5A4();
  v4 = v2;
  v5 = v3;
  if (v6)
  {
    swift_willThrow();
    swift_errorRetain();
  }

  if (v2)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A4DD0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected nil value after receiving AAA certificate", v12, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();

    goto LABEL_35;
  }

  v5 = v3;
  v13 = v4;
  v14 = SecCertificateCopyData(v13);
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = SecCertificateCopyData(v5);
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v22 != 2 || *(v15 + 16) == *(v15 + 24))
    {
      goto LABEL_29;
    }
  }

  else if (v22)
  {
    if (v15 == v15 >> 32)
    {
      goto LABEL_29;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_29;
  }

  v23 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_29;
    }

    v24 = *(v19 + 16);
    v25 = *(v19 + 24);
    goto LABEL_28;
  }

  if (v23)
  {
    v24 = v19;
    v25 = v19 >> 32;
LABEL_28:
    if (v24 != v25)
    {
      goto LABEL_37;
    }

LABEL_29:
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000403C(v26, qword_1003A4DD0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_34;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Unexpected empty data after copying AAA certificate data";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

LABEL_34:

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();

    sub_100009548(v15, v17);
    sub_100009548(v19, v21);

LABEL_35:
  }

  if ((v21 & 0xFF000000000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_37:
  type metadata accessor for SecCertificate(0);
  v31 = static SecCertificateRef.parse(derRepresentation:)();
  if (!v31)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000403C(v40, qword_1003A4DD0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_34;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Could not create SecCertificate from derRepresentation";
    goto LABEL_33;
  }

  v59 = v31;
  v60 = v21;
  v32 = SecCertificateRef.publicKey.getter();
  if (!v32 || (v33 = v32, v58 = SecKeyRef.externalRepresentation.getter(), v35 = v34, v33, v35 >> 60 == 15))
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000403C(v36, qword_1003A4DD0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Could not get public key from SecCertificate", v39, 2u);
    }

    sub_100020C74(10001, 0, 0, 0);
    swift_willThrow();

    sub_100009548(v15, v17);
    sub_100009548(v19, v60);
  }

  v41 = *(v1 + 24);
  v57 = *(v1 + 32);
  *(v1 + 24) = v15;
  *(v1 + 32) = v17;
  sub_1000094F4(v15, v17);
  sub_100009548(v41, v57);
  sub_100004074(&qword_10039FE58, &qword_1002C96F0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1002C1660;
  *(v42 + 32) = v19;
  *(v42 + 40) = v60;
  *(v1 + 40) = v42;
  sub_1000094F4(v19, v60);

  v43 = Data.sha256Digest.getter();
  v44 = *(v1 + 80);
  v45 = *(v1 + 88);
  *(v1 + 80) = v43;
  *(v1 + 88) = v46;
  sub_100009548(v44, v45);
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v47 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v47 + 104) > 0 || *(v47 + 112) == 1)
  {
    result = [*(v47 + 88) wait];
  }

  v48 = *(v47 + 96);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  *(v47 + 96) = v50;
  [*(v47 + 88) unlock];
  v51 = *(v47 + 52);
  if (*(v47 + 56))
  {
    v51 = 0;
  }

  v56 = v51;
  result = [*(v47 + 88) lock];
  v52 = *(v47 + 96);
  v49 = __OFSUB__(v52, 1);
  v53 = v52 - 1;
  if (v49)
  {
    goto LABEL_63;
  }

  *(v47 + 96) = v53;
  if (!v53)
  {
    [*(v47 + 88) broadcast];
  }

  [*(v47 + 88) unlock];
  TMGetKernelMonotonicClock();
  v55 = v54;

  sub_100009548(v15, v17);
  sub_100009548(v19, v60);
  sub_10001A074(v58, v35);

  *(v1 + 64) = v56;
  *(v1 + 72) = v55;
  return result;
}

Swift::Int sub_10015CCBC(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a3)
  {
    if (qword_10039D6E0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_48;
  }

  if (!CBOR)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000403C(v31, qword_1003A4DD0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "CBOR library is not available", v34, 2u);
    }

    v35 = 10999;
    goto LABEL_23;
  }

  if (a2 >> 60 == 15)
  {
LABEL_17:
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000403C(v36, qword_1003A4DD0);
    v10 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v37))
    {
      goto LABEL_22;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v10, v37, "Failed to create certificate references", v38, 2u);
    goto LABEL_21;
  }

  v21 = objc_opt_self();
  sub_1000094F4(a1, a2);
  v61 = a1;
  v62 = a2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23 = [v21 decodeFromData:isa];

  if (!v23)
  {
    sub_10001A074(v61, a2);
    goto LABEL_17;
  }

  v24 = [v23 dictionary];
  if (!v24)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_1003A4DD0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to decode CBOR Object", v44, 2u);
    }

    v39 = sub_100020C74(10002, 0, 0, 0);
    sub_10001A074(v61, v62);

    goto LABEL_24;
  }

  v25 = v24;
  sub_10000411C(0, &qword_1003A4F08, CBOR_ptr);
  sub_10015ED3C();
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v23;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v45 = -1 << *(v26 + 32);
    v28 = ~v45;
    v27 = v26 + 64;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v29 = v47 & *(v26 + 64);
    v30 = v26;
  }

  v48 = 0;
  v49 = (v28 + 64) >> 6;
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v50 = v48;
    v51 = v29;
    v52 = v48;
    if (!v29)
    {
      break;
    }

LABEL_40:
    v53 = (v51 - 1) & v51;
    v54 = (v52 << 9) | (8 * __clz(__rbit64(v51)));
    v55 = *(*(v30 + 56) + v54);
    v56 = *(*(v30 + 48) + v54);
    v57 = v55;
    v58 = a7;
    v59 = a6;
    if (!v56)
    {
LABEL_46:
      sub_100041CDC(v30);
      sub_10001A074(v61, v62);

      return OS_dispatch_semaphore.signal()();
    }

    while (1)
    {
      sub_10015D3B0(v56, v57, (a5 + 16), (v59 + 16), (v58 + 16));

      v48 = v52;
      v29 = v53;
      if ((v30 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_42:
      if (__CocoaDictionary.Iterator.next()())
      {
        swift_dynamicCast();
        v56 = v65[0];
        swift_dynamicCast();
        v57 = v65[0];
        v52 = v48;
        v53 = v29;
        v58 = a7;
        v59 = a6;
        if (v65[0])
        {
          continue;
        }
      }

      goto LABEL_46;
    }
  }

  while (1)
  {
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v52 >= v49)
    {
      goto LABEL_46;
    }

    v51 = *(v27 + 8 * v52);
    ++v50;
    if (v51)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_48:
  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A4DD0);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65[0] = v14;
    *v12 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100008F6C(v15, v16, v65);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.init(...): Error getting AAA certificate: %@", v12, 0x16u);
    sub_100041D90(v13);

    sub_10000959C(v14);

LABEL_21:
  }

LABEL_22:

  v35 = 10002;
LABEL_23:
  v39 = sub_100020C74(v35, 0, 0, 0);
LABEL_24:
  swift_beginAccess();
  *(a5 + 16) = v39;

  return OS_dispatch_semaphore.signal()();
}

id sub_10015D3B0(void *a1, void *a2, uint64_t *a3, SecCertificateRef *a4, SecCertificateRef *a5)
{
  result = [a1 string];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0x746D7453747461 && v13 == 0xE700000000000000)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  v16 = [a2 dictionary];
  if (v16)
  {
    v17 = v16;
    sub_10000411C(0, &qword_1003A4F08, CBOR_ptr);
    sub_10015ED3C();
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v18 & 0xC000000000000001) != 0)
    {
      if (__CocoaDictionary.count.getter() == 2)
      {
        v40 = a4;
        v41 = a5;
        v42 = a3;
        v19 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;

        v20 = 0;
        v21 = 0;
        v22 = 0;
LABEL_18:
        a3 = 0;
        v26 = (v21 + 64) >> 6;
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        while (1)
        {
          v27 = a3;
          v28 = v22;
          v29 = a3;
          if (!v22)
          {
            break;
          }

LABEL_23:
          v30 = (v28 - 1) & v28;
          v31 = (v29 << 9) | (8 * __clz(__rbit64(v28)));
          v32 = *(*(v19 + 56) + v31);
          v33 = *(*(v19 + 48) + v31);
          v34 = v32;
          if (!v33)
          {
LABEL_34:
            sub_100041CDC(v19);
          }

          while (1)
          {
            sub_10015D7B0(v33, v34, v42, v40, v41);

            a3 = v29;
            v22 = v30;
            if ((v19 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_25:
            if (__CocoaDictionary.Iterator.next()())
            {
              swift_dynamicCast();
              v33 = v43;
              swift_dynamicCast();
              v34 = v43;
              v29 = a3;
              v30 = v22;
              if (v43)
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }

        while (1)
        {
          v29 = (v27 + 1);
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v29 >= v26)
          {
            goto LABEL_34;
          }

          v28 = *(v20 + 8 * v29);
          v27 = (v27 + 1);
          if (v28)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    else if (*(v18 + 16) == 2)
    {
      v40 = a4;
      v41 = a5;
      v42 = a3;
      v23 = -1 << *(v18 + 32);
      v20 = v18 + 64;
      v21 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(v18 + 64);

      v19 = v18;
      goto LABEL_18;
    }
  }

  if (qword_10039D6E0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000403C(v35, qword_1003A4DD0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Incorrectly formatted CBOR Object", v38, 2u);
  }

  v39 = sub_100020C74(10002, 0, 0, 0);
  swift_beginAccess();
  *a3 = v39;
}

void sub_10015D7B0(void *a1, void *a2, uint64_t *a3, SecCertificateRef *a4, SecCertificateRef *a5)
{
  v9 = [a1 string];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == 6501752 && v13 == 0xE300000000000000)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        return;
      }
    }

    v16 = [a2 array];
    if (v16)
    {
      v17 = v16;
      sub_10000411C(0, &qword_1003A4F08, CBOR_ptr);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v18 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() == 2)
        {
LABEL_12:
          if ((v18 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_41:
              swift_once();
LABEL_19:
              v29 = type metadata accessor for Logger();
              sub_10000403C(v29, qword_1003A4DD0);
              v30 = Logger.logObject.getter();
              v31 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v30, v31))
              {
LABEL_36:

                v46 = sub_100020C74(10002, 0, 0, 0);
LABEL_37:
                swift_beginAccess();
                *a3 = v46;

                return;
              }

              v32 = swift_slowAlloc();
              *v32 = 0;
              v33 = "No leaf in CBOR data";
LABEL_35:
              _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

              goto LABEL_36;
            }

            v19 = *(v18 + 32);
          }

          v20 = v19;
          v21 = [v19 data];

          if (v21)
          {
            v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;

            v48 = v24;
            isa = Data._bridgeToObjectiveC()().super.isa;
            v26 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

            swift_beginAccess();
            v27 = *a4;
            *a4 = v26;

            if ((v18 & 0xC000000000000001) != 0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                __break(1u);
LABEL_43:
                swift_once();
LABEL_26:
                v42 = type metadata accessor for Logger();
                sub_10000403C(v42, qword_1003A4DD0);
                v43 = Logger.logObject.getter();
                v44 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v43, v44))
                {
                  v45 = swift_slowAlloc();
                  *v45 = 0;
                  _os_log_impl(&_mh_execute_header, v43, v44, "No intermediate in CBOR data", v45, 2u);
                }

                v46 = sub_100020C74(10002, 0, 0, 0);
                sub_100009548(v22, v48);
                goto LABEL_37;
              }

              v28 = *(v18 + 40);
            }

            v34 = v28;

            v35 = [v34 data];

            if (v35)
            {
              v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v38 = v37;

              v39 = Data._bridgeToObjectiveC()().super.isa;
              v40 = SecCertificateCreateWithData(kCFAllocatorDefault, v39);
              sub_100009548(v22, v48);
              sub_100009548(v36, v38);

              swift_beginAccess();
              v41 = *a5;
              *a5 = v40;

              return;
            }

            if (qword_10039D6E0 == -1)
            {
              goto LABEL_26;
            }

            goto LABEL_43;
          }

          if (qword_10039D6E0 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_41;
        }
      }

      else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
      {
        goto LABEL_12;
      }
    }

    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000403C(v47, qword_1003A4DD0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_36;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Need 2 certficates in CBOR";
    goto LABEL_35;
  }
}

uint64_t sub_10015DCF4()
{
  sub_100009548(v0[3], v0[4]);

  v1 = v0[10];
  v2 = v0[11];

  return sub_100009548(v1, v2);
}

uint64_t sub_10015DD34()
{
  v1 = v0[3];
  v2 = v0[4];

  sub_100009548(v1, v2);

  sub_100009548(v0[10], v0[11]);

  return swift_deallocClassInstance();
}

uint64_t sub_10015DDD0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10015E304(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10015DE2C(void *a1)
{
  a1[1] = sub_10015DEB8(&qword_1003A4EC0, &unk_1002C9684);
  a1[2] = sub_10015DEB8(&qword_1003A4EC8, &unk_1002C965C);
  result = sub_10015DEB8(&qword_1003A4ED0, &unk_1002C9634);
  a1[3] = result;
  return result;
}

uint64_t sub_10015DEB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AAASigningIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_10015DEF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 = *(a1 + 24), v6 = *(a1 + 32), v7 = *(a2 + 24), v8 = *(a2 + 32), sub_1000094F4(v5, v6), sub_1000094F4(v7, v8), v9 = sub_10017688C(v5, v6, v7, v8), sub_100009548(v7, v8), sub_100009548(v5, v6), v9) && (v10 = *(a1 + 40), v11 = *(a2 + 40), , , v12 = sub_100151598(v10, v11), , , (v12) && *(a1 + 64) == *(a2 + 64))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

void sub_10015E010()
{
  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A4DD0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Attempting to remove AAA keys does not work for Daemons", v2, 2u);
  }
}

uint64_t sub_10015E0F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656D695479656BLL && a2 == 0xEC000000706D6174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1717658988 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656D7265746E69 && a2 == 0xEC00000065746169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xEF74736567694479)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10015E304(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DecodingError();
  v53 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v9 = sub_100004074(&qword_1003A4ED8, &unk_1002C96C8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = a1[3];
  v54 = a1;
  sub_10000BE18(a1, v13);
  sub_10015EB2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_8;
  }

  v14 = v10;
  v58 = 1;
  sub_100155B3C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v57)
  {
    v15 = "Timestamp Missing in decoded AAA identity";
LABEL_4:
    v16 = ((v15 - 32) | 0x8000000000000000);
    v17 = 0xD000000000000029;
LABEL_5:
    v2 = sub_100020C74(10005, v17, v16, 0);
    swift_willThrow();
LABEL_7:
    (*(v14 + 8))(v12, v9);
LABEL_8:
    v55 = v2;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {

      v23 = v52;
      v22 = v53;
      (*(v53 + 32))(v52, v8, v4);
      v24 = swift_allocError();
      (*(v22 + 16))(v25, v23, v4);
      sub_100020C74(10005, 0xD000000000000010, 0x80000001003521C0, v24);

      swift_willThrow();
      (*(v22 + 8))(v23, v4);
    }

    sub_10000959C(v54);
    return v4;
  }

  v18 = v56;
  v19 = v55;
  LOBYTE(v55) = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v21)
  {
    v17 = 0xD000000000000027;
    v16 = 0x8000000100352500;
    goto LABEL_5;
  }

  v50 = v20;
  v51 = v21;
  v58 = 3;
  v27 = sub_100100278();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v27;
  if (v56 >> 60 == 15)
  {

    v15 = "Leaf cert Missing in decoded AAA identity";
    goto LABEL_4;
  }

  v47 = v19;
  v48 = v56;
  v28 = v55;
  sub_100004074(&qword_1003A4EE8, &qword_1002C96D8);
  v58 = 4;
  sub_10015EB80(&qword_1003A4EF0, sub_100100278, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v46 = v28;
  v29 = v55;
  if (!v55)
  {

    v2 = sub_100020C74(10005, 0xD000000000000031, 0x8000000100352560, 0);
    swift_willThrow();
    sub_10001A074(v46, v48);
    goto LABEL_7;
  }

  v58 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v56;
  if (v56 >> 60 == 15)
  {

    v2 = sub_100020C74(10005, 0xD000000000000026, 0x80000001003525A0, 0);
    swift_willThrow();
    sub_10001A074(v46, v48);
    (*(v14 + 8))(v12, v9);
    goto LABEL_8;
  }

  v52 = v55;
  type metadata accessor for AAASigningIdentity();
  v4 = swift_allocObject();
  v30 = v51;
  *(v4 + 48) = v50;
  *(v4 + 56) = v30;
  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v53 = v9;
  v31 = type metadata accessor for Logger();
  sub_10000403C(v31, qword_1003A4DD0);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v45 = v29;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55 = v51;
    *v35 = 136315138;
    v36 = *(v4 + 48);
    v37 = *(v4 + 56);

    v38 = sub_100008F6C(v36, v37, &v55);

    *(v35 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "AAASigningIdentity.init with key: %s", v35, 0xCu);
    sub_10000959C(v51);
  }

  v39 = v45;
  v40 = v46;
  v41 = v48;
  v42 = v49;
  *(v4 + 24) = v46;
  *(v4 + 32) = v41;
  *(v4 + 40) = v39;
  *(v4 + 64) = v47;
  *(v4 + 72) = v18;
  v43 = v52;
  *(v4 + 80) = v52;
  *(v4 + 88) = v42;
  swift_beginAccess();
  sub_10001A3E8(v40, v41);
  sub_10001A3E8(v43, v42);
  v44 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
  swift_endAccess();
  sub_10001A074(v43, v42);
  sub_10001A074(v40, v41);
  (*(v14 + 8))(v12, v53);
  *(v4 + 16) = v44;
  sub_10000959C(v54);
  return v4;
}

unint64_t sub_10015EB2C()
{
  result = qword_1003A4EE0;
  if (!qword_1003A4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4EE0);
  }

  return result;
}

uint64_t sub_10015EB80(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(&qword_1003A4EE8, &qword_1002C96D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10015EBF8()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100009548(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015EC40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015EC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015ECA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015ECDC()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10015ED3C()
{
  result = qword_1003A4F10;
  if (!qword_1003A4F10)
  {
    sub_10000411C(255, &qword_1003A4F08, CBOR_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4F10);
  }

  return result;
}

uint64_t sub_10015EDA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015EDE4(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_10015EE58()
{
  result = qword_1003A4F18;
  if (!qword_1003A4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4F18);
  }

  return result;
}

unint64_t sub_10015EEB0()
{
  result = qword_1003A4F20;
  if (!qword_1003A4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4F20);
  }

  return result;
}

unint64_t sub_10015EF08()
{
  result = qword_1003A4F28;
  if (!qword_1003A4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4F28);
  }

  return result;
}

uint64_t sub_10015EF6C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4F30);
  sub_10000403C(v0, qword_1003A4F30);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

void *sub_10015EFC8(NSObject *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, NSObject *a16, uint64_t a17, void *a18)
{
  v19 = v18;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v21);
  v18[7] = 0;
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100385990;
  _Block_copy(aBlock);
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_1001655B4(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v18[44] = DispatchWorkItem.init(flags:block:)();
  v18[45] = 600000;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v22 = a10;
  v23 = type metadata accessor for Logger();
  sub_10000403C(v23, qword_1003A4F30);

  v24 = a5;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = a2;
  if (os_log_type_enabled(v25, v26))
  {
    v79 = v26;
    v28 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = _typeName(_:qualified:)();
    v31 = sub_100008F6C(v29, v30, aBlock);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1002C1670;
    v78 = v25;
    v33 = a1;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    *(v32 + 88) = &type metadata for String;
    v34 = a4;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = a4;
    *(v32 + 72) = a5;

    v35 = showFunction(signature:_:)(0xD0000000000000A7, 0x8000000100352930, v32);
    v37 = v36;

    v38 = sub_100008F6C(v35, v37, aBlock);
    v24 = a5;

    *(v28 + 14) = v38;
    v22 = a10;
    _os_log_impl(&_mh_execute_header, v78, v79, "%s.%s", v28, 0x16u);
    swift_arrayDestroy();

    v39 = a7;
    v40 = a9;
    v41 = a12;
  }

  else
  {

    v39 = a7;
    v40 = a9;
    v41 = a12;
    v34 = a4;
    v33 = a1;
  }

  v19[2] = v33;
  v19[3] = v27;
  v19[4] = a3;
  v19[5] = v34;
  v19[6] = v24;
  sub_10000CCE4(v39, (v19 + 8));
  v42 = a8;
  sub_10000CCE4(a8, (v19 + 13));
  sub_10000CCE4(v40, (v19 + 33));
  v19[38] = v22;
  sub_10000CCE4(a11, (v19 + 39));
  sub_10000CCE4(v41, (v19 + 28));
  v19[18] = a15;
  v19[19] = a16;
  v19[20] = a17;
  v19[21] = a13;
  v19[22] = a14;
  sub_10000CCE4(a18, (v19 + 23));

  v86 = a15;
  v84 = a16;
  v43 = sub_100161438();
  if (!v43)
  {
    goto LABEL_12;
  }

  v44 = v43;
  if ((sub_100152274() & 1) == 0)
  {

LABEL_12:

    v57 = a11;
    v58 = a7;
    goto LABEL_13;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v81 = v46;
    v47 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v47 = 136315394;
    v48 = _typeName(_:qualified:)();
    v50 = sub_100008F6C(v48, v49, aBlock);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1002C1660;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 32) = a4;
    *(v51 + 40) = a5;

    v52 = showFunction(signature:_:)(0xD0000000000000A7, 0x8000000100352930, v51);
    v54 = v53;

    v55 = v52;
    v40 = a9;
    v56 = sub_100008F6C(v55, v54, aBlock);
    v57 = a11;

    *(v47 + 14) = v56;
    v58 = a7;
    _os_log_impl(&_mh_execute_header, v45, v81, "%s.%s got Identity from Persisting", v47, 0x16u);
    swift_arrayDestroy();
    v42 = a8;
  }

  else
  {

    v57 = a11;
    v58 = a7;
  }

  v63 = v44[3];
  v64 = v44[4];
  sub_1000094F4(v63, v64);
  v65 = sub_100163DC8(v63, v64);
  sub_100009548(v63, v64);
  if ((v65 & 1) == 0)
  {

    sub_100162348();

    v41 = a12;
LABEL_13:
    if (a6)
    {

      v59 = v84;
    }

    else
    {
      sub_100160C18();
      if (!v87)
      {
        v61 = v60;
        sub_100161BA0(v60);
        sub_1001627CC(v61);

LABEL_19:
        sub_10000959C(a18);
        sub_10000959C(v41);
        sub_10000959C(v57);
        sub_10000959C(v40);
        sub_10000959C(v42);
        sub_10000959C(v58);
        return v19;
      }

      v59 = v86;
    }

    goto LABEL_19;
  }

  v19[7] = v44;

  sub_1001627CC(v44);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();

  v82 = v66;
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v68 = 136315394;
    v69 = _typeName(_:qualified:)();
    v71 = sub_100008F6C(v69, v70, aBlock);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1002C1660;
    *(v72 + 56) = &type metadata for String;
    *(v72 + 32) = a4;
    *(v72 + 40) = a5;

    v73 = showFunction(signature:_:)(0xD0000000000000A7, 0x8000000100352930, v72);
    v75 = v74;

    v76 = sub_100008F6C(v73, v75, aBlock);

    *(v68 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v82, v67, "%s.%s using persisted Identity", v68, 0x16u);
    swift_arrayDestroy();

    sub_10000959C(a18);
    sub_10000959C(a12);
    sub_10000959C(a11);
    sub_10000959C(a9);
    sub_10000959C(a8);
    v77 = a7;
  }

  else
  {

    sub_10000959C(a18);
    sub_10000959C(a12);
    sub_10000959C(v57);
    sub_10000959C(v40);
    sub_10000959C(v42);
    v77 = v58;
  }

  sub_10000959C(v77);
  return v19;
}

uint64_t sub_10015FC4C()
{
  v1 = v0;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A4F30);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315394;
    v16 = v6;
    v17[0] = 0xD000000000000010;
    v17[1] = 0x8000000100352690;
    String.append(_:)(*(v0 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352690, &v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v16);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  sub_10000CCE4(v0 + 64, v17);
  v12 = v18;
  v13 = v19;
  sub_10000BE18(v17, v18);
  v14 = (*(v13 + 8))(v12, v13);
  sub_10000959C(v17);
  if (v14)
  {
    sub_100162348();
  }

  sub_10000959C((v1 + 64));
  sub_10000959C((v1 + 104));

  sub_10000959C((v1 + 184));
  sub_10000959C((v1 + 224));
  sub_10000959C((v1 + 264));

  sub_10000959C((v1 + 312));

  return v1;
}

uint64_t sub_10015FF14()
{
  sub_10015FC4C();

  return swift_deallocClassInstance();
}

void sub_10015FF6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t *a7@<X8>)
{
  v9 = v7;
  v14 = *(a1 + 56);
  if (v14)
  {

    if (sub_100152274())
    {
      v33 = a6;
      v34 = a4;
      v15 = a7;
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      sub_1000094F4(v16, v17);
      v18 = sub_100163DC8(v16, v17);
      sub_100009548(v16, v17);
      if (v18)
      {
        a6 = v33;
        v19 = v33(a2, a3, v34);
        a7 = v15;
        if (!v7)
        {
          *v15 = v19;
          v15[1] = v20;
          v15[2] = v14;
          return;
        }

        _s3__C4CodeOMa_13(0);
        swift_errorRetain();
        sub_1001655B4(&qword_10039D978, _s3__C4CodeOMa_13, &unk_1002BF078);
        v21 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if ((v21 & 1) == 0 || (a5 & 1) == 0)
        {

          return;
        }

        if (qword_10039D6E8 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_10000403C(v22, qword_1003A4F30);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        a4 = v34;
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Recoverable signature failure", v25, 2u);
          a6 = v33;
        }

        v9 = 0;
      }

      else
      {
        a7 = v15;
        a6 = v33;
        a4 = v34;
      }

      sub_100162348();
    }
  }

  if (a5)
  {
    sub_100160C18();
    if (!v9)
    {
      v27 = v26;
      v28 = a6(a2, a3, a4);
      v29 = a7;
      v30 = v28;
      v32 = v31;
      sub_100161BA0(v27);
      sub_1001627CC(v27);
      *v29 = v30;
      v29[1] = v32;
      v29[2] = v27;
    }
  }

  else
  {
    sub_100020C74(10006, 0, 0, 0);
    swift_willThrow();
  }
}

void sub_100160288(void *a1@<X0>, BOOL *a2@<X8>, double a3@<D0>)
{
  v7 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for Date();
  v11 = __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v17 = &v47 - v16;
  v18 = a1[7];
  if (!v18)
  {
    goto LABEL_10;
  }

  v49 = v15;
  v50 = v14;

  if ((sub_100152274() & 1) == 0 || (type metadata accessor for SecCertificate(0), v51 = a2, v19 = *(v18 + 24), v20 = *(v18 + 32), sub_1000094F4(v19, v20), v21 = static SecCertificateRef.parse(derRepresentation:)(), v22 = v19, a2 = v51, sub_100009548(v22, v20), !v21))
  {

LABEL_10:
    v35 = 0;
    goto LABEL_11;
  }

  v48 = v17;
  v23 = a1[36];
  v24 = a1[37];
  sub_10000BE18(a1 + 33, v23);
  v25 = v21;
  (*(v24 + 8))(v21, v23, v24);
  if (!v3)
  {
    v36 = v21;
    SecCertificateNotValidAfter();
    v37 = v48;
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_10000BE18(a1 + 28, a1[31]);
    sub_100043268(v9);
    v39 = v49;
    v38 = v50;
    if ((*(v49 + 48))(v9, 1, v50) != 1)
    {
      (*(v39 + 32))(v13, v9, v38);
      Date.timeIntervalSince(_:)();
      v45 = v44;

      v46 = *(v39 + 8);
      v46(v13, v38);
      v46(v37, v38);
      v35 = v45 > a3;
      a2 = v51;
      goto LABEL_11;
    }

    sub_10000BD44(v9, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D6E8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000403C(v40, qword_1003A4F30);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Could not calculate secure now", v43, 2u);
    }

    else
    {
    }

    a2 = v51;
    (*(v49 + 8))(v37, v50);
    goto LABEL_10;
  }

  v26 = v21;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000403C(v27, qword_1003A4F30);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v53 = v31;
    *v30 = 136315138;
    v52 = v3;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v32 = String.init<A>(describing:)();
    v34 = sub_100008F6C(v32, v33, &v53);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Certificate verification failed: %s", v30, 0xCu);
    sub_10000959C(v31);
  }

  else
  {
  }

  v35 = 0;
  a2 = v51;
LABEL_11:
  *a2 = v35;
}

uint64_t sub_100160800(uint64_t a1)
{
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A4F30);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    String.append(_:)(*(a1 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352690, &v20);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x80000001003526B0, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v20);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_100162348();
  sub_100160C18();
  if (v1)
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating identity: %@", v16, 0xCu);
      sub_10000BD44(v17, &unk_10039E220, &qword_1002C3D60);
    }

    return swift_willThrow();
  }

  else
  {
    v13 = v12;
    sub_100161BA0(v12);
    sub_1001627CC(v13);
  }
}

void sub_100160C18()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = __chkstk_darwin(v2);
  v72 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = &v66 - v5;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_10000403C(v6, qword_1003A4F30);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v66 = v7;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v11 = 136315394;
    v77 = 0xD000000000000010;
    v78 = 0x8000000100352690;
    String.append(_:)(*(v1 + 40));
    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_100008F6C(v77, v78, &v79);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100352910, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, &v79);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v70 = type metadata accessor for SESSigningIdentity();
  v17 = *(v1 + 24);
  v77 = *(v1 + 16);
  v78 = v17;

  v18._countAndFlagsBits = 58;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(*(v1 + 40));
  v68 = v78;
  v69 = v77;
  v19 = *(v1 + 176);
  v67 = *(v1 + 168);
  v20 = *(v1 + 152);
  v21 = *(v1 + 160);
  v22 = *(v1 + 360);

  v23 = v20;

  v24 = static Data.randomBytes(count:)();
  v76 = v1;
  v26 = v25;
  v27 = v72;
  static DispatchTime.now()();
  v28 = v71;
  + infix(_:_:)();
  (v73[1])(v27, v74);
  v29 = v75;
  sub_10015278C(v69, v68, v67, v19, v23, v21, v24, v26, v22, v28);
  if (!v29)
  {
    v47 = *(v30 + 24);
    v48 = *(v30 + 32);
    v49 = v30;
    sub_1000094F4(v47, v48);
    v50 = v76;
    sub_100164200(v47, v48);
    sub_100009548(v47, v48);
    v51 = v50[17];
    v74 = v50[16];
    v75 = v51;
    v73 = sub_10000BE18(v50 + 13, v74);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1701605234;
    v72 = (inited + 32);
    *(inited + 40) = 0xE400000000000000;
    v53 = v50[4];
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v53;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v54 = *(v49 + 24);
    v55 = *(v49 + 32);
    sub_1000094F4(v54, v55);
    v56 = Data.sha256Digest.getter();
    v58 = v57;
    sub_100009548(v54, v55);
    v59 = Data.base64EncodedString(options:)(0);
    sub_100009548(v56, v58);
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v59;
    v60 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(8u, v60, v74, v75);

    sub_10002B31C(&off_10037E170);
    return;
  }

  v75 = v30;
  v31 = v76;
  v32 = v76[16];
  v33 = v76[17];
  sub_10000BE18(v76 + 13, v32);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1002C1670;
  *(v34 + 32) = 1701605234;
  *(v34 + 40) = 0xE400000000000000;
  v35 = v31[4];
  *(v34 + 72) = &type metadata for Int;
  *(v34 + 80) = &protocol witness table for Int;
  *(v34 + 48) = v35;
  *(v34 + 88) = 0x726F727265;
  *(v34 + 96) = 0xE500000000000000;
  v77 = v29;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  v36 = String.init<A>(describing:)();
  *(v34 + 128) = &type metadata for String;
  *(v34 + 136) = &protocol witness table for String;
  *(v34 + 104) = v36;
  *(v34 + 112) = v37;
  v38 = sub_100184010(v34);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0xAu, v38, v32, v33);

  v77 = v29;
  swift_errorRetain();
  type metadata accessor for SecurityError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v39 = v79;
  v77 = v79;
  sub_1001655B4(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);
  _BridgedStoredNSError.code.getter();
  if (v79 != 10002)
  {
    goto LABEL_12;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "SEABAAS certificate creation failed.", v42, 2u);
  }

  v43 = v76;
  v44 = v76[45];
  v45 = __OFADD__(v44, 86400);
  v46 = v44 + 86400;
  if (v45)
  {
    __break(1u);
  }

  else
  {
    if (v46 > 600000)
    {
LABEL_12:

LABEL_18:
      swift_willThrow();
      return;
    }

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "SEABAAS certificate validity period increased for next attempt.", v63, 2u);
      v43 = v76;
    }

    v64 = v43[45];
    v45 = __OFADD__(v64, 86400);
    v65 = v64 + 86400;
    if (!v45)
    {
      v43[45] = v65;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_100161438()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_10000403C(v6, qword_1003A4F30);

  v31 = v7;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v34 = 0xD000000000000010;
    v35 = 0x8000000100352690;
    v36 = v11;
    String.append(_:)(*(v1 + 40));
    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_100008F6C(v34, v35, &v36);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = showFunction(signature:_:)(0x6E65644964616F6CLL, 0xEE00292879746974, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, &v36);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v1 + 88);
  v17 = *(v1 + 96);
  sub_10000BE18((v1 + 64), v18);
  v19 = *(v1 + 24);
  v28 = *(v1 + 16);
  v34 = v28;
  v35 = v19;

  v20._countAndFlagsBits = 58;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = *(v1 + 40);
  v29 = *(v1 + 48);
  v21._object = v29;
  countAndFlagsBits = v21._countAndFlagsBits;
  String.append(_:)(v21);
  static String.Encoding.utf8.getter();
  v22 = String.data(using:allowLossyConversion:)();
  v24 = v23;

  v25 = *(v33 + 8);
  v33 += 8;
  result = v25(v5, v32);
  if (v24 >> 60 == 15)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v27 = sub_100004074(&qword_1003A51B8, &qword_1002C98F8);
    sub_100165500();
    sub_10009A1A4(v22, v24, v18, v27, v17);
    sub_10001A074(v22, v24);
    return v36;
  }

  return result;
}

uint64_t sub_100161BA0(uint64_t a1)
{
  v3 = v2;
  v52 = type metadata accessor for String.Encoding();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONEncoder.OutputFormatting();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A4F30);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v53 = v1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v49 = v2;
    v14 = v13;
    v48 = swift_slowAlloc();
    v57 = v48;
    *v14 = 136315394;
    v55 = 0xD000000000000010;
    v56 = 0x8000000100352690;
    String.append(_:)(*(v1 + 40));
    v15._countAndFlagsBits = 93;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = sub_100008F6C(v55, v56, &v57);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1660;
    *(v17 + 56) = type metadata accessor for SESSigningIdentity();
    *(v17 + 32) = a1;

    v18 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528F0, v17);
    v20 = v19;

    v21 = sub_100008F6C(v18, v20, &v57);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();

    v3 = v49;
  }

  type metadata accessor for JSONEncoder();
  v55 = a1;
  v57 = _swiftEmptyArrayStorage;
  sub_1001655B4(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10001A570(&qword_1003A1078, &qword_1003A1070, &qword_1002C5170, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for SESSigningIdentity();
  sub_1001655B4(&qword_1003A4B50, type metadata accessor for SESSigningIdentity, &unk_1002C90A4);
  v22 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v3)
  {
    return (*(v54 + 8))(v8, v6);
  }

  v49 = v22;
  v48 = v23;
  v47 = a1;
  (*(v54 + 8))(v8, v6);
  v25 = v53;
  v26 = v53[11];
  v27 = v53[12];
  sub_10000BE18(v53 + 8, v26);
  v28 = v25[3];
  v55 = v25[2];
  v56 = v28;

  v29._countAndFlagsBits = 58;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  String.append(_:)(*(v25 + 5));
  v30 = v50;
  static String.Encoding.utf8.getter();
  v31 = String.data(using:allowLossyConversion:)();
  v33 = v32;

  result = (*(v51 + 8))(v30, v52);
  if (v33 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    (*(v27 + 40))(v31, v33, v49, v48, v26, v27);
    sub_10001A074(v31, v33);
    v34 = v47;
    v35 = v53;
    v36 = v53[16];
    v54 = v53[17];
    v52 = sub_10000BE18(v53 + 13, v36);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1701605234;
    *(inited + 40) = 0xE400000000000000;
    v38 = v35[4];
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v38;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v39 = *(v34 + 24);
    v40 = *(v34 + 32);
    sub_1000094F4(v39, v40);
    v41 = Data.sha256Digest.getter();
    v43 = v42;
    sub_100009548(v39, v40);
    v44 = Data.base64EncodedString(options:)(0);
    sub_100009548(v41, v43);
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v44;
    v45 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(9u, v45, v36, v54);
    sub_100009548(v49, v48);

    v35[7] = v47;
  }

  return result;
}

void sub_100162348()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_10000403C(v6, qword_1003A4F30);

  v24[1] = v7;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v10 = 136315394;
    v26 = 0xD000000000000010;
    v27 = 0x8000000100352690;
    String.append(_:)(*(v1 + 40));
    v11._countAndFlagsBits = 93;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = sub_100008F6C(v26, v27, v25);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528D0, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, v25);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v1 + 56))
  {
    v16 = *(v1 + 88);
    v17 = *(v1 + 96);
    v24[0] = sub_10000BE18((v1 + 64), v16);
    v18 = *(v1 + 24);
    v26 = *(v1 + 16);
    v27 = v18;

    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    String.append(_:)(*(v1 + 40));
    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v21 = v3;
    v23 = v22;

    (*(v21 + 8))(v5, v2);
    if (v23 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      (*(v17 + 48))(v20, v23, v16, v17);
      sub_10001A074(v20, v23);
      sub_100154914();

      *(v1 + 56) = 0;
    }
  }
}

void sub_1001627CC(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecCertificate(0);
  v6 = a1[3];
  v7 = a1[4];
  sub_1000094F4(v6, v7);
  v8 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v6, v7);
  if (v8)
  {
    SecCertificateNotValidAfter();
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_100162A64(a1[2], v5, 0);

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_10039D6E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A4F30);

    v17 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = sub_100151EF8();
      v15 = sub_100008F6C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v17, v10, "Invalid X.509 format (SEABAAS). Not renewing: %s", v11, 0xCu);
      sub_10000959C(v12);
    }

    else
    {
      v16 = v17;
    }
  }
}