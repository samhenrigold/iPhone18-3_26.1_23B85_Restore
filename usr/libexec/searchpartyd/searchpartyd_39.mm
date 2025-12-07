void sub_100460468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = type metadata accessor for Device();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177AD08);
  (*(v10 + 16))(v12, a2, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = a3;
    v28 = v18;
    v25 = v18;
    *v17 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = a2;
    v21 = a5;
    v23 = v22;
    (*(v10 + 8))(v12, v9);
    v24 = sub_1000136BC(v19, v23, &v28);
    a5 = v21;
    a2 = v20;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "FindMy pairing is not completed for %{public}s. Attempt to pair...", v17, 0xCu);
    sub_100007BAC(v25);

    a4 = v26;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_10044C750(a4, a5, a2, 1, _swiftEmptyArrayStorage);
}

Swift::Int sub_100460728(uint64_t *a1)
{
  v2 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B320D4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100460B5C(v6, type metadata accessor for OwnedBeaconGroup, sub_100461BE0, sub_100460CAC);
  *a1 = v3;
  return result;
}

Swift::Int sub_10046080C(uint64_t *a1)
{
  v2 = *(type metadata accessor for StandaloneBeacon(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B320E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100460B5C(v6, type metadata accessor for StandaloneBeacon, sub_100463B54, sub_10046197C);
  *a1 = v3;
  return result;
}

uint64_t sub_1004608F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v23 - v12;
  v14 = type metadata accessor for OwnedBeaconGroup(0);
  v15 = *(*(a2 + 32) + 24);
  v24 = a1 + *(v14 + 28);
  v25 = v15;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v16 = v26;
  if (v26)
  {
    v23[1] = v3;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C418);
    sub_100A245E8(0xD00000000000001ALL, 0x8000000101354C40);
    v18 = [*&v16[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = [*(a3 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = static UUID.== infix(_:_:)();
    v21 = *(v8 + 8);
    v21(v11, v7);
    v21(v13, v7);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

Swift::Int sub_100460B5C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_100460CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v109 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v100 - v15;
  __chkstk_darwin(v14);
  v114 = &v100 - v17;
  v126 = type metadata accessor for Date();
  v18 = *(v126 - 8);
  v19 = __chkstk_darwin(v126);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v125 = &v100 - v22;
  v118 = type metadata accessor for OwnedBeaconGroup(0);
  v23 = __chkstk_darwin(v118);
  v117 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v128 = (&v100 - v26);
  result = __chkstk_darwin(v25);
  v30 = (&v100 - v29);
  v102 = a2;
  if (a3 != a2)
  {
    v108 = v11;
    v124 = (v18 + 56);
    v127 = (v18 + 48);
    v31 = *a4;
    v107 = (v18 + 32);
    v120 = (v18 + 8);
    v32 = *(v28 + 72);
    v33 = v31 + v32 * (a3 - 1);
    v115 = -v32;
    v116 = v31;
    v34 = a1 - a3;
    v101 = v32;
    v35 = v31 + v32 * a3;
    v110 = xmmword_101385D80;
    v113 = v16;
    v36 = v114;
    v119 = v21;
    v121 = (&v100 - v29);
    do
    {
      v106 = a3;
      v103 = v35;
      v37 = v35;
      v104 = v34;
      v38 = v34;
      v105 = v33;
      while (1)
      {
        v123 = v38;
        sub_10046A814(v37, v30, type metadata accessor for OwnedBeaconGroup);
        sub_10046A814(v33, v128, type metadata accessor for OwnedBeaconGroup);
        v39 = objc_autoreleasePoolPush();
        v40 = *v30;
        v41 = v30[1];
        v42 = v41 >> 62;
        v122 = v37;
        if ((v41 >> 62) > 1)
        {
          if (v42 != 2 || *(v40 + 16) == *(v40 + 24))
          {
LABEL_18:
            v51 = v126;
LABEL_22:
            v63 = *v124;
            (*v124)(v36, 1, 1, v51);
            goto LABEL_23;
          }
        }

        else if (v42)
        {
          if (v40 == v40 >> 32)
          {
            goto LABEL_18;
          }
        }

        else if ((v41 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

        v43 = objc_autoreleasePoolPush();
        v44 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v40, v41);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v129 = 0;
        v46 = [v44 initForReadingFromData:isa error:&v129];

        if (!v46)
        {
          v54 = v129;
          v55 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v40, v41);
          v56 = static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v57 = swift_allocObject();
          *(v57 + 16) = v110;
          v129 = v55;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v58 = String.init<A>(describing:)();
          v60 = v59;
          *(v57 + 56) = &type metadata for String;
          *(v57 + 64) = sub_100008C00();
          *(v57 + 32) = v58;
          *(v57 + 40) = v60;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v46 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v46, "Unable to create unarchiver: %@", 31, 2, v57);

          v111 = 0;
LABEL_21:
          v36 = v114;
          v51 = v126;

          objc_autoreleasePoolPop(v43);
          v16 = v113;
          goto LABEL_22;
        }

        v47 = v129;
        sub_100016590(v40, v41);
        [v46 _enableStrictSecureDecodingMode];
        v48 = [objc_allocWithZone(CKRecord) initWithCoder:v46];
        if (!v48)
        {
          v61 = static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v62 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

          goto LABEL_21;
        }

        v49 = v48;

        objc_autoreleasePoolPop(v43);
        v50 = [v49 creationDate];

        v36 = v114;
        v51 = v126;
        if (v50)
        {
          v52 = v109;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = 0;
        }

        else
        {
          v53 = 1;
          v52 = v109;
        }

        v16 = v113;
        v63 = *v124;
        (*v124)(v52, v53, 1, v51);
        sub_1000D2AD8(v52, v36, &unk_101696900, &unk_10138B1E0);
        v64 = *v127;
        if ((*v127)(v36, 1, v51) != 1)
        {
          (*v107)(v125, v36, v51);
          goto LABEL_25;
        }

LABEL_23:
        Date.init()();
        v64 = *v127;
        if ((*v127)(v36, 1, v51) != 1)
        {
          sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
        }

LABEL_25:
        objc_autoreleasePoolPop(v39);
        v65 = objc_autoreleasePoolPush();
        v66 = v65;
        v67 = *v128;
        v68 = v128[1];
        v69 = v68 >> 62;
        if ((v68 >> 62) > 1)
        {
          if (v69 != 2 || *(v67 + 16) == *(v67 + 24))
          {
LABEL_36:
            v78 = v126;
LABEL_40:
            v63(v16, 1, 1, v78);
            v90 = v119;
            goto LABEL_41;
          }
        }

        else if (v69)
        {
          if (v67 == v67 >> 32)
          {
            goto LABEL_36;
          }
        }

        else if ((v68 & 0xFF000000000000) == 0)
        {
          goto LABEL_36;
        }

        v112 = v65;
        v70 = objc_autoreleasePoolPush();
        v71 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v67, v68);
        v72 = Data._bridgeToObjectiveC()().super.isa;
        v129 = 0;
        v73 = [v71 initForReadingFromData:v72 error:&v129];

        if (!v73)
        {
          v81 = v129;
          v82 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v67, v68);
          v83 = static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v84 = swift_allocObject();
          *(v84 + 16) = v110;
          v129 = v82;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v85 = String.init<A>(describing:)();
          v87 = v86;
          *(v84 + 56) = &type metadata for String;
          *(v84 + 64) = sub_100008C00();
          *(v84 + 32) = v85;
          *(v84 + 40) = v87;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v73 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v73, "Unable to create unarchiver: %@", 31, 2, v84);

          v111 = 0;
LABEL_39:
          v36 = v114;
          v78 = v126;

          objc_autoreleasePoolPop(v70);
          v66 = v112;
          v16 = v113;
          goto LABEL_40;
        }

        v74 = v129;
        sub_100016590(v67, v68);
        [v73 _enableStrictSecureDecodingMode];
        v75 = [objc_allocWithZone(CKRecord) initWithCoder:v73];
        if (!v75)
        {
          v88 = static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v89 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v89, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

          goto LABEL_39;
        }

        v76 = v75;

        objc_autoreleasePoolPop(v70);
        v77 = [v76 creationDate];

        v36 = v114;
        v78 = v126;
        if (v77)
        {
          v79 = v108;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = 0;
        }

        else
        {
          v80 = 1;
          v79 = v108;
        }

        v16 = v113;
        v63(v79, v80, 1, v78);
        sub_1000D2AD8(v79, v16, &unk_101696900, &unk_10138B1E0);
        if (v64(v16, 1, v78) != 1)
        {
          v91 = v36;
          v90 = v119;
          v92 = v16;
          (*v107)(v119, v16, v78);
          v66 = v112;
          goto LABEL_43;
        }

        v90 = v119;
        v66 = v112;
LABEL_41:
        v91 = v36;
        Date.init()();
        v92 = v16;
        if (v64(v16, 1, v78) != 1)
        {
          sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
        }

LABEL_43:
        objc_autoreleasePoolPop(v66);
        v93 = v125;
        v94 = Date.compare(_:)();
        v95 = *v120;
        (*v120)(v90, v78);
        v95(v93, v78);
        sub_10046B858(v128, type metadata accessor for OwnedBeaconGroup);
        v30 = v121;
        result = sub_10046B858(v121, type metadata accessor for OwnedBeaconGroup);
        if (v94 != 1)
        {
          break;
        }

        v96 = v123;
        if (!v116)
        {
          __break(1u);
        }

        v97 = v122;
        v98 = v117;
        sub_10046B7F0(v122, v117, type metadata accessor for OwnedBeaconGroup);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10046B7F0(v98, v33, type metadata accessor for OwnedBeaconGroup);
        v33 += v115;
        v37 = v97 + v115;
        v99 = __CFADD__(v96, 1);
        v38 = v96 + 1;
        v16 = v92;
        v36 = v91;
        if (v99)
        {
          goto LABEL_5;
        }
      }

      v16 = v92;
      v36 = v91;
LABEL_5:
      a3 = v106 + 1;
      v33 = v105 + v101;
      v34 = v104 - 1;
      v35 = v103 + v101;
    }

    while (v106 + 1 != v102);
  }

  return result;
}

uint64_t sub_10046197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StandaloneBeacon(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_10046A814(v23, v17, type metadata accessor for StandaloneBeacon);
      sub_10046A814(v20, v13, type metadata accessor for StandaloneBeacon);
      v24 = static Date.< infix(_:_:)();
      sub_10046B858(v13, type metadata accessor for StandaloneBeacon);
      result = sub_10046B858(v17, type metadata accessor for StandaloneBeacon);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10046B7F0(v23, v35, type metadata accessor for StandaloneBeacon);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10046B7F0(v25, v20, type metadata accessor for StandaloneBeacon);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100461BE0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v263 = a1;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v256 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v256 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v256 - v19;
  v21 = __chkstk_darwin(v18);
  v265 = &v256 - v22;
  v23 = __chkstk_darwin(v21);
  v264 = &v256 - v24;
  v25 = __chkstk_darwin(v23);
  v275 = &v256 - v26;
  __chkstk_darwin(v25);
  v274 = &v256 - v27;
  v295 = type metadata accessor for Date();
  v28 = *(v295 - 8);
  v29 = __chkstk_darwin(v295);
  v293 = &v256 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v300 = &v256 - v32;
  v33 = __chkstk_darwin(v31);
  v280 = &v256 - v34;
  v35 = __chkstk_darwin(v33);
  v282 = &v256 - v36;
  v37 = __chkstk_darwin(v35);
  v259 = &v256 - v38;
  __chkstk_darwin(v37);
  v261 = &v256 - v39;
  v292 = type metadata accessor for OwnedBeaconGroup(0);
  v276 = *(v292 - 8);
  v40 = __chkstk_darwin(v292);
  v268 = &v256 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v291 = &v256 - v43;
  v44 = __chkstk_darwin(v42);
  v303 = (&v256 - v45);
  v46 = __chkstk_darwin(v44);
  v299 = (&v256 - v47);
  v48 = __chkstk_darwin(v46);
  v286 = (&v256 - v49);
  v50 = __chkstk_darwin(v48);
  v281 = (&v256 - v51);
  v52 = __chkstk_darwin(v50);
  v258 = (&v256 - v53);
  __chkstk_darwin(v52);
  v260 = (&v256 - v54);
  v55 = a3[1];
  if (v55 >= 1)
  {
    v296 = v17;
    v56 = 0;
    v294 = (v28 + 8);
    v301 = (v28 + 56);
    v302 = (v28 + 48);
    v57 = _swiftEmptyArrayStorage;
    v279 = (v28 + 32);
    v284 = xmmword_101385D80;
    v257 = a3;
    v262 = a4;
    v278 = v11;
    v277 = v14;
    v288 = v20;
    v58 = v295;
LABEL_4:
    v269 = v57;
    v270 = v56;
    if (v56 + 1 >= v55)
    {
      v79 = v56 + 1;
      goto LABEL_69;
    }

    v283 = v55;
    v59 = *a3;
    v60 = *(v276 + 72);
    v61 = v5;
    v62 = *a3 + v60 * (v56 + 1);
    v63 = v260;
    sub_10046A814(v62, v260, type metadata accessor for OwnedBeaconGroup);
    v297 = v60;
    v64 = v59 + v60 * v56;
    v65 = v258;
    sub_10046A814(v64, v258, type metadata accessor for OwnedBeaconGroup);
    a4 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v63, v261);
    if (v61)
    {
      goto LABEL_225;
    }

    objc_autoreleasePoolPop(a4);
    v66 = objc_autoreleasePoolPush();
    v67 = v259;
    sub_100E7AB5C(v65, v259);
    v285 = 0;
    objc_autoreleasePoolPop(v66);
    v68 = v261;
    v290 = Date.compare(_:)();
    v69 = v295;
    v70 = *v294;
    (*v294)(v67, v295);
    v289 = v70;
    v70(v68, v69);
    v28 = type metadata accessor for OwnedBeaconGroup;
    sub_10046B858(v65, type metadata accessor for OwnedBeaconGroup);
    sub_10046B858(v260, type metadata accessor for OwnedBeaconGroup);
    v71 = v270 + 2;
    v72 = (v59 + v297 * (v270 + 2));
    v20 = v288;
    while (1)
    {
      v79 = v283;
      if (v283 == v71)
      {
LABEL_54:
        a3 = v257;
        a4 = v262;
        v5 = v285;
        if (v290 != 1)
        {
          goto LABEL_67;
        }

        if (v79 < v270)
        {
          goto LABEL_215;
        }

        if (v270 < v79)
        {
          v136 = v297 * (v79 - 1);
          v137 = v79 * v297;
          v138 = v79;
          v139 = v270;
          v140 = v270 * v297;
          do
          {
            if (v139 != --v138)
            {
              v141 = *a3;
              if (!*a3)
              {
                goto LABEL_221;
              }

              v142 = v79;
              v28 = v141 + v140;
              sub_10046B7F0(v141 + v140, v268, type metadata accessor for OwnedBeaconGroup);
              if (v140 < v136 || v28 >= v141 + v137)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v140 != v136)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10046B7F0(v268, v141 + v136, type metadata accessor for OwnedBeaconGroup);
              v20 = v288;
              v79 = v142;
            }

            ++v139;
            v136 -= v297;
            v137 -= v297;
            v140 += v297;
          }

          while (v139 < v138);
          a4 = v262;
          v58 = v295;
          v5 = v285;
        }

        else
        {
LABEL_67:
          v58 = v295;
        }

LABEL_69:
        v143 = a3[1];
        if (v79 >= v143)
        {
          goto LABEL_78;
        }

        if (__OFSUB__(v79, v270))
        {
          goto LABEL_214;
        }

        if (v79 - v270 >= a4)
        {
LABEL_78:
          v56 = v79;
          goto LABEL_79;
        }

        if (__OFADD__(v270, a4))
        {
          goto LABEL_216;
        }

        if ((v270 + a4) >= v143)
        {
          v144 = a3[1];
        }

        else
        {
          v144 = v270 + a4;
        }

        if (v144 >= v270)
        {
          if (v79 == v144)
          {
            goto LABEL_78;
          }

          v285 = v5;
          v189 = *a3;
          v190 = *(v276 + 72);
          v191 = (*a3 + v190 * (v79 - 1));
          v289 = -v190;
          v192 = v270 - v79;
          v290 = v189;
          v266 = v190;
          v193 = v189 + v79 * v190;
          v267 = v144;
LABEL_132:
          v283 = v79;
          v271 = v193;
          v272 = v192;
          v194 = v192;
          v273 = v191;
          while (2)
          {
            v297 = v194;
            v195 = v299;
            sub_10046A814(v193, v299, type metadata accessor for OwnedBeaconGroup);
            sub_10046A814(v191, v303, type metadata accessor for OwnedBeaconGroup);
            v298 = objc_autoreleasePoolPush();
            v196 = *v195;
            v197 = v195[1];
            v198 = v197 >> 62;
            if ((v197 >> 62) > 1)
            {
              v199 = v296;
              if (v198 == 2 && *(v196 + 16) != *(v196 + 24))
              {
                goto LABEL_141;
              }

LABEL_148:
              v219 = *v301;
              (*v301)(v20, 1, 1, v58);
              goto LABEL_149;
            }

            v199 = v296;
            if (v198)
            {
              if (v196 == v196 >> 32)
              {
                goto LABEL_148;
              }
            }

            else if ((v197 & 0xFF000000000000) == 0)
            {
              goto LABEL_148;
            }

LABEL_141:
            v200 = objc_autoreleasePoolPush();
            v201 = objc_allocWithZone(NSKeyedUnarchiver);
            sub_100017D5C(v196, v197);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v304 = 0;
            v203 = [v201 initForReadingFromData:isa error:&v304];

            if (v203)
            {
              v204 = v304;
              sub_100016590(v196, v197);
              [v203 _enableStrictSecureDecodingMode];
              v205 = [objc_allocWithZone(CKRecord) initWithCoder:v203];
              if (v205)
              {
                v206 = v205;

                objc_autoreleasePoolPop(v200);
                v207 = [v206 creationDate];

                v20 = v288;
                if (v207)
                {
                  v208 = v277;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v209 = 0;
                }

                else
                {
                  v209 = 1;
                  v208 = v277;
                }

                v58 = v295;
                v219 = *v301;
                (*v301)(v208, v209, 1, v295);
                sub_1000D2AD8(v208, v20, &unk_101696900, &unk_10138B1E0);
                v220 = *v302;
                if ((*v302)(v20, 1, v58) != 1)
                {
                  (*v279)(v300, v20, v58);
                  goto LABEL_151;
                }

LABEL_149:
                Date.init()();
                v220 = *v302;
                if ((*v302)(v20, 1, v58) != 1)
                {
                  sub_10000B3A8(v20, &unk_101696900, &unk_10138B1E0);
                }

LABEL_151:
                objc_autoreleasePoolPop(v298);
                v298 = objc_autoreleasePoolPush();
                v221 = *v303;
                v222 = v303[1];
                v223 = v222 >> 62;
                if ((v222 >> 62) > 1)
                {
                  if (v223 == 2 && *(v221 + 16) != *(v221 + 24))
                  {
                    goto LABEL_157;
                  }

LABEL_162:
                  v234 = v293;
                }

                else
                {
                  if (v223)
                  {
                    if (v221 == v221 >> 32)
                    {
                      goto LABEL_162;
                    }
                  }

                  else if ((v222 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_162;
                  }

LABEL_157:
                  v287 = v219;
                  v224 = objc_autoreleasePoolPush();
                  v225 = objc_allocWithZone(NSKeyedUnarchiver);
                  sub_100017D5C(v221, v222);
                  v226 = Data._bridgeToObjectiveC()().super.isa;
                  v304 = 0;
                  v227 = [v225 initForReadingFromData:v226 error:&v304];

                  if (v227)
                  {
                    v228 = v304;
                    sub_100016590(v221, v222);
                    [v227 _enableStrictSecureDecodingMode];
                    v229 = [objc_allocWithZone(CKRecord) initWithCoder:v227];
                    if (v229)
                    {
                      v230 = v229;

                      objc_autoreleasePoolPop(v224);
                      v231 = [v230 creationDate];

                      v199 = v296;
                      v20 = v288;
                      if (v231)
                      {
                        v232 = v278;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();

                        v233 = 0;
                      }

                      else
                      {
                        v233 = 1;
                        v232 = v278;
                      }

                      v58 = v295;
                      v234 = v293;
                      v287(v232, v233, 1, v295);
                      sub_1000D2AD8(v232, v199, &unk_101696900, &unk_10138B1E0);
                      if (v220(v199, 1, v58) != 1)
                      {
                        v250 = v199;
                        v244 = v20;
                        (*v279)(v234, v250, v58);
                        goto LABEL_170;
                      }

LABEL_167:
                      Date.init()();
                      if (v220(v199, 1, v58) == 1)
                      {
                        v244 = v20;
                      }

                      else
                      {
                        v245 = v199;
                        v244 = v20;
                        sub_10000B3A8(v245, &unk_101696900, &unk_10138B1E0);
                      }

LABEL_170:
                      objc_autoreleasePoolPop(v298);
                      v246 = v300;
                      v28 = Date.compare(_:)();
                      v247 = *v294;
                      (*v294)(v234, v58);
                      v247(v246, v58);
                      a4 = type metadata accessor for OwnedBeaconGroup;
                      sub_10046B858(v303, type metadata accessor for OwnedBeaconGroup);
                      sub_10046B858(v299, type metadata accessor for OwnedBeaconGroup);
                      if (v28 == 1)
                      {
                        v248 = v297;
                        if (!v290)
                        {
                          __break(1u);
LABEL_220:
                          __break(1u);
LABEL_221:
                          __break(1u);
LABEL_222:
                          __break(1u);
LABEL_223:
                          __break(1u);
                        }

                        v28 = type metadata accessor for OwnedBeaconGroup;
                        a4 = v291;
                        sub_10046B7F0(v193, v291, type metadata accessor for OwnedBeaconGroup);
                        swift_arrayInitWithTakeFrontToBack();
                        sub_10046B7F0(a4, v191, type metadata accessor for OwnedBeaconGroup);
                        v191 = v289 + v191;
                        v193 += v289;
                        v249 = __CFADD__(v248, 1);
                        v194 = v248 + 1;
                        v20 = v244;
                        if (v249)
                        {
                          goto LABEL_131;
                        }

                        continue;
                      }

                      v20 = v244;
LABEL_131:
                      v79 = v283 + 1;
                      v191 = &v273[v266];
                      v192 = v272 - 1;
                      v193 = v271 + v266;
                      v56 = v267;
                      if (v283 + 1 != v267)
                      {
                        goto LABEL_132;
                      }

                      a3 = v257;
                      v5 = v285;
LABEL_79:
                      if (v56 < v270)
                      {
                        goto LABEL_213;
                      }

                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v57 = v269;
                      }

                      else
                      {
                        v57 = sub_100A5B430(0, *(v269 + 2) + 1, 1, v269);
                      }

                      v28 = *(v57 + 2);
                      v145 = *(v57 + 3);
                      a4 = v28 + 1;
                      v146 = v5;
                      if (v28 >= v145 >> 1)
                      {
                        v57 = sub_100A5B430((v145 > 1), v28 + 1, 1, v57);
                      }

                      *(v57 + 2) = a4;
                      v147 = &v57[16 * v28];
                      *(v147 + 4) = v270;
                      *(v147 + 5) = v56;
                      v5 = *v263;
                      if (!*v263)
                      {
                        goto LABEL_223;
                      }

                      if (v28)
                      {
                        while (2)
                        {
                          v28 = a4 - 1;
                          if (a4 >= 4)
                          {
                            v152 = &v57[16 * a4 + 32];
                            v153 = *(v152 - 64);
                            v154 = *(v152 - 56);
                            v158 = __OFSUB__(v154, v153);
                            v155 = v154 - v153;
                            if (v158)
                            {
                              goto LABEL_200;
                            }

                            v157 = *(v152 - 48);
                            v156 = *(v152 - 40);
                            v158 = __OFSUB__(v156, v157);
                            v150 = v156 - v157;
                            v151 = v158;
                            if (v158)
                            {
                              goto LABEL_201;
                            }

                            v159 = &v57[16 * a4];
                            v161 = *v159;
                            v160 = *(v159 + 1);
                            v158 = __OFSUB__(v160, v161);
                            v162 = v160 - v161;
                            if (v158)
                            {
                              goto LABEL_203;
                            }

                            v158 = __OFADD__(v150, v162);
                            v163 = v150 + v162;
                            if (v158)
                            {
                              goto LABEL_206;
                            }

                            if (v163 >= v155)
                            {
                              v181 = &v57[16 * v28 + 32];
                              v183 = *v181;
                              v182 = *(v181 + 1);
                              v158 = __OFSUB__(v182, v183);
                              v184 = v182 - v183;
                              if (v158)
                              {
                                goto LABEL_210;
                              }

                              if (v150 < v184)
                              {
                                v28 = a4 - 2;
                              }
                            }

                            else
                            {
LABEL_99:
                              if (v151)
                              {
                                goto LABEL_202;
                              }

                              v164 = &v57[16 * a4];
                              v166 = *v164;
                              v165 = *(v164 + 1);
                              v167 = __OFSUB__(v165, v166);
                              v168 = v165 - v166;
                              v169 = v167;
                              if (v167)
                              {
                                goto LABEL_205;
                              }

                              v170 = &v57[16 * v28 + 32];
                              v172 = *v170;
                              v171 = *(v170 + 1);
                              v158 = __OFSUB__(v171, v172);
                              v173 = v171 - v172;
                              if (v158)
                              {
                                goto LABEL_208;
                              }

                              if (__OFADD__(v168, v173))
                              {
                                goto LABEL_209;
                              }

                              if (v168 + v173 < v150)
                              {
                                goto LABEL_113;
                              }

                              if (v150 < v173)
                              {
                                v28 = a4 - 2;
                              }
                            }
                          }

                          else
                          {
                            if (a4 == 3)
                            {
                              v148 = *(v57 + 4);
                              v149 = *(v57 + 5);
                              v158 = __OFSUB__(v149, v148);
                              v150 = v149 - v148;
                              v151 = v158;
                              goto LABEL_99;
                            }

                            v174 = &v57[16 * a4];
                            v176 = *v174;
                            v175 = *(v174 + 1);
                            v158 = __OFSUB__(v175, v176);
                            v168 = v175 - v176;
                            v169 = v158;
LABEL_113:
                            if (v169)
                            {
                              goto LABEL_204;
                            }

                            v177 = &v57[16 * v28];
                            v179 = *(v177 + 4);
                            v178 = *(v177 + 5);
                            v158 = __OFSUB__(v178, v179);
                            v180 = v178 - v179;
                            if (v158)
                            {
                              goto LABEL_207;
                            }

                            if (v180 < v168)
                            {
                              break;
                            }
                          }

                          v185 = v28 - 1;
                          if (v28 - 1 >= a4)
                          {
                            __break(1u);
LABEL_198:
                            __break(1u);
LABEL_199:
                            __break(1u);
LABEL_200:
                            __break(1u);
LABEL_201:
                            __break(1u);
LABEL_202:
                            __break(1u);
LABEL_203:
                            __break(1u);
LABEL_204:
                            __break(1u);
LABEL_205:
                            __break(1u);
LABEL_206:
                            __break(1u);
LABEL_207:
                            __break(1u);
LABEL_208:
                            __break(1u);
LABEL_209:
                            __break(1u);
LABEL_210:
                            __break(1u);
LABEL_211:
                            __break(1u);
LABEL_212:
                            __break(1u);
LABEL_213:
                            __break(1u);
LABEL_214:
                            __break(1u);
LABEL_215:
                            __break(1u);
LABEL_216:
                            __break(1u);
                            goto LABEL_217;
                          }

                          if (!*a3)
                          {
                            goto LABEL_220;
                          }

                          v186 = v57;
                          a4 = *&v57[16 * v185 + 32];
                          v187 = *&v57[16 * v28 + 40];
                          sub_1004644B8(*a3 + *(v276 + 72) * a4, *a3 + *(v276 + 72) * *&v57[16 * v28 + 32], (*a3 + *(v276 + 72) * v187), v5);
                          if (v146)
                          {
                            goto LABEL_196;
                          }

                          if (v187 < a4)
                          {
                            goto LABEL_198;
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v186 = sub_100B31E68(v186);
                          }

                          if (v185 >= *(v186 + 2))
                          {
                            goto LABEL_199;
                          }

                          v188 = &v186[16 * v185];
                          *(v188 + 4) = a4;
                          *(v188 + 5) = v187;
                          v305 = v186;
                          sub_100B31DDC(v28);
                          v57 = v305;
                          a4 = *(v305 + 2);
                          v58 = v295;
                          if (a4 <= 1)
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      v55 = a3[1];
                      a4 = v262;
                      v5 = v146;
                      v20 = v288;
                      if (v56 >= v55)
                      {
                        goto LABEL_185;
                      }

                      goto LABEL_4;
                    }

                    v242 = static os_log_type_t.error.getter();
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v243 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)(v242, &_mh_execute_header, v243, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);
                  }

                  else
                  {
                    v235 = v304;
                    v236 = _convertNSErrorToError(_:)();

                    swift_willThrow();
                    sub_100016590(v221, v222);
                    v237 = static os_log_type_t.error.getter();
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v238 = swift_allocObject();
                    *(v238 + 16) = v284;
                    v304 = v236;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v239 = String.init<A>(describing:)();
                    v241 = v240;
                    *(v238 + 56) = &type metadata for String;
                    *(v238 + 64) = sub_100008C00();
                    *(v238 + 32) = v239;
                    *(v238 + 40) = v241;
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v227 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)(v237, &_mh_execute_header, v227, "Unable to create unarchiver: %@", 31, 2, v238);

                    v285 = 0;
                  }

                  v199 = v296;
                  v20 = v288;

                  objc_autoreleasePoolPop(v224);
                  v58 = v295;
                  v234 = v293;
                  v219 = v287;
                }

                v219(v199, 1, 1, v58);
                goto LABEL_167;
              }

              v217 = static os_log_type_t.error.getter();
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v218 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v217, &_mh_execute_header, v218, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);
            }

            else
            {
              v210 = v304;
              v211 = _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_100016590(v196, v197);
              v212 = static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v213 = swift_allocObject();
              *(v213 + 16) = v284;
              v304 = v211;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v214 = String.init<A>(describing:)();
              v216 = v215;
              *(v213 + 56) = &type metadata for String;
              *(v213 + 64) = sub_100008C00();
              *(v213 + 32) = v214;
              *(v213 + 40) = v216;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v203 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v212, &_mh_execute_header, v203, "Unable to create unarchiver: %@", 31, 2, v213);

              v199 = v296;

              v285 = 0;
            }

            break;
          }

          v20 = v288;

          objc_autoreleasePoolPop(v200);
          v58 = v295;
          goto LABEL_148;
        }

LABEL_217:
        __break(1u);
LABEL_218:
        v251 = sub_100B31E68(a4);
        goto LABEL_188;
      }

      v298 = v72;
      v80 = v281;
      sub_10046A814(v72, v281, type metadata accessor for OwnedBeaconGroup);
      sub_10046A814(v62, v286, type metadata accessor for OwnedBeaconGroup);
      v81 = objc_autoreleasePoolPush();
      v82 = v81;
      v83 = *v80;
      v84 = v80[1];
      v85 = v84 >> 62;
      v86 = v295;
      if ((v84 >> 62) > 1)
      {
        if (v85 != 2 || *(v83 + 16) == *(v83 + 24))
        {
LABEL_21:
          v98 = v274;
LABEL_25:
          v108 = *v301;
          (*v301)(v98, 1, 1, v86);
          goto LABEL_26;
        }
      }

      else if (v85)
      {
        if (v83 == v83 >> 32)
        {
          goto LABEL_21;
        }
      }

      else if ((v84 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      v87 = v81;
      v88 = objc_autoreleasePoolPush();
      v89 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v83, v84);
      v90 = Data._bridgeToObjectiveC()().super.isa;
      v304 = 0;
      v91 = [v89 initForReadingFromData:v90 error:&v304];

      if (!v91)
      {
        break;
      }

      v92 = v304;
      sub_100016590(v83, v84);
      [v91 _enableStrictSecureDecodingMode];
      v93 = [objc_allocWithZone(CKRecord) initWithCoder:v91];
      if (!v93)
      {
        v106 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v107 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v106, &_mh_execute_header, v107, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_24;
      }

      v94 = v93;

      objc_autoreleasePoolPop(v88);
      v95 = [v94 creationDate];

      v20 = v288;
      v86 = v295;
      if (v95)
      {
        v96 = v264;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v97 = 0;
      }

      else
      {
        v97 = 1;
        v96 = v264;
      }

      v82 = v87;
      v108 = *v301;
      (*v301)(v96, v97, 1, v86);
      v134 = v96;
      v98 = v274;
      sub_1000D2AD8(v134, v274, &unk_101696900, &unk_10138B1E0);
      v109 = *v302;
      if ((*v302)(v98, 1, v86) != 1)
      {
        (*v279)(v282, v98, v86);
        goto LABEL_28;
      }

LABEL_26:
      Date.init()();
      v109 = *v302;
      if ((*v302)(v98, 1, v86) != 1)
      {
        sub_10000B3A8(v98, &unk_101696900, &unk_10138B1E0);
      }

LABEL_28:
      objc_autoreleasePoolPop(v82);
      v110 = objc_autoreleasePoolPush();
      v111 = v110;
      v113 = *v286;
      v112 = v286[1];
      v114 = v112 >> 62;
      if ((v112 >> 62) > 1)
      {
        if (v114 != 2 || *(v113 + 16) == *(v113 + 24))
        {
LABEL_39:
          v124 = v275;
LABEL_43:
          v108(v124, 1, 1, v86);
LABEL_44:
          v73 = v62;
          Date.init()();
          if (v109(v124, 1, v86) != 1)
          {
            sub_10000B3A8(v124, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_8;
        }
      }

      else if (v114)
      {
        if (v113 == v113 >> 32)
        {
          goto LABEL_39;
        }
      }

      else if ((v112 & 0xFF000000000000) == 0)
      {
        goto LABEL_39;
      }

      v287 = v110;
      v273 = objc_autoreleasePoolPush();
      v115 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v113, v112);
      v116 = Data._bridgeToObjectiveC()().super.isa;
      v304 = 0;
      v117 = [v115 initForReadingFromData:v116 error:&v304];

      if (!v117)
      {
        v125 = v304;
        v126 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v113, v112);
        v127 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v128 = swift_allocObject();
        *(v128 + 16) = v284;
        v304 = v126;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v129 = String.init<A>(describing:)();
        v131 = v130;
        *(v128 + 56) = &type metadata for String;
        *(v128 + 64) = sub_100008C00();
        *(v128 + 32) = v129;
        *(v128 + 40) = v131;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v117 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v127, &_mh_execute_header, v117, "Unable to create unarchiver: %@", 31, 2, v128);

        v20 = v288;

        v285 = 0;
LABEL_42:
        v111 = v287;

        objc_autoreleasePoolPop(v273);
        v124 = v275;
        v86 = v295;
        goto LABEL_43;
      }

      v118 = v304;
      sub_100016590(v113, v112);
      [v117 _enableStrictSecureDecodingMode];
      v119 = [objc_allocWithZone(CKRecord) initWithCoder:v117];
      if (!v119)
      {
        v132 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v133 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v132, &_mh_execute_header, v133, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_42;
      }

      v120 = v119;

      objc_autoreleasePoolPop(v273);
      v121 = [v120 creationDate];

      v111 = v287;
      if (v121)
      {
        v122 = v265;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v123 = 0;
      }

      else
      {
        v123 = 1;
        v122 = v265;
      }

      v86 = v295;
      v108(v122, v123, 1, v295);
      v135 = v122;
      v124 = v275;
      sub_1000D2AD8(v135, v275, &unk_101696900, &unk_10138B1E0);
      if (v109(v124, 1, v86) == 1)
      {
        goto LABEL_44;
      }

      v73 = v62;
      (*v279)(v280, v124, v86);
LABEL_8:
      v74 = v290 == 1;
      objc_autoreleasePoolPop(v111);
      v75 = v280;
      v76 = v282;
      v28 = Date.compare(_:)();
      v77 = v295;
      v78 = v289;
      v289(v75, v295);
      v78(v76, v77);
      sub_10046B858(v286, type metadata accessor for OwnedBeaconGroup);
      sub_10046B858(v281, type metadata accessor for OwnedBeaconGroup);
      ++v71;
      v72 = &v298[v297];
      v62 = v73 + v297;
      if (((v74 ^ (v28 != 1)) & 1) == 0)
      {
        v79 = v71 - 1;
        goto LABEL_54;
      }
    }

    v99 = v304;
    v100 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v83, v84);
    v101 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v102 = swift_allocObject();
    *(v102 + 16) = v284;
    v304 = v100;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v103 = String.init<A>(describing:)();
    v105 = v104;
    *(v102 + 56) = &type metadata for String;
    *(v102 + 64) = sub_100008C00();
    *(v102 + 32) = v103;
    *(v102 + 40) = v105;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v91 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v91, "Unable to create unarchiver: %@", 31, 2, v102);

    v285 = 0;
LABEL_24:
    v20 = v288;
    v86 = v295;

    objc_autoreleasePoolPop(v88);
    v98 = v274;
    v82 = v87;
    goto LABEL_25;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_185:
  v28 = *v263;
  if (*v263)
  {
    a4 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_218;
    }

    v251 = a4;
LABEL_188:
    v305 = v251;
    a4 = *(v251 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v252 = *&v251[16 * a4];
        v253 = v251;
        v254 = *&v251[16 * a4 + 24];
        sub_1004644B8(*a3 + *(v276 + 72) * v252, *a3 + *(v276 + 72) * *&v251[16 * a4 + 16], (*a3 + *(v276 + 72) * v254), v28);
        if (v5)
        {
          goto LABEL_196;
        }

        if (v254 < v252)
        {
          goto LABEL_211;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v253 = sub_100B31E68(v253);
        }

        if (a4 - 2 >= *(v253 + 2))
        {
          goto LABEL_212;
        }

        v255 = &v253[16 * a4];
        *v255 = v252;
        *(v255 + 1) = v254;
        v305 = v253;
        sub_100B31DDC(a4 - 1);
        v251 = v305;
        a4 = *(v305 + 2);
        if (a4 <= 1)
        {
          goto LABEL_196;
        }
      }

      goto LABEL_222;
    }

LABEL_196:
  }

  else
  {
    __break(1u);
LABEL_225:
    objc_autoreleasePoolPop(a4);
    __break(1u);
  }
}

uint64_t sub_100463B54(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for StandaloneBeacon(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_100465DA8(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_10046A814(v110 + v24 * v23, v18, type metadata accessor for StandaloneBeacon);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_10046A814(v26, v116, type metadata accessor for StandaloneBeacon);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_10046B858(v28, type metadata accessor for StandaloneBeacon);
      result = sub_10046B858(v18, type metadata accessor for StandaloneBeacon);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_10046A814(v30, v18, type metadata accessor for StandaloneBeacon);
        v31 = v116;
        sub_10046A814(v5, v116, type metadata accessor for StandaloneBeacon);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_10046B858(v31, type metadata accessor for StandaloneBeacon);
        result = sub_10046B858(v18, type metadata accessor for StandaloneBeacon);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_10046B7F0(v39 + v38, v107, type metadata accessor for StandaloneBeacon);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10046B7F0(v107, v39 + v33, type metadata accessor for StandaloneBeacon);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_100A5B430((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_100465DA8(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100B31E68(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_100B31DDC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_10046A814(v5, v18, type metadata accessor for StandaloneBeacon);
    v93 = v116;
    sub_10046A814(v90, v116, type metadata accessor for StandaloneBeacon);
    a4 = static Date.< infix(_:_:)();
    sub_10046B858(v93, type metadata accessor for StandaloneBeacon);
    result = sub_10046B858(v18, type metadata accessor for StandaloneBeacon);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for StandaloneBeacon;
    v94 = v115;
    sub_10046B7F0(v5, v115, type metadata accessor for StandaloneBeacon);
    swift_arrayInitWithTakeFrontToBack();
    sub_10046B7F0(v94, v90, type metadata accessor for StandaloneBeacon);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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

uint64_t sub_1004644B8(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v191 = &v188 - v13;
  v14 = __chkstk_darwin(v12);
  v201 = &v188 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v188 - v17;
  v19 = __chkstk_darwin(v16);
  v195 = &v188 - v20;
  v21 = __chkstk_darwin(v19);
  v194 = &v188 - v22;
  v23 = __chkstk_darwin(v21);
  v200 = &v188 - v24;
  __chkstk_darwin(v23);
  v199 = &v188 - v25;
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v206 = &v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v203 = &v188 - v31;
  v32 = __chkstk_darwin(v30);
  v209 = &v188 - v33;
  __chkstk_darwin(v32);
  v208 = &v188 - v34;
  v205 = type metadata accessor for OwnedBeaconGroup(0);
  v35 = __chkstk_darwin(v205);
  v210 = (&v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __chkstk_darwin(v35);
  v202 = (&v188 - v38);
  v39 = __chkstk_darwin(v37);
  v214 = (&v188 - v40);
  __chkstk_darwin(v39);
  v207 = (&v188 - v41);
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v213 = a1;
  v44 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_144;
  }

  v45 = a3;
  v46 = a3 - a2;
  if ((a3 - a2) == 0x8000000000000000 && v43 == -1)
  {
LABEL_145:
    __break(1u);
  }

  v217 = a4;
  v218 = v213;
  v211 = v26;
  if (v44 / v43 >= v46 / v43)
  {
    v190 = v11;
    v48 = v46 / v43 * v43;
    if (a4 < a2 || a2 + v48 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v116 = (a4 + v48);
    if (v48 < 1)
    {
LABEL_141:
      v218 = a2;
      v216 = v116;
      goto LABEL_142;
    }

    v117 = -v43;
    v209 = (v27 + 56);
    v214 = (v27 + 48);
    v189 = (v27 + 32);
    v195 = (v27 + 8);
    v192 = xmmword_101385D80;
    v118 = (a4 + v48);
    v212 = a4;
    v199 = v117;
    v119 = v213;
    *&v196 = v18;
LABEL_81:
    v188 = v116;
    v120 = a2;
    v121 = a2 + v117;
    v204 = a2 + v117;
    v198 = a2;
    while (1)
    {
      if (v120 <= v119)
      {
        v218 = v120;
        v216 = v188;
        goto LABEL_142;
      }

      v194 = v116;
      v208 = v118;
      v200 = &v118[v117];
      v122 = v202;
      sub_10046A814(&v118[v117], v202, type metadata accessor for OwnedBeaconGroup);
      sub_10046A814(v121, v210, type metadata accessor for OwnedBeaconGroup);
      v123 = objc_autoreleasePoolPush();
      v124 = *v122;
      v125 = v122[1];
      v126 = v125 >> 62;
      v207 = v45;
      if ((v125 >> 62) > 1)
      {
        v127 = v201;
        if (v126 != 2 || *(v124 + 16) == *(v124 + 24))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v127 = v201;
        if (v126)
        {
          if (v124 == v124 >> 32)
          {
            goto LABEL_100;
          }
        }

        else if ((v125 & 0xFF000000000000) == 0)
        {
          goto LABEL_100;
        }
      }

      v128 = objc_autoreleasePoolPush();
      v129 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v124, v125);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v216 = 0;
      v131 = [v129 initForReadingFromData:isa error:&v216];

      if (!v131)
      {
        break;
      }

      v132 = v216;
      sub_100016590(v124, v125);
      [v131 _enableStrictSecureDecodingMode];
      v133 = [objc_allocWithZone(CKRecord) initWithCoder:v131];
      if (!v133)
      {
        v145 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v146 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v145, &_mh_execute_header, v146, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_99;
      }

      v134 = v133;

      objc_autoreleasePoolPop(v128);
      v135 = [v134 creationDate];

      v127 = v201;
      v117 = v199;
      if (v135)
      {
        v136 = v191;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v137 = 0;
      }

      else
      {
        v137 = 1;
        v136 = v191;
      }

      v148 = *v209;
      v184 = v136;
      v185 = v136;
      v149 = v211;
      (*v209)(v184, v137, 1, v211);
      v186 = v185;
      v147 = v196;
      sub_1000D2AD8(v186, v196, &unk_101696900, &unk_10138B1E0);
      v150 = *v214;
      if ((*v214)(v147, 1, v149) != 1)
      {
        (*v189)(v203, v147, v149);
        goto LABEL_103;
      }

LABEL_101:
      Date.init()();
      v150 = *v214;
      if ((*v214)(v147, 1, v149) != 1)
      {
        sub_10000B3A8(v147, &unk_101696900, &unk_10138B1E0);
      }

LABEL_103:
      objc_autoreleasePoolPop(v123);
      v151 = objc_autoreleasePoolPush();
      v152 = *v210;
      v153 = v210[1];
      v154 = v153 >> 62;
      if ((v153 >> 62) > 1)
      {
        v155 = v211;
        if (v154 != 2 || *(v152 + 16) == *(v152 + 24))
        {
          goto LABEL_118;
        }
      }

      else
      {
        v155 = v211;
        if (v154)
        {
          if (v152 == v152 >> 32)
          {
            goto LABEL_118;
          }
        }

        else if ((v153 & 0xFF000000000000) == 0)
        {
          goto LABEL_118;
        }
      }

      v156 = objc_autoreleasePoolPush();
      v157 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v152, v153);
      v158 = Data._bridgeToObjectiveC()().super.isa;
      v216 = 0;
      v159 = [v157 initForReadingFromData:v158 error:&v216];

      if (!v159)
      {
        v193 = v156;
        v166 = v216;
        v167 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v152, v153);
        v168 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v169 = swift_allocObject();
        *(v169 + 16) = v192;
        v216 = v167;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v170 = String.init<A>(describing:)();
        v172 = v171;
        *(v169 + 56) = &type metadata for String;
        *(v169 + 64) = sub_100008C00();
        *(v169 + 32) = v170;
        *(v169 + 40) = v172;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v159 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v168, &_mh_execute_header, v159, "Unable to create unarchiver: %@", 31, 2, v169);

        v155 = v211;

        v197 = 0;
LABEL_117:
        v127 = v201;
        v117 = v199;

        objc_autoreleasePoolPop(v193);
LABEL_118:
        v148(v127, 1, 1, v155);
        goto LABEL_119;
      }

      v160 = v216;
      sub_100016590(v152, v153);
      [v159 _enableStrictSecureDecodingMode];
      v161 = [objc_allocWithZone(CKRecord) initWithCoder:v159];
      if (!v161)
      {
        v193 = v156;
        v173 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v174 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v173, &_mh_execute_header, v174, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_117;
      }

      v162 = v161;

      objc_autoreleasePoolPop(v156);
      v163 = [v162 creationDate];

      v127 = v201;
      v117 = v199;
      if (v163)
      {
        v164 = v190;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v165 = 0;
      }

      else
      {
        v165 = 1;
        v164 = v190;
      }

      v148(v164, v165, 1, v155);
      sub_1000D2AD8(v164, v127, &unk_101696900, &unk_10138B1E0);
      if (v150(v127, 1, v155) != 1)
      {
        (*v189)(v206, v127, v155);
        v121 = v204;
        goto LABEL_121;
      }

LABEL_119:
      v175 = v204;
      Date.init()();
      v176 = v150(v127, 1, v155);
      v121 = v175;
      if (v176 != 1)
      {
        sub_10000B3A8(v127, &unk_101696900, &unk_10138B1E0);
      }

LABEL_121:
      v177 = v207;
      v178 = (v207 + v117);
      objc_autoreleasePoolPop(v151);
      v179 = v206;
      v180 = v203;
      v181 = Date.compare(_:)();
      v182 = *v195;
      (*v195)(v179, v155);
      v182(v180, v155);
      sub_10046B858(v210, type metadata accessor for OwnedBeaconGroup);
      sub_10046B858(v202, type metadata accessor for OwnedBeaconGroup);
      if (v181 == 1)
      {
        v119 = v213;
        v45 = v178;
        if (v177 < v198 || v178 >= v198)
        {
          a2 = v121;
          swift_arrayInitWithTakeFrontToBack();
          v116 = v194;
          v117 = v199;
        }

        else
        {
          v116 = v194;
          v117 = v199;
          a2 = v121;
          if (v177 != v198)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v118 = v208;
        if (v208 <= v212)
        {
          goto LABEL_141;
        }

        goto LABEL_81;
      }

      v183 = v200;
      v116 = v200;
      v119 = v213;
      v45 = v178;
      if (v177 < v208 || v178 >= v208)
      {
        swift_arrayInitWithTakeFrontToBack();
        v117 = v199;
      }

      else
      {
        v117 = v199;
        if (v177 != v208)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v118 = v116;
      v120 = v198;
      if (v183 <= v212)
      {
        a2 = v198;
        goto LABEL_141;
      }
    }

    v138 = v216;
    v139 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v124, v125);
    v140 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v141 = swift_allocObject();
    *(v141 + 16) = v192;
    v216 = v139;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v142 = String.init<A>(describing:)();
    v144 = v143;
    *(v141 + 56) = &type metadata for String;
    *(v141 + 64) = sub_100008C00();
    *(v141 + 32) = v142;
    *(v141 + 40) = v144;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v131 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v140, &_mh_execute_header, v131, "Unable to create unarchiver: %@", 31, 2, v141);

    v197 = 0;
LABEL_99:
    v127 = v201;
    v117 = v199;

    objc_autoreleasePoolPop(v128);
LABEL_100:
    v147 = v196;
    v148 = *v209;
    v149 = v211;
    (*v209)(v196, 1, 1, v211);
    goto LABEL_101;
  }

  v47 = v44 / v43 * v43;
  if (a4 < v213 || v213 + v47 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != v213)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v203 = (a4 + v47);
  v216 = (a4 + v47);
  if (v47 >= 1 && a2 < a3)
  {
    v206 = (v27 + 56);
    v210 = (v27 + 48);
    v193 = (v27 + 32);
    v201 = (v27 + 8);
    v196 = xmmword_101385D80;
    v202 = a3;
    v198 = v43;
    while (1)
    {
      v50 = v207;
      sub_10046A814(a2, v207, type metadata accessor for OwnedBeaconGroup);
      v212 = a4;
      sub_10046A814(a4, v214, type metadata accessor for OwnedBeaconGroup);
      v51 = objc_autoreleasePoolPush();
      v52 = *v50;
      v53 = v50[1];
      v54 = v53 >> 62;
      if ((v53 >> 62) > 1)
      {
        if (v54 != 2 || *(v52 + 16) == *(v52 + 24))
        {
          goto LABEL_36;
        }
      }

      else if (v54)
      {
        if (v52 == v52 >> 32)
        {
          goto LABEL_36;
        }
      }

      else if ((v53 & 0xFF000000000000) == 0)
      {
        goto LABEL_36;
      }

      v55 = a2;
      v56 = objc_autoreleasePoolPush();
      v57 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v52, v53);
      v58 = Data._bridgeToObjectiveC()().super.isa;
      v215 = 0;
      v59 = [v57 initForReadingFromData:v58 error:&v215];

      if (!v59)
      {
        break;
      }

      v60 = v215;
      sub_100016590(v52, v53);
      [v59 _enableStrictSecureDecodingMode];
      v61 = [objc_allocWithZone(CKRecord) initWithCoder:v59];
      if (!v61)
      {
        v73 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v74 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v74, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_35;
      }

      v62 = v61;

      objc_autoreleasePoolPop(v56);
      v63 = [v62 creationDate];

      a2 = v55;
      if (v63)
      {
        v64 = v194;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = 0;
        v26 = v211;
      }

      else
      {
        v65 = 1;
        v26 = v211;
        v64 = v194;
      }

      v76 = *v206;
      (*v206)(v64, v65, 1, v26);
      v114 = v64;
      v75 = v199;
      sub_1000D2AD8(v114, v199, &unk_101696900, &unk_10138B1E0);
      v77 = *v210;
      if ((*v210)(v75, 1, v26) != 1)
      {
        (*v193)(v208, v75, v26);
        goto LABEL_39;
      }

LABEL_37:
      Date.init()();
      v77 = *v210;
      if ((*v210)(v75, 1, v26) != 1)
      {
        sub_10000B3A8(v75, &unk_101696900, &unk_10138B1E0);
      }

LABEL_39:
      objc_autoreleasePoolPop(v51);
      v78 = objc_autoreleasePoolPush();
      v79 = *v214;
      v80 = v214[1];
      v81 = v80 >> 62;
      if ((v80 >> 62) > 1)
      {
        if (v81 != 2 || *(v79 + 16) == *(v79 + 24))
        {
LABEL_50:
          v92 = v212;
LABEL_54:
          v102 = v200;
          v76(v200, 1, 1, v26);
LABEL_55:
          Date.init()();
          v103 = a2;
          if (v77(v102, 1, v26) != 1)
          {
            sub_10000B3A8(v102, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_57;
        }
      }

      else if (v81)
      {
        if (v79 == v79 >> 32)
        {
          goto LABEL_50;
        }
      }

      else if ((v80 & 0xFF000000000000) == 0)
      {
        goto LABEL_50;
      }

      v204 = a2;
      v82 = objc_autoreleasePoolPush();
      v83 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v79, v80);
      v84 = Data._bridgeToObjectiveC()().super.isa;
      v215 = 0;
      v85 = [v83 initForReadingFromData:v84 error:&v215];

      if (!v85)
      {
        v93 = v215;
        v94 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v79, v80);
        v95 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v96 = swift_allocObject();
        *(v96 + 16) = v196;
        v215 = v94;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v97 = String.init<A>(describing:)();
        v99 = v98;
        *(v96 + 56) = &type metadata for String;
        *(v96 + 64) = sub_100008C00();
        *(v96 + 32) = v97;
        *(v96 + 40) = v99;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v85 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v95, &_mh_execute_header, v85, "Unable to create unarchiver: %@", 31, 2, v96);

        v197 = 0;
LABEL_53:
        a2 = v204;

        objc_autoreleasePoolPop(v82);
        v26 = v211;
        v92 = v212;
        goto LABEL_54;
      }

      v86 = v215;
      sub_100016590(v79, v80);
      [v85 _enableStrictSecureDecodingMode];
      v87 = [objc_allocWithZone(CKRecord) initWithCoder:v85];
      if (!v87)
      {
        v100 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v101 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v100, &_mh_execute_header, v101, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

        goto LABEL_53;
      }

      v88 = v87;

      objc_autoreleasePoolPop(v82);
      v89 = [v88 creationDate];

      a2 = v204;
      if (v89)
      {
        v90 = v195;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v91 = 0;
        v26 = v211;
        v92 = v212;
      }

      else
      {
        v91 = 1;
        v26 = v211;
        v92 = v212;
        v90 = v195;
      }

      v76(v90, v91, 1, v26);
      v115 = v90;
      v102 = v200;
      sub_1000D2AD8(v115, v200, &unk_101696900, &unk_10138B1E0);
      if (v77(v102, 1, v26) == 1)
      {
        goto LABEL_55;
      }

      v103 = a2;
      (*v193)(v209, v102, v26);
LABEL_57:
      v104 = v202;
      objc_autoreleasePoolPop(v78);
      v106 = v208;
      v105 = v209;
      v107 = Date.compare(_:)();
      v108 = *v201;
      (*v201)(v105, v26);
      v108(v106, v26);
      sub_10046B858(v214, type metadata accessor for OwnedBeaconGroup);
      sub_10046B858(v207, type metadata accessor for OwnedBeaconGroup);
      if (v107 == 1)
      {
        v109 = v198;
        v110 = v103;
        a2 = v103 + v198;
        v111 = v213;
        if (v213 < v103 || v213 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v92;
        }

        else
        {
          a4 = v92;
          if (v213 != v110)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v109 = v198;
        v112 = v92 + v198;
        v111 = v213;
        a2 = v103;
        if (v213 < v92 || v213 >= v112)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v213 != v92)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v217 = v112;
        a4 = v92 + v109;
      }

      v113 = v111 + v109;
      v218 = v113;
      if (a4 < v203)
      {
        v213 = v113;
        if (a2 < v104)
        {
          continue;
        }
      }

      goto LABEL_142;
    }

    v66 = v215;
    v67 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v52, v53);
    v68 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v69 = swift_allocObject();
    *(v69 + 16) = v196;
    v215 = v67;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v70 = String.init<A>(describing:)();
    v72 = v71;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_100008C00();
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v59 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v59, "Unable to create unarchiver: %@", 31, 2, v69);

    v197 = 0;
LABEL_35:
    a2 = v55;

    objc_autoreleasePoolPop(v56);
    v26 = v211;
LABEL_36:
    v75 = v199;
    v76 = *v206;
    (*v206)(v199, 1, 1, v26);
    goto LABEL_37;
  }

LABEL_142:
  sub_10060AB5C(&v218, &v217, &v216);
  return 1;
}

uint64_t sub_100465DA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for StandaloneBeacon(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_10046A814(v30, v43, type metadata accessor for StandaloneBeacon);
          v32 = v44;
          sub_10046A814(v27, v44, type metadata accessor for StandaloneBeacon);
          v33 = static Date.< infix(_:_:)();
          sub_10046B858(v32, type metadata accessor for StandaloneBeacon);
          sub_10046B858(v31, type metadata accessor for StandaloneBeacon);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_10046A814(a2, v43, type metadata accessor for StandaloneBeacon);
        v21 = v44;
        sub_10046A814(a4, v44, type metadata accessor for StandaloneBeacon);
        v22 = static Date.< infix(_:_:)();
        sub_10046B858(v21, type metadata accessor for StandaloneBeacon);
        sub_10046B858(v20, type metadata accessor for StandaloneBeacon);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB74(&v48, &v47, &v46);
  return 1;
}

void *sub_1004662D8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_100466360(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1004662D8(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1004664D0(unint64_t *a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v41 = a1;
  v51 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v4 = __chkstk_darwin(v51);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v50 = (&v40 - v7);
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  v15 = 0;
  v52 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v42 = 0;
  v43 = v11 + 2;
  v22 = (v19 + 63) >> 6;
  v46 = v22;
  v47 = v11;
  v45 = v14;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_12:
    v44 = v23 | (v15 << 6);
    v26 = (v52[6] + 16 * v44);
    v27 = *v26;
    v28 = v26[1];
    sub_10046A814(v52[7] + *(v48 + 72) * v44, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
    v29 = v50;
    v30 = v51;
    *v50 = v27;
    *(v29 + 8) = v28;
    sub_10046A814(v14, v29 + *(v30 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_1000D2AD8(v29, v6, &qword_1016A4190, &unk_1013A3550);
    v32 = *v6;
    v31 = v6[1];
    sub_100017D5C(v27, v28);
    sub_100017D5C(v27, v28);
    sub_100016590(v32, v31);
    v33 = *(v30 + 48);
    v34 = v47;
    sub_10046A814(v6 + v33, v47, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10046B858(v34, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B858(v6 + v33, type metadata accessor for OwnedBeaconGroup.PairingState);
      v14 = v45;
      sub_10046B858(v45, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100016590(v27, v28);
      v22 = v46;
      v21 = v53;
    }

    else
    {
      v35 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v36 = v43[*(v35 + 48)];
      sub_10000B3A8(v34, &qword_1016A40D0, &unk_10138BE70);
      sub_10046B858(v6 + v33, type metadata accessor for OwnedBeaconGroup.PairingState);
      v37 = v45;
      sub_10046B858(v45, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100016590(v27, v28);
      v38 = v36 == 2;
      v14 = v37;
      v22 = v46;
      v21 = v53;
      if (v38)
      {
        *(v41 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return sub_10061C5F4(v41, v40, v42, v52);
        }
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_10061C5F4(v41, v40, v42, v52);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v53 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004668BC(unint64_t *a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v41 = a1;
  v51 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v4 = __chkstk_darwin(v51);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v50 = (&v40 - v7);
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  v15 = 0;
  v52 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v42 = 0;
  v43 = v11 + 2;
  v22 = (v19 + 63) >> 6;
  v46 = v22;
  v47 = v11;
  v45 = v14;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_12:
    v44 = v23 | (v15 << 6);
    v26 = (v52[6] + 16 * v44);
    v27 = *v26;
    v28 = v26[1];
    sub_10046A814(v52[7] + *(v48 + 72) * v44, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
    v29 = v50;
    v30 = v51;
    *v50 = v27;
    *(v29 + 8) = v28;
    sub_10046A814(v14, v29 + *(v30 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_1000D2AD8(v29, v6, &qword_1016A4190, &unk_1013A3550);
    v32 = *v6;
    v31 = v6[1];
    sub_100017D5C(v27, v28);
    sub_100017D5C(v27, v28);
    sub_100016590(v32, v31);
    v33 = *(v30 + 48);
    v34 = v47;
    sub_10046A814(v6 + v33, v47, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10046B858(v34, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B858(v6 + v33, type metadata accessor for OwnedBeaconGroup.PairingState);
      v14 = v45;
      sub_10046B858(v45, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100016590(v27, v28);
      v22 = v46;
      v21 = v53;
    }

    else
    {
      v35 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v36 = v43[*(v35 + 48)];
      sub_10000B3A8(v34, &qword_1016A40D0, &unk_10138BE70);
      sub_10046B858(v6 + v33, type metadata accessor for OwnedBeaconGroup.PairingState);
      v37 = v45;
      sub_10046B858(v45, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100016590(v27, v28);
      v38 = v36 == 1;
      v14 = v37;
      v22 = v46;
      v21 = v53;
      if (v38)
      {
        *(v41 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return sub_10061C5F4(v41, v40, v42, v52);
        }
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_10061C5F4(v41, v40, v42, v52);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v53 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100466CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_100466D68;

  return sub_10044EA7C(a3, a4);
}

uint64_t sub_100466D68(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100466E68, 0, 0);
}

void sub_100466E88(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v12 = 0xD000000000000010;
  v13 = 0x8000000101354BE0;
  v6._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v6);

  v7 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a2, v5, &unk_101696900, &unk_10138B1E0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v5, v8);
  }

  v11 = String._bridgeToObjectiveC()();

  [v7 setObject:isa forKey:v11];

  swift_unknownObjectRelease();
}

unint64_t sub_100467074(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608DD8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double *sub_1004670C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v22[2] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v23 = "lastPairingEvents";
  v31 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v25 = *(v8 + 104);
  v26 = v8 + 104;
  v25(v10);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  v34 = sub_100019D54(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v33 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  v22[1] = v5;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[6] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = "rvice.ClassicPairingSupport";
  v11 = v24;
  v12 = v25;
  (v25)(v10, v31, v24);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = "iringSupport.nameChangeQueue";
  (v12)(v10, v31, v11);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[8] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[10] = &_swiftEmptySetSingleton;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[14] = &_swiftEmptySetSingleton;
  v4[15] = &_swiftEmptySetSingleton;
  v4[16] = &_swiftEmptySetSingleton;
  v4[17] = 0;
  sub_1000BC4D4(&qword_1016A05E8, &qword_1013A36C0);
  swift_allocObject();
  v4[18] = PassthroughSubject.init()();
  swift_allocObject();
  v13 = PassthroughSubject.init()();
  v4[20] = 0;
  v4[21] = 0;
  v4[19] = v13;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010748E8(v35);
  v15 = v14;

  v4[22] = v15;
  OS_dispatch_queue.sync<A>(execute:)();
  v16 = sub_10107488C(v35);

  v4[23] = v16;
  v4[24] = _swiftEmptyDictionarySingleton;
  v17 = v28;
  v4[2] = v27;
  v4[3] = v17;
  v18 = v30;
  v4[4] = v29;
  v4[5] = v18;
  v19 = v4[6];
  type metadata accessor for QueueSynchronizer();
  swift_allocObject();

  v20 = v19;
  v4[9] = QueueSynchronizer.init(queue:)();
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v35 = 0x7365547265646E75;
  v36 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  return v4;
}

void sub_1004676B4(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v96 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v91 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v82 - v15;
  _Block_copy(a4);
  _Block_copy(a4);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_1000076D4(v17, qword_10177AD08);
  v19 = *(v12 + 16);
  v100 = a1;
  v88 = v19;
  v19(v16, a1, v11);

  v90 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v92 = v12;
  v93 = v11;
  if (v22)
  {
    v86 = v21;
    v87 = a3;
    v23 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock[0] = v85;
    *v23 = 136315394;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v89 = *(v12 + 8);
    v89(v16, v11);
    v27 = sub_1000136BC(v24, v26, aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = *(a2 + 16);
    if (v28)
    {
      v84 = a4;
      v102 = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v28, 0);
      v29 = v102;
      v83 = a2;
      v30 = (a2 + 40);
      do
      {
        v32 = *(v30 - 1);
        v31 = *v30;
        sub_100017D5C(v32, *v30);
        v33 = Data.hexString.getter();
        v35 = v34;
        sub_100016590(v32, v31);
        v102 = v29;
        v37 = v29[2];
        v36 = v29[3];
        if (v37 >= v36 >> 1)
        {
          sub_101123BB8((v36 > 1), v37 + 1, 1);
          v29 = v102;
        }

        v30 += 2;
        v29[2] = v37 + 1;
        v38 = &v29[2 * v37];
        v38[4] = v33;
        v38[5] = v35;
        --v28;
      }

      while (v28);
      a4 = v84;
      a2 = v83;
    }

    v40 = Array.description.getter();
    v42 = v41;

    v43 = sub_1000136BC(v40, v42, aBlock);

    *(v23 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v20, v86, "forceRePairing: %s, forcePairSerialNumber: %s", v23, 0x16u);
    swift_arrayDestroy();

    a3 = v87;
  }

  else
  {

    v89 = *(v12 + 8);
    v39 = (v89)(v16, v11);
  }

  __chkstk_darwin(v39);
  v44 = v100;
  *(&v82 - 2) = v100;
  *(&v82 - 1) = v45;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v46 = aBlock[0];
  if (aBlock[0])
  {
    v100 = *(a3 + 48);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = v46;
    v48[4] = a2;
    aBlock[4] = sub_1004681D8;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161D3B0;
    v49 = _Block_copy(aBlock);

    v50 = v46;
    v51 = v94;
    static DispatchQoS.unspecified.getter();
    v102 = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v52 = v96;
    v53 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v49);
    (*(v98 + 8))(v52, v53);
    (*(v95 + 8))(v51, v97);

    a4[2](a4, 0);
  }

  else
  {
    v54 = v91;
    v55 = v93;
    v88(v91, v44, v93);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136315394;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v89(v54, v55);
      v63 = sub_1000136BC(v60, v62, aBlock);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2080;
      v64 = a2;
      v65 = *(a2 + 16);
      if (v65)
      {
        v100 = v59;
        v84 = a4;
        v102 = _swiftEmptyArrayStorage;
        sub_101123BB8(0, v65, 0);
        v66 = v102;
        v67 = (v64 + 40);
        do
        {
          v68 = *(v67 - 1);
          v69 = *v67;
          sub_100017D5C(v68, *v67);
          v70 = Data.hexString.getter();
          v72 = v71;
          sub_100016590(v68, v69);
          v102 = v66;
          v74 = v66[2];
          v73 = v66[3];
          if (v74 >= v73 >> 1)
          {
            sub_101123BB8((v73 > 1), v74 + 1, 1);
            v66 = v102;
          }

          v67 += 2;
          v66[2] = v74 + 1;
          v75 = &v66[2 * v74];
          v75[4] = v70;
          v75[5] = v72;
          --v65;
        }

        while (v65);
        a4 = v84;
      }

      v76 = Array.description.getter();
      v78 = v77;

      v79 = sub_1000136BC(v76, v78, aBlock);

      *(v58 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v56, v57, "Could not retreive peripheral for forceRePairing: %s, forcePairSerialNumber: %s", v58, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v89(v54, v55);
    }

    sub_100468184();
    swift_allocError();
    *v80 = 0;
    _Block_copy(a4);
    v81 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v81);

    _Block_release(a4);
  }

  _Block_release(a4);
  _Block_release(a4);
}

unint64_t sub_100468184()
{
  result = qword_1016A04C0;
  if (!qword_1016A04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A04C0);
  }

  return result;
}

unint64_t sub_1004682F0()
{
  result = qword_1016AF9C0;
  if (!qword_1016AF9C0)
  {
    sub_100008BB8(255, &qword_101695570, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF9C0);
  }

  return result;
}

uint64_t sub_1004683F0(uint64_t a1)
{
  v3 = *(type metadata accessor for Device() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_10044B998(a1, v6, v7, v1 + v4, v8, v10, v11);
}

uint64_t sub_1004684A4()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 9);
}

uint64_t sub_10046859C()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_10044BBC0(v7, v8, v0 + v3, v6, v9, v10);
}

void sub_1004686D4()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_10044C488(v6, v0 + v2, v5, v7, v9, v10);
}

uint64_t sub_1004687B8(uint64_t a1)
{
  v3 = *(type metadata accessor for Device() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10044AC28(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1004688A8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100466CA8(a1, v1 + 16, v4, v5);
}

uint64_t sub_10046896C()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = v6 + v5;
  v8 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);
  v10 = *(v0 + 16);
  v11 = *(v0 + v8 + 8);
  v12 = *(v0 + v8 + 16);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_100014744;

  return sub_10045A088(v10, v0 + v4, v0 + v6, v9, v11, v12);
}

uint64_t sub_100468AA0(uint64_t a1)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100014744;

  return sub_1000E5758(a1, v8, v9, v1 + v5, v1 + v7, v11, v12, v13);
}

uint64_t sub_100468C00()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100443754(v4, v5, v0 + v3, v6);
}

void sub_100468D34()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  Transaction.capture()();
  sub_1004490E8(v3, v0 + v2, 1, 0, v4);
}

uint64_t sub_100468E08(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100466CA8(a1, v1 + 16, v4, v5);
}

uint64_t sub_100468ECC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100441814(v2, v3);
}

uint64_t sub_100469018(void (*a1)(void))
{
  v3 = type metadata accessor for Device();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v1 + v5, v3);
  a1(*(v1 + v6));

  return _swift_deallocObject(v1, v6 + 8);
}

uint64_t sub_100469110(unint64_t *a1)
{
  v3 = *(type metadata accessor for Device() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10045BFC8(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_1004691B4()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_10045C1F0(v4, v5, v6, v7, v0 + v3, v8);
}

double sub_1004692DC(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

uint64_t sub_1004692EC()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 40) >= 3uLL)
  {
  }

  v5 = (v3 + 48) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1004693E4()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10045C6A0(v3, v4, v5, v6, v0 + v2, v7);
}

uint64_t sub_100469478()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_10045FBB8(v5, v6, v0 + v3, v7, v8);
}

unint64_t sub_1004695BC()
{
  result = qword_1016A05C0;
  if (!qword_1016A05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A05C0);
  }

  return result;
}

void sub_10046964C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Device() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  sub_10045F6E4(a1, a2 & 1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1004696F4()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_10045E6E0(v6, v7, v0 + v2, v4, v5);
}

void sub_100469790(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100454AF8(a1, a2 & 1, v2 + v6, v10, v2 + v9, v11);
}

uint64_t sub_1004698B4(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100455170(a1, v1 + v5);
}

uint64_t sub_100469990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v79 = a6;
  v80 = a5;
  v72 = a3;
  v78 = a1;
  v77 = type metadata accessor for BeaconIdentifier(0);
  v8 = __chkstk_darwin(v77);
  v76 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v74 = &v70 - v10;
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v75 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v70 - v22;
  __chkstk_darwin(v21);
  v25 = &v70 - v24;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v26 = sub_1010748CC(v82);

  v71 = v26;
  v27 = v26;
  static Date.trustedNow.getter(v25);
  v73 = a2;
  v81 = v25;
  Date.timeIntervalSince(_:)();
  v29 = v28;
  sub_1000D2A70(a4, v16, &unk_101696900, &unk_10138B1E0);
  v30 = *(v18 + 48);
  if (v30(v16, 1, v17) == 1)
  {
    (*(v18 + 16))(v23, v72, v17);
    if (v30(v16, 1, v17) != 1)
    {
      sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
  }

  Date.timeIntervalSince(_:)();
  v32 = v31;
  v33 = *(v18 + 8);
  v33(v23, v17);
  if (v32 <= v27 || v29 <= v27)
  {
    sub_1000D2A70(a4, v14, &unk_101696900, &unk_10138B1E0);
    if (v30(v14, 1, v17) == 1)
    {
      sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
      v35 = 0xE500000000000000;
      v36 = 0x726576654ELL;
    }

    else
    {
      v36 = Date.description.getter();
      v35 = v49;
      v33(v14, v17);
    }

    v50 = v75;
    v51 = v76;
    v76 = v33;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_10177AD08);
    sub_10046A814(v78, v51, type metadata accessor for BeaconIdentifier);
    (*(v18 + 16))(v50, v73, v17);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = v51;
      v56 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v82 = v78;
      *v56 = 141558787;
      *(v56 + 4) = 1752392040;
      *(v56 + 12) = 2081;
      type metadata accessor for UUID();
      v77 = v36;
      sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_10046B858(v55, type metadata accessor for BeaconIdentifier);
      v60 = sub_1000136BC(v57, v59, &v82);

      *(v56 + 14) = v60;
      *(v56 + 22) = 2082;
      sub_100019D54(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v64 = v76;
      v76(v50, v17);
      v65 = sub_1000136BC(v61, v63, &v82);

      *(v56 + 24) = v65;
      *(v56 + 32) = 2080;
      v66 = sub_1000136BC(v77, v35, &v82);

      *(v56 + 34) = v66;
      _os_log_impl(&_mh_execute_header, v53, v54, "Not force pairing %{private,mask.hash}s: lastObserved: %{public}s lastForcePaired: %s", v56, 0x2Au);
      swift_arrayDestroy();

      v37 = v64;
    }

    else
    {

      v67 = v50;
      v37 = v76;
      v76(v67, v17);
      sub_10046B858(v51, type metadata accessor for BeaconIdentifier);
    }

    v48 = 0;
  }

  else
  {
    v37 = v33;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177AD08);
    v39 = v74;
    sub_10046A814(v78, v74, type metadata accessor for BeaconIdentifier);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v82 = v43;
      *v42 = 141558531;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      sub_10046B858(v39, type metadata accessor for BeaconIdentifier);
      v47 = sub_1000136BC(v44, v46, &v82);

      *(v42 + 14) = v47;
      *(v42 + 22) = 2048;
      *(v42 + 24) = v71;
      _os_log_impl(&_mh_execute_header, v40, v41, "shouldForcePair beacon %{private,mask.hash}s threshold: %ld seconds", v42, 0x20u);
      sub_100007BAC(v43);
    }

    else
    {

      sub_10046B858(v39, type metadata accessor for BeaconIdentifier);
    }

    v48 = 1;
  }

  v68 = v81;
  v80(v48, 0);
  return v37(v68, v17);
}

uint64_t sub_10046A2EC()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10046A3E4()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_10045E8C0(v5, v6, v0 + v3, v7, v8);
}

uint64_t sub_10046A508()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  return sub_100456EE4(v3, v4, v5, v0 + v2, v7, v8);
}

void sub_10046A5AC()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  Transaction.capture()();
  sub_10044C750(v3, v4, v0 + v2, 1, v5);
}

uint64_t sub_10046A674()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

void sub_10046A778()
{
  v1 = *(type metadata accessor for Device() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100460468(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10046A814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10046A87C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for StandaloneBeacon(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1004425E4(a1, a2 & 1, v6, v7);
}

uint64_t sub_10046A900(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StandaloneBeacon(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1004558B8(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t sub_10046AA68()
{
  v1 = (type metadata accessor for StandaloneBeacon(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = v1[7];
  v7 = type metadata accessor for MACAddress();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2 + v6, v7);
  v8(v0 + v2 + v1[8], v7);

  v9 = v1[10];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  sub_100016590(*(v4 + v1[11]), *(v4 + v1[11] + 8));
  v11 = v0 + v2 + v1[12];
  sub_100016590(*v11, *(v11 + 8));
  sub_100016590(*(v11 + 16), *(v11 + 24));
  sub_100016590(*(v11 + 32), *(v11 + 40));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10046ACBC()
{
  v1 = *(type metadata accessor for StandaloneBeacon(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);

  return sub_1004589B8(v0 + v2, v5, v6, v7);
}

uint64_t sub_10046AD70()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v6 + v4) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v6, v1);
  if (*(v0 + v7 + 8))
  {
  }

  return _swift_deallocObject(v0, v7 + 24);
}

void sub_10046AE80(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

void sub_10046AEB8()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10043C154((v0 + v2), v4, v5);
}

uint64_t sub_10046AF74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1004391DC(v2, v3);
}

uint64_t sub_10046B05C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_10043819C(a1, v1);
}

uint64_t sub_10046B0F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_10046B1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100437B0C();
}

uint64_t sub_10046B284(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

void sub_10046B308(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10043691C(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_10046B3CC(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_10043247C(a1, v1 + v5);
}

uint64_t sub_10046B4A8()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10046B530(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100432840(a1, v1 + v5);
}

uint64_t sub_10046B640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100432D90(a1, v4, v5, v6);
}

uint64_t sub_10046B6F4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_10046B73C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10042EC4C();
}

uint64_t sub_10046B7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10046B858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10046B8B8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v5 + 8);
}

uint64_t sub_10046B988(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v5);
}

unint64_t sub_10046BA30()
{
  result = qword_1016A06E0;
  if (!qword_1016A06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A06E0);
  }

  return result;
}

unint64_t sub_10046BA84()
{
  result = qword_1016A06E8;
  if (!qword_1016A06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A06E8);
  }

  return result;
}

unint64_t sub_10046BAEC()
{
  result = qword_1016A06F0;
  if (!qword_1016A06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A06F0);
  }

  return result;
}

unint64_t sub_10046BB40()
{
  result = qword_1016A06F8;
  if (!qword_1016A06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A06F8);
  }

  return result;
}

uint64_t sub_10046BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v5[27] = type metadata accessor for PencilSecureLocationsFetchEndpoint(0);
  v5[28] = swift_task_alloc();
  type metadata accessor for SearchpartyAccount(0);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_10046BD90, v4, 0);
}

uint64_t sub_10046BD90()
{
  v0[31] = *(v0[26] + 112);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_10046BE30;
  v2 = v0[30];

  return sub_100300A9C(v2);
}

uint64_t sub_10046BE30()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_10046C198;
  }

  else
  {
    v4 = sub_10046BF5C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10046BF5C()
{
  v1 = v0[30];
  v0[34] = v1[2];
  v0[35] = v1[3];
  v0[36] = v1[4];
  v0[37] = v1[5];

  sub_10046C860(v1, type metadata accessor for SearchpartyAccount);
  type metadata accessor for ServerInteractionController();
  v0[38] = ServerInteractionController.__allocating_init(bundleIdentifier:)();
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_10046C06C;
  v3 = v0[29];

  return sub_100300A9C(v3);
}

uint64_t sub_10046C06C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_10046C518;
  }

  else
  {
    v4 = sub_10046C218;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10046C198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10046C218()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v14 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);
  sub_101251A08(*(v0 + 232), v3);
  *(v0 + 40) = v4;
  *(v0 + 48) = sub_10046C750();
  v8 = sub_1000280DC((v0 + 16));
  sub_10046C7A8(v3, v8);
  *(v0 + 80) = &type metadata for PencilSecureLocationsFetchRequest;
  v9 = sub_10046C80C();
  *(v0 + 56) = v7;
  *(v0 + 88) = v9;
  *(v0 + 64) = v6;
  *(v0 + 72) = v5;
  *(v0 + 120) = &type metadata for SearchpartyCredential;
  *(v0 + 128) = sub_100132C84();
  v10 = swift_allocObject();
  *(v0 + 96) = v10;
  *(v10 + 16) = v14;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  sub_10002E98C(v7, v6);
  v15 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));

  v11 = swift_task_alloc();
  *(v0 + 328) = v11;
  *v11 = v0;
  v11[1] = sub_10046C3B8;
  v12 = *(v0 + 176);

  return v15(v12, v0 + 16, v0 + 56, v0 + 96, v0 + 136);
}

uint64_t sub_10046C3B8()
{
  v2 = *v1;
  v2[42] = v0;

  sub_10000B3A8((v2 + 17), &qword_1016978B0, &qword_1013A3960);
  if (v0)
  {
    v3 = v2[26];
    v4 = sub_10046C65C;
  }

  else
  {
    v5 = v2[26];
    sub_10000B3A8((v2 + 12), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 7);
    sub_100007BAC(v2 + 2);
    v4 = sub_10046C5B4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10046C518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10046C5B4()
{
  v1 = *(v0 + 224);

  sub_10046C860(v1, type metadata accessor for PencilSecureLocationsFetchEndpoint);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10046C65C()
{
  v1 = v0[28];

  sub_10046C860(v1, type metadata accessor for PencilSecureLocationsFetchEndpoint);
  sub_10000B3A8((v0 + 12), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 7);
  sub_100007BAC(v0 + 2);

  v2 = v0[1];

  return v2();
}

unint64_t sub_10046C750()
{
  result = qword_1016A07B8;
  if (!qword_1016A07B8)
  {
    type metadata accessor for PencilSecureLocationsFetchEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07B8);
  }

  return result;
}

uint64_t sub_10046C7A8(uint64_t a1, uint64_t a2)
{
  Endpoint = type metadata accessor for PencilSecureLocationsFetchEndpoint(0);
  (*(*(Endpoint - 8) + 16))(a2, a1, Endpoint);
  return a2;
}

unint64_t sub_10046C80C()
{
  result = qword_1016A07C0;
  if (!qword_1016A07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07C0);
  }

  return result;
}

uint64_t sub_10046C860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10046C8E0()
{
  result = qword_1016A07C8;
  if (!qword_1016A07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07C8);
  }

  return result;
}

uint64_t sub_10046C934(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 80;
  }

  else
  {
    v2 = 84;
  }

  if (*a2)
  {
    v3 = 80;
  }

  else
  {
    v3 = 84;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10046C9A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10046CA04(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10046CA48(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10046CAA4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101608EF8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10046CB04(uint64_t *a1@<X8>)
{
  v2 = 84;
  if (*v1)
  {
    v2 = 80;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_10046CB24()
{
  if (*v0)
  {
    return 80;
  }

  else
  {
    return 84;
  }
}

uint64_t sub_10046CB40@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101608EF8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10046CBA4(uint64_t a1)
{
  v2 = sub_10046D258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046CBE0(uint64_t a1)
{
  v2 = sub_10046D258();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046CCCC(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A07E8, &qword_1013A3B78);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_10046D258();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((a3 & 0x2000000000000000) != 0)
  {
    LOBYTE(v14) = 1;
    v16 = 0;
    sub_10046D300();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v3)
    {
      v12 = a3 & 0xDFFFFFFFFFFFFFFFLL;
      v14 = a2;
      v15 = a3 & 0xDFFFFFFFFFFFFFFFLL;
      v16 = 1;
      v11 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v16 = 0;
    sub_10046D300();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v3)
    {
      v14 = a2;
      v15 = a3;
      v16 = 1;
      v11 = a2;
      v12 = a3;
LABEL_6:
      sub_100017D5C(v11, v12);
      sub_1000E3190();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v14, v15);
    }
  }

  return (*(v8 + 8))(v10, v7);
}

void *sub_10046CEE0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10046CFF0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_10046CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      sub_100029784(a1, a2);
      sub_100029784(a3, a4);
      v9 = a2 & 0xDFFFFFFFFFFFFFFFLL;
      v11 = a4 & 0xDFFFFFFFFFFFFFFFLL;
      v8 = a1;
      v10 = a3;
      goto LABEL_7;
    }
  }

  else if ((a4 & 0x2000000000000000) == 0)
  {
    sub_100029784(a1, a2);
    sub_100029784(a3, a4);
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
LABEL_7:
    v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9, v10, v11);
    sub_10001E524(a3, a4);
    sub_10001E524(a1, a2);
    return v12;
  }

  return 0;
}

void *sub_10046CFF0(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A07D0, &qword_1013A3B70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_10046D258();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    sub_10046D2AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = 1;
    if (v10)
    {
      sub_1000E307C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v7 = sub_10049BD68(v10, v11);
    }

    else
    {
      sub_1000E307C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v7 = sub_10049C0AC(v10, v11);
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_10046D258()
{
  result = qword_1016A07D8;
  if (!qword_1016A07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07D8);
  }

  return result;
}

unint64_t sub_10046D2AC()
{
  result = qword_1016A07E0;
  if (!qword_1016A07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07E0);
  }

  return result;
}

unint64_t sub_10046D300()
{
  result = qword_1016A07F0;
  if (!qword_1016A07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07F0);
  }

  return result;
}

unint64_t sub_10046D378()
{
  result = qword_1016A07F8;
  if (!qword_1016A07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A07F8);
  }

  return result;
}

unint64_t sub_10046D3D0()
{
  result = qword_1016A0800;
  if (!qword_1016A0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0800);
  }

  return result;
}

unint64_t sub_10046D428()
{
  result = qword_1016A0808;
  if (!qword_1016A0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0808);
  }

  return result;
}

unint64_t sub_10046D480()
{
  result = qword_1016A0810;
  if (!qword_1016A0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0810);
  }

  return result;
}

unint64_t sub_10046D4D4()
{
  result = qword_1016A0818;
  if (!qword_1016A0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0818);
  }

  return result;
}

uint64_t sub_10046D528()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AD20);
  sub_1000076D4(v0, qword_10177AD20);
  return Logger.init(subsystem:category:)();
}

id sub_10046D5AC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = type metadata accessor for UnknownDiscoveryTrampoline();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC12searchpartyd26UnknownDiscoveryTrampoline_implementation] = v0;
    v9.receiver = v4;
    v9.super_class = v3;

    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 56);
    *(v0 + 56) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_10046D648()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_10046EABC;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161E3B0;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_10046D89C(uint64_t a1)
{
  v2 = type metadata accessor for XPCServiceDescription();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MachServiceName();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 40);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  MachServiceName.init(_:)();
  (*(v6 + 16))(v9, v11, v5);
  sub_10046D5AC();
  if (qword_101694710 != -1)
  {
LABEL_5:
    swift_once();
  }

  v18 = qword_1016A0820;
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 interfaceWithProtocol:&OBJC_PROTOCOL___SPUnknownDiscoveryXPCClientProtocol];
  swift_retain_n();
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  (*(v23 + 8))(v4, v24);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_10046DC38(void *a1)
{
  v2 = v1;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD20);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "shouldAccept: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10047020C();
  v11 = NSXPCConnection.hasEntitlement<A>(_:)();
  if (v11)
  {
    v12 = *(v2 + 40);
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v5;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100470260;
    *(v14 + 24) = v13;
    v25[4] = sub_10040B9F8;
    v25[5] = v14;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_10013FE14;
    v25[3] = &unk_10161E590;
    v15 = _Block_copy(v25);
    v16 = v5;

    dispatch_sync(v12, v15);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v11 & 1;
    }

    __break(1u);
  }

  v18 = v5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Missing entitlement: %@", v21, 0xCu);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);
  }

  return v11 & 1;
}

uint64_t sub_10046DF98(void *a1)
{
  v2 = v1;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD20);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "interruptionHandler: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = *(v2 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1004701E4;
  *(v13 + 24) = v12;
  v18[4] = sub_10040B9F8;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013FE14;
  v18[3] = &unk_10161E518;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046E20C(void *a1)
{
  v2 = v1;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD20);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "invalidationHandler: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = *(v2 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100470304;
  *(v13 + 24) = v12;
  v18[4] = sub_1000D2FB0;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013FE14;
  v18[3] = &unk_10161E428;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10046E480()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPUnknownDiscoveryXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016A0820 = v2;
}

uint64_t sub_10046E4E8(void *a1, void *a2)
{
  if (!a1[8])
  {
    v4 = a1[4];
    v6 = a1[9];
    v5 = a1[10];
    v7 = a1[11];
    type metadata accessor for UnknownDiscoverySession();
    swift_allocObject();

    v8 = v5;

    v9 = sub_1010FBB40(v4, v6, v8, v7);

    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177AD20);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101355560, &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "Created new UnknownDiscoverySession: %s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    a1[8] = v9;
    swift_retain_n();
  }

  swift_retain_n();
  sub_1010EEA14(a2);
}

uint64_t sub_10046E70C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 40);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(v2 + 64);
  if (!v11)
  {
    return result;
  }

  v12 = *(v11 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1004701C0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10161E4A0;
  v15 = _Block_copy(aBlock);
  swift_retain_n();
  v16 = a1;

  dispatch_sync(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (LOBYTE(aBlock[0]) == 1)
  {
    *(v2 + 64) = 0;

    sub_10118F518();
  }
}

id *sub_10046E9AC()
{

  return v0;
}

uint64_t sub_10046EA0C()
{
  sub_10046E9AC();

  return swift_deallocClassInstance();
}

uint64_t sub_10046EA64()
{
  v1 = *(*v0 + 16);

  return v1;
}

unint64_t sub_10046EAC4()
{
  result = qword_1016A30B0;
  if (!qword_1016A30B0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A30B0);
  }

  return result;
}

uint64_t sub_10046EB28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "UnknownDiscoveryService.start", v9, 2u);
  }

  v10 = *(v3 + 40);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1004702C8;
  *(v12 + 24) = v11;
  v16[4] = sub_10040B9F8;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10013FE14;
  v16[3] = &unk_10161E7E8;
  v13 = _Block_copy(v16);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046ED4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 64);
  v40 = v8;
  if (v15)
  {

    sub_1010E22E0();
    sub_1000BC488();
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v16 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = v37;
    *(v17 + 24) = a3;
    v46 = sub_100470308;
    v47 = v17;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100006684;
    v45 = &unk_10161E888;
    v18 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v19 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v5 + 8))(v7, v19);
    (*(v39 + 8))(v10, v40);
  }

  else
  {
    v34 = a3;
    v35 = v10;
    v21 = v37;
    v20 = v38;
    v36 = v5;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177AD20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = v20;
    v26 = v7;
    if (os_log_type_enabled(v23, v24))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No session to start discovery", v27, 2u);
    }

    sub_1000BC488();
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v29 = swift_allocObject();
    v30 = v34;
    *(v29 + 16) = v21;
    *(v29 + 24) = v30;
    v46 = sub_100470308;
    v47 = v29;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100006684;
    v45 = &unk_10161E838;
    v31 = _Block_copy(&aBlock);

    v32 = v35;
    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v36 + 8))(v26, v25);
    (*(v39 + 8))(v32, v40);
  }
}

uint64_t sub_10046F318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "UnknownDiscoveryService.stopUnknownDiscovery", v9, 2u);
  }

  v10 = *(v3 + 40);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10047027C;
  *(v12 + 24) = v11;
  v16[4] = sub_10040B9F8;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10013FE14;
  v16[3] = &unk_10161E6D0;
  v13 = _Block_copy(v16);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046F53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 64);
  v40 = v8;
  if (v15)
  {

    sub_10131ECB4();
    sub_1000BC488();
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v16 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = v37;
    *(v17 + 24) = a3;
    v46 = sub_10041ABC0;
    v47 = v17;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100006684;
    v45 = &unk_10161E770;
    v18 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v19 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v5 + 8))(v7, v19);
    (*(v39 + 8))(v10, v40);
  }

  else
  {
    v34 = a3;
    v35 = v10;
    v21 = v37;
    v20 = v38;
    v36 = v5;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177AD20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = v20;
    v26 = v7;
    if (os_log_type_enabled(v23, v24))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No session to stop discovery", v27, 2u);
    }

    sub_1000BC488();
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v29 = swift_allocObject();
    v30 = v34;
    *(v29 + 16) = v21;
    *(v29 + 24) = v30;
    v46 = sub_100470308;
    v47 = v29;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100006684;
    v45 = &unk_10161E720;
    v31 = _Block_copy(&aBlock);

    v32 = v35;
    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v36 + 8))(v26, v25);
    (*(v39 + 8))(v32, v40);
  }
}

uint64_t sub_10046FB0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AD20);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "UnknownDiscoveryService.fetchEncryptedPayload", v11, 2u);
  }

  v12 = *(v4 + 40);
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100470268;
  *(v14 + 24) = v13;
  v19[4] = sub_10040B9F8;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10013FE14;
  v19[3] = &unk_10161E608;
  v15 = _Block_copy(v19);

  v16 = a1;

  dispatch_sync(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046FD38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v22 = *(v11 - 8);
  v23 = v11;
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 64))
  {

    sub_1010FCFCC(a4, a2, a3);
  }

  else
  {
    sub_1000BC488();
    (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v17, v14);
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    aBlock[4] = sub_100470274;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161E658;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_10046EAC4();
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v24 + 8))(v10, v8);
    (*(v22 + 8))(v13, v23);
  }
}

uint64_t sub_1004700D8(void (*a1)(char *))
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  a1(v4);
  return sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
}

unint64_t sub_10047020C()
{
  result = qword_1016BC4C0;
  if (!qword_1016BC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC4C0);
  }

  return result;
}

uint64_t sub_100470288()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t type metadata accessor for FetchDevicesEndpoint(uint64_t a1)
{
  result = qword_1016A09C8;
  if (!qword_1016A09C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004703B0(uint64_t a1)
{
  result = type metadata accessor for URLComponents();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10047041C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URLComponents();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t getEnumTagSinglePayload for LocationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004705D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004707CC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1004706C4()
{
  result = qword_1016A0A00;
  if (!qword_1016A0A00)
  {
    sub_1000BC580(&qword_1016A0A08, qword_1013A3EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0A00);
  }

  return result;
}

unint64_t sub_100470728()
{
  result = qword_1016A0A10;
  if (!qword_1016A0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0A10);
  }

  return result;
}

unint64_t sub_1004707CC(unint64_t result)
{
  if (result >= 0x14)
  {
    return 20;
  }

  return result;
}

unint64_t sub_1004707DC()
{
  result = qword_1016A0A18;
  if (!qword_1016A0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0A18);
  }

  return result;
}

uint64_t sub_100470834(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 264))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100470888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
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
    *(result + 248) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100470928(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v24 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v24, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v6, *(&v6 + 1));
    v23 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v23, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v22 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v22, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v21 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v21, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v20 = v1[4];
    v6 = v1[4];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v20, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v19 = v1[5];
    v6 = v1[5];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v19, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v18 = v1[6];
    v6 = v1[6];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v18, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v17 = v1[7];
    v6 = v1[7];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v17, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v16 = v1[8];
    v6 = v1[8];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v16, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v15 = v1[9];
    v6 = v1[9];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v15, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v14 = v1[10];
    v6 = v1[10];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v14, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v13 = v1[11];
    v6 = v1[11];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v13, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v12 = v1[12];
    v6 = v1[12];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v12, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v5[0] = *(v1 + 208);
    sub_1000198E8();
    *&v6 = FixedWidthInteger.data.getter();
    *(&v6 + 1) = v4;
    sub_10015049C(v7, v8);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v11 = *(v1 + 216);
    v6 = *(v1 + 216);
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = *(v1 + 232);
    v6 = *(v1 + 232);
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = *(v1 + 248);
    v6 = *(v1 + 248);
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v6, *(&v6 + 1));
  return sub_100007BAC(v7);
}

void *sub_100471008@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004710F0(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x108uLL);
  }

  return result;
}

unint64_t sub_10047106C(uint64_t a1)
{
  *(a1 + 8) = sub_10047109C();
  result = sub_100392A48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10047109C()
{
  result = qword_1016A0A20;
  if (!qword_1016A0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A0A20);
  }

  return result;
}

uint64_t sub_1004710F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(&v144, v145);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_14;
  }

  v141 = v6;
  v146 = v7;
  sub_10015049C(&v144, v145);
  v139 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v140 = v8;
  sub_10015049C(&v144, v145);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  v142 = v9;
  v143 = v10;
  sub_1000E0A3C();
  v138 = v9;
  if (DataProtocol.intValue.getter() < 1)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C448);
    sub_100017D5C(v9, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v142 = v138;
      v143 = v11;
      *(v23 + 4) = DataProtocol.intValue.getter();
      sub_100016590(v138, v11);
      _os_log_impl(&_mh_execute_header, v21, v22, "Invalid number of beacons: %ld", v23, 0xCu);
      v9 = v138;
    }

    else
    {
      sub_100016590(v9, v11);
    }

    v24 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for BinaryEncodingError.encodingError(_:), v24);
    swift_willThrow();
    v26 = v9;
    v27 = v11;
    goto LABEL_13;
  }

  v137 = v11;
  sub_10015049C(&v144, v145);
  v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v14 = v13;
  v15 = v137;
  v142 = v138;
  v143 = v137;
  v16 = DataProtocol.intValue.getter();
  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v17 * 20) >> 64 != (20 * v17) >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (20 * v17 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v135 = v14;
  v136 = Data.subdata(in:)();
  v19 = v18;
  sub_10015049C(&v144, v145);
  v131 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v132 = v28;
  v133 = v12;
  v134 = v19;
  sub_10015049C(&v144, v145);
  v129 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v130 = v29;
  sub_10015049C(&v144, v145);
  v127 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v128 = v30;
  sub_10015049C(&v144, v145);
  v31 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v34 = v32;
  v35 = v31;
  sub_100017D5C(v31, v32);
  static Endianness.current.getter();
  sub_1002053B0();
  v126 = v35;
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v142 & 0x10000) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C448);
    sub_100017D5C(v35, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = v34;
    sub_100016590(v126, v34);
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v142 = v41;
      *v40 = 136315138;
      v42 = Data.hexString.getter();
      v44 = sub_1000136BC(v42, v43, &v142);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Invalid certs length: %s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    v45 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v45 - 8) + 104))(v46, enum case for BinaryEncodingError.encodingError(_:), v45);
    swift_willThrow();
    v47 = v126;
    v48 = v39;
    goto LABEL_46;
  }

  v125 = v34;
  sub_100017D5C(v127, v128);
  sub_10002EA98(v142, v127, v128, &v142);
  v123 = v142;
  v124 = v143;
  sub_10015049C(&v144, v145);
  v121 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v122 = v49;
  sub_10015049C(&v144, v145);
  v120 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v15 = v50;
  sub_100017D5C(v120, v50);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v142 & 0x10000) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177C448);
    sub_100017D5C(v120, v15);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    sub_100016590(v120, v15);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v142 = v55;
      *v54 = 136315138;
      v56 = Data.hexString.getter();
      v58 = sub_1000136BC(v56, v57, &v142);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "Invalid CSR length: %s", v54, 0xCu);
      sub_100007BAC(v55);
    }

    v59 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v59 - 8) + 104))(v60, enum case for BinaryEncodingError.encodingError(_:), v59);
    swift_willThrow();
    goto LABEL_45;
  }

  v61 = v142;
  sub_100017D5C(v121, v122);
  sub_10002EA98(v61, v121, v122, &v142);
  v118 = v142;
  v119 = v143;
  sub_10015049C(&v144, v145);
  v116 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v117 = v62;
  sub_10015049C(&v144, v145);
  v114 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v115 = v63;
  sub_100017D5C(v114, v63);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v142 & 0x100) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177C448);
    sub_100017D5C(v114, v115);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    sub_100016590(v114, v115);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v142 = v68;
      *v67 = 136315138;
      v69 = Data.hexString.getter();
      v71 = sub_1000136BC(v69, v70, &v142);

      *(v67 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v65, v66, "Invalid signature length: %s", v67, 0xCu);
      sub_100007BAC(v68);
    }

    v72 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v72 - 8) + 104))(v73, enum case for BinaryEncodingError.encodingError(_:), v72);
    swift_willThrow();
LABEL_44:
    sub_100016590(v114, v115);
    sub_100016590(v116, v117);
    sub_100016590(v118, v119);
LABEL_45:
    sub_100016590(v120, v15);
    sub_100016590(v121, v122);
    sub_100016590(v123, v124);
    v47 = v126;
    v48 = v125;
LABEL_46:
    sub_100016590(v47, v48);
    sub_100016590(v127, v128);
    sub_100016590(v129, v130);
    sub_100016590(v131, v132);
    sub_100016590(v136, v134);
    sub_100016590(v133, v135);
    v27 = v137;
    v26 = v138;
LABEL_13:
    sub_100016590(v26, v27);
    sub_100016590(v139, v140);
    sub_100016590(v141, v146);
LABEL_14:
    sub_100007BAC(&v144);
    return sub_100007BAC(a1);
  }

LABEL_36:
  v74 = v142;
  sub_100017D5C(v116, v117);
  sub_10002EA98(v74, v116, v117, &v142);
  v112 = v142;
  v113 = v143;
  sub_10015049C(&v144, v145);
  v110 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v111 = v75;
  sub_10015049C(&v144, v145);
  v108 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v109 = v76;
  sub_100017D5C(v108, v76);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v142 & 0x100) != 0 || (v77 = v142, v142 > 3u))
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_1000076D4(v82, qword_10177C448);
    sub_100017D5C(v108, v109);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    sub_100016590(v108, v109);
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v142 = v86;
      *v85 = 136315138;
      v87 = Data.hexString.getter();
      v89 = sub_1000136BC(v87, v88, &v142);

      *(v85 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v83, v84, "Invalid beaconPartId: %s", v85, 0xCu);
      sub_100007BAC(v86);
    }

    v90 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v90 - 8) + 104))(v91, enum case for BinaryEncodingError.encodingError(_:), v90);
    swift_willThrow();
    sub_100016590(v108, v109);
    sub_100016590(v110, v111);
    sub_100016590(v112, v113);
    goto LABEL_44;
  }

  sub_10015049C(&v144, v145);
  v78 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v107 = v79;
  v80 = v78;
  sub_10015049C(&v144, v145);
  v105 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v106 = v81;
  sub_10015049C(&v144, v145);
  v92 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v94 = v93;
  sub_100016590(v133, v135);
  sub_100016590(v108, v109);
  sub_100016590(v116, v117);
  sub_100016590(v121, v122);
  result = sub_100016590(v127, v128);
  v95 = v146 >> 62;
  if ((v146 >> 62) <= 1)
  {
    if (!v95)
    {
      v96 = BYTE6(v146);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v95 != 2)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v97 = *(v141 + 16);
  v98 = *(v141 + 24);
  v99 = __OFSUB__(v98, v97);
  v96 = v98 - v97;
  if (v99)
  {
    __break(1u);
LABEL_54:
    LODWORD(v96) = HIDWORD(v141) - v141;
    if (__OFSUB__(HIDWORD(v141), v141))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v96 = v96;
  }

LABEL_56:
  if (v96 != 32)
  {
    goto LABEL_70;
  }

  v100 = v137 >> 62;
  if ((v137 >> 62) <= 1)
  {
    if (!v100)
    {
      v101 = BYTE6(v137);
      goto LABEL_66;
    }

LABEL_64:
    LODWORD(v101) = HIDWORD(v138) - v138;
    if (!__OFSUB__(HIDWORD(v138), v138))
    {
      v101 = v101;
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  if (v100 != 2)
  {
    goto LABEL_71;
  }

  v103 = *(v138 + 16);
  v102 = *(v138 + 24);
  v99 = __OFSUB__(v102, v103);
  v101 = v102 - v103;
  if (v99)
  {
    __break(1u);
    goto LABEL_64;
  }

LABEL_66:
  if (v101 == 1)
  {
    sub_100007BAC(&v144);
    result = sub_100007BAC(a1);
    v104 = v146;
    *a2 = v141;
    *(a2 + 8) = v104;
    *(a2 + 16) = v138;
    *(a2 + 24) = v137;
    *(a2 + 32) = v139;
    *(a2 + 40) = v140;
    *(a2 + 48) = v136;
    *(a2 + 56) = v134;
    *(a2 + 64) = v131;
    *(a2 + 72) = v132;
    *(a2 + 80) = v129;
    *(a2 + 88) = v130;
    *(a2 + 96) = v123;
    *(a2 + 104) = v124;
    *(a2 + 112) = v126;
    *(a2 + 120) = v125;
    *(a2 + 128) = v118;
    *(a2 + 136) = v119;
    *(a2 + 144) = v120;
    *(a2 + 152) = v15;
    *(a2 + 160) = v112;
    *(a2 + 168) = v113;
    *(a2 + 176) = v114;
    *(a2 + 184) = v115;
    *(a2 + 192) = v110;
    *(a2 + 200) = v111;
    *(a2 + 208) = v77;
    *(a2 + 216) = v80;
    *(a2 + 224) = v107;
    *(a2 + 232) = v105;
    *(a2 + 240) = v106;
    *(a2 + 248) = v92;
    *(a2 + 256) = v94;
    return result;
  }

LABEL_71:
  __break(1u);
  return result;
}

void sub_10047247C(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
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
    v44 = _swiftEmptyArrayStorage;
    sub_1011249A4(0, v2 & ~(v2 >> 63), 0);
    v39 = _swiftEmptyArrayStorage;
    if (v37)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v41 = v3;
    v42 = v4;
    v43 = v37 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      while (v5 < v2)
      {
        v7 = __OFADD__(v5, 1);
        v8 = v5 + 1;
        if (v7)
        {
          goto LABEL_36;
        }

        v38 = v8;
        v10 = v41;
        v9 = v42;
        v11 = v43;
        v12 = v1;
        sub_101133A88(v41, v42, v43, v1);
        v14 = v13;
        v15 = [v13 uniqueID];
        if (!v15)
        {
          goto LABEL_41;
        }

        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = v39;
        v44 = v39;
        v22 = v39[2];
        v21 = v39[3];
        if (v22 >= v21 >> 1)
        {
          sub_1011249A4((v21 > 1), v22 + 1, 1);
          v20 = v44;
        }

        v20[2] = v22 + 1;
        v23 = &v20[2 * v22];
        v23[4] = v17;
        v23[5] = v19;
        v39 = v20;
        if (v37)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          v1 = v12;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v36;
          v5 = v38;
          sub_1000BC4D4(&qword_1016A0AC8, &qword_1013A4880);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v40, 0);
          if (v38 == v36)
          {
LABEL_33:
            sub_1000BB408(v41, v42, v43);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_43;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v12;
          v24 = 1 << *(v12 + 32);
          if (v10 >= v24)
          {
            goto LABEL_37;
          }

          v25 = v10 >> 6;
          v26 = *(v35 + 8 * (v10 >> 6));
          if (((v26 >> v10) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_39;
          }

          v27 = v26 & (-2 << (v10 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v36;
            v5 = v38;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            v2 = v36;
            v5 = v38;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_1000BB408(v10, v9, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_32;
              }
            }

            sub_1000BB408(v10, v9, 0);
          }

LABEL_32:
          v33 = *(v1 + 36);
          v41 = v24;
          v42 = v33;
          v43 = 0;
          if (v5 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

void sub_100472800(NSObject *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v93 = a3;
  v94 = a4;
  v95 = a1;
  v11 = sub_1000BC4D4(&unk_1016A0AE0, &unk_1013A4890);
  __chkstk_darwin(v11 - 8);
  v13 = &v87 - v12;
  v14 = type metadata accessor for MessagingMessageContext(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v7[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C4F0);
    v30 = v7;
    v95 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v95, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v30;
      *v33 = v30;
      v34 = v30;
      _os_log_impl(&_mh_execute_header, v95, v31, "MessagingServiceDelegateTrampoline: No delegate for %@", v32, 0xCu);
      sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_44;
  }

  if (!v95)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177C4F0);
    v36 = v7;
    v95 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v95, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v36;
      *v39 = v36;
      v40 = v36;
      _os_log_impl(&_mh_execute_header, v95, v37, "MessagingServiceDelegateTrampoline: No service for %@", v38, 0xCu);
      sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  if (!a2)
  {
    v41 = qword_101695190;
    v95 = v95;
    if (v41 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177C4F0);
    v43 = v7;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "MessagingServiceDelegateTrampoline: No account for %@", v46, 0xCu);
      sub_10000B3A8(v47, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_43;
  }

  if (v94 >> 60 == 15)
  {
    v20 = qword_101695190;
    v21 = v95;
    v95 = a2;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C4F0);
    v23 = v7;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "MessagingServiceDelegateTrampoline: No data for %@", v26, 0xCu);
      sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_unknownObjectRelease();

    goto LABEL_44;
  }

  v92 = Strong;
  if (!a6)
  {
    v60 = v95;
    v61 = a2;
    sub_10002E98C(v93, v94);
    goto LABEL_38;
  }

  v90 = *(v18 + 1);
  v91 = v95;
  v49 = a2;
  sub_10002E98C(v93, v94);

  v50 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v52)
  {
LABEL_38:
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000076D4(v62, qword_10177C4F0);
    v63 = v7;
    v44 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v63;
      *v66 = v63;
      v67 = v63;
      _os_log_impl(&_mh_execute_header, v44, v64, "MessagingServiceDelegateTrampoline: No fromID for %@", v65, 0xCu);
      sub_10000B3A8(v66, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_100006654(v93, v94);
LABEL_43:
    swift_unknownObjectRelease();

LABEL_44:
    v68 = v95;
LABEL_45:

    return;
  }

  v53 = v52;
  if (!a7)
  {
    v69 = v49;

    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000076D4(v70, qword_10177C4F0);
    v71 = v7;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v71;
      *v75 = v71;
      v76 = v71;
      _os_log_impl(&_mh_execute_header, v72, v73, "MessagingServiceDelegateTrampoline: No context for %@", v74, 0xCu);
      sub_10000B3A8(v75, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_100006654(v93, v94);
    swift_unknownObjectRelease();

    v68 = v91;
    goto LABEL_45;
  }

  v95 = v51;
  v89 = v50;
  v54 = qword_1016951A0;
  v55 = a7;
  v56 = v55;
  if (v54 != -1)
  {
    v55 = swift_once();
  }

  __chkstk_darwin(v55);
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v97)
  {
    v57 = v96;
  }

  else
  {
    v57 = 0xD000000000000011;
  }

  if (v97)
  {
    v58 = v97;
  }

  else
  {
    v58 = 0x8000000101355820;
  }

  v59 = v56;
  sub_100F54DB4(v59, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_100006654(v93, v94);
    swift_unknownObjectRelease();

    sub_10000B3A8(v13, &unk_1016A0AE0, &unk_1013A4890);
  }

  else
  {
    v88 = v57;
    sub_100476E9C(v13, v17);
    v77 = v49;
    v78 = [v77 uniqueID];
    if (v78)
    {
      v79 = v78;
      ObjectType = swift_getObjectType();
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v86 = ObjectType;
      v85 = v93;
      v84 = v94;
      (*(v90 + 24))(v88, v58, v81, v83, v93, v94, v89, v95, v53, v17, v86, v90);
      sub_100006654(v85, v84);

      swift_unknownObjectRelease();

      sub_100476F00(v17);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100473444(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v96 = a4;
  v97 = a6;
  v94[1] = a5;
  v12 = sub_1000BC4D4(&unk_1016A0AE0, &unk_1013A4890);
  __chkstk_darwin(v12 - 8);
  v14 = v94 - v13;
  v15 = type metadata accessor for MessagingMessageContext(0);
  v95 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v18 - 8);
  v20 = v94 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v100 = v21;
  v101 = v22;
  __chkstk_darwin(v21);
  v99 = v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v7[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v98 = Strong;
    if (a2)
    {
      v94[0] = *(v24 + 1);
      sub_1000D5660(a3, v20);
      v27 = v100;
      v26 = v101;
      if ((v101[6].isa)(v20, 1, v100) == 1)
      {
        v28 = a2;
        sub_10000B3A8(v20, &unk_101696AC0, &qword_101390A60);
        if (qword_101695190 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000076D4(v29, qword_10177C4F0);
        v30 = v7;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          *(v33 + 4) = v30;
          *v34 = v30;
          v35 = v30;
          _os_log_impl(&_mh_execute_header, v31, v32, "MessagingServiceDelegateTrampoline: No resourceURL for %@", v33, 0xCu);
          sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);
        }

        swift_unknownObjectRelease();

        return;
      }

      (v26[4].isa)(v99, v20, v27);
      if (v97)
      {
        if (a7)
        {
          if (v96)
          {
            if (a1)
            {
              v49 = qword_1016951A0;
              v50 = a7;
              v51 = a2;
              v52 = v51;
              if (v49 != -1)
              {
                v51 = swift_once();
              }

              __chkstk_darwin(v51);
              sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
              OSAllocatedUnfairLock.callAsFunction<A>(_:)();
              if (v103)
              {
                v53 = v102;
              }

              else
              {
                v53 = 0xD000000000000011;
              }

              if (v103)
              {
                v54 = v103;
              }

              else
              {
                v54 = 0x8000000101355820;
              }

              v55 = v50;
              sub_100F54DB4(v55, v14);
              if ((*(v95 + 48))(v14, 1, v15) == 1)
              {
                (v101[1].isa)(v99, v27);
                swift_unknownObjectRelease();

                sub_10000B3A8(v14, &unk_1016A0AE0, &unk_1013A4890);
                return;
              }

              v95 = v53;
              sub_100476E9C(v14, v17);
              v80 = v52;
              v81 = [v80 uniqueID];
              if (v81)
              {
                v82 = v81;
                v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v85 = v84;

                v96 = sub_100476954(v96);

                v86 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
                v97 = v88;
                if (v87)
                {
                  v89 = v86;
                  v90 = v87;
                  ObjectType = swift_getObjectType();
                  v92 = v54;
                  v93 = v99;
                  (*(v94[0] + 32))(v95, v92, v83, v85, v99, v96, v89, v97, v90, v17, ObjectType, v94[0]);

                  swift_unknownObjectRelease();

                  sub_100476F00(v17);
                  (v101[1].isa)(v93, v100);
                  return;
                }

                goto LABEL_58;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_58:
            __break(1u);
            return;
          }

          v71 = qword_101695190;
          v72 = a7;
          v73 = a2;
          if (v71 != -1)
          {
            swift_once();
          }

          v74 = type metadata accessor for Logger();
          sub_1000076D4(v74, qword_10177C4F0);
          v75 = v7;
          v60 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v60, v76))
          {

            swift_unknownObjectRelease();
            v60 = v72;
            goto LABEL_47;
          }

          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v77 = 138412290;
          *(v77 + 4) = v75;
          *v78 = v75;
          v79 = v75;
          _os_log_impl(&_mh_execute_header, v60, v76, "MessagingServiceDelegateTrampoline: No metadata for %@", v77, 0xCu);
          sub_10000B3A8(v78, &qword_10169BB30, &unk_10138B3C0);
          v26 = v101;

LABEL_46:
          swift_unknownObjectRelease();
LABEL_47:

          (v26[1].isa)(v99, v27);
          return;
        }

        v66 = qword_101695190;
        v57 = a2;
        if (v66 != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_1000076D4(v67, qword_10177C4F0);
        v68 = v7;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138412290;
          *(v62 + 4) = v68;
          *v63 = v68;
          v69 = v68;
          v65 = "MessagingServiceDelegateTrampoline: No context for %@";
          goto LABEL_43;
        }
      }

      else
      {
        v56 = qword_101695190;
        v57 = a2;
        if (v56 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_1000076D4(v58, qword_10177C4F0);
        v59 = v7;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138412290;
          *(v62 + 4) = v59;
          *v63 = v59;
          v64 = v59;
          v65 = "MessagingServiceDelegateTrampoline: No fromID for %@";
LABEL_43:
          _os_log_impl(&_mh_execute_header, v60, v61, v65, v62, 0xCu);
          sub_10000B3A8(v63, &qword_10169BB30, &unk_10138B3C0);

          v70 = v57;
LABEL_45:

          goto LABEL_46;
        }
      }

      v70 = v60;
      v60 = v57;
      goto LABEL_45;
    }

    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177C4F0);
    v43 = v7;
    v101 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v43;
      *v46 = v43;
      v47 = v43;
      _os_log_impl(&_mh_execute_header, v101, v44, "MessagingServiceDelegateTrampoline: No account for %@", v45, 0xCu);
      sub_10000B3A8(v46, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C4F0);
    v37 = v7;
    v101 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v37;
      *v40 = v37;
      v41 = v37;
      _os_log_impl(&_mh_execute_header, v101, v38, "MessagingServiceDelegateTrampoline: No delegate for %@", v39, 0xCu);
      sub_10000B3A8(v40, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  v48 = v101;
}

void sub_100474248(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5, NSObject *a6)
{
  v64 = a6;
  v63 = a5;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v11 - 8);
  v13 = &ObjectType - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v6[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v62 = Strong;
      if (a4)
      {
        v61 = *(v18 + 1);
        v20 = a2;
        UUID.init(uuidString:)();
        if ((*(v15 + 48))(v13, 1, v14) == 1)
        {
          v21 = v20;
          sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
          if (qword_101695190 != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          sub_1000076D4(v22, qword_10177C4F0);

          v23 = v6;
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v65[0] = v28;
            *v26 = 136315394;
            *(v26 + 4) = sub_1000136BC(a3, a4, v65);
            *(v26 + 12) = 2112;
            *(v26 + 14) = v23;
            *v27 = v23;
            v29 = v23;
            _os_log_impl(&_mh_execute_header, v24, v25, "MessagingServiceDelegateTrampoline: identifier [%s] is not a valid UUID for %@", v26, 0x16u);
            sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v28);
          }

          swift_unknownObjectRelease();

          return;
        }

        v51 = (*(v15 + 32))(v17, v13, v14);
        if (a1)
        {
          if (qword_1016951A0 != -1)
          {
            v51 = swift_once();
          }

          __chkstk_darwin(v51);
          sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v53 = v65[0];
          v52 = v65[1];
          v54 = v20;
          v55 = [v54 uniqueID];
          if (v55)
          {
            v56 = v55;
            if (!v52)
            {
              v52 = 0x8000000101355820;
              v53 = 0xD000000000000011;
            }

            ObjectType = swift_getObjectType();
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v58;

            (*(v61 + 8))(v53, v52, v57, v59, v17, v63 & 1, v64, ObjectType, v61);
            swift_unknownObjectRelease();

            (*(v15 + 8))(v17, v14);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v42 = qword_101695190;
      v64 = a2;
      if (v42 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177C4F0);
      v44 = v6;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v44;
        *v48 = v44;
        v49 = v44;
        _os_log_impl(&_mh_execute_header, v45, v46, "MessagingServiceDelegateTrampoline: No identifier for %@", v47, 0xCu);
        sub_10000B3A8(v48, &qword_10169BB30, &unk_10138B3C0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177C4F0);
      v37 = v6;
      v64 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v37;
        *v40 = v37;
        v41 = v37;
        _os_log_impl(&_mh_execute_header, v64, v38, "MessagingServiceDelegateTrampoline: No account for %@", v39, 0xCu);
        sub_10000B3A8(v40, &qword_10169BB30, &unk_10138B3C0);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177C4F0);
    v31 = v6;
    v64 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v31;
      *v34 = v31;
      v35 = v31;
      _os_log_impl(&_mh_execute_header, v64, v32, "MessagingServiceDelegateTrampoline: No delegate for %@", v33, 0xCu);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  v50 = v64;
}

void sub_100474B88(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v82 = a5;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v79 - v13;
  v15 = type metadata accessor for UUID();
  v83 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v6[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v81 = Strong;
      if (a4)
      {
        v80 = *(v18 + 1);
        v20 = a2;
        UUID.init(uuidString:)();
        v21 = v83;
        if ((v83[6].isa)(v14, 1, v15) == 1)
        {
          sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
          if (qword_101695190 != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          sub_1000076D4(v22, qword_10177C4F0);

          v23 = v6;
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = v20;
            v29 = swift_slowAlloc();
            v84 = v29;
            *v26 = 136315394;
            *(v26 + 4) = sub_1000136BC(a3, a4, &v84);
            *(v26 + 12) = 2112;
            *(v26 + 14) = v23;
            *v27 = v23;
            v30 = v23;
            _os_log_impl(&_mh_execute_header, v24, v25, "MessagingServiceDelegateTrampoline: identifier [%s] is not a valid UUID for %@", v26, 0x16u);
            sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v29);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return;
        }

        (v21[4].isa)(v17, v14, v15);
        if (a6)
        {
          if (a1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v69 = IDSCopyLocalDeviceUniqueID();
          if (!v69)
          {
LABEL_43:
            if (qword_101695190 != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            sub_1000076D4(v75, qword_10177C4F0);
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              *v78 = 0;
              _os_log_impl(&_mh_execute_header, v76, v77, "Ignoring IDSCopyLocalDeviceUniqueID() failed to return a value!", v78, 2u);

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            goto LABEL_38;
          }

          v70 = v69;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v84 = 0x3A656369766564;
          v85 = 0xE700000000000000;
          v74._countAndFlagsBits = v71;
          v74._object = v73;
          String.append(_:)(v74);

          v82 = v84;
          if (a1)
          {
LABEL_28:
            v52 = qword_1016951A0;

            if (v52 != -1)
            {
              v53 = swift_once();
            }

            __chkstk_darwin(v53);
            sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
            OSAllocatedUnfairLock.callAsFunction<A>(_:)();
            v54 = v84;
            if (!v85)
            {
              v54 = 0xD000000000000011;
            }

            v79 = v54;
            if (v85)
            {
              v55 = v85;
            }

            else
            {
              v55 = 0x8000000101355820;
            }

            v56 = v20;
            v57 = [v56 uniqueID];
            if (v57)
            {
              v58 = v57;
              v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;

              v62 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
              if (v64)
              {
                v65 = v62;
                v66 = v63;
                v67 = v64;
                ObjectType = swift_getObjectType();
                (*(v80 + 16))(v79, v55, v59, v61, v17, v65, v66, v67, ObjectType, v80);

                swift_unknownObjectRelease();

LABEL_38:
                (v83[1].isa)(v17, v15);
                return;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

      v43 = qword_101695190;
      v83 = a2;
      if (v43 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177C4F0);
      v45 = v6;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v45;
        *v49 = v45;
        v50 = v45;
        _os_log_impl(&_mh_execute_header, v46, v47, "MessagingServiceDelegateTrampoline: No identifier for %@", v48, 0xCu);
        sub_10000B3A8(v49, &qword_10169BB30, &unk_10138B3C0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177C4F0);
      v38 = v6;
      v83 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v83, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v38;
        *v41 = v38;
        v42 = v38;
        _os_log_impl(&_mh_execute_header, v83, v39, "MessagingServiceDelegateTrampoline: No account for %@", v40, 0xCu);
        sub_10000B3A8(v41, &qword_10169BB30, &unk_10138B3C0);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C4F0);
    v32 = v6;
    v83 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v32;
      *v35 = v32;
      v36 = v32;
      _os_log_impl(&_mh_execute_header, v83, v33, "MessagingServiceDelegateTrampoline: No delegate for %@", v34, 0xCu);
      sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  v51 = v83;
}

void sub_100475688(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1004759D0(a2);
    if (v5)
    {
      sub_10047247C(v5);
      v7 = sub_10112A7D4(v6);

      if (a1)
      {

        if (qword_1016951A0 != -1)
        {
          v8 = swift_once();
        }

        __chkstk_darwin(v8);
        sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v9 = v23;
        if (v24)
        {
          v10 = v24;
        }

        else
        {
          v10 = 0x8000000101355820;
        }

        v11 = v2 + OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (!v24)
          {
            v9 = 0xD000000000000011;
          }

          v12 = *(v11 + 8);
          ObjectType = swift_getObjectType();
          (*(v12 + 40))(v9, v10, v7, ObjectType, v12);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C4F0);

  v22 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    if (a2)
    {
      v18 = v17;

      v19 = Set.description.getter();
      v21 = sub_1000136BC(v19, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v22, v15, "MessagingServiceDelegateTrampoline: Unable to convert accounts to Set<IDSAccount> %s", v16, 0xCu);
      sub_100007BAC(v18);

      return;
    }

    goto LABEL_23;
  }
}

void sub_1004759D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016A0AD0, &qword_1013A4888);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_100476DA0();
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_100476DEC(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100476E48(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_100D246D4(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 7);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_100476DEC(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100476E48(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = NSObject._rawHashValue(seed:)(v2[5]);
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v16;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

void sub_100475D70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_100514628(a2);
    if (v5)
    {
      if (!a1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v6 = v5;
      if (qword_1016951A0 != -1)
      {
        v5 = swift_once();
      }

      __chkstk_darwin(v5);
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (*(&v36[0] + 1))
      {
        v7 = *&v36[0];
      }

      else
      {
        v7 = 0xD000000000000011;
      }

      if (*(&v36[0] + 1))
      {
        v8 = *(&v36[0] + 1);
      }

      else
      {
        v8 = 0x8000000101355820;
      }

      v9 = v2 + OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {

        return;
      }

      v10 = *(v9 + 8);
      if (v6 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
LABEL_15:
          v34 = v8;
          sub_101124390(0, v11 & ~(v11 >> 63), 0);
          if ((v11 & 0x8000000000000000) == 0)
          {
            v12 = 0;
            do
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v13 = *(v6 + 8 * v12 + 32);
              }

              v14 = v13;
              sub_100E77148(v13, v36);

              v16 = _swiftEmptyArrayStorage[2];
              v15 = _swiftEmptyArrayStorage[3];
              if (v16 >= v15 >> 1)
              {
                sub_101124390((v15 > 1), v16 + 1, 1);
              }

              ++v12;
              _swiftEmptyArrayStorage[2] = v16 + 1;
              v17 = &_swiftEmptyArrayStorage[20 * v16];
              v18 = v36[1];
              v17[2] = v36[0];
              v17[3] = v18;
              v19 = v36[2];
              v20 = v36[3];
              v21 = v36[5];
              v17[6] = v36[4];
              v17[7] = v21;
              v17[4] = v19;
              v17[5] = v20;
              v22 = v36[6];
              v23 = v36[7];
              v24 = v36[9];
              v17[10] = v36[8];
              v17[11] = v24;
              v17[8] = v22;
              v17[9] = v23;
            }

            while (v11 != v12);

            v8 = v34;
            goto LABEL_35;
          }

          __break(1u);
          goto LABEL_37;
        }
      }

LABEL_35:
      ObjectType = swift_getObjectType();
      (*(v10 + 48))(v7, v8, _swiftEmptyArrayStorage, ObjectType, v10);

      swift_unknownObjectRelease();
      return;
    }
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177C4F0);

  v35 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v36[0] = v28;
    *v27 = 136315138;
    if (a2)
    {
      v29 = v28;

      v30 = Array.description.getter();
      v32 = sub_1000136BC(v30, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v35, v26, "MessagingServiceDelegateTrampoline: Unable to convert devices to [IDSDevice] %s", v27, 0xCu);
      sub_100007BAC(v29);

      return;
    }

    goto LABEL_38;
  }
}

void sub_10047622C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_100514628(a2);
    if (v5)
    {
      if (!a1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v6 = v5;
      if (qword_1016951A0 != -1)
      {
        v5 = swift_once();
      }

      __chkstk_darwin(v5);
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (*(&v36[0] + 1))
      {
        v7 = *&v36[0];
      }

      else
      {
        v7 = 0xD000000000000011;
      }

      if (*(&v36[0] + 1))
      {
        v8 = *(&v36[0] + 1);
      }

      else
      {
        v8 = 0x8000000101355820;
      }

      v9 = v2 + OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {

        return;
      }

      v10 = *(v9 + 8);
      if (v6 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
LABEL_15:
          v34 = v8;
          sub_101124390(0, v11 & ~(v11 >> 63), 0);
          if ((v11 & 0x8000000000000000) == 0)
          {
            v12 = 0;
            do
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v13 = *(v6 + 8 * v12 + 32);
              }

              v14 = v13;
              sub_100E77148(v13, v36);

              v16 = _swiftEmptyArrayStorage[2];
              v15 = _swiftEmptyArrayStorage[3];
              if (v16 >= v15 >> 1)
              {
                sub_101124390((v15 > 1), v16 + 1, 1);
              }

              ++v12;
              _swiftEmptyArrayStorage[2] = v16 + 1;
              v17 = &_swiftEmptyArrayStorage[20 * v16];
              v18 = v36[1];
              v17[2] = v36[0];
              v17[3] = v18;
              v19 = v36[2];
              v20 = v36[3];
              v21 = v36[5];
              v17[6] = v36[4];
              v17[7] = v21;
              v17[4] = v19;
              v17[5] = v20;
              v22 = v36[6];
              v23 = v36[7];
              v24 = v36[9];
              v17[10] = v36[8];
              v17[11] = v24;
              v17[8] = v22;
              v17[9] = v23;
            }

            while (v11 != v12);

            v8 = v34;
            goto LABEL_35;
          }

          __break(1u);
          goto LABEL_37;
        }
      }

LABEL_35:
      ObjectType = swift_getObjectType();
      (*(v10 + 56))(v7, v8, _swiftEmptyArrayStorage, ObjectType, v10);

      swift_unknownObjectRelease();
      return;
    }
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177C4F0);

  v35 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v36[0] = v28;
    *v27 = 136315138;
    if (a2)
    {
      v29 = v28;

      v30 = Array.description.getter();
      v32 = sub_1000136BC(v30, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v35, v26, "MessagingServiceDelegateTrampoline: Unable to convert devices to [IDSDevice] %s", v27, 0xCu);
      sub_100007BAC(v29);

      return;
    }

    goto LABEL_38;
  }
}

uint64_t sub_100476700(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  if (a4)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a1;
  a5(a3, v8);
}

id sub_1004768D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagingServiceDelegateTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100476954(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;

  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_100476DEC(*(v1 + 48) + 40 * v10, v37);
    sub_100013894(*(v1 + 56) + 32 * v10, v38);
    sub_100476DEC(v37, &v30);
    if (swift_dynamicCast())
    {
      v34 = v33;
      sub_100013894(v38, &v30);
      sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
      swift_dynamicCast();
    }

    else
    {
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177C4F0);
      sub_100476DEC(v37, &v30);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v29 = v8;
        v15 = swift_slowAlloc();
        *&v33 = v15;
        *v14 = 136446210;
        v16 = AnyHashable.description.getter();
        v18 = v17;
        sub_100476E48(&v30);
        v19 = sub_1000136BC(v16, v18, &v33);
        v1 = v28;

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "Dropping non-String metadata key: %{public}s", v14, 0xCu);
        sub_100007BAC(v15);
        v8 = v29;
      }

      else
      {

        sub_100476E48(&v30);
      }

      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
    }

    v5 &= v5 - 1;
    sub_10000B3A8(v37, &unk_1016A0AF0, &unk_1013A48A0);
    if (*(&v34 + 1))
    {
      v30 = v34;
      v31 = v35;
      v32 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100A5CDE8(0, v8[2] + 1, 1, v8);
      }

      v21 = v8[2];
      v20 = v8[3];
      if (v21 >= v20 >> 1)
      {
        v8 = sub_100A5CDE8((v20 > 1), v21 + 1, 1, v8);
      }

      v8[2] = v21 + 1;
      v22 = &v8[6 * v21];
      v23 = v30;
      v24 = v32;
      v22[3] = v31;
      v22[4] = v24;
      v22[2] = v23;
    }

    else
    {
      sub_10000B3A8(&v34, &unk_1016AD660, &unk_1013C3FE0);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_1000BC4D4(&qword_1016A0B08, &unk_1013C5390);
    v25 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v25 = _swiftEmptyDictionarySingleton;
  }

  v37[0] = v25;

  sub_1008D65E0(v26, 1, v37);

  return v37[0];
}

unint64_t sub_100476DA0()
{
  result = qword_1016A0AD8;
  if (!qword_1016A0AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016A0AD8);
  }

  return result;
}

uint64_t sub_100476E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagingMessageContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100476F00(uint64_t a1)
{
  v2 = type metadata accessor for MessagingMessageContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100476F5C(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a1)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C4F0);
    v23 = v6;
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, oslog, v24, "MessagingServiceDelegateTrampoline: No account for %@", v25, 0xCu);
      sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    v28 = qword_101695190;
    oslog = a1;
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C4F0);
    v30 = v6;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "MessagingServiceDelegateTrampoline: No session for %@", v33, 0xCu);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_20;
  }

  if (!a4)
  {
    v10 = a1;
    v37 = a1;
    v38 = a2;
    goto LABEL_22;
  }

  v10 = a1;
  v11 = a1;
  oslog = a2;

  v12 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v14)
  {
LABEL_22:
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177C4F0);
    v40 = v6;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "MessagingServiceDelegateTrampoline: No fromID for %@", v43, 0xCu);
      sub_10000B3A8(v44, &qword_10169BB30, &unk_10138B3C0);
    }

    v36 = v10;
    goto LABEL_32;
  }

  if (a6 >> 60 == 15)
  {

    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C4F0);
    v16 = v6;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "MessagingServiceDelegateTrampoline: No context for %@", v19, 0xCu);
      sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_31;
  }

  v56 = v12;
  v57 = v13;
  v46 = v14;
  v47 = &v6[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_31:

    v36 = v11;
    goto LABEL_32;
  }

  v48 = *(v47 + 1);
  v49 = v11;
  sub_10002E98C(a5, a6);
  v50 = [v49 uniqueID];
  if (!v50)
  {
    __break(1u);
    return;
  }

  v51 = v50;
  ObjectType = swift_getObjectType();
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  (*(v48 + 64))(v53, v55, oslog, v56, v57, v46, a5, a6, ObjectType, v48);
  swift_unknownObjectRelease();

  sub_100006654(a5, a6);

LABEL_20:
  v36 = oslog;
LABEL_32:
}