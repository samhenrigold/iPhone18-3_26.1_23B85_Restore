uint64_t sub_1000934B8(uint64_t *a1)
{
  result = swift_beginAccess();
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v75 = 0;
    v6 = 0;
    v74 = v3 + 32;
    v69 = v3;
    v68 = v4;
    do
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_73;
      }

      sub_10000A990(v5 + 40 * v6, v86);
      sub_10000A990(v86, v85);
      sub_100003CDC(&qword_100137300, &qword_1000F5020);
      if (swift_dynamicCast())
      {
        sub_100003C90(v86);

        v75 = 1;
      }

      else if (swift_dynamicCast())
      {
        v7 = v84;
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000F3C80;
        v9 = sub_100069D98(v7);
        if (!v10)
        {
          goto LABEL_81;
        }

        v11 = v9;
        v12 = v10;
        *(v8 + 56) = &type metadata for String;
        v71 = sub_100003D24();
        v72 = v8;
        *(v8 + 64) = v71;
        *(v8 + 32) = v11;
        *(v8 + 40) = v12;
        v73 = v7;
        v13 = sub_10006CA98();
        if (v14 >> 60 == 15)
        {
          goto LABEL_80;
        }

        v15 = v14;
        v16 = v14 >> 62;
        v77 = HIDWORD(v13);
        v78 = v13;
        v70 = v6;
        if ((v14 >> 62) > 1)
        {
          if (v16 == 2)
          {
            v34 = *(v13 + 16);
            v33 = *(v13 + 24);
            v17 = v33 - v34;
            if (__OFSUB__(v33, v34))
            {
              goto LABEL_75;
            }

            if (v17)
            {
              goto LABEL_26;
            }
          }
        }

        else if (v16)
        {
          v37 = HIDWORD(v13) - v13;
          if (__OFSUB__(HIDWORD(v13), v13))
          {
            goto LABEL_76;
          }

          v17 = v37;
          if (v37)
          {
LABEL_26:
            sub_1000635A4(0, v17 & ~(v17 >> 63), 0);
            v35 = v78;
            if (v16)
            {
              if (v16 == 2)
              {
                v36 = *(v78 + 16);
              }

              else
              {
                v36 = v78;
              }
            }

            else
            {
              v36 = 0;
            }

            v81 = v36;
            if (v17 < 0)
            {
              goto LABEL_74;
            }

            v38 = 0;
            v76 = &v82 + v36;
            v79 = v17;
            v80 = v16;
            while (2)
            {
              if (v38 >= v17)
              {
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
              }

              v39 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_66;
              }

              v40 = v81 + v38;
              if (v16 == 2)
              {
                if (v40 < *(v35 + 16))
                {
                  goto LABEL_68;
                }

                if (v40 >= *(v35 + 24))
                {
                  goto LABEL_70;
                }

                v45 = __DataStorage._bytes.getter();
                if (!v45)
                {
                  goto LABEL_78;
                }

                v42 = v45;
                v46 = __DataStorage._offset.getter();
                v44 = v40 - v46;
                if (__OFSUB__(v40, v46))
                {
                  goto LABEL_72;
                }

LABEL_50:
                v47 = *(v42 + v44);
                v35 = v78;
              }

              else
              {
                if (v16 == 1)
                {
                  if (v40 < v78 || v40 >= v78 >> 32)
                  {
                    goto LABEL_69;
                  }

                  v41 = __DataStorage._bytes.getter();
                  if (!v41)
                  {
                    goto LABEL_77;
                  }

                  v42 = v41;
                  v43 = __DataStorage._offset.getter();
                  v44 = v40 - v43;
                  if (__OFSUB__(v40, v43))
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_50;
                }

                if (v40 >= BYTE6(v15))
                {
                  goto LABEL_67;
                }

                LOWORD(v82) = v35;
                BYTE2(v82) = BYTE2(v35);
                BYTE3(v82) = BYTE3(v35);
                BYTE4(v82) = v77;
                BYTE5(v82) = BYTE5(v35);
                BYTE6(v82) = BYTE6(v35);
                HIBYTE(v82) = HIBYTE(v35);
                LOWORD(v83) = v15;
                BYTE2(v83) = BYTE2(v15);
                BYTE3(v83) = BYTE3(v15);
                BYTE4(v83) = BYTE4(v15);
                BYTE5(v83) = BYTE5(v15);
                v47 = v76[v38];
              }

              v48 = swift_allocObject();
              *(v48 + 16) = xmmword_1000F3160;
              *(v48 + 56) = &type metadata for UInt8;
              *(v48 + 64) = &protocol witness table for UInt8;
              *(v48 + 32) = v47;
              v49 = String.init(format:_:)();
              v16 = v50;
              v52 = _swiftEmptyArrayStorage[2];
              v51 = _swiftEmptyArrayStorage[3];
              if (v52 >= v51 >> 1)
              {
                sub_1000635A4((v51 > 1), v52 + 1, 1);
                v35 = v78;
              }

              _swiftEmptyArrayStorage[2] = v52 + 1;
              v53 = &_swiftEmptyArrayStorage[2 * v52];
              v53[4] = v49;
              v53[5] = v16;
              ++v38;
              v17 = v79;
              LODWORD(v16) = v80;
              if (v39 == v79)
              {
                v3 = v69;
                v4 = v68;
                break;
              }

              continue;
            }
          }
        }

        else
        {
          v17 = BYTE6(v14);
          if (BYTE6(v14))
          {
            goto LABEL_26;
          }
        }

        v82 = _swiftEmptyArrayStorage;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
        v54 = BidirectionalCollection<>.joined(separator:)();
        v56 = v55;
        sub_100014988(v78, v15);

        v72[12] = &type metadata for String;
        v72[13] = v71;
        v72[9] = v54;
        v72[10] = v56;
        sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
        v57 = static OS_os_log.default.getter();
        v58 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Received update notification for bundle ID %{public}s, unique ID %{public}s", 75, 2, &_mh_execute_header, v57, v58, v72);

        v82 = 0;
        v83 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);

        v82 = 0xD000000000000021;
        v83 = 0x8000000100109020;
        v59 = sub_100069D98(v73);
        v61 = v60;

        if (v61)
        {
          v62 = v59;
        }

        else
        {
          v62 = 0x296C696E28;
        }

        if (!v61)
        {
          v61 = 0xE500000000000000;
        }

        v63 = v61;
        String.append(_:)(*&v62);

        sub_100083E80(v82, v83);

        sub_100003C90(v86);
        v5 = v74;
        v6 = v70;
      }

      else
      {
        v18 = v6;
        if (!swift_dynamicCast())
        {
          v82 = 0;
          v83 = 0xE000000000000000;
          _StringGuts.grow(_:)(34);
          v67._countAndFlagsBits = 0xD000000000000020;
          v67._object = 0x8000000100108EC0;
          String.append(_:)(v67);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_88:
          swift_once();
LABEL_83:
          if (byte_100138870 == 1)
          {
            v64 = static os_log_type_t.error.getter();
            sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
            v65 = static OS_os_log.default.getter();
            os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v65, "(NOT AN ERROR) Kernel requested shutdown. Goodbye!", 50, 2, _swiftEmptyArrayStorage);
          }

          else
          {
            sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
            v65 = static OS_os_log.default.getter();
            v66 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("Kernel requested shutdown. Goodbye!", 35, 2, &_mh_execute_header, v65, v66, _swiftEmptyArrayStorage);
          }

          exit(0);
        }

        v19 = v84;
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1000F3160;
        v21 = sub_10008F7F8(v19);
        if (!v22)
        {
          goto LABEL_79;
        }

        v23 = v21;
        v24 = v22;
        *(v20 + 56) = &type metadata for String;
        *(v20 + 64) = sub_100003D24();
        *(v20 + 32) = v23;
        *(v20 + 40) = v24;
        sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
        v25 = static OS_os_log.default.getter();
        v26 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Received unload notification for bundle ID %{public}s", 53, 2, &_mh_execute_header, v25, v26, v20);

        v82 = 0;
        v83 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);

        v82 = 0xD000000000000021;
        v83 = 0x8000000100108F30;
        v27 = sub_10008F7F8(v19);
        v29 = v28;

        if (v29)
        {
          v30 = v27;
        }

        else
        {
          v30 = 0x296C696E28;
        }

        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0xE500000000000000;
        }

        v32 = v31;
        String.append(_:)(*&v30);

        sub_100083E80(v82, v83);

        sub_100003C90(v86);
        v5 = v74;
        v6 = v18;
      }

      ++v6;
      sub_100003C90(v85);
    }

    while (v6 != v4);

    if (v75)
    {
      if (qword_100133B38 != -1)
      {
        goto LABEL_88;
      }

      goto LABEL_83;
    }
  }

  return result;
}

uint64_t sub_100093EA4()
{
  sub_100003C90((v0 + 16));

  return v0;
}

uint64_t sub_100093F0C()
{
  sub_100093EA4();

  return swift_deallocClassInstance();
}

uint64_t sub_100093F80(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 32)
    {
      sub_100014894(i, v8, &qword_1001343C8, &unk_1000F3CA0);
      if (!v9)
      {
        break;
      }

      result = sub_10000A184(v8, &qword_1001343C8, &unk_1000F3CA0);
      if (!--v1)
      {
        return result;
      }
    }

    sub_10001449C();
    swift_allocError();
    *v3 = 0x2064696C61766E49;
    *(v3 + 8) = 0xEF74736575716572;
    *(v3 + 16) = v4;
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 64) = v7;
    *(v3 + 72) = 9;
    swift_willThrow();
    return sub_10000A184(v8, &qword_1001343C8, &unk_1000F3CA0);
  }

  return result;
}

uint64_t sub_10009409C(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  v11 = *(*(*(v5 + 80) + 56) + 656);

  os_unfair_lock_lock((v11 + 72));
  v12 = *(v11 + 32);
  v107[0] = *(v11 + 16);
  v107[1] = v12;
  v107[2] = *(v11 + 48);
  v108 = *(v11 + 64);
  sub_100013848(v107, &v103);
  os_unfair_lock_unlock((v11 + 72));

  v13 = sub_100056C60(a1, a2);
  sub_1000138A4(v107);
  if (!v13)
  {
    goto LABEL_67;
  }

  v92 = a5;
  v96 = a3;
  v109 = _swiftEmptyArrayStorage;
  v14 = (v13 & 0xFFFFFFFFFFFFFF8);
  if (v13 >> 62)
  {
    goto LABEL_64;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v16 = _swiftEmptyArrayStorage;
  v93 = a2;
  v94 = a1;
  v99 = a4;
  if (v15)
  {
    a1 = 0;
    a4 = v13 & 0xC000000000000001;
    v97 = v13 & 0xC000000000000001;
    v98 = v13;
    while (1)
    {
      if (a4)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a2 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v16 = v109;
          a2 = v93;
          a1 = v94;
          a4 = v99;
          break;
        }
      }

      else
      {
        if (a1 >= *(v14 + 2))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v15 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v17 = *(v13 + 8 * a1 + 32);

        a2 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          goto LABEL_18;
        }
      }

      sub_1000138F8(*(v17 + 24) + 24, &v103);
      if (BYTE8(v105))
      {
        sub_100013954(&v103);
      }

      else
      {
        v18 = v15;
        v19 = v14;
        sub_100009F34(&v103, v100);
        v20 = v101;
        v21 = v102;
        sub_100003C4C(v100, v101);
        (*(v21 + 56))(v20, v21);
        v23 = v22;
        sub_100003C90(v100);
        if (v23)
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v14 = v19;
        v15 = v18;
        a4 = v97;
        v13 = v98;
      }

      ++a1;
      if (a2 == v15)
      {
        goto LABEL_19;
      }
    }
  }

  v24 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
  if (!v24)
  {
    v25 = *(v16 + 16);
    if (v25 > 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (v25 <= 0)
  {
LABEL_66:

LABEL_67:
    *&v103 = 0;
    *(&v103 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v59._countAndFlagsBits = 0xD000000000000027;
    v59._object = 0x80000001001089A0;
    String.append(_:)(v59);
    v60._countAndFlagsBits = a1;
    v60._object = a2;
    String.append(_:)(v60);
    v61._object = 0x80000001001089D0;
    v61._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v61);
    v62 = v103;
    sub_10001449C();
    swift_allocError();
    *v37 = v62;
    v63 = v106;
    v64 = v105;
    v65 = v104;
    *(v37 + 16) = v103;
    *(v37 + 32) = v65;
    *(v37 + 48) = v64;
    *(v37 + 64) = v63;
    v41 = 10;
    goto LABEL_68;
  }

LABEL_25:
  v90 = v24;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000F3C80;
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v25;
  *(v26 + 96) = &type metadata for String;
  v27 = sub_100003D24();
  *(v26 + 104) = v27;
  *(v26 + 72) = a1;
  *(v26 + 80) = a2;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

  v28 = static OS_os_log.default.getter();
  v29 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Found %{public}d dexts with bundle identifier %{public}s", 56, 2, &_mh_execute_header, v28, v29, v26);

  if (a4 >> 60 == 15)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1000F3160;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v27;
    *(v30 + 32) = a1;
    *(v30 + 40) = a2;

    v31 = static OS_os_log.default.getter();
    v32 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("No unique identifier available to disambiguate between dexts of bundle identifier %{public}s", 92, 2, &_mh_execute_header, v31, v32, v30);

    if (v92)
    {

      *&v103 = 0;
      *(&v103 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(93);
      v33._countAndFlagsBits = 0xD000000000000036;
      v33._object = 0x8000000100108CD0;
      String.append(_:)(v33);
      v34._countAndFlagsBits = a1;
      v34._object = a2;
      String.append(_:)(v34);
      v35._countAndFlagsBits = 0xD000000000000025;
      v35._object = 0x8000000100108D10;
      String.append(_:)(v35);
      v36 = v103;
      sub_10001449C();
      swift_allocError();
      *v37 = v36;
      v38 = v106;
      v39 = v105;
      v40 = v104;
      *(v37 + 16) = v103;
      *(v37 + 32) = v40;
      *(v37 + 48) = v39;
      *(v37 + 64) = v38;
      v41 = 50;
LABEL_68:
      *(v37 + 72) = v41;
      swift_willThrow();
      return a1;
    }

    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1000F3160;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = v27;
    v45 = v27;
    *(v47 + 32) = a1;
    *(v47 + 40) = a2;

    v48 = static OS_os_log.default.getter();
    v49 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Arbitrarily picking first dext with bundle idenfier %{public}s", 62, 2, &_mh_execute_header, v48, v49, v47);

    if (v90)
    {
      v50 = v95;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_32:
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_81;
        }

        if (*(v16 + 16))
        {
          a1 = *(v16 + 32);

          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_83;
      }
    }

    else
    {
      v50 = v95;
      if (*(v16 + 16))
      {
        goto LABEL_32;
      }
    }

    return 0;
  }

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000F3C80;
  sub_1000146C4(v96, a4);
  *&v103 = sub_10005BD44(v96, a4);
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
  v43 = BidirectionalCollection<>.joined(separator:)();
  v45 = v44;

  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v27;
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  *(v42 + 96) = &type metadata for String;
  *(v42 + 104) = v27;
  v89 = v27;
  *(v42 + 72) = a1;
  *(v42 + 80) = a2;

  v14 = static OS_os_log.default.getter();
  v46 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Using unique id %{public}s to pick dext matching bundle identifier %{public}s", 77, 2, &_mh_execute_header, v14, v46, v42);

  *&v103 = _swiftEmptyArrayStorage;
  if (v90)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a1 = *(v16 + 16);
  }

  if (!a1)
  {
    v52 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_52;
  }

  v13 = 0;
  a4 = v16 & 0xC000000000000001;
  while (a4)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    a2 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_48;
    }

LABEL_43:
    v100[0] = v45;
    v51 = sub_10009EF5C(v100, v96, v99);
    if (v95)
    {
      goto LABEL_85;
    }

    if (v51)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = &v103;
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      v14 = 0;
    }

    ++v13;
    if (a2 == a1)
    {
      goto LABEL_49;
    }
  }

  if (v13 >= *(v16 + 16))
  {
    goto LABEL_63;
  }

  v45 = *(v16 + 8 * v13 + 32);

  a2 = (v13 + 1);
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_43;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v52 = v103;
  if ((v103 & 0x8000000000000000) == 0)
  {
LABEL_52:
    if ((v52 & 0x4000000000000000) != 0)
    {
      goto LABEL_70;
    }

    if (*(v52 + 16))
    {
      goto LABEL_54;
    }

LABEL_71:

    v91 = static os_log_type_t.error.getter();
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1000F3C80;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = v27;
    *(v69 + 32) = v94;
    *(v69 + 40) = v93;

    *&v103 = sub_10005BD44(v96, v99);
    v70 = BidirectionalCollection<>.joined(separator:)();
    v72 = v71;

    *(v69 + 96) = &type metadata for String;
    *(v69 + 104) = v89;
    *(v69 + 72) = v70;
    *(v69 + 80) = v72;
    v73 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v73, "No dexts with bundle identifier %{public}s matched unique id %{public}s", 71, 2, v69);

    if (v92)
    {

      *&v103 = 0;
      *(&v103 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(68);
      v74._countAndFlagsBits = 0xD000000000000029;
      v74._object = 0x8000000100108DE0;
      String.append(_:)(v74);
      v75._countAndFlagsBits = v94;
      v75._object = v93;
      String.append(_:)(v75);
      v76._countAndFlagsBits = 0xD000000000000017;
      v76._object = 0x8000000100108E10;
      String.append(_:)(v76);
      v100[0] = sub_10005BD44(v96, v99);
      v77 = BidirectionalCollection<>.joined(separator:)();
      v79 = v78;

      v80._countAndFlagsBits = v77;
      v80._object = v79;
      String.append(_:)(v80);

      v81 = v103;
      sub_10001449C();
      swift_allocError();
      *v82 = v81;
      v83 = v106;
      v84 = v105;
      v85 = v104;
      *(v82 + 16) = v103;
      *(v82 + 32) = v85;
      *(v82 + 48) = v84;
      *(v82 + 64) = v83;
      *(v82 + 72) = 10;
      swift_willThrow();
      sub_100014988(v96, v99);
      return a1;
    }

    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1000F3160;
    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = v89;
    *(v86 + 32) = v94;
    *(v86 + 40) = v93;

    v87 = static OS_os_log.default.getter();
    v88 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Arbitrarily picking first dext with bundle idenfier %{public}s", 62, 2, &_mh_execute_header, v87, v88, v86);

    if (!a1)
    {

      sub_100014988(v96, v99);
      return a1;
    }

    v50 = v99;
    if ((v16 & 0xC000000000000001) == 0)
    {
      if (!*(v16 + 16))
      {
        __break(1u);
LABEL_85:

        __break(1u);
        return result;
      }

      a1 = *(v16 + 32);

      goto LABEL_77;
    }

LABEL_83:
    a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_77:

    sub_100014988(v96, v50);
LABEL_58:
    v45 = v89;
    goto LABEL_59;
  }

LABEL_70:
  v67 = v52;
  v68 = _CocoaArrayWrapper.endIndex.getter();
  v52 = v67;
  if (!v68)
  {
    goto LABEL_71;
  }

LABEL_54:
  if ((v52 & 0xC000000000000001) != 0)
  {
    a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v53 = v99;
LABEL_57:
    sub_100014988(v96, v53);

    goto LABEL_58;
  }

  v53 = v99;
  if (*(v52 + 16))
  {
    a1 = *(v52 + 32);

    goto LABEL_57;
  }

  __break(1u);
LABEL_81:
  a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_59:
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1000F3C80;
  *(v54 + 56) = &type metadata for String;
  *(v54 + 64) = v45;
  *(v54 + 32) = v94;
  *(v54 + 40) = v93;
  swift_retain_n();

  v55 = sub_1000D77B8();
  *(v54 + 96) = &type metadata for String;
  *(v54 + 104) = v45;
  *(v54 + 72) = v55;
  *(v54 + 80) = v56;
  v57 = static OS_os_log.default.getter();
  v58 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Picked matching dext for bundle identifier %{public}s: %{public}s", 65, 2, &_mh_execute_header, v57, v58, v54);

  return a1;
}

uint64_t sub_100094DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000F3160;
  *&v122[0] = 1954047300;
  *(&v122[0] + 1) = 0xE400000000000000;

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = sub_1000D7374();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 30240;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = sub_1000D7614();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0x293F3F3F28;
    v19 = 0xE500000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v17);

  v21._countAndFlagsBits = 544106784;
  v21._object = 0xE400000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = sub_1000DAD64();
  String.append(_:)(v22);

  v23 = v122[0];
  *(v13 + 56) = &type metadata for String;
  v24 = sub_100003D24();
  *(v13 + 64) = v24;
  *(v13 + 32) = v23;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v25 = static OS_os_log.default.getter();
  v26 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Launching driver extension via running board: %{public}s", 56, 2, &_mh_execute_header, v25, v26, v13);

  sub_1000138F8(a1 + 24, v122);
  if (BYTE8(v123))
  {
    sub_100013954(v122);
    goto LABEL_6;
  }

  v105 = v24;
  v107 = a2;
  sub_100009F34(v122, v125);
  v30 = v126;
  v29 = v127;
  sub_100003C4C(v125, v126);
  v31 = (*(v29 + 56))(v30, v29);
  v33 = v32;
  sub_100003C90(v125);
  if (!v33)
  {
LABEL_6:
    sub_1000138F8(a1 + 24, v122);
    if (BYTE8(v123))
    {
      sub_100013954(v122);
    }

    else
    {
      sub_100009F34(v122, v125);
      v41 = v126;
      v42 = v127;
      sub_100003C4C(v125, v126);
      v28 = (*(v42 + 24))(v41, v42);
      v27 = v43;
      sub_100003C90(v125);
      if (v27)
      {
        goto LABEL_14;
      }
    }

    v27 = 0xE300000000000000;
    v28 = 4079420;
LABEL_14:
    *&v122[0] = 0;
    *(&v122[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *&v122[0] = 0xD000000000000010;
    *(&v122[0] + 1) = 0x80000001001078B0;
    v44._countAndFlagsBits = v28;
    v44._object = v27;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0xD000000000000017;
    v45._object = 0x8000000100108B00;
    String.append(_:)(v45);
    v46 = v122[0];
    sub_10001449C();
    swift_allocError();
    *v47 = v46;
    v48 = v124;
    v49 = v123;
    v50 = v122[1];
    *(v47 + 16) = v122[0];
    *(v47 + 32) = v50;
    *(v47 + 48) = v49;
    *(v47 + 64) = v48;
    *(v47 + 72) = 4;
    return swift_willThrow();
  }

  v104 = v31;
  v106 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000F3160;
  *(v34 + 56) = &type metadata for UInt64;
  *(v34 + 64) = &protocol witness table for UInt64;
  *(v34 + 32) = a4;
  v35 = String.init(format:_:)();
  v37 = v36;
  v38 = v128;
  swift_beginAccess();
  sub_100003C4C((v38 + 16), *(v38 + 40));
  sub_1000E0CE8(v125);
  v39 = v126;
  v40 = v127;
  sub_100003C4C(v125, v126);
  (*(v40 + 8))(v122, a2, a3, v35, v37, a8, a9, v39, v40);
  if (v113)
  {
  }

  else
  {
    v103 = v35;
    v114 = v37;
    sub_100003C90(v125);
    v51 = sub_10003EB54(_swiftEmptyArrayStorage);
    v52 = 32;
    if ((a5 & 1) == 0)
    {
      v52 = 0;
    }

    v112 = v52;
    sub_100014894(a7, &v119, &unk_100137390, &unk_1000F4E70);
    if (v120)
    {
      sub_100009F34(&v119, v125);
      sub_100003C4C(v125, v126);

      v54 = sub_1000C5470(v53);

      v55 = v128;
      if (v54)
      {
        v56 = *(a1 + 16);
        if (*(v56 + 16))
        {
          v57 = sub_100061588(0xD000000000000014, 0x80000001001079F0);
          if (v58)
          {
            sub_10000B430(*(v56 + 56) + 32 * v57, &v119);
            sub_100003CDC(&unk_1001373A0, &unk_1000F91B0);
            if (swift_dynamicCast())
            {

              v51 = v116[0];
            }
          }
        }

        if (*(v56 + 16))
        {
          v59 = sub_100061588(0x6F43656C62616E45, 0xEF73706D75446572);
          if (v60)
          {
            sub_10000B430(*(v56 + 56) + 32 * v59, &v119);
            if (swift_dynamicCast())
            {
              v61 = v112;
              if (LOBYTE(v116[0]))
              {
                v61 = v112 | 0x40;
              }

              v112 = v61;
            }
          }
        }
      }

      v62 = *(*sub_100003C4C(v125, v126) + 16);
      if (*(v62 + 16))
      {

        v63 = sub_100061588(0xD000000000000033, 0x8000000100107990);
        if (v64)
        {
          sub_10000B430(*(v62 + 56) + 32 * v63, &v119);

          if (swift_dynamicCast() & 1) != 0 && (v116[0])
          {
            v109 = static os_log_type_t.info.getter();
            v65 = swift_allocObject();
            *(v65 + 16) = xmmword_1000F3C80;
            *&v119 = 1954047300;
            *(&v119 + 1) = 0xE400000000000000;

            v66._countAndFlagsBits = 32;
            v66._object = 0xE100000000000000;
            String.append(_:)(v66);
            v67._countAndFlagsBits = sub_1000D7374();
            String.append(_:)(v67);

            v68._countAndFlagsBits = 30240;
            v68._object = 0xE200000000000000;
            String.append(_:)(v68);
            v69 = sub_1000D7614();
            if (v70)
            {
              v71 = v70;
            }

            else
            {
              v69 = 0x293F3F3F28;
              v71 = 0xE500000000000000;
            }

            v72 = v71;
            String.append(_:)(*&v69);

            v73._countAndFlagsBits = 544106784;
            v73._object = 0xE400000000000000;
            String.append(_:)(v73);
            v74._countAndFlagsBits = sub_1000DAD64();
            String.append(_:)(v74);

            v55 = v128;

            v75 = v119;
            *(v65 + 56) = &type metadata for String;
            *(v65 + 64) = v105;
            *(v65 + 32) = v75;
            *(v65 + 96) = &type metadata for String;
            *(v65 + 104) = v105;
            *(v65 + 72) = a8;
            *(v65 + 80) = a9;

            v76 = static OS_os_log.default.getter();
            os_log(_:dso:log:_:_:)(v109, &_mh_execute_header, v76, "Driver extension %{public}s cannot use the system thread group because it is associated with application %{public}s", 115, 2, v65);
          }
        }

        else
        {
        }
      }

      sub_100003C90(v125);
    }

    else
    {
      sub_10000A184(&v119, &unk_100137390, &unk_1000F4E70);
      v55 = v128;
    }

    sub_100003C4C((v55 + 16), *(v55 + 40));
    sub_1000E0CE8(&v119);
    v77 = v120;
    v78 = v121;
    sub_100003C4C(&v119, v120);
    (*(v78 + 16))(v125, v122, v77, v78);
    sub_100003C90(&v119);
    v80 = v126;
    v81 = v127;
    sub_100003DA0(v125, v126);
    (*(v81 + 16))(v104, v106, v80, v81);
    v82 = v126;
    v83 = v127;
    sub_100003DA0(v125, v126);
    (*(v83 + 40))(v112, v82, v83);
    sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1000F7EC0;
    *(v84 + 32) = v107;
    *(v84 + 40) = a3;
    *(v84 + 48) = v103;
    *(v84 + 56) = v114;

    *(v84 + 64) = sub_1000D7374();
    *(v84 + 72) = v85;
    v86 = v126;
    v87 = v127;
    sub_100003DA0(v125, v126);
    (*(v87 + 64))(v84, v86, v87);
    sub_10007CDA8(v51);
    v89 = v88;

    v90 = v126;
    v91 = v127;
    sub_100003DA0(v125, v126);
    (*(v91 + 88))(v89, v90, v91);
    v92 = v126;
    v93 = v127;
    sub_100003DA0(v125, v126);
    (*(v93 + 112))(a6, v92, v93);
    v94 = sub_1000D7374();
    v96 = v95;
    v97 = v126;
    v98 = v127;
    sub_100003DA0(v125, v126);
    (*(v98 + 136))(v94, v96, v97, v98);
    sub_100003C4C((v55 + 16), *(v55 + 40));
    sub_1000E0CE8(v116);
    v99 = v117;
    v100 = v118;
    sub_100003C4C(v116, v117);
    (*(v100 + 24))(&v119, v125, v99, v100);
    sub_100003C90(v116);
    v101 = v120;
    v102 = v121;
    sub_100003C4C(&v119, v120);
    (*(v102 + 8))(v101, v102);
    sub_100003C90(v122);
    sub_100003C90(&v119);
  }

  return sub_100003C90(v125);
}

uint64_t sub_100095978(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealBundleResolver();
  v19[4] = &off_10012A460;
  v19[0] = a1;
  v4 = sub_100003CDC(&unk_100137450, &unk_1000F9738);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100095B78(uint64_t a1, uint64_t *a2)
{
  v19[3] = sub_100009FEC(0, &qword_100137440, NSFileManager_ptr);
  v19[4] = &off_10012E208;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_100137448, &qword_1000F9730);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100095D88(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealKernelClient();
  v19[4] = &off_100128770;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_100137438, &qword_1000F9728);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100095F88(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealDaemonLauncher();
  v19[4] = &off_1001286E8;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_100137430, &qword_1000F9720);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100096188(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for NullSystemPolicyClient();
  v19[4] = &off_100129860;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_100137428, &qword_1000F9718);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100096388(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for EmbeddedSIPStatus();
  v19[4] = &off_100127530;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_100137420, &qword_1000F9710);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100096588(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealDistNote();
  v19[4] = &off_1001286F8;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_100137418, &qword_1001018C0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100096788(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for MinimalDeveloperKitClient();
  v19[4] = &off_10012E368;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_100137410, &unk_1000F9700);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100096988(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealApprovalsXPCPublisher();
  v19[4] = &off_10012E4F8;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_100133C70, &qword_100101860);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100096B88(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealDeviceProperties();
  v19[4] = &off_10012E1B0;
  v19[0] = a1;
  v4 = sub_100003CDC(&unk_100137400, &unk_1000F96F0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100096D88(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealOSEnvironment();
  v19[4] = &off_100129DD0;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373F8, &qword_100101960);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100096F88(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealCoreAnalyticsClient();
  v19[4] = &off_100126E20;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373E8, &unk_1000F96E0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100097188(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for NullCoreAnalyticsClient();
  v19[4] = &off_100126E10;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373E8, &unk_1000F96E0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100097388(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealFeatureFlagsClient();
  v19[4] = &off_100127920;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373E0, &qword_1001019B0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100097588(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RestoreOSFeatureFlagsClient();
  v19[4] = &off_1001278F8;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373E0, &qword_1001019B0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100097788(uint64_t a1, uint64_t *a2)
{
  v19[3] = sub_100009FEC(0, &qword_1001373F0, &off_100125108);
  v19[4] = &off_100127000;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373D8, &unk_1000F96D0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100097998(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for NullRunningBoardSupport();
  v19[4] = &off_100127020;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373D8, &unk_1000F96D0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100097B98(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for RealLaunchServices();
  v19[4] = &off_1001278B8;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373D0, &qword_1001018F0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100097D98(uint64_t a1, uint64_t *a2)
{
  v19[3] = type metadata accessor for NullLaunchServices();
  v19[4] = &off_1001278D0;
  v19[0] = a1;
  v4 = sub_100003CDC(&qword_1001373D0, &qword_1001018F0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v17);
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = ObjectIdentifier.debugDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Warning: %s is already attached", v16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v18 + 1) = v4;
  *&v17 = swift_allocObject();
  sub_10000A990(v19, v17 + 16);
  swift_beginAccess();
  sub_100048114(&v17, v4);
  swift_endAccess();
  return sub_100003C90(v19);
}

uint64_t sub_100097F98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000193A4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100009F34(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100098030()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098068()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1000980E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100098118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100098188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000981E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100098230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100133CC0, &qword_1000F32F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000982A0()
{
  sub_100003C90((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

CFDictionaryRef sub_100098310()
{
  result = CFBundleGetInfoDictionary(*(v0 + 16));
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000983B0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 32))(a1);
  if (result)
  {
    return sub_1000CAE64(result);
  }

  return result;
}

CFURLRef sub_1000983EC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098E60();
  if (v7)
  {

    v8 = 0xEA0000000000656CLL;
    v9 = 0x6261747563657865;
  }

  else
  {
    v8 = 0xE800000000000000;
    v9 = 0x7373656C65646F63;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v30 = v9;
  v31 = v8;
  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = sub_100098310();
  v13 = v12;
  v14 = sub_1000C8B7C(v11, v12);
  v16 = v15;
  sub_100041A00(v11, v13);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x20656C646E756220;
  v18._object = 0xE800000000000000;
  String.append(_:)(v18);
  v19 = sub_100098AC4();
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v19 = 0x296C696E28;
    v21 = 0xE500000000000000;
  }

  v22 = v21;
  String.append(_:)(*&v19);

  v23._countAndFlagsBits = 544497952;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  result = CFBundleCopyBundleURL(*(v1 + 16));
  if (result)
  {
    v25 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = URL.path.getter();
    v28 = v27;
    (*(v3 + 8))(v6, v2);
    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100098614()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 _cfBundle];
  if (v7)
  {
    v8 = v7;
    v9 = _CFBundleCopyInfoPlistURL();

    if (v9)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = (v3 + 8);
      v11 = Data.init(contentsOf:options:)();
      v13 = v12;
      (*v10)(v6, v2);
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(length:)();
      v16 = 0x2000000000;
      v17 = v14;
      sub_10003CEB8(&v16, 0);
      v17 |= 0x4000000000000000uLL;
      sub_1000146C4(v11, v13);
      sub_10003ED1C(&v16, v11, v13);
      sub_1000128D8(v11, v13);
      sub_1000128D8(v11, v13);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100098818(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1000988B4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_100098918()
{
  v1 = [*v0 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100098978@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 builtInPlugInsURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_100098A1C(uint64_t a1)
{
  result = sub_10009932C(&qword_100137460, 255, sub_100098A78, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098A78()
{
  result = qword_100137468;
  if (!qword_100137468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100137468);
  }

  return result;
}

CFDictionaryRef sub_100098AC4()
{
  result = CFBundleGetInfoDictionary(*(v0 + 16));
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    return 0;
  }

  return result;
}

id sub_100098C10(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    v3 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    return 0;
  }

  return result;
}

void *sub_100098CB0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_autoreleasePoolPush();
  result = _CFBundleCopyInfoPlistURL();
  if (result)
  {
    v7 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = (v1 + 8);
    v9 = Data.init(contentsOf:options:)();
    v10 = v4;
    v12 = v11;
    (*v8)(v10, v0);
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v13 = __DataStorage.init(length:)();
    v16 = 0x2000000000;
    v17 = v13;
    sub_10003CEB8(&v16, 0);
    v17 |= 0x4000000000000000uLL;
    sub_10003ED1C(&v16, v9, v12);
    sub_1000128D8(v9, v12);
    v14 = v16;
    objc_autoreleasePoolPop(v5);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100098E60()
{
  v1 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v3 = __chkstk_darwin(v1 - 8, v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v15 - v7;
  v9 = CFBundleCopyExecutableURL(*(v0 + 16));
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  sub_100099374(v5, v8);
  type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_10007B024(v8);
    return 0;
  }

  else
  {
    v14 = URL.path.getter();
    (*(v12 + 8))(v8, v11);
    return v14;
  }
}

uint64_t sub_10009903C()
{

  return swift_deallocClassInstance();
}

void sub_100099198()
{
  v1 = CFBundleCopyBundleURL(*(*v0 + 16));
  if (v1)
  {
    v2 = v1;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000991F4@<X0>(uint64_t a1@<X8>)
{
  v3 = CFBundleCopyBuiltInPlugInsURL(*(*v1 + 16));
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1000992D4(uint64_t a1, uint64_t a2)
{
  result = sub_10009932C(&qword_1001375A8, a2, type metadata accessor for UncachedBundle, &unk_1000F97E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009932C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100099374(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000993E4(uint64_t a1)
{
  type metadata accessor for UncachedBundle();
  v2 = swift_allocObject();
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  Unique = _CFBundleCreateUnique();

  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 8);
  if (Unique)
  {
    v9 = Unique;
    v8(a1, v7);

    *(v2 + 16) = v9;
  }

  else
  {
    v8(a1, v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

void sub_1000994DC(uint64_t a1)
{
  v3 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v3 - 8, v4);
  v73 = &v64 - v5;
  v76 = type metadata accessor for URL();
  v6 = *(v76 - 8);
  v8 = __chkstk_darwin(v76, v7);
  v67 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v64 = &v64 - v11;
  v69 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OSExtension(0);
    sub_10009C5E0(&qword_1001375B0, type metadata accessor for OSExtension, &unk_100101324);
    Set.Iterator.init(_cocoa:)();
    a1 = v85;
    v12 = v86;
    v14 = v87;
    v13 = v88;
    v15 = v89;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v13 = 0;
  }

  v68 = v14;
  v19 = (v14 + 64) >> 6;
  v71 = 0x8000000100104280;
  v72 = (v6 + 56);
  v75 = (v6 + 48);
  v65 = v6;
  v66 = (v6 + 32);
  v70 = _swiftEmptyArrayStorage;
  v74 = xmmword_1000F3160;
LABEL_8:
  v20 = v13;
  if (a1 < 0)
  {
    do
    {
      v25 = __CocoaSet.Iterator.next()();
      if (!v25)
      {
        goto LABEL_51;
      }

      v81 = v25;
      type metadata accessor for OSExtension(0);
      swift_dynamicCast();
      v24 = *&v79[0];
      v13 = v20;
      v23 = v15;
      if (!*&v79[0])
      {
        goto LABEL_51;
      }

LABEL_17:
      v90 = v23;
      v26 = static os_log_type_t.info.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v27 = swift_allocObject();
      *(v27 + 16) = v74;
      v28 = *v24;
      v29 = 4144959;
      if (*v24 == _TtC10driverkitd15DriverExtension)
      {
        v29 = 1954047300;
      }

      v30 = v28 == _TtC10driverkitd15DriverExtension || v28 == _TtC10driverkitd15KernelExtension;
      v31 = 0xE300000000000000;
      if (v30)
      {
        v31 = 0xE400000000000000;
      }

      if (v28 == _TtC10driverkitd15KernelExtension)
      {
        v29 = 1954047307;
      }

      v81 = v29;
      v82 = v31;
      v32._countAndFlagsBits = 32;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33 = *(v24 + 16);
      if (qword_100133A50 == -1)
      {
        if (!*(v33 + 16))
        {
          goto LABEL_32;
        }
      }

      else
      {
        swift_once();
        if (!*(v33 + 16))
        {
          goto LABEL_32;
        }
      }

      v34 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
      if (v35)
      {
        sub_10000B430(*(v33 + 56) + 32 * v34, v79);
        if (swift_dynamicCast())
        {
          v36 = a1;
          v37 = v77;
          v38 = v78;
          goto LABEL_33;
        }
      }

LABEL_32:
      v36 = a1;
      v37 = 0xD000000000000014;
      v38 = v71;
LABEL_33:
      v39 = v38;
      String.append(_:)(*&v37);

      v40._countAndFlagsBits = 30240;
      v40._object = 0xE200000000000000;
      String.append(_:)(v40);
      v41 = *(v24 + 16);
      if (qword_100133A70 == -1)
      {
        if (!*(v41 + 16))
        {
          goto LABEL_39;
        }
      }

      else
      {
        swift_once();
        if (!*(v41 + 16))
        {
          goto LABEL_39;
        }
      }

      v42 = sub_100061588(qword_10014E900, *algn_10014E908);
      if (v43)
      {
        sub_10000B430(*(v41 + 56) + 32 * v42, v79);
        if (swift_dynamicCast())
        {
          v44 = v77;
          v45 = v78;
          goto LABEL_40;
        }
      }

LABEL_39:
      v45 = 0xE500000000000000;
      v44 = 0x293F3F3F28;
LABEL_40:
      v46 = v45;
      String.append(_:)(*&v44);

      v47._countAndFlagsBits = 544106784;
      v47._object = 0xE400000000000000;
      String.append(_:)(v47);
      v48._countAndFlagsBits = sub_1000DAD64();
      String.append(_:)(v48);

      v49 = v81;
      v50 = v82;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_100003D24();
      *(v27 + 32) = v49;
      *(v27 + 40) = v50;
      sub_10001491C();
      v51 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v51, "\t%{public}s", 11, 2, v27);

      sub_1000138F8(v24 + 24, v79);
      if (v80)
      {
        sub_100013954(v79);
        v52 = v73;
        v53 = v76;
        (*v72)(v73, 1, 1, v76);
      }

      else
      {
        sub_100009F34(v79, &v81);
        v54 = v83;
        v55 = v84;
        sub_100003C4C(&v81, v83);
        v56 = *(v55 + 64);
        v57 = v55;
        v52 = v73;
        v56(v54, v57);
        v53 = v76;
        (*v72)(v52, 0, 1, v76);
        sub_100003C90(&v81);
      }

      a1 = v36;
      if ((*v75)(v52, 1, v53) != 1)
      {
        v58 = *v66;
        v59 = v64;
        v60 = v76;
        (*v66)(v64, v52, v76);
        v58(v67, v59, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_100031468(0, *(v70 + 2) + 1, 1, v70);
        }

        v62 = *(v70 + 2);
        v61 = *(v70 + 3);
        if (v62 >= v61 >> 1)
        {
          v70 = sub_100031468((v61 > 1), v62 + 1, 1, v70);
        }

        v63 = v70;
        *(v70 + 2) = v62 + 1;
        v58(&v63[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v62], v67, v76);
        v15 = v90;
        goto LABEL_8;
      }

      sub_10000A184(v52, &unk_1001389D0, &qword_1000F4F60);
      v20 = v13;
      v15 = v90;
    }

    while (v36 < 0);
  }

  v21 = v20;
  v22 = v15;
  v13 = v20;
  if (v15)
  {
LABEL_13:
    v23 = (v22 - 1) & v22;
    v24 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v22)))));

    if (v24)
    {
      goto LABEL_17;
    }

LABEL_51:
    sub_1000145A4(a1);
  }

  else
  {
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v19)
      {
        goto LABEL_51;
      }

      v22 = *(v12 + 8 * v13);
      ++v21;
      if (v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100099D48(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  v9 = type metadata accessor for URL();
  v80 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  v13 = *(a1 + 24);
  v79 = v3;
  if ((*(v3 + 650) & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v78 = v4;
  if ((a3 & 1) == 0 && *v13 != _TtC10driverkitd15DriverExtension)
  {
    if (sub_1000D7374() == 0xD000000000000020 && 0x8000000100109100 == v14)
    {

      goto LABEL_9;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0 && !sub_10009A664(v13))
    {
      if (*v13 == _TtC10driverkitd15KernelExtension)
      {
        sub_1000138F8((v13 + 3), &v81);
        if (BYTE8(v83) == 2)
        {
          if (v81 != 2 && v81 != 4)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_100013954(&v81);
        }

        v65 = sub_1000D790C();
        v66 = static os_log_type_t.error.getter();
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_1000F3160;
        v68 = sub_1000D77B8();
        v70 = v69;
        *(v67 + 56) = &type metadata for String;
        *(v67 + 64) = sub_100003D24();
        *(v67 + 32) = v68;
        *(v67 + 40) = v70;
        sub_10001491C();
        v64 = static OS_os_log.default.getter();
        if (v65)
        {
          os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v64, "error: tried to insert an invalid codeless kext in restricted lookup table: %{public}s", 86, 2, v67);
        }

        else
        {
          os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v64, "error: tried to insert an invalid codeful kernel extension in the restricted lookup table: %{public}s", 101, 2, v67);
        }
      }

      else
      {
        v59 = static os_log_type_t.error.getter();
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1000F3160;
        v61 = sub_1000D77B8();
        v63 = v62;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_100003D24();
        *(v60 + 32) = v61;
        *(v60 + 40) = v63;
        sub_10001491C();
        v64 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v64, "error: tried to insert an invalid ext in restricted lookup table: %{public}s", 76, 2, v60);
      }

      *&v81 = 0;
      *(&v81 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      strcpy(&v81, "Cannot insert ");
      HIBYTE(v81) = -18;
      v71._countAndFlagsBits = sub_1000D77B8();
      String.append(_:)(v71);

      v72._countAndFlagsBits = 0xD00000000000001FLL;
      v72._object = 0x8000000100109210;
      String.append(_:)(v72);
      v73 = v81;
      sub_10001449C();
      swift_allocError();
      *v54 = v73;
      v74 = v84;
      v76 = v82;
      v75 = v83;
      *(v54 + 16) = v81;
      *(v54 + 32) = v76;
      *(v54 + 48) = v75;
      *(v54 + 64) = v74;
      v58 = 68;
      goto LABEL_56;
    }
  }

LABEL_9:
  if (*v13 == _TtC10driverkitd15DriverExtension)
  {
    v16 = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000F3160;
    v18 = sub_1000D77B8();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100003D24();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_10001491C();
    v21 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v21, "trying to insert a dext in KernelManagerDaemonLoadableExtTable: %{public}s", 74, 2, v17);
  }

  else if (*v13 == _TtC10driverkitd15KernelExtension)
  {
    v22 = sub_1000D790C();
    v23 = static os_log_type_t.debug.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000F3160;
    v25 = sub_1000D77B8();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100003D24();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_10001491C();
    v21 = static OS_os_log.default.getter();
    if (v22)
    {
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v21, "inserting a valid codeless kext in restricted lookup table: %{public}s", 70, 2, v24);
    }

    else
    {
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v21, "inserting a valid codeful kernel extension in restricted lookup table: %{public}s", 81, 2, v24);
    }
  }

  else
  {
    v28 = static os_log_type_t.debug.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000F3160;
    v30 = sub_1000D77B8();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100003D24();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    sub_10001491C();
    v21 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v21, "inserting to insert an unknown but valid extension into restricted lookup table: %{public}s", 91, 2, v29);
  }

  v5 = v78;

LABEL_17:
  if (sub_1000D7374() == 0xD000000000000020 && 0x8000000100109100 == v33)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      return sub_100056178(v88);
    }
  }

  sub_1000138F8((v13 + 3), &v81);
  if (BYTE8(v83))
  {
    sub_100013954(&v81);
    return sub_100056178(v88);
  }

  v78 = a2;
  v37 = v5;
  sub_100009F34(&v81, v85);
  v38 = v86;
  v39 = v87;
  sub_100003C4C(v85, v86);
  (*(v39 + 64))(v38, v39);
  v40 = URL.path.getter();
  v42 = v41;
  (*(v80 + 8))(v12, v9);
  sub_100003C90(v85);
  if (v40 == 0xD000000000000042 && 0x8000000100109130 == v42)
  {

    v45 = v37;
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v45 = v37;
    if ((v44 & 1) == 0)
    {
      return sub_100056178(v88);
    }
  }

  v46 = sub_1000D76D4();
  swift_beginAccess();

  sub_10005B9F4(v47);
  v49 = v48;
  v51 = v50;

  if (v49)
  {

    v52 = v78;
    if (v51 >= v46)
    {
      return sub_100056178(v88);
    }
  }

  else
  {
    v52 = v78;
    if (v46 < 1)
    {
      return sub_100056178(v88);
    }
  }

  sub_1000138F8((v13 + 3), &v81);
  if (BYTE8(v83) == 2)
  {
    return sub_100056178(v88);
  }

  sub_100013954(&v81);
  if (*v13 != _TtC10driverkitd15KernelExtension || !v13)
  {
    sub_10001449C();
    swift_allocError();
    *v54 = 0xD00000000000003ELL;
    *(v54 + 8) = 0x8000000100109180;
    v55 = v84;
    v57 = v82;
    v56 = v83;
    *(v54 + 16) = v81;
    *(v54 + 32) = v57;
    *(v54 + 48) = v56;
    *(v54 + 64) = v55;
    v58 = 44;
LABEL_56:
    *(v54 + 72) = v58;
    return swift_willThrow();
  }

  sub_10009A778(v53, v52);

  if (!v45)
  {

    return sub_100056178(v88);
  }

  return result;
}

BOOL sub_10009A664(__objc2_class **a1)
{
  if (*a1 != _TtC10driverkitd15KernelExtension)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  sub_1000138F8((a1 + 3), v9);
  if (v10)
  {
    sub_100013954(v9);
  }

  else
  {
    sub_100009F34(v9, v11);
    v5 = v12;
    v6 = v13;
    sub_100003C4C(v11, v12);
    (*(v6 + 56))(v5, v6);
    v8 = v7;
    sub_100003C90(v11);
    if (v8)
    {

      return 0;
    }
  }

  sub_1000138F8((a1 + 3), v9);
  result = v10 == 2;
  if (v10 != 2)
  {
    sub_100013954(v9);
    return 0;
  }

  return result;
}

uint64_t sub_10009A778(unint64_t a1, void *a2)
{
  v4 = static os_log_type_t.info.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000F3160;
  *&v83 = 1954047307;
  *(&v83 + 1) = 0xE400000000000000;
  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = sub_1000D7374();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 30240;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = sub_1000D7614();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0x293F3F3F28;
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v9);

  v13._countAndFlagsBits = 544106784;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_1000DAD64();
  String.append(_:)(v14);

  v15 = v83;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100003D24();
  *(v5 + 32) = v15;
  sub_10001491C();
  v16 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v16, "Reading exclude list from %{public}s", 36, 2, v5);

  *&v83 = _swiftEmptyArrayStorage;
  sub_10006370C(0, 3, 0);
  v17 = _swiftEmptyArrayStorage;
  LOBYTE(v18) = 0;

  v20 = sub_100022E20(v19, 0);
  if (!v2)
  {
    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v17[2] = v25;
      v26 = &v17[4 * v24];
      *(v26 + 32) = v18;
      *(v26 + 40) = v20;
      v26[6] = v21;
      v26[7] = v22;

      v28 = sub_100022E20(v27, 1);
      if (v2)
      {
        break;
      }

      *&v83 = v17;
      v32 = v17[2];
      v31 = v17[3];
      if (v32 >= v31 >> 1)
      {
        v81 = v28;
        v78 = v29;
        v71 = v30;
        sub_10006370C((v31 > 1), v32 + 1, 1);
        v30 = v71;
        v28 = v81;
        v29 = v78;
        v17 = v83;
      }

      v17[2] = v32 + 1;
      v33 = &v17[4 * v32];
      *(v33 + 32) = 1;
      *(v33 + 40) = v28;
      v33[6] = v29;
      v33[7] = v30;
      v25 = 2;

      v35 = sub_100022E20(v34, 2);
      *&v83 = v17;
      v40 = v17[2];
      v39 = v17[3];
      if (v40 >= v39 >> 1)
      {
        v82 = v35;
        v72 = v36;
        v73 = v37;
        sub_10006370C((v39 > 1), v40 + 1, 1);
        v37 = v73;
        v36 = v72;
        v35 = v82;
        v17 = v83;
      }

      v17[2] = v40 + 1;
      v41 = &v17[4 * v40];
      *(v41 + 32) = 2;
      *(v41 + 40) = v35;
      v41[6] = v36;
      v41[7] = v37;
      sub_100003CDC(&qword_1001350D8, &qword_1000F4FB0);
      *&v83 = static _DictionaryStorage.allocate(capacity:)();
      sub_10009C1E0(v17, 1, &v83);
      v42 = v83;
      v43 = v79;
      swift_beginAccess();
      v79[83] = v42;
      v75 = v42;

      v90 = &_swiftEmptySetSingleton;
      v44 = a2[3];
      if ((v44 & 0xC000000000000001) != 0)
      {
        v45 = 0;
        v2 = 0;
        v46 = 0;
        v18 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
      }

      else
      {
        v47 = -1 << *(v44 + 32);
        v2 = ~v47;
        v45 = v44 + 64;
        v48 = -v47;
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v46 = v49 & *(v44 + 64);
        v18 = a2[3];
      }

      v50 = 0;
      v24 = (v2 + 64) >> 6;
      v76 = v18;
      if ((v18 & 0x8000000000000000) != 0)
      {
LABEL_20:
        a2 = v43;
        v51 = __CocoaDictionary.Iterator.next()();
        if (v51)
        {
          v53 = v52;
          *&v87[0] = v51;
          type metadata accessor for OSExtension(0);
          swift_dynamicCast();
          v54 = v83;
          *&v87[0] = v53;
          type metadata accessor for RealizedInfo(0);
          swift_dynamicCast();
          v55 = v83;
          v56 = v50;
          v25 = v46;
          if (v54)
          {
            goto LABEL_28;
          }
        }

LABEL_36:
        sub_1000145A4(v76);
        v60 = v90;
        if ((v90 & 0xC000000000000001) != 0)
        {
          v61 = __CocoaSet.count.getter();
        }

        else
        {
          v61 = *(v90 + 16);
        }

        if (v61)
        {
          v62 = static os_log_type_t.info.getter();
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_1000F3160;
          if ((v60 & 0xC000000000000001) != 0)
          {
            v64 = __CocoaSet.count.getter();
          }

          else
          {
            v64 = *(v60 + 16);
          }

          *(v63 + 56) = &type metadata for Int;
          *(v63 + 64) = &protocol witness table for Int;
          *(v63 + 32) = v64;
          v65 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, v65, "reporting %d newly unsupported kexts to syspolicyd after AKEL update:", v74);

          sub_100003C4C(a2 + 2, a2[5]);
          sub_1000E0B2C(&v83);
          v66 = v84;
          v67 = v85;
          sub_100003C4C(&v83, v84);
          sub_1000994DC(v60);
          v69 = v68;

          (*(v67 + 88))(v69, v66, v67);

          sub_100003C90(&v83);
        }

        else
        {
        }

        return v75;
      }

      while (1)
      {
        v23 = v50;
        v57 = v46;
        v56 = v50;
        if (!v46)
        {
          break;
        }

LABEL_27:
        a2 = v43;
        v25 = (v57 - 1) & v57;
        v58 = (v56 << 9) | (8 * __clz(__rbit64(v57)));
        v59 = *(*(v18 + 48) + v58);
        v55 = *(*(v18 + 56) + v58);

        if (!v59)
        {
          goto LABEL_36;
        }

LABEL_28:

        v89 = v55;
        if (sub_10007B670(&v89) && (*(v55 + 17) & 0x2004) != 0)
        {
          sub_1000138F8(*(v55 + 24) + 24, &v83);
          if (v86)
          {
            sub_100013954(&v83);
            memset(v87, 0, sizeof(v87));
            v88 = 0;
            sub_10000A184(v87, &qword_1001342A8, &unk_1000F39C0);
          }

          else
          {
            sub_100009F34(&v83, v87);
            sub_10000A184(v87, &qword_1001342A8, &unk_1000F39C0);
            v2 = *(v55 + 24);

            sub_1000E4AF0(&v83, v2);
          }
        }

        v50 = v56;
        v46 = v25;
        v43 = a2;
        v18 = v76;
        if (v76 < 0)
        {
          goto LABEL_20;
        }
      }

      while (1)
      {
        v56 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v56 >= v24)
        {
          a2 = v43;
          goto LABEL_36;
        }

        v57 = *(v45 + 8 * v56);
        ++v23;
        if (v57)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_47:
      v80 = v20;
      v77 = v21;
      v70 = v22;
      sub_10006370C((v23 > 1), v25, 1);
      v22 = v70;
      v20 = v80;
      v21 = v77;
      v17 = v83;
    }
  }
}

uint64_t sub_10009AF80(uint64_t a1, __int128 *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[1];
  v51 = *a2;
  v52 = v10;
  v53 = a2[2];
  v54 = *(a2 + 6);
  v11 = *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
  sub_100055F6C(*(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  if (!v12)
  {
    v39 = v11;
    v55 = v51;
    v40 = v2;
    v41 = a2;
    v46 = a1;
    if (v51 >> 62)
    {
LABEL_43:
      v43 = v55 & 0xFFFFFFFFFFFFFF8;
      v44 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v43 = v55 & 0xFFFFFFFFFFFFFF8;
      v44 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v45 = OBJC_IVAR____TtC10driverkitd16KernelCollection_path;
    v15 = v55 & 0xC000000000000001;
    v16 = (v6 + 16);
    v17 = (v6 + 8);
    while (1)
    {
      if (v44 == v14)
      {
        goto LABEL_15;
      }

      if (v15)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v14, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v19 = v46;
          v20 = v42;
          v21 = v40;
          v22 = sub_10002D180(v46);
          v6 = v21;
          if (!v21)
          {
            v5 = v22;
            v23 = sub_10008F210(v19 + v45);
            if ((*(v20 + 649) & 8) != 0)
            {
              v24 = v41;
            }

            else
            {
              v24 = v41;
              if (v39 > 1)
              {
                if (v39 == 2)
                {
                  sub_10009BAA8(v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, 0, 0, v41, v19);
                  v35 = v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID;
                  v36 = 1;
                  v37 = 1;
                  goto LABEL_39;
                }
              }

              else
              {
                if (!v39)
                {
                  sub_10009B874(1, v41, v19);
                  sub_10009B874(2, v24, v19);
                  goto LABEL_40;
                }

                sub_10009B874(2, v41, v19);
                v35 = v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID;
                v36 = 0;
                v37 = 0;
LABEL_39:
                sub_10009BAA8(v35, v36, v37, v24, v19);
LABEL_40:
                v6 = 0;
              }
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_45;
            }

LABEL_24:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_beginAccess();
            sub_10009C570(v23);
            swift_endAccess();

            v32 = *(v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions);
            if (v32 >> 62)
            {
              v33 = _CocoaArrayWrapper.endIndex.getter();
              if (!v33)
              {
                return v5;
              }
            }

            else
            {
              v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v33)
              {
                return v5;
              }
            }

            v40 = v5;
            v55 = v32 & 0xC000000000000001;
            v43 = v32 & 0xFFFFFFFFFFFFFF8;

            v34 = 0;
            v45 = v33;
            v46 = v32;
            while (1)
            {
              if (v55)
              {
                v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v9 = (v34 + 1);
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_42;
                }
              }

              else
              {
                if (v34 >= *(v43 + 16))
                {
                  __break(1u);
                  __break(1u);
                  __break(1u);
LABEL_45:
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  goto LABEL_24;
                }

                v23 = *(v32 + 8 * v34 + 32);

                v9 = (v34 + 1);
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_42;
                }
              }

              sub_100099D48(v23, v24, 0);
              v5 = v6;

              v32 = v46;
              ++v34;
              if (v9 == v45)
              {

                return v40;
              }
            }
          }

          return v5;
        }
      }

      else
      {
        if (v14 >= *(v43 + 16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v6 = *(v55 + 8 * v14 + 32);

        if (__OFADD__(v14, 1))
        {
          goto LABEL_14;
        }
      }

      (*v16)(v9, *(v6 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection) + OBJC_IVAR____TtC10driverkitd16KernelCollection_path, v5);
      v18 = static URL.== infix(_:_:)();
      (*v17)(v9, v5);

      ++v14;
      if (v18)
      {
        *&v47 = 0;
        *(&v47 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        *&v47 = 0xD000000000000016;
        *(&v47 + 1) = 0x8000000100109520;
        sub_10009C5E0(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v25);

        v26._countAndFlagsBits = 0xD000000000000017;
        v26._object = 0x8000000100109540;
        String.append(_:)(v26);
        v27 = v47;
        sub_10001449C();
        swift_allocError();
        *v13 = v27;
        goto LABEL_20;
      }
    }
  }

  sub_10001449C();
  swift_allocError();
  *v13 = 0xD00000000000003BLL;
  *(v13 + 8) = 0x8000000100109560;
LABEL_20:
  v28 = v50;
  v29 = v49;
  v30 = v48;
  *(v13 + 16) = v47;
  *(v13 + 32) = v30;
  *(v13 + 48) = v29;
  *(v13 + 64) = v28;
  *(v13 + 72) = 9;
  swift_willThrow();
  return v5;
}

uint64_t sub_10009B874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v5;
  v26[2] = *(a2 + 32);
  v27 = *(a2 + 48);
  sub_100013848(v26, v24);
  sub_100055F6C(a1);
  v7 = v6;
  result = sub_1000138A4(v26);
  if (v7)
  {

    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    if (*(a3 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) > 1u)
    {
      if (*(a3 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == 2)
      {
        v10 = "o prelink UUID key?";
        v9 = 0xD000000000000019;
      }

      else
      {
        v10 = "f dext in the ARV at %{public}s";
        v9 = 0xD000000000000012;
      }
    }

    else if (*(a3 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
    {
      v10 = "auxiliary kext collection";
      v9 = 0xD000000000000016;
    }

    else
    {
      v9 = 0xD000000000000016;
      v10 = "system kext collection";
    }

    v11 = v10 | 0x8000000000000000;
    String.append(_:)(*&v9);

    v12._countAndFlagsBits = 0x20726574666120;
    v12._object = 0xE700000000000000;
    String.append(_:)(v12);
    v13 = "o prelink UUID key?";
    v14 = 0xD000000000000019;
    if (a1 != 2)
    {
      v14 = 0xD000000000000012;
      v13 = "f dext in the ARV at %{public}s";
    }

    v15 = "auxiliary kext collection";
    if (!a1)
    {
      v15 = "system kext collection";
    }

    if (a1 <= 1u)
    {
      v16 = 0xD000000000000016;
    }

    else
    {
      v16 = v14;
    }

    if (a1 <= 1u)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    v18 = v17 | 0x8000000000000000;
    String.append(_:)(*&v16);

    v19._countAndFlagsBits = 46;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    sub_10001449C();
    swift_allocError();
    *v20 = 0x6120746F6E6E6143;
    *(v20 + 8) = 0xEB00000000206464;
    v21 = v25;
    v22 = v24[2];
    v23 = v24[1];
    *(v20 + 16) = v24[0];
    *(v20 + 32) = v23;
    *(v20 + 48) = v22;
    *(v20 + 64) = v21;
    *(v20 + 72) = 9;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10009BAA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v9 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v76 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 16);
  v82[0] = *a4;
  v82[1] = v17;
  v82[2] = *(a4 + 32);
  v83 = *(a4 + 48);
  sub_100013848(v82, &v78);
  sub_100055F6C(a2);
  v19 = v18;
  result = sub_1000138A4(v82);
  if (v19)
  {
    sub_10009C628(a1, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10000A184(v12, &qword_100134FB0, &qword_1000F4E60);
      v21 = *(v84 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v26 = "o prelink UUID key?";
          v27 = 0xD000000000000019;
        }

        else
        {
          v26 = "f dext in the ARV at %{public}s";
          v27 = 0xD000000000000012;
        }
      }

      else
      {
        if (*(v84 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
        {
          v22 = "system kext collection";
        }

        else
        {
          v22 = "boot kernel collection";
        }

        v26 = (v22 - 32);
        v27 = 0xD000000000000016;
      }

      v30 = v26 | 0x8000000000000000;
      *&v78 = 0;
      *(&v78 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      v31 = sub_100054590();
      v33 = v32;

      *&v78 = v31;
      *(&v78 + 1) = v33;
      v34._countAndFlagsBits = 0xD00000000000001CLL;
      v34._object = 0x80000001001095A0;
      String.append(_:)(v34);
      v35 = v78;
      sub_10001449C();
      swift_allocError();
      *v36 = v27;
      *(v36 + 8) = v30;
      *(v36 + 16) = v35;
      v37 = v80;
      v38 = v79;
      *(v36 + 32) = v78;
      *(v36 + 48) = v38;
      *(v36 + 64) = v37;
      *(v36 + 72) = 6;
      swift_willThrow();
    }

    v25 = v76;
    (*(v14 + 32))(v76, v12, v13);
    if (static UUID.== infix(_:_:)())
    {
      (*(v14 + 8))(v25, v13);
    }

    v28 = *(v84 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
    v75 = v14;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v39 = "o prelink UUID key?";
        v40 = 0xD000000000000019;
      }

      else
      {
        v39 = "f dext in the ARV at %{public}s";
        v40 = 0xD000000000000012;
      }
    }

    else
    {
      if (v28)
      {
        v29 = "system kext collection";
      }

      else
      {
        v29 = "boot kernel collection";
      }

      v39 = (v29 - 32);
      v40 = 0xD000000000000016;
    }

    v56 = v39 | 0x8000000000000000;
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v57._countAndFlagsBits = 0x6120746F6E6E6143;
    v57._object = 0xEB00000000206464;
    String.append(_:)(v57);
    v58._countAndFlagsBits = sub_100054590();
    String.append(_:)(v58);

    v59._countAndFlagsBits = 0xD000000000000010;
    v59._object = 0x80000001001095C0;
    String.append(_:)(v59);
    v60 = v76;
    v61._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v61);

    v62._countAndFlagsBits = 0x207361202CLL;
    v62._object = 0xE500000000000000;
    String.append(_:)(v62);
    v77._countAndFlagsBits = sub_100054590();
    v77._object = v63;
    v64._countAndFlagsBits = 10272;
    v64._object = 0xE200000000000000;
    String.append(_:)(v64);
    v65._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v65);

    v66._countAndFlagsBits = 41;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    String.append(_:)(v77);

    v67._countAndFlagsBits = 0x4955552073616820;
    v67._object = 0xEA00000000002044;
    String.append(_:)(v67);
    v68._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v68);

    v69._countAndFlagsBits = 10530;
    v69._object = 0xE200000000000000;
    String.append(_:)(v69);
    v70 = v78;
    sub_10001449C();
    swift_allocError();
    *v71 = v40;
    *(v71 + 8) = v56;
    *(v71 + 16) = v70;
    v72 = v80;
    v73 = v79;
    *(v71 + 32) = v78;
    *(v71 + 48) = v73;
    *(v71 + 64) = v72;
    *(v71 + 72) = 6;
    swift_willThrow();

    return (*(v75 + 8))(v60, v13);
  }

  else if ((a3 & 1) == 0)
  {
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v77._countAndFlagsBits = 0x6120746F6E6E6143;
    v77._object = 0xEB00000000206464;
    if (*(v84 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) > 1u)
    {
      if (*(v84 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == 2)
      {
        v24 = "o prelink UUID key?";
        v23 = 0xD000000000000019;
      }

      else
      {
        v24 = "f dext in the ARV at %{public}s";
        v23 = 0xD000000000000012;
      }
    }

    else if (*(v84 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
    {
      v24 = "auxiliary kext collection";
      v23 = 0xD000000000000016;
    }

    else
    {
      v23 = 0xD000000000000016;
      v24 = "system kext collection";
    }

    v41 = v24 | 0x8000000000000000;
    String.append(_:)(*&v23);

    v42._countAndFlagsBits = 0x74756F6874697720;
    v42._object = 0xE900000000000020;
    String.append(_:)(v42);
    v43 = "o prelink UUID key?";
    v44 = 0xD000000000000019;
    if (a2 != 2)
    {
      v44 = 0xD000000000000012;
      v43 = "f dext in the ARV at %{public}s";
    }

    v45 = "auxiliary kext collection";
    if (!a2)
    {
      v45 = "system kext collection";
    }

    if (a2 <= 1u)
    {
      v46 = 0xD000000000000016;
    }

    else
    {
      v46 = v44;
    }

    if (a2 <= 1u)
    {
      v47 = v45;
    }

    else
    {
      v47 = v43;
    }

    v48 = v47 | 0x8000000000000000;
    String.append(_:)(*&v46);

    v49._countAndFlagsBits = 46;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    countAndFlagsBits = v77._countAndFlagsBits;
    object = v77._object;
    sub_10001449C();
    swift_allocError();
    *v52 = countAndFlagsBits;
    *(v52 + 8) = object;
    v53 = v81;
    v54 = v80;
    v55 = v79;
    *(v52 + 16) = v78;
    *(v52 + 32) = v55;
    *(v52 + 48) = v54;
    *(v52 + 64) = v53;
    *(v52 + 72) = 9;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10009C1E0(uint64_t a1, char a2, void *a3)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
  }

  LOBYTE(v4) = a2;
  v5 = *(a1 + 32);
  LOBYTE(v6) = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *a3;

  v10 = sub_100061E08(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100034620(v15, v4 & 1);
    v10 = sub_100061E08(v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_10003AD24();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v20[6] + v10) = v5;
  v21 = v20[7] + 24 * v10;
  *v21 = v6;
  *(v21 + 8) = v7;
  *(v21 + 16) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x8000000100104B40;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v38 != 1)
  {
    v4 = (a1 + 88);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v5 = *(v4 - 24);
      v8 = *(v4 - 16);
      v7 = *(v4 - 1);
      v24 = *v4;
      v25 = *a3;

      v26 = sub_100061E08(v5);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_100034620(v30, 1);
        v26 = sub_100061E08(v5);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + v26) = v5;
      v33 = v32[7] + 24 * v26;
      *v33 = v8;
      *(v33 + 8) = v7;
      *(v33 + 16) = v24;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v6;
      v32[2] = v35;
      v4 += 4;
      if (v38 == v6)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_10009C570(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1000E49A0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10009C5E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009C628(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CFDataRef sub_10009C698(uint64_t a1)
{
  sub_10000B430(a1, v7);
  type metadata accessor for CFDictionary(0);
  if (swift_dynamicCast())
  {
    v1 = v6;
  }

  else
  {
    v1 = 0;
  }

  sub_100003CDC(&qword_1001342C0, &qword_1000F39E0);
  v2 = Optional._bridgeToObjectiveC()();

  v3 = IOCFSerialize(v2, 0);
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v3;
}

uint64_t sub_10009C774(unint64_t a1, unint64_t a2)
{
  v3 = sub_10009D078(a1, a1, a2);
  if (v2)
  {
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (swift_dynamicCast())
    {
      if (v40 == 3)
      {

        v5 = *(v4 + 16);
        if (v5)
        {
          sub_100063608(0, v5, 0);
          v30 = v4;
          v6 = (v4 + 40);
          do
          {
            v7 = *(v6 - 1);
            v8 = *v6;

            v9 = static os_log_type_t.error.getter();
            v11 = _swiftEmptyArrayStorage[2];
            v10 = _swiftEmptyArrayStorage[3];
            if (v11 >= v10 >> 1)
            {
              sub_100063608((v10 > 1), v11 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v11 + 1;
            v12 = &_swiftEmptyArrayStorage[3 * v11];
            *(v12 + 32) = v9;
            v12[5] = v7;
            v12[6] = v8;
            v6 += 2;
            --v5;
          }

          while (v5);

          sub_10005AFAC(v30, v32, v33, v34, v35, v36, v37, v38, v39, 3);
        }

        else
        {

          sub_10005AFAC(v4, v32, v33, v34, v35, v36, v37, v38, v39, 3);
        }
      }

      else
      {
        sub_10005AFAC(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    swift_willThrow();
    v21 = _swiftEmptyArrayStorage[2];
    if (v21)
    {
      v22 = &_swiftEmptyArrayStorage[6];
      do
      {
        v23 = *(v22 - 16);
        v24 = *(v22 - 1);
        v25 = *v22;
        v26 = qword_100133AA8;

        if (v26 != -1)
        {
          swift_once();
        }

        v27 = qword_10014E968;
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1000F3160;
        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = sub_100003D24();
        *(v28 + 32) = v24;
        *(v28 + 40) = v25;

        os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v27, "(kernel): %{public}s", 20, 2, v28);

        v22 += 3;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v13 = *(v3 + 16);
    if (v13)
    {
      v14 = (v3 + 48);
      do
      {
        v15 = *(v14 - 16);
        v16 = *(v14 - 1);
        v17 = *v14;
        v18 = qword_100133AA8;

        if (v18 != -1)
        {
          swift_once();
        }

        v19 = qword_10014E968;
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1000F3160;
        *(v20 + 56) = &type metadata for String;
        *(v20 + 64) = sub_100003D24();
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;

        os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v19, "(kernel): %{public}s", 20, 2, v20);

        v14 += 3;
        --v13;
      }

      while (v13);
    }
  }
}

void *sub_10009CBFC(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10009D7D8(&v47, a1, a2, a3, a4);
  if (v4)
  {
    v57 = v4;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (swift_dynamicCast())
    {
      v6 = v48;
      v8 = v49;
      v7 = v50;
      v10 = v51;
      v9 = v52;
      v12 = v53;
      v11 = v54;
      if (v56 == 3)
      {
        v46 = v55;

        v14 = *(v13 + 16);
        if (v14)
        {
          v41 = v8;
          v42 = v10;
          v43 = v9;
          v45 = v11;
          v47 = _swiftEmptyArrayStorage;
          sub_100063608(0, v14, 0);
          v15 = v47;
          v40 = v13;
          v16 = (v13 + 40);
          do
          {
            v17 = *(v16 - 1);
            v18 = *v16;

            v19 = static os_log_type_t.error.getter();
            v47 = v15;
            v21 = v15[2];
            v20 = v15[3];
            if (v21 >= v20 >> 1)
            {
              sub_100063608((v20 > 1), v21 + 1, 1);
              v15 = v47;
            }

            v15[2] = v21 + 1;
            v22 = &v15[3 * v21];
            *(v22 + 32) = v19;
            v22[5] = v17;
            v22[6] = v18;
            v16 += 2;
            --v14;
          }

          while (v14);

          sub_10005AFAC(v40, v6, v41, v7, v42, v43, v12, v45, v46, 3);
        }

        else
        {

          sub_10005AFAC(v13, v6, v8, v7, v10, v9, v12, v11, v46, 3);
          v15 = _swiftEmptyArrayStorage;
        }

        goto LABEL_18;
      }

      sub_10005AFAC(v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_18:
    swift_willThrow();
    v31 = v15[2];
    if (v31)
    {
      v32 = v15 + 6;
      do
      {
        v33 = *(v32 - 16);
        v34 = *(v32 - 1);
        v35 = *v32;
        v36 = qword_100133AA8;

        if (v36 != -1)
        {
          swift_once();
        }

        v37 = qword_10014E968;
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1000F3160;
        *(v38 + 56) = &type metadata for String;
        *(v38 + 64) = sub_100003D24();
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;

        os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v37, "(kernel): %{public}s", 20, 2, v38);

        v32 += 3;
        --v31;
      }

      while (v31);
    }

    goto LABEL_23;
  }

  v15 = v47;
  v23 = *(v5 + 16);
  if (!v23)
  {
LABEL_23:

    return v15;
  }

  v44 = v47;
  v24 = (v5 + 48);
  do
  {
    v25 = *(v24 - 16);
    v26 = *(v24 - 1);
    v27 = *v24;
    v28 = qword_100133AA8;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_10014E968;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1000F3160;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100003D24();
    *(v30 + 32) = v26;
    *(v30 + 40) = v27;

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v29, "(kernel): %{public}s", 20, 2, v30);

    v24 += 3;
    --v23;
  }

  while (v23);

  return v44;
}

unint64_t sub_10009D078(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_17;
    }

    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v3 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    v4 = HIDWORD(a2);
    if (!v7)
    {
      v3 = BYTE6(a3);
      v8 = mach_host_self();
      response_data = 0;
      response_dataCnt = 0;
      *log_dataCnt = 0;
      log_data = 0;
      LOWORD(v65) = a2;
      BYTE2(v65) = BYTE2(a2);
      BYTE3(v65) = BYTE3(a2);
      BYTE4(v65) = v4;
      BYTE5(v65) = BYTE5(a2);
      BYTE6(v65) = BYTE6(a2);
      BYTE7(v65) = HIBYTE(a2);
      WORD4(v65) = a3;
      BYTE10(v65) = BYTE2(a3);
      BYTE11(v65) = BYTE3(a3);
      BYTE12(v65) = BYTE4(a3);
      BYTE13(v65) = BYTE5(a3);
      v9 = kext_request(v8, 0xFF2u, &v65, v3, &response_data, &response_dataCnt, &log_data, &log_dataCnt[1], log_dataCnt);
      goto LABEL_32;
    }
  }

  if (__OFSUB__(v4, a2))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v3 = v4 - a2;
LABEL_10:
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_80;
  }

  if (HIDWORD(v3))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v8 = mach_host_self();
  response_data = 0;
  response_dataCnt = 0;
  *log_dataCnt = 0;
  log_data = 0;
  if (v7 != 2)
  {
    if (a2 <= a2 >> 32)
    {
      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        goto LABEL_31;
      }

      v26 = __DataStorage._offset.getter();
      v15 = a2 - v26;
      if (!__OFSUB__(a2, v26))
      {
LABEL_30:
        v13 += v15;
        goto LABEL_31;
      }

LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v12 = *(a2 + 16);
  v13 = __DataStorage._bytes.getter();
  if (v13)
  {
    v14 = __DataStorage._offset.getter();
    v15 = v12 - v14;
    if (!__OFSUB__(v12, v14))
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_17:
    v8 = mach_host_self();
    response_dataCnt = 0;
    *log_dataCnt = 0;
    log_data = 0;
    *(&v65 + 6) = 0;
    response_data = 0;
    *&v65 = 0;
    v9 = kext_request(v8, 0xFF2u, &v65, 0, &response_data, &response_dataCnt, &log_data, &log_dataCnt[1], log_dataCnt);
    if (v9)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

LABEL_31:
  __DataStorage._length.getter();
  v9 = kext_request(v8, 0xFF2u, v13, v3, &response_data, &response_dataCnt, &log_data, &log_dataCnt[1], log_dataCnt);
LABEL_32:
  if (v9)
  {
LABEL_33:
    if (mach_error_string(v9))
    {
      v27 = String.init(cString:)();
      v29 = v28;
    }

    else
    {
      v27 = 0x6E776F6E6B6E7528;
      v29 = 0xE900000000000029;
    }

    sub_10001449C();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    v31 = v68;
    v33 = v66;
    v32 = v67;
    *(v30 + 16) = v65;
    *(v30 + 32) = v33;
    *(v30 + 48) = v32;
    *(v30 + 64) = v31;
    *(v30 + 72) = 2;
    swift_willThrow();
    if (response_data && response_dataCnt)
    {
      vm_deallocate(mach_task_self_, response_data, response_dataCnt);
    }

    if (log_data)
    {
      vm_deallocate(mach_task_self_, log_data, log_dataCnt[1]);
    }

    if (v8)
    {
      v34 = mach_task_self_;
LABEL_77:
      mach_port_deallocate(v34, v8);
      return v3;
    }

    return v3;
  }

LABEL_18:
  v16 = log_data;
  v17 = _swiftEmptyArrayStorage;
  if (!log_data)
  {
    v3 = _swiftEmptyArrayStorage;
    v25 = log_dataCnt[0];
    if (!log_dataCnt[0])
    {
      goto LABEL_51;
    }

    goto LABEL_44;
  }

  v18 = log_dataCnt[1];
  if (!log_dataCnt[1])
  {
    v3 = _swiftEmptyArrayStorage;
    v25 = log_dataCnt[0];
    if (!log_dataCnt[0])
    {
      goto LABEL_51;
    }

    goto LABEL_44;
  }

  v19 = sub_10009ED5C(log_data, &qword_1001376C8, &qword_1000F9888);
  if (!v19)
  {
    v52 = 0x8000000100109660;
    sub_10001449C();
    swift_allocError();
    v54 = 0xD00000000000001FLL;
LABEL_72:
    *v53 = v54;
    *(v53 + 8) = v52;
    v55 = v68;
    v57 = v66;
    v56 = v67;
    *(v53 + 16) = v65;
    *(v53 + 32) = v57;
    *(v53 + 48) = v56;
    *(v53 + 64) = v55;
    *(v53 + 72) = 1;
    swift_willThrow();
    if (response_data && response_dataCnt)
    {
      vm_deallocate(mach_task_self_, response_data, response_dataCnt);
    }

    vm_deallocate(mach_task_self_, v16, v18);
    if (v8)
    {
      v34 = mach_task_self_;
      goto LABEL_77;
    }

    return v3;
  }

  v3 = v19;
  if (!v19->data)
  {
    goto LABEL_84;
  }

  v21 = sub_10009E148(v20);

  if (!v21)
  {
LABEL_71:

    v52 = 0x8000000100109680;
    sub_10001449C();
    swift_allocError();
    v54 = 0xD000000000000025;
    goto LABEL_72;
  }

  if (*(v3 + 16) < 2uLL)
  {
LABEL_85:
    __break(1u);
  }

  v22 = v8;
  v23 = *(v3 + 40);

  v24 = sub_10009E254(v23);

  if (!v24)
  {
    v3 = v21;
    v8 = v22;
    goto LABEL_71;
  }

  v3 = sub_10009E368(v21, v24);

  v8 = v22;
  v25 = log_dataCnt[0];
  if (!log_dataCnt[0])
  {
LABEL_51:
    if (response_data && response_dataCnt)
    {
      vm_deallocate(mach_task_self_, response_data, response_dataCnt);
    }

    if (v16)
    {
      vm_deallocate(mach_task_self_, v16, log_dataCnt[1]);
    }

    if (v8)
    {
      mach_port_deallocate(mach_task_self_, v8);
    }

    return v3;
  }

LABEL_44:
  v35 = *(v3 + 16);
  if (v35)
  {
    error_value = v25;
    v60 = v16;
    *&v65 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v35, 0);
    v17 = v65;
    v36 = (v3 + 48);
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      *&v65 = v17;
      v40 = v17[2];
      v39 = v17[3];

      if (v40 >= v39 >> 1)
      {
        sub_1000635A4((v39 > 1), v40 + 1, 1);
        v17 = v65;
      }

      v17[2] = v40 + 1;
      v41 = &v17[2 * v40];
      v41[4] = v37;
      v41[5] = v38;
      v36 += 3;
      --v35;
    }

    while (v35);

    v16 = v60;
    v25 = error_value;
  }

  else
  {
  }

  if (mach_error_string(v25))
  {
    v42 = String.init(cString:)();
    v44 = v43;
  }

  else
  {
    v42 = 0x6E776F6E6B6E7528;
    v44 = 0xE900000000000029;
  }

  v45 = v44;
  String.append(_:)(*&v42);

  v46._countAndFlagsBits = 10272;
  v46._object = 0xE200000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 41;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  sub_10001449C();
  swift_allocError();
  *v49 = v17;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0xE000000000000000;
  v51 = v66;
  v50 = v67;
  *(v49 + 24) = v65;
  *(v49 + 40) = v51;
  *(v49 + 56) = v50;
  *(v49 + 72) = 3;
  swift_willThrow();
  if (response_data && response_dataCnt)
  {
    vm_deallocate(mach_task_self_, response_data, response_dataCnt);
  }

  if (v16)
  {
    vm_deallocate(mach_task_self_, v16, log_dataCnt[1]);
  }

  if (v8)
  {
    v34 = mach_task_self_;
    goto LABEL_77;
  }

  return v3;
}

unint64_t sub_10009D7D8(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_26;
    }

    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v5 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    v5 = HIDWORD(a2);
    if (!v9)
    {
      v10 = mach_host_self();
      response_data = 0;
      response_dataCnt = 0;
      *log_dataCnt = 0;
      log_data = 0;
      LOWORD(v91) = a2;
      BYTE2(v91) = BYTE2(a2);
      BYTE3(v91) = BYTE3(a2);
      BYTE4(v91) = v5;
      BYTE5(v91) = BYTE5(a2);
      BYTE6(v91) = BYTE6(a2);
      BYTE7(v91) = HIBYTE(a2);
      WORD4(v91) = a3;
      BYTE10(v91) = BYTE2(a3);
      BYTE11(v91) = BYTE3(a3);
      BYTE12(v91) = BYTE4(a3);
      BYTE13(v91) = BYTE5(a3);
      v11 = kext_request(v10, 0xFF2u, &v91, BYTE6(a3), &response_data, &response_dataCnt, &log_data, &log_dataCnt[1], log_dataCnt);
      if (!v11)
      {
        goto LABEL_4;
      }

LABEL_33:
      if (mach_error_string(v11))
      {
        v29 = String.init(cString:)();
        v5 = v30;
      }

      else
      {
        v29 = 0x6E776F6E6B6E7528;
        v5 = 0xE900000000000029;
      }

      sub_10001449C();
      swift_allocError();
      *v31 = v29;
      *(v31 + 8) = v5;
      v32 = v94;
      v34 = v92;
      v33 = v93;
      *(v31 + 16) = v91;
      *(v31 + 32) = v34;
      *(v31 + 48) = v33;
      *(v31 + 64) = v32;
      *(v31 + 72) = 2;
      swift_willThrow();
      if (response_data && response_dataCnt)
      {
        vm_deallocate(mach_task_self_, response_data, response_dataCnt);
      }

      if (log_data)
      {
        vm_deallocate(mach_task_self_, log_data, log_dataCnt[1]);
      }

      if (!v10)
      {
        return v5;
      }

      v35 = mach_task_self_;
LABEL_84:
      mach_port_deallocate(v35, v10);
      return v5;
    }
  }

  if (__OFSUB__(v5, a2))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v5 = v5 - a2;
LABEL_19:
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_91;
  }

  if (HIDWORD(v5))
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v10 = mach_host_self();
  response_data = 0;
  response_dataCnt = 0;
  *log_dataCnt = 0;
  log_data = 0;
  if (v9 != 2)
  {
    if (a2 <= a2 >> 32)
    {
      v25 = __DataStorage._bytes.getter();
      if (!v25)
      {
        goto LABEL_32;
      }

      v28 = __DataStorage._offset.getter();
      v27 = a2 - v28;
      if (!__OFSUB__(a2, v28))
      {
LABEL_31:
        v25 += v27;
LABEL_32:
        __DataStorage._length.getter();
        v11 = kext_request(v10, 0xFF2u, v25, v5, &response_data, &response_dataCnt, &log_data, &log_dataCnt[1], log_dataCnt);
        if (v11)
        {
          goto LABEL_33;
        }

        goto LABEL_4;
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v24 = *(a2 + 16);
  v25 = __DataStorage._bytes.getter();
  if (!v25)
  {
    goto LABEL_32;
  }

  v26 = __DataStorage._offset.getter();
  v27 = v24 - v26;
  if (!__OFSUB__(v24, v26))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_26:
  v10 = mach_host_self();
  response_dataCnt = 0;
  *log_dataCnt = 0;
  log_data = 0;
  *(&v91 + 6) = 0;
  response_data = 0;
  *&v91 = 0;
  v11 = kext_request(v10, 0xFF2u, &v91, 0, &response_data, &response_dataCnt, &log_data, &log_dataCnt[1], log_dataCnt);
  if (v11)
  {
    goto LABEL_33;
  }

LABEL_4:
  v12 = log_data;
  if (log_data)
  {
    v13 = log_dataCnt[1];
    if (log_dataCnt[1])
    {
      v14 = sub_10009ED5C(log_data, &qword_1001376C8, &qword_1000F9888);
      if (!v14)
      {
        sub_10001449C();
        swift_allocError();
        *v65 = 0xD00000000000001FLL;
        *(v65 + 8) = 0x8000000100109660;
        v66 = v94;
        v68 = v92;
        v67 = v93;
        *(v65 + 16) = v91;
        *(v65 + 32) = v68;
        *(v65 + 48) = v67;
        *(v65 + 64) = v66;
        *(v65 + 72) = 1;
        swift_willThrow();
        if (response_data && response_dataCnt)
        {
          vm_deallocate(mach_task_self_, response_data, response_dataCnt);
        }

        v69 = mach_task_self_;
        v70 = v12;
LABEL_82:
        vm_deallocate(v69, v70, v13);
        if (!v10)
        {
          return v5;
        }

LABEL_83:
        v35 = mach_task_self_;
        goto LABEL_84;
      }

      v15 = v14;
      v80 = a1;
      address = v12;
      if (v14->data)
      {

        v17 = sub_10009E148(v16);

        if (!v17)
        {
LABEL_78:

          sub_10001449C();
          swift_allocError();
          *v71 = 0xD000000000000025;
          *(v71 + 8) = 0x8000000100109680;
          v72 = v94;
          v74 = v92;
          v73 = v93;
          *(v71 + 16) = v91;
          *(v71 + 32) = v74;
          *(v71 + 48) = v73;
          *(v71 + 64) = v72;
          *(v71 + 72) = 1;
          swift_willThrow();
          v5 = address;
          if (response_data && response_dataCnt)
          {
            vm_deallocate(mach_task_self_, response_data, response_dataCnt);
          }

          v69 = mach_task_self_;
          v70 = address;
          goto LABEL_82;
        }

        if (v15->data >= 2)
        {
          v18 = v10;
          info = v15[1].info;

          v20 = sub_10009E254(info);

          if (v20)
          {
            v5 = sub_10009E368(v17, v20);

            v10 = v18;
            a1 = v80;
            v12 = address;
            v21 = log_dataCnt[0];
            if (!log_dataCnt[0])
            {
              goto LABEL_51;
            }

LABEL_44:
            v36 = *(v5 + 16);
            if (v36)
            {
              error_valuea = v21;
              addressa = v12;
              v86 = v10;
              *&v91 = _swiftEmptyArrayStorage;
              sub_1000635A4(0, v36, 0);
              v37 = v91;
              v38 = (v5 + 48);
              do
              {
                v39 = *(v38 - 1);
                v40 = *v38;
                *&v91 = v37;
                v42 = v37[2];
                v41 = v37[3];

                if (v42 >= v41 >> 1)
                {
                  sub_1000635A4((v41 > 1), v42 + 1, 1);
                  v37 = v91;
                }

                v37[2] = v42 + 1;
                v43 = &v37[2 * v42];
                v43[4] = v39;
                v43[5] = v40;
                v38 += 3;
                --v36;
              }

              while (v36);

              v10 = v86;
              v12 = addressa;
              v21 = error_valuea;
            }

            else
            {

              v37 = _swiftEmptyArrayStorage;
            }

            if (mach_error_string(v21))
            {
              v47 = String.init(cString:)();
              v49 = v48;
            }

            else
            {
              v47 = 0x6E776F6E6B6E7528;
              v49 = 0xE900000000000029;
            }

            v50 = v49;
            String.append(_:)(*&v47);

            v51._countAndFlagsBits = 10272;
            v51._object = 0xE200000000000000;
            String.append(_:)(v51);
            v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v52);

            v53._countAndFlagsBits = 41;
            v53._object = 0xE100000000000000;
            String.append(_:)(v53);
            sub_10001449C();
            swift_allocError();
            *v54 = v37;
            *(v54 + 8) = 0;
            *(v54 + 16) = 0xE000000000000000;
            v56 = v92;
            v55 = v93;
            *(v54 + 24) = v91;
            *(v54 + 40) = v56;
            *(v54 + 56) = v55;
            *(v54 + 72) = 3;
            swift_willThrow();
            v57 = response_data;
            if (!response_data)
            {
              goto LABEL_69;
            }

            v58 = response_dataCnt;
            if (!response_dataCnt)
            {
              goto LABEL_69;
            }

            goto LABEL_68;
          }

          v10 = v18;
          goto LABEL_78;
        }

LABEL_96:
        __break(1u);
      }

LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v5 = _swiftEmptyArrayStorage;
    v21 = log_dataCnt[0];
    if (log_dataCnt[0])
    {
      goto LABEL_44;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
    v21 = log_dataCnt[0];
    if (log_dataCnt[0])
    {
      goto LABEL_44;
    }
  }

LABEL_51:
  if (!response_data || (v44 = response_dataCnt) == 0)
  {
    v5 = response_data;

    _StringGuts.grow(_:)(58);
    v59._countAndFlagsBits = 0xD000000000000038;
    v59._object = 0x8000000100109720;
    String.append(_:)(v59);
    v60._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v60);

    sub_10001449C();
    swift_allocError();
    *v61 = 0;
    *(v61 + 8) = 0xE000000000000000;
    v62 = v94;
    v64 = v92;
    v63 = v93;
    *(v61 + 16) = v91;
    *(v61 + 32) = v64;
    *(v61 + 48) = v63;
    *(v61 + 64) = v62;
    *(v61 + 72) = 1;
    swift_willThrow();
    if (!v5)
    {
      goto LABEL_69;
    }

    v58 = response_dataCnt;
    if (!response_dataCnt)
    {
      goto LABEL_69;
    }

    v57 = v5;
LABEL_68:
    vm_deallocate(mach_task_self_, v57, v58);
LABEL_69:
    if (v12)
    {
      vm_deallocate(mach_task_self_, v12, log_dataCnt[1]);
    }

    if (!v10)
    {
      return v5;
    }

    v35 = mach_task_self_;
    goto LABEL_84;
  }

  v45 = response_data;
  v46 = sub_10009ED5C(response_data, a4, a5);
  if (v46)
  {
    *a1 = v46;
    vm_deallocate(mach_task_self_, v45, v44);
    if (v12)
    {
      vm_deallocate(mach_task_self_, v12, log_dataCnt[1]);
    }

    if (v10)
    {
      mach_port_deallocate(mach_task_self_, v10);
    }

    return v5;
  }

  sub_10001449C();
  swift_allocError();
  *v76 = 0xD000000000000026;
  *(v76 + 8) = 0x80000001001096F0;
  v77 = v94;
  v79 = v92;
  v78 = v93;
  *(v76 + 16) = v91;
  *(v76 + 32) = v79;
  *(v76 + 48) = v78;
  *(v76 + 64) = v77;
  *(v76 + 72) = 1;
  swift_willThrow();
  vm_deallocate(mach_task_self_, v45, v44);
  if (v12)
  {
    vm_deallocate(mach_task_self_, v12, log_dataCnt[1]);
  }

  if (v10)
  {
    goto LABEL_83;
  }

  return v5;
}

void *sub_10009E148(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_100063628(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000B430(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100063628((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10009E254(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000B430(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000635A4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10009E368(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_100063608(0, v6, 0);
  v33 = v5;
  v34 = v4;
  v31 = a2;
  v32 = v6;
  v30 = a1;
  if (!v6)
  {
LABEL_22:
    v17 = v33;
    v16 = v34;
    if (v34 <= v33)
    {
      return _swiftEmptyArrayStorage;
    }

    v18 = v30 + 32;
    v19 = v32;
    v20 = (v31 + 16 * v32 + 40);
    while (1)
    {
      if (v19 >= v16)
      {
        goto LABEL_47;
      }

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_48;
      }

      if (v17 == v19)
      {
        return _swiftEmptyArrayStorage;
      }

      if (v19 >= v17)
      {
        goto LABEL_49;
      }

      v22 = *(v18 + 8 * v19);
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_51;
      }

      v24 = *(v20 - 1);
      v23 = *v20;
      v25 = *(v18 + 8 * v19) & 7;

      if (v25 <= 2)
      {
        break;
      }

      if (v25 == 3)
      {
        result = static os_log_type_t.info.getter();
        goto LABEL_39;
      }

      if (v25 != 7)
      {
        goto LABEL_36;
      }

      result = static os_log_type_t.debug.getter();
LABEL_39:
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        v35 = result;
        sub_100063608((v26 > 1), v27 + 1, 1);
        result = v35;
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[3 * v27];
      *(v28 + 32) = result;
      ++v19;
      v20 += 2;
      v28[5] = v24;
      v28[6] = v23;
      v17 = v33;
      v16 = v34;
      if (v21 == v34)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    if (v25 == 1)
    {
      result = static os_log_type_t.error.getter();
      goto LABEL_39;
    }

LABEL_36:
    result = static os_log_type_t.default.getter();
    goto LABEL_39;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 40);
  while (v4)
  {
    if (!v5)
    {
      goto LABEL_44;
    }

    if ((*v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    if (HIDWORD(*v8))
    {
      goto LABEL_46;
    }

    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *v8 & 7;

    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        result = static os_log_type_t.error.getter();
        goto LABEL_19;
      }

LABEL_16:
      result = static os_log_type_t.default.getter();
      goto LABEL_19;
    }

    if (v12 == 3)
    {
      result = static os_log_type_t.info.getter();
      goto LABEL_19;
    }

    if (v12 != 7)
    {
      goto LABEL_16;
    }

    result = static os_log_type_t.debug.getter();
LABEL_19:
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v29 = result;
      sub_100063608((v13 > 1), v14 + 1, 1);
      result = v29;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[3 * v14];
    *(v15 + 32) = result;
    --v5;
    v15[5] = v11;
    v15[6] = v10;
    --v4;
    v9 += 2;
    ++v8;
    if (!--v6)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_10009E624()
{
  sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000DF65C(&v34);
  sub_100003C4C(&v34, *(&v35 + 1));
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  v2 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0x8000000100104B80;
  *(inited + 48) = 0x65526E6F6D656144;
  *(inited + 56) = 0xEB00000000796461;
  v3 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10009EEF4(v2);
  *(&v30 + 1) = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  *&v29 = v3;
  v4 = sub_10009C698(&v29);
  v6 = v5;
  sub_100003C90(&v29);
  if (v6 >> 60 != 15)
  {
    sub_10009C774(v4, v6);
    sub_100014988(v4, v6);
    sub_100003C90(&v34);
    return 1;
  }

  sub_10001449C();
  v7 = swift_allocError();
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  *(v8 + 72) = 75;
  swift_willThrow();
  sub_100003C90(&v34);
  v33 = v7;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  *&v37[9] = *&v32[9];
  v36 = v31;
  *v37 = *v32;
  v34 = v29;
  v35 = v30;
  if (v32[24] != 3)
  {
    sub_10001465C(&v34);
LABEL_11:
    if (qword_100133AF8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000144F0(v19, qword_10014EA28);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v29 = v23;
      *v22 = 136315138;
      v33 = v7;
      swift_errorRetain();
      v24 = String.init<A>(describing:)();
      v26 = sub_1000E3AF8(v24, v25, &v29);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "unexpected error checking if daemon is active %s", v22, 0xCu);
      sub_100003C90(v23);
    }

    else
    {
    }

    return 0;
  }

  if (qword_100133AF8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000144F0(v10, qword_10014EA28);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  sub_10001465C(&v34);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;

    v15 = sub_1000AA704();
    v17 = v16;
    sub_10001465C(&v34);
    v18 = sub_1000E3AF8(v15, v17, &v28);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "kernel reports daemon is not active: %s", v13, 0xCu);
    sub_100003C90(v14);

    sub_10001465C(&v34);
  }

  else
  {

    sub_10001465C(&v34);
  }

  return 0;
}

_UNKNOWN **sub_10009EB50()
{
  v1 = sub_10009E624();
  v2 = *(v0 + 72);
  if (v2 != 2 && ((v1 ^ v2) & 1) == 0)
  {
    return 0;
  }

  *(v0 + 72) = v1 & 1;
  return &off_1001260E0;
}

unint64_t sub_10009EB98()
{
  v1 = *(v0 + 72);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_10009E624();
    *(v0 + 72) = v1 & 1;
  }

  v2 = (v1 & 1) == 0;
  if (v1)
  {
    v3 = 0x6574617669746361;
  }

  else
  {
    v3 = 0x6974636120746F6ELL;
  }

  if (v2)
  {
    v4 = 0xED00006465746176;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 0x68206E6F6D656144;
  v6._object = 0xEB00000000207361;
  String.append(_:)(v6);

  return 0xD00000000000001CLL;
}

uint64_t sub_10009EC84()
{
  sub_100003C90((v0 + 16));

  return swift_deallocClassInstance();
}

CFStringRef sub_10009ECF4(const char *a1)
{

  return sub_10009ED5C(a1, &unk_1001389A0, &qword_1000F96A0);
}

CFStringRef sub_10009ED5C(const char *a1, uint64_t *a2, uint64_t *a3)
{
  errorString[0] = 0;
  IOCFUnserialize(a1, kCFAllocatorDefault, 0, errorString);
  v5 = errorString[0];
  if (errorString[0])
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003D24();
    *(v10 + 32) = v6;
    *(v10 + 40) = v8;
    sub_10001491C();
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v11, "Error encountered while deserializing: %{public}s", 49, 2, v10);

    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    sub_100003CDC(&qword_1001376C0, &qword_1000F9880);
    sub_100003CDC(a2, a3);
    if (swift_dynamicCast())
    {
      return errorString[1];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10009EEF4(uint64_t a1)
{
  v2 = sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_10009EF5C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_100023AFC(0, 0, 0);
  if (!v5[2] || (v6 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60), (v7 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_10000B430(v5[7] + 32 * v6, v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v8 = 0;
    v9 = 0xF000000000000000;
LABEL_9:
    if (a3 >> 60 == 15)
    {
      sub_1000146C4(a2, a3);
      sub_100014988(v8, v9);
      return 1;
    }

LABEL_11:
    sub_1000146C4(a2, a3);
    sub_100014988(v8, v9);
    sub_100014988(a2, a3);
    return 0;
  }

  v8 = v12;
  v9 = v13;
  if (v13 >> 60 == 15)
  {
    goto LABEL_9;
  }

  if (a3 >> 60 == 15)
  {
    goto LABEL_11;
  }

  sub_1000146C4(a2, a3);
  sub_100041D48(v12, v13);
  v10 = sub_10006475C(v12, v13, a2, a3);
  sub_100014988(a2, a3);
  sub_100014988(v12, v13);
  sub_100014988(v12, v13);
  return v10;
}

void *sub_10009F0FC(uint64_t a1)
{
  v42 = type metadata accessor for URL();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42, v4);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v34 = v1;
  v48 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v6, 0);
  v7 = v48;
  v8 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v39 = v3 + 8;
  v40 = v3 + 16;
  v35 = a1 + 64;
  v36 = v6;
  v37 = v3;
  v38 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v43 = v11;
    v44 = v14;
    v15 = *(a1 + 48) + *(v3 + 72) * v10;
    v16 = *(v3 + 16);
    v45 = v7;
    v18 = v41;
    v17 = v42;
    v16(v41, v15, v42);
    v46 = 2314;
    v47 = 0xE200000000000000;
    v19._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v19);

    v20 = v3;
    v21 = v46;
    v22 = v47;
    v23 = v18;
    v7 = v45;
    result = (*(v20 + 8))(v23, v17);
    v48 = v7;
    v25 = v7[2];
    v24 = v7[3];
    if (v25 >= v24 >> 1)
    {
      result = sub_1000635A4((v24 > 1), v25 + 1, 1);
      v7 = v48;
    }

    v7[2] = v25 + 1;
    v26 = &v7[2 * v25];
    v26[4] = v21;
    v26[5] = v22;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v8 = v38;
    v27 = *(v38 + 8 * v13);
    if ((v27 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v44 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v10 & 0x3F));
    if (v28)
    {
      v12 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v13 << 6;
      v30 = v13 + 1;
      v31 = (v35 + 8 * v13);
      while (v30 < (v12 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1000147E0(v10, v44, 0);
          v12 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v10, v44, 0);
    }

LABEL_4:
    v11 = v43 + 1;
    v10 = v12;
    v3 = v37;
    if (v43 + 1 == v36)
    {
      return v7;
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
  return result;
}

void *sub_10009F428(uint64_t a1)
{
  v38 = type metadata accessor for URL();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38, v4);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v32 = v1;
    v46 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v6, 0);
    v8 = v46;
    v9 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v35 = a1 + 64;
    v36 = (v3 + 8);
    v33 = a1 + 72;
    v34 = v6;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v14 = *(a1 + 36);
      v39 = v11;
      v40 = v14;
      sub_10000A990(*(a1 + 56) + 40 * v10, v43);
      v41 = 2314;
      v42 = 0xE200000000000000;
      v15 = v44;
      v16 = v45;
      sub_100003C4C(v43, v44);
      v17 = v37;
      (*(v16 + 64))(v15, v16);
      v18 = URL.path(percentEncoded:)(1);
      (*v36)(v17, v38);
      String.append(_:)(v18);

      v20 = v41;
      v19 = v42;
      result = sub_100003C90(v43);
      v21 = v8;
      v46 = v8;
      v22 = v8[2];
      v23 = v21[3];
      if (v22 >= v23 >> 1)
      {
        result = sub_1000635A4((v23 > 1), v22 + 1, 1);
        v21 = v46;
      }

      v21[2] = v22 + 1;
      v24 = &v21[2 * v22];
      v24[4] = v20;
      v24[5] = v19;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v9 = v35;
      v25 = *(v35 + 8 * v13);
      if ((v25 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v8 = v21;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v10 & 0x3F));
      if (v26)
      {
        v12 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v13 << 6;
        v28 = v13 + 1;
        v29 = (v33 + 8 * v13);
        while (v28 < (v12 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1000147E0(v10, v40, 0);
            v12 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_1000147E0(v10, v40, 0);
      }

LABEL_4:
      v11 = v39 + 1;
      v10 = v12;
      if (v39 + 1 == v34)
      {
        return v8;
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
  }

  return result;
}

void *sub_10009F77C(uint64_t a1)
{
  v36 = type metadata accessor for URL();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36, v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v29[1] = v1;
  v38 = _swiftEmptyArrayStorage;
  v31 = v5;
  sub_1000635C4(0, v8, 0);
  v9 = v38;
  v10 = v31 + 56;
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = v31;
  v14 = 0;
  v34 = v3 + 32;
  v35 = v3;
  v30 = v31 + 64;
  v32 = v8;
  v33 = v10;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v13 + 32))
  {
    v17 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    v37 = *(v13 + 36);
    v18 = v13;

    URL.init(fileURLWithPath:)();

    v38 = v9;
    v19 = v7;
    v21 = v9[2];
    v20 = v9[3];
    if (v21 >= v20 >> 1)
    {
      sub_1000635C4((v20 > 1), v21 + 1, 1);
      v9 = v38;
    }

    v9[2] = v21 + 1;
    result = (*(v35 + 32))(v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v21, v19, v36);
    v15 = 1 << *(v18 + 32);
    if (v12 >= v15)
    {
      goto LABEL_23;
    }

    v13 = v18;
    v10 = v33;
    v22 = *(v33 + 8 * v17);
    if ((v22 & (1 << v12)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(v13 + 36))
    {
      goto LABEL_25;
    }

    v7 = v19;
    v23 = v22 & (-2 << (v12 & 0x3F));
    if (v23)
    {
      v15 = __clz(__rbit64(v23)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v16 = v32;
    }

    else
    {
      v24 = v17 << 6;
      v25 = v17 + 1;
      v26 = (v30 + 8 * v17);
      v16 = v32;
      while (v25 < (v15 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1000147E0(v12, v37, 0);
          v13 = v31;
          v15 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_1000147E0(v12, v37, 0);
      v13 = v31;
LABEL_19:
      v7 = v19;
    }

    ++v14;
    v12 = v15;
    if (v14 == v16)
    {
      return v9;
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
  return result;
}

uint64_t sub_10009FAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = v26[4];
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_10:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_12;
      }

      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v6 = 0;
    v3 += 32;
    while (v5 != v6)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_10;
      }

      v7 = v6 + 1;
      v8 = *(v3 + 8 * v6);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v10 = [v8 evaluateWithObject:isa];

      v6 = v7;
      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

LABEL_12:
  v12 = v26[2];
  if (*(v12 + 16) && (sub_1000814E8(a1, a2, v12) & 1) != 0)
  {
    return 0;
  }

  if (*(*v26 + 16))
  {
    return (sub_1000814E8(a1, a2, *v26) & 1) == 0;
  }

  v13 = v26[1];
  if (!*(v13 + 16))
  {
    if (!a3)
    {
      return 2;
    }

    goto LABEL_25;
  }

  v14 = sub_1000814E8(a1, a2, v13);
  if (v14)
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  if (a3 && (v14 & 1) == 0)
  {
LABEL_25:
    p_ivars = v26[3];
    v16 = p_ivars & 0xFFFFFFFFFFFFFF8;
    if (p_ivars >> 62)
    {
LABEL_33:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_27:
        v18 = 0;
        v19 = (p_ivars + 32);
        p_ivars = &ApprovalSettingsStateManager.ivars;
        while (v17 != v18)
        {
          if (v18 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v20 = v18 + 1;
          v21 = v19[v18];
          v22 = Dictionary._bridgeToObjectiveC()().super.isa;
          v23 = [(__objc2_ivar_list *)v21 evaluateWithObject:v22];

          v18 = v20;
          if ((v23 & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else
    {
      v17 = *((p_ivars & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_27;
      }
    }

    return 2;
  }

  return result;
}

BOOL sub_10009FD70(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10009FDA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_10009FDCC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_10009FEA0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10006FA70(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10009FEE0()
{
  _StringGuts.grow(_:)(132);
  v1._countAndFlagsBits = 0x203A686372610A5BLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x6E61697261760A2CLL;
  v2._object = 0xEB00000000203A74;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 0x6C656E72656B0A2CLL;
  v3._object = 0xEA0000000000203ALL;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._object = 0x8000000100109FB0;
  v4._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000011;
  v6._object = 0x8000000100109FD0;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v7);

  v8._object = 0x8000000100109FF0;
  v8._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v8);
  v9._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v9);

  v10._object = 0x800000010010A010;
  v10._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v10);
  v11._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 6097452;
  v12._object = 0xE300000000000000;
  String.append(_:)(v12);
  return 0;
}

uint64_t sub_1000A00DC(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_1001378B8, &qword_1000F9F20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_100003C4C(a1, a1[3]);
  sub_1000AA290();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[6];
    HIBYTE(v11) = 3;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001945C(&qword_100134610, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[7];
    HIBYTE(v11) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[8];
    HIBYTE(v11) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[9];
    HIBYTE(v11) = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000A03A8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x746E6169726176;
    if (v1 != 1)
    {
      v4 = 0x6C656E72656BLL;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 1751347809;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 3)
    {
      v2 = 0x6465726975716572;
    }

    if (*v0 <= 4u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000013;
    }
  }
}

uint64_t sub_1000A0488@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000A9A64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000A04BC(uint64_t a1)
{
  v2 = sub_1000AA290();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A04F8(uint64_t a1)
{
  v2 = sub_1000AA290();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000A0534@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000A9CC0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000A059C(void *a1, _DWORD *a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v185 = *(v6 - 8);
  v186 = v6;
  v8 = __chkstk_darwin(v6, v7);
  v182 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v183 = &v181 - v11;
  v196 = type metadata accessor for OSSignpostID();
  v201 = *(v196 - 8);
  v13 = __chkstk_darwin(v196, v12);
  v184 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v187 = &v181 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v188 = &v181 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v192 = &v181 - v23;
  __chkstk_darwin(v22, v24);
  v189 = &v181 - v25;
  v199 = type metadata accessor for URL();
  v212 = *(v199 - 8);
  v27 = __chkstk_darwin(v199, v26);
  v190 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v198 = &v181 - v30;
  *(v2 + 664) = sub_10003F2C0(_swiftEmptyArrayStorage);
  *(v2 + 672) = _swiftEmptyArrayStorage;
  *(v2 + 680) = sub_10003F3CC(_swiftEmptyArrayStorage);
  *(v2 + 688) = 0u;
  *(v2 + 704) = 0;
  *(v2 + 712) = sub_10003F3E0(_swiftEmptyArrayStorage);
  *(v2 + 720) = 0u;
  *(v2 + 736) = 0;
  *(v2 + 744) = &_swiftEmptySetSingleton;
  *(v2 + 752) = 0;
  v210 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v31 = swift_allocObject();
  v211 = xmmword_1000F3160;
  *(v31 + 16) = xmmword_1000F3160;
  v32 = sub_1000A1C58();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  v204 = sub_100003D24();
  *(v31 + 64) = v204;
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v213 = sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v35 = static OS_os_log.default.getter();
  v36 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Initializing with settings: %{private}s", 39, 2, &_mh_execute_header, v35, v36, v31);

  v208 = a1;
  sub_10000A990(a1, v3 + 16);
  memcpy((v3 + 56), a2, 0x255uLL);
  sub_100041A84(a2, v223);
  v37 = sub_10003F3F4(_swiftEmptyArrayStorage);
  v38 = sub_10003F5B0(_swiftEmptyArrayStorage);
  v39 = sub_10003F6A8(_swiftEmptyArrayStorage);
  v40 = sub_10003F6BC(_swiftEmptyArrayStorage);
  v41 = sub_10003F8A4(_swiftEmptyArrayStorage);
  sub_100003CDC(&qword_100137850, &qword_1000F9B98);
  v42 = swift_allocObject();
  *(v42 + 72) = 0;
  *(v42 + 16) = _swiftEmptyArrayStorage;
  *(v42 + 24) = v37;
  *(v42 + 32) = &_swiftEmptySetSingleton;
  *(v42 + 40) = v38;
  *(v42 + 48) = v39;
  *(v42 + 56) = v40;
  v43 = a2;
  *(v42 + 64) = v41;
  *(v3 + 656) = v42;
  v44 = a2[148];
  v203 = v3;
  v205 = a2;
  v191 = v44;
  if ((v44 & 0x20) != 0)
  {
    v48 = &type metadata for String;
    goto LABEL_51;
  }

  *&v223[0] = off_100136EB8[0];
  swift_bridgeObjectRetain_n();
  v45 = v209;
  sub_1000A7E2C(v223);
  if (v45)
  {

    __break(1u);
    return result;
  }

  v209 = 0;

  v46 = *&v223[0];
  v47 = *(*&v223[0] + 16);
  v48 = &type metadata for String;
  v49 = v204;
  if (!v47)
  {
LABEL_50:

LABEL_51:
    v50 = v201;
    v49 = v189;
    if (qword_100133B10 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_52;
  }

  v50 = 0;
  v207 = v47 - 1;
  v202 = "system kext collection";
  v194 = "auxiliary kext collection";
  v195 = (v212 + 8);
  v197 = "o prelink UUID key?";
  v193 = "f dext in the ARV at %{public}s";
  v200 = *&v223[0];
  while (1)
  {
    v51 = *(v46 + v50 + 32);
    v52 = swift_allocObject();
    v53 = v52;
    *(v52 + 16) = v211;
    v54 = 0xD000000000000016;
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        v54 = 0xD000000000000019;
        v55 = v197;
      }

      else
      {
        v54 = 0xD000000000000012;
        v55 = v193;
      }
    }

    else
    {
      v55 = v202;
      if (v51)
      {
        v55 = v194;
      }
    }

    *(v52 + 56) = v48;
    *(v52 + 64) = v49;
    *(v52 + 32) = v54;
    *(v52 + 40) = v55 | 0x8000000000000000;
    v56 = static OS_os_log.default.getter();
    v57 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Looking for the %{public}s", 26, 2, &_mh_execute_header, v56, v57, v53);

    if (qword_100133A78 != -1)
    {
      swift_once();
    }

    v58 = qword_10014E948;
    if (!*(qword_10014E948 + 16))
    {
      break;
    }

    v59 = sub_1000616D4(v51);
    if ((v60 & 1) == 0)
    {
      goto LABEL_85;
    }

    v61 = *(*(v58 + 56) + 8 * v59);
    memcpy(v222, v43, sizeof(v222));
    sub_100041A84(v43, &v219);

    v212 = v61;
    swift_getAtKeyPath();
    memcpy(v223, v222, 0x255uLL);
    sub_100041AE0(v223);
    v62 = *(&v217 + 1);
    if (*(&v217 + 1))
    {
      v63 = v48;
      v64 = v217;
      sub_100003C4C(v208, v208[3]);
      sub_1000DF9D4(&v219);
      v65 = v220;
      v66 = v221;
      sub_100003C4C(&v219, v220);
      v67 = v66[14];
      v206 = v64;
      v67(&v217, v64, v62, 1, v65, v66);
      if (v218)
      {
        sub_100009F34(&v217, v222);
        sub_100003C90(&v219);
        v68 = sub_100003C4C(v222, *&v222[24]);
        v69 = *v68;
        v70 = v68[1];
        if (sub_1000A9608() && sub_10000166C())
        {
          sub_1000146C4(v69, v70);
          v71 = v209;
          sub_1000A90F8(v69, v70, v69, v70, &v214);
          v209 = v71;
          if (*(&v215 + 1))
          {
            sub_100009F34(&v214, &v217);
LABEL_27:
            v78 = sub_100003C4C(&v217, v218);
            v79 = *v78;
            v80 = v78[1];
            if (sub_1000A9628())
            {
              sub_1000146C4(v79, v80);
              v81 = v209;
              sub_1000D527C(v79, v80, v79, v80, &v219);
              v82 = v81;
              v83 = v203;
            }

            else
            {
              v87 = static os_log_type_t.error.getter();
              v88 = static OS_os_log.default.getter();
              v83 = v203;
              os_log(_:dso:log:_:_:)(v87, &_mh_execute_header, v88, "warning: libcompression not linked; returning existing data.", 60, 2, _swiftEmptyArrayStorage);

              v220 = &type metadata for Data;
              v221 = &off_10012DA28;
              *&v219 = v79;
              *(&v219 + 1) = v80;
              sub_1000146C4(v79, v80);
              v82 = v209;
            }

            sub_100003C90(&v217);
            v89 = v198;
            URL.init(fileURLWithPath:)();

            v91 = *(v83 + 656);
            __chkstk_darwin(v90, v92);
            *(&v181 - 6) = v83;
            v93 = v89;
            v43 = v205;
            *(&v181 - 5) = v205;
            *(&v181 - 4) = v93;
            *(&v181 - 24) = v51;
            *(&v181 - 2) = &v219;

            os_unfair_lock_lock((v91 + 72));
            sub_1000A963C((v91 + 16), &v217);
            v209 = v82;
            v94 = (v91 + 72);
            if (v82)
            {
              os_unfair_lock_unlock(v94);
              v122 = v203;

              sub_100041AE0(v43);

              (*v195)(v93, v199);
              sub_100003C90(&v219);
              sub_100003C90(v222);
              goto LABEL_83;
            }

            os_unfair_lock_unlock(v94);

            (*v195)(v93, v199);
            sub_100003C90(&v219);
            sub_100003C90(v222);
            v48 = &type metadata for String;
            v49 = v204;
            v46 = v200;
            goto LABEL_46;
          }
        }

        else
        {
          v76 = static os_log_type_t.error.getter();
          v77 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v76, &_mh_execute_header, v77, "warning: libImg4Linked not linked", 33, 2, _swiftEmptyArrayStorage);

          v216 = 0;
          v214 = 0u;
          v215 = 0u;
        }

        sub_10000A990(v222, &v217);
        if (*(&v215 + 1))
        {
          sub_10000A184(&v214, &qword_1001350F0, &qword_1000F89E0);
        }

        goto LABEL_27;
      }

      sub_10000A184(&v217, &qword_1001350F0, &qword_1000F89E0);
      sub_100003C90(&v219);
      v49 = v204;
      v48 = v63;
      if (v51 == 2)
      {

        v84 = swift_allocObject();
        *(v84 + 16) = v211;
        v43 = v205;
        v46 = v200;
        v85 = 0xD000000000000019;
        v86 = v197;
      }

      else
      {
        v43 = v205;
        v46 = v200;
        if ((v191 & 0x10) == 0)
        {

          *v222 = 0;
          *&v222[8] = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          *v222 = 0xD000000000000023;
          *&v222[8] = 0x8000000100109A50;
          v173._countAndFlagsBits = v206;
          v173._object = v62;
          String.append(_:)(v173);

          v174 = *v222;
          v175 = *&v222[8];
          sub_10001449C();
          swift_allocError();
          *v176 = v174;
          *(v176 + 8) = v175;
          v177 = *&v222[48];
          v178 = *&v222[32];
          v179 = *&v222[16];
          *(v176 + 16) = *v222;
          *(v176 + 32) = v179;
          *(v176 + 48) = v178;
          *(v176 + 64) = v177;
          *(v176 + 72) = 9;
          swift_willThrow();
          sub_100041AE0(v43);

          v122 = v203;
          goto LABEL_82;
        }

        v84 = swift_allocObject();
        *(v84 + 16) = v211;
        v85 = 0xD000000000000016;
        if (v51 > 1)
        {
          v85 = 0xD000000000000012;
          v86 = v193;
        }

        else if (v51)
        {
          v86 = v194;
        }

        else
        {
          v86 = v202;
        }
      }

      *(v84 + 56) = v48;
      *(v84 + 64) = v49;
      *(v84 + 32) = v85;
      *(v84 + 40) = v86 | 0x8000000000000000;
      v95 = static OS_os_log.default.getter();
      v97 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Skipping %{public}s, cannot map", 31, 2, &_mh_execute_header, v95, v97, v84);
    }

    else
    {
      v72 = swift_allocObject();
      v73 = v72;
      *(v72 + 16) = v211;
      v74 = 0xD000000000000016;
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          v74 = 0xD000000000000019;
          v75 = v197;
        }

        else
        {
          v74 = 0xD000000000000012;
          v75 = v193;
        }
      }

      else
      {
        v75 = v202;
        if (v51)
        {
          v75 = v194;
        }
      }

      *(v72 + 56) = v48;
      *(v72 + 64) = v49;
      *(v72 + 32) = v74;
      *(v72 + 40) = v75 | 0x8000000000000000;
      v95 = static OS_os_log.default.getter();
      v96 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Skipping %{public}s, manager settings does not contain a path to it", 67, 2, &_mh_execute_header, v95, v96, v73);
    }

LABEL_46:
    if (v207 == v50)
    {
      goto LABEL_50;
    }

    if (++v50 >= *(v46 + 16))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_52:
  v98 = type metadata accessor for OSSignposter();
  v99 = sub_1000144F0(v98, qword_10014EA70);
  static OSSignpostID.exclusive.getter();
  v207 = v99;
  v100 = OSSignposter.logHandle.getter();
  v101 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    v103 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v100, v101, v103, "AkelExtensionLoad", "", v102, 2u);
    v50 = v201;
  }

  v104 = *(v50 + 16);
  v105 = v196;
  v206 = v50 + 16;
  v202 = v104;
  (v104)(v192, v49, v196);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v212 = OSSignpostIntervalState.init(id:isOpen:)();
  v106 = *(v50 + 8);
  v201 = v50 + 8;
  v106(v49, v105);
  v108 = v43[18];
  v107 = v43[19];
  v109 = sub_1000C7804(0xD000000000000042, 0x8000000100109130);
  v111 = v110;
  *&v223[0] = v108;
  *(&v223[0] + 1) = v107;

  v112._countAndFlagsBits = v109;
  v112._object = v111;
  String.append(_:)(v112);

  sub_100003C4C(v208, v208[3]);
  sub_1000DFF08(v222);
  v113 = v190;
  URL.init(fileURLWithPath:)();

  v114 = sub_1000993E4(v113);
  if (v114)
  {
    v115 = v114;
    v220 = type metadata accessor for UncachedBundle();
    v221 = sub_1000A958C();
    *&v219 = v115;
    sub_100003C90(v222);
    v116 = sub_100009F34(&v219, v223);
    v117 = v203;
    v118 = *(v203 + 656);
    __chkstk_darwin(v116, v119);
    *(&v181 - 2) = v117;
    *(&v181 - 1) = v223;

    os_unfair_lock_lock(v118 + 18);
    v120 = v209;
    sub_1000A95E4(&v118[4], v222);
    v209 = v120;
    v121 = v118 + 18;
    if (v120)
    {
      os_unfair_lock_unlock(v121);

      sub_100041AE0(v205);

      sub_100003C90(v223);
      v122 = v117;
      goto LABEL_83;
    }

    os_unfair_lock_unlock(v121);

    sub_100003C90(v223);
    v43 = v205;
  }

  else
  {
    sub_100003C90(v222);
    sub_100003CDC(&qword_100137858, &unk_1000F9BA0);
    v123 = swift_allocObject();
    *(v123 + 16) = v211;
    *(v123 + 56) = v48;
    *(v123 + 32) = 0xD000000000000038;
    *(v123 + 40) = 0x8000000100109990;
    print(_:separator:terminator:)();

    v124 = static os_log_type_t.error.getter();
    v125 = swift_allocObject();
    *(v125 + 16) = v211;
    v126 = v204;
    *(v125 + 56) = v48;
    *(v125 + 64) = v126;
    *(v125 + 32) = 0xD000000000000020;
    *(v125 + 40) = 0x8000000100109100;
    v127 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v124, &_mh_execute_header, v127, "Warning: %{public}s was not found!", 34, 2, v125);
  }

  v128 = OSSignposter.logHandle.getter();
  v129 = v188;
  OSSignpostIntervalState.signpostID.getter();
  v130 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v131 = v183;
    checkForErrorAndConsumeState(state:)();

    v133 = v185;
    v132 = v186;
    if ((*(v185 + 88))(v131, v186) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v134 = "[Error] Interval already ended";
    }

    else
    {
      (*(v133 + 8))(v131, v132);
      v134 = "";
    }

    v135 = swift_slowAlloc();
    *v135 = 0;
    v136 = v188;
    v137 = OSSignpostID.rawValue.getter();
    v138 = v134;
    v129 = v136;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, v130, v137, "AkelExtensionLoad", v138, v135, 2u);

    v43 = v205;
  }

  v106(v129, v196);
  v139 = v209;
  sub_1000A2A04();
  v140 = v139;
  if (v139)
  {
    v141 = static os_log_type_t.error.getter();
    v142 = swift_allocObject();
    *(v142 + 16) = v211;
    swift_getErrorValue();
    v143 = Error.localizedDescription.getter();
    v144 = v204;
    *(v142 + 56) = v48;
    *(v142 + 64) = v144;
    *(v142 + 32) = v143;
    *(v142 + 40) = v145;
    v146 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v141, &_mh_execute_header, v146, "Failed to force load codeless kexts: %{public}s", 47, 2, v142);

    v140 = 0;
  }

  v213 = v106;
  v147 = v187;
  static OSSignpostID.exclusive.getter();
  v148 = OSSignposter.logHandle.getter();
  v149 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    v151 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v148, v149, v151, "DriverkitExtensionLoad", "", v150, 2u);
    v43 = v205;
  }

  v152 = v196;
  (v202)(v192, v147, v196);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v213(v147, v152);
  v153 = v203;
  sub_1000A3568(0, 1uLL);
  if (v140)
  {
    sub_100041AE0(v43);

    v122 = v153;
  }

  else
  {
    v154 = OSSignposter.logHandle.getter();
    v155 = v184;
    OSSignpostIntervalState.signpostID.getter();
    v156 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v157 = v182;
      checkForErrorAndConsumeState(state:)();

      v159 = v185;
      v158 = v186;
      if ((*(v185 + 88))(v157, v186) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v160 = "[Error] Interval already ended";
      }

      else
      {
        (*(v159 + 8))(v157, v158);
        v160 = "";
      }

      v161 = swift_slowAlloc();
      *v161 = 0;
      v162 = v184;
      v163 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v154, v156, v163, "DriverkitExtensionLoad", v160, v161, 2u);
      v155 = v162;
    }

    v213(v155, v152);
    v122 = v203;
    if ((v191 & 0x4000) == 0)
    {
      sub_1000A3D84();
    }

    v164 = v205;

    v165 = v208;
    sub_10000A990(v208, v223);
    v166 = swift_allocObject();
    sub_100009F34(v223, v166 + 16);
    v167 = *(v122 + 688);
    v168 = *(v122 + 696);
    *(v122 + 688) = sub_1000A937C;
    *(v122 + 696) = v166;
    *(v122 + 704) = 1;

    sub_100057C80(v167, v168);

    v169 = v191 & 0xC0;
    sub_10000A990(v165, v223);
    v170 = swift_allocObject();
    memcpy((v170 + 16), v164, 0x255uLL);
    sub_100009F34(v223, v170 + 616);
    swift_beginAccess();
    v171 = *(v122 + 720);
    v172 = *(v122 + 728);
    *(v122 + 720) = sub_1000A956C;
    *(v122 + 728) = v170;

    sub_100057C80(v171, v172);
    if (v169)
    {
      *(v122 + 736) = 1;
    }

    swift_endAccess();
LABEL_82:
  }

LABEL_83:
  sub_100003C90(v208);
  return v122;
}

char *sub_1000A1C58()
{
  v1 = v0;
  _StringGuts.grow(_:)(270);
  v2._countAndFlagsBits = 0xD000000000000011;
  v2._object = 0x8000000100109810;
  String.append(_:)(v2);
  if (*(v0 + 16))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x296C696E28;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3A6D65747379530ALL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  if (*(v0 + 32))
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
  }

  else
  {
    v8 = 0xE500000000000000;
    v7 = 0x296C696E28;
  }

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x61696C697875410ALL;
  v10._object = 0xEC000000203A7972;
  String.append(_:)(v10);
  if (*(v0 + 48))
  {
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
  }

  else
  {
    v12 = 0xE500000000000000;
    v11 = 0x296C696E28;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000010;
  v14._object = 0x8000000100109830;
  String.append(_:)(v14);
  v104 = *(v0 + 72);
  v106 = v104;

  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;
  sub_10000A184(&v104, &qword_100136C80, &qword_1000F39B0);
  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x20656C646E75420ALL;
  v19._object = 0xEF203A7368746150;
  String.append(_:)(v19);
  v103 = *(v0 + 80);
  v106 = v103;

  sub_100003CDC(&qword_100137840, &unk_1000FAC30);
  sub_10001455C(&qword_100137848, &qword_100137840, &unk_1000FAC30, &protocol conformance descriptor for Set<A>);
  sub_100012814();
  v20 = Sequence<>.joined(separator:)();
  v22 = v21;
  sub_10000A184(&v103, &qword_100137840, &unk_1000FAC30);
  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000015;
  v24._object = 0x8000000100109850;
  String.append(_:)(v24);
  v102 = *(v0 + 88);
  v106 = v102;

  v25 = Sequence<>.joined(separator:)();
  v27 = v26;
  sub_10000A184(&v102, &qword_100137840, &unk_1000FAC30);
  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._object = 0x8000000100109870;
  v29._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v29);
  v101 = *(v0 + 96);
  v106 = v101;

  v30 = BidirectionalCollection<>.joined(separator:)();
  v32 = v31;
  sub_10000A184(&v101, &qword_100136C80, &qword_1000F39B0);
  v33._countAndFlagsBits = v30;
  v33._object = v32;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0xD000000000000017;
  v34._object = 0x8000000100109890;
  String.append(_:)(v34);
  String.append(_:)(*(v0 + 104));
  v35._object = 0x80000001001098B0;
  v35._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v35);
  String.append(_:)(*(v0 + 120));
  v36._countAndFlagsBits = 0x746E61697261560ALL;
  v36._object = 0xEA0000000000203ALL;
  String.append(_:)(v36);
  v37 = *(v0 + 136);
  if (v37 <= 2)
  {
    if (v37)
    {
      v38 = 0x296C696E28;
      if (v37 != 1)
      {
        if (v37 == 2)
        {
          v39 = 0xE500000000000000;
          v40 = 0x6775626564;
          goto LABEL_25;
        }

LABEL_22:
        v41 = *(v37 + 24);
        v39 = *(v37 + 32);

        v40 = v41;
        goto LABEL_25;
      }

      v39 = 0xEB00000000746E65;
      v40 = 0x6D706F6C65766564;
      goto LABEL_25;
    }

    v39 = 0xE700000000000000;
    v40 = 0x657361656C6572;
LABEL_21:
    v38 = 0x296C696E28;
    goto LABEL_25;
  }

  if (v37 == 3)
  {
    v39 = 0xE500000000000000;
    v40 = 0x6E6173616BLL;
    goto LABEL_21;
  }

  v38 = 0x296C696E28;
  if (v37 != 4)
  {
    if (v37 == 5)
    {
      v39 = 0xE500000000000000;
      v40 = 0x296C696E28;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v39 = 0xE800000000000000;
  v40 = 0x6863726165736572;
LABEL_25:
  v42 = v39;
  String.append(_:)(*&v40);

  v43._countAndFlagsBits = 0x7265746C69460A0ALL;
  v43._object = 0xEA0000000000203ALL;
  String.append(_:)(v43);
  v44 = *(v1 + 552);
  v45 = *(v1 + 560);
  v46 = *(v1 + 568);
  if (!v44)
  {
    v79 = 0xE500000000000000;
    v80._countAndFlagsBits = 0x296C696E28;
    v80._object = 0xE500000000000000;
    String.append(_:)(v80);

    v81._countAndFlagsBits = 0x207265746C69460ALL;
    v81._object = 0xED0000203A6C6C41;
    String.append(_:)(v81);
    v77 = 0x296C696E28;
    goto LABEL_46;
  }

  v47 = *(v1 + 576);
  v48 = *(v1 + 584);
  v98 = *(v1 + 552);
  v99 = *(v1 + 560);
  if (v47 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = _swiftEmptyArrayStorage;
  v100 = v46;
  if (v49)
  {
    v106 = _swiftEmptyArrayStorage;
    result = sub_1000635A4(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    v97 = v48;
    v50 = v106;
    v52 = (v47 + 32);
    do
    {
      v53 = *v52;
      v54 = [v53 predicateFormat];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v106 = v50;
      v59 = v50[2];
      v58 = v50[3];
      if (v59 >= v58 >> 1)
      {
        sub_1000635A4((v58 > 1), v59 + 1, 1);
        v50 = v106;
      }

      v50[2] = v59 + 1;
      v60 = &v50[2 * v59];
      v60[4] = v55;
      v60[5] = v57;
      ++v52;
      --v49;
    }

    while (v49);
    v38 = 0x296C696E28;
    v46 = v100;
    v48 = v97;
  }

  v106 = v50;
  v61 = BidirectionalCollection<>.joined(separator:)();
  v63 = v62;

  v64._countAndFlagsBits = v61;
  v64._object = v63;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 0x207265746C69460ALL;
  v65._object = 0xED0000203A6C6C41;
  String.append(_:)(v65);
  if (v48 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v66 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = _swiftEmptyArrayStorage;
  if (v66)
  {
    v106 = _swiftEmptyArrayStorage;
    result = sub_1000635A4(0, v66 & ~(v66 >> 63), 0);
    if ((v66 & 0x8000000000000000) == 0)
    {
      v67 = v106;
      v68 = (v48 + 32);
      do
      {
        v69 = *v68;
        v70 = [v69 predicateFormat];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v106 = v67;
        v75 = v67[2];
        v74 = v67[3];
        if (v75 >= v74 >> 1)
        {
          sub_1000635A4((v74 > 1), v75 + 1, 1);
          v67 = v106;
        }

        v67[2] = v75 + 1;
        v76 = &v67[2 * v75];
        v76[4] = v71;
        v76[5] = v73;
        ++v68;
        --v66;
      }

      while (v66);
      v38 = 0x296C696E28;
      v46 = v100;
      goto LABEL_44;
    }

LABEL_53:
    __break(1u);
    return result;
  }

LABEL_44:
  v106 = v67;
  v77 = BidirectionalCollection<>.joined(separator:)();
  v79 = v78;

  v44 = v98;
  v45 = v99;
LABEL_46:
  v82._countAndFlagsBits = v77;
  v82._object = v79;
  String.append(_:)(v82);

  v83._countAndFlagsBits = 0x203A6564696C450ALL;
  v83._object = 0xE800000000000000;
  String.append(_:)(v83);
  if (v44)
  {
    v105 = v45;
    v106 = v45;

    v84 = Sequence<>.joined(separator:)();
    v86 = v85;
    sub_10000A184(&v105, &qword_100137840, &unk_1000FAC30);
    v87._countAndFlagsBits = v84;
    v87._object = v86;
    String.append(_:)(v87);

    v88._countAndFlagsBits = 0x616E6F6974704F0ALL;
    v88._object = 0xEB00000000203A6CLL;
    String.append(_:)(v88);
    v106 = v46;

    v38 = Sequence<>.joined(separator:)();
    v90 = v89;
    sub_10000A184(&v106, &qword_100137840, &unk_1000FAC30);
  }

  else
  {
    v90 = 0xE500000000000000;
    v91._countAndFlagsBits = 0x296C696E28;
    v91._object = 0xE500000000000000;
    String.append(_:)(v91);

    v92._countAndFlagsBits = 0x616E6F6974704F0ALL;
    v92._object = 0xEB00000000203A6CLL;
    String.append(_:)(v92);
  }

  v93._countAndFlagsBits = v38;
  v93._object = v90;
  String.append(_:)(v93);

  v94._countAndFlagsBits = 0x656D756C6F560A0ALL;
  v94._object = 0xEF203A746F6F5220;
  String.append(_:)(v94);
  String.append(_:)(*(v1 + 144));
  v95._countAndFlagsBits = 0x203A7367616C460ALL;
  v95._object = 0xE800000000000000;
  String.append(_:)(v95);
  v96._countAndFlagsBits = sub_100030328(*(v1 + 592));
  String.append(_:)(v96);

  return 0;
}

uint64_t sub_1000A26D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v34 = a5;
  v35 = a1;
  v36 = a2;
  v32 = a7;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  (*(v11 + 16))(v14, a4, v10);
  v16 = a3[14];
  v33 = a3[13];
  sub_10000A990(a6, v40);
  v17 = sub_100003DA0(v40, v40[3]);
  __chkstk_darwin(v17, v17);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v38 = &type metadata for Data;
  v39 = &off_10012DA28;
  v37 = *v19;
  type metadata accessor for KernelCollection(0);
  v21 = swift_allocObject();
  v22 = sub_100003DA0(&v37, &type metadata for Data);
  __chkstk_darwin(v22, v22);
  v24 = (&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = v21 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data;
  *(v26 + 24) = &type metadata for Data;
  *(v26 + 32) = &off_10012DA28;
  *v26 = *v24;
  *(v21 + 16) = v15;
  (*(v11 + 32))(v21 + OBJC_IVAR____TtC10driverkitd16KernelCollection_path, v14, v10);
  v27 = (v21 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch);
  *v27 = v33;
  v27[1] = v16;
  *(v21 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) = v34;

  sub_100003C90(&v37);
  sub_100003C90(v40);
  v28 = v40[6];
  v29 = sub_10009AF80(v21, v35);

  if (!v28)
  {
    *v32 = v29;
  }

  return result;
}

void sub_1000A2A04()
{
  v2 = v1;
  v94 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v94 - 8);
  __chkstk_darwin(v94, v4);
  v93 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v6 - 8, v7);
  *&v92 = &v80 - v8;
  v82 = type metadata accessor for URL();
  v100 = *(v82 - 8);
  v10 = __chkstk_darwin(v82, v9);
  v81 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v80 - v14;
  __chkstk_darwin(v13, v16);
  v18 = *(v0 + 488);
  if (!v18)
  {
    v26 = static os_log_type_t.info.getter();
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v27 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "The codeless exceptions configuration is not provided, skip codeless forceloading", 81, 2, _swiftEmptyArrayStorage);

    return;
  }

  v84 = &v80 - v17;
  v19 = *(v0 + 496);
  v20 = *(v18 + 16);
  v86 = v0;
  v85 = v19;
  if (v20)
  {
    v83 = v1;
    *&v99 = _swiftEmptyArrayStorage;

    sub_1000635C4(0, v20, 0);
    v21 = v99;
    v90 = *(v100 + 56);
    v89 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v88 = (v3 + 104);
    v91 = v100 + 56;
    v87 = (v100 + 32);
    v80 = v18;
    v22 = v18 + 40;
    v23 = v82;
    do
    {
      v90(v92, 1, 1, v23);
      (*v88)(v93, v89, v94);

      URL.init(filePath:directoryHint:relativeTo:)();
      *&v99 = v21;
      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000635C4((v24 > 1), v25 + 1, 1);
        v21 = v99;
      }

      v21[2] = v25 + 1;
      (*(v100 + 32))(v21 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v25, v15, v23);
      v22 += 16;
      --v20;
    }

    while (v20);

    v2 = v83;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  *&v99 = &_swiftEmptyDictionarySingleton;
  v28 = v21[2];
  v29 = v82;
  if (v28)
  {
    v30 = 0;
    v31 = (v100 + 8);
    v32 = v84;
    while (v30 < v21[2])
    {
      (*(v100 + 16))(v32, v21 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v30, v29);
      sub_1000A69BC(&v99, v32, v86, v85);
      if (v2)
      {

        (*v31)(v32, v29);

        return;
      }

      ++v30;
      (*v31)(v32, v29);
      if (v28 == v30)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:

    v33 = v99;
    if (!*(v99 + 16))
    {
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      v79 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("No codeless bundle needs to be force loaded.", 44, 2, &_mh_execute_header, v78, v79, _swiftEmptyArrayStorage);

      return;
    }

    v93 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v34 = swift_allocObject();
    v92 = xmmword_1000F3160;
    *(v34 + 16) = xmmword_1000F3160;
    v35 = sub_10009F428(v33);
    v83 = v2;
    *&v99 = v35;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;

    *(v34 + 56) = &type metadata for String;
    v91 = sub_100003D24();
    *(v34 + 64) = v91;
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    v90 = sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v39 = static OS_os_log.default.getter();
    v40 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Found codeless bundles matching the ids listed in codeless exceptions: %{public}s", 81, 2, &_mh_execute_header, v39, v40, v34);

    v41 = v33 + 64;
    v42 = 1 << *(v33 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v33 + 64);
    v87 = (v86 + 672);
    v45 = (v42 + 63) >> 6;
    v100 += 8;

    v46 = 0;
    v88 = v45;
    v94 = v33;
    while (v44)
    {
LABEL_26:
      sub_10000A990(*(v33 + 56) + 40 * (__clz(__rbit64(v44)) | (v46 << 6)), &v99);
      v58 = sub_100009F34(&v99, v96);
      v59 = v86;
      v60 = *(v86 + 656);
      __chkstk_darwin(v58, v61);
      *(&v80 - 2) = v59;
      *(&v80 - 1) = v96;

      os_unfair_lock_lock(v60 + 18);
      v62 = v83;
      sub_1000A9700(&v60[4], v95);
      v83 = v62;
      v63 = v60 + 18;
      if (v62)
      {
        os_unfair_lock_unlock(v63);

        v89 = static os_log_type_t.error.getter();
        v64 = swift_allocObject();
        *(v64 + 16) = v92;
        v65 = v97;
        v66 = v98;
        sub_100003C4C(v96, v97);
        v67 = v81;
        (*(v66 + 64))(v65, v66);
        v68 = URL.absoluteString.getter();
        v70 = v69;
        (*v100)(v67, v82);
        v71 = v91;
        *(v64 + 56) = &type metadata for String;
        *(v64 + 64) = v71;
        *(v64 + 32) = v68;
        *(v64 + 40) = v70;
        v72 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v89, &_mh_execute_header, v72, "Unable to insert extension: %{public}s", 38, 2, v64);

        if ((*(v59 + 649) & 2) == 0)
        {
          swift_willThrow();

          sub_100003C90(v96);
          return;
        }

        v83 = 0;
      }

      else
      {
        os_unfair_lock_unlock(v63);

        sub_10000A990(v96, v95);
        v73 = v87;
        swift_beginAccess();
        v74 = *v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v73 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = sub_100031798(0, v74[2] + 1, 1, v74);
          *v73 = v74;
        }

        v77 = v74[2];
        v76 = v74[3];
        if (v77 >= v76 >> 1)
        {
          v74 = sub_100031798((v76 > 1), v77 + 1, 1, v74);
        }

        v74[2] = v77 + 1;
        sub_100009F34(v95, &v74[5 * v77 + 4]);
        *v73 = v74;
        swift_endAccess();
        v47 = static os_log_type_t.debug.getter();
        v48 = swift_allocObject();
        *(v48 + 16) = v92;
        v49 = v97;
        v50 = v98;
        sub_100003C4C(v96, v97);
        v51 = v81;
        (*(v50 + 64))(v49, v50);
        v52 = URL.absoluteString.getter();
        v54 = v53;
        (*v100)(v51, v82);
        v55 = v91;
        *(v48 + 56) = &type metadata for String;
        *(v48 + 64) = v55;
        *(v48 + 32) = v52;
        *(v48 + 40) = v54;
        v56 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v56, "Successfully inserted extension: %{public}s", 43, 2, v48);
      }

      v33 = v94;
      v44 &= v44 - 1;
      sub_100003C90(v96);
      v45 = v88;
    }

    while (1)
    {
      v57 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v57 >= v45)
      {

        return;
      }

      v44 = *(v41 + 8 * v57);
      ++v46;
      if (v44)
      {
        v46 = v57;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000A3568(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v28 - v12;
  v14 = sub_100003CDC(&qword_100135188, &qword_1000F5070);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v28 - v17;
  v19 = v42;
  result = sub_1000A4A20(a1, a2);
  if (!v19)
  {
    v32 = v18;
    v41 = *(result + 16);
    v42 = v15;
    if (v41)
    {
      v35 = v9;
      v36 = v6;
      v21 = 0;
      v22 = v42;
      v39 = result + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v38 = *(v14 + 48);
      v34 = v33 + 8;
      v29 = v33 + 48;
      v31 = xmmword_1000F3C80;
      v28 = xmmword_1000F3160;
      v23 = v32;
      v37 = v13;
      v30 = v3;
      v40 = result;
      while (v21 < *(result + 16))
      {
        sub_100014894(v39 + *(v22 + 72) * v21, v23, &qword_100135188, &qword_1000F5070);
        sub_100020D24(v23, v13, &unk_1001389D0, &qword_1000F4F60);
        v24 = sub_100009F34((v23 + v38), &v44);
        v25 = *(v3 + 656);
        __chkstk_darwin(v24, v26);
        *(&v28 - 4) = v3;
        *(&v28 - 3) = &v44;
        v27 = v13;

        os_unfair_lock_lock(v25 + 18);
        sub_1000A96A4(&v25[4], &v43);
        os_unfair_lock_unlock(v25 + 18);

        ++v21;
        sub_100003C90(&v44);
        sub_10000A184(v13, &unk_1001389D0, &qword_1000F4F60);
        v22 = v42;
        result = v40;
        if (v41 == v21)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000A3D84()
{
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = __chkstk_darwin(v10, v11);
  v14 = &v40 - v13;
  __chkstk_darwin(v12, v15);
  v18 = &v40 - v17;
  if ((*(v0 + 650) & 0x10) != 0)
  {
    sub_10001449C();
    swift_allocError();
    *v29 = 0xD000000000000096;
    *(v29 + 8) = 0x8000000100109B60;
    v30 = v48;
    v31 = v47;
    v32 = v46;
    *(v29 + 16) = v45;
    *(v29 + 32) = v32;
    *(v29 + 48) = v31;
    *(v29 + 64) = v30;
    *(v29 + 72) = 50;
    return swift_willThrow();
  }

  else
  {
    v43 = v16;
    v44 = v1;
    v40 = v3;
    v41 = v2;
    v49 = v0;
    if (qword_100133B10 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSSignposter();
    v20 = sub_1000144F0(v19, qword_10014EA70);
    static OSSignpostID.exclusive.getter();
    v42 = v20;
    v21 = OSSignposter.logHandle.getter();
    v22 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v24, "ForcedFullBundleLoad", "", v23, 2u);
    }

    (*(v8 + 16))(v14, v18, v7);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v25 = *(v8 + 8);
    v25(v18, v7);
    v26 = v49;
    v27 = v44;
    sub_1000A3568(0, 3uLL);
    if (v27)
    {
    }

    else
    {
      v44 = v25;
      v33 = OSSignposter.logHandle.getter();
      v34 = v43;
      OSSignpostIntervalState.signpostID.getter();
      LODWORD(v42) = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        checkForErrorAndConsumeState(state:)();

        v36 = v40;
        v35 = v41;
        if ((*(v40 + 88))(v6, v41) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v37 = "[Error] Interval already ended";
        }

        else
        {
          (*(v36 + 8))(v6, v35);
          v37 = "";
        }

        v38 = swift_slowAlloc();
        *v38 = 0;
        v34 = v43;
        v39 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v42, v39, "ForcedFullBundleLoad", v37, v38, 2u);

        v26 = v49;
      }

      result = (v44)(v34, v7);
      *(v26 + 752) = 1;
    }
  }

  return result;
}

uint64_t sub_1000A4218(void *a1, void *a2)
{
  v52 = a1;

  sub_100003C4C(a2, a2[3]);
  sub_1000E0B2C(v60);
  v3 = v61;
  v4 = v62;
  sub_100003C4C(v60, v61);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = v5;
  v63 = &_swiftEmptyDictionarySingleton;
  v53 = *(v5 + 16);
  if (!v53)
  {

    v49 = &_swiftEmptyDictionarySingleton;
LABEL_32:
    result = sub_100003C90(v60);
    *v52 = v49;
    return result;
  }

  v7 = 0;
  v8 = v5 + 32;
  while (v7 < *(v6 + 16))
  {
    sub_10000A990(v8, v57);
    v9 = v58;
    v10 = v59;
    sub_100003C4C(v57, v58);
    v11 = (*(v10 + 24))(v9, v10);
    v13 = v11;
    v14 = v12;
    v15 = v63;
    if (v63[2])
    {
      sub_100061588(v11, v12);
      if (v16)
      {

        goto LABEL_21;
      }

      v15 = v63;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55[0] = v15;
    v18 = sub_100061588(v13, v14);
    v20 = v15[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_34;
    }

    v24 = v19;
    if (v15[3] < v23)
    {
      sub_100035E34(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100061588(v13, v14);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_38;
      }

LABEL_15:
      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v28 = v18;
    sub_10003B848();
    v18 = v28;
    if ((v24 & 1) == 0)
    {
LABEL_18:
      v27 = *&v55[0];
      *(*&v55[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
      v29 = (v27[6] + 16 * v18);
      *v29 = v13;
      v29[1] = v14;
      *(v27[7] + 8 * v18) = _swiftEmptyArrayStorage;
      v30 = v27[2];
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v22)
      {
        goto LABEL_35;
      }

      v27[2] = v31;
      goto LABEL_20;
    }

LABEL_16:
    v26 = v18;

    v27 = *&v55[0];
    *(*(*&v55[0] + 56) + 8 * v26) = _swiftEmptyArrayStorage;

LABEL_20:
    v63 = v27;
LABEL_21:
    v32 = v58;
    v33 = v59;
    sub_100003C4C(v57, v58);
    v34 = (*(v33 + 24))(v32, v33);
    v36 = sub_1000254EC(v56, v34, v35);
    v38 = v36;
    if (*v37)
    {
      v39 = v37;
      __chkstk_darwin(v36, v37);
      v51[2] = sub_1000C80E0;
      v51[3] = 0;
      v51[4] = v57;
      v40 = v54;
      v42 = sub_1000574BC(sub_1000A9664, v51, v41);
      v54 = v40;
      if (v43)
      {
        sub_10000A990(v57, v55);
        v44 = *v39;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *v39 = v44;
        if ((v45 & 1) == 0)
        {
          v44 = sub_100031E70(0, v44[2] + 1, 1, v44);
          *v39 = v44;
        }

        v47 = v44[2];
        v46 = v44[3];
        if (v47 >= v46 >> 1)
        {
          v44 = sub_100031E70((v46 > 1), v47 + 1, 1, v44);
          *v39 = v44;
        }

        v44[2] = v47 + 1;
        sub_100009F34(v55, &v44[5 * v47 + 4]);
      }

      else
      {
        v48 = v42;
        if (*(*v39 + 16) < v42)
        {
          goto LABEL_36;
        }

        if (v42 < 0)
        {
          goto LABEL_37;
        }

        sub_10000A990(v57, v55);
        sub_100058D6C(v48, v48, v55);
      }
    }

    (v38)(v56, 0);
    ++v7;

    sub_100003C90(v57);
    v8 += 40;
    if (v53 == v7)
    {

      v49 = v63;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000A4690(uint64_t *a1, uint64_t a2, void *a3)
{
  if (qword_100133A40 != -1)
  {
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  v6 = qword_10014E898;
  if ((*(a2 + 592) & 0x80) != 0)
  {
    v22[0] = qword_10014E898;

    sub_100030728(&off_1001268D8);
    v6 = v22[0];
  }

  else
  {
  }

  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7EC0;
  *(inited + 32) = 0x697463656C6C6F43;
  *(inited + 40) = 0xEF65707954206E6FLL;
  *(inited + 48) = 7958081;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "Loaded State");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 0x646564616F4CLL;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000100104B00;
  *(inited + 168) = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  *(inited + 144) = v6;
  v8 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  swift_arrayDestroy();
  sub_100003C4C(a3, a3[3]);
  sub_1000DF65C(v22);
  sub_100003C4C(v22, v22[3]);
  v9 = sub_1000206CC(v8);

  v21[3] = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  v21[0] = v9;
  v10 = sub_10009C698(v21);
  v12 = v11;
  sub_100003C90(v21);
  if (v12 >> 60 == 15)
  {
    sub_10001449C();
    swift_allocError();
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0;
    *(v13 + 72) = 75;
    swift_willThrow();
LABEL_9:
    sub_100003C90(v22);
    return;
  }

  v14 = sub_10009CBD4(v10, v12);
  sub_100014988(v10, v12);
  if (v3)
  {
    goto LABEL_9;
  }

  sub_100003C90(v22);

  *a1 = v14;
  v15 = static os_log_type_t.debug.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000F3160;
  v17 = v14[2];
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  *(v16 + 32) = v17;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v18, "Updated loaded info for %d extensions.", v20);
}

uint64_t sub_1000A4A20(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v193 = a2;
  v192 = a1;
  v191 = sub_100003CDC(&qword_100137860, &unk_1000F9BB0);
  __chkstk_darwin(v191, v6);
  v190 = &v186 - v7;
  v202 = sub_100003CDC(&qword_100135198, &unk_1000F5080);
  v203 = *(v202 - 8);
  v9 = __chkstk_darwin(v202, v8);
  v187 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v212 = &v186 - v12;
  v13 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v189 = *(v13 - 8);
  v15 = __chkstk_darwin(v13 - 8, v14);
  v195 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v208 = (&v186 - v18);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v22 = __chkstk_darwin(v19, v21);
  v210 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v199 = &v186 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v211 = &v186 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v209 = &v186 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v207 = &v186 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v204 = &v186 - v38;
  __chkstk_darwin(v37, v39);
  v41 = &v186 - v40;
  v42 = *(v2 + 128);
  v43 = *(v42 + 16);
  v214 = v20;
  if (v43)
  {
    v213 = v3;
    v217 = _swiftEmptyArrayStorage;
    sub_1000635C4(0, v43, 0);
    v44 = v217;
    v45 = v42 + 40;
    do
    {

      URL.init(fileURLWithPath:)();

      v217 = v44;
      v46 = *(v44 + 16);
      v47 = *(v44 + 24);
      if (v46 >= v47 >> 1)
      {
        sub_1000635C4((v47 > 1), v46 + 1, 1);
        v44 = v217;
      }

      *(v44 + 16) = v46 + 1;
      (*(v214 + 32))(v44 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v46, v41, v19);
      v45 += 16;
      --v43;
    }

    while (v43);
    v206 = v44;
    v4 = v213;
  }

  else
  {
    v206 = _swiftEmptyArrayStorage;
  }

  v48 = sub_10009F77C(*(v5 + 136));
  v49 = sub_1000EB530(v48);

  v220 = v49;
  v50 = *(v5 + 650);
  k = "ch_source";
  v205 = v5;
  v213 = v19;
  if (v50)
  {
    goto LABEL_15;
  }

  sub_100003C4C((v5 + 16), *(v5 + 40));
  sub_1000DF65C(&v217);
  sub_100003C4C(&v217, v219);
  if (qword_100133A40 != -1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v52 = qword_10014E898;

    v53 = sub_10006C3A0(2u, 2, v52);
    v54 = sub_1000206CC(v53);
    v216[3] = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
    v216[0] = v54;
    v55 = sub_10009C698(v216);
    v57 = v56;
    sub_100003C90(v216);
    if (v57 >> 60 == 15)
    {
      sub_10001449C();
      v58 = swift_allocError();
      *v59 = 0u;
      *(v59 + 16) = 0u;
      *(v59 + 32) = 0u;
      *(v59 + 48) = 0u;
      *(v59 + 64) = 0;
      *(v59 + 72) = 75;
      swift_willThrow();
    }

    else
    {
      v60 = sub_10009CBD4(v55, v57);
      if (!v4)
      {
        v201 = 0;
        v151 = v60;
        sub_100014988(v55, v57);

        sub_100003C90(&v217);
        v152 = v151 + 8;
        v153 = 1 << *(v151 + 32);
        v154 = -1;
        if (v153 < 64)
        {
          v154 = ~(-1 << v153);
        }

        v19 = v154 & v151[8];
        v4 = (v153 + 63) >> 6;
        v197 = (v214 + 56);
        *&v196 = v214 + 48;
        v186 = (v214 + 32);
        v200 = v151;

        v155 = 0;
        v188 = _swiftEmptyArrayStorage;
        v68 = v206;
        k = v208;
        v156 = v209;
        for (i = (v151 + 8); v19; v152 = i)
        {
          v157 = v155;
LABEL_65:

          v159 = sub_1000DD70C(v158);
          if (v159)
          {
            v160 = *(v159 + 16);
            if (*(v160 + 16) && (*&v194 = v159, v161 = sub_100061588(0x656C646E7542534FLL, 0xEC00000068746150), (v162 & 1) != 0) && (sub_10000B430(*(v160 + 56) + 32 * v161, &v217), (swift_dynamicCast() & 1) != 0))
            {
              URL.init(fileURLWithPath:)();

              v163 = 0;
            }

            else
            {

              v163 = 1;
            }

            v68 = v206;
          }

          else
          {
            v163 = 1;
          }

          v19 &= v19 - 1;
          v164 = v213;
          (*v197)(k, v163, 1, v213);

          if ((*v196)(k, 1, v164) == 1)
          {
            sub_10000A184(k, &unk_1001389D0, &qword_1000F4F60);
            v155 = v157;
            v156 = v209;
          }

          else
          {
            v165 = *v186;
            v166 = v204;
            v167 = v213;
            (*v186)(v204, k, v213);
            v165(v207, v166, v167);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v156 = v209;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v188 = sub_100031468(0, v188[2] + 1, 1, v188);
            }

            v169 = v214;
            v171 = v188[2];
            v170 = v188[3];
            if (v171 >= v170 >> 1)
            {
              v173 = sub_100031468((v170 > 1), v171 + 1, 1, v188);
              v169 = v214;
              v188 = v173;
            }

            v172 = v188;
            v188[2] = v171 + 1;
            v165(v172 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v171, v207, v213);
            v155 = v157;
            v5 = v205;
            v68 = v206;
            k = v208;
          }
        }

        while (1)
        {
          v157 = v155 + 1;
          if (__OFADD__(v155, 1))
          {
            goto LABEL_94;
          }

          if (v157 >= v4)
          {

            v174 = v188[2];
            if (v174)
            {
              v175 = *(v214 + 16);
              v176 = v188 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
              v204 = *(v214 + 72);
              v208 = (v214 + 8);
              v200 = (v214 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v19 = v213;
              v207 = v175;
              for (j = v175(v156, v176, v213); ; j = (v207)(v156, v176, v19))
              {
                __chkstk_darwin(j, v178);
                *(&v186 - 2) = v156;

                v183 = v201;
                v184 = sub_10007B1E4(sub_1000A96E0, (&v186 - 4), v68);
                v201 = v183;
                v185 = v184[2];

                if (v185)
                {
                  (*v208)(v156, v19);
                }

                else
                {
                  v179 = v199;
                  v175(v199, v156, v19);
                  v180 = v211;
                  sub_1000E4238(v211, v179);
                  v68 = v206;
                  v181 = *v208;
                  v182 = v180;
                  v156 = v209;
                  (*v208)(v182, v19);
                  v181(v156, v19);
                }

                v176 += v204;
                --v174;
                v175 = v207;
                if (!v174)
                {
                  break;
                }
              }
            }

            else
            {

              v19 = v213;
            }

            v4 = v201;
            k = ("OS_dispatch_source" + 9);
            goto LABEL_16;
          }

          v19 = v152[v157];
          ++v155;
          if (v19)
          {
            goto LABEL_65;
          }
        }
      }

      sub_100014988(v55, v57);
      v58 = v4;
    }

    v4 = 0;
    sub_100003C90(&v217);
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v61 = swift_allocObject();
    *(v61 + 16) = *(k + 22);
    v217 = v58;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v62 = String.init<A>(describing:)();
    v63 = k;
    v65 = v64;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_100003D24();
    *(v61 + 32) = v62;
    *(v61 + 40) = v65;
    k = v63;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v66 = static OS_os_log.default.getter();
    v67 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Could not search for bundles in auxKC: %{public}s", 49, 2, &_mh_execute_header, v66, v67, v61);

LABEL_15:
    v68 = v206;
LABEL_16:
    v199 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v69 = swift_allocObject();
    v194 = *(k + 22);
    v200 = v69;
    *(v69 + 16) = v194;
    v70 = *(v68 + 16);
    v71 = _swiftEmptyArrayStorage;
    v204 = v70;
    v201 = v4;
    if (v70)
    {
      v216[0] = _swiftEmptyArrayStorage;
      sub_1000635A4(0, v70, 0);
      v71 = v216[0];
      v72 = *(v214 + 16);
      v73 = v68 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
      v207 = *(v214 + 72);
      v208 = v72;
      v209 = (v214 + 16);
      v74 = (v214 + 8);
      v75 = v70;
      do
      {
        v76 = v211;
        (v208)(v211, v73, v19);
        v217 = 2314;
        v218 = 0xE200000000000000;
        v77._countAndFlagsBits = URL.path.getter();
        String.append(_:)(v77);

        v78 = v19;
        v79 = v217;
        v80 = v218;
        (*v74)(v76, v78);
        v216[0] = v71;
        v82 = v71[2];
        v81 = v71[3];
        if (v82 >= v81 >> 1)
        {
          sub_1000635A4((v81 > 1), v82 + 1, 1);
          v71 = v216[0];
        }

        v71[2] = v82 + 1;
        v83 = &v71[2 * v82];
        v83[4] = v79;
        v83[5] = v80;
        v73 += v207;
        --v75;
        v19 = v213;
      }

      while (v75);
      v5 = v205;
    }

    v217 = v71;
    v211 = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
    v84 = BidirectionalCollection<>.joined(separator:)();
    v86 = v85;

    v87 = v200;
    *(v200 + 56) = &type metadata for String;
    v4 = sub_100003D24();
    v87[8] = v4;
    v87[4] = v84;
    v87[5] = v86;
    k = sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v88 = static OS_os_log.default.getter();
    v89 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("finding bundles in repositories: %{public}s", 43, 2, &_mh_execute_header, v88, v89, v87);

    v90 = swift_allocObject();
    *(v90 + 16) = v194;
    v188 = v220;
    v91 = v201;
    v217 = sub_10009F0FC(v220);
    v92 = BidirectionalCollection<>.joined(separator:)();
    v94 = v93;

    *(v90 + 56) = &type metadata for String;
    *(v90 + 64) = v4;
    i = v4;
    *(v90 + 32) = v92;
    *(v90 + 40) = v94;
    v197 = k;
    v95 = static OS_os_log.default.getter();
    v96 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("finding bundles at additional paths: %{public}s", 47, 2, &_mh_execute_header, v95, v96, v90);

    if (v204)
    {
      v215 = _swiftEmptyArrayStorage;
      sub_1000636CC(0, v204, 0);
      v97 = 0;
      v98 = v214;
      v99 = v215;
      v100 = v206;
      v200 = v206 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v101 = *(v5 + 416);
      v208 = *(v5 + 424);
      v209 = v101;
      v211 = v214 + 16;
      v207 = v214 + 56;
      v201 = (v214 + 8);
      v196 = xmmword_1000F3C80;
      while (v97 < v100[2])
      {
        v102 = v19;
        v103 = *(v98 + 16);
        v4 = v210;
        v103(v210, v200 + *(v98 + 72) * v97, v102);
        if (URL.path.getter() == v209 && v104 == v208)
        {

          v105 = 0;
        }

        else
        {
          v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v105 = v106 ^ 1;
        }

        v107 = sub_1000C78E4((v5 + 16), v4, 1, v105 & 1);
        if (v91)
        {
          v217 = URL.path.getter();
          v218 = v108;
          v216[0] = 0x6E49656C7070412FLL;
          v216[1] = 0xEF2F6C616E726574;
          sub_100012814();
          v109 = StringProtocol.contains<A>(_:)();

          if ((v109 & 1) == 0)
          {
            swift_willThrow();
            (*v201)(v4, v213);
          }

          v110 = static os_log_type_t.error.getter();
          v111 = swift_allocObject();
          *(v111 + 16) = v196;
          v112 = URL.path.getter();
          v113 = i;
          *(v111 + 56) = &type metadata for String;
          *(v111 + 64) = v113;
          *(v111 + 32) = v112;
          *(v111 + 40) = v114;
          v217 = v91;
          swift_errorRetain();
          sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
          v115 = String.init<A>(describing:)();
          *(v111 + 96) = &type metadata for String;
          *(v111 + 104) = v113;
          *(v111 + 72) = v115;
          *(v111 + 80) = v116;
          v117 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v110, &_mh_execute_header, v117, "Could not look for bundles in %{public}s", 40, 2, v111);

          v118 = *(v202 + 48);
          v120 = v212;
          v119 = v213;
          v103(v212, v4, v213);
          v19 = v119;
          k = *v207;
          (*v207)(v120, 0, 1, v19);

          v91 = 0;
          *(v120 + v118) = _swiftEmptyArrayStorage;
          v121 = v4;
        }

        else
        {
          v122 = v107;
          v123 = *(v202 + 48);
          v125 = v212;
          v124 = v213;
          v103(v212, v210, v213);
          v19 = v124;
          k = *v207;
          (*v207)(v125, 0, 1, v19);
          *(v125 + v123) = v122;
          v121 = v210;
        }

        (*v201)(v121, v19);
        v215 = v99;
        v127 = v99[2];
        v126 = v99[3];
        v100 = v206;
        if (v127 >= v126 >> 1)
        {
          sub_1000636CC((v126 > 1), v127 + 1, 1);
          v100 = v206;
          v99 = v215;
        }

        ++v97;
        v99[2] = v127 + 1;
        sub_100020D24(v212, v99 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v127, &qword_100135198, &unk_1000F5080);
        v5 = v205;
        v98 = v214;
        if (v204 == v97)
        {

          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_93;
    }

    k = *(v214 + 56);
    v99 = _swiftEmptyArrayStorage;
LABEL_38:
    (k)(v195, 1, 1, v19);
    v128 = v188;
    v129 = v188[2];
    if (v129)
    {
      v130 = sub_10003256C(v188[2], 0);
      v131 = sub_100059410(&v217, &v130[(*(v214 + 80) + 32) & ~*(v214 + 80)], v129, v128);
      v132 = sub_1000145A4(v217);
      if (v131 == v129)
      {
        goto LABEL_42;
      }

      __break(1u);
    }

    v130 = _swiftEmptyArrayStorage;
LABEL_42:
    __chkstk_darwin(v132, v133);
    *(&v186 - 2) = v134;
    *(&v186 - 1) = 1;
    v135 = sub_1000A7E98(sub_1000A96C4, (&v186 - 4), v130);
    if (v91)
    {
      break;
    }

    v137 = v135;

    v138 = *(v202 + 48);
    v139 = v187;
    sub_100020D24(v195, v187, &unk_1001389D0, &qword_1000F4F60);
    *(v139 + v138) = v137;
    sub_100003CDC(&qword_1001351A0, &unk_1000F7C20);
    v140 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v141 = swift_allocObject();
    *(v141 + 16) = v194;
    v5 = &unk_1000F5080;
    sub_100014894(v139, v141 + v140, &qword_100135198, &unk_1000F5080);
    v217 = v99;
    sub_100030944(v141);
    sub_10000A184(v139, &qword_100135198, &unk_1000F5080);
    v142 = v217;
    if (*(v217 + 16))
    {
      sub_100003CDC(&qword_100135190, &qword_1000F5078);
      v143 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v143 = &_swiftEmptyDictionarySingleton;
    }

    v217 = v143;
    sub_1000A8078(v142, 1, &v217);
    v144 = v217;
    v217 = _swiftEmptyArrayStorage;
    v19 = v144 + 64;
    v145 = 1 << *(v144 + 32);
    v146 = -1;
    if (v145 < 64)
    {
      v146 = ~(-1 << v145);
    }

    v147 = v146 & *(v144 + 64);
    v148 = (v145 + 63) >> 6;

    v149 = 0;
    for (k = &qword_1000F4F60; v147; v149 = v4)
    {
      v4 = v149;
LABEL_55:
      v5 = __clz(__rbit64(v147)) | (v4 << 6);
      v150 = v190;
      sub_100014894(*(v144 + 48) + *(v189 + 72) * v5, v190, &unk_1001389D0, &qword_1000F4F60);
      *(v150 + *(v191 + 48)) = *(*(v144 + 56) + 8 * v5);

      sub_1000A6210(&v217, v150, v192, v193, v205);
      v147 &= v147 - 1;
      sub_10000A184(v150, &qword_100137860, &unk_1000F9BB0);
    }

    while (1)
    {
      v4 = v149 + 1;
      if (__OFADD__(v149, 1))
      {
        break;
      }

      if (v4 >= v148)
      {

        return v217;
      }

      v147 = *(v19 + 8 * v4);
      ++v149;
      if (v147)
      {
        goto LABEL_55;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
  }

  sub_10000A184(v195, &unk_1001389D0, &qword_1000F4F60);
}

uint64_t sub_1000A6198(uint64_t a1)
{
  v1 = URL.path.getter();
  v3 = v2;
  v4 = URL.path.getter();
  v6 = sub_100069024(v4, v5, v1, v3);

  return v6 & 1;
}

uint64_t sub_1000A6210(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v76 = a5;
  v95 = a1;
  v81 = sub_100003CDC(&qword_100135188, &qword_1000F5070);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81, v8);
  v84 = &v68 - v9;
  v75 = type metadata accessor for URL();
  v10 = *(v75 - 8);
  v12 = __chkstk_darwin(v75, v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v73 = &v68 - v16;
  v17 = sub_100003CDC(&qword_100137860, &unk_1000F9BB0);
  v19 = __chkstk_darwin(v17, v18);
  v78 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v23 = &v68 - v22;
  sub_100014894(a2, &v68 - v22, &qword_100137860, &unk_1000F9BB0);
  v79 = v17;
  v24 = *&v23[*(v17 + 48)];
  result = sub_10000A184(v23, &unk_1001389D0, &qword_1000F4F60);
  v83 = *(v24 + 16);
  if (!v83)
  {
  }

  v69 = v14;
  v68 = a3;
  v26 = 0;
  v27 = v24 + 32;
  v74 = (v10 + 8);
  v28 = v24;
  v71 = a4;
  v70 = a2;
  v72 = v24;
  while (v26 < *(v28 + 16))
  {
    sub_10000A990(v27, &v92);
    if (a4 != 3)
    {
      v53 = v93;
      v54 = v94;
      sub_100003C4C(&v92, v93);
      v55 = (*(v54 + 16))(v53, v54);
      if (v56)
      {
        if (v56 == 1)
        {
          if (a4 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (v56 == 2)
        {
          if (a4 != 2)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (a4 < 3)
          {
            sub_100041A00(v55, v56);
            goto LABEL_4;
          }

          if (v55 == v68 && v56 == a4)
          {
            sub_100041A00(v68, a4);
          }

          else
          {
            v58 = v55;
            v59 = v56;
            v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100041A00(v58, v59);
            if ((v60 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }
      }

      else if (a4)
      {
        goto LABEL_4;
      }
    }

    v29 = v93;
    v30 = v94;
    sub_100003C4C(&v92, v93);
    v31 = (*(v30 + 16))(v29, v30);
    if (v32 == 1)
    {
      sub_100003C4C((v76 + 16), *(v76 + 40));
      sub_1000DF9D4(&v89);
      v33 = v90;
      v34 = v91;
      v77 = sub_100003C4C(&v89, v90);
      v36 = v93;
      v35 = v94;
      sub_100003C4C(&v92, v93);
      v37 = v73;
      (*(v35 + 64))(v36, v35);
      v38 = URL.path.getter();
      v40 = v39;
      v41 = *v74;
      (*v74)(v37, v75);
      v42 = v82;
      (*(v34 + 152))(v38, v40, v33, v34);
      v82 = v42;
      if (v42)
      {

        sub_100003C90(&v89);
        return sub_100003C90(&v92);
      }

      v44 = v43;

      if (v44)
      {
        sub_100003C90(&v89);
        sub_100003C4C((v76 + 16), *(v76 + 40));
        sub_1000DFF08(v88);
        v45 = v69;
        URL.init(fileURLWithPath:)();

        v46 = type metadata accessor for UncachedBundle();
        v47 = swift_allocObject();
        URL._bridgeToObjectiveC()(v48);
        v50 = v49;
        Unique = _CFBundleCreateUnique();

        a2 = v70;
        if (Unique)
        {
          v52 = Unique;
          v41(v45, v75);

          *(v47 + 16) = v52;
          v86 = v46;
          v87 = sub_1000A958C();
          *&v85 = v47;
          sub_100003C90(v88);
          sub_100009F34(&v85, &v89);
          sub_100003C90(&v92);
          sub_100009F34(&v89, &v92);
        }

        else
        {
          v41(v45, v75);
          swift_deallocPartialClassInstance();
          sub_100003C90(v88);
        }

        a4 = v71;
      }

      else
      {
        sub_100003C90(&v89);
        a4 = v71;
        a2 = v70;
      }

      v28 = v72;
    }

    else
    {
      sub_100041A00(v31, v32);
    }

    v61 = v78;
    sub_100014894(a2, v78, &qword_100137860, &unk_1000F9BB0);

    v62 = *(v81 + 48);
    v63 = v61;
    v64 = v84;
    sub_100020D24(v63, v84, &unk_1001389D0, &qword_1000F4F60);
    sub_10000A990(&v92, v64 + v62);
    v65 = *v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_100031FDC(0, v65[2] + 1, 1, v65);
    }

    v67 = v65[2];
    v66 = v65[3];
    if (v67 >= v66 >> 1)
    {
      v65 = sub_100031FDC((v66 > 1), v67 + 1, 1, v65);
    }

    v65[2] = v67 + 1;
    sub_100020D24(v84, v65 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v67, &qword_100135188, &qword_1000F5070);
    *v95 = v65;
LABEL_4:
    ++v26;
    result = sub_100003C90(&v92);
    v27 += 40;
    if (v83 == v26)
    {
    }
  }

  __break(1u);
  return result;
}