uint64_t sub_1003F0E90()
{
  v19 = v0;

  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177ACC8);
  sub_100032504(v2, v1, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10040A66C(v6, type metadata accessor for SharedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Disable notify when found for beacon %{private,mask.hash}s, error - %{public}@", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = *(v0 + 48);

    sub_10040A66C(v15, type metadata accessor for SharedBeaconRecord);
  }

  (*(v0 + 24))(0);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1003F11A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v4 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Remove beacon got an error (%@)", 31, 2, v5);
  }

  else
  {
    v10 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      v12 = v10;
      swift_once();
      v10 = v12;
    }

    v9 = os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C3B0, "Remove beacon was successful", 28, 2, _swiftEmptyArrayStorage);
  }

  return a2(v9);
}

Swift::Int sub_1003F135C(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100B320AC(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1003F1610(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1003F141C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v16, 0, 14);
      v7 = v16;
      goto LABEL_17;
    }

    v8 = a5;
    v9 = a4;
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v12 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      a5 = v10 - a1;
      if (__OFSUB__(v10, a1))
      {
        goto LABEL_19;
      }

      v12 += a5;
    }

    if (!__OFSUB__(v11, v10))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v13 = a1;
    if (a1 >> 32 >= a1)
    {
      v8 = a5;
      v9 = a4;
      v12 = __DataStorage._bytes.getter();
      if (!v12)
      {
LABEL_15:
        __DataStorage._length.getter();
        a5 = v8;
        v7 = v12;
        a3 = v5;
        a4 = v9;
        goto LABEL_17;
      }

      v14 = __DataStorage._offset.getter();
      if (!__OFSUB__(v13, v14))
      {
        v12 += v13 - v14;
        goto LABEL_15;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  v16[0] = a1;
  LOWORD(v16[1]) = a2;
  BYTE2(v16[1]) = BYTE2(a2);
  BYTE3(v16[1]) = BYTE3(a2);
  BYTE4(v16[1]) = BYTE4(a2);
  BYTE5(v16[1]) = BYTE5(a2);
  v7 = v16;
LABEL_17:
  sub_100A78A88(v7, a3, a4, a5);
}

Swift::Int sub_1003F1610(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for OwnedBeaconRecord(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1003F174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for OwnedBeaconRecord(0);
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
      sub_100032504(v23, v17, type metadata accessor for OwnedBeaconRecord);
      sub_100032504(v20, v13, type metadata accessor for OwnedBeaconRecord);
      v24 = static Date.< infix(_:_:)();
      sub_10040A66C(v13, type metadata accessor for OwnedBeaconRecord);
      result = sub_10040A66C(v17, type metadata accessor for OwnedBeaconRecord);
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
      sub_10040A014(v23, v35, type metadata accessor for OwnedBeaconRecord);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10040A014(v25, v20, type metadata accessor for OwnedBeaconRecord);
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

uint64_t sub_1003F19B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
  v118 = type metadata accessor for OwnedBeaconRecord(0);
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
        sub_100032504(v37, v30, type metadata accessor for OwnedBeaconRecord);
        sub_100032504(v33, v128, type metadata accessor for OwnedBeaconRecord);
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
        sub_10040A66C(v128, type metadata accessor for OwnedBeaconRecord);
        v30 = v121;
        result = sub_10040A66C(v121, type metadata accessor for OwnedBeaconRecord);
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
        sub_10040A014(v122, v117, type metadata accessor for OwnedBeaconRecord);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10040A014(v98, v33, type metadata accessor for OwnedBeaconRecord);
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

uint64_t sub_1003F2680(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
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
        sub_1003F4F58(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
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
      sub_100032504(v110 + v24 * v23, v18, type metadata accessor for OwnedBeaconRecord);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_100032504(v26, v116, type metadata accessor for OwnedBeaconRecord);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_10040A66C(v28, type metadata accessor for OwnedBeaconRecord);
      result = sub_10040A66C(v18, type metadata accessor for OwnedBeaconRecord);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_100032504(v30, v18, type metadata accessor for OwnedBeaconRecord);
        v31 = v116;
        sub_100032504(v5, v116, type metadata accessor for OwnedBeaconRecord);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_10040A66C(v31, type metadata accessor for OwnedBeaconRecord);
        result = sub_10040A66C(v18, type metadata accessor for OwnedBeaconRecord);
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
              sub_10040A014(v39 + v38, v107, type metadata accessor for OwnedBeaconRecord);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10040A014(v107, v39 + v33, type metadata accessor for OwnedBeaconRecord);
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
        sub_1003F4F58(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
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
    sub_100032504(v5, v18, type metadata accessor for OwnedBeaconRecord);
    v93 = v116;
    sub_100032504(v90, v116, type metadata accessor for OwnedBeaconRecord);
    a4 = static Date.< infix(_:_:)();
    sub_10040A66C(v93, type metadata accessor for OwnedBeaconRecord);
    result = sub_10040A66C(v18, type metadata accessor for OwnedBeaconRecord);
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

    a4 = type metadata accessor for OwnedBeaconRecord;
    v94 = v115;
    sub_10040A014(v5, v115, type metadata accessor for OwnedBeaconRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_10040A014(v94, v90, type metadata accessor for OwnedBeaconRecord);
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

void sub_1003F2FE4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
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
  v292 = type metadata accessor for OwnedBeaconRecord(0);
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
    sub_100032504(v62, v260, type metadata accessor for OwnedBeaconRecord);
    v297 = v60;
    v64 = v59 + v60 * v56;
    v65 = v258;
    sub_100032504(v64, v258, type metadata accessor for OwnedBeaconRecord);
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
    v28 = type metadata accessor for OwnedBeaconRecord;
    sub_10040A66C(v65, type metadata accessor for OwnedBeaconRecord);
    sub_10040A66C(v260, type metadata accessor for OwnedBeaconRecord);
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
              sub_10040A014(v141 + v140, v268, type metadata accessor for OwnedBeaconRecord);
              if (v140 < v136 || v28 >= v141 + v137)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v140 != v136)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10040A014(v268, v141 + v136, type metadata accessor for OwnedBeaconRecord);
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
            sub_100032504(v193, v299, type metadata accessor for OwnedBeaconRecord);
            sub_100032504(v191, v303, type metadata accessor for OwnedBeaconRecord);
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
                      a4 = type metadata accessor for OwnedBeaconRecord;
                      sub_10040A66C(v303, type metadata accessor for OwnedBeaconRecord);
                      sub_10040A66C(v299, type metadata accessor for OwnedBeaconRecord);
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

                        v28 = type metadata accessor for OwnedBeaconRecord;
                        a4 = v291;
                        sub_10040A014(v193, v291, type metadata accessor for OwnedBeaconRecord);
                        swift_arrayInitWithTakeFrontToBack();
                        sub_10040A014(a4, v191, type metadata accessor for OwnedBeaconRecord);
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
                          sub_1003F5488(*a3 + *(v276 + 72) * a4, *a3 + *(v276 + 72) * *&v57[16 * v28 + 32], (*a3 + *(v276 + 72) * v187), v5);
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
      sub_100032504(v72, v281, type metadata accessor for OwnedBeaconRecord);
      sub_100032504(v62, v286, type metadata accessor for OwnedBeaconRecord);
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
      sub_10040A66C(v286, type metadata accessor for OwnedBeaconRecord);
      sub_10040A66C(v281, type metadata accessor for OwnedBeaconRecord);
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
        sub_1003F5488(*a3 + *(v276 + 72) * v252, *a3 + *(v276 + 72) * *&v251[16 * a4 + 16], (*a3 + *(v276 + 72) * v254), v28);
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

uint64_t sub_1003F4F58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for OwnedBeaconRecord(0);
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
          sub_100032504(v30, v43, type metadata accessor for OwnedBeaconRecord);
          v32 = v44;
          sub_100032504(v27, v44, type metadata accessor for OwnedBeaconRecord);
          v33 = static Date.< infix(_:_:)();
          sub_10040A66C(v32, type metadata accessor for OwnedBeaconRecord);
          sub_10040A66C(v31, type metadata accessor for OwnedBeaconRecord);
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
        sub_100032504(a2, v43, type metadata accessor for OwnedBeaconRecord);
        v21 = v44;
        sub_100032504(a4, v44, type metadata accessor for OwnedBeaconRecord);
        v22 = static Date.< infix(_:_:)();
        sub_10040A66C(v21, type metadata accessor for OwnedBeaconRecord);
        sub_10040A66C(v20, type metadata accessor for OwnedBeaconRecord);
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
  sub_10060AB44(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1003F5488(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
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
  v205 = type metadata accessor for OwnedBeaconRecord(0);
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
      sub_100032504(&v118[v117], v202, type metadata accessor for OwnedBeaconRecord);
      sub_100032504(v121, v210, type metadata accessor for OwnedBeaconRecord);
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
      v178 = v207 + v117;
      objc_autoreleasePoolPop(v151);
      v179 = v206;
      v180 = v203;
      v181 = Date.compare(_:)();
      v182 = *v195;
      (*v195)(v179, v155);
      v182(v180, v155);
      sub_10040A66C(v210, type metadata accessor for OwnedBeaconRecord);
      sub_10040A66C(v202, type metadata accessor for OwnedBeaconRecord);
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
      sub_100032504(a2, v207, type metadata accessor for OwnedBeaconRecord);
      v212 = a4;
      sub_100032504(a4, v214, type metadata accessor for OwnedBeaconRecord);
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
      sub_10040A66C(v214, type metadata accessor for OwnedBeaconRecord);
      sub_10040A66C(v207, type metadata accessor for OwnedBeaconRecord);
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
  sub_10060AB44(&v218, &v217, &v216);
  return 1;
}

id sub_1003F6D78(uint64_t a1, uint64_t a2)
{
  v327 = a2;
  v273 = sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  __chkstk_darwin(v273);
  v275 = &v262 - v3;
  v274 = type metadata accessor for KeyDropLostItemDates(0);
  v272 = *(v274 - 8);
  __chkstk_darwin(v274);
  v267 = &v262 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v5 - 8);
  v269 = &v262 - v6;
  v7 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v7 - 8);
  v304 = &v262 - v8;
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v283 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v266 = &v262 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v262 - v13;
  v15 = __chkstk_darwin(v12);
  v270 = &v262 - v16;
  v271 = v17;
  __chkstk_darwin(v15);
  v305 = &v262 - v18;
  v19 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v20 = __chkstk_darwin(v19 - 8);
  v268 = &v262 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v278 = &v262 - v22;
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v23 - 8);
  v302 = &v262 - v24;
  v303 = type metadata accessor for OwnedBeaconRecord(0);
  v301 = *(v303 - 8);
  __chkstk_darwin(v303);
  v279 = &v262 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v299);
  v300 = &v262 - v26;
  v291 = type metadata accessor for BeaconNamingRecord(0);
  v298 = *(v291 - 8);
  __chkstk_darwin(v291);
  v280 = &v262 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v28 - 8);
  v297 = &v262 - v29;
  v296 = type metadata accessor for BeaconProductInfoRecord(0);
  v295 = *(v296 - 8);
  __chkstk_darwin(v296);
  v277 = &v262 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v31 - 8);
  v293 = &v262 - v32;
  v294 = type metadata accessor for KeyAlignmentRecord(0);
  v292 = *(v294 - 8);
  __chkstk_darwin(v294);
  v276 = &v262 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v35 = __chkstk_darwin(v34 - 8);
  v264 = &v262 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v290 = &v262 - v37;
  v286 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v38 = __chkstk_darwin(v286);
  v289 = &v262 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v287 = (&v262 - v41);
  __chkstk_darwin(v40);
  v321 = &v262 - v42;
  v326 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v43 = __chkstk_darwin(v326);
  v45 = &v262 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v313 = &v262 - v46;
  v47 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v47 - 8);
  v325 = (&v262 - v48);
  v323 = type metadata accessor for Date();
  v314 = *(v323 - 8);
  v49 = __chkstk_darwin(v323);
  v51 = &v262 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v49);
  v265 = &v262 - v53;
  v54 = __chkstk_darwin(v52);
  v288 = &v262 - v55;
  v56 = __chkstk_darwin(v54);
  v311 = &v262 - v57;
  __chkstk_darwin(v56);
  v307 = &v262 - v58;
  v59 = type metadata accessor for UUID();
  v309 = *(v59 - 8);
  v60 = __chkstk_darwin(v59);
  v324 = &v262 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v312 = &v262 - v62;
  v339[3] = v9;
  v339[4] = sub_1003FD7F0(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v63 = sub_1000280DC(v339);
  sub_100032504(a1, v63, type metadata accessor for SharedBeaconRecord);
  v64 = [objc_allocWithZone(SPBeacon) init];
  v65 = *(v9 + 48);
  v66 = *(v63 + *(v9 + 44));
  v322 = v63;
  v310 = *(v63 + v65);
  v67 = sub_100314604(v66, v310);
  v317 = v9;
  v263 = v14;
  v262 = v51;
  v285 = v45;
  if (v68 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000076D4(v69, qword_10177BA08);
    sub_10001F280(v339, &v334);
    sub_10001F280(v339, &v329);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134218240;
      v73 = *(sub_1000035D0(&v334, *(&v335 + 1)) + *(v9 + 44));
      sub_100007BAC(&v334);
      *(v72 + 4) = v73;
      *(v72 + 12) = 2048;
      v74 = *(sub_1000035D0(&v329, *(&v330 + 1)) + *(v9 + 48));
      sub_100007BAC(&v329);
      *(v72 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "Unable to create AccessoryProductData from %ld/%ld", v72, 0x16u);
    }

    else
    {
      sub_100007BAC(&v329);
      sub_100007BAC(&v334);
    }

    v80 = v323;
    UUID.init(uuid:)();
  }

  else
  {
    v75 = v67;
    v76 = v68;
    v77 = v59;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v334 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v79 = *(&v334 + 1);
    v78 = v334;
    v329 = v334;
    sub_100017D5C(v334, *(&v334 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v75, v76);
    sub_100016590(v78, v79);
    sub_100016590(v78, v79);
    v59 = v77;
    v80 = v323;
  }

  v81 = v317[5];
  v82 = v322;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v64 setIdentifier:isa];

  v84 = String._bridgeToObjectiveC()();
  [v64 setModel:v84];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100405DEC();
  v85 = Set._bridgeToObjectiveC()().super.isa;
  [v64 setShares:v85];

  v86 = String._bridgeToObjectiveC()();
  [v64 setSystemVersion:v86];

  v87 = UUID._bridgeToObjectiveC()().super.isa;
  [v64 setProductUUID:v87];

  v284 = v66;
  [v64 setVendorId:v66];
  [v64 setProductId:v310];
  v88 = v307;
  sub_100A8AD0C(v307);
  v89 = Date._bridgeToObjectiveC()().super.isa;
  v90 = v80;
  v91 = v314 + 8;
  v318 = *(v314 + 8);
  v318(v88, v90);
  [v64 setPairingDate:v89];

  [v64 setType:sub_1011DBF4C()];
  v319 = v81;
  v92 = v325;
  sub_100ABD87C(v325);
  v93 = type metadata accessor for LostModeRecord(0);
  if ((*(*(v93 - 8) + 48))(v92, 1, v93) == 1)
  {
    sub_10000B3A8(v92, &unk_1016A99E0, &qword_1013A07B0);
    v94 = 0;
  }

  else
  {
    v94 = sub_100E78AA8();
    sub_10040A66C(v92, type metadata accessor for LostModeRecord);
  }

  v95 = v285;
  v96 = v326;
  v97 = v324;
  v320 = v91;
  [v64 setLostModeInfo:{v94, v262}];

  v98 = *(v96 + 48);
  v99 = v309;
  v100 = *(v309 + 16);
  v316 = v309 + 16;
  v315 = v100;
  v100(v97, v82 + v319, v59);
  v101 = v59;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v102 = v97;
  v103 = sub_100035730(v97, 0, 0);
  v104 = v313;
  v105 = sub_10003ABC0(&v313[v98], v102, v103, 1);

  v106 = *(v99 + 8);
  v306 = v101;
  v326 = v99 + 8;
  v325 = v106;
  (v106)(v102, v101);
  *v104 = v105 & 1;
  [v64 setConnected:?];
  sub_1000D2A70(v104, v95, &unk_1016AA420, &unk_1013BCFE0);
  v107 = *(v96 + 48);
  v108 = v314;
  v109 = *(v314 + 48);
  v110 = v323;
  v282 = v314 + 48;
  v281 = v109;
  v111 = 0;
  if (v109(v95 + v107, 1, v323) != 1)
  {
    v111 = Date._bridgeToObjectiveC()().super.isa;
    v318(v95 + v107, v110);
  }

  [v64 setConnectedStateExpiryDate:v111];

  [v64 setIsAppleAudioAccessory:{sub_100E0EA64(v284, v310)}];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107485C(v334);

  Date.init(timeIntervalSinceNow:)();
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v285 = 0;
  v112 = v334;
  sub_10001F280(v339, &v334);
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  sub_100031694(&v334, v113 + 24);
  v310 = v112;

  v114 = v321;
  unsafeFromAsyncTask<A>(_:)();

  v115 = v287;
  sub_1000D2A70(v114, v287, &unk_1016AF8A0, &unk_10139D7C0);
  v116 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v117 = *(*(v116 - 8) + 48);
  if (v117(v115, 1, v116) == 1)
  {
    v118 = v291;
    sub_10000B3A8(v115, &unk_1016AF8A0, &unk_10139D7C0);
    v119 = 1;
  }

  else
  {
    v118 = v291;
    v119 = *v115;
    sub_10000B3A8(v115, &unk_1016C8FC0, &unk_10139D7D0);
  }

  [v64 setKeySyncLastObservedIndex:v119];
  v120 = v289;
  sub_1000D2A70(v321, v289, &unk_1016AF8A0, &unk_10139D7C0);
  if (v117(v120, 1, v116) == 1)
  {
    sub_10000B3A8(v120, &unk_1016AF8A0, &unk_10139D7C0);
    v121 = v290;
    v122 = v323;
    (*(v108 + 56))(v290, 1, 1, v323);
    v123 = v288;
    sub_100A8AD0C(v288);
    v124 = v281(v121, 1, v122);
    v125 = v306;
    if (v124 != 1)
    {
      sub_10000B3A8(v121, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v126 = v120 + *(v116 + 36);
    v127 = v290;
    v122 = v323;
    (*(v108 + 16))(v290, v126, v323);
    sub_10000B3A8(v120, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v108 + 56))(v127, 0, 1, v122);
    v128 = *(v108 + 32);
    v123 = v288;
    v128(v288, v127, v122);
    v125 = v306;
  }

  v129 = Date._bridgeToObjectiveC()().super.isa;
  v130 = v123;
  v131 = v318;
  v318(v130, v122);
  [v64 setKeySyncLastIndexObservationDate:v129];

  [v64 setKeySyncWildIndexFallback:1];
  v132 = v324;
  v315(v324, v322 + v319, v125);
  v133 = v293;
  sub_100B2DA4C(v293);
  (v325)(v132, v125);
  v134 = v294;
  if ((*(v292 + 48))(v133, 1, v294) == 1)
  {
    sub_10000B3A8(v133, &qword_10169F328, &unk_1013CB040);
    [v64 setKeyAlignmentLastObservedIndex:0];
    v135 = v307;
    static Date.distantPast.getter();
    v136 = Date._bridgeToObjectiveC()().super.isa;
    v131(v135, v122);
    [v64 setKeyAlignmentLastIndexObservationDate:v136];
  }

  else
  {
    v137 = v276;
    sub_10040A014(v133, v276, type metadata accessor for KeyAlignmentRecord);
    [v64 setKeyAlignmentLastObservedIndex:*(v137 + *(v134 + 28))];
    v138 = Date._bridgeToObjectiveC()().super.isa;
    [v64 setKeyAlignmentLastIndexObservationDate:v138];

    sub_10040A66C(v137, type metadata accessor for KeyAlignmentRecord);
  }

  v139 = v118;
  v140 = v300;
  v141 = [v64 identifier];
  v142 = v324;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v143 = v297;
  v144 = v327;
  sub_100AC1584(v142, v297);
  (v325)(v142, v125);
  v145 = (*(v295 + 48))(v143, 1, v296);
  v308 = v64;
  if (v145 == 1)
  {
    sub_10000B3A8(v143, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v146 = v277;
    sub_10040A014(v143, v277, type metadata accessor for BeaconProductInfoRecord);
    v147 = sub_10083B890();
    [v64 setAccessoryProductInfo:v147];

    sub_10040A66C(v146, type metadata accessor for BeaconProductInfoRecord);
  }

  v148 = v324;
  v149 = (v315)(v324, v322 + v319, v125);
  __chkstk_darwin(v149);
  QueueSynchronizer.conditionalSync<A>(_:)();
  (v325)(v148, v125);
  v150 = v125;
  if ((*(v298 + 48))(v140, 1, v139) == 1)
  {
    sub_10000B3A8(v140, &unk_1016B29E0, &unk_1013B70E0);
    sub_10001F280(v339, &v328);
    v151 = swift_allocObject();
    *(v151 + 16) = v144;
    sub_100031694(&v328, v151 + 24);

    sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
    unsafeFromAsyncTask<A>(_:)();

    v334 = v329;
    v335 = v330;
    v336 = v331;
    v337 = v332;
    v152 = v333;
    v338 = v333;
    if (*(&v329 + 1))
    {
      v153 = v336;
      v154 = v335;
      v155 = String._bridgeToObjectiveC()();
      v156 = v308;
      [v308 setName:v155];

      v157 = sub_1012BD7E8(v154);
      v158 = v157;
      if (v154 == SPBeaconRoleIdOther && v153 && v157)
      {

        v159 = [v158 role];
        if (!v159)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v159 = String._bridgeToObjectiveC()();
        }

        v160 = objc_allocWithZone(SPBeaconRole);
        v161 = String._bridgeToObjectiveC()();

        v162 = [v160 initWithRoleId:v154 role:v159 roleEmoji:v161];

        [v156 setRole:v162];
      }

      else
      {
        [v156 setRole:v157];
      }

      v144 = v327;
      v174 = v303;
      v175 = v302;
      if (v152)
      {

        v176 = String._bridgeToObjectiveC()();
        sub_10000B3A8(&v334, &unk_1016AF910, &unk_10138C4C0);
      }

      else
      {
        sub_10000B3A8(&v334, &unk_1016AF910, &unk_10138C4C0);
        v176 = 0;
      }

      [v156 setSerialNumber:v176];

      v172 = v317;
      v173 = v304;
    }

    else
    {
      v156 = v308;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v177 = type metadata accessor for Logger();
      sub_1000076D4(v177, qword_10177BA08);
      sub_10001F280(v339, &v329);
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();
      v180 = os_log_type_enabled(v178, v179);
      v181 = v324;
      if (v180)
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        *&v328 = v183;
        *v182 = 141558275;
        *(v182 + 4) = 1752392040;
        *(v182 + 12) = 2081;
        v184 = sub_1000035D0(&v329, *(&v330 + 1));
        v315(v181, &v184[v317[5]], v125);
        sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v185 = dispatch thunk of CustomStringConvertible.description.getter();
        v186 = v125;
        v188 = v187;
        (v325)(v181, v186);
        sub_100007BAC(&v329);
        v189 = sub_1000136BC(v185, v188, &v328);

        *(v182 + 14) = v189;
        _os_log_impl(&_mh_execute_header, v178, v179, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v182, 0x16u);
        sub_100007BAC(v183);
      }

      else
      {

        sub_100007BAC(&v329);
      }

      v173 = v304;
      v174 = v303;
      v175 = v302;
      v190 = String._bridgeToObjectiveC()();
      [v156 setName:v190];

      v172 = v317;
      v144 = v327;
    }
  }

  else
  {
    v163 = v280;
    sub_10040A014(v140, v280, type metadata accessor for BeaconNamingRecord);
    v164 = String._bridgeToObjectiveC()();
    [v308 setName:v164];

    v165 = *(v163 + *(v139 + 28));
    v166 = sub_1012BD7E8(v165);
    v167 = v166;
    if (v165 == SPBeaconRoleIdOther && *(v163 + *(v139 + 36) + 8) && v166)
    {
      v168 = [v166 role];
      if (!v168)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = String._bridgeToObjectiveC()();
      }

      v169 = objc_allocWithZone(SPBeaconRole);
      v170 = String._bridgeToObjectiveC()();
      v171 = [v169 initWithRoleId:v165 role:v168 roleEmoji:v170];

      v156 = v308;
      [v308 setRole:v171];

      v144 = v327;
      v163 = v280;
    }

    else
    {
      v156 = v308;
      [v308 setRole:v166];
    }

    sub_10040A66C(v163, type metadata accessor for BeaconNamingRecord);
    v172 = v317;
    v173 = v304;
    v174 = v303;
    v175 = v302;
  }

  sub_10001F280(v339, &v334);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v191 = swift_dynamicCast();
  v192 = *(v301 + 56);
  if (!v191)
  {
    v192(v175, 1, 1, v174);
    sub_10000B3A8(v175, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v339, &v334);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000B3A8(v321, &unk_1016AF8A0, &unk_10139D7C0);
      v318(v311, v323);
      sub_10000B3A8(v313, &unk_1016AA420, &unk_1013BCFE0);
      (v325)(v312, v150);
      (*(v283 + 56))(v173, 1, 1, v172);
      sub_10000B3A8(v173, &unk_101698C30, &unk_101392630);
      goto LABEL_94;
    }

    (*(v283 + 56))(v173, 0, 1, v172);
    v197 = v173;
    v198 = v305;
    sub_10040A014(v197, v305, type metadata accessor for SharedBeaconRecord);
    v199 = String._bridgeToObjectiveC()();
    [v156 setStableIdentifier:v199];

    v200 = sub_100EB3708(*(v198 + v172[7]), *(v198 + v172[7] + 8), *(v198 + v172[7] + 16));
    [v156 setOwner:v200];

    [v156 setAccepted:*(v198 + v172[13])];
    v201 = String._bridgeToObjectiveC()();
    [v156 setCorrelationIdentifier:v201];

    [v156 setInternalShareType:*(v198 + v172[16])];
    v202 = v198 + v172[20];
    v203 = v269;
    sub_1000D2A70(v202, v269, &unk_1016AF890, &qword_1013926D0);
    v204 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v205 = v150;
    if ((*(*(v204 - 8) + 48))(v203, 1, v204) == 1)
    {
      sub_10000B3A8(v203, &unk_1016AF890, &qword_1013926D0);
      (*(v309 + 56))(v268, 1, 1, v150);
      v206 = 0;
    }

    else
    {
      v210 = v203 + *(v204 + 20);
      v211 = v268;
      sub_1000D2A70(v210, v268, &qword_1016980D0, &unk_10138F3B0);
      sub_10040A66C(v203, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if ((*(v309 + 48))(v211, 1, v150) == 1)
      {
        v206 = 0;
      }

      else
      {
        v212.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v213 = v211;
        v206 = v212.super.isa;
        (v325)(v213, v150);
      }
    }

    [v156 setOwnerBeaconIdentifier:v206];

    v214 = v270;
    sub_100032504(v305, v270, type metadata accessor for SharedBeaconRecord);
    v215 = (*(v283 + 80) + 24) & ~*(v283 + 80);
    v216 = swift_allocObject();
    *(v216 + 16) = v144;
    sub_10040A014(v214, v216 + v215, type metadata accessor for SharedBeaconRecord);

    v217 = v275;
    unsafeFromAsyncTask<A>(_:)();

    v218 = v274;
    if ((*(v272 + 48))(v217, 1, v274) == 1)
    {
      sub_10000B3A8(v217, &unk_101698C20, &qword_101390748);
    }

    else
    {
      v219 = v217;
      v220 = v218;
      v221 = v267;
      sub_10040A014(v219, v267, type metadata accessor for KeyDropLostItemDates);
      v222 = v221 + *(v220 + 20);
      v223 = v264;
      sub_1000D2A70(v222, v264, &unk_101696900, &unk_10138B1E0);
      v224 = v323;
      if (v281(v223, 1, v323) != 1)
      {
        v238 = v314;
        v239 = v265;
        (*(v314 + 32))(v265, v223, v224);
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v240 = type metadata accessor for Logger();
        sub_1000076D4(v240, qword_10177A560);
        v241 = v263;
        sub_100032504(v305, v263, type metadata accessor for SharedBeaconRecord);
        v242 = v262;
        (*(v238 + 16))(v262, v239, v224);
        v243 = Logger.logObject.getter();
        v244 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v243, v244))
        {
          v245 = swift_slowAlloc();
          *&v334 = swift_slowAlloc();
          *v245 = 141558531;
          *(v245 + 4) = 1752392040;
          *(v245 + 12) = 2081;
          sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v246 = dispatch thunk of CustomStringConvertible.description.getter();
          v248 = v247;
          sub_10040A66C(v241, type metadata accessor for SharedBeaconRecord);
          v249 = sub_1000136BC(v246, v248, &v334);

          *(v245 + 14) = v249;
          *(v245 + 22) = 2080;
          sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v250 = dispatch thunk of CustomStringConvertible.description.getter();
          v252 = v251;
          v253 = v242;
          v254 = v318;
          v318(v253, v323);
          v255 = sub_1000136BC(v250, v252, &v334);

          *(v245 + 24) = v255;
          _os_log_impl(&_mh_execute_header, v243, v244, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v245, 0x20u);
          swift_arrayDestroy();
          v256 = v254;
          v224 = v323;
        }

        else
        {

          v256 = v318;
          v318(v242, v224);
          sub_10040A66C(v241, type metadata accessor for SharedBeaconRecord);
          v150 = v306;
        }

        v257 = objc_allocWithZone(SPLostModeInfo);
        v258 = v265;
        v259 = Date._bridgeToObjectiveC()().super.isa;
        v260 = [v257 initWithMessage:0 email:0 phoneNumber:0 timestamp:v259];

        [v156 setLostModeInfo:v260];

        v256(v258, v224);
        sub_10040A66C(v267, type metadata accessor for KeyDropLostItemDates);
        sub_10000B3A8(v321, &unk_1016AF8A0, &unk_10139D7C0);
        v256(v311, v224);
        goto LABEL_92;
      }

      sub_10040A66C(v221, type metadata accessor for KeyDropLostItemDates);
      sub_10000B3A8(v223, &unk_101696900, &unk_10138B1E0);
      v205 = v306;
    }

    [v156 setLostModeInfo:0];
    v225 = v266;
    v226 = v323;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v227 = type metadata accessor for Logger();
    sub_1000076D4(v227, qword_10177A560);
    sub_100032504(v305, v225, type metadata accessor for SharedBeaconRecord);
    v228 = Logger.logObject.getter();
    v229 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v228, v229))
    {

      sub_10040A66C(v225, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v321, &unk_1016AF8A0, &unk_10139D7C0);
      v318(v311, v226);
      sub_10000B3A8(v313, &unk_1016AA420, &unk_1013BCFE0);
      v236 = v312;
      v237 = v205;
LABEL_93:
      (v325)(v236, v237);
      sub_10040A66C(v305, type metadata accessor for SharedBeaconRecord);
      goto LABEL_94;
    }

    v230 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    *&v334 = v231;
    *v230 = 141558275;
    *(v230 + 4) = 1752392040;
    *(v230 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v232 = dispatch thunk of CustomStringConvertible.description.getter();
    v150 = v205;
    v234 = v233;
    sub_10040A66C(v225, type metadata accessor for SharedBeaconRecord);
    v235 = sub_1000136BC(v232, v234, &v334);

    *(v230 + 14) = v235;
    _os_log_impl(&_mh_execute_header, v228, v229, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v230, 0x16u);
    sub_100007BAC(v231);

    sub_10000B3A8(v321, &unk_1016AF8A0, &unk_10139D7C0);
    v318(v311, v226);
LABEL_92:
    sub_10000B3A8(v313, &unk_1016AA420, &unk_1013BCFE0);
    v236 = v312;
    v237 = v150;
    goto LABEL_93;
  }

  v192(v175, 0, 1, v174);
  v193 = v279;
  sub_10040A014(v175, v279, type metadata accessor for OwnedBeaconRecord);
  sub_1010DA578();
  v194 = String._bridgeToObjectiveC()();

  [v156 setStableIdentifier:v194];

  v195 = v278;
  sub_1000D2A70(v193 + v174[7], v278, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v309 + 48))(v195, 1, v150) == 1)
  {
    v196 = 0;
  }

  else
  {
    v196 = UUID._bridgeToObjectiveC()().super.isa;
    (v325)(v195, v150);
  }

  [v156 setGroupIdentifier:v196];

  sub_100B0E4A8(v193);
  if (v207)
  {
    v208 = String._bridgeToObjectiveC()();
  }

  else
  {
    v208 = 0;
  }

  [v156 setSerialNumber:v208];

  [v156 setPartIdentifier:sub_100B0E7A8(v193)];
  [v156 setBatteryLevel:*(v193 + v174[19])];
  [v156 setIsZeus:*(v193 + v174[20])];
  if (qword_101694E80 != -1)
  {
    swift_once();
  }

  [v156 setOwner:qword_10177C088];
  [v156 setAccepted:1];
  v209 = String._bridgeToObjectiveC()();
  [v156 setCorrelationIdentifier:v209];

  [v156 setInternalShareType:-1];
  [v156 setOwnerBeaconIdentifier:0];

  sub_10040A66C(v193, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v321, &unk_1016AF8A0, &unk_10139D7C0);
  v318(v311, v323);
  sub_10000B3A8(v313, &unk_1016AA420, &unk_1013BCFE0);
  (v325)(v312, v150);
LABEL_94:
  sub_100007BAC(v339);
  return v156;
}

void *sub_1003F9EC4(uint64_t a1, uint64_t a2)
{
  v335 = a2;
  v283 = sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  __chkstk_darwin(v283);
  v285 = &v270 - v3;
  v284 = type metadata accessor for KeyDropLostItemDates(0);
  v282 = *(v284 - 8);
  __chkstk_darwin(v284);
  v277 = &v270 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v5 - 8);
  v279 = &v270 - v6;
  v7 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v7 - 8);
  v312 = &v270 - v8;
  v313 = type metadata accessor for SharedBeaconRecord(0);
  v291 = *(v313 - 8);
  v9 = __chkstk_darwin(v313);
  v276 = &v270 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v270 - v12;
  v14 = __chkstk_darwin(v11);
  v280 = &v270 - v15;
  v281 = v16;
  __chkstk_darwin(v14);
  v314 = &v270 - v17;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = __chkstk_darwin(v18 - 8);
  v278 = &v270 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v288 = &v270 - v21;
  v22 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v22 - 8);
  v310 = &v270 - v23;
  v311 = type metadata accessor for OwnedBeaconRecord(0);
  v309 = *(v311 - 8);
  __chkstk_darwin(v311);
  v289 = &v270 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v306);
  v307 = &v270 - v25;
  v308 = type metadata accessor for BeaconNamingRecord(0);
  v305 = *(v308 - 8);
  __chkstk_darwin(v308);
  v290 = &v270 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v27 - 8);
  v304 = &v270 - v28;
  v303 = type metadata accessor for BeaconProductInfoRecord(0);
  v302 = *(v303 - 8);
  __chkstk_darwin(v303);
  v287 = &v270 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v30 - 8);
  v300 = &v270 - v31;
  v301 = type metadata accessor for KeyAlignmentRecord(0);
  v299 = *(v301 - 8);
  __chkstk_darwin(v301);
  v286 = &v270 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v34 = __chkstk_darwin(v33 - 8);
  v274 = &v270 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v298 = &v270 - v36;
  v294 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v37 = __chkstk_darwin(v294);
  v297 = &v270 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v41 = &v270 - v40;
  __chkstk_darwin(v39);
  v328 = &v270 - v42;
  v43 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v44 = __chkstk_darwin(v43);
  v293 = &v270 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v322 = &v270 - v46;
  v47 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v47 - 8);
  v333 = &v270 - v48;
  v331 = type metadata accessor for Date();
  v315 = *(v331 - 8);
  v49 = __chkstk_darwin(v331);
  v51 = &v270 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v49);
  v275 = &v270 - v53;
  v54 = __chkstk_darwin(v52);
  v296 = &v270 - v55;
  v56 = __chkstk_darwin(v54);
  v320 = &v270 - v57;
  __chkstk_darwin(v56);
  v316 = &v270 - v58;
  v59 = type metadata accessor for UUID();
  v317 = *(v59 - 8);
  v60 = __chkstk_darwin(v59);
  v62 = &v270 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v321 = &v270 - v63;
  v64 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v347[3] = v64;
  v347[4] = sub_1003FD7F0(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F748);
  v65 = sub_1000280DC(v347);
  v329 = v65;
  sub_100032504(a1, v65, type metadata accessor for LocalFindableAccessoryRecord);
  v334 = [objc_allocWithZone(SPBeacon) init];
  v66 = *(v65 + *(v64 + 44));
  v319 = *(v65 + *(v64 + 40));
  v318 = v66;
  v67 = sub_100314604(v319, v66);
  v330 = v59;
  v272 = v13;
  v271 = v51;
  v295 = v41;
  v292 = v43;
  if (v68 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000076D4(v69, qword_10177BA08);
    sub_10001F280(v347, &v342);
    sub_10001F280(v347, &v337);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134218240;
      v73 = *(sub_1000035D0(&v342, *(&v343 + 1)) + *(v64 + 40));
      sub_100007BAC(&v342);
      *(v72 + 4) = v73;
      *(v72 + 12) = 2048;
      v74 = *(sub_1000035D0(&v337, *(&v338 + 1)) + *(v64 + 44));
      sub_100007BAC(&v337);
      *(v72 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "Unable to create AccessoryProductData from %ld/%ld", v72, 0x16u);
    }

    else
    {
      sub_100007BAC(&v337);
      sub_100007BAC(&v342);
    }

    v79 = v331;
    UUID.init(uuid:)();
  }

  else
  {
    v75 = v67;
    v76 = v68;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v342 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v77 = *(&v342 + 1);
    v78 = v342;
    v337 = v342;
    sub_100017D5C(v342, *(&v342 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v75, v76);
    sub_100016590(v78, v77);
    sub_100016590(v78, v77);
    v59 = v330;
    v79 = v331;
  }

  v80 = v329;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v82 = v334;
  [v334 setIdentifier:isa];

  v83 = String._bridgeToObjectiveC()();
  [v82 setModel:v83];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100405DEC();
  v84 = Set._bridgeToObjectiveC()().super.isa;
  [v82 setShares:v84];

  v85 = String._bridgeToObjectiveC()();
  [v82 setSystemVersion:v85];

  v86 = v80;
  v87 = UUID._bridgeToObjectiveC()().super.isa;
  [v82 setProductUUID:v87];

  [v82 setVendorId:v319];
  [v82 setProductId:v318];
  v88 = v316;
  Date.init(timeIntervalSince1970:)();
  v89 = Date._bridgeToObjectiveC()().super.isa;
  v90 = v315;
  v91 = *(v315 + 8);
  v326 = v315 + 8;
  v325 = v91;
  v91(v88, v79);
  [v82 setPairingDate:v89];

  [v82 setType:SPBeaconTypeLocalFindable];
  v92 = v333;
  sub_100ABD87C(v333);
  v93 = type metadata accessor for LostModeRecord(0);
  v94 = (*(*(v93 - 8) + 48))(v92, 1, v93);
  v327 = v62;
  if (v94 == 1)
  {
    sub_10000B3A8(v92, &unk_1016A99E0, &qword_1013A07B0);
    v95 = 0;
  }

  else
  {
    v95 = sub_100E78AA8();
    sub_10040A66C(v92, type metadata accessor for LostModeRecord);
  }

  v96 = v317;
  v97 = v292;
  v98 = v334;
  [v334 setLostModeInfo:v95];

  v99 = v97[12];
  v100 = *(v96 + 16);
  v101 = v327;
  v324 = v96 + 16;
  v323 = v100;
  v100(v327, v86, v59);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v102 = sub_100035730(v101, 0, 0);
  v103 = v322;
  v104 = sub_10003ABC0(&v322[v99], v101, v102, 1);

  v105 = *(v96 + 8);
  v333 = v96 + 8;
  v332 = v105;
  v105(v101, v59);
  *v103 = v104 & 1;
  [v98 setConnected:?];
  v106 = v293;
  sub_1000D2A70(v103, v293, &unk_1016AA420, &unk_1013BCFE0);
  v107 = v97[12];
  v108 = *(v90 + 48);
  v109 = v331;
  v110 = 0;
  if (v108(v106 + v107, 1, v331) != 1)
  {
    v110 = Date._bridgeToObjectiveC()().super.isa;
    v325(v106 + v107, v109);
  }

  v111 = v334;
  [v334 setConnectedStateExpiryDate:v110];

  [v111 setIsAppleAudioAccessory:{sub_100E0EA64(v319, v318)}];
  v112 = v296;
  v113 = v295;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107485C(v342);

  Date.init(timeIntervalSinceNow:)();
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v114 = v342;
  sub_10001F280(v347, &v342);
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  sub_100031694(&v342, v115 + 24);
  v319 = v114;

  v116 = v328;
  unsafeFromAsyncTask<A>(_:)();

  sub_1000D2A70(v116, v113, &unk_1016AF8A0, &unk_10139D7C0);
  v117 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v118 = *(*(v117 - 8) + 48);
  if (v118(v113, 1, v117) == 1)
  {
    sub_10000B3A8(v113, &unk_1016AF8A0, &unk_10139D7C0);
    v119 = 1;
  }

  else
  {
    v119 = *v113;
    sub_10000B3A8(v113, &unk_1016C8FC0, &unk_10139D7D0);
  }

  [v334 setKeySyncLastObservedIndex:v119];
  v120 = v297;
  sub_1000D2A70(v328, v297, &unk_1016AF8A0, &unk_10139D7C0);
  v121 = v118(v120, 1, v117);
  v273 = v90 + 48;
  v292 = v108;
  if (v121 == 1)
  {
    sub_10000B3A8(v120, &unk_1016AF8A0, &unk_10139D7C0);
    v122 = v298;
    v123 = v331;
    (*(v90 + 56))(v298, 1, 1, v331);
    Date.init(timeIntervalSince1970:)();
    v124 = v108(v122, 1, v123);
    v125 = v330;
    if (v124 != 1)
    {
      sub_10000B3A8(v122, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v126 = v120 + *(v117 + 36);
    v127 = v298;
    v123 = v331;
    (*(v90 + 16))(v298, v126, v331);
    sub_10000B3A8(v120, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v90 + 56))(v127, 0, 1, v123);
    (*(v90 + 32))(v112, v127, v123);
    v125 = v330;
  }

  v128 = Date._bridgeToObjectiveC()().super.isa;
  v129 = v325;
  v325(v112, v123);
  v130 = v334;
  [v334 setKeySyncLastIndexObservationDate:v128];

  [v130 setKeySyncWildIndexFallback:1];
  v131 = v327;
  v323(v327, v329, v125);
  v132 = v300;
  sub_100B2DA4C(v300);
  v332(v131, v125);
  v133 = v301;
  if ((*(v299 + 48))(v132, 1, v301) == 1)
  {
    sub_10000B3A8(v132, &qword_10169F328, &unk_1013CB040);
    [v130 setKeyAlignmentLastObservedIndex:0];
    v134 = v316;
    static Date.distantPast.getter();
    v135 = Date._bridgeToObjectiveC()().super.isa;
    v129(v134, v123);
    [v130 setKeyAlignmentLastIndexObservationDate:v135];
  }

  else
  {
    v136 = v286;
    sub_10040A014(v132, v286, type metadata accessor for KeyAlignmentRecord);
    [v130 setKeyAlignmentLastObservedIndex:*(v136 + *(v133 + 28))];
    v137 = Date._bridgeToObjectiveC()().super.isa;
    [v130 setKeyAlignmentLastIndexObservationDate:v137];

    sub_10040A66C(v136, type metadata accessor for KeyAlignmentRecord);
  }

  v138 = v307;
  v139 = v130;
  v140 = [v130 identifier];
  v141 = v327;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v142 = v304;
  sub_100AC1584(v141, v304);
  v332(v141, v125);
  if ((*(v302 + 48))(v142, 1, v303) == 1)
  {
    v143 = v139;
    sub_10000B3A8(v142, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v144 = v287;
    sub_10040A014(v142, v287, type metadata accessor for BeaconProductInfoRecord);
    v145 = sub_10083B890();
    v143 = v139;
    [v139 setAccessoryProductInfo:v145];

    sub_10040A66C(v144, type metadata accessor for BeaconProductInfoRecord);
  }

  v146 = v308;
  v147 = v330;
  v148 = (v323)(v141, v329, v330);
  v149 = v335;
  __chkstk_darwin(v148);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v332(v141, v147);
  if ((*(v305 + 48))(v138, 1, v146) != 1)
  {
    v163 = v290;
    sub_10040A014(v138, v290, type metadata accessor for BeaconNamingRecord);
    v164 = String._bridgeToObjectiveC()();
    v152 = v143;
    [v143 setName:v164];

    v165 = *(v163 + *(v146 + 28));
    v166 = sub_1012BD7D0(v165);
    v167 = v166;
    if (v165 == SPBeaconRoleIdOther && *(v163 + *(v146 + 36) + 8) && v166)
    {
      v168 = [v166 role];
      v159 = v311;
      if (!v168)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = String._bridgeToObjectiveC()();
      }

      v169 = objc_allocWithZone(SPBeaconRole);
      v170 = String._bridgeToObjectiveC()();
      v171 = [v169 initWithRoleId:v165 role:v168 roleEmoji:v170];

      [v143 setRole:v171];
      v172 = v330;
      v173 = v331;
      v163 = v290;
    }

    else
    {
      [v143 setRole:v166];
      v159 = v311;
      v173 = v331;
      v172 = v330;
    }

    sub_10040A66C(v163, type metadata accessor for BeaconNamingRecord);
    v174 = v313;
    goto LABEL_58;
  }

  sub_10000B3A8(v138, &unk_1016B29E0, &unk_1013B70E0);
  sub_10001F280(v347, &v336);
  v150 = swift_allocObject();
  *(v150 + 16) = v149;
  sub_100031694(&v336, v150 + 24);

  sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
  unsafeFromAsyncTask<A>(_:)();

  v342 = v337;
  v343 = v338;
  v344 = v339;
  v345 = v340;
  v151 = v341;
  v346 = v341;
  v152 = v143;
  if (*(&v337 + 1))
  {
    v153 = v344;
    v154 = v343;
    v155 = String._bridgeToObjectiveC()();
    [v143 setName:v155];

    v156 = sub_1012BD7D0(v154);
    v157 = v156;
    if (v154 == SPBeaconRoleIdOther && v153 && v156)
    {

      v158 = [v157 role];
      v159 = v311;
      if (!v158)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = String._bridgeToObjectiveC()();
      }

      v160 = objc_allocWithZone(SPBeaconRole);
      v161 = String._bridgeToObjectiveC()();

      v162 = [v160 initWithRoleId:v154 role:v158 roleEmoji:v161];

      v152 = v143;
      [v143 setRole:v162];
    }

    else
    {
      [v143 setRole:v156];
      v159 = v311;
    }

    v172 = v330;
    v173 = v331;
    v174 = v313;
    if (v151)
    {

      v175 = String._bridgeToObjectiveC()();
      sub_10000B3A8(&v342, &unk_1016AF910, &unk_10138C4C0);
    }

    else
    {
      sub_10000B3A8(&v342, &unk_1016AF910, &unk_10138C4C0);
      v175 = 0;
    }

    [v152 setSerialNumber:v175];

LABEL_58:
    v187 = v312;
    v188 = v310;
    goto LABEL_59;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v176 = type metadata accessor for Logger();
  sub_1000076D4(v176, qword_10177BA08);
  sub_10001F280(v347, &v337);
  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.error.getter();
  v179 = os_log_type_enabled(v177, v178);
  v159 = v311;
  v172 = v330;
  if (v179)
  {
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    *&v336 = v181;
    *v180 = 141558275;
    *(v180 + 4) = 1752392040;
    *(v180 + 12) = 2081;
    v182 = sub_1000035D0(&v337, *(&v338 + 1));
    v323(v141, v182, v330);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v183 = dispatch thunk of CustomStringConvertible.description.getter();
    v185 = v184;
    v332(v141, v330);
    sub_100007BAC(&v337);
    v186 = sub_1000136BC(v183, v185, &v336);

    *(v180 + 14) = v186;
    _os_log_impl(&_mh_execute_header, v177, v178, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v180, 0x16u);
    sub_100007BAC(v181);
    v172 = v330;
  }

  else
  {

    sub_100007BAC(&v337);
  }

  v173 = v331;
  v174 = v313;
  v187 = v312;
  v188 = v310;
  v215 = String._bridgeToObjectiveC()();
  [v143 setName:v215];

LABEL_59:
  sub_10001F280(v347, &v342);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v189 = swift_dynamicCast();
  v190 = *(v309 + 56);
  if (!v189)
  {
    v190(v188, 1, 1, v159);
    sub_10000B3A8(v188, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v347, &v342);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000B3A8(v328, &unk_1016AF8A0, &unk_10139D7C0);
      v325(v320, v173);
      sub_10000B3A8(v322, &unk_1016AA420, &unk_1013BCFE0);
      v332(v321, v172);
      (*(v291 + 56))(v187, 1, 1, v174);
      sub_10000B3A8(v187, &unk_101698C30, &unk_101392630);
      goto LABEL_95;
    }

    (*(v291 + 56))(v187, 0, 1, v174);
    v198 = v187;
    v199 = v314;
    sub_10040A014(v198, v314, type metadata accessor for SharedBeaconRecord);
    v200 = String._bridgeToObjectiveC()();
    [v152 setStableIdentifier:v200];

    v201 = sub_100EB3708(*(v199 + v174[7]), *(v199 + v174[7] + 8), *(v199 + v174[7] + 16));
    [v152 setOwner:v201];

    [v152 setAccepted:*(v199 + v174[13])];
    v202 = String._bridgeToObjectiveC()();
    [v152 setCorrelationIdentifier:v202];

    [v152 setInternalShareType:*(v199 + v174[16])];
    v203 = v199 + v174[20];
    v204 = v279;
    sub_1000D2A70(v203, v279, &unk_1016AF890, &qword_1013926D0);
    v205 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v205 - 8) + 48))(v204, 1, v205) == 1)
    {
      sub_10000B3A8(v204, &unk_1016AF890, &qword_1013926D0);
      (*(v317 + 56))(v278, 1, 1, v172);
      v206 = 0;
      v207 = v292;
    }

    else
    {
      v212 = v204 + *(v205 + 20);
      v213 = v278;
      sub_1000D2A70(v212, v278, &qword_1016980D0, &unk_10138F3B0);
      sub_10040A66C(v204, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v214 = (*(v317 + 48))(v213, 1, v172);
      v207 = v292;
      if (v214 == 1)
      {
        v206 = 0;
      }

      else
      {
        v216.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v217 = v213;
        v206 = v216.super.isa;
        v332(v217, v172);
      }
    }

    [v152 setOwnerBeaconIdentifier:v206];

    v218 = v280;
    sub_100032504(v314, v280, type metadata accessor for SharedBeaconRecord);
    v219 = (*(v291 + 80) + 24) & ~*(v291 + 80);
    v220 = swift_allocObject();
    *(v220 + 16) = v335;
    sub_10040A014(v218, v220 + v219, type metadata accessor for SharedBeaconRecord);

    v221 = v285;
    unsafeFromAsyncTask<A>(_:)();

    v222 = v284;
    if ((*(v282 + 48))(v221, 1, v284) == 1)
    {
      v223 = &unk_101698C20;
      v224 = &qword_101390748;
    }

    else
    {
      v225 = v221;
      v226 = v222;
      v227 = v277;
      sub_10040A014(v225, v277, type metadata accessor for KeyDropLostItemDates);
      v228 = v227 + *(v226 + 20);
      v221 = v274;
      sub_1000D2A70(v228, v274, &unk_101696900, &unk_10138B1E0);
      if ((v207)(v221, 1, v173) != 1)
      {
        v245 = v152;
        v246 = v315;
        v247 = v275;
        (*(v315 + 32))(v275, v221, v173);
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v248 = type metadata accessor for Logger();
        sub_1000076D4(v248, qword_10177A560);
        v249 = v272;
        sub_100032504(v314, v272, type metadata accessor for SharedBeaconRecord);
        v250 = v271;
        (*(v246 + 16))(v271, v247, v173);
        v251 = Logger.logObject.getter();
        v252 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v251, v252))
        {
          v253 = swift_slowAlloc();
          *&v342 = swift_slowAlloc();
          *v253 = 141558531;
          *(v253 + 4) = 1752392040;
          *(v253 + 12) = 2081;
          sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v254 = dispatch thunk of CustomStringConvertible.description.getter();
          v256 = v255;
          sub_10040A66C(v249, type metadata accessor for SharedBeaconRecord);
          v257 = sub_1000136BC(v254, v256, &v342);

          *(v253 + 14) = v257;
          *(v253 + 22) = 2080;
          sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v258 = dispatch thunk of CustomStringConvertible.description.getter();
          v260 = v259;
          v261 = v325;
          v325(v250, v331);
          v262 = sub_1000136BC(v258, v260, &v342);
          v172 = v330;

          *(v253 + 24) = v262;
          _os_log_impl(&_mh_execute_header, v251, v252, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v253, 0x20u);
          swift_arrayDestroy();
          v173 = v331;
        }

        else
        {

          v263 = v325;
          v325(v250, v173);
          v264 = v249;
          v261 = v263;
          sub_10040A66C(v264, type metadata accessor for SharedBeaconRecord);
        }

        v265 = objc_allocWithZone(SPLostModeInfo);
        v266 = v275;
        v267 = Date._bridgeToObjectiveC()().super.isa;
        v268 = [v265 initWithMessage:0 email:0 phoneNumber:0 timestamp:v267];

        [v245 setLostModeInfo:v268];

        v261(v266, v173);
        sub_10040A66C(v277, type metadata accessor for KeyDropLostItemDates);
        sub_10000B3A8(v328, &unk_1016AF8A0, &unk_10139D7C0);
        v261(v320, v173);
        v152 = v245;
        goto LABEL_93;
      }

      sub_10040A66C(v227, type metadata accessor for KeyDropLostItemDates);
      v223 = &unk_101696900;
      v224 = &unk_10138B1E0;
    }

    sub_10000B3A8(v221, v223, v224);
    [v152 setLostModeInfo:0];
    v229 = v276;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v230 = type metadata accessor for Logger();
    sub_1000076D4(v230, qword_10177A560);
    sub_100032504(v314, v229, type metadata accessor for SharedBeaconRecord);
    v231 = Logger.logObject.getter();
    v232 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v231, v232))
    {
      v233 = swift_slowAlloc();
      v234 = v152;
      v235 = v173;
      v236 = swift_slowAlloc();
      *&v342 = v236;
      *v233 = 141558275;
      *(v233 + 4) = 1752392040;
      *(v233 + 12) = 2081;
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v237 = dispatch thunk of CustomStringConvertible.description.getter();
      v238 = v172;
      v240 = v239;
      sub_10040A66C(v229, type metadata accessor for SharedBeaconRecord);
      v241 = sub_1000136BC(v237, v240, &v342);

      *(v233 + 14) = v241;
      _os_log_impl(&_mh_execute_header, v231, v232, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v233, 0x16u);
      sub_100007BAC(v236);

      sub_10000B3A8(v328, &unk_1016AF8A0, &unk_10139D7C0);
      v242 = v235;
      v152 = v234;
      v325(v320, v242);
      sub_10000B3A8(v322, &unk_1016AA420, &unk_1013BCFE0);
      v243 = v321;
      v244 = v238;
LABEL_94:
      v332(v243, v244);
      sub_10040A66C(v314, type metadata accessor for SharedBeaconRecord);
      goto LABEL_95;
    }

    sub_10040A66C(v229, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v328, &unk_1016AF8A0, &unk_10139D7C0);
    v325(v320, v173);
LABEL_93:
    sub_10000B3A8(v322, &unk_1016AA420, &unk_1013BCFE0);
    v243 = v321;
    v244 = v172;
    goto LABEL_94;
  }

  v190(v188, 0, 1, v159);
  v191 = v188;
  v192 = v172;
  v193 = v289;
  sub_10040A014(v191, v289, type metadata accessor for OwnedBeaconRecord);
  sub_1010DA578();
  v194 = String._bridgeToObjectiveC()();

  [v152 setStableIdentifier:v194];

  v195 = v288;
  sub_1000D2A70(v193 + v159[7], v288, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v317 + 48))(v195, 1, v192) == 1)
  {
    v196 = v192;
    v197 = 0;
  }

  else
  {
    v197 = UUID._bridgeToObjectiveC()().super.isa;
    v196 = v192;
    v332(v195, v192);
  }

  v208 = v325;
  [v152 setGroupIdentifier:v197];

  sub_100B0E4A8(v193);
  if (v209)
  {
    v210 = String._bridgeToObjectiveC()();
  }

  else
  {
    v210 = 0;
  }

  [v152 setSerialNumber:v210];

  [v152 setPartIdentifier:sub_100B0E7A8(v193)];
  [v152 setBatteryLevel:*(v193 + v159[19])];
  [v152 setIsZeus:*(v193 + v159[20])];
  if (qword_101694E80 != -1)
  {
    swift_once();
  }

  [v152 setOwner:qword_10177C088];
  [v152 setAccepted:1];
  v211 = String._bridgeToObjectiveC()();
  [v152 setCorrelationIdentifier:v211];

  [v152 setInternalShareType:-1];
  [v152 setOwnerBeaconIdentifier:0];

  sub_10040A66C(v193, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v328, &unk_1016AF8A0, &unk_10139D7C0);
  v208(v320, v173);
  sub_10000B3A8(v322, &unk_1016AA420, &unk_1013BCFE0);
  v332(v321, v196);
LABEL_95:
  sub_100007BAC(v347);
  return v152;
}

void sub_1003FCFF8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v78) = a4;
  v54 = a3;
  v76 = a2;
  v72 = type metadata accessor for SystemInfo.DeviceLockState();
  v5 = *(v72 - 8);
  v6 = __chkstk_darwin(v72);
  v71 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v70 = &v49[-v8];
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v9 - 8);
  v11 = &v49[-v10];
  v68 = type metadata accessor for OwnedBeaconRecord(0);
  v12 = *(v68 - 8);
  v13 = __chkstk_darwin(v68);
  v51 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = v14;
  __chkstk_darwin(v13);
  v16 = &v49[-v15];
  v17 = type metadata accessor for UUID();
  __chkstk_darwin(v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1 + 56;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 56);
  v25 = (v22 + 63) >> 6;
  v64 = v18 + 16;
  v63 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v61 = (v5 + 8);
  v62 = (v5 + 104);
  v56 = (v12 + 48);
  v50 = v78 & 1;
  v53 = v12;
  v55 = (v12 + 56);
  v66 = v18;
  v59 = (v18 + 8);
  v73 = a1;

  v26 = 0;
  v58 = xmmword_101385D80;
  v65 = v25;
  v69 = v11;
  v57 = v16;
  v67 = v17;
  v75 = v20;
  v60 = a1 + 56;
  while (v24)
  {
LABEL_12:
    (*(v66 + 16))(v20, *(v73 + 48) + *(v66 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v17);
    v78 = *(v76 + 280);
    v30 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v31 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v32 = swift_allocObject();
    *(v32 + 16) = v58;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100008C00();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v77 = v31;
    os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "ownedBeaconRecord(for uuid: %@)", 31, 2, v32);

    v36 = v70;
    static SystemInfo.lockState.getter();
    v38 = v71;
    v37 = v72;
    (*v62)(v71, v63, v72);
    sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v33) = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *v61;
    (*v61)(v38, v37);
    v39(v36, v37);
    if (v33)
    {
      v27 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v77, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      v28 = v69;
      (*v55)(v69, 1, 1, v68);
      v17 = v67;
      v20 = v75;
LABEL_5:
      v21 = v60;
      sub_10000B3A8(v28, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_6;
    }

    v40 = sub_100025044();
    __chkstk_darwin(v40);
    v41 = v74;
    v20 = v75;
    *&v49[-16] = v75;
    v28 = v69;
    sub_1012BBBD0(sub_10040B9D8, v40, v69);
    v74 = v41;

    v42 = (*v56)(v28, 1, v68);
    v43 = v57;
    if (v42 == 1)
    {
      v17 = v67;
      goto LABEL_5;
    }

    sub_10040A014(v28, v57, type metadata accessor for OwnedBeaconRecord);
    v44 = v51;
    sub_100032504(v43, v51, type metadata accessor for OwnedBeaconRecord);
    v45 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v46 = v45 + v52;
    v47 = swift_allocObject();
    *(v47 + 16) = v76;
    sub_10040A014(v44, v47 + v45, type metadata accessor for OwnedBeaconRecord);
    *(v47 + v46) = v50;
    sub_1000BC4D4(&qword_10169F3D0, &qword_1013A08A0);
    swift_allocObject();

    Future.init(_:)();
    v48 = v54;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v21 = v60;
    if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10040A66C(v57, type metadata accessor for OwnedBeaconRecord);
    v17 = v67;
    v20 = v75;
LABEL_6:
    v24 &= v24 - 1;
    (*v59)(v20, v17);
    v25 = v65;
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v29);
    ++v26;
    if (v24)
    {
      v26 = v29;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003FD7F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003FD838()
{
  result = qword_1016B26C0;
  if (!qword_1016B26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B26C0);
  }

  return result;
}

id sub_1003FD8B4(char *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1003E539C(a1, v5, v6, v1 + v4, v8, v9);
}

id sub_1003FD95C(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1003E5534(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003FD9D8()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003E1B90(v4, v0 + v3, v6, v7);
}

id sub_1003FDAF4(int a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1003E2184(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1003FDBCC(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v1 + v6);

  return sub_1003E4650(a1, v1 + v4, v7, v9, v10, v11);
}

uint64_t sub_1003FDC88()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1003FDD48(uint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v1 + v6);

  return sub_1003E4838(a1, v1 + v4, v7, v9, v10, v11);
}

unint64_t sub_1003FDE68()
{
  result = qword_10169F310;
  if (!qword_10169F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F310);
  }

  return result;
}

uint64_t sub_1003FDEBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003E44D0(v2, v3);
}

uint64_t sub_1003FDF54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003E3894(v2, v3);
}

uint64_t sub_1003FDFF0(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1003E3A04(a1, v6, v7, v1 + v5);
}

uint64_t sub_1003FE0E0()
{

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_1003FE130()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1011663F8(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1003FE1F4()
{
  v1 = *(type metadata accessor for OSSignpostID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v6);
  v9 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003ED190(v0 + v2, v7, (v0 + v5), v8, v9);
}

uint64_t sub_1003FE308(uint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v7 = ((v5 & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  return sub_1003ED538(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), v1 + v7, *(v1 + v8), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

void *sub_1003FE438(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v47 = type metadata accessor for UUID();
  v4 = *(v47 - 8);
  v5 = __chkstk_darwin(v47);
  v45 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v6;
  __chkstk_darwin(v5);
  v44 = v34 - v7;
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v34[1] = v2;
    v51 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v11 = v4;
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v40 = v11 + 32;
    v41 = v11 + 16;
    v42 = a1;
    v43 = v11;
    v38 = v8;
    v39 = v11 + 8;
    v35 = a1 + 64;
    v36 = v14;
    v37 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v49 = v13;
      v50 = 1 << v12;
      v18 = v43;
      v17 = v44;
      v19 = *(a1 + 48) + *(v43 + 72) * v12;
      v20 = *(v43 + 16);
      v21 = v47;
      v20(v44, v19, v47);
      v22 = v45;
      v20(v45, v17, v21);
      v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v48;
      (*(v18 + 32))(v24 + v23, v22, v21);
      sub_1000BC4D4(&qword_10169F350, &qword_1013A0808);
      swift_allocObject();

      Future.init(_:)();
      v25 = v21;
      a1 = v42;
      (*(v18 + 8))(v17, v25);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_23;
      }

      v10 = v37;
      v26 = v38;
      v27 = *(v37 + 8 * v16);
      if ((v27 & v50) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v14) = v36;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v12 & 0x3F));
      if (v28)
      {
        v15 = __clz(__rbit64(v28)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v16 << 6;
        v30 = v16 + 1;
        v31 = (v35 + 8 * v16);
        while (v30 < (v15 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1000BB408(v12, v36, 0);
            v15 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v12, v36, 0);
      }

LABEL_4:
      v13 = v49 + 1;
      v12 = v15;
      if (v49 + 1 == v26)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

double sub_1003FE810@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = [a1 ecid];
  if (!v12)
  {
    v46 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v65 = v46;
      swift_once();
      v46 = v65;
    }

    os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, qword_10177C3B0, "#Durian: ecid is not available.", 31, 2, _swiftEmptyArrayStorage);
    goto LABEL_37;
  }

  v13 = v12;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [a1 chipId];
  if (!v17)
  {
    v47 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v66 = v47;
      swift_once();
      v47 = v66;
    }

    os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, qword_10177C3B0, "#Durian: chipId is not available.", 33, 2, _swiftEmptyArrayStorage);
    goto LABEL_35;
  }

  v18 = v17;
  v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [a1 serialNumber];
  if (!v21)
  {
    v48 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v67 = v48;
      swift_once();
      v48 = v67;
    }

    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, qword_10177C3B0, "#Durian: serialNumber is not available.", 39, 2, _swiftEmptyArrayStorage);
    v49 = v85;
    v50 = v20;
    goto LABEL_34;
  }

  v84 = v20;
  v22 = v21;
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [a1 systemVersion];
  if (!v25)
  {

    v51 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v68 = v51;
      swift_once();
      v51 = v68;
    }

    os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, qword_10177C3B0, "#Durian: systemVersion is not available.", 40, 2, _swiftEmptyArrayStorage);
    goto LABEL_33;
  }

  v83 = v16;
  v26 = v25;
  *&v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = [a1 payloadSignature];
  if (!v29)
  {

    v52 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v69 = v52;
      swift_once();
      v52 = v69;
    }

    os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, qword_10177C3B0, "#Durian: signature(S2) is not available.", 40, 2, _swiftEmptyArrayStorage);
    goto LABEL_25;
  }

  *(&v80 + 1) = v28;
  v30 = v29;
  *&v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v81 + 1) = v31;

  v32 = [a1 attestation];
  if (!v32)
  {

    v55 = static os_log_type_t.error.getter();
    v16 = v83;
    if (qword_101695068 != -1)
    {
      v70 = v55;
      swift_once();
      v55 = v70;
    }

    os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, qword_10177C3B0, "#Durian: attestation(S1) is not available.", 42, 2, _swiftEmptyArrayStorage);
    goto LABEL_32;
  }

  v33 = v32;
  *&v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v79 + 1) = v34;

  v35 = [a1 systemPublicKey];
  v16 = v83;
  if (!v35)
  {

    v56 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v71 = v56;
      swift_once();
      v56 = v71;
    }

    os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, qword_10177C3B0, "#Durian: refKeyPublicKey is not available.", 42, 2, _swiftEmptyArrayStorage);
    sub_100016590(v79, *(&v79 + 1));
LABEL_32:
    sub_100016590(v81, *(&v81 + 1));
LABEL_33:
    v50 = v84;
    v49 = v85;
LABEL_34:
    sub_100016590(v49, v50);
LABEL_35:
    v53 = v14;
    v54 = v16;
    goto LABEL_36;
  }

  v36 = v35;
  v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v38;

  v39 = [a1 refKeyPublicKey];
  if (!v39)
  {

    v64 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v72 = v64;
      swift_once();
      v64 = v72;
    }

    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, qword_10177C3B0, "#Durian: refKeyPublicKey is not available.", 42, 2, _swiftEmptyArrayStorage);
    sub_100016590(v37, v78);
    sub_100016590(v79, *(&v79 + 1));
    sub_100016590(v81, *(&v81 + 1));
LABEL_25:
    sub_100016590(v85, v84);
    v53 = v14;
    v54 = v83;
LABEL_36:
    sub_100016590(v53, v54);
LABEL_37:
    sub_100408020(&v95);
    goto LABEL_38;
  }

  v40 = v39;
  v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v42;
  v77 = v41;

  v75 = [a1 productId];
  v74 = [a1 vendorId];
  v43 = [a1 nonce];
  v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v45;

  *&v86 = v14;
  *(&v86 + 1) = v83;
  *&v87 = v85;
  *(&v87 + 1) = v84;
  *&v88 = v82;
  *(&v88 + 1) = v24;
  *&v89 = v75;
  *(&v89 + 1) = v74;
  *&v90 = v37;
  *(&v90 + 1) = v78;
  *&v91 = v77;
  *(&v91 + 1) = v76;
  *&v92 = v44;
  *(&v92 + 1) = v73;
  *&v93 = a2;
  *(&v93 + 1) = a3;
  *&v94 = a4;
  *(&v94 + 1) = a5;
  SharingCircleWildAdvertisementKey.init(key:)();
  sub_100017D5C(a2, a3);
  sub_100017D5C(a4, a5);
  v103 = v91;
  v104 = v92;
  v105 = v93;
  v106 = v94;
  v99 = v80;
  v100 = v81;
  v101 = v79;
  v102 = v90;
  v95 = v86;
  v96 = v87;
  v97 = v88;
  v98 = v89;
LABEL_38:
  v57 = v104;
  a6[8] = v103;
  a6[9] = v57;
  v58 = v106;
  a6[10] = v105;
  a6[11] = v58;
  v59 = v100;
  a6[4] = v99;
  a6[5] = v59;
  v60 = v102;
  a6[6] = v101;
  a6[7] = v60;
  v61 = v96;
  *a6 = v95;
  a6[1] = v61;
  result = *&v97;
  v63 = v98;
  a6[2] = v97;
  a6[3] = v63;
  return result;
}

uint64_t sub_1003FEF4C(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = __chkstk_darwin(v6);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v73 - v9;
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v84 = v13;
  v85 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v73 - v14;
  v90 = swift_allocObject();
  *(v90 + 16) = a3;
  v88 = a3;
  LODWORD(v89) = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
LABEL_15:
    swift_once();
  }

  v16 = qword_10177C3B0;
  v87 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10138BBE0;
  v92 = *a2;
  sub_1000BC4D4(&qword_10169F430, &qword_1013A08F8);
  v18 = String.init<A>(describing:)();
  v19 = a2;
  v21 = v20;
  *(v17 + 56) = &type metadata for String;
  v22 = sub_100008C00();
  *(v17 + 32) = v18;
  *(v17 + 40) = v21;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v22;
  *(v17 + 64) = v22;
  *(v17 + 72) = 0xD000000000000038;
  *(v17 + 80) = 0x8000000101352DE0;
  v23 = v89;
  v89 = v16;
  v24 = v16;
  v25 = v22;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "%{public}@: %{public}@", 22, 2, v17);

  v86 = v19;
  v26 = sub_100025044();
  a2 = v26[2];
  if (a2)
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= v26[2])
      {
        __break(1u);
        goto LABEL_15;
      }

      v28 = *(v11 + 80);
      sub_100032504(v26 + ((v28 + 32) & ~v28) + *(v11 + 72) * v27, v15, type metadata accessor for OwnedBeaconRecord);
      if (sub_1010DF484(&v15[*(v10 + 24)], a1))
      {
        break;
      }

      ++v27;
      sub_10040A66C(v15, type metadata accessor for OwnedBeaconRecord);
      if (a2 == v27)
      {
        goto LABEL_7;
      }
    }

    v29 = static os_log_type_t.default.getter();
    v30 = swift_allocObject();
    v79 = xmmword_101385D80;
    *(v30 + 16) = xmmword_101385D80;
    v31 = *(v10 + 20);
    v32 = v25;
    v33 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v32;
    v78 = v32;
    *(v30 + 32) = v34;
    *(v30 + 40) = v35;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v89, "Trying to remove (%@)", 21, 2, v30);

    v36 = swift_allocObject();
    *(v36 + 16) = sub_100407BC0;
    v77 = v36;
    *(v36 + 24) = v90;

    v37 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v74 = ~v28;
    v38 = qword_10177C380;
    v39 = swift_allocObject();
    *(v39 + 16) = v79;
    v75 = v33;
    v76 = v31;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v78;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v41;
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Unpair owned beacon: %@", 23, 2, v39);

    v43 = v80;
    static SystemInfo.lockState.getter();
    v45 = v81;
    v44 = v82;
    v46 = v83;
    (*(v82 + 104))(v81, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v83);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v47 = *(v44 + 8);
    v47(v45, v46);
    v47(v43, v46);
    if (v92 == v91)
    {
      v48 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v38, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
      sub_100139CA0();
      v49 = swift_allocError();
      *v50 = 0;
      swift_errorRetain();
      v51 = static os_log_type_t.error.getter();
      v52 = swift_allocObject();
      *(v52 + 16) = v79;
      v92 = v49;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v53 = String.init<A>(describing:)();
      v54 = v78;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = v54;
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v89, "Remove beacon got an error (%@)", 31, 2, v52);

      dispatch_group_leave(v88);
    }

    v56 = dispatch_group_create();
    dispatch_group_enter(v56);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v57 = v75;
    v58 = *(v75 - 8);
    v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v79;
    (*(v58 + 16))(v60 + v59, &v15[v76], v57);
    v61 = swift_allocObject();
    *(v61 + 16) = v56;
    v62 = v56;
    v63 = v86;
    sub_1009C99C0(v60, sub_10040B9F4, v61);

    OS_dispatch_group.wait()();
    v64 = v85;
    sub_100032504(v15, v85, type metadata accessor for OwnedBeaconRecord);
    v65 = (v28 + 16) & v74;
    v66 = (v84 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_10040A014(v64, v68 + v65, type metadata accessor for OwnedBeaconRecord);
    v69 = (v68 + v66);
    v70 = v77;
    *v69 = sub_100407BC8;
    v69[1] = v70;
    v71 = v68 + v67;
    *v71 = v63;
    *(v71 + 8) = 257;

    sub_100AAA40C(v15, sub_10040BA50, v68);

    sub_10040A66C(v15, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {
LABEL_7:

    dispatch_group_leave(v88);
  }
}

uint64_t sub_1003FF8AC(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = __chkstk_darwin(v6);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v73 - v9;
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v84 = v13;
  v85 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v73 - v14;
  v90 = swift_allocObject();
  *(v90 + 16) = a3;
  v88 = a3;
  LODWORD(v89) = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
LABEL_15:
    swift_once();
  }

  v16 = qword_10177C3B0;
  v87 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10138BBE0;
  v92 = *a2;
  sub_1000BC4D4(&qword_10169F430, &qword_1013A08F8);
  v18 = String.init<A>(describing:)();
  v19 = a2;
  v21 = v20;
  *(v17 + 56) = &type metadata for String;
  v22 = sub_100008C00();
  *(v17 + 32) = v18;
  *(v17 + 40) = v21;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v22;
  *(v17 + 64) = v22;
  *(v17 + 72) = 0xD000000000000038;
  *(v17 + 80) = 0x8000000101352DE0;
  v23 = v89;
  v89 = v16;
  v24 = v16;
  v25 = v22;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "%{public}@: %{public}@", 22, 2, v17);

  v86 = v19;
  v26 = sub_100025044();
  a2 = v26[2];
  if (a2)
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= v26[2])
      {
        __break(1u);
        goto LABEL_15;
      }

      v28 = *(v11 + 80);
      sub_100032504(v26 + ((v28 + 32) & ~v28) + *(v11 + 72) * v27, v15, type metadata accessor for OwnedBeaconRecord);
      if (sub_1010DF484(&v15[*(v10 + 24)], a1))
      {
        break;
      }

      ++v27;
      sub_10040A66C(v15, type metadata accessor for OwnedBeaconRecord);
      if (a2 == v27)
      {
        goto LABEL_7;
      }
    }

    v29 = static os_log_type_t.default.getter();
    v30 = swift_allocObject();
    v79 = xmmword_101385D80;
    *(v30 + 16) = xmmword_101385D80;
    v31 = *(v10 + 20);
    v32 = v25;
    v33 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v32;
    v78 = v32;
    *(v30 + 32) = v34;
    *(v30 + 40) = v35;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v89, "Trying to remove (%@)", 21, 2, v30);

    v36 = swift_allocObject();
    *(v36 + 16) = sub_10040A36C;
    v77 = v36;
    *(v36 + 24) = v90;

    v37 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v74 = ~v28;
    v38 = qword_10177C380;
    v39 = swift_allocObject();
    *(v39 + 16) = v79;
    v75 = v33;
    v76 = v31;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v78;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v41;
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Unpair owned beacon: %@", 23, 2, v39);

    v43 = v80;
    static SystemInfo.lockState.getter();
    v45 = v81;
    v44 = v82;
    v46 = v83;
    (*(v82 + 104))(v81, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v83);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v47 = *(v44 + 8);
    v47(v45, v46);
    v47(v43, v46);
    if (v92 == v91)
    {
      v48 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v38, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
      sub_100139CA0();
      v49 = swift_allocError();
      *v50 = 0;
      swift_errorRetain();
      v51 = static os_log_type_t.error.getter();
      v52 = swift_allocObject();
      *(v52 + 16) = v79;
      v92 = v49;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v53 = String.init<A>(describing:)();
      v54 = v78;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = v54;
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v89, "Remove beacon got an error (%@)", 31, 2, v52);

      dispatch_group_leave(v88);
    }

    v56 = dispatch_group_create();
    dispatch_group_enter(v56);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v57 = v75;
    v58 = *(v75 - 8);
    v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v79;
    (*(v58 + 16))(v60 + v59, &v15[v76], v57);
    v61 = swift_allocObject();
    *(v61 + 16) = v56;
    v62 = v56;
    v63 = v86;
    sub_1009C99C0(v60, sub_10040B9F4, v61);

    OS_dispatch_group.wait()();
    v64 = v85;
    sub_100032504(v15, v85, type metadata accessor for OwnedBeaconRecord);
    v65 = (v28 + 16) & v74;
    v66 = (v84 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_10040A014(v64, v68 + v65, type metadata accessor for OwnedBeaconRecord);
    v69 = (v68 + v66);
    v70 = v77;
    *v69 = sub_10040BAA0;
    v69[1] = v70;
    v71 = v68 + v67;
    *v71 = v63;
    *(v71 + 8) = 257;

    sub_100AAA40C(v15, sub_10040BA50, v68);

    sub_10040A66C(v15, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {
LABEL_7:

    dispatch_group_leave(v88);
  }
}

uint64_t sub_10040020C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v49 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  v41 = *(v14 - 8);
  v42 = v14;
  __chkstk_darwin(v14);
  v40 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v40 - v20;
  v50 = a1;
  v21 = *(a1 + 280);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  if (LOBYTE(aBlock[0]) != 1)
  {
    goto LABEL_9;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v22 = sub_101073BE8(aBlock[0]);

  if (v22)
  {
    v23 = swift_allocObject();
    v24 = v50;
    v25 = v43;
    v23[2] = v49;
    v23[3] = v25;
    v23[4] = v24;

    v26 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v39 = v26;
      swift_once();
      v26 = v39;
    }

    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, qword_10177C380, "Creating record for local device on serial queue.", 49, 2, _swiftEmptyArrayStorage);
    v27 = objc_autoreleasePoolPush();
    v28 = v44;
    sub_100AD6EE0(v21, sub_10040A4BC, v23, v44);
    objc_autoreleasePoolPop(v27);
    sub_1000D2A70(v28, v19, &unk_1016A9A20, &qword_10138B280);
    if ((*(v41 + 48))(v19, 1, v42) == 1)
    {
      sub_10000B3A8(v28, &unk_1016A9A20, &qword_10138B280);
      v29 = v19;
    }

    else
    {
      v36 = v40;
      sub_10040A014(v19, v40, type metadata accessor for OwnedBeaconRecord);

      sub_100B0E9C8(v36, 0, v21, v21, sub_10040A4BC, v23);

      sub_10040A66C(v36, type metadata accessor for OwnedBeaconRecord);
      v29 = v28;
    }

    sub_10000B3A8(v29, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
LABEL_9:
    v30 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      v38 = v30;
      swift_once();
      v30 = v38;
    }

    os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10177C3B0, "Self beaconing is not supported on this device.", 47, 2, _swiftEmptyArrayStorage);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v13, v10);
    v32 = swift_allocObject();
    v33 = v49;
    *(v32 + 16) = v50;
    *(v32 + 24) = v33;
    aBlock[4] = sub_10040A46C;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161B9C0;
    v34 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v51 = _swiftEmptyArrayStorage;
    sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v35 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v47 + 8))(v6, v35);
    (*(v45 + 8))(v9, v46);
  }
}

void sub_100400A38(char *a1, int a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v108 = a2;
  v9 = type metadata accessor for ShareRecord(0);
  v113 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v112 = (v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for SystemInfo.DeviceLockState();
  v104 = *(v105 - 8);
  v11 = __chkstk_darwin(v105);
  v103 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v102 = v95 - v13;
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  v99 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v107 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v118 = v95 - v18;
  v100 = v19;
  __chkstk_darwin(v17);
  v101 = v95 - v20;
  v21 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v21 - 8);
  v23 = v95 - v22;
  v24 = type metadata accessor for DirectorySequence();
  v109 = *(v24 - 8);
  v110 = v24;
  __chkstk_darwin(v24);
  v26 = (v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for URL();
  v119 = *(v27 - 1);
  v28 = __chkstk_darwin(v27);
  v30 = v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v95 - v31;
  v33 = swift_allocObject();
  v96 = a4;
  *(v33 + 16) = a4;
  *(v33 + 24) = a5;
  v116 = v33;
  v98 = *(a3 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
  v114 = a3;
  v34 = *(a3 + 280);
  v95[1] = v14;
  v35 = *(v14 + 20);
  v106 = v34;
  *&v120 = *(v34 + 168);
  v97 = a5;

  v36 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_18:
    swift_once();
  }

  sub_1000076D4(v27, qword_10177A518);
  v117 = a1;
  v115 = v35;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v36);
  v122 = _swiftEmptyArrayStorage;
  v123 = _swiftEmptyArrayStorage;
  v37 = [objc_opt_self() defaultManager];
  v111 = v32;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v121 = v26;
  DirectorySequence.next()();
  v38 = *(v119 + 48);
  v39 = v27;
  if (v38(v23, 1, v27) != 1)
  {
    v40 = *(v119 + 32);
    v41 = (v119 + 8);
    do
    {
      v40(v30, v23, v39);
      v42 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v30, v120, &v123, &v122);
      objc_autoreleasePoolPop(v42);
      (*v41)(v30, v39);
      DirectorySequence.next()();
    }

    while (v38(v23, 1, v39) != 1);
  }

  (*(v109 + 8))(v121, v110);
  v26 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  v110 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 1) = xmmword_10138BBE0;
  v30 = v123;
  v43 = *(v123 + 2);
  *(v32 + 7) = &type metadata for Int;
  *(v32 + 8) = &protocol witness table for Int;
  *(v32 + 4) = v43;
  sub_1003FD7F0(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v44 = v111;
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v47 = v46;
  *(v32 + 12) = &type metadata for String;
  v121 = sub_100008C00();
  *(v32 + 13) = v121;
  *(v32 + 9) = v45;
  *(v32 + 10) = v47;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v23, "Found %i records at %@", 22, 2, v32);

  a1 = v122;
  (*(v119 + 8))(v44, v39);

  v36 = *(v30 + 2);
  v49 = v113;
  v48 = v114;
  v27 = v112;
  if (v36)
  {
    v35 = 0;
    while (1)
    {
      if (v35 >= *(v30 + 2))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_100032504(&v30[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v35], v27, type metadata accessor for ShareRecord);
      a1 = *(v48 + 40);
      if (!a1)
      {
        break;
      }

      ++v35;

      sub_100528B94(v27, sub_1003EDE24, 0);

      sub_10040A66C(v27, type metadata accessor for ShareRecord);
      if (v36 == v35)
      {
        goto LABEL_10;
      }
    }

    __break(1u);

    objc_autoreleasePoolPop(0);
    __break(1u);
  }

  else
  {
LABEL_10:

    v50 = v101;
    sub_100032504(v117, v101, type metadata accessor for OwnedBeaconRecord);
    sub_100032504(v50, v118, type metadata accessor for OwnedBeaconRecord);
    v51 = *(v99 + 80);
    v52 = (v51 + 16) & ~v51;
    v119 = v52 + v100;
    v53 = (v52 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
    v113 = v51;
    v111 = (v54 + 8);
    v55 = swift_allocObject();
    v114 = v52;
    sub_10040A014(v50, v55 + v52, type metadata accessor for OwnedBeaconRecord);
    v101 = v53;
    v56 = (v55 + v53);
    v57 = v116;
    *v56 = sub_100407A6C;
    v56[1] = v57;
    v112 = v55;
    v109 = v54;
    *(v55 + v54) = v98;

    v58 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v59 = qword_10177C380;
    v60 = swift_allocObject();
    v120 = xmmword_101385D80;
    *(v60 + 16) = xmmword_101385D80;
    v61 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v121;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = v63;
    *(v60 + 32) = v62;
    *(v60 + 40) = v64;
    os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v59, "Unpair owned beacon: %@", 23, 2, v60);

    v65 = v102;
    static SystemInfo.lockState.getter();
    v66 = v104;
    v67 = v103;
    v68 = v105;
    (*(v104 + 104))(v103, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v105);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v69 = *(v66 + 8);
    v69(v67, v68);
    v69(v65, v68);
    if (v123 == v122)
    {
      v70 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v70, &_mh_execute_header, v59, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
      sub_100139CA0();
      v71 = swift_allocError();
      *v72 = 0;
      v73 = static os_log_type_t.default.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v74 = qword_10177C3B0;
      v75 = swift_allocObject();
      *(v75 + 16) = v120;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v121;
      *(v75 + 56) = &type metadata for String;
      *(v75 + 64) = v77;
      *(v75 + 32) = v76;
      *(v75 + 40) = v78;
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v74, "Unpair for beacon, %@, unsuccessful", 35, 2, v75);

      swift_errorRetain();
      v96(v71, 1);
    }

    v79 = dispatch_group_create();
    dispatch_group_enter(v79);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v80 = *(v61 - 8);
    v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = v120;
    v83 = v117;
    (*(v80 + 16))(v82 + v81, &v117[v115], v61);
    v84 = swift_allocObject();
    *(v84 + 16) = v79;
    v121 = v79;
    v85 = v106;
    sub_1009C99C0(v82, sub_10040B9F4, v84);

    OS_dispatch_group.wait()();
    v86 = v107;
    sub_100032504(v83, v107, type metadata accessor for OwnedBeaconRecord);
    v87 = v109;
    v88 = swift_allocObject();
    v89 = v114;
    sub_10040A014(v86, v88 + v114, type metadata accessor for OwnedBeaconRecord);
    v90 = (v88 + v101);
    v91 = v111;
    v92 = v112;
    *v90 = sub_10040BA4C;
    v90[1] = v92;
    v93 = v88 + v87;
    *v93 = v85;
    v91[v88] = v108 & 1;
    *(v93 + 9) = 1;

    sub_100AAA40C(v83, sub_10040BA50, v88);

    sub_10040A66C(v118, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for Transaction();
    sub_100032504(v83, v86, type metadata accessor for OwnedBeaconRecord);
    v94 = swift_allocObject();
    sub_10040A014(v86, v94 + v89, type metadata accessor for OwnedBeaconRecord);
    static Transaction.asyncTask(name:block:)();
  }
}

void sub_100401924(NSObject *a1, int a2, uint64_t a3, void *a4)
{
  v108 = a2;
  v7 = type metadata accessor for ShareRecord(0);
  v114 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v113 = (v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for SystemInfo.DeviceLockState();
  v104 = *(v105 - 8);
  v9 = __chkstk_darwin(v105);
  v103 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = v96 - v11;
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v99 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v107 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v119 = v96 - v16;
  v100 = v17;
  __chkstk_darwin(v15);
  v101 = v96 - v18;
  v19 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v19 - 8);
  v21 = v96 - v20;
  v22 = type metadata accessor for DirectorySequence();
  v110 = *(v22 - 8);
  v111 = v22;
  __chkstk_darwin(v22);
  v24 = (v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for URL();
  v120 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = (v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v30 = v96 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a4;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10026AE30;
  *(v32 + 24) = v31;
  v117 = v32;
  v98 = *(a3 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
  v115 = a3;
  v33 = *(a3 + 280);
  v96[1] = v12;
  v34 = *(v12 + 20);
  v106 = v33;
  *&v121 = *(v33 + 168);
  v97 = a4;
  _Block_copy(a4);
  v109 = v31;

  v35 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_18:
    swift_once();
  }

  sub_1000076D4(v25, qword_10177A518);
  v118 = a1;
  v116 = v34;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v35);
  v123 = _swiftEmptyArrayStorage;
  v124 = _swiftEmptyArrayStorage;
  v36 = [objc_opt_self() defaultManager];
  v112 = v30;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v122 = v24;
  DirectorySequence.next()();
  v37 = *(v120 + 48);
  v38 = v25;
  if (v37(v21, 1, v25) != 1)
  {
    v39 = *(v120 + 32);
    v40 = (v120 + 8);
    do
    {
      v39(v28, v21, v38);
      v41 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v28, v121, &v124, &v123);
      objc_autoreleasePoolPop(v41);
      (*v40)(v28, v38);
      DirectorySequence.next()();
    }

    while (v37(v21, 1, v38) != 1);
  }

  (*(v110 + 8))(v122, v111);
  v42 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v43 = static OS_os_log.default.getter();
  v25 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 1) = xmmword_10138BBE0;
  v24 = v124;
  isa = v124[2].isa;
  *(v30 + 7) = &type metadata for Int;
  *(v30 + 8) = &protocol witness table for Int;
  *(v30 + 4) = isa;
  sub_1003FD7F0(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v45 = v112;
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v47;
  *(v30 + 12) = &type metadata for String;
  v122 = sub_100008C00();
  *(v30 + 13) = v122;
  *(v30 + 9) = v46;
  *(v30 + 10) = v48;
  os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "Found %i records at %@", 22, 2, v30);

  a1 = v123;
  (*(v120 + 8))(v45, v38);

  v35 = v24[2].isa;
  v21 = v114;
  v49 = v115;
  v28 = v113;
  if (v35)
  {
    v34 = 0;
    while (1)
    {
      if (v34 >= v24[2].isa)
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_100032504(v24 + ((v21[80] + 32) & ~v21[80]) + *(v21 + 9) * v34, v28, type metadata accessor for ShareRecord);
      a1 = *(v49 + 40);
      if (!a1)
      {
        break;
      }

      ++v34;

      sub_100528B94(v28, sub_1003EDE24, 0);

      sub_10040A66C(v28, type metadata accessor for ShareRecord);
      if (v35 == v34)
      {
        goto LABEL_10;
      }
    }

    _Block_release(v97);
    __break(1u);

    _Block_release(v97);
    objc_autoreleasePoolPop(0);
    __break(1u);
  }

  else
  {
LABEL_10:

    v50 = v101;
    sub_100032504(v118, v101, type metadata accessor for OwnedBeaconRecord);
    sub_100032504(v50, v119, type metadata accessor for OwnedBeaconRecord);
    v51 = *(v99 + 80);
    v52 = (v51 + 16) & ~v51;
    v120 = v52 + v100;
    v53 = (v52 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
    v114 = v51;
    v112 = (v54 + 8);
    v55 = swift_allocObject();
    v115 = v52;
    sub_10040A014(v50, v55 + v52, type metadata accessor for OwnedBeaconRecord);
    v110 = v53;
    v56 = (v55 + v53);
    v57 = v117;
    *v56 = sub_10040A6CC;
    v56[1] = v57;
    v113 = v55;
    v111 = v54;
    *(v55 + v54) = v98;

    v58 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v59 = qword_10177C380;
    v60 = swift_allocObject();
    v121 = xmmword_101385D80;
    *(v60 + 16) = xmmword_101385D80;
    v61 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v122;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = v63;
    *(v60 + 32) = v62;
    *(v60 + 40) = v64;
    os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v59, "Unpair owned beacon: %@", 23, 2, v60);

    v65 = v102;
    static SystemInfo.lockState.getter();
    v66 = v104;
    v67 = v103;
    v68 = v105;
    (*(v104 + 104))(v103, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v105);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v69 = *(v66 + 8);
    v69(v67, v68);
    v69(v65, v68);
    if (v124 == v123)
    {
      v70 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v70, &_mh_execute_header, v59, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
      sub_100139CA0();
      swift_allocError();
      *v71 = 0;
      v72 = static os_log_type_t.default.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v73 = qword_10177C3B0;
      v74 = swift_allocObject();
      *(v74 + 16) = v121;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v122;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = v76;
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v73, "Unpair for beacon, %@, unsuccessful", 35, 2, v74);

      v78 = v97;
      _Block_copy(v97);
      v79 = _convertErrorToNSError(_:)();
      v78[2](v78, v79);

      _Block_release(v78);
    }

    v80 = dispatch_group_create();
    dispatch_group_enter(v80);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v81 = *(v61 - 8);
    v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = v121;
    v84 = v118;
    (*(v81 + 16))(v83 + v82, v118 + v116, v61);
    v85 = swift_allocObject();
    *(v85 + 16) = v80;
    v122 = v80;
    v86 = v106;
    sub_1009C99C0(v83, sub_10040B9F4, v85);

    OS_dispatch_group.wait()();
    v87 = v107;
    sub_100032504(v84, v107, type metadata accessor for OwnedBeaconRecord);
    v88 = v111;
    v89 = swift_allocObject();
    v90 = v115;
    sub_10040A014(v87, v89 + v115, type metadata accessor for OwnedBeaconRecord);
    v91 = (v89 + v110);
    v92 = v112;
    v93 = v113;
    *v91 = sub_10040BA4C;
    v91[1] = v93;
    v94 = v89 + v88;
    *v94 = v86;
    v92[v89] = v108 & 1;
    *(v94 + 9) = 1;

    sub_100AAA40C(v84, sub_10040BA50, v89);

    sub_10040A66C(v119, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for Transaction();
    sub_100032504(v84, v87, type metadata accessor for OwnedBeaconRecord);
    v95 = swift_allocObject();
    sub_10040A014(v87, v95 + v90, type metadata accessor for OwnedBeaconRecord);
    static Transaction.asyncTask(name:block:)();
  }
}

void sub_100402860()
{
  v0 = sub_1000BC4D4(&qword_10169F478, &qword_1013A0A48);
  __chkstk_darwin(v0 - 8);
  v94 = &v70 - v1;
  v96 = type metadata accessor for URLResourceValues();
  v79 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for URL();
  v100 = *(v74 - 8);
  __chkstk_darwin(v74);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v5 - 8);
  v7 = &v70 - v6;
  v76 = type metadata accessor for DirectorySequence();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v99 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Calendar();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v16 = __chkstk_darwin(v15 - 8);
  v89 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v70 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v84 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v70 - v25;
  __chkstk_darwin(v24);
  v86 = &v70 - v27;
  v85 = [objc_opt_self() defaultManager];
  static Calendar.current.getter();
  (*(v10 + 104))(v12, enum case for Calendar.Component.day(_:), v9);
  static Date.trustedNow.getter(v26);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v28 = v21[1];
  v83 = v21 + 1;
  v82 = v28;
  v28(v26, v20);
  (*(v10 + 8))(v12, v9);
  (*(v98 + 8))(v14, v101);
  v29 = v21[6];
  v88 = v21 + 6;
  v87 = v29;
  if (v29(v19, 1, v20) != 1)
  {
    v31 = v21[4];
    v78 = v21 + 4;
    v77 = v31;
    (v31)(v86, v19, v20);
    v32 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v33 = qword_10177C380;
    v72 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    v95 = xmmword_101385D80;
    *(v34 + 16) = xmmword_101385D80;
    sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v90 = v20;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    *(v34 + 56) = &type metadata for String;
    v71 = sub_100008C00();
    *(v34 + 64) = v71;
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v73 = v33;
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "removeExpiredNotificationRecordTombstones() threshold: %{public}@", 65, 2, v34);

    v38 = v74;
    if (qword_1016947A0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v38, qword_10177AEC8);
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();
    DirectorySequence.next()();
    v39 = v100 + 48;
    v98 = *(v100 + 48);
    if ((v98)(v7, 1, v38) == 1)
    {
LABEL_10:

      (*(v75 + 8))(v99, v76);
      v82(v86, v90);
      return;
    }

    v97 = *(v100 + 32);
    v101 = 0x80000001013541B0;
    v100 += 32;
    v40 = (v100 - 24);
    v93 = NSURLCreationDateKey;
    v92 = (v79 + 7);
    v80 = (v79 + 4);
    ++v79;
    v70 = xmmword_10138BBE0;
    v81 = v39;
    v97(v4, v7, v38);
    while (1)
    {
      if (URL.pathExtension.getter() == 0xD000000000000010 && v101 == v41)
      {
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_1000BC4D4(&qword_10169F480, &qword_1013A0A50);
      inited = swift_initStackObject();
      *(inited + 16) = v95;
      v44 = v93;
      *(inited + 32) = v93;
      v45 = v44;
      sub_10112A718(inited);
      swift_setDeallocating();
      v46 = v94;
      sub_10040A66C(inited + 32, type metadata accessor for URLResourceKey);
      URL.resourceValues(forKeys:)();

      v47 = v96;
      (*v92)(v46, 0, 1, v96);
      v48 = v91;
      (*v80)();
      v49 = v89;
      URLResourceValues.creationDate.getter();
      v50 = v90;
      if (v87(v49, 1, v90) == 1)
      {
        (*v79)(v48, v47);
        (*v40)(v4, v38);
        sub_10000B3A8(v49, &unk_101696900, &unk_10138B1E0);
        goto LABEL_12;
      }

      v51 = v84;
      v77();
      if ((static Date.< infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v52 = static os_log_type_t.default.getter();
      v53 = swift_allocObject();
      *(v53 + 16) = v95;
      v54 = URL.absoluteString.getter();
      v55 = v71;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = v55;
      *(v53 + 32) = v54;
      *(v53 + 40) = v56;
      os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v73, "Purging expired tombstoned notification record: %@", 50, 2, v53);

      URL._bridgeToObjectiveC()(v57);
      v59 = v58;
      v102 = 0;
      LODWORD(v52) = [v85 removeItemAtURL:v58 error:&v102];

      if (v52)
      {
        v60 = v102;
        v82(v84, v90);
        (*v79)(v91, v96);
LABEL_25:
        (*v40)(v4, v38);
        goto LABEL_12;
      }

      v61 = v102;
      v62 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v63 = static os_log_type_t.error.getter();
      v64 = swift_allocObject();
      *(v64 + 16) = v70;
      v65 = URL.absoluteString.getter();
      *(v64 + 56) = &type metadata for String;
      *(v64 + 64) = v55;
      *(v64 + 32) = v65;
      *(v64 + 40) = v66;
      v102 = v62;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v67 = String.init<A>(describing:)();
      *(v64 + 96) = &type metadata for String;
      *(v64 + 104) = v55;
      *(v64 + 72) = v67;
      *(v64 + 80) = v68;
      os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v73, "Error deleting URL %@: %@", 25, 2, v64);

      v82(v84, v90);
      (*v79)(v91, v96);
      (*v40)(v4, v38);
LABEL_12:
      DirectorySequence.next()();
      if ((v98)(v7, 1, v38) == 1)
      {
        goto LABEL_10;
      }

      v97(v4, v7, v38);
    }

    v82(v51, v50);
    (*v79)(v48, v47);
    goto LABEL_25;
  }

  sub_10000B3A8(v19, &unk_101696900, &unk_10138B1E0);
  v30 = static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    v69 = v30;
    swift_once();
    v30 = v69;
  }

  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10177C380, "Unable to create theshold date!", 31, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100403718(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v87 = a1;
  v2 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v2 - 8);
  v88 = v77 - v3;
  v89 = type metadata accessor for OwnedBeaconRecord(0);
  v85 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v91 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v90 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v77 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v80 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v82 = v77 - v14;
  v15 = __chkstk_darwin(v13);
  v79 = v77 - v16;
  v17 = __chkstk_darwin(v15);
  v81 = v77 - v18;
  v19 = __chkstk_darwin(v17);
  v84 = v77 - v20;
  v21 = __chkstk_darwin(v19);
  v86 = v77 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v77 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = v77 - v27;
  __chkstk_darwin(v26);
  v30 = v77 - v29;
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v92 = v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v34 = v95;
  KeyPath = swift_getKeyPath();
  sub_101075400(KeyPath, v34, v30);

  v36 = *(v32 + 48);
  if (v36(v30, 1, v31) == 1)
  {
    sub_10000B3A8(v30, &qword_1016980D0, &unk_10138F3B0);
    (*(v32 + 56))(v28, 1, 1, v31);
    sub_1000D2A70(v28, v25, &qword_1016980D0, &unk_10138F3B0);
    if (v36(v25, 1, v31) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v32 + 8))(v25, v31);
    }

    (*(v93 + 16))(v93, isa);

    return sub_10000B3A8(v28, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v77[0] = v36;
    v77[1] = v32 + 48;
    v38 = v32;
    v39 = *(v32 + 32);
    v40 = v92;
    v78 = v31;
    v39(v92, v30, v31);
    static SystemInfo.lockState.getter();
    v42 = v90;
    v41 = v91;
    (*(v91 + 104))(v90, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v43 = *(v41 + 8);
    v43(v42, v5);
    v43(v9, v5);
    if (v95 == v94)
    {
      v44 = static os_log_type_t.default.getter();
      v45 = v77[0];
      if (qword_101695068 != -1)
      {
        v76 = v44;
        swift_once();
        v44 = v76;
      }

      os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, qword_10177C3B0, "Returning possibly false UUID because device lockState is beforeFirstUnlock", 75, 2, _swiftEmptyArrayStorage);
      v46 = v86;
      v47 = v78;
      (*(v38 + 16))(v86, v40, v78);
      (*(v38 + 56))(v46, 0, 1, v47);
      v48 = v84;
      sub_1000D2A70(v46, v84, &qword_1016980D0, &unk_10138F3B0);
      if (v45(v48, 1, v47) == 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v38 + 8))(v48, v47);
      }

      (*(v93 + 16))(v93, v49);

      sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
      return (*(v38 + 8))(v40, v47);
    }

    else
    {
      v51 = v88;
      sub_1003DB678(v88);
      v52 = v89;
      if ((*(v85 + 48))(v51, 1, v89) == 1)
      {
        sub_10000B3A8(v51, &unk_1016A9A20, &qword_10138B280);
        v53 = static os_log_type_t.error.getter();
        if (qword_101695068 != -1)
        {
          swift_once();
        }

        v54 = qword_10177C3B0;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_101385D80;
        v56 = UUID.uuidString.getter();
        v58 = v57;
        *(v55 + 56) = &type metadata for String;
        *(v55 + 64) = sub_100008C00();
        *(v55 + 32) = v56;
        *(v55 + 40) = v58;
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "Local beacon found in defaults, but not in BeaconStore!: %@", 59, 2, v55);

        v59 = v82;
        v60 = v78;
        (*(v38 + 56))(v82, 1, 1, v78);
        v61 = v80;
        sub_1000D2A70(v59, v80, &qword_1016980D0, &unk_10138F3B0);
        if ((v77[0])(v61, 1, v60) == 1)
        {
          v62 = 0;
        }

        else
        {
          v62 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v38 + 8))(v61, v60);
        }

        (*(v93 + 16))(v93, v62);

        sub_10000B3A8(v59, &qword_1016980D0, &unk_10138F3B0);
        return (*(v38 + 8))(v92, v60);
      }

      else
      {
        v63 = v83;
        sub_10040A014(v51, v83, type metadata accessor for OwnedBeaconRecord);
        v64 = static os_log_type_t.default.getter();
        if (qword_101695068 != -1)
        {
          swift_once();
        }

        v65 = qword_10177C3B0;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_101385D80;
        v67 = *(v52 + 20);
        v68 = UUID.uuidString.getter();
        v70 = v69;
        *(v66 + 56) = &type metadata for String;
        *(v66 + 64) = sub_100008C00();
        *(v66 + 32) = v68;
        *(v66 + 40) = v70;
        os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v65, "Found cached local beacon UUID already stored: %@", 49, 2, v66);

        v71 = v81;
        v72 = v78;
        (*(v38 + 16))(v81, v63 + v67, v78);
        (*(v38 + 56))(v71, 0, 1, v72);
        v73 = v79;
        sub_1000D2A70(v71, v79, &qword_1016980D0, &unk_10138F3B0);
        if ((v77[0])(v73, 1, v72) == 1)
        {
          v74 = 0;
        }

        else
        {
          v74 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v38 + 8))(v73, v72);
        }

        v75 = v92;
        (*(v93 + 16))(v93, v74);

        sub_10000B3A8(v71, &qword_1016980D0, &unk_10138F3B0);
        sub_10040A66C(v63, type metadata accessor for OwnedBeaconRecord);
        return (*(v38 + 8))(v75, v72);
      }
    }
  }
}

uint64_t sub_1004042AC()
{
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v0 + 16) = swift_task_alloc();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100404374;

  return daemon.getter();
}

uint64_t sub_100404374(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[4] = a1;

  v3 = swift_task_alloc();
  v2[5] = v3;
  v4 = type metadata accessor for Daemon();
  v2[6] = v4;
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[7] = v6;
  v7 = sub_1003FD7F0(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100404554;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100404554(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    v6 = swift_task_alloc();
    v4[11] = v6;
    *v6 = v5;
    v6[1] = sub_100404A60;

    return daemon.getter();
  }

  else
  {

    return _swift_task_switch(sub_1004046F0, a1, 0);
  }
}

uint64_t sub_1004046F0()
{
  v1 = *(v0 + 72);
  v2 = sub_1003FD7F0(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF478);
  v3 = *(v2 + 96);
  v4 = type metadata accessor for StandaloneBeaconDatabase(0);
  v3(v4, v2);
  if (v1)
  {
    *(v0 + 80) = v1;
    v5 = sub_100404878;
  }

  else
  {
    sub_100C656D8();
    v5 = sub_1004047E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004047E0()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100404A60;

  return daemon.getter();
}

uint64_t sub_100404878()
{
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
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error purging StandaloneBeaconService: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_100404A60;

  return daemon.getter();
}

uint64_t sub_100404A60(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 96) = a1;

  v5 = swift_task_alloc();
  *(v3 + 104) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_1003FD7F0(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_100404C14;
  v8 = *(v2 + 56);
  v9 = *(v2 + 48);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100404C14(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100404D84, a1, 0);
  }
}

uint64_t sub_100404D84()
{
  v1 = v0[14];
  if (*(v1 + 128))
  {
    v2 = v0[15];
    v3 = sub_1003FD7F0(&qword_101699D28, type metadata accessor for ObservationDatabase, &unk_10140B820);
    v4 = *(v3 + 96);
    v5 = type metadata accessor for ObservationDatabase(0);
    v4(v5, v3);
    if (v2)
    {
      v0[16] = v2;
      v6 = sub_100404F88;
      goto LABEL_9;
    }

    sub_100C640C8();
    v1 = v0[14];
  }

  v7 = *(v1 + 136);
  if (v7)
  {
    v8 = v0[2];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;

    sub_100A838D4(0, 0, v8, &unk_1013A09E0, v10);
  }

  v6 = sub_100404F20;
LABEL_9:

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100404F20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100404F88()
{
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
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error purging ObservationStoreSerivce: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_100405140()
{
  v0 = sub_1003256BC();
  v1 = sub_1011D1800();
  v2 = sub_100B108D8();
  v3 = sub_10130A3DC();
  v4 = sub_1008504DC();
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67110144;
    *(v7 + 4) = v0 & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v1 & 1;
    *(v7 + 14) = 1024;
    *(v7 + 16) = v2 & 1;
    *(v7 + 20) = 1024;
    *(v7 + 22) = v3 & 1;
    *(v7 + 26) = 1024;
    *(v7 + 28) = v4 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Deleted account keychain items. deletedItemSharingKey: %{BOOL}d, deletedObservationKey: %{BOOL}d, deletedBeaconStoreKey: %{BOOL}d, deletedKeyManagerKey: %{BOOL}d deletedStandaloneBeaconDatabaseKey: %{BOOL}d.", v7, 0x20u);
  }
}

void sub_1004052AC(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v44 = type metadata accessor for PairingErrorRecord(0);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for DirectorySequence();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v50 = *(*(a1 + 280) + 168);
  if (qword_101694E68 != -1)
  {
    swift_once();
  }

  v17 = sub_1000076D4(v10, qword_10177C048);
  (*(v11 + 16))(v16, v17, v10);
  v52 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  v18 = [objc_opt_self() defaultManager];
  v47 = v16;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v51 = v9;
  DirectorySequence.next()();
  v49 = v11;
  v19 = *(v11 + 48);
  if (v19(v6, 1, v10) != 1)
  {
    v20 = *(v49 + 32);
    v21 = (v49 + 8);
    do
    {
      v20(v14, v6, v10);
      v22 = objc_autoreleasePoolPush();
      sub_1005FD5CC(v14, v50, &v53, &v52);
      objc_autoreleasePoolPop(v22);
      (*v21)(v14, v10);
      DirectorySequence.next()();
    }

    while (v19(v6, 1, v10) != 1);
  }

  (*(v45 + 8))(v51, v46);
  v23 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v24 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10138BBE0;
  v26 = v53;
  v27 = v53[2];
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v27;
  sub_1003FD7F0(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v28 = v47;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = sub_100008C00();
  *(v25 + 72) = v29;
  *(v25 + 80) = v31;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Found %i records at %@", 22, 2, v25);

  (*(v49 + 8))(v28, v10);

  v32 = v26[2];
  if (v32)
  {
    v53 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v33 = v43;
    v34 = v26 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v35 = *(v42 + 72);
    do
    {
      sub_100032504(v34, v33, type metadata accessor for PairingErrorRecord);
      sub_100D57594();
      sub_10040A66C(v33, type metadata accessor for PairingErrorRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += v35;
      --v32;
    }

    while (v32);

    v36 = v53;
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
  }

  v37 = static os_log_type_t.info.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v38 = qword_10177C410;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_101385D80;
  v40 = v36[2];
  *(v39 + 56) = &type metadata for Int;
  *(v39 + 64) = &protocol witness table for Int;
  *(v39 + 32) = v40;
  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "allPairingErrors count: %i", v42);

  sub_10039C60C(v36);

  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v48 + 16))(v48, isa);
}

uint64_t sub_100405A6C(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  return sub_1003EDA2C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v2 + ((*(v8 + 80) + (((((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v8 + 80)));
}

uint64_t sub_100405BB0(uint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003ED37C(a1, v4);
}

id sub_100405C58@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  result = sub_10003EB74(v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)), *(*(v1 + 16) + 280));
  *a1 = result;
  return result;
}

uint64_t sub_100405CC4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101164E08(v2, v3);
}

uint64_t sub_100405D5C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1011655D4(v0);
}

unint64_t sub_100405DEC()
{
  result = qword_101698BF0;
  if (!qword_101698BF0)
  {
    sub_100008BB8(255, &unk_1016BBE80, SPBeaconShare_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698BF0);
  }

  return result;
}

uint64_t sub_100405E70(uint64_t a1)
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100AD3A1C(a1, v6, v1 + v5);
}

uint64_t sub_100405F54(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1003EC8A4(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_100405FFC(char *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = (v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1003ECD14(a1, (v1 + v4), v6, v7, v9, v10);
}

uint64_t sub_1004060AC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);

  return sub_1003ECF68(a1, (v1 + v4), v7, v8, v9, v10);
}

uint64_t sub_10040617C()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003EF220(v0 + v3);
}

uint64_t sub_100406248()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_1004065B4(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1003EE354(a1, v6, v7, v1 + v5);
}

uint64_t sub_1004066A4()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 25) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 25) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 25) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100406A28(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003E3564(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_100406AE8(void (*a1)(void))
{
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v4 = *(*(v3 - 1) + 80);
  v18 = *(*(v3 - 1) + 64);
  a1(*(v1 + 16));
  v5 = v1 + ((v4 + 24) & ~v4);
  sub_100016590(*v5, *(v5 + 8));
  v6 = v3[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v9(v5 + v3[6], v7);

  v10 = v3[18];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v3[19];
  v13 = *(v8 + 48);
  if (!v13(v5 + v12, 1, v7))
  {
    v9(v5 + v12, v7);
  }

  v14 = v5 + v3[20];
  v15 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = *(v15 + 20);
    if (!v13(v14 + v16, 1, v7))
    {
      v9(v14 + v16, v7);
    }
  }

  return _swift_deallocObject(v1, ((v18 + ((v4 + 24) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100406D9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t sub_100406E54(uint64_t a1)
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1003F0290(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100406FA4()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1003E7200(v3, v0 + v2, v5, v6);
}

void sub_100407038(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8));

  sub_1003E7FB0(a1, v1 + v4, v7, v8, v9, v10);
}

uint64_t sub_1004070EC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003E9004(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_100407190(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003EB664(a1, v1 + v4, v5);
}

uint64_t sub_100407238()
{
  v2 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_1003E9224(v0 + v3, v5, v7, v8);
}

uint64_t sub_10040735C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_1003EA6F8(a1, a2, v7, v6);
}

uint64_t sub_100407410(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1003EAEA8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100407508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100010F48(a1, v4);
}

uint64_t sub_1004075C0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1003EC4C8(a1, a2, v6, v7);
}

uint64_t sub_100407644(_BYTE *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1003EC69C(a1, v4, v5, v6);
}

uint64_t sub_1004076C0()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

void sub_100407830(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_1003E7380(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_1004078DC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_1003EBF80(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_100407988(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));
  v7 = v6[*(v5 + 64)];
  v8 = *(v2 + 16);

  return sub_1003EDD10(a1, a2, v8, v6, v7);
}

uint64_t sub_100407A2C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_100407AB8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1003D55B8(v0);
}

uint64_t sub_100407BE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003D6C40(v2, v3);
}

uint64_t sub_100407C78()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1003D7198(v4, v5, v0 + v3);
}

uint64_t sub_100407D54(uint64_t a1)
{
  type metadata accessor for BeaconEstimatedLocation(0);
  type metadata accessor for OwnedBeaconRecord(0);

  return sub_1003D6D60(a1);
}

double sub_100407E28(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100407E78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003D0CEC(v2, v3);
}

double sub_100408020(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100408040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_101165260(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100408110(uint64_t a1)
{

  return _swift_deallocObject(v1, a1);
}

void sub_100408170(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_1004081B0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1004081BC(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_100408218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100A9A13C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004082E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AD35D4(a1, v4, v1 + 24);
}

uint64_t sub_10040838C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100AD3688(a1, v4, v1 + 24);
}

uint64_t sub_100408438(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AD3688(a1, v4, v1 + 24);
}

uint64_t sub_1004084E4()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 24) & ~v2) + v16);
}

uint64_t sub_100408760()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1003DBBD4(v0);
}

uint64_t sub_1004087F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1003DD220(a1, v4);
}

uint64_t sub_1004088A8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10094D880(v0);
}

uint64_t sub_100408940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1009904EC(a1, v4, v5, v6);
}

void sub_100408A2C(uint64_t a1, int a2, uint64_t a3, void (**a4)(const void *, void))
{
  v70 = a2;
  v72 = a1;
  v67 = type metadata accessor for UUID();
  v63 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = v6;
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v61 = &v60 - v8;
  v65 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v65);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SharedBeaconRecord(0);
  v10 = __chkstk_darwin(v68);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v14 - 8);
  v16 = (&v60 - v15);
  v17 = type metadata accessor for OwnedBeaconGroup(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OwnedBeaconRecord(0);
  v22 = __chkstk_darwin(v21);
  v24 = (&v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v60 - v25;
  v73 = swift_allocObject();
  *(v73 + 2) = a4;
  v71 = a3;
  v69 = a4;
  v27 = a4;
  v28 = v72;
  _Block_copy(v27);
  sub_100025020(v28, &v75);
  if (v76)
  {
    sub_100031694(&v75, v77);
    sub_10001F280(v77, &v75);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    if (swift_dynamicCast())
    {
      sub_10040A014(v26, v24, type metadata accessor for OwnedBeaconRecord);
      sub_1003DF44C(v24, v70 & 1, sub_10001E370, v73);
      v29 = type metadata accessor for OwnedBeaconRecord;
      v30 = v24;
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        v40 = v66;
        if (swift_dynamicCast())
        {
          v41 = swift_allocObject();
          v42 = v73;
          *(v41 + 16) = sub_10001E370;
          *(v41 + 24) = v42;
          v43 = type metadata accessor for TaskPriority();
          v44 = v61;
          (*(*(v43 - 8) + 56))(v61, 1, 1, v43);
          v45 = v63;
          v46 = v62;
          v47 = v67;
          (*(v63 + 16))(v62, v28, v67);
          v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
          v49 = (v60 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
          v50 = swift_allocObject();
          *(v50 + 16) = 0;
          *(v50 + 24) = 0;
          (*(v45 + 32))(v50 + v48, v46, v47);
          v51 = (v50 + v49);
          *v51 = sub_10040BA44;
          v51[1] = v41;

          sub_10025EDD4(0, 0, v44, &unk_1013A0A28, v50);

          v69[2](v69, 0);
          sub_100007BAC(v77);
          sub_10040A66C(v40, type metadata accessor for LocalFindableAccessoryRecord);
        }

        else
        {
          v52 = static os_log_type_t.error.getter();
          if (qword_101695068 != -1)
          {
            swift_once();
          }

          v53 = qword_10177C3B0;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_101385D80;
          sub_10001F280(v77, v74);
          v55 = String.init<A>(describing:)();
          v57 = v56;
          *(v54 + 56) = &type metadata for String;
          *(v54 + 64) = sub_100008C00();
          *(v54 + 32) = v55;
          *(v54 + 40) = v57;
          os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v53, "Unhandled beacon type: %@", 25, 2, v54);

          sub_1003FD838();
          swift_allocError();
          *v58 = 3;
          v59 = _convertErrorToNSError(_:)();
          (v69)[2](v69, v59);

          sub_100007BAC(v77);
        }

        goto LABEL_11;
      }

      v39 = v64;
      sub_10040A014(v13, v64, type metadata accessor for SharedBeaconRecord);
      sub_1003E0AE0(v39, sub_10001E370, v73);
      v29 = type metadata accessor for SharedBeaconRecord;
      v30 = v39;
    }

    sub_10040A66C(v30, v29);
    sub_100007BAC(v77);
LABEL_11:
    sub_100007BAC(&v75);
LABEL_13:

    return;
  }

  sub_10000B3A8(&v75, &qword_101696920, &unk_10138B200);
  sub_100AC53EC(v28, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_10040A014(v16, v20, type metadata accessor for OwnedBeaconGroup);
    sub_1003E0D7C(v20, v70 & 1, sub_10001E370, v73);
    sub_10040A66C(v20, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_13;
  }

  sub_10000B3A8(v16, &unk_1016AF8B0, &unk_1013A0700);
  v31 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100008C00();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Can't find beacon for uuid: %@", 30, 2, v33);

  type metadata accessor for SPOwnerSessionError(0);
  *&v75 = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1003FD7F0(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  v37 = v77[0];
  v38 = _convertErrorToNSError(_:)();
  (v69)[2](v69, v38);
}

uint64_t sub_100409474(char a1, uint64_t a2)
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C418);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "setAlwaysBeaconWildState to %{BOOL}d", v7, 8u);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  [v8 setBool:a1 & 1 forKey:v9];

  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v10)
  {
    v11 = v10;
    v12 = SPBeaconingStateChangedNotification;
    v13 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v17 = v13;
      swift_once();
      v13 = v17;
    }

    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C380, "Posting SPBeaconingStateChangedNotification Darwin notification", 63, 2, _swiftEmptyArrayStorage);
    CFNotificationCenterPostNotification(v11, v12, 0, 0, 1u);
  }

  else
  {
    v14 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      v18 = v14;
      swift_once();
      v14 = v18;
    }

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10177C380, "CFNotificationCenterGetDarwinNotifyCenter return nil!", 53, 2, _swiftEmptyArrayStorage);
  }

  v15 = *(a2 + 16);

  return v15(a2, 1);
}

uint64_t sub_100409708(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v41 = a2;
  v2 = sub_1000BC4D4(&qword_10169F458, &unk_1013D35E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for OfflineFindingInfo(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DB678(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &unk_1016A9A20, &qword_10138B280);
    sub_1003FD838();
    v15 = swift_allocError();
    *v16 = 1;
    v41(0, 0xF000000000000000, v15);
  }

  else
  {
    v18 = v41;
    sub_10040A014(v10, v14, type metadata accessor for OwnedBeaconRecord);
    sub_1003DE85C(v14, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000B3A8(v4, &qword_10169F458, &unk_1013D35E0);
      sub_1003FD838();
      v19 = swift_allocError();
      *v20 = 1;
      v18(0, 0xF000000000000000, v19);
    }

    else
    {
      v21 = v40;
      sub_10040A014(v4, v40, type metadata accessor for OfflineFindingInfo);
      v22 = objc_opt_self();
      sub_100B9925C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v42 = 0;
      v24 = [v22 dataWithPropertyList:isa format:200 options:0 error:&v42];

      v25 = v42;
      if (v24)
      {
        v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        sub_100017D5C(v26, v28);
        v18(v26, v28, 0);
        sub_100016590(v26, v28);
        sub_100016590(v26, v28);
      }

      else
      {
        v29 = v25;
        v30 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_101694840 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_1000076D4(v31, qword_10177B060);
        swift_errorRetain();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v35 = v42;
          *v34 = 136315138;
          swift_getErrorValue();
          v36 = Error.localizedDescription.getter();
          v38 = sub_1000136BC(v36, v37, &v42);

          *(v34 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v32, v33, "PropertyListSerialization error: %s", v34, 0xCu);
          sub_100007BAC(v35);
          v18 = v41;
        }

        swift_errorRetain();
        v18(0, 0xF000000000000000, v30);
      }

      sub_10040A66C(v21, type metadata accessor for OfflineFindingInfo);
    }

    return sub_10040A66C(v14, type metadata accessor for OwnedBeaconRecord);
  }
}

uint64_t sub_100409D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  UUID.uuidString.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();
  [v8 setObject:v9 forKey:v10];

  if (qword_101694840 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177B060);
  (*(v5 + 16))(v7, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1000136BC(v16, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Poisoning beacon UUID: %s", v14, 0xCu);
    sub_100007BAC(v15);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_10040A014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10040A0D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10040A1AC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1006D6D14(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10040A2EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10040A390(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_10040A41C(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32);
}

uint64_t sub_10040A474()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10040A4C8()
{
  v1 = *(sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D8150(v0 + v2, v3);
}

BOOL sub_10040A578(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  return sub_1010DF484(a1 + *(v4 + 24), v3);
}

uint64_t sub_10040A5FC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003D8DBC(a1, v4);
}

uint64_t sub_10040A66C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10040A6D4()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10040AA60(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1003EDF5C(a1, v1 + v4, v6, v7);
}

uint64_t sub_10040AB0C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
}

uint64_t sub_10040AE98(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v6 + 9);

  return sub_100DDEE3C(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_10040AF50()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v2[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v1 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v2[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v2[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v14 = (v4 + v2[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v2[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));

  return _swift_deallocObject(v1, v3 + v20);
}

uint64_t sub_10040B2B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v68 = a3;
  v63 = a2;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v65 = &v62[-v9];
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v10);
  v12 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = qword_1016950D0;

  v66 = a5;
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C418);
  sub_100032504(a1, v12, type metadata accessor for OwnedBeaconGroup);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v67 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v74[0] = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_10040A66C(v12, type metadata accessor for OwnedBeaconGroup);
    v23 = sub_1000136BC(v20, v22, v74);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "removeAirPodsPairingLock for %{private,mask.hash}s", v18, 0x16u);
    sub_100007BAC(v19);
    v10 = v67;
  }

  else
  {

    sub_10040A66C(v12, type metadata accessor for OwnedBeaconGroup);
  }

  v24 = sub_1003CDA20(*(a1 + *(v10 + 40)));
  v25 = sub_1003E28E4(v24);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v74[0] = v29;
    *v28 = 136315138;
    type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v30 = Array.description.getter();
    v32 = sub_1000136BC(v30, v31, v74);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "unpairDevices: %s", v28, 0xCu);
    sub_100007BAC(v29);
  }

  v33 = MobileGestalt_get_current_device();
  if (v33)
  {
    v34 = v33;
    v64 = a4;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    v36 = MobileGestalt_get_current_device();
    if (v36)
    {
      v37 = v36;
      chipID = MobileGestalt_get_chipID();

      *&v74[0] = uniqueChipID;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      *&v74[0] = chipID;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v45 = sub_100EF9784();
      v47 = v46;
      v48 = v67;
      v49 = MACAddress.udid.getter();
      *&v69 = v39;
      *(&v69 + 1) = v41;
      *&v70 = v42;
      *(&v70 + 1) = v44;
      *&v71 = v45;
      *(&v71 + 1) = v47;
      *&v72 = v49;
      *(&v72 + 1) = v50;
      LOBYTE(v73) = v63 & 1;
      *(&v73 + 1) = v25;
      v74[3] = v72;
      v74[4] = v73;
      v74[1] = v70;
      v74[2] = v71;
      v74[0] = v69;
      v51 = sub_100A2C34C();
      v52 = *(v48 + 24);
      v53 = type metadata accessor for UUID();
      v54 = *(v53 - 8);
      v55 = a1 + v52;
      v56 = v65;
      (*(v54 + 16))(v65, v55, v53);
      (*(v54 + 56))(v56, 0, 1, v53);
      v57 = v64;

      v58 = v66;
      sub_10093B584(v56, v74, v51, v57, v58);

      sub_100405A18(&v69);
      sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v60 = v66;

    __break(1u);
  }

  v61 = v66;

  __break(1u);
  return result;
}

unint64_t sub_10040B930()
{
  result = qword_10169F488;
  if (!qword_10169F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F488);
  }

  return result;
}