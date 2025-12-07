void sub_100E5A7FC(void *a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v75 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v13 = v7 + 104;
  v12 = *(v7 + 104);
  v76 = enum case for DispatchPredicate.onQueue(_:);
  v77 = v12;
  v12(v10, v8);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v17 = *(v7 + 8);
  v15 = v7 + 8;
  v16 = v17;
  v17(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v72 = a3;
  v74 = v13;
  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v18._countAndFlagsBits = 0xD000000000000017;
  v18._object = 0x80000001015A40C0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000015;
  v19._object = 0x80000001015A3110;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x695F64726F636572;
  v21._object = 0xE900000000000064;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x64695F656E6F7ALL;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x745F64726F636572;
  v25._object = 0xEB00000000657079;
  String.append(_:)(v25);
  v26._object = 0x80000001015A40E0;
  v26._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v26);
  v27 = v78;
  v28 = v79;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v30 = sub_10001CC04(v29, v27, v28);

  if (v4)
  {
    return;
  }

  v31 = v75;
  v32 = sub_100E5B438();
  sub_1000285F8(v32, v33, 1);

  v34 = [v31 zoneID];
  v35 = [v34 zoneName];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v15;
  v71 = v16;
  v38 = v37;

  v78 = v36;
  v79 = v38;

  v39._countAndFlagsBits = 58;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);

  v40 = v78;
  v41 = v79;
  v42 = [v34 ownerName];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v6;
  v45 = v44;

  v78 = v40;
  v79 = v41;

  v46._countAndFlagsBits = v43;
  v46._object = v45;
  String.append(_:)(v46);

  sub_1000285F8(v78, v79, 2);
  v47 = v69;

  sub_1000285F8(v73, v72, 3);
  v48 = *(*(v30 + 16) + 32);
  *v10 = v48;
  v77(v10, v76, v47);
  v49 = v48;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v71(v10, v47);
  if ((v42 & 1) == 0)
  {
    goto LABEL_13;
  }

  v50 = *(v30 + 16);

  v51 = sub_10001CEC4(v50, v30);

  if (v51 != 101)
  {
    goto LABEL_7;
  }

  v52 = *(*(v30 + 16) + 32);
  *v10 = v52;
  v77(v10, v76, v47);
  v53 = v52;
  v54 = _dispatchPreconditionTest(_:)();
  v71(v10, v47);
  if ((v54 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v55._countAndFlagsBits = 0xD000000000000039;
    v55._object = 0x80000001015AB280;
    String.append(_:)(v55);
    v56 = [v75 description];
    v57 = v47;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61._countAndFlagsBits = v58;
    v61._object = v60;
    String.append(_:)(v61);

    v62 = v78;
    v63 = v79;
    sub_10089C7D0();
    swift_allocError();
    *v64 = v51;
    *(v64 + 8) = v62;
    *(v64 + 16) = v63;
    swift_willThrow();
    v65 = *(*(v30 + 16) + 32);
    *v10 = v65;
    v77(v10, v76, v57);
    v66 = v65;
    LOBYTE(v63) = _dispatchPreconditionTest(_:)();
    v71(v10, v57);
    if (v63)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v67 = *(v30 + 24);
  if (v67)
  {
    sqlite3_finalize(v67);
    *(v30 + 24) = 0;
  }
}

void sub_100E5AE00(int a1, void *a2)
{
  v74 = a2;
  LODWORD(v76) = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v75 = enum case for DispatchPredicate.onQueue(_:);
  v73 = v5 + 104;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v12 = v5 + 8;
  v13 = v14;
  v14(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v71 = v4;
  v72 = v10;
  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = 0x80000001015A40C0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x635F656E6F7A6B63;
  v16._object = 0xEC00000065686361;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x64695F656E6F7ALL;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x646574656C6564;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x646567727570;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000028;
  v24._object = 0x80000001015A87B0;
  String.append(_:)(v24);
  v25._object = 0x80000001015AB210;
  v25._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v25);
  v26 = v77;
  v27 = v78;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v29 = sub_10001CC04(v28, v26, v27);

  if (v3)
  {
    return;
  }

  v67[1] = 0;
  v68 = (v76 >> 8) & 1;
  v69 = (v76 >> 16) & 1;
  v30 = v74;
  v31 = [v74 zoneName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v77 = v32;
  v78 = v34;

  v35._countAndFlagsBits = 58;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);

  v36 = v13;
  v38 = v77;
  v37 = v78;
  v39 = [v30 ownerName];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v12;
  v42 = v41;

  v77 = v38;
  v78 = v37;

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  sub_1000285F8(v77, v78, 1);
  v44 = v71;

  sub_10089B9A4(v76 & 1, 2);
  sub_10089B9A4(v68, 3);
  sub_10089B9A4(v69, 4);
  v45 = *(*(v29 + 16) + 32);
  *v8 = v45;
  v46 = v72;
  v72(v8, v75, v44);
  v47 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v36(v8, v44);
  if ((v45 & 1) == 0)
  {
    goto LABEL_15;
  }

  v48 = *(v29 + 16);

  v49 = sub_10001CEC4(v48, v29);

  if (v49 == 101)
  {
    v50 = *(*(v29 + 16) + 32);
    *v8 = v50;
    v46(v8, v75, v44);
    v51 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v36(v8, v44);
    if (v50)
    {
      swift_beginAccess();
      v52 = *(v29 + 24);
      if (v52)
      {
        sqlite3_finalize(v52);
        *(v29 + 24) = 0;
      }

      return;
    }

    goto LABEL_16;
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v53._countAndFlagsBits = 0xD000000000000040;
  v53._object = 0x80000001015AB230;
  String.append(_:)(v53);
  v54 = [v74 description];
  v55 = v46;
  v56 = v44;
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v36;
  v59 = v58;

  v60._countAndFlagsBits = v57;
  v60._object = v59;
  String.append(_:)(v60);

  v61 = v77;
  v62 = v78;
  sub_10089C7D0();
  swift_allocError();
  *v63 = v49;
  *(v63 + 8) = v61;
  *(v63 + 16) = v62;
  swift_willThrow();
  v64 = *(*(v29 + 16) + 32);
  *v8 = v64;
  v55(v8, v75, v56);
  v65 = v64;
  LOBYTE(v64) = _dispatchPreconditionTest(_:)();
  v76(v8, v56);
  if ((v64 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v66 = *(v29 + 24);
  if (v66)
  {
    sqlite3_finalize(v66);
    *(v29 + 24) = 0;
  }
}

uint64_t sub_100E5B438()
{
  v1 = v0;
  v2 = [v0 recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5 = v3;
  v6 = [v1 zoneID];
  v7 = [v6 zoneName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = 58;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  v13 = v8;
  v12 = v10;
  v14 = [v6 ownerName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = v13;
  v19._object = v12;
  String.append(_:)(v19);

  return v5;
}

uint64_t sub_100E5B5C8(uint64_t a1, uint64_t a2, int a3)
{
  sub_100DCC2C8(a2);
  sub_100E5B65C(v5, a3);

  v6 = sub_100ADE8DC(a2);
  sub_100E5CC78(v6);

  v7 = sub_100ADE62C(a2);
  sub_100E5D418(v7);
}

void sub_100E5B65C(unint64_t a1, int a2)
{
  v182 = a2;
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v171 = &v152 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v186 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v169);
  v168 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v167 = &v152 - v11;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  v166 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v165 = &v152 - v15;
  __chkstk_darwin(v16);
  v164 = &v152 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = v2;
  v23 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v22 = v23;
  v24 = *(v19 + 104);
  v178 = enum case for DispatchPredicate.onQueue(_:);
  v176 = v24;
  v177 = v19 + 104;
  v24(v22, v20);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v26 = *(v19 + 8);
  v179 = v22;
  v180 = v19 + 8;
  v181 = v18;
  v175 = v26;
  v26(v22, v18);
  if ((v23 & 1) == 0)
  {
    goto LABEL_172;
  }

  if (a1 >> 62)
  {
    goto LABEL_174;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v27 = sub_100DD3E48(a1);
      v28 = 0;
      v192 = 0;
      v29 = v27 + 64;
      v30 = 1 << v27[32];
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v27 + 8);
      v157 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
      v158 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
      v33 = (v30 + 63) >> 6;
      v184 = (v7 + 32);
      v185 = (v7 + 48);
      v34 = &qword_1019F2000;
      v152 = xmmword_10146C4D0;
      v163 = xmmword_10146D2A0;
      v190 = v6;
      v156 = v27;
      v153 = v33;
      v154 = v27 + 64;
      if (!v32)
      {
LABEL_7:
        while (1)
        {
          v35 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_168;
          }

          if (v35 >= v33)
          {
            goto LABEL_160;
          }

          v32 = *&v29[8 * v35];
          ++v28;
          if (v32)
          {
            v28 = v35;
            break;
          }
        }
      }

LABEL_11:
      v159 = v32;
      v155 = v28;
      v36 = (v28 << 9) | (8 * __clz(__rbit64(v32)));
      v37 = *(*(v27 + 6) + v36);
      a1 = *(*(v27 + 7) + v36);
      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      v38 = v34[191];
      v7 = v37;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = static NSObject.== infix(_:_:)();
      v40 = v171;
      v191 = v7;
      if (v39)
      {
        v202 = _swiftEmptyArrayStorage;
        if (a1 >> 62)
        {
          v41 = _CocoaArrayWrapper.endIndex.getter();
          if (v41)
          {
LABEL_16:
            if (v41 < 1)
            {
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
              goto LABEL_180;
            }

            v42 = 0;
            v197 = a1 & 0xC000000000000001;
            v194 = _swiftEmptyArrayStorage;
            v195 = v41;
            v196 = a1;
            while (2)
            {
              if (v197)
              {
                v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v43 = *(a1 + 8 * v42 + 32);
              }

              v198 = v43;
              v44 = [v43 recordID];
              v45 = [v44 recordName];

              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v7 = v47;

              v199[0] = v46;
              v199[1] = v7;
              sub_100017CD8();
              v48 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
              v49 = *(v48 + 16);

              if (v49)
              {
                v6 = v190;
                static String._fromSubstring(_:)();
                a1 = v50;
                v41 = v195;
              }

              else
              {
                a1 = v7;
              }

              UUID.init(uuidString:)();

              if ((*v185)(v40, 1, v6) != 1)
              {
                v51 = v40;
                v52 = *v184;
                (*v184)(v186, v51, v6);
                if (v49 <= 1)
                {

                  v53 = 0;
                  v55 = 0xE000000000000000;
                }

                else
                {
                  if (*(v48 + 16) < 2uLL)
                  {
                    goto LABEL_171;
                  }

                  v41 = v195;
                  v6 = v190;
                  v53 = static String._fromSubstring(_:)();
                  v55 = v54;
                }

                v56 = v168;
                v52(v168, v186, v6);
                v57 = &v56[*(v169 + 20)];
                *v57 = v53;
                v57[1] = v55;
                v58 = v56;
                v59 = v167;
                sub_100025668(v58, v167, type metadata accessor for CRLBoardIdentifierStorage);
                v60 = v59;
                v61 = v166;
                sub_100025668(v60, v166, type metadata accessor for CRLBoardIdentifierStorage);
                v62 = v61;
                v63 = v165;
                sub_100025668(v62, v165, type metadata accessor for CRLBoardIdentifier);
                v64 = v164;
                sub_100025668(v63, v164, type metadata accessor for CRLBoardIdentifier);
                v65 = v192;
                v66 = sub_100DEE8DC(v64, 1);
                if (v65)
                {

                  sub_100026028(v64, type metadata accessor for CRLBoardIdentifier);
                  v192 = 0;
                  v40 = v171;
LABEL_19:
                  a1 = v196;
                }

                else
                {
                  v67 = v66;
                  v192 = 0;
                  sub_100026028(v64, type metadata accessor for CRLBoardIdentifier);
                  v40 = v171;
                  a1 = v196;
                  if (v67)
                  {
                    v68 = v198;
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v40 = v171;
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                    v194 = v202;
                  }

                  else
                  {
                  }
                }

                ++v42;
                v7 = v191;
                if (v41 == v42)
                {
                  goto LABEL_41;
                }

                continue;
              }

              break;
            }

            sub_10000CAAC(v40, &qword_1019F6990, &qword_10146D2F0);

            goto LABEL_19;
          }
        }

        else
        {
          v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v41)
          {
            goto LABEL_16;
          }
        }

        v194 = _swiftEmptyArrayStorage;
LABEL_41:

        a1 = v194;
      }

      v69 = v192;
      if (a1 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_159:

LABEL_160:

          return;
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_159;
      }

      v70 = sub_100E5DB4C(a1);

      if (v70 >> 62)
      {
        v71 = _CocoaArrayWrapper.endIndex.getter();
        v72 = v159;
        if (!v71)
        {
LABEL_163:

          if (qword_1019F2258 == -1)
          {
LABEL_164:
            v144 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v146 = v191;
            v147 = [v191 zoneName];
            v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v150 = v149;

            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v148;
            *(inited + 40) = v150;
            v151 = static os_log_type_t.default.getter();
            sub_100005404(v144, &_mh_execute_header, v151, "Failed to construct any trees from cached ckrecords fetched for zone %{public}@", 79, 2, inited);

            swift_setDeallocating();
            sub_100005070((inited + 32));
            return;
          }

LABEL_180:
          swift_once();
          goto LABEL_164;
        }
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v72 = v159;
        if (!v71)
        {
          goto LABEL_163;
        }
      }

      v7 = 0;
      v159 = (v72 - 1) & v72;
      v202 = 0;
      v183 = v70 & 0xC000000000000001;
      v73 = *(v187 + v158);
      v173 = *(v187 + v157);
      v174 = v73;
      v161 = v70 & 0xFFFFFFFFFFFFFF8;
      v162 = 0;
      v170 = v70;
      v160 = v70 + 32;
      v172 = v71;
      while (1)
      {
        if (!v183)
        {
          if (v7 >= *(v161 + 16))
          {
            goto LABEL_170;
          }

          v193 = *(v160 + 8 * v7);

          v74 = __OFADD__(v7++, 1);
          if (v74)
          {
            break;
          }

          goto LABEL_55;
        }

        v193 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v74 = __OFADD__(v7++, 1);
        if (v74)
        {
          break;
        }

LABEL_55:
        v75 = *(v193 + 16);
        v200 = _swiftEmptyArrayStorage;
        v201 = _swiftEmptyArrayStorage;
        swift_retain_n();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v76 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v77 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v188 = v7;
        if (v76 >= v77 >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v78 = v200;
        if (v200 >> 62)
        {
          v79 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v79 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v189 = v75;
        v192 = v69;
        v80 = _swiftEmptyArrayStorage;
        if (v79)
        {
          while (1)
          {
            v7 = v78 >> 62;
            if (v78 >> 62)
            {
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_177;
              }

              if (!_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_178;
              }
            }

            else if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
              goto LABEL_159;
            }

            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v82 = v78 & 0xFFFFFFFFFFFFFF8;
              if (!v7)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_151;
              }

              v81 = *(v78 + 32);

              v82 = v78 & 0xFFFFFFFFFFFFFF8;
              if (!v7)
              {
LABEL_65:
                v83 = *(v82 + 16);
                if (!v83)
                {
                  goto LABEL_157;
                }

                v84 = v83 - 1;
                if (__OFSUB__(v83, 1))
                {
                  goto LABEL_152;
                }

                goto LABEL_76;
              }
            }

            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_157;
            }

            if (_CocoaArrayWrapper.endIndex.getter() < 1)
            {
              goto LABEL_158;
            }

            v85 = _CocoaArrayWrapper.endIndex.getter();
            v84 = v85 - 1;
            if (__OFSUB__(v85, 1))
            {
              goto LABEL_152;
            }

LABEL_76:
            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              if (!v7)
              {
                v86 = (v78 & 0xFFFFFFFFFFFFFF8);
                if (v84 <= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_83;
                }

                goto LABEL_82;
              }

LABEL_81:
              _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_82;
            }

            if (v7)
            {
              goto LABEL_81;
            }

LABEL_82:
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v86 = (v78 & 0xFFFFFFFFFFFFFF8);
LABEL_83:

            v87 = v78 >> 62;
            if (v78 >> 62)
            {
              v106 = _CocoaArrayWrapper.endIndex.getter();
              if (__OFSUB__(v106, 1))
              {
                goto LABEL_179;
              }

              v88 = v86;
              memmove(v86 + 4, v86 + 5, 8 * (v106 - 1));
              v7 = _CocoaArrayWrapper.endIndex.getter();
              v89 = v7 - 1;
              if (__OFSUB__(v7, 1))
              {
                goto LABEL_153;
              }
            }

            else
            {
              v7 = v86[2];
              v88 = v86;
              memmove(v86 + 4, v86 + 5, 8 * v7 - 8);
              v89 = v7 - 1;
              if (__OFSUB__(v7, 1))
              {
                goto LABEL_153;
              }
            }

            v88[2] = v89;
            v90 = v81[4];
            if (v90)
            {
              v91 = v81[5];
              ObjectType = swift_getObjectType();
              v199[0] = v90;
              v93 = (*(*(v91 + 8) + 8))(ObjectType);
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v80 = v201;
            }

            swift_beginAccess();
            v197 = v81;
            v94 = v81[6];
            v95 = v94 >> 62;
            if (v94 >> 62)
            {
              v198 = _CocoaArrayWrapper.endIndex.getter();
              v96 = v88;
              if (!v87)
              {
LABEL_91:
                v97 = *(v96 + 16);
                goto LABEL_92;
              }
            }

            else
            {
              v198 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v96 = v88;
              if (!v87)
              {
                goto LABEL_91;
              }
            }

            v97 = _CocoaArrayWrapper.endIndex.getter();
LABEL_92:
            v6 = v198;
            v7 = &v198[v97];
            if (__OFADD__(v97, v198))
            {
              goto LABEL_154;
            }

            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              if (!v87)
              {
                if (v7 <= *(v96 + 24) >> 1)
                {
                  goto LABEL_100;
                }

                goto LABEL_99;
              }

LABEL_98:
              _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_99;
            }

            if (v87)
            {
              goto LABEL_98;
            }

LABEL_99:
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v96 = v78 & 0xFFFFFFFFFFFFFF8;
LABEL_100:
            v98 = *(v96 + 16);
            a1 = *(v96 + 24);
            if (v95)
            {
              v7 = _CocoaArrayWrapper.endIndex.getter();
              if (!v7)
              {
LABEL_106:

                if (v6 > 0)
                {
                  goto LABEL_155;
                }

                goto LABEL_115;
              }
            }

            else
            {
              v7 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v7)
              {
                goto LABEL_106;
              }
            }

            if (((a1 >> 1) - v98) < v6)
            {
              goto LABEL_156;
            }

            v196 = v78;
            v99 = v96 + 8 * v98 + 32;
            if (v95)
            {
              if (v7 < 1)
              {
                __break(1u);
                goto LABEL_166;
              }

              v194 = v96;
              v195 = v80;
              sub_10001A2F8(&qword_101A00118, &qword_101A00110, &qword_10147C0A8, &protocol conformance descriptor for [A]);
              for (i = 0; i != v7; ++i)
              {
                sub_1005B981C(&qword_101A00110, &qword_10147C0A8);
                v101 = sub_100777A74(v199, i, v94);
                v103 = *v102;

                (v101)(v199, 0);
                *(v99 + 8 * i) = v103;
              }

              v96 = v194;
              v80 = v195;
              v6 = v198;
            }

            else
            {
              sub_1005B981C(&qword_1019F6DD8, &unk_10146FBC0);
              swift_arrayInitWithCopy();
            }

            v78 = v196;
            if (v6 > 0)
            {
              v104 = *(v96 + 16);
              v74 = __OFADD__(v104, v6);
              v105 = &v6[v104];
              if (v74)
              {
                __break(1u);
                goto LABEL_163;
              }

              *(v96 + 16) = v105;
            }

LABEL_115:
            if (v78 >> 62)
            {
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
                break;
              }
            }

            else if (!*(v96 + 16))
            {
              break;
            }
          }
        }

        v108 = __chkstk_darwin(v107);
        v7 = (&v152 - 4);
        v109 = v187;
        v110 = v193;
        *(&v152 - 6) = v187;
        *(&v152 - 5) = v110;
        *(&v152 - 32) = v182;
        *(&v152 - 3) = v191;
        *(&v152 - 2) = &v202;
        *(&v152 - 1) = v80;
        v199[0] = v109;
        v111 = v179;
        v112 = v174;
        *v179 = v174;
        a1 = v181;
        v176(v111, v178, v181, v108);
        v113 = v112;
        LOBYTE(v112) = _dispatchPreconditionTest(_:)();
        v175(v111, a1);
        if ((v112 & 1) == 0)
        {
          goto LABEL_167;
        }

        type metadata accessor for SQLTransaction();
        v114 = swift_initStackObject();
        a1 = &v152;
        *(v114 + 16) = v173;
        *(v114 + 24) = 0;
        __chkstk_darwin(v114);
        *(&v152 - 4) = v115;
        *(&v152 - 3) = sub_100EA33E4;
        *(&v152 - 2) = v7;
        *(&v152 - 1) = v199;
        swift_retain_n();
        v116 = v192;
        v117 = sub_10002FD6C(sub_1000307EC, (&v152 - 3));
        if (v116)
        {
          v195 = v80;

          swift_setDeallocating();

          if (qword_1019F2258 != -1)
          {
            swift_once();
          }

          v118 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v119 = swift_initStackObject();
          *(v119 + 16) = v163;
          v120 = *(v193 + 16);
          v122 = *(v120 + 16);
          v121 = *(v120 + 24);
          *(v119 + 56) = &type metadata for String;
          v123 = sub_1000053B0();
          *(v119 + 64) = v123;
          *(v119 + 32) = v122;
          *(v119 + 40) = v121;

          v124 = [v191 zoneName];
          v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v126;

          *(v119 + 96) = &type metadata for String;
          *(v119 + 104) = v123;
          *(v119 + 72) = v125;
          *(v119 + 80) = a1;
          swift_getErrorValue();
          v127 = Error.publicDescription.getter(v199[28], v199[29]);
          *(v119 + 136) = &type metadata for String;
          *(v119 + 144) = v123;
          *(v119 + 112) = v127;
          *(v119 + 120) = v128;
          swift_getErrorValue();
          v129 = Error.fullDescription.getter(v199[24]);
          *(v119 + 176) = &type metadata for String;
          *(v119 + 184) = v123;
          *(v119 + 152) = v129;
          *(v119 + 160) = v130;
          v131 = static os_log_type_t.error.getter();
          sub_100005404(v118, &_mh_execute_header, v131, "Failed to writing cached ckrecords tree with root %{public}@ into data-model for zone: %{public}@, error: %{public}@ <%@>", 121, 2, v119);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          if (v195 >> 62)
          {
            v132 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v132 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v6 = v190;
          v7 = v188;

          if (__OFADD__(v202, v132))
          {
            goto LABEL_169;
          }

          v69 = 0;
          v202 += v132;
        }

        else
        {
          v133 = v117;

          swift_setDeallocating();

          if (v133)
          {
            v6 = v190;
            v69 = 0;
            v7 = v188;
            if (v80 >> 62)
            {
              v134 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v134 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v74 = __OFADD__(v162, v134);
            v162 += v134;
            if (v74)
            {
              goto LABEL_173;
            }
          }

          else
          {

            v6 = v190;
            v69 = 0;
            v7 = v188;
          }
        }

        if (v7 == v172)
        {
          v192 = 0;

          if (qword_1019F2258 != -1)
          {
            swift_once();
          }

          v7 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v135 = swift_initStackObject();
          *(v135 + 16) = v152;
          v136 = v191;
          v137 = [v191 zoneName];
          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v139 = v138;

          *(v135 + 56) = &type metadata for String;
          v140 = sub_1000053B0();
          *(v135 + 32) = a1;
          *(v135 + 40) = v139;
          *(v135 + 96) = &type metadata for Int;
          v141 = v162;
          *(v135 + 64) = v140;
          *(v135 + 72) = v141;
          v142 = v202;
          *(v135 + 136) = &type metadata for Int;
          *(v135 + 144) = &protocol witness table for Int;
          *(v135 + 104) = &protocol witness table for Int;
          *(v135 + 112) = v142;
          v143 = static os_log_type_t.default.getter();
          sub_100005404(v7, &_mh_execute_header, v143, "Finished moving CKRecords into data-model for zone %{public}@. Successfully %{public}d. Failed %{public}d.", 106, 2, v135);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v28 = v155;
          v27 = v156;
          v33 = v153;
          v29 = v154;
          v32 = v159;
          v34 = &qword_1019F2000;
          if (!v159)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

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
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }
}

void sub_100E5CC78(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = v1;
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v86 = enum case for DispatchPredicate.onQueue(_:);
  v84 = v9;
  v85 = v4 + 104;
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v87 = v7;
  v88 = v4 + 8;
  v89 = v3;
  v83 = v11;
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (*(a1 + 16))
  {
    v12 = sub_100DD4114(a1);
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = v12 + 64;
    v17 = 1 << v12[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v12 + 8);
    v73 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v74 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
    v20 = (v17 + 63) >> 6;
    v77 = xmmword_10146C4D0;
    v82 = xmmword_10146D2A0;
    v78 = v12;
    v71 = v20;
    v72 = v12 + 64;
    if (v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_6:
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_33;
      }

      if (v21 >= v20)
      {

        return;
      }

      v19 = *&v16[8 * v21];
      ++v14;
    }

    while (!v19);
    v14 = v21;
LABEL_10:
    while (1)
    {
      v22 = (v14 << 9) | (8 * __clz(__rbit64(v19)));
      v23 = *(*(v13 + 6) + v22);
      v24 = *(*(v13 + 7) + v22);
      v102 = 0;
      v25 = *(v24 + 16);
      v79 = v23;
      if (v25)
      {
        break;
      }

      v59 = v23;
      v81 = 0;
LABEL_25:
      v92 = v15;
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v80 = (v19 - 1) & v19;
      v60 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      v62 = v79;
      v63 = [v79 zoneName];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      *(inited + 56) = &type metadata for String;
      v67 = sub_1000053B0();
      *(inited + 32) = v64;
      *(inited + 40) = v66;
      *(inited + 96) = &type metadata for Int;
      v68 = v81;
      *(inited + 64) = v67;
      *(inited + 72) = v68;
      v69 = v102;
      *(inited + 136) = &type metadata for Int;
      *(inited + 144) = &protocol witness table for Int;
      *(inited + 104) = &protocol witness table for Int;
      *(inited + 112) = v69;
      v70 = static os_log_type_t.default.getter();
      sub_100005404(v60, &_mh_execute_header, v70, "Finished moving Purged CKRecords into data-model for zone %{public}@. Successfully %{public}d. Failed %{public}d.", 113, 2, inited);

      v19 = v80;
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v15 = v92;
      v13 = v78;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    v80 = v19;
    v76 = v14;
    v26 = v24;
    v90 = *(v91 + v74);
    v27 = *(v91 + v73);
    v93 = v23;

    v81 = 0;
    v75 = v26;
    v29 = (v26 + 48);
    while (1)
    {
      v32 = v27;
      v95 = v25;
      v96 = &v71;
      v33 = *(v29 - 2);
      v94 = v29;
      v34 = *v29;
      v35 = __chkstk_darwin(v28);
      v37 = v90;
      v36 = v91;
      *(&v71 - 6) = v91;
      *(&v71 - 5) = v33;
      *(&v71 - 4) = v38;
      *(&v71 - 3) = v34;
      *(&v71 - 2) = v93;
      *(&v71 - 1) = &v102;
      v101 = v36;
      v39 = v87;
      *v87 = v37;
      v40 = v89;
      v84(v39, v86, v89, v35);
      v41 = v33;
      v97 = v34;

      v42 = v37;
      LOBYTE(v33) = _dispatchPreconditionTest(_:)();
      v83(v39, v40);
      if ((v33 & 1) == 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      type metadata accessor for SQLTransaction();
      v43 = swift_initStackObject();
      v27 = v32;
      *(v43 + 16) = v32;
      *(v43 + 24) = 0;
      __chkstk_darwin(v43);
      *(&v71 - 4) = v44;
      *(&v71 - 3) = sub_100EA3508;
      *(&v71 - 2) = (&v71 - 8);
      *(&v71 - 1) = &v101;
      swift_retain_n();
      v45 = sub_10002FD6C(sub_100EA61DC, (&v71 - 6));
      if (v15)
      {
        v92 = v15;

        swift_setDeallocating();

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v46 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v47 = swift_initStackObject();
        *(v47 + 16) = v82;
        *(v47 + 56) = sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr);
        *(v47 + 64) = sub_10000FDE0(&qword_101A22E90, &qword_1019F6E98, CKRecordID_ptr, &protocol conformance descriptor for NSObject);
        *(v47 + 32) = v41;
        v96 = v41;
        v48 = [v93 zoneName];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        *(v47 + 96) = &type metadata for String;
        v52 = sub_1000053B0();
        *(v47 + 104) = v52;
        *(v47 + 72) = v49;
        *(v47 + 80) = v51;
        swift_getErrorValue();
        v53 = Error.publicDescription.getter(v99, v100);
        *(v47 + 136) = &type metadata for String;
        *(v47 + 144) = v52;
        *(v47 + 112) = v53;
        *(v47 + 120) = v54;
        swift_getErrorValue();
        v55 = Error.fullDescription.getter(v98);
        *(v47 + 176) = &type metadata for String;
        *(v47 + 184) = v52;
        *(v47 + 152) = v55;
        *(v47 + 160) = v56;
        v57 = static os_log_type_t.error.getter();
        sub_100005404(v46, &_mh_execute_header, v57, "Failed to write cached purged ckrecord with id %{public}@ into data-model for zone: %{public}@, error: %{public}@ <%@>", 118, 2, v47);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        v28 = swift_arrayDestroy();
        if (__OFADD__(v102, 1))
        {
          goto LABEL_32;
        }

        v15 = 0;
        ++v102;
      }

      else
      {
        v58 = v45;

        swift_setDeallocating();

        if (v58)
        {
          v30 = v94;
          v31 = v95;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_34;
          }

          ++v81;
          goto LABEL_13;
        }
      }

      v30 = v94;
      v31 = v95;
LABEL_13:
      v29 = v30 + 3;
      v25 = v31 - 1;
      if (!v25)
      {

        v20 = v71;
        v16 = v72;
        v14 = v76;
        v19 = v80;
        goto LABEL_25;
      }
    }
  }
}

void sub_100E5D418(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v75 = enum case for DispatchPredicate.onQueue(_:);
  v73 = v9;
  v74 = v4 + 104;
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v76 = v7;
  v77 = v4 + 8;
  v78 = v3;
  v72 = v11;
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    return;
  }

  if (*(a1 + 16))
  {
    v12 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v71 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
    v67 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v16 = (v13 + 63) >> 6;

    v18 = 0;
    v81 = 0;
    v65 = xmmword_10146C6B0;
    v64 = xmmword_10146C4D0;
    v68 = a1 + 64;
    v69 = v1;
    v66 = v16;
    v70 = a1;
    if (!v15)
    {
LABEL_6:
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v19 >= v16)
        {

          return;
        }

        v15 = *(v12 + 8 * v19);
        ++v18;
        if (v15)
        {
          v18 = v19;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    while (1)
    {
LABEL_10:
      v79 = &v64;
      v20 = *(*(a1 + 48) + 8 * (__clz(__rbit64(v15)) | (v18 << 6)));
      v21 = __chkstk_darwin(v17);
      *(&v64 - 4) = v1;
      *(&v64 - 3) = v20;
      *(&v64 - 16) = v22;
      *(&v64 - 15) = v23;
      *(&v64 - 14) = v24;
      v85 = v1;
      v25 = *(v1 + v71);
      v26 = v76;
      *v76 = v25;
      v27 = v78;
      v73(v26, v75, v78, v21);
      v80 = v20;
      v28 = v25;
      LOBYTE(v25) = _dispatchPreconditionTest(_:)();
      v72(v26, v27);
      if ((v25 & 1) == 0)
      {
        goto LABEL_28;
      }

      v29 = *(v1 + v67);
      type metadata accessor for SQLTransaction();
      inited = swift_initStackObject();
      *(inited + 16) = v29;
      *(inited + 24) = 0;
      __chkstk_darwin(inited);
      *(&v64 - 4) = v31;
      *(&v64 - 3) = sub_100EA4328;
      *(&v64 - 2) = &v64 - 3;
      *(&v64 - 1) = &v85;
      swift_retain_n();
      v32 = v81;
      v33 = sub_10002FD6C(sub_100EA61DC, (&v64 - 3));
      v81 = v32;
      if (v32)
      {

        swift_setDeallocating();

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v79 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v34 = swift_initStackObject();
        *(v34 + 16) = v64;
        v35 = v80;
        v36 = [v80 zoneName];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        *(v34 + 56) = &type metadata for String;
        v40 = sub_1000053B0();
        *(v34 + 64) = v40;
        *(v34 + 32) = v37;
        *(v34 + 40) = v39;
        swift_getErrorValue();
        v41 = Error.publicDescription.getter(v83, v84);
        *(v34 + 96) = &type metadata for String;
        *(v34 + 104) = v40;
        *(v34 + 72) = v41;
        *(v34 + 80) = v42;
        swift_getErrorValue();
        v43 = Error.fullDescription.getter(v82);
        *(v34 + 136) = &type metadata for String;
        *(v34 + 144) = v40;
        v44 = v35;
        *(v34 + 112) = v43;
        *(v34 + 120) = v45;
        v46 = static os_log_type_t.error.getter();
        sub_100005404(v79, &_mh_execute_header, v46, "Failed to write cached ck zones existence changes into data-model for zone: %{public}@, error: %{public}@ <%@>", 110, 2, v34);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v81 = 0;
        v12 = v68;
      }

      else
      {
        v47 = v33;

        swift_setDeallocating();

        if (v47)
        {
          v12 = v68;
          v16 = v66;
          v44 = v80;
          if (qword_1019F2258 != -1)
          {
            swift_once();
          }

          v79 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v48 = swift_initStackObject();
          *(v48 + 16) = v65;
          v49 = [v44 zoneName];
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          *(v48 + 56) = &type metadata for String;
          v53 = sub_1000053B0();
          *(v48 + 32) = v50;
          v54 = (v48 + 32);
          *(v48 + 64) = v53;
          *(v48 + 40) = v52;
          v55 = static os_log_type_t.default.getter();
          sub_100005404(v79, &_mh_execute_header, v55, "Successfully moved all zone existence changes for zone %{public}@ to data-model", 79, 2, v48);
          goto LABEL_23;
        }

        v12 = v68;
        v44 = v80;
      }

      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v56 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v57 = swift_initStackObject();
      *(v57 + 16) = v65;
      v58 = [v44 zoneName];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      *(v57 + 56) = &type metadata for String;
      v62 = sub_1000053B0();
      *(v57 + 32) = v59;
      v54 = (v57 + 32);
      *(v57 + 64) = v62;
      *(v57 + 40) = v61;
      v63 = static os_log_type_t.default.getter();
      sub_100005404(v56, &_mh_execute_header, v63, "Failed to move any zone existence changes for zone %{public}@ to data-model", 75, 2, v57);
      v16 = v66;
LABEL_23:
      v15 &= v15 - 1;

      swift_setDeallocating();
      v17 = sub_100005070(v54);
      v1 = v69;
      a1 = v70;
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_100E5DB4C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      v89 = v1 & 0xC000000000000001;
      v4 = _swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v89)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v10 = [v7 recordID];
        if ((v4 & 0xC000000000000001) != 0)
        {
          if (v4 >= 0)
          {
            v4 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v11 = v8;
          v12 = __CocoaDictionary.count.getter();
          if (__OFADD__(v12, 1))
          {
            goto LABEL_30;
          }

          v4 = sub_100E8DDD0(v4, v12 + 1);
        }

        else
        {
          v13 = v8;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90[0] = v4;
        v15 = sub_1007C8B7C(v10);
        v17 = *(v4 + 16);
        v18 = (v16 & 1) == 0;
        v19 = __OFADD__(v17, v18);
        v20 = v17 + v18;
        if (v19)
        {
          goto LABEL_29;
        }

        v21 = v16;
        if (*(v4 + 24) < v20)
        {
          sub_100A93CA4(v20, isUniquelyReferenced_nonNull_native);
          v15 = sub_1007C8B7C(v10);
          if ((v21 & 1) != (v22 & 1))
          {
LABEL_157:
            sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_21:
          v4 = v90[0];
          if (v21)
          {
            goto LABEL_4;
          }

          goto LABEL_22;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        v25 = v15;
        sub_100AAA5E0();
        v15 = v25;
        v4 = v90[0];
        if (v21)
        {
LABEL_4:
          v5 = *(v4 + 56);
          v6 = *(v5 + 8 * v15);
          *(v5 + 8 * v15) = v8;

          goto LABEL_5;
        }

LABEL_22:
        *(v4 + 8 * (v15 >> 6) + 64) |= 1 << v15;
        *(*(v4 + 48) + 8 * v15) = v10;
        *(*(v4 + 56) + 8 * v15) = v8;

        v23 = *(v4 + 16);
        v19 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v19)
        {
          goto LABEL_31;
        }

        *(v4 + 16) = v24;
LABEL_5:
        ++v3;
        if (v9 == v2)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      v2 = a1;
    }

    while (a1);
  }

  v4 = _swiftEmptyDictionarySingleton;
LABEL_34:
  __chkstk_darwin(a1);
  v76[2] = v88;
  v26 = sub_100DCFCCC(v4, sub_100EA34DC, v76, sub_100EA6318, 0, sub_100EA631C, 0);

  if (v26 >> 62)
  {
    goto LABEL_153;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
  if (v27)
  {
    v28 = 0;
    v80 = v26 & 0xFFFFFFFFFFFFFF8;
    v81 = v26 & 0xC000000000000001;
    v78 = v26;
    v79 = v26 + 32;
    v29 = _swiftEmptyArrayStorage;
    v77 = v27;
    while (1)
    {
      if (v81)
      {
        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v19)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v28 >= *(v80 + 16))
        {
          goto LABEL_148;
        }

        v85 = *(v79 + 8 * v28);

        v19 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v19)
        {
          goto LABEL_147;
        }
      }

      v84 = v29;
      v82 = v30;
      v31 = *(v85 + 16);
      v91 = _swiftEmptyArrayStorage;
      swift_retain_n();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v83 = v31;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 = v91;
      if (!(v91 >> 62))
      {
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        goto LABEL_121;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        break;
      }

LABEL_121:

      v33 = _swiftEmptyArrayStorage;
LABEL_122:

      v67 = v33[2];
      v29 = v84;
      v68 = v84[2];
      v26 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_149;
      }

      v69 = swift_isUniquelyReferenced_nonNull_native();
      if (!v69 || v26 > v29[3] >> 1)
      {
        if (v68 <= v26)
        {
          v70 = v68 + v67;
        }

        else
        {
          v70 = v68;
        }

        v29 = sub_100B37F64(v69, v70, 1, v29);
      }

      v26 = v78;
      v71 = v77;
      v28 = v82;
      if (v33[2])
      {
        if ((v29[3] >> 1) - v29[2] < v67)
        {
          goto LABEL_151;
        }

        sub_1005B981C(&qword_101A11CF8, &qword_1014B6920);
        swift_arrayInitWithCopy();

        if (v67)
        {
          v72 = v29[2];
          v19 = __OFADD__(v72, v67);
          v73 = v72 + v67;
          if (v19)
          {
            goto LABEL_152;
          }

          v29[2] = v73;
        }
      }

      else
      {

        if (v67)
        {
          goto LABEL_150;
        }
      }

      if (v28 == v71)
      {
        goto LABEL_135;
      }
    }

    v33 = _swiftEmptyArrayStorage;
    while (1)
    {
      v26 = v32 & 0x8000000000000000;
      v34 = v32 >> 62;
      if (v32 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_155;
        }
      }

      else if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        v27 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_36;
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v36 = v32 & 0xFFFFFFFFFFFFFF8;
        if (v34)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_137;
        }

        v35 = *(v32 + 32);

        v36 = v32 & 0xFFFFFFFFFFFFFF8;
        if (v34)
        {
LABEL_61:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_143;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < 1)
          {
            goto LABEL_144;
          }

          v39 = _CocoaArrayWrapper.endIndex.getter();
          v38 = v39 - 1;
          if (__OFSUB__(v39, 1))
          {
            goto LABEL_138;
          }

          goto LABEL_64;
        }
      }

      v37 = *(v36 + 16);
      if (!v37)
      {
        goto LABEL_143;
      }

      v38 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
        goto LABEL_138;
      }

LABEL_64:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v34)
        {
          v40 = (v32 & 0xFFFFFFFFFFFFFF8);
          if (v38 <= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

LABEL_69:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_70;
      }

      if (v34)
      {
        goto LABEL_69;
      }

LABEL_70:
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = (v32 & 0xFFFFFFFFFFFFFF8);
      v26 = v32 & 0x8000000000000000;
LABEL_71:

      v41 = v32 >> 62;
      if (v32 >> 62)
      {
        v64 = _CocoaArrayWrapper.endIndex.getter();
        if (__OFSUB__(v64, 1))
        {
          goto LABEL_156;
        }

        memmove(v40 + 4, v40 + 5, 8 * (v64 - 1));
        v65 = _CocoaArrayWrapper.endIndex.getter();
        v43 = v65 - 1;
        if (__OFSUB__(v65, 1))
        {
          goto LABEL_139;
        }
      }

      else
      {
        v42 = v40[2];
        memmove(v40 + 4, v40 + 5, 8 * v42 - 8);
        v43 = v42 - 1;
        if (__OFSUB__(v42, 1))
        {
          goto LABEL_139;
        }
      }

      v40[2] = v43;
      v44 = v35[4];
      if (v44)
      {
        v45 = v35;
        v46 = v35[5];
        swift_unknownObjectRetain();
        v47 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_100B37F64(0, v33[2] + 1, 1, v33);
        }

        v49 = v33[2];
        v48 = v33[3];
        if (v49 >= v48 >> 1)
        {
          v33 = sub_100B37F64((v48 > 1), v49 + 1, 1, v33);
        }

        v33[2] = v49 + 1;
        v50 = &v33[2 * v49];
        v50[4] = v44;
        v50[5] = v46;
        v32 = v47;
        v35 = v45;
      }

      swift_beginAccess();
      v51 = v35[6];
      v52 = v51 >> 62;
      if (v51 >> 62)
      {
        v53 = _CocoaArrayWrapper.endIndex.getter();
        if (!v41)
        {
LABEL_81:
          v54 = v40[2];
          v55 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            goto LABEL_140;
          }

          goto LABEL_82;
        }
      }

      else
      {
        v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v41)
        {
          goto LABEL_81;
        }
      }

      v66 = _CocoaArrayWrapper.endIndex.getter();
      v55 = v66 + v53;
      if (__OFADD__(v66, v53))
      {
        goto LABEL_140;
      }

LABEL_82:

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v41)
        {
          if (v55 <= v40[3] >> 1)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

LABEL_87:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_88;
      }

      if (v41)
      {
        goto LABEL_87;
      }

LABEL_88:
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = (v32 & 0xFFFFFFFFFFFFFF8);
LABEL_89:
      v56 = v40[2];
      v57 = v40[3];
      if (v52)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
LABEL_96:

          if (v53 > 0)
          {
            goto LABEL_141;
          }

          goto LABEL_104;
        }
      }

      else
      {
        v26 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_96;
        }
      }

      if (((v57 >> 1) - v56) < v53)
      {
        goto LABEL_142;
      }

      if (v52)
      {
        if (v26 < 1)
        {
          goto LABEL_146;
        }

        v86 = v53;
        v87 = v35;
        v88 = v32;
        v89 = v33;
        sub_10001A2F8(&qword_101A00118, &qword_101A00110, &qword_10147C0A8, &protocol conformance descriptor for [A]);
        for (i = 0; i != v26; ++i)
        {
          sub_1005B981C(&qword_101A00110, &qword_10147C0A8);
          v59 = sub_100777A74(v90, i, v51);
          v61 = *v60;

          (v59)(v90, 0);
          v40[v56 + 4 + i] = v61;
        }

        v32 = v88;
        v33 = v89;
        v53 = v86;
        if (v86 > 0)
        {
LABEL_102:
          v62 = v40[2];
          v19 = __OFADD__(v62, v53);
          v63 = v62 + v53;
          if (v19)
          {
            goto LABEL_145;
          }

          v40[2] = v63;
        }
      }

      else
      {
        sub_1005B981C(&qword_1019F6DD8, &unk_10146FBC0);
        swift_arrayInitWithCopy();

        if (v53 > 0)
        {
          goto LABEL_102;
        }
      }

LABEL_104:
      if (v32 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_116:

          goto LABEL_122;
        }
      }

      else if (!v40[2])
      {
        goto LABEL_116;
      }
    }
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_135:

  v74 = sub_100DCC63C(v29);

  return v74;
}

uint64_t sub_100E5E5AC(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t *a5, unint64_t a6)
{
  v10 = a2;
  sub_100E48FE0(a2, a3);
  if (v6)
  {
    v44 = a6;
    v45 = a5;
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146D2A0;
    v13 = *(v10 + 16);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    a6 = &type metadata for String;
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 64) = v16;
    *(inited + 32) = v14;
    v10 = inited + 32;
    *(inited + 40) = v15;

    v17 = [a4 zoneName];
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v16;
    *(inited + 72) = a4;
    *(inited + 80) = v19;
    swift_getErrorValue();
    v20 = Error.publicDescription.getter(v51, v52);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v16;
    *(inited + 112) = v20;
    *(inited + 120) = v21;
    swift_getErrorValue();
    v22 = Error.fullDescription.getter(v50);
    *(inited + 176) = &type metadata for String;
    *(inited + 184) = v16;
    *(inited + 152) = v22;
    *(inited + 160) = v23;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v24, "Failed to write tree of ckrecords with root %{public}@ into data-model for zone: %{public}@, error: %{public}@ <%@>", 115, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    if (v44 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a5 = v45;

    v26 = *v45 + v25;
    if (!__OFADD__(*v45, v25))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  sub_100E5E9B8(a6);
  if (!v6)
  {
    return 1;
  }

  v46 = a5;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_10146D2A0;
  v29 = *(v10 + 16);
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);
  *(v28 + 56) = &type metadata for String;
  v32 = sub_1000053B0();
  *(v28 + 64) = v32;
  *(v28 + 32) = v31;
  *(v28 + 40) = v30;

  v33 = [a4 zoneName];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v32;
  *(v28 + 72) = v34;
  *(v28 + 80) = v36;
  swift_getErrorValue();
  v37 = Error.publicDescription.getter(v48, v49);
  *(v28 + 136) = &type metadata for String;
  *(v28 + 144) = v32;
  *(v28 + 112) = v37;
  *(v28 + 120) = v38;
  swift_getErrorValue();
  v39 = Error.fullDescription.getter(v47);
  *(v28 + 176) = &type metadata for String;
  *(v28 + 184) = v32;
  *(v28 + 152) = v39;
  *(v28 + 160) = v40;
  v41 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v41, "Failed to remove tree of ckrecords with root %{public}@ from cache after persisting into data-model for zone: %{public}@, error: %{public}@ <%@>", 144, 2, v28);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  if (a6 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a5 = v46;

  v26 = *v46 + v42;
  if (!__OFADD__(*v46, v42))
  {
LABEL_15:
    result = 0;
    *a5 = v26;
    return result;
  }

  __break(1u);
  return result;
}

void sub_100E5E9B8(unint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v1;
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v51 = enum case for DispatchPredicate.onQueue(_:);
  v52 = v6 + 104;
  v50 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v48 = v5;
  v49 = v13;
  v53 = v6 + 8;
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    v44[1] = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = a1 & 0xC000000000000001;
    v44[0] = " %{public}@ <%@>";
    while (1)
    {
      if (v46)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v45 + 16))
        {
          goto LABEL_25;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v54 = v16;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v19 = sub_10001CC04(v18, 0xD000000000000045, v44[0] | 0x8000000000000000);

      if (v3)
      {
        goto LABEL_22;
      }

      v20 = sub_100E5B438();
      sub_1000285F8(v20, v21, 1);

      v22 = *(*(v19 + 16) + 32);
      *v9 = v22;
      v23 = v48;
      v50(v9, v51, v48);
      v24 = v22;
      LOBYTE(v22) = _dispatchPreconditionTest(_:)();
      v49(v9, v23);
      if ((v22 & 1) == 0)
      {
        goto LABEL_26;
      }

      v25 = *(v19 + 16);

      v26 = sub_10001CEC4(v25, v19);

      if (v26 != 101)
      {
        v55 = 0;
        v56 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        v31._object = 0x80000001015A6F50;
        v31._countAndFlagsBits = 0xD000000000000037;
        String.append(_:)(v31);
        v32 = [v54 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36._countAndFlagsBits = v33;
        v36._object = v35;
        String.append(_:)(v36);

        v37 = v55;
        v38 = v56;
        sub_10089C7D0();
        swift_allocError();
        *v39 = v26;
        *(v39 + 8) = v37;
        *(v39 + 16) = v38;
        swift_willThrow();
        v40 = *(*(v19 + 16) + 32);
        *v9 = v40;
        v41 = v48;
        v50(v9, v51, v48);
        v42 = v40;
        LOBYTE(v40) = _dispatchPreconditionTest(_:)();
        v49(v9, v41);
        if ((v40 & 1) == 0)
        {
          __break(1u);
        }

        swift_beginAccess();
        v43 = *(v19 + 24);
        if (v43)
        {
          sqlite3_finalize(v43);

          *(v19 + 24) = 0;

          return;
        }

LABEL_22:

        return;
      }

      v27 = *(*(v19 + 16) + 32);
      *v9 = v27;
      v28 = v48;
      v50(v9, v51, v48);
      v29 = v27;
      LOBYTE(v27) = _dispatchPreconditionTest(_:)();
      v49(v9, v28);
      if ((v27 & 1) == 0)
      {
        goto LABEL_27;
      }

      swift_beginAccess();
      v30 = *(v19 + 24);
      if (v30)
      {
        sqlite3_finalize(v30);

        *(v19 + 24) = 0;
      }

      else
      {
      }

      ++v15;
      if (v17 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }
}

double sub_100E5EF08@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *(a1 + 8);
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_100E5EF18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(*(v3 + 16) + 8))(ObjectType);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_100E5EF78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(*(v3 + 16) + 16))(ObjectType);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_100E5EFD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v11 = a2;
  sub_100EEB3F0(v11, a3, a4, &v67);
  v60 = a6;
  if (v68)
  {
    sub_100050F74(&v67, v69);
    sub_1005B981C(&qword_101A21F88, &qword_1014B6958);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10000630C(v69, inited + 32);
    sub_100E4D61C(inited);
    if (!v6)
    {
      swift_setDeallocating();
      sub_100005070((inited + 32));
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_101465920;
      *(v42 + 32) = v11;
      sub_100E5F65C(v42);
      sub_100005070(v69);
      swift_setDeallocating();
      swift_arrayDestroy();
      return 1;
    }

    swift_setDeallocating();
    sub_100005070((inited + 32));
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v58 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_10146D2A0;
    v14 = [v11 recordName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v13 + 56) = &type metadata for String;
    v18 = sub_1000053B0();
    *(v13 + 64) = v18;
    *(v13 + 32) = v15;
    v11 = (v13 + 32);
    *(v13 + 40) = v17;
    v19 = [a5 zoneName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v21;

    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v18;
    *(v13 + 72) = v20;
    *(v13 + 80) = a5;
    swift_getErrorValue();
    v22 = Error.publicDescription.getter(v65, v66);
    *(v13 + 136) = &type metadata for String;
    *(v13 + 144) = v18;
    *(v13 + 112) = v22;
    *(v13 + 120) = v23;
    swift_getErrorValue();
    v24 = Error.fullDescription.getter(v64);
    *(v13 + 176) = &type metadata for String;
    *(v13 + 184) = v18;
    *(v13 + 152) = v24;
    *(v13 + 160) = v25;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v58, &_mh_execute_header, v26, "Failed to write purged record info with id %{public}@ into data-model for zone: %{public}@, error: %{public}@ <%@>", 114, 2, v13);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    sub_100005070(v69);
    v27 = v60;
    v28 = *v60 + 1;
    if (!__OFADD__(*v60, 1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  sub_10000CAAC(&v67, &qword_101A21F80, &qword_1014B6950);
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_10146BDE0;
  v31 = [v11 recordName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  *(v30 + 56) = &type metadata for String;
  v35 = sub_1000053B0();
  *(v30 + 64) = v35;
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  v36 = [a5 zoneName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v35;
  *(v30 + 72) = v37;
  *(v30 + 80) = v39;
  v40 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v40, "Failed to create remote identifier from purged record with id %{public}@, zone %{public}@", 89, 2, v30);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v27 = v60;
  v28 = *v60 + 1;
  if (!__OFADD__(*v60, 1))
  {
    result = 0;
LABEL_15:
    *v27 = v28;
    return result;
  }

  __break(1u);
  swift_once();
  v59 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_10146D2A0;
  v44 = [v30 + 32 recordName];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  *(v43 + 56) = &type metadata for String;
  v48 = sub_1000053B0();
  *(v43 + 64) = v48;
  *(v43 + 32) = v45;
  *(v43 + 40) = v47;
  v49 = [v36 zoneName];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v48;
  *(v43 + 72) = v50;
  *(v43 + 80) = v52;
  swift_getErrorValue();
  v53 = Error.publicDescription.getter(v62, v63);
  *(v43 + 136) = &type metadata for String;
  *(v43 + 144) = v48;
  *(v43 + 112) = v53;
  *(v43 + 120) = v54;
  swift_getErrorValue();
  v55 = Error.fullDescription.getter(v61);
  *(v43 + 176) = &type metadata for String;
  *(v43 + 184) = v48;
  *(v43 + 152) = v55;
  *(v43 + 160) = v56;
  v57 = static os_log_type_t.error.getter();
  sub_100005404(v59, &_mh_execute_header, v57, "Failed to remove purged record info with id %{public}@ from cache for zone: %{public}@, error: %{public}@ <%@>", 110, 2, v43);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  result = sub_100005070(v69);
  v27 = v60;
  v28 = *v60 + 1;
  if (!__OFADD__(*v60, 1))
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_100E5F65C(unint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v1;
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v51 = enum case for DispatchPredicate.onQueue(_:);
  v52 = v6 + 104;
  v50 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v48 = v5;
  v49 = v13;
  v53 = v6 + 8;
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    v44[1] = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = a1 & 0xC000000000000001;
    v44[0] = "blic}@, error: %{public}@ <%@>";
    while (1)
    {
      if (v46)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v45 + 16))
        {
          goto LABEL_25;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v54 = v16;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v19 = sub_10001CC04(v18, 0xD000000000000053, v44[0] | 0x8000000000000000);

      if (v3)
      {
        goto LABEL_22;
      }

      v20 = sub_100E5B438();
      sub_1000285F8(v20, v21, 1);

      v22 = *(*(v19 + 16) + 32);
      *v9 = v22;
      v23 = v48;
      v50(v9, v51, v48);
      v24 = v22;
      LOBYTE(v22) = _dispatchPreconditionTest(_:)();
      v49(v9, v23);
      if ((v22 & 1) == 0)
      {
        goto LABEL_26;
      }

      v25 = *(v19 + 16);

      v26 = sub_10001CEC4(v25, v19);

      if (v26 != 101)
      {
        v55 = 0;
        v56 = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v31._object = 0x80000001015A7B50;
        v31._countAndFlagsBits = 0xD00000000000003ELL;
        String.append(_:)(v31);
        v32 = [v54 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36._countAndFlagsBits = v33;
        v36._object = v35;
        String.append(_:)(v36);

        v37 = v55;
        v38 = v56;
        sub_10089C7D0();
        swift_allocError();
        *v39 = v26;
        *(v39 + 8) = v37;
        *(v39 + 16) = v38;
        swift_willThrow();
        v40 = *(*(v19 + 16) + 32);
        *v9 = v40;
        v41 = v48;
        v50(v9, v51, v48);
        v42 = v40;
        LOBYTE(v40) = _dispatchPreconditionTest(_:)();
        v49(v9, v41);
        if ((v40 & 1) == 0)
        {
          __break(1u);
        }

        swift_beginAccess();
        v43 = *(v19 + 24);
        if (v43)
        {
          sqlite3_finalize(v43);

          *(v19 + 24) = 0;

          return;
        }

LABEL_22:

        return;
      }

      v27 = *(*(v19 + 16) + 32);
      *v9 = v27;
      v28 = v48;
      v50(v9, v51, v48);
      v29 = v27;
      LOBYTE(v27) = _dispatchPreconditionTest(_:)();
      v49(v9, v28);
      if ((v27 & 1) == 0)
      {
        goto LABEL_27;
      }

      swift_beginAccess();
      v30 = *(v19 + 24);
      if (v30)
      {
        sqlite3_finalize(v30);

        *(v19 + 24) = 0;
      }

      else
      {
      }

      ++v15;
      if (v17 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }
}

uint64_t sub_100E5FBAC(uint64_t a1, void *a2, int a3)
{
  sub_100EEC10C(&v64);
  if (!v65)
  {
    sub_10000CAAC(&v64, &qword_101A21F80, &qword_1014B6950);
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v8 = [a2 zoneName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v12, "Tried to write zone existence changes, but failed to create remote identifier from zoneChange for zone: %{public}@", 114, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    return 0;
  }

  sub_100050F74(&v64, v66);
  if ((a3 & 0x100) == 0 && (a3 & 1) == 0)
  {
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_1005B981C(&qword_101A21F88, &qword_1014B6958);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_10146C6B0;
    sub_10000630C(v66, v30 + 32);
    sub_100E4DE54(v30);
    if (v3)
    {
      swift_setDeallocating();
      sub_100005070((v30 + 32));
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v31 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_10146C4D0;
      v32 = [a2 zoneName];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      *(v16 + 56) = &type metadata for String;
      v36 = sub_1000053B0();
      *(v16 + 64) = v36;
      *(v16 + 32) = v33;
      *(v16 + 40) = v35;
      swift_getErrorValue();
      v37 = Error.publicDescription.getter(v59, v60);
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v36;
      *(v16 + 72) = v37;
      *(v16 + 80) = v38;
      swift_getErrorValue();
      v39 = Error.fullDescription.getter(v58);
      *(v16 + 136) = &type metadata for String;
      *(v16 + 144) = v36;
      *(v16 + 112) = v39;
      *(v16 + 120) = v40;
      v26 = static os_log_type_t.error.getter();
      v27 = "Failed to write deletedDueToUserEncryptedDataReset zone existence change into data-model for zone: %{public}@, error: %{public}@ <%@>";
      v28 = v31;
      v29 = 133;
LABEL_18:
      sub_100005404(v28, &_mh_execute_header, v26, v27, v29, 2, v16);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
LABEL_24:
      swift_arrayDestroy();
      sub_100005070(v66);
      return 0;
    }

    swift_setDeallocating();
    sub_100005070((v30 + 32));
    goto LABEL_20;
  }

  sub_1005B981C(&qword_101A21F88, &qword_1014B6958);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10146C6B0;
  sub_10000630C(v66, v14 + 32);
  sub_100E4D61C(v14);
  if (v3)
  {
    swift_setDeallocating();
    sub_100005070((v14 + 32));
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_10146C4D0;
    v17 = [a2 zoneName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v16 + 56) = &type metadata for String;
    v21 = sub_1000053B0();
    *(v16 + 64) = v21;
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    swift_getErrorValue();
    v22 = Error.publicDescription.getter(v56, v57);
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    swift_getErrorValue();
    v24 = Error.fullDescription.getter(v55);
    *(v16 + 136) = &type metadata for String;
    *(v16 + 144) = v21;
    *(v16 + 112) = v24;
    *(v16 + 120) = v25;
    v26 = static os_log_type_t.error.getter();
    v27 = "Failed to write deleted/purged zone existence change into data-model for zone: %{public}@, error: %{public}@ <%@>";
    v28 = v15;
    v29 = 113;
    goto LABEL_18;
  }

  swift_setDeallocating();
  sub_100005070((v14 + 32));
  if ((a3 & 0x10000) != 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_101465920;
  *(v41 + 32) = a2;
  v42 = a2;
  sub_100E602B0(v41);
  if (v3)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10146C4D0;
    v45 = [v42 zoneName];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    *(v44 + 56) = &type metadata for String;
    v49 = sub_1000053B0();
    *(v44 + 64) = v49;
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    swift_getErrorValue();
    v50 = Error.publicDescription.getter(v62, v63);
    *(v44 + 96) = &type metadata for String;
    *(v44 + 104) = v49;
    *(v44 + 72) = v50;
    *(v44 + 80) = v51;
    swift_getErrorValue();
    v52 = Error.fullDescription.getter(v61);
    *(v44 + 136) = &type metadata for String;
    *(v44 + 144) = v49;
    *(v44 + 112) = v52;
    *(v44 + 120) = v53;
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v54, "Failed to remove zone existence changes from cache for zone: %{public}@, error: %{public}@ <%@>", 95, 2, v44);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    goto LABEL_24;
  }

  sub_100005070(v66);
  swift_setDeallocating();
  swift_arrayDestroy();
  return 1;
}

void sub_100E602B0(unint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v1;
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v69 = enum case for DispatchPredicate.onQueue(_:);
  v70 = v6 + 104;
  v68 = v11;
  v11(v9, v7);
  v12 = v10;
  v13 = _dispatchPreconditionTest(_:)();
  v15 = *(v6 + 8);
  v14 = v6 + 8;
  v67 = v15;
  v15(v9, v5);
  if ((v13 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
      return;
    }

    goto LABEL_4;
  }

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    return;
  }

LABEL_4:
  v17 = 0;
  v60 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
  v61 = a1 & 0xFFFFFFFFFFFFFF8;
  v62 = a1 & 0xC000000000000001;
  v59 = "Failed to delete a board";
  v58 = v9;
  v57 = a1;
  v56 = v16;
  while (1)
  {
    if (v62)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v61 + 16))
      {
        goto LABEL_25;
      }

      v18 = *(a1 + 8 * v17 + 32);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v65 = v17 + 1;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v21 = sub_10001CC04(v20, 0xD00000000000003FLL, v59 | 0x8000000000000000);

    if (v3)
    {

      return;
    }

    v64 = 0;
    v22 = [v19 zoneName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v71 = v23;
    v72 = v25;

    v26._countAndFlagsBits = 58;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);

    v3 = v14;
    v27 = v5;
    v29 = v71;
    v28 = v72;
    v66 = v19;
    v30 = [v19 ownerName];
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v71 = v29;
    v72 = v28;
    v5 = v27;
    v14 = v3;

    v33._countAndFlagsBits = a1;
    v33._object = v32;
    String.append(_:)(v33);
    v9 = v58;

    sub_1000285F8(v71, v72, 1);

    v34 = *(*(v21 + 16) + 32);
    *v9 = v34;
    v68(v9, v69, v5);
    v35 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v67(v9, v5);
    if ((v34 & 1) == 0)
    {
      goto LABEL_26;
    }

    v36 = *(v21 + 16);

    v37 = v36;
    v38 = v64;
    a1 = sub_10001CEC4(v37, v21);
    v3 = v38;

    if (a1 != 101)
    {
      break;
    }

    v39 = *(*(v21 + 16) + 32);
    *v9 = v39;
    v68(v9, v69, v5);
    v40 = v39;
    LOBYTE(v39) = _dispatchPreconditionTest(_:)();
    v67(v9, v5);
    if ((v39 & 1) == 0)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v41 = *(v21 + 24);
    if (v41)
    {
      sqlite3_finalize(v41);

      *(v21 + 24) = 0;
    }

    else
    {
    }

    a1 = v57;
    ++v17;
    if (v65 == v56)
    {
      return;
    }
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v42._object = 0x80000001015A5E80;
  v42._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v42);
  v43 = [v66 description];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v9;
  v47 = v46;

  v48._countAndFlagsBits = v44;
  v48._object = v47;
  String.append(_:)(v48);

  v49 = v71;
  v50 = v72;
  sub_10089C7D0();
  swift_allocError();
  *v51 = a1;
  *(v51 + 8) = v49;
  *(v51 + 16) = v50;
  swift_willThrow();
  v52 = *(*(v21 + 16) + 32);
  *v45 = v52;
  v68(v45, v69, v5);
  v53 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  v67(v45, v5);
  if ((v52 & 1) == 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  v54 = *(v21 + 24);
  if (v54)
  {
    sqlite3_finalize(v54);

    *(v21 + 24) = 0;
  }

  else
  {
  }
}

void sub_100E608E4(void *a1, unint64_t a2, uint64_t a3)
{
  LODWORD(v3) = a3;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v6 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v8 = sub_10108824C(a1);
    v10 = v9;
    *(inited + 56) = &type metadata for String;
    v80 = sub_1000053B0();
    *(inited + 64) = v80;
    *(inited + 32) = v8;
    *(inited + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v11, "Moving persisted cache into data model for %{public}@", 53, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    if (!a1)
    {
      v18 = sub_100E642BC();
      v38 = sub_100E64754();
      v40 = sub_100E61FB0();
      sub_1010AD40C(v38, v18);
      sub_1010AD40C(v40, v41);
      v43 = v42;
      if ((v42 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter())
        {
          __CocoaSet.makeIterator()();
          sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
          sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
          Set.Iterator.init(_cocoa:)();
          v43 = v83;
          v44 = v84;
          v45 = v85;
          v46 = v86;
          v47 = v87;
LABEL_42:
          v51 = (v45 + 64) >> 6;
          v78 = v43;
          v76 = v51;
          for (i = v44; ; v44 = i)
          {
            if (v43 < 0)
            {
              if (!__CocoaSet.Iterator.next()())
              {
                goto LABEL_61;
              }

              sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
              swift_dynamicCast();
              v55 = v82;
              v54 = v47;
            }

            else
            {
              v52 = v46;
              v53 = v47;
              if (!v47)
              {
                while (1)
                {
                  v46 = v52 + 1;
                  if (__OFADD__(v52, 1))
                  {
                    break;
                  }

                  if (v46 >= v51)
                  {
                    goto LABEL_61;
                  }

                  v53 = v44[v46];
                  ++v52;
                  if (v53)
                  {
                    goto LABEL_49;
                  }
                }

                __break(1u);
                return;
              }

LABEL_49:
              v54 = (v53 - 1) & v53;
              v55 = *(*(v43 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v53)))));
            }

            if (!v55)
            {
LABEL_61:
              v37 = v78;
              goto LABEL_32;
            }

            v81 = v54;
            sub_100E62448(v55);
            if (v56 >> 62)
            {
              v57 = v56;
              v58 = _CocoaArrayWrapper.endIndex.getter();
              v56 = v57;
              if (v58)
              {
LABEL_55:
                sub_100E5B65C(v56, v3);

                goto LABEL_58;
              }
            }

            else if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v59 = swift_initStackObject();
            *(v59 + 16) = xmmword_10146C6B0;
            v60 = [v55 zoneName];
            v61 = a2;
            v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v55;
            v65 = v64;

            *(v59 + 56) = &type metadata for String;
            *(v59 + 64) = v80;
            *(v59 + 32) = v62;
            a2 = v61;
            *(v59 + 40) = v65;
            v55 = v63;
            v66 = static os_log_type_t.default.getter();
            sub_100005404(v6, &_mh_execute_header, v66, "No cached ckrecords fetched for zone %{public}@", 47, 2, v59);
            swift_setDeallocating();
            sub_100005070((v59 + 32));
LABEL_58:
            sub_100E62CA8(v55);
            if (*(v67 + 16))
            {
              sub_100E5CC78(v67);
            }

            else
            {

              v68 = swift_initStackObject();
              *(v68 + 16) = xmmword_10146C6B0;
              v69 = [v55 zoneName];
              v70 = a2;
              v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v72 = v55;
              v74 = v73;

              *(v68 + 56) = &type metadata for String;
              *(v68 + 64) = v80;
              *(v68 + 32) = v71;
              a2 = v70;
              *(v68 + 40) = v74;
              v55 = v72;
              v75 = static os_log_type_t.default.getter();
              sub_100005404(v6, &_mh_execute_header, v75, "No cached purged ckrecords fetched for zone %{public}@", 54, 2, v68);
              swift_setDeallocating();
              sub_100005070((v68 + 32));
            }

            sub_100E61C4C(v55);

            v47 = v81;
            v43 = v78;
            v51 = v76;
          }
        }
      }

      else if (*(v42 + 16))
      {
        v46 = 0;
        v48 = -1 << *(v42 + 32);
        v44 = (v42 + 56);
        v45 = ~v48;
        v49 = -v48;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        else
        {
          v50 = -1;
        }

        v47 = v50 & *(v42 + 56);
        goto LABEL_42;
      }

LABEL_33:

      v39 = static os_log_type_t.default.getter();
      sub_100005404(v6, &_mh_execute_header, v39, "Zero referenced zone ids found in the cache, aborting", 53, 2, _swiftEmptyArrayStorage);
      return;
    }

    if (a1 != 1)
    {
      sub_100E61634(a1, v3);
      sub_100E6195C(a1, v13);
      sub_100E61C4C(a1);
      return;
    }

    a1 = 0;
    v12 = sub_100E61FB0();
    v3 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_33;
      }

      v79 = v6;
      __CocoaSet.makeIterator()();
      sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
      sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v3 = v83;
      v14 = v84;
      v15 = v85;
      v16 = v86;
      v17 = v87;
    }

    else
    {
      if (!*(v12 + 16))
      {
        goto LABEL_33;
      }

      v79 = v6;
      v16 = 0;
      v19 = -1 << *(v12 + 32);
      v14 = (v12 + 56);
      v15 = ~v19;
      v20 = -v19;
      v21 = v20 < 64 ? ~(-1 << v20) : -1;
      v17 = (v21 & *(v12 + 56));
    }

    v22 = (v15 + 64) >> 6;
    if (v3 < 0)
    {
      break;
    }

LABEL_16:
    v23 = v16;
    v24 = v17;
    v25 = v16;
    if (v17)
    {
LABEL_20:
      v26 = ((v24 - 1) & v24);
      v27 = *(*(v3 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
      if (v27)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_31;
      }

      v24 = v14[v25];
      ++v23;
      if (v24)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_64:
    swift_once();
  }

  while (__CocoaSet.Iterator.next()())
  {
    sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
    swift_dynamicCast();
    v27 = v82;
    v25 = v16;
    v26 = v17;
    if (!v82)
    {
      break;
    }

LABEL_24:
    v28 = sub_100E634C0(v27);
    a1 = v26;
    if (v28 != 2 && ((v28 & 0x10100) != 0 || (v28 & 1) != 0))
    {
      v34 = v28;
      sub_1005B981C(&qword_101A21F18, &qword_1014B68E0);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_10146C6B0;
      *(v35 + 32) = v27;
      *(v35 + 40) = v34 & 1;
      *(v35 + 41) = BYTE1(v34) & 1;
      *(v35 + 42) = BYTE2(v34) & 1;
      v36 = v27;
      a2 = sub_100BD86C4(v35);
      swift_setDeallocating();
      sub_10000CAAC(v35 + 32, &qword_101A21F20, &unk_1014B68E8);
      sub_100E5D418(a2);
    }

    else
    {
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_10146C6B0;
      v30 = [v27 zoneName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v32;

      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = v80;
      *(v29 + 32) = v31;
      *(v29 + 40) = a2;
      v33 = static os_log_type_t.default.getter();
      sub_100005404(v79, &_mh_execute_header, v33, "No cached ckzone existence changes fetched for zone %{public}@", 62, 2, v29);

      swift_setDeallocating();
      sub_100005070((v29 + 32));
    }

    v16 = v25;
    v17 = a1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_31:
  v37 = v3;
LABEL_32:
  sub_100035F90(v37);
}

uint64_t sub_100E61634(void *a1, int a2)
{
  sub_100E62448(a1);
  if (v4 >> 62)
  {
    v6 = v4;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v6;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100E5B65C(v4, a2);
  }

  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v10 = [a1 zoneName];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v14, "No cached ckrecords fetched for zone %{public}@", 47, 2, inited);
  swift_setDeallocating();
  return sub_100005070((inited + 32));
}

uint64_t sub_100E6195C(void *a1, __n128 a2)
{
  sub_100E62CA8(a1);
  if (*(v3 + 16))
  {
    sub_100E5CC78(v3);
  }

  else
  {

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v7 = [a1 zoneName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v8;
    *(inited + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v5, &_mh_execute_header, v11, "No cached purged ckrecords fetched for zone %{public}@", 54, 2, inited);
    swift_setDeallocating();
    return sub_100005070((inited + 32));
  }
}

uint64_t sub_100E61C4C(void *a1)
{
  v2 = sub_100E634C0(a1);
  if (v2 != 2 && ((v2 & 0x10100) != 0 || (v2 & 1) != 0))
  {
    v11 = v2;
    sub_1005B981C(&qword_101A21F18, &qword_1014B68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = a1;
    *(inited + 40) = v11 & 1;
    *(inited + 41) = BYTE1(v11) & 1;
    *(inited + 42) = BYTE2(v11) & 1;
    v13 = a1;
    v14 = sub_100BD86C4(inited);
    swift_setDeallocating();
    sub_10000CAAC(inited + 32, &qword_101A21F20, &unk_1014B68E8);
    sub_100E5D418(v14);
  }

  else
  {
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_10146C6B0;
    v5 = [a1 zoneName];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_1000053B0();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v9, "No cached ckzone existence changes fetched for zone %{public}@", 62, 2, v4);
    swift_setDeallocating();
    return sub_100005070((v4 + 32));
  }
}

void *sub_100E61FB0()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v35 = *(v3 + 104);
  (v35)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v10;
  v39 = _swiftEmptySetSingleton;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000031, 0x80000001015A87E0);
  v13 = v1;

  if (v1)
  {
    return v13;
  }

  v34[1] = 0;
  v14 = *(*(v12 + 16) + 32);
  *v6 = v14;
  v15 = v35;
  v35(v6, v8, v2);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v37(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_26;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v18 = inited + 3;
  inited[4] = 0;
  v34[0] = inited + 4;
  inited[5] = 1;
  v36 = inited;
  inited[2] = v12;

  swift_beginAccess();
  while (1)
  {
    v19 = *(*(v12 + 16) + 32);
    *v6 = v19;
    v15(v6, v8, v2);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    v37(v6, v2);
    if ((v19 & 1) == 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *v18 = 0;
    v18[1] = 0;
    v36[5] = 1;
    v21 = sqlite3_step(*(v12 + 24));
    if (v21 != 100)
    {
      break;
    }

    v22 = *(*(v12 + 16) + 32);
    *v6 = v22;
    v15(v6, v8, v2);

    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    v37(v6, v2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (sqlite3_column_type(*(v12 + 24), 0) == 5 || !sqlite3_column_text(*(v12 + 24), 0))
    {
    }

    else
    {
      v24 = String.init(cString:)();
      v26 = sub_100EA392C(v24, v25);

      if (v26)
      {
        v27 = v26;
        sub_100E7227C(&v38, v27, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
      }

      else
      {
      }

      v15 = v35;
    }
  }

  if (v21 && v21 != 101)
  {
    *v18 = v21;
    v28 = v34[0];
    *v34[0] = 0;
    *(v28 + 8) = 0;
  }

  v13 = v39;
  v29 = *(*(v12 + 16) + 32);
  *v6 = v29;
  v15(v6, v8, v2);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  v37(v6, v2);
  if ((v31 & 1) == 0)
  {
LABEL_27:
    __break(1u);
  }

  v32 = *(v12 + 24);
  if (v32)
  {
    sqlite3_finalize(v32);
    *(v12 + 24) = 0;
  }

  return v13;
}

void sub_100E62448(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v68 = *(v5 + 104);
  (v68)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v71 = *(v5 + 8);
  v71(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v72 = v10;
  v75 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD00000000000004ELL, 0x80000001015A7CC0);

  if (v2)
  {
    return;
  }

  v67 = 0;
  v14 = [a1 zoneName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v76 = v15;
  v77 = v17;

  v18._countAndFlagsBits = 58;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19 = v77;
  v70 = v76;
  v20 = [a1 ownerName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v76 = v70;
  v77 = v19;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  sub_1000285F8(v76, v77, 1);

  v25 = *(*(v13 + 16) + 32);
  *v8 = v25;
  v26 = v72;
  v27 = v68;
  (v68)(v8, v72, v4);
  v28 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v29 = v71;
  v71(v8, v4);
  if ((v25 & 1) == 0)
  {
    goto LABEL_41;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v69 = inited + 3;
  inited[4] = 0;
  v65 = inited + 4;
  inited[5] = 1;
  v70 = inited;
  inited[2] = v13;

  swift_beginAccess();
  v31 = *(*(v13 + 16) + 32);
  *v8 = v31;
  v27(v8, v26, v4);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v31 & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v66 = _swiftEmptyArrayStorage;
  v64 = xmmword_1014B6250;
  while (1)
  {
    v34 = v69;
    v33 = v70;
    *v69 = 0;
    v34[1] = 0;
    *(v33 + 40) = 1;
    v35 = sqlite3_step(*(v13 + 24));
    if (v35 != 100)
    {
      break;
    }

    v36 = *(*(v13 + 16) + 32);
    *v8 = v36;
    v37 = v29;
    v38 = v27;
    v39 = v72;
    v38(v8, v72, v4);

    v40 = v36;
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    v37(v8, v4);
    if ((v36 & 1) == 0)
    {
      goto LABEL_38;
    }

    v41 = *(*(v13 + 16) + 32);
    *v8 = v41;
    v38(v8, v39, v4);
    v42 = v41;
    LOBYTE(v41) = _dispatchPreconditionTest(_:)();
    v37(v8, v4);
    if ((v41 & 1) == 0)
    {
      goto LABEL_39;
    }

    v27 = v38;
    if (sqlite3_column_type(*(v13 + 24), 0) != 5 && (v43 = sqlite3_column_blob(*(v13 + 24), 0)) != 0)
    {
      v46 = v43;
      v47 = sqlite3_column_bytes(*(v13 + 24), 0);
      v29 = v71;
      if (v47)
      {
        v48 = v47;
        if (v47 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v74 = v47;
          memcpy(__dst, v46, v47);
          v68 = *__dst;
          v50 = v62 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v74 << 16)) << 32);
          v62 = v50;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          if (v48 == 0x7FFFFFFF)
          {
            v49 = __DataStorage.init(bytes:length:)();
            type metadata accessor for Data.RangeReference();
            v68 = swift_allocObject();
            *(v68 + 16) = v64;
            v50 = v49 | 0x8000000000000000;
          }

          else
          {
            v51 = __DataStorage.init(bytes:length:)();
            v68 = v48 << 32;
            v50 = v51 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v68 = 0;
        v50 = 0xC000000000000000;
      }

      sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
      sub_100006370(0, &unk_101A22DC0, CKRecord_ptr);
      v63 = v50;
      v52 = v67;
      v53 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v52)
      {

        v67 = 0;
        v54 = v63;
      }

      else
      {
        v54 = v63;
        v67 = 0;
        if (v53)
        {
          v57 = v53;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v66 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          sub_10002640C(v68, v63);

          v66 = v75;
          goto LABEL_24;
        }
      }

      sub_10002640C(v68, v54);

LABEL_24:
      v55 = *(*(v13 + 16) + 32);
      *v8 = v55;
      v27(v8, v72, v4);
      v56 = v55;
      LOBYTE(v55) = _dispatchPreconditionTest(_:)();
      v29(v8, v4);
      if ((v55 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {

      v44 = *(*(v13 + 16) + 32);
      *v8 = v44;
      v38(v8, v72, v4);
      v45 = v44;
      LOBYTE(v44) = _dispatchPreconditionTest(_:)();
      v29 = v71;
      v71(v8, v4);
      if ((v44 & 1) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  if (v35 && v35 != 101)
  {
    *v69 = v35;
    v58 = v65;
    *v65 = 0;
    v58[1] = 0;
  }

  v59 = *(*(v13 + 16) + 32);
  *v8 = v59;
  v27(v8, v72, v4);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v59 & 1) == 0)
  {
LABEL_42:
    __break(1u);
  }

  v61 = *(v13 + 24);
  if (v61)
  {
    sqlite3_finalize(v61);
    *(v13 + 24) = 0;
  }
}

void sub_100E62CA8(void *a1)
{
  v83 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4 + 104;
  v82 = *(v4 + 104);
  (v82)(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v7, v3);
  if ((v8 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v84 = v12;
  v85 = 0;
  v81 = v9;
  v86 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v13._countAndFlagsBits = 0x454C455320202020;
  v13._object = 0xEB00000000205443;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x695F64726F636572;
  v14._object = 0xE900000000000064;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x20202020202CLL;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x745F64726F636572;
  v16._object = 0xEB00000000657079;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x4F52462020202020;
  v17._object = 0xEA0000000000204DLL;
  String.append(_:)(v17);
  v18._object = 0x80000001015A3110;
  v18._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x4548572020202020;
  v19._object = 0xEB00000000204552;
  String.append(_:)(v19);
  v20._object = 0x80000001015A3110;
  v20._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x64695F656E6F7ALL;
  v22._object = 0xE700000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 1059077408;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24 = v85;
  v25 = v86;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v27 = sub_10001CC04(v26, v24, v25);

  if (v2)
  {
    return;
  }

  v79 = 0;
  v28 = v83;
  v29 = [v83 zoneName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v85 = v30;
  v86 = v32;

  v33._countAndFlagsBits = 58;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);

  v34 = v86;
  v80 = v85;
  v35 = [v28 ownerName];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v85 = v80;
  v86 = v34;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  sub_1000285F8(v85, v86, 1);

  v40 = *(*(v27 + 16) + 32);
  *v7 = v40;
  v41 = v81;
  v42 = v82;
  v82(v7, v81, v3);
  v43 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v84(v7, v3);
  if ((v40 & 1) == 0)
  {
    goto LABEL_37;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v45 = inited + 3;
  inited[4] = 0;
  v77 = inited + 4;
  inited[5] = 1;
  v83 = inited;
  inited[2] = v27;

  swift_beginAccess();
  v46 = *(*(v27 + 16) + 32);
  *v7 = v46;
  v42(v7, v41, v3);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v84(v7, v3);
  if ((v46 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v80 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v45 = 0;
    v45[1] = 0;
    *(v83 + 5) = 1;
    v48 = sqlite3_step(*(v27 + 24));
    if (v48 != 100)
    {
      break;
    }

    v49 = *(*(v27 + 16) + 32);
    *v7 = v49;
    v42(v7, v41, v3);

    v50 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v84(v7, v3);
    if ((v49 & 1) == 0)
    {
      goto LABEL_34;
    }

    if (sqlite3_column_type(*(v27 + 24), 0) == 5 || !sqlite3_column_text(*(v27 + 24), 0))
    {
    }

    else
    {
      v51 = String.init(cString:)();
      v52 = v42;
      v53 = v51;
      v54 = v41;
      v56 = v55;
      v57 = *(*(v27 + 16) + 32);
      *v7 = v57;
      v52(v7, v54, v3);
      v58 = v57;
      LOBYTE(v57) = _dispatchPreconditionTest(_:)();
      v84(v7, v3);
      if ((v57 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (sqlite3_column_type(*(v27 + 24), 1) == 5 || !sqlite3_column_text(*(v27 + 24), 1))
      {

        v41 = v81;
        v42 = v82;
      }

      else
      {
        v78 = v10;
        v59 = String.init(cString:)();
        v61 = v60;
        v62 = sub_100EA3DBC(v53, v56);

        if (v62)
        {
          v76 = v61;
          v66 = v80;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_100B3853C(0, *(v66 + 2) + 1, 1, v66);
          }

          v67 = v66;
          v68 = *(v66 + 2);
          v80 = v67;
          v69 = *(v67 + 3);
          if (v68 >= v69 >> 1)
          {
            v80 = sub_100B3853C((v69 > 1), v68 + 1, 1, v80);
          }

          v70 = v80;
          *(v80 + 2) = v68 + 1;
          v71 = &v70[24 * v68];
          *(v71 + 4) = v62;
          *(v71 + 5) = v59;
          *(v71 + 6) = v76;
          v63 = *(*(v27 + 16) + 32);
          *v7 = v63;
          v41 = v81;
          v42 = v82;
          v10 = v78;
          v82(v7, v81, v3);
          goto LABEL_18;
        }

        v41 = v81;
        v42 = v82;
        v10 = v78;
      }
    }

    v63 = *(*(v27 + 16) + 32);
    *v7 = v63;
    v42(v7, v41, v3);
LABEL_18:
    v64 = v63;
    v65 = _dispatchPreconditionTest(_:)();
    v84(v7, v3);
    if ((v65 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (v48 && v48 != 101)
  {
    *v45 = v48;
    v72 = v77;
    *v77 = 0;
    v72[1] = 0;
  }

  v73 = *(*(v27 + 16) + 32);
  *v7 = v73;
  v42(v7, v41, v3);
  v74 = v73;
  LOBYTE(v73) = _dispatchPreconditionTest(_:)();
  v84(v7, v3);
  if ((v73 & 1) == 0)
  {
LABEL_38:
    __break(1u);
  }

  v75 = *(v27 + 24);
  if (v75)
  {
    sqlite3_finalize(v75);
    *(v27 + 24) = 0;
  }
}

uint64_t sub_100E634C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v5 + 104);
  v134 = v5 + 104;
  v11(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v132 = v4;
  v133 = v14;
  v14(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v136 = a1;
  v130 = v11;
  v135 = v10;
  v138 = v13;
  v140 = 0;
  v141 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v140 = 0x454C455320202020;
  v141 = 0xEB00000000205443;
  v15._countAndFlagsBits = sub_100DCB764(0, 0xE000000000000000);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x4F52462020202020;
  v16._object = 0xEA0000000000204DLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x635F656E6F7A6B63;
  v17._object = 0xEC00000065686361;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x4548572020202020;
  v18._object = 0xEB00000000204552;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x635F656E6F7A6B63;
  v19._object = 0xEC00000065686361;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x64695F656E6F7ALL;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 1059077408;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  v23 = v140;
  v24 = v141;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v26 = v137;
  v27 = sub_10001CC04(v25, v23, v24);
  v28 = v26;

  if (v26)
  {
    return v28;
  }

  v126 = 0;
  v29 = v136;
  v30 = [v136 zoneName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v140 = v31;
  v141 = v33;

  v34._countAndFlagsBits = 58;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);

  v35 = v140;
  v36 = v141;
  v37 = [v29 ownerName];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v140 = v35;
  v141 = v36;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  sub_1000285F8(v140, v141, 1);

  v42 = *(*(v27 + 16) + 32);
  *v8 = v42;
  v43 = v135;
  v11 = v132;
  v13 = v134;
  v44 = v130;
  v130(v8, v135, v132);
  v45 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v4 = v27;
  v2 = v138;
  v133(v8, v11);
  if (v42)
  {
    type metadata accessor for SQLiteRowIterator();
    inited = swift_initStackObject();
    inited[3] = 0;
    v136 = inited + 3;
    v137 = inited;
    inited[4] = 0;
    v125 = inited + 4;
    inited[5] = 1;
    inited[2] = v4;

    swift_beginAccess();
    v47 = *(*(v4 + 16) + 32);
    *v8 = v47;
    v44(v8, v43, v11);
    v48 = v47;
    LOBYTE(v47) = _dispatchPreconditionTest(_:)();
    v2 = v133;
    v133(v8, v11);
    if (v47)
    {
      v129 = _swiftEmptyArrayStorage;
      v131 = v4;
      v127 = v8;
      do
      {
        v50 = v136;
        v49 = v137;
        *v136 = 0;
        v50[1] = 0;
        v49[5] = 1;
        v51 = sqlite3_step(*(v4 + 24));
        if (v51 != 100)
        {
          if (v51 && v51 != 101)
          {
            *v136 = v51;
            v89 = v125;
            *v125 = 0;
            v89[1] = 0;
          }

          v90 = *(v129 + 2);
          if (v90 < 2)
          {
            goto LABEL_39;
          }

          v136 = objc_opt_self();
          LODWORD(v4) = [v136 _atomicIncrementAssertCount];
          v139 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v139, "read more than 1 cached ck zone changes for a zone", 50, 2u);
          StaticString.description.getter("_readCachedCKZoneChanges(forZone:)", 34, 2);
          v128 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
          v91 = String._bridgeToObjectiveC()();

          v92 = [v91 lastPathComponent];

          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v125 = v93;

          if (qword_1019F20A0 == -1)
          {
            goto LABEL_38;
          }

          goto LABEL_63;
        }

        v52 = *(*(v4 + 16) + 32);
        *v8 = v52;
        v44(v8, v43, v11);

        v53 = v52;
        LOBYTE(v52) = _dispatchPreconditionTest(_:)();
        v2(v8, v11);
        if ((v52 & 1) == 0)
        {
          goto LABEL_54;
        }

        if (sqlite3_column_type(*(v4 + 24), 0) == 5 || !sqlite3_column_text(*(v4 + 24), 0))
        {
        }

        else
        {
          v54 = String.init(cString:)();
          v56 = sub_100EA392C(v54, v55);

          if (v56)
          {
            v128 = v56;
            v57 = *(*(v4 + 16) + 32);
            *v8 = v57;
            v4 = v2;
            v2 = v44;
            v58 = v135;
            (v2)(v8, v135, v11);
            v59 = v57;
            LOBYTE(v57) = _dispatchPreconditionTest(_:)();
            (v4)(v8, v11);
            if ((v57 & 1) == 0)
            {
              goto LABEL_56;
            }

            v60 = *(*(v131 + 16) + 32);
            *v8 = v60;
            (v2)(v8, v58, v11);
            v61 = v60;
            LOBYTE(v60) = _dispatchPreconditionTest(_:)();
            (v4)(v8, v11);
            if ((v60 & 1) == 0)
            {
              goto LABEL_57;
            }

            v44 = v2;
            v4 = v131;
            if (sqlite3_column_type(*(v131 + 24), 1) == 5)
            {

              v2 = v133;
              v13 = v134;
LABEL_24:
              v43 = v135;
              v11 = v132;
              v8 = v127;
              goto LABEL_16;
            }

            v124 = sqlite3_column_int(*(v4 + 24), 1);
            v68 = *(*(v4 + 16) + 32);
            v8 = v127;
            *v127 = v68;
            v11 = v2;
            v69 = v135;
            v70 = v132;
            (v2)(v8, v135, v132);
            v71 = v68;
            v13 = _dispatchPreconditionTest(_:)();
            v2 = v133;
            v133(v8, v70);
            if ((v13 & 1) == 0)
            {
              goto LABEL_59;
            }

            v13 = *(*(v4 + 16) + 32);
            *v8 = v13;
            (v11)(v8, v69, v70);
            v72 = v13;
            v73 = _dispatchPreconditionTest(_:)();
            v2(v8, v70);
            if ((v73 & 1) == 0)
            {
              goto LABEL_60;
            }

            v44 = v11;
            if (sqlite3_column_type(*(v4 + 24), 2) == 5)
            {

              v13 = v134;
              goto LABEL_24;
            }

            v123 = sqlite3_column_int(*(v4 + 24), 2);
            v13 = *(*(v4 + 16) + 32);
            v8 = v127;
            *v127 = v13;
            v11 = v132;
            v44(v8, v135, v132);
            v74 = v13;
            v75 = _dispatchPreconditionTest(_:)();
            v2(v8, v11);
            v76 = v128;
            if ((v75 & 1) == 0)
            {
              goto LABEL_62;
            }

            v77 = sub_10001E378(3, v4);
            if ((v78 & 1) == 0)
            {
              v79 = v77;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v129 = sub_100B38E9C(0, *(v129 + 2) + 1, 1, v129);
              }

              v81 = *(v129 + 2);
              v80 = *(v129 + 3);
              v121 = v81 + 1;
              v122 = v81;
              v82 = v4;
              if (v81 >= v80 >> 1)
              {
                v129 = sub_100B38E9C((v80 > 1), v81 + 1, 1, v129);
              }

              v83 = v79 != 0;
              v84 = v123 != 0;
              v85 = v124 != 0;

              v86 = v129;
              v87 = v122;
              *(v129 + 2) = v121;
              v88 = &v86[3 * v87];
              v88[32] = v85;
              v4 = v82;
              v88[33] = v84;
              v88[34] = v83;
              v62 = *(*(v82 + 16) + 32);
              *v8 = v62;
              v63 = v8;
              v43 = v135;
              v64 = v135;
              v65 = v11;
              v13 = v134;
              goto LABEL_17;
            }

            v13 = v134;
            v43 = v135;
          }

          else
          {

            v43 = v135;
          }
        }

LABEL_16:
        v62 = *(*(v4 + 16) + 32);
        *v8 = v62;
        v63 = v8;
        v64 = v43;
        v65 = v11;
LABEL_17:
        v44(v63, v64, v65);
        v66 = v62;
        v67 = _dispatchPreconditionTest(_:)();
        v2(v8, v11);
      }

      while ((v67 & 1) != 0);
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  do
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
LABEL_38:
    v133 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v94 = swift_initStackObject();
    *(v94 + 16) = xmmword_10146CA70;
    *(v94 + 56) = &type metadata for Int32;
    *(v94 + 64) = &protocol witness table for Int32;
    *(v94 + 32) = v4;
    v132 = (v94 + 32);
    v95 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v94 + 96) = v95;
    v96 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v94 + 104) = v96;
    v97 = v128;
    *(v94 + 72) = v128;
    *(v94 + 136) = &type metadata for String;
    v98 = sub_1000053B0();
    v99 = v125;
    *(v94 + 112) = v13;
    *(v94 + 120) = v99;
    *(v94 + 176) = &type metadata for UInt;
    *(v94 + 184) = &protocol witness table for UInt;
    *(v94 + 144) = v98;
    *(v94 + 152) = 12585;
    v100 = v139;
    *(v94 + 216) = v95;
    *(v94 + 224) = v96;
    *(v94 + 192) = v100;
    v101 = v97;
    v102 = v100;
    v103 = static os_log_type_t.error.getter();
    v104 = v133;
    sub_100005404(v133, &_mh_execute_header, v103, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v94);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v105 = static os_log_type_t.error.getter();
    sub_100005404(v104, &_mh_execute_header, v105, "read more than 1 cached ck zone changes for a zone", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v106 = swift_allocObject();
    v106[2] = 8;
    v106[3] = 0;
    v106[4] = 0;
    v106[5] = 0;
    v133 = __VaListBuilder.va_list()();
    StaticString.description.getter("_readCachedCKZoneChanges(forZone:)", 34, 2);
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v108 = String._bridgeToObjectiveC()();

    StaticString.description.getter("read more than 1 cached ck zone changes for a zone", 50, 2);
    v109 = String._bridgeToObjectiveC()();

    [v136 handleFailureInFunction:v107 file:v108 lineNumber:12585 isFatal:0 format:v109 args:v133];

    v44 = v130;
    v90 = *(v129 + 2);
    v43 = v135;
    v4 = v131;
LABEL_39:
    if (v90)
    {
      v110 = v129[32];
      v111 = v129[33];
      v112 = v129[34];

      if (v111)
      {
        v113 = 256;
      }

      else
      {
        v113 = 0;
      }

      v114 = v113 | v110;
      v115 = v112 == 0;
      v43 = v135;
      if (v115)
      {
        v116 = 0;
      }

      else
      {
        v116 = 0x10000;
      }

      v28 = v114 | v116;
    }

    else
    {

      v28 = 2;
    }

    v117 = *(*(v4 + 16) + 32);
    *v8 = v117;
    v44(v8, v43, v11);
    v118 = v117;
    v13 = _dispatchPreconditionTest(_:)();
    v2(v8, v11);
  }

  while ((v13 & 1) == 0);
  v119 = *(v4 + 24);
  if (v119)
  {
    sqlite3_finalize(v119);
    *(v4 + 24) = 0;
  }

  return v28;
}

void *sub_100E642BC()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v35 = *(v3 + 104);
  (v35)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v10;
  v39 = _swiftEmptySetSingleton;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000033, 0x80000001015A7D50);
  v13 = v1;

  if (v1)
  {
    return v13;
  }

  v34[1] = 0;
  v14 = *(*(v12 + 16) + 32);
  *v6 = v14;
  v15 = v35;
  v35(v6, v8, v2);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v37(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_26;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v18 = inited + 3;
  inited[4] = 0;
  v34[0] = inited + 4;
  inited[5] = 1;
  v36 = inited;
  inited[2] = v12;

  swift_beginAccess();
  while (1)
  {
    v19 = *(*(v12 + 16) + 32);
    *v6 = v19;
    v15(v6, v8, v2);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    v37(v6, v2);
    if ((v19 & 1) == 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *v18 = 0;
    v18[1] = 0;
    v36[5] = 1;
    v21 = sqlite3_step(*(v12 + 24));
    if (v21 != 100)
    {
      break;
    }

    v22 = *(*(v12 + 16) + 32);
    *v6 = v22;
    v15(v6, v8, v2);

    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    v37(v6, v2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (sqlite3_column_type(*(v12 + 24), 0) == 5 || !sqlite3_column_text(*(v12 + 24), 0))
    {
    }

    else
    {
      v24 = String.init(cString:)();
      v26 = sub_100EA392C(v24, v25);

      if (v26)
      {
        v27 = v26;
        sub_100E7227C(&v38, v27, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
      }

      else
      {
      }

      v15 = v35;
    }
  }

  if (v21 && v21 != 101)
  {
    *v18 = v21;
    v28 = v34[0];
    *v34[0] = 0;
    *(v28 + 8) = 0;
  }

  v13 = v39;
  v29 = *(*(v12 + 16) + 32);
  *v6 = v29;
  v15(v6, v8, v2);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  v37(v6, v2);
  if ((v31 & 1) == 0)
  {
LABEL_27:
    __break(1u);
  }

  v32 = *(v12 + 24);
  if (v32)
  {
    sqlite3_finalize(v32);
    *(v12 + 24) = 0;
  }

  return v13;
}

void *sub_100E64754()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v35 = *(v3 + 104);
  (v35)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v10;
  v39 = _swiftEmptySetSingleton;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD00000000000003ALL, 0x80000001015A7D10);
  v13 = v1;

  if (v1)
  {
    return v13;
  }

  v34[1] = 0;
  v14 = *(*(v12 + 16) + 32);
  *v6 = v14;
  v15 = v35;
  v35(v6, v8, v2);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v37(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_26;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v18 = inited + 3;
  inited[4] = 0;
  v34[0] = inited + 4;
  inited[5] = 1;
  v36 = inited;
  inited[2] = v12;

  swift_beginAccess();
  while (1)
  {
    v19 = *(*(v12 + 16) + 32);
    *v6 = v19;
    v15(v6, v8, v2);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    v37(v6, v2);
    if ((v19 & 1) == 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *v18 = 0;
    v18[1] = 0;
    v36[5] = 1;
    v21 = sqlite3_step(*(v12 + 24));
    if (v21 != 100)
    {
      break;
    }

    v22 = *(*(v12 + 16) + 32);
    *v6 = v22;
    v15(v6, v8, v2);

    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    v37(v6, v2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (sqlite3_column_type(*(v12 + 24), 0) == 5 || !sqlite3_column_text(*(v12 + 24), 0))
    {
    }

    else
    {
      v24 = String.init(cString:)();
      v26 = sub_100EA392C(v24, v25);

      if (v26)
      {
        v27 = v26;
        sub_100E7227C(&v38, v27, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
      }

      else
      {
      }

      v15 = v35;
    }
  }

  if (v21 && v21 != 101)
  {
    *v18 = v21;
    v28 = v34[0];
    *v34[0] = 0;
    *(v28 + 8) = 0;
  }

  v13 = v39;
  v29 = *(*(v12 + 16) + 32);
  *v6 = v29;
  v15(v6, v8, v2);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  v37(v6, v2);
  if ((v31 & 1) == 0)
  {
LABEL_27:
    __break(1u);
  }

  v32 = *(v12 + 24);
  if (v32)
  {
    sqlite3_finalize(v32);
    *(v12 + 24) = 0;
  }

  return v13;
}

void sub_100E64BEC(void *a1)
{
  v53 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v54 = enum case for DispatchPredicate.onQueue(_:);
  v55 = v9;
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v52 = v3;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000043, 0x80000001015A5F60);

  if (v2)
  {
    return;
  }

  v48 = 0;
  v49 = v13;
  v14 = v53;
  v15 = [v53 zoneName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v11;
  v51 = v4 + 104;
  v18 = v17;

  v56 = v16;
  v57 = v18;

  v19._countAndFlagsBits = 58;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  v20 = v56;
  v21 = v57;
  v22 = v14;
  v23 = v49;
  v24 = [v22 ownerName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v56 = v20;
  v57 = v21;

  v28._countAndFlagsBits = v25;
  v29 = v50;
  v28._object = v27;
  String.append(_:)(v28);

  sub_1000285F8(v56, v57, 1);

  v30 = *(*(v23 + 16) + 32);
  *v7 = v30;
  v31 = v52;
  v55(v7, v54, v52);
  v32 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v29(v7, v31);
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

  v33 = *(v23 + 16);

  v34 = sub_10001CEC4(v33, v23);

  if (v34 != 101)
  {
    goto LABEL_7;
  }

  v35 = *(*(v23 + 16) + 32);
  *v7 = v35;
  v55(v7, v54, v31);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v29(v7, v31);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v56 = 0xD000000000000030;
    v57 = 0x80000001015A5FB0;
    v37 = [v53 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42 = v56;
    v43 = v57;
    sub_10089C7D0();
    swift_allocError();
    *v44 = v34;
    *(v44 + 8) = v42;
    *(v44 + 16) = v43;
    swift_willThrow();
    v45 = *(*(v23 + 16) + 32);
    *v7 = v45;
    v55(v7, v54, v31);
    v46 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v29(v7, v31);
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v47 = *(v23 + 24);
  if (v47)
  {
    sqlite3_finalize(v47);
    *(v23 + 24) = 0;
  }
}

void sub_100E650A8(void *a1)
{
  v49 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v50 = enum case for DispatchPredicate.onQueue(_:);
  v51 = v9;
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v48 = v4 + 104;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000051, 0x80000001015A5EC0);

  if (v2)
  {
    return;
  }

  v46 = 0;
  v14 = v49;
  v15 = [v49 zoneName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v11;
  v18 = v17;

  v52 = v16;
  v53 = v18;

  v19._countAndFlagsBits = 58;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  v20 = v52;
  v21 = v53;
  v22 = [v14 ownerName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v52 = v20;
  v53 = v21;

  v26._countAndFlagsBits = v23;
  v27 = v47;
  v26._object = v25;
  String.append(_:)(v26);

  sub_1000285F8(v52, v53, 1);

  v28 = *(*(v13 + 16) + 32);
  *v7 = v28;
  v51(v7, v50, v3);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v27(v7, v3);
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

  v30 = *(v13 + 16);

  v31 = sub_10001CEC4(v30, v13);

  if (v31 != 101)
  {
    goto LABEL_7;
  }

  v32 = *(*(v13 + 16) + 32);
  *v7 = v32;
  v51(v7, v50, v3);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v27(v7, v3);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v34._object = 0x80000001015A5F20;
    v34._countAndFlagsBits = 0xD000000000000037;
    String.append(_:)(v34);
    v35 = [v49 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40 = v52;
    v41 = v53;
    sub_10089C7D0();
    swift_allocError();
    *v42 = v31;
    *(v42 + 8) = v40;
    *(v42 + 16) = v41;
    swift_willThrow();
    v43 = *(*(v13 + 16) + 32);
    *v7 = v43;
    v51(v7, v50, v3);
    v44 = v43;
    LOBYTE(v43) = _dispatchPreconditionTest(_:)();
    v47(v7, v3);
    if (v43)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v45 = *(v13 + 24);
  if (v45)
  {
    sqlite3_finalize(v45);
    *(v13 + 24) = 0;
  }
}

void sub_100E65560(uint64_t a1)
{
  v3 = v1;
  v108 = a1;
  v4 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  __chkstk_darwin(v4 - 8);
  v106 = &v102 - v5;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v7 + 104);
  v110 = v7 + 104;
  v13(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v17 = *(v7 + 8);
  v16 = v7 + 8;
  v15 = v17;
  v17(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v111 = v12;
  v109 = v13;
  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  v18._object = 0x80000001015A40C0;
  v18._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x737265646C6F66;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x696669746E656469;
  v21._object = 0xEA00000000007265;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 1635017060;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x5F65726168736B63;
  v25._object = 0xEC00000061746164;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000011;
  v27._object = 0x80000001015A3BE0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000014;
  v29._object = 0x80000001015A3590;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 8236;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD00000000000002DLL;
  v31._object = 0x80000001015A3760;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000026;
  v33._object = 0x80000001015A33F0;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x656C746974;
  v35._object = 0xE500000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000012;
  v37._object = 0x80000001015A3810;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000025;
  v38._object = 0x80000001015AB7A0;
  String.append(_:)(v38);
  v39 = v117;
  v40 = v118;
  v41 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v43 = sub_10001CC04(v42, v39, v40);
  if (v2)
  {
    goto LABEL_6;
  }

  v44 = v43;
  v107 = v15;

  v45 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v47 = sub_10084DAE4(v108, *(v108 + *(v45 + 20)), *(v108 + *(v45 + 20) + 8));
  v49 = v48;
  v102 = v45;
  v50 = *(*(v44 + 16) + 32);
  *v10 = v50;
  v109(v10, v111, v6);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  v107(v10, v6);
  v105 = v16;
  if ((v50 & 1) == 0)
  {
    goto LABEL_29;
  }

  v52 = v6;

  sub_100DCCAB4(v47, v49, v44, 1);
  v104 = 0;
  sub_10002640C(v47, v49);
  v53 = type metadata accessor for CRLFolderDatabaseRow(0);
  v55 = v108;
  v54 = v109;
  v56 = (v108 + v53[5]);
  v57 = *v56;
  v58 = v56[1];
  v59 = *(*(v44 + 16) + 32);
  *v10 = v59;
  v54(v10, v111, v52);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  v103 = v52;
  v107(v10, v52);
  if ((v59 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v61 = v104;
  sub_100DCCAB4(v57, v58, v44, 2);
  sub_10089BB64(*(v55 + v53[6]), *(v55 + v53[6] + 8), 3);
  v104 = v53;
  v62 = v106;
  sub_10000BE14(v55 + v53[7], v106, &qword_1019F33E0, &unk_101468A80);
  v63 = type metadata accessor for CRLFolderIdentifier(0);
  if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
  {
    sub_10000CAAC(v62, &qword_1019F33E0, &unk_101468A80);
    v64 = 0;
    v65 = 0xF000000000000000;
    goto LABEL_15;
  }

  v66 = sub_10084DAE4(v62, *(v62 + *(v102 + 20)), *(v62 + *(v102 + 20) + 8));
  if (!v61)
  {
LABEL_14:
    v64 = v66;
    v65 = v67;
    sub_100026028(v62, type metadata accessor for CRLFolderIdentifier);
LABEL_15:
    sub_10089BB64(v64, v65, 4);
    sub_100025870(v64, v65);
    v71 = v104;
    v72 = v108;
    v73 = (v108 + v104[8]);
    sub_100034254(*v73, 5);
    sub_100034254(v73[2], 6);
    sub_100034254(v73[1], 7);
    sub_1000285F8(*(v72 + v71[9]), *(v72 + v71[9] + 8), 8);
    v74 = *(v72 + v71[10]);
    v75 = *(*(v44 + 16) + 32);
    *v10 = v75;
    v76 = v103;
    v77 = v109;
    v109(v10, v111, v103);
    v78 = v75;
    LOBYTE(v75) = _dispatchPreconditionTest(_:)();
    v107(v10, v76);
    if (v75)
    {
      swift_beginAccess();
      sqlite3_bind_double(*(v44 + 24), 9, v74);
      v79 = *(*(v44 + 16) + 32);
      *v10 = v79;
      v77(v10, v111, v76);
      v80 = v79;
      LOBYTE(v79) = _dispatchPreconditionTest(_:)();
      v107(v10, v76);
      if (v79)
      {
        v81 = *(v44 + 16);

        v82 = sub_10001CEC4(v81, v44);

        if (v82 == 101)
        {
          v83 = *(*(v44 + 16) + 32);
          *v10 = v83;
          v109(v10, v111, v76);
          v84 = v83;
          LOBYTE(v83) = _dispatchPreconditionTest(_:)();
          v107(v10, v76);
          if (v83)
          {
            v46 = *(v44 + 24);
            if (!v46)
            {
              goto LABEL_6;
            }

            goto LABEL_5;
          }

          goto LABEL_33;
        }

        v114 = 0xD000000000000017;
        v115 = 0x80000001015AB7D0;
        if (sqlite3_errstr(v82))
        {
          v85._countAndFlagsBits = String.init(cString:)();
          v116._countAndFlagsBits = 8250;
          v116._object = 0xE200000000000000;
          String.append(_:)(v85);

          String.append(_:)(v116);

          v86 = *(v41 + 32);
          *v10 = v86;
          v109(v10, v111, v76);
          v87 = v86;
          LOBYTE(v86) = _dispatchPreconditionTest(_:)();
          v107(v10, v76);
          if ((v86 & 1) == 0)
          {
            goto LABEL_35;
          }

          swift_beginAccess();
          v88 = sqlite3_extended_errcode(*(v41 + 16));
          if (sqlite3_errstr(v88))
          {
            v113._countAndFlagsBits = 11552;
            v113._object = 0xE200000000000000;
            v112 = v88;
            v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v89);

            v90._countAndFlagsBits = 8237;
            v90._object = 0xE200000000000000;
            String.append(_:)(v90);
            countAndFlagsBits = v113._countAndFlagsBits;
            object = v113._object;
            v93 = String.init(cString:)();
            v95 = v94;
            v113._countAndFlagsBits = countAndFlagsBits;
            v113._object = object;

            v96._countAndFlagsBits = v93;
            v96._object = v95;
            String.append(_:)(v96);

            String.append(_:)(v113);
          }
        }

        v97 = v114;
        v98 = v115;
        sub_10089C7D0();
        swift_allocError();
        *v99 = v82;
        *(v99 + 8) = v97;
        *(v99 + 16) = v98;
        swift_willThrow();
        v100 = *(*(v44 + 16) + 32);
        *v10 = v100;
        v109(v10, v111, v76);
        v101 = v100;
        LOBYTE(v100) = _dispatchPreconditionTest(_:)();
        v107(v10, v76);
        if ((v100 & 1) == 0)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        v46 = *(v44 + 24);
        if (!v46)
        {
          goto LABEL_6;
        }

LABEL_5:
        sqlite3_finalize(v46);
        *(v44 + 24) = 0;
        goto LABEL_6;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_100026028(v62, type metadata accessor for CRLFolderIdentifier);
  v68 = *(*(v44 + 16) + 32);
  *v10 = v68;
  v69 = v103;
  v109(v10, v111, v103);
  v70 = v68;
  v62 = _dispatchPreconditionTest(_:)();
  v66 = (v107)(v10, v69);
  if ((v62 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  v46 = *(v44 + 24);
  if (v46)
  {
    goto LABEL_5;
  }

LABEL_6:
}

void sub_100E660CC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v57 = enum case for DispatchPredicate.onQueue(_:);
  v58 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v55 = v13;
  v54 = a2;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v59 = 0x205443454C4553;
  v60 = 0xE700000000000000;
  v14._countAndFlagsBits = sub_100DCB998(0, 0xE000000000000000);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x204D4F524620;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x737265646C6F66;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x2820455245485720;
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x696669746E656469;
  v18._object = 0xEA00000000007265;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x293F203D20;
  v19._object = 0xE500000000000000;
  String.append(_:)(v19);
  v20 = v59;
  v21 = v60;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  if (v3)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v27 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v32, "Failed to fetch a folder row with error %@", 42, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  v24 = v23;

  v25 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v26 = sub_10084DAE4(v56, *(v56 + *(v25 + 20)), *(v56 + *(v25 + 20) + 8));
  v56 = v33;
  v34 = v26;
  v35 = *(*(v24 + 16) + 32);
  *v9 = v35;
  v58(v9, v57, v5);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v37 = v55;
  v55(v9, v5);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v38 = v34;
  v39 = v34;
  v40 = v56;
  sub_100DCCAB4(v39, v56, v24, 1);
  sub_10002640C(v38, v40);
  v41 = *(*(v24 + 16) + 32);
  *v9 = v41;
  v58(v9, v57, v5);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v37(v9, v5);
  if ((v41 & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v43 = swift_initStackObject();
  v43[4] = 0;
  v43[5] = 1;
  v43[2] = v24;
  v43[3] = 0;

  v44 = sub_10001E1D0();
  v45 = v54;
  if (v44)
  {
    sub_100A68440(v44, 0, v54);

    swift_setDeallocating();
    sub_10001E364(v43[3], v43[4], v43[5]);
    v46 = *(*(v24 + 16) + 32);
    *v9 = v46;
    v58(v9, v57, v5);
    v47 = v46;
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    v37(v9, v5);
    if (v46)
    {
      swift_beginAccess();
      v48 = *(v24 + 24);
      if (v48)
      {
        sqlite3_finalize(v48);
        *(v24 + 24) = 0;
      }

      return;
    }

    goto LABEL_21;
  }

  swift_setDeallocating();
  sub_10001E364(v43[3], v43[4], v43[5]);
  v49 = *(*(v24 + 16) + 32);
  *v9 = v49;
  v58(v9, v57, v5);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v37(v9, v5);
  if ((v49 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v51 = *(v24 + 24);
  if (v51)
  {
    sqlite3_finalize(v51);
    *(v24 + 24) = 0;
  }

  v52 = type metadata accessor for CRLFolderDatabaseRow(0);
  (*(*(v52 - 8) + 56))(v45, 1, 1, v52);
}

double sub_100E6680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E6695C(a3, sub_100EA635C, v11);

  return result;
}

double sub_100E6695C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLFolder(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLFolder);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLFolder);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA53F0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A66D0;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);

  return result;
}

uint64_t sub_100E66D14(uint64_t a1, unint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for CRLFolder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLFolderDatabaseRow(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_101A21CB8, &unk_1014B6598);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  sub_100E660CC(a2, &v47 - v16);
  v57 = 0;
  v58 = a2;
  v20 = *(v12 + 48);
  v19 = v12 + 48;
  v18 = v20;
  if (v20(v17, 1, v11) != 1)
  {
    v48 = v11;
    v49 = v19;
    v50 = v10;
    v52 = v18;
    v53 = v14;
    v54 = a1;
    v55 = a4;
    v56 = a3;
    v51 = objc_opt_self();
    v21 = [v51 _atomicIncrementAssertCount];
    v59 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v59, "Attempting to persist a new folder when an existing folder with the same id already exists", 90, 2u);
    StaticString.description.getter("saveNewFolder(_:completion:)", 28, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v30;
    v31 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 12940;
    v33 = v59;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "Attempting to persist a new folder when an existing folder with the same id already exists", 90, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter("saveNewFolder(_:completion:)", 28, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Attempting to persist a new folder when an existing folder with the same id already exists", 90, 2);
    v42 = String._bridgeToObjectiveC()();

    [v51 handleFailureInFunction:v40 file:v41 lineNumber:12940 isFatal:0 format:v42 args:v39];

    a3 = v56;
    a1 = v54;
    v14 = v53;
    v18 = v52;
    v10 = v50;
    v11 = v48;
  }

  if (v18(v17, 1, v11) == 1)
  {
    sub_10000C83C(v58, v10, type metadata accessor for CRLFolder);
    v43 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
    v44 = v57;
    sub_100A69064(v10, v43, v14);
    if (!v44)
    {
      sub_100E65560(v14);
      a3(0, 0);
      sub_100026028(v14, type metadata accessor for CRLFolderDatabaseRow);
      return sub_10000CAAC(v17, &qword_101A21CB8, &unk_1014B6598);
    }
  }

  else
  {
    sub_100EA541C();
    v45 = swift_allocError();
    swift_willThrow();
    v44 = v45;
  }

  sub_10000CAAC(v17, &qword_101A21CB8, &unk_1014B6598);
  swift_errorRetain();
  a3(v44, 1);
}

double sub_100E67418(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A21CA8, &unk_1014B6580);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10001E534(sub_100EA1E7C, v8, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue, &unk_1018A4D68, sub_100EA1F20, &unk_1018A4D80);

  return result;
}

uint64_t sub_100E6758C(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(a4, a5);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_1005B981C(a4, a5);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E6760C(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v61[1] = a3;
  v62 = a2;
  v3 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  __chkstk_darwin(v3 - 8);
  v74 = v61 - v4;
  v66 = type metadata accessor for CRLFolderIdentifier(0);
  v84 = *(v66 - 8);
  __chkstk_darwin(v66);
  v83 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for CRLFolderCRDTData(0);
  __chkstk_darwin(v81);
  v73 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = v61 - v8;
  __chkstk_darwin(v9);
  v11 = v61 - v10;
  v12 = sub_1005B981C(&qword_101A21CB0, &qword_1014B6590);
  __chkstk_darwin(v12 - 8);
  v14 = v61 - v13;
  v15 = type metadata accessor for CRLFolder(0);
  v69 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CRLFolderDatabaseRow(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v61 - v23;
  v25 = sub_100E68050();
  v26 = v62;
  v85 = v24;
  v82 = v18;
  v67 = v17;
  v79 = v15;
  v65 = v11;
  v27 = v25[2];
  if (v27)
  {
    v28 = v19;
    v29 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v61[0] = v25;
    v30 = v25 + v29;
    v77 = (v69 + 56);
    v76 = *(v28 + 72);
    v63 = (v84 + 7);
    v75 = (v69 + 48);
    v84 = _swiftEmptyArrayStorage;
    v68 = xmmword_10146C6B0;
    v31 = v83;
    v32 = v80;
    v33 = v85;
    v64 = v21;
    v78 = v14;
    do
    {
      sub_10000C83C(v30, v33, type metadata accessor for CRLFolderDatabaseRow);
      sub_10000C83C(v33, v21, type metadata accessor for CRLFolderDatabaseRow);
      v34 = v21;
      v35 = v82;
      sub_100024E98(*(v34 + v82[5]), *(v34 + v82[5] + 8));
      sub_1000066D0(&qword_1019F4968, type metadata accessor for CRLFolderCRDTData, byte_10146C808);
      CRDT.init(serializedData:)();
      v36 = v65;
      sub_100025668(v32, v65, type metadata accessor for CRLFolderCRDTData);
      sub_10000C83C(v34, v31, type metadata accessor for CRLFolderIdentifier);
      sub_10000C83C(v36, v73, type metadata accessor for CRLFolderCRDTData);
      sub_10000BE14(v34 + v35[7], v74, &qword_1019F33E0, &unk_101468A80);
      v37 = (v34 + v35[6]);
      v38 = v37[1];
      if (v38 >> 60 == 15)
      {
        v72 = 0;
        v39 = v78;
      }

      else
      {
        v40 = *v37;
        sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
        sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
        sub_100024E98(v40, v38);
        v41 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        v39 = v78;
        v72 = v41;
        sub_100025870(v40, v38);
        v35 = v82;
      }

      sub_100026028(v36, type metadata accessor for CRLFolderCRDTData);
      v42 = v35[8];
      v21 = v64;
      v43 = &v64[v42];
      v44 = v43[32];
      v45 = v79;
      v46 = v79[5];
      v47 = *v63;
      v48 = *v43;
      v71 = *(v43 + 1);
      v70 = v48;
      v47(v39 + v46, 1, 1, v66);
      v49 = v45[6];
      *(v39 + v49) = 0;
      sub_100025668(v83, v39, type metadata accessor for CRLFolderIdentifier);
      sub_100025668(v73, v39 + v45[7], type metadata accessor for CRLFolderCRDTData);
      sub_10002C638(v74, v39 + v46, &qword_1019F33E0, &unk_101468A80);
      *(v39 + v49) = v72;
      v50 = v39 + v45[8];
      v51 = v71;
      *v50 = v70;
      *(v50 + 16) = v51;
      *(v50 + 32) = v44;
      sub_100026028(v21, type metadata accessor for CRLFolderDatabaseRow);
      (*v77)(v39, 0, 1, v45);
      v33 = v85;
      sub_100026028(v85, type metadata accessor for CRLFolderDatabaseRow);
      if ((*v75)(v39, 1, v45) == 1)
      {
        sub_10000CAAC(v39, &qword_101A21CB0, &qword_1014B6590);
        v31 = v83;
        v32 = v80;
      }

      else
      {
        v52 = v67;
        sub_100025668(v39, v67, type metadata accessor for CRLFolder);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v80;
        if (isUniquelyReferenced_nonNull_native)
        {
          v54 = v84;
        }

        else
        {
          v54 = sub_100B37428(0, v84[2] + 1, 1, v84);
        }

        v56 = v54[2];
        v55 = v54[3];
        v57 = v69;
        if (v56 >= v55 >> 1)
        {
          v59 = sub_100B37428((v55 > 1), v56 + 1, 1, v54);
          v57 = v69;
          v54 = v59;
        }

        v54[2] = v56 + 1;
        v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v84 = v54;
        sub_100025668(v52, v54 + v58 + *(v57 + 72) * v56, type metadata accessor for CRLFolder);
        v31 = v83;
        v33 = v85;
      }

      v30 += v76;
      --v27;
    }

    while (v27);

    v62(v84, 0);
  }

  else
  {

    v26(_swiftEmptyArrayStorage, 0);
  }
}

void *sub_100E68050()
{
  v2 = sub_1005B981C(&qword_101A21CB8, &unk_1014B6598);
  __chkstk_darwin(v2 - 8);
  v4 = &v59 - v3;
  v66 = type metadata accessor for CRLFolderDatabaseRow(0);
  v5 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v59 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v13 = v14;
  v15 = *(v10 + 104);
  v68 = enum case for DispatchPredicate.onQueue(_:);
  v67 = v15;
  v15(v13, v11);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v70 = *(v10 + 8);
  v70(v13, v9);
  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

  v69 = v10 + 104;
  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v71 = 0x205443454C4553;
  v72 = 0xE700000000000000;
  v17._countAndFlagsBits = sub_100DCB998(0, 0xE000000000000000);
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x204D4F524620;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x737265646C6F66;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20 = v71;
  v21 = v72;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  v65 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v24 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = v27;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v26;
      *(inited + 40) = v28;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v29, "Failed to fetch all folder rows with error %@", 45, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return swift_willThrow();
    }

LABEL_29:
    swift_once();
    goto LABEL_4;
  }

  v31 = v23;

  v32 = *(*(v31 + 16) + 32);
  *v13 = v32;
  v33 = v68;
  v34 = v67;
  v67(v13, v68, v9);
  v35 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v70(v13, v9);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v61 = v5;
  type metadata accessor for SQLiteRowIterator();
  v36 = swift_initStackObject();
  v36[3] = 0;
  v37 = v36 + 3;
  v36[4] = 0;
  v60 = v36 + 4;
  v36[5] = 1;
  v36[2] = v31;

  swift_beginAccess();
  v38 = v33;
  v39 = *(*(v31 + 16) + 32);
  *v13 = v39;
  v34(v13, v38, v9);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v70(v13, v9);
  if ((v39 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v41 = (v61 + 48);
  v62 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v37 = 0;
    v36[4] = 0;
    v36[5] = 1;
    v42 = sqlite3_step(*(v31 + 24));
    if (v42 != 100)
    {
      break;
    }

    v43 = swift_retain_n();
    sub_100A68440(v43, 0, v4);
    if ((*v41)(v4, 1, v66) == 1)
    {
      sub_10000CAAC(v4, &qword_101A21CB8, &unk_1014B6598);
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.boardStore;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v45, "Failed to convert a raw db row into a folder row", 48, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v48 = v63;
      sub_100025668(v4, v63, type metadata accessor for CRLFolderDatabaseRow);
      sub_10000C83C(v48, v64, type metadata accessor for CRLFolderDatabaseRow);
      v49 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_100B38FA0(0, v49[2] + 1, 1, v49);
      }

      v50 = v49;
      v51 = v49[2];
      v62 = v50;
      v52 = v50[3];
      v59 = v51 + 1;
      if (v51 >= v52 >> 1)
      {
        v62 = sub_100B38FA0((v52 > 1), v51 + 1, 1, v62);
      }

      sub_100026028(v63, type metadata accessor for CRLFolderDatabaseRow);
      v53 = v62;
      v62[2] = v59;
      sub_100025668(v64, v53 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v51, type metadata accessor for CRLFolderDatabaseRow);
    }

    v46 = *(*(v31 + 16) + 32);
    *v13 = v46;
    v67(v13, v68, v9);
    v47 = v46;
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    v70(v13, v9);
    if ((v46 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v54 = v67;
  if (v42 && v42 != 101)
  {
    *v37 = v42;
    v55 = v60;
    *v60 = 0;
    v55[1] = 0;
  }

  v56 = *(*(v31 + 16) + 32);
  *v13 = v56;
  v54(v13, v68, v9);
  v57 = v56;
  LOBYTE(v56) = _dispatchPreconditionTest(_:)();
  v70(v13, v9);
  if ((v56 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v58 = *(v31 + 24);
  if (v58)
  {
    sqlite3_finalize(v58);
    *(v31 + 24) = 0;
  }

  return v62;
}

double sub_100E68974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E68B38(a3, sub_100EA56E0, v11);

  return result;
}

uint64_t sub_100E68AC4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
    return CheckedContinuation.resume(returning:)();
  }
}

double sub_100E68B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLFolder(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLFolder);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLFolder);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA59FC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6A40;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);

  return result;
}

uint64_t sub_100E68EF0(uint64_t a1, unint64_t a2, void (*a3)(void, void))
{
  v5 = sub_1005B981C(&qword_101A21CB8, &unk_1014B6598);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  sub_100E660CC(a2, &v35 - v6);
  v8 = type metadata accessor for CRLFolderDatabaseRow(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36, "Attempting to update a folder when it does not already exist, in practice this will create a new folder entry", 109, 2u);
    StaticString.description.getter("updateFolder(_:completion:)", 27, 2);
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v20;
    v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 13050;
    v23 = v36;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "Attempting to update a folder when it does not already exist, in practice this will create a new folder entry", 109, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to update a folder when it does not already exist, in practice this will create a new folder entry");
    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter("updateFolder(_:completion:)", 27, 2);
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Attempting to update a folder when it does not already exist, in practice this will create a new folder entry", 109, 2);
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:13050 isFatal:1 format:v32 args:v29];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v33, v34);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_100E69414(a2, 0);
    a3(0, 0);
    return sub_10000CAAC(v7, &qword_101A21CB8, &unk_1014B6598);
  }

  return result;
}

void sub_100E69414(unint64_t a1, int a2)
{
  v49 = a2;
  v4 = sub_1005B981C(&qword_101A21CB0, &qword_1014B6590);
  __chkstk_darwin(v4 - 8);
  v50 = &v44 - v5;
  v6 = sub_1005B981C(&qword_101A21CB8, &unk_1014B6598);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for CRLFolderDatabaseRow(0);
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v55 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = &v44 - v12;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for CRLFolder(0);
  v51 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  __chkstk_darwin(v22);
  v24 = &v44 - v23;
  v25 = v8;
  v26 = v8;
  v27 = a1;
  v28 = a1;
  v29 = v2;
  v30 = v56;
  sub_100E660CC(v28, v26);
  if (v30)
  {
    return;
  }

  v45 = v21;
  v46 = v16;
  v31 = v51;
  v32 = v52;
  v47 = v18;
  v48 = v24;
  v33 = v27;
  v34 = v29;
  v56 = 0;
  if ((*(v53 + 48))(v25, 1, v54) == 1)
  {
    sub_10000CAAC(v25, &qword_101A21CB8, &unk_1014B6598);
    v35 = v55;
    v36 = v48;
  }

  else
  {
    v37 = v15;
    sub_100025668(v25, v15, type metadata accessor for CRLFolderDatabaseRow);
    sub_10000C83C(v15, v32, type metadata accessor for CRLFolderDatabaseRow);
    v38 = v50;
    sub_1006952B0(v32, v50);
    v39 = (*(v31 + 48))(v38, 1, v46);
    v36 = v48;
    if (v39 == 1)
    {
      sub_100026028(v15, type metadata accessor for CRLFolderDatabaseRow);
      sub_10000CAAC(v38, &qword_101A21CB0, &qword_1014B6590);
      v35 = v55;
    }

    else
    {
      v40 = v45;
      sub_100025668(v38, v45, type metadata accessor for CRLFolder);
      v35 = v55;
      if (v49 != 2)
      {
        sub_10069585C(v33, v36);
        sub_100026028(v40, type metadata accessor for CRLFolder);
        sub_100026028(v37, type metadata accessor for CRLFolderDatabaseRow);
        goto LABEL_9;
      }

      sub_100026028(v40, type metadata accessor for CRLFolder);
      sub_100026028(v37, type metadata accessor for CRLFolderDatabaseRow);
    }
  }

  sub_10000C83C(v33, v36, type metadata accessor for CRLFolder);
LABEL_9:
  v41 = v47;
  sub_10000C83C(v36, v47, type metadata accessor for CRLFolder);
  v42 = *(v34 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v43 = v56;
  sub_100A69064(v41, v42, v35);
  if (!v43)
  {
    sub_100E65560(v35);
    sub_100026028(v35, type metadata accessor for CRLFolderDatabaseRow);
  }

  sub_100026028(v36, type metadata accessor for CRLFolder);
}

void sub_100E69940(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v42 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v40 = v5;
  v41 = v13;
  strcpy(v44, "DELETE FROM ");
  BYTE5(v44[1]) = 0;
  HIWORD(v44[1]) = -5120;
  v14._countAndFlagsBits = sub_100DD8F2C(a1);
  countAndFlagsBits = v14._countAndFlagsBits;
  object = v14._object;
  String.append(_:)(v14);

  v17._countAndFlagsBits = 59;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18 = v44[0];
  v19 = v44[1];
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, v18, v19);

  if (v2)
  {
    return;
  }

  v39 = countAndFlagsBits;
  v22 = *(*(v21 + 16) + 32);
  *v9 = v22;
  v23 = v40;
  v43(v9, v42, v40);
  v24 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = v41;
  v41(v9, v23);
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = *(v21 + 16);

  v27 = sub_10001CEC4(v26, v21);

  if (v27 != 101)
  {
    goto LABEL_7;
  }

  object = *(*(v21 + 16) + 32);
  *v9 = object;
  v43(v9, v42, v23);
  v28 = object;
  v29 = _dispatchPreconditionTest(_:)();
  v25(v9, v23);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v44[0] = 0xD000000000000021;
    v44[1] = 0x80000001015A9970;
    v30._countAndFlagsBits = v39;
    v30._object = object;
    String.append(_:)(v30);

    v31 = v44[0];
    v32 = v44[1];
    sub_10089C7D0();
    swift_allocError();
    *v33 = v27;
    *(v33 + 8) = v31;
    *(v33 + 16) = v32;
    swift_willThrow();
    v34 = *(*(v21 + 16) + 32);
    *v9 = v34;
    v43(v9, v42, v23);
    v35 = v34;
    v36 = _dispatchPreconditionTest(_:)();
    v41(v9, v23);
    if (v36)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v37 = *(v21 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v21 + 24) = 0;
  }
}

uint64_t sub_100E69D38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A341C0, &unk_1014B1D00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = *(*a1 + 120);
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v8, v4);
  v9 = (a1 + *(*a1 + 128));
  v10 = *(v9 + 5);
  v18 = *(v9 + 4);
  v11 = *(v9 + 48);
  v12 = *v9;
  v16 = v9[1];
  v17 = v12;
  swift_beginAccess();
  sub_1005B981C(&unk_101A22860, &unk_1014B6550);
  sub_10001A2F8(&qword_101A228C0, &unk_101A22860, &unk_1014B6550, &protocol conformance descriptor for CRDictionary<A, B>);
  LOBYTE(v8) = Capsule.merge<A>(_:)();
  swift_endAccess();
  v13 = v2 + *(*v2 + 128);
  v14 = v16;
  *v13 = v17;
  *(v13 + 16) = v14;
  *(v13 + 32) = v18;
  *(v13 + 40) = v10;
  *(v13 + 48) = v11;
  sub_100E69F7C();
  result = (*(v5 + 8))(v7, v4);
  *(v2 + *(*v2 + 136)) = (*(v2 + *(*v2 + 136)) | v8) & 1;
  return result;
}

unint64_t sub_100E69F7C()
{
  result = sub_10001FF1C();
  v2 = (v0 + *(*v0 + 128));
  if (result >= *v2)
  {
    *v2 = 0x1000000000000;
    if (result >= v2[2])
    {
      v2[2] = 0x2000400000000;
    }

    if (result >= v2[4])
    {
      v3 = result;
      v4 = sub_100E6A044();
      result = v3;
      v2[4] = v4;
    }
  }

  if (result >= v2[1])
  {
    v2[1] = 0x1000000000000;
    if (result >= v2[3])
    {
      v2[3] = 0x2000400000000;
    }
  }

  return result;
}

unint64_t sub_100E6A044()
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = (v0 + *(*v0 + 128));
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = inited + 32;
  v5 = &type metadata for UInt64;
  v6 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  v79 = v2;
  if (sub_10001FF1C() >= v3)
  {
LABEL_28:

    goto LABEL_30;
  }

  v76 = objc_opt_self();
  LODWORD(v5) = [v76 _atomicIncrementAssertCount];
  v80 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v80, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForBucket is higher than current: %{public}d", 126, 2u);
  StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
  v77 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCRDTMap.swift", 81, 2);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_73;
  }

LABEL_3:
  v6 = static OS_os_log.crlAssert;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_10146CA70;
  *(v12 + 56) = &type metadata for Int32;
  *(v12 + 64) = &protocol witness table for Int32;
  *(v12 + 32) = v5;
  v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v12 + 96) = v13;
  v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v12 + 104) = v14;
  *(v12 + 72) = v77;
  *(v12 + 136) = &type metadata for String;
  v15 = sub_1000053B0();
  *(v12 + 112) = v9;
  *(v12 + 120) = v11;
  *(v12 + 176) = &type metadata for UInt;
  *(v12 + 184) = &protocol witness table for UInt;
  *(v12 + 144) = v15;
  *(v12 + 152) = 394;
  v16 = v80;
  *(v12 + 216) = v13;
  *(v12 + 224) = v14;
  *(v12 + 192) = v16;
  v17 = v77;
  v18 = v16;
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v6, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v6, &_mh_execute_header, v20, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForBucket is higher than current: %{public}d", 126, 2, inited);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v2 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v77 = inited;
  v21 = *(inited + 16);
  if (v21)
  {
    inited = 0;
    v11 = 40;
    while (1)
    {
      v9 = sub_100020E58((v4 + 40 * inited), *(v4 + 40 * inited + 24));
      v22 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v23 = *v2;
      v24 = *(v22 + 16);
      v25 = __OFADD__(*v2, v24);
      v26 = *v2 + v24;
      if (v25)
      {
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
        swift_once();
        goto LABEL_3;
      }

      v9 = v5[4];
      if (v9 >= v26)
      {
        goto LABEL_20;
      }

      if (v9 + 0x4000000000000000 < 0)
      {
        goto LABEL_69;
      }

      v6 = v5[5];
      if (2 * v9 > v26)
      {
        v26 = 2 * v9;
      }

      v5[4] = v26;
      if ((v26 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_70;
      }

      v27 = v22;
      v28 = swift_slowAlloc();
      v29 = v28;
      v5[5] = v28;
      if (v6)
      {
        break;
      }

      v22 = v27;
      if (!v29)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v31 = *(v22 + 16);
      if (v31)
      {
        v32 = (v22 + 32);
        v33 = *v2;
        while (1)
        {
          v34 = *v32++;
          *&v29[8 * v33] = v34;
          v33 = *v2 + 1;
          if (__OFADD__(*v2, 1))
          {
            break;
          }

          *v2 = v33;
          if (!--v31)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_5:

      if (++inited == v21)
      {
        goto LABEL_29;
      }
    }

    if (v28 != v6 || v28 >= &v6[8 * v23])
    {
      memmove(v28, v6, 8 * v23);
    }

    v9 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v22 = v27;
LABEL_20:
    v29 = v5[5];
    if (!v29)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCRDTMap.swift", 81, 2);
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForBucket is higher than current: %{public}d", 126, 2);
  v38 = String._bridgeToObjectiveC()();

  [v76 handleFailureInFunction:v36 file:v37 lineNumber:394 isFatal:0 format:v38 args:v35];

  v2 = v79;
  v5 = &type metadata for UInt64;
  v6 = &protocol witness table for UInt64;
LABEL_30:
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146C6B0;
  v40 = v2[4];
  *(v39 + 32) = v40;
  v4 = v39 + 32;
  *(v39 + 56) = v5;
  *(v39 + 64) = v6;
  if (sub_10001FF1C() >= v40)
  {
LABEL_58:
  }

  else
  {
    v76 = objc_opt_self();
    v41 = [v76 _atomicIncrementAssertCount];
    v80 = [objc_allocWithZone(NSString) init];
    sub_100604538(v39, &v80, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 132, 2u);
    StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCRDTMap.swift", 81, 2);
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlAssert;
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_10146CA70;
    *(v47 + 56) = &type metadata for Int32;
    *(v47 + 64) = &protocol witness table for Int32;
    *(v47 + 32) = v41;
    v48 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v47 + 96) = v48;
    v49 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v47 + 104) = v49;
    *(v47 + 72) = v78;
    *(v47 + 136) = &type metadata for String;
    v50 = sub_1000053B0();
    *(v47 + 112) = v44;
    *(v47 + 120) = v46;
    *(v47 + 176) = &type metadata for UInt;
    *(v47 + 184) = &protocol witness table for UInt;
    *(v47 + 144) = v50;
    *(v47 + 152) = 395;
    v51 = v80;
    *(v47 + 216) = v48;
    *(v47 + 224) = v49;
    *(v47 + 192) = v51;
    v52 = v78;
    v53 = v51;
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v55 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v55, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 132, 2, v39);

    type metadata accessor for __VaListBuilder();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v2 = v5 + 3;
    v5[4] = 0;
    v5[5] = 0;
    v77 = v39;
    v56 = *(v39 + 16);
    if (v56)
    {
      inited = 0;
      v11 = 40;
      while (1)
      {
        v9 = sub_100020E58((v4 + 40 * inited), *(v4 + 40 * inited + 24));
        v57 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v58 = *v2;
        v59 = *(v57 + 16);
        v25 = __OFADD__(*v2, v59);
        v60 = *v2 + v59;
        if (v25)
        {
          goto LABEL_68;
        }

        v9 = v5[4];
        if (v9 >= v60)
        {
          goto LABEL_50;
        }

        if (v9 + 0x4000000000000000 < 0)
        {
          goto LABEL_71;
        }

        v6 = v5[5];
        if (2 * v9 > v60)
        {
          v60 = 2 * v9;
        }

        v5[4] = v60;
        if ((v60 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_72;
        }

        v61 = v57;
        v62 = swift_slowAlloc();
        v63 = v62;
        v5[5] = v62;
        if (v6)
        {
          break;
        }

        v57 = v61;
        if (!v63)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v65 = *(v57 + 16);
        if (v65)
        {
          v66 = (v57 + 32);
          v67 = *v2;
          do
          {
            v68 = *v66++;
            *&v63[8 * v67] = v68;
            v67 = *v2 + 1;
            if (__OFADD__(*v2, 1))
            {
              goto LABEL_66;
            }

            *v2 = v67;
          }

          while (--v65);
        }

        if (++inited == v56)
        {
          goto LABEL_59;
        }
      }

      if (v62 != v6 || v62 >= &v6[8 * v58])
      {
        memmove(v62, v6, 8 * v58);
      }

      v9 = v5;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v57 = v61;
LABEL_50:
      v63 = v5[5];
      if (!v63)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v69 = __VaListBuilder.va_list()();
    StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
    v70 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCRDTMap.swift", 81, 2);
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 132, 2);
    v72 = String._bridgeToObjectiveC()();

    [v76 handleFailureInFunction:v70 file:v71 lineNumber:395 isFatal:0 format:v72 args:v69];

    v2 = v79;
    v5 = &type metadata for UInt64;
    v6 = &protocol witness table for UInt64;
  }

  v73 = v2[4];
  if ((v2[2] != 0x2000400000000 || v2[3] != 0x2000400000000) && v73 < 0x2000400000000)
  {
    v73 = 0x2000400000000;
  }

  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_10146C6B0;
  *(v74 + 56) = v5;
  *(v74 + 64) = v6;
  *(v74 + 32) = v73;

  return v73;
}

uint64_t sub_100E6AB44(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for CRKeyPath();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = _s6CellIDVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  v14 = *v2;
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  v34 = a2;
  UUID.hash(into:)();
  v15 = Hasher._finalize()();
  v32 = v14 + 56;
  v33 = v14;
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v30 = ~v16;
    v31 = *(v11 + 72);
    v18 = (v27 + 8);
    while (1)
    {
      v19 = v31 * v17;
      sub_10000C83C(*(v33 + 48) + v31 * v17, v13, _s6CellIDVMa);
      sub_1000066D0(&unk_101A0B020, _s6CellIDVMa, byte_1014D2118);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_1000066D0(&unk_101A2C5A0, &type metadata accessor for CRKeyPath, &protocol conformance descriptor for CRKeyPath);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *v18;
      (*v18)(v6, v4);
      v21(v9, v4);
      sub_100026028(v13, _s6CellIDVMa);
      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v30;
      if (((*(v32 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(v34, _s6CellIDVMa);
    sub_10000C83C(*(v33 + 48) + v19, v29, _s6CellIDVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v22 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v34;
    sub_10000C83C(v34, v13, _s6CellIDVMa);
    v35 = *v22;
    sub_100E7B548(v13, v17, isUniquelyReferenced_nonNull_native);
    *v22 = v35;
    sub_100025668(v24, v29, _s6CellIDVMa);
    return 1;
  }
}

uint64_t sub_100E6AF38(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100E7B90C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100E6B218(Swift::Int *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *v2;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = __CocoaSet.member(for:)();

    if (v14)
    {

      v52 = v14;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      result = 0;
      *a1 = v51;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v39 = sub_100E72BE0(v13, result + 1);
        v51 = v39;
        v40 = *(v39 + 16);
        if (*(v39 + 24) <= v40)
        {
          sub_100E7400C(v40 + 1);
          v39 = v51;
        }

        sub_100E7ACAC(v41, v39);

        *v3 = v39;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v42 = v2;
    v43 = a1;
    v16 = &v42 - v11;
    Hasher.init(_seed:)();
    v17 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 32))(ObjectType, v17);
    sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v20 = *(v7 + 8);
    v19 = v7 + 8;
    v48 = v20;
    v49 = v16;
    v20(v16, v6);
    v21 = Hasher._finalize()();
    v22 = -1 << *(v12 + 32);
    v23 = v21 & ~v22;
    v47 = v12 + 56;
    if ((*(v12 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v44 = ~v22;
      v45 = v9;
      v46 = v12;
      v24 = v49;
      while (1)
      {
        v50 = v23;
        v25 = *(*(*(v12 + 48) + 8 * v23) + 24);
        v26 = a2;
        v27 = swift_getObjectType();
        v28 = v19;
        v29 = v6;
        v30 = *(v25 + 32);

        v31 = v27;
        a2 = v26;
        v30(v31, v25);
        v6 = v29;
        v19 = v28;
        v32 = v45;
        v33 = *(v26 + 24);
        v34 = swift_getObjectType();
        (*(v33 + 32))(v34, v33);
        LOBYTE(v33) = static UUID.== infix(_:_:)();

        v35 = v48;
        v48(v32, v6);
        v35(v24, v6);
        if (v33)
        {
          break;
        }

        v23 = (v50 + 1) & v44;
        v12 = v46;
        if (((*(v47 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v43 = *(*(v46 + 48) + 8 * v50);

      return 0;
    }

    else
    {
LABEL_11:
      v36 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *v36;

      sub_100E7BBD4(v38, v23, isUniquelyReferenced_nonNull_native);
      *v36 = v51;
      *v43 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100E6B644(uint64_t a1, Swift::UInt a2, char a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_13;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_13;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_100E7BF20(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
  v14 = a3;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

uint64_t sub_100E6B798(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF60, &unk_10148EB20);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        sub_1007A96C8();
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7C0C4(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6B98C(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFD8, &qword_1014B66E0);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        type metadata accessor for CRLWPWritingDirection(0);
        sub_1000066D0(&unk_1019FFFE0, type metadata accessor for CRLWPWritingDirection, aA_25);
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7C350(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6BBB4(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF70, &unk_10148EB10);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        type metadata accessor for CRLWPParagraphAlignment(0);
        sub_1000066D0(&qword_1019FFF78, type metadata accessor for CRLWPParagraphAlignment, byte_1014675F0);
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7C610(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6BDDC(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 80);
  v114 = *(a2 + 64);
  v115 = v6;
  v116 = *(a2 + 96);
  v7 = *(a2 + 16);
  v110 = *a2;
  v111 = v7;
  v8 = *(a2 + 48);
  v112 = *(a2 + 32);
  v113 = v8;
  v51 = *v2;
  Hasher.init(_seed:)();
  v9 = *(a2 + 96);
  if (v9)
  {
    v100 = v114;
    v101 = v115;
    v102 = v116;
    v96 = v110;
    v97 = v111;
    v99 = v113;
    v98 = v112;
    Hasher._combine(_:)(1u);
    v107 = v114;
    v108 = v115;
    v109 = v116;
    v103 = v110;
    v104 = v111;
    v106 = v113;
    v105 = v112;
    sub_1007A971C(&v103, &v69);
    sub_1007A9778();
    dispatch thunk of Hashable.hash(into:)();
    v73 = v100;
    v74 = v101;
    v75 = v102;
    v69 = v96;
    v70 = v97;
    v71 = v98;
    v72 = v99;
    sub_1007A97CC(&v69);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = Hasher._finalize()();
  v11 = -1 << *(v51 + 32);
  v12 = v10 & ~v11;
  if (((*(v51 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v103 = *v3;
    sub_10000BE14(a2, &v69, &qword_1019FFF80, &qword_101489000);
    sub_100E7C8D0(a2, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v103;
    v33 = *(a2 + 80);
    a1[4] = *(a2 + 64);
    a1[5] = v33;
    a1[6] = *(a2 + 96);
    v34 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v34;
    v35 = *(a2 + 48);
    result = 1;
    a1[2] = *(a2 + 32);
    a1[3] = v35;
    return result;
  }

  v49 = v2;
  v50 = ~v11;
  while (1)
  {
    v13 = (*(v51 + 48) + 112 * v12);
    v15 = v13[1];
    v14 = v13[2];
    v103 = *v13;
    v104 = v15;
    v105 = v14;
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[5];
    v109 = v13[6];
    v108 = v18;
    v107 = v17;
    v106 = v16;
    v19 = v13[3];
    v92 = v13[2];
    v93 = v19;
    v20 = v13[5];
    v94 = v13[4];
    v95 = v20;
    v21 = v13[1];
    v90 = *v13;
    v91 = v21;
    v22 = v109;
    v23 = *(a2 + 16);
    v84 = *a2;
    v85 = v23;
    v24 = *(a2 + 32);
    v25 = *(a2 + 48);
    v26 = *(a2 + 80);
    v88 = *(a2 + 64);
    v89 = v26;
    v86 = v24;
    v87 = v25;
    v27 = *(a2 + 104);
    if (!v109)
    {
      break;
    }

    v71 = v92;
    v72 = v93;
    v73 = v94;
    v74 = v95;
    v69 = v90;
    v70 = v91;
    v75 = v109;
    v96 = v90;
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v101 = v95;
    v100 = v94;
    v102 = v109;
    if (!v9)
    {
      v66 = v73;
      v67 = v74;
      v68 = v75;
      v62 = v69;
      v63 = v70;
      v64 = v71;
      v65 = v72;
      sub_10000BE14(a2, v61, &qword_1019FFF80, &qword_101489000);
      sub_10000BE14(&v103, v61, &qword_1019FFF80, &qword_101489000);
      sub_10000BE14(&v69, v61, &qword_1019FFF80, &qword_101489000);
      sub_1007A97CC(&v62);
      goto LABEL_13;
    }

    v28 = *(a2 + 48);
    v55 = *(a2 + 32);
    v56 = v28;
    v29 = *(a2 + 80);
    v57 = *(a2 + 64);
    v58 = v29;
    v30 = *(a2 + 16);
    v53 = *a2;
    v54 = v30;
    *&v59 = v9;
    *(&v59 + 1) = v27;
    sub_10000BE14(a2, v52, &qword_1019FFF80, &qword_101489000);
    sub_10000BE14(&v103, v52, &qword_1019FFF80, &qword_101489000);
    sub_10000BE14(&v69, v52, &qword_1019FFF80, &qword_101489000);
    sub_1007A9820();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v60[4] = v57;
    v60[5] = v58;
    v60[6] = v59;
    v60[0] = v53;
    v60[1] = v54;
    v60[2] = v55;
    v60[3] = v56;
    sub_1007A97CC(v60);
    v61[4] = v100;
    v61[5] = v101;
    v61[6] = v102;
    v61[0] = v96;
    v61[1] = v97;
    v61[2] = v98;
    v61[3] = v99;
    sub_1007A97CC(v61);
    v64 = v92;
    v65 = v93;
    v66 = v94;
    v67 = v95;
    v62 = v90;
    v63 = v91;
    v68 = v22;
    sub_10000CAAC(&v62, &qword_1019FFF80, &qword_101489000);
    if (v31)
    {
      v37 = a2;
      goto LABEL_19;
    }

LABEL_14:
    v12 = (v12 + 1) & v50;
    if (((*(v51 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      v3 = v49;
      goto LABEL_17;
    }

    v9 = *(a2 + 96);
  }

  if (v9)
  {
    sub_10000BE14(a2, &v69, &qword_1019FFF80, &qword_101489000);
    sub_10000BE14(&v103, &v69, &qword_1019FFF80, &qword_101489000);
LABEL_13:
    v71 = v92;
    v72 = v93;
    v73 = v94;
    v74 = v95;
    v69 = v90;
    v70 = v91;
    v75 = v22;
    v76 = v84;
    v77 = v85;
    v80 = v88;
    v81 = v89;
    v78 = v86;
    v79 = v87;
    v82 = v9;
    v83 = v27;
    sub_10000CAAC(&v69, &qword_1019FFF90, &unk_10148E930);
    goto LABEL_14;
  }

  v71 = v92;
  v72 = v93;
  v73 = v94;
  v74 = v95;
  v69 = v90;
  v70 = v91;
  *&v75 = 0;
  *(&v75 + 1) = *(&v109 + 1);
  sub_10000BE14(&v103, &v96, &qword_1019FFF80, &qword_101489000);
  v37 = &v69;
LABEL_19:
  sub_10000CAAC(v37, &qword_1019FFF80, &qword_101489000);
  v38 = (*(v51 + 48) + 112 * v12);
  v40 = v38[1];
  v39 = v38[2];
  v69 = *v38;
  v70 = v40;
  v71 = v39;
  v41 = v38[3];
  v42 = v38[4];
  v43 = v38[6];
  v74 = v38[5];
  v75 = v43;
  v72 = v41;
  v73 = v42;
  v44 = v38[1];
  *a1 = *v38;
  a1[1] = v44;
  v45 = v38[2];
  v46 = v38[3];
  v47 = v38[6];
  a1[5] = v38[5];
  a1[6] = v47;
  v48 = v38[4];
  a1[3] = v46;
  a1[4] = v48;
  a1[2] = v45;
  sub_10000BE14(&v69, &v96, &qword_1019FFF80, &qword_101489000);
  return 0;
}

uint64_t sub_100E6C3B8(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFA0, &qword_10148FCA0);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        type metadata accessor for CRLWPStrikethru(0);
        sub_1000066D0(&unk_101A0DA50, type metadata accessor for CRLWPStrikethru, a9_16);
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7CE38(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6C5E0(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v4 = a3;
  v6 = ~a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFB0, &unk_10148EB00);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*(v12 + 8) == 255)
      {
        if (v4 == -1)
        {
          result = 0;
          a2 = *v12;
          v4 = -1;
          goto LABEL_13;
        }
      }

      else if (v4 != -1)
      {
        type metadata accessor for CRLWPUnderline(0);
        sub_1000066D0(&unk_101A0DA60, type metadata accessor for CRLWPUnderline, aY_35);
        if (static CRExtensible.== infix(_:_:)())
        {
          result = 0;
          v14 = *(v7 + 48) + 16 * v10;
          a2 = *v14;
          v4 = *(v14 + 8);
          goto LABEL_13;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  sub_100E7D0F8(a2, v4, v10, isUniquelyReferenced_nonNull_native);
  *v16 = v18;
  result = 1;
LABEL_13:
  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100E6C808(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v4 = a2;
  v6 = a2;
  v7 = *v3;
  Hasher.init(_seed:)();
  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = v4 & 1;
  }

  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v7 + 48);
      v14 = *(v13 + v11);
      if (v14 == 2)
      {
        if (v4 == 2)
        {
          result = 0;
          LOBYTE(v4) = 2;
          goto LABEL_13;
        }
      }

      else if (v4 != 2 && ((v14 ^ v4) & 1) == 0)
      {
        result = 0;
        LOBYTE(v4) = *(v13 + v11);
        goto LABEL_13;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_100E7D3B8(v4, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
LABEL_13:
  *a1 = v4;
  return result;
}

uint64_t sub_100E6C954(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  if ((a2 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a2 & 0x7FFFFF) == 0 && (a2 & 0x7F800000) == 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    Hasher._combine(_:)(v7);
  }

  v8 = Hasher._finalize()();
  v9 = v5 + 56;
  v10 = -1 << *(v5 + 32);
  v11 = v8 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 48);
    do
    {
      v14 = v13 + 8 * v11;
      LOBYTE(v15) = *(v14 + 4);
      if (v15)
      {
        if ((a2 & 0x100000000) != 0)
        {
          result = 0;
          LODWORD(a2) = *v14;
          goto LABEL_19;
        }
      }

      else if ((a2 & 0x100000000) == 0 && *v14 == *&a2)
      {
        result = 0;
        LODWORD(a2) = *v14;
        goto LABEL_19;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v15 = HIDWORD(a2) & 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  sub_100E7D554(a2 | (v15 << 32), v11, isUniquelyReferenced_nonNull_native);
  *v2 = v18;
  result = 1;
LABEL_19:
  *a1 = a2;
  *(a1 + 4) = v15;
  return result;
}

uint64_t sub_100E6CAB0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = ~a4;
  v9 = *v4;
  Hasher.init(_seed:)();
  if (v8)
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFC8, &qword_10147C028);
    CRExtensible.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    sub_100962438(a2, a3, v5);
    sub_100E7D6FC(a2, a3, v5, v12, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v5;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v15 = *(v9 + 48) + 24 * v12;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (*(v15 + 16) != 255)
    {
      break;
    }

    v14 = -1;
    if (v5 == -1)
    {
      goto LABEL_12;
    }

LABEL_7:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v5 == -1)
  {
    goto LABEL_7;
  }

  sub_1007A9874();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1009623A8(a2, a3, v5);
  v18 = *(v9 + 48) + 24 * v12;
  v16 = *v18;
  v17 = *(v18 + 8);
  v14 = *(v18 + 16);
LABEL_12:
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v14;
  sub_100962438(v16, v17, v14);
  return 0;
}

uint64_t sub_100E6CD34(_OWORD *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  v6 = *(a2 + 40);
  Hasher._combine(_:)(v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      sub_10063FD8C(*(v5 + 48) + 48 * v9, v16);
      if (static AnyHashable.== infix(_:_:)())
      {
        v11 = v17;
        sub_10063FDE8(v16);
        if (v11 == v6)
        {
          sub_10063FDE8(a2);
          sub_10063FD8C(*(v5 + 48) + 48 * v9, a1);
          return 0;
        }
      }

      else
      {
        sub_10063FDE8(v16);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10063FD8C(a2, v16);
  v15 = *v2;
  sub_100E7DAF0(v16, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  v14 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v14;
  a1[2] = *(a2 + 32);
  return 1;
}

uint64_t sub_100E6CEB8(int8x16_t *a1, int8x16_t *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_100068D24(&v63);
  v5 = Hasher._finalize()();
  v59 = v4 + 56;
  v60 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_68:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *v56;
    sub_1000693DC(a2, v62);
    sub_100E7DCA8(a2, v7, isUniquelyReferenced_nonNull_native);
    *v56 = v61;
    v42 = a2[1];
    *a1 = *a2;
    a1[1] = v42;
    a1[2] = a2[2];
    a1[3].i8[0] = a2[3].i8[0];
    return 1;
  }

  v58 = ~v6;
  while (1)
  {
    v8 = *(v60 + 48) + 56 * v7;
    v9 = *(v8 + 48);
    v10 = *(v8 + 32);
    v11 = *v8;
    v64 = *(v8 + 16);
    v65 = v10;
    v63 = v11;
    v66 = v9;
    sub_1000693DC(&v63, v62);
    v12 = sub_100068F28();
    v14 = v13;
    if (v12 == sub_100068F28() && v14 == v15)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v17 = v64;
    v18 = BYTE8(v64);
    v19 = v66;
    v20 = v66 >> 6;
    if (v20 <= 1)
    {
      break;
    }

    v23 = v65;
    v24 = (*(&v64 + 9) << 8) | ((*(&v64 + 13) | (HIBYTE(v64) << 16)) << 40);
    if (v20 == 2)
    {
      v25 = a2[3].u8[0];
      if ((v25 & 0xC0) != 0x80)
      {
        goto LABEL_4;
      }

      v26 = a2->i64[1];
      v27 = a2[1].i64[0];
      v29 = a2[1].i64[1];
      v28 = a2[2].i64[0];
      v30 = a2[2].i64[1];
      if (*(&v63 + 1))
      {
        if (!v26)
        {
          goto LABEL_4;
        }

        if (v63 != *a2)
        {
          v54 = a2[2].i64[0];
          v55 = a2[2].i64[1];
          v52 = a2[1].i64[0];
          v53 = a2[1].i64[1];
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v27 = v52;
          v29 = v53;
          v28 = v54;
          v30 = v55;
          if ((v31 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v26)
      {
        goto LABEL_4;
      }

      if (v24 | v18)
      {
        if (!v29 || (v17 != v27 || (v24 | v18) != v29) && (v32 = v30, v33 = v28, v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), v28 = v33, v30 = v32, (v34 & 1) == 0))
        {
LABEL_4:
          sub_1000698D0(&v63);
          goto LABEL_5;
        }
      }

      else if (v29)
      {
        goto LABEL_4;
      }

      if (!*(&v23 + 1))
      {
        v39 = v30;
        sub_1000698D0(&v63);
        if (v39)
        {
          goto LABEL_5;
        }

        goto LABEL_63;
      }

      if (!v30)
      {
        goto LABEL_4;
      }

      if (v23 == __PAIR128__(v30, v28))
      {
        sub_1000698D0(&v63);
LABEL_63:
        if (((v19 ^ v25) & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_5;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000698D0(&v63);
      if ((v19 ^ v25) & 1) == 0 && (v40)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v35 = v24 | BYTE8(v64);
      v36 = v64 | *(&v63 + 1);
      if (v66 != 192 || v36 | v63 | v65 | *(&v65 + 1) | v35)
      {
        if (v66 == 192 && v63 == 1 && !(v36 | v65 | *(&v65 + 1) | v35))
        {
          if (a2[3].u8[0] != 192 || a2->i64[0] != 1)
          {
            goto LABEL_5;
          }
        }

        else if (a2[3].u8[0] != 192 || a2->i64[0] != 2)
        {
          goto LABEL_5;
        }

        v38 = vorrq_s8(a2[1], a2[2]);
        if (!(*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | a2->i64[1]))
        {
          goto LABEL_70;
        }
      }

      else if (a2[3].u8[0] == 192)
      {
        v37 = vorrq_s8(a2[1], a2[2]);
        if (!(*&vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)) | a2->i64[1] | a2->i64[0]))
        {
          goto LABEL_70;
        }
      }
    }

LABEL_5:
    v7 = (v7 + 1) & v58;
    if (((*(v59 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  if (v20)
  {
    if ((a2[3].i8[0] & 0xC0) == 0x40 && a2->i8[0] == v63 && *&a2->i64[1] == *(&v63 + 1))
    {
      if (BYTE8(v64))
      {
        if (a2[1].i8[8])
        {
          goto LABEL_70;
        }
      }

      else if ((a2[1].i8[8] & 1) == 0 && *a2[1].i64 == *&v64)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_5;
  }

  if (a2[3].u8[0] >= 0x40u)
  {
    goto LABEL_4;
  }

  v21 = a2->i64[1];
  if (!*(&v63 + 1))
  {
    sub_1000698D0(&v63);
    if (!v21)
    {
      goto LABEL_69;
    }

    goto LABEL_5;
  }

  if (!v21)
  {
    goto LABEL_4;
  }

  if (v63 != *a2)
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000698D0(&v63);
    if (v22)
    {
      goto LABEL_69;
    }

    goto LABEL_5;
  }

  sub_1000698D0(&v63);
LABEL_69:
  sub_1000698D0(a2);
LABEL_70:
  v44 = *(v60 + 48) + 56 * v7;
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  v50 = *(v44 + 40);
  a1->i64[0] = *v44;
  a1->i64[1] = v46;
  a1[1].i64[0] = v47;
  a1[1].i64[1] = v48;
  a1[2].i64[0] = v49;
  a1[2].i64[1] = v50;
  v51 = *(v44 + 48);
  a1[3].i8[0] = v51;
  sub_100076F8C(v45, v46, v47, v48, v49, v50, v51);
  return 0;
}

uint64_t sub_100E6D3D4(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v70 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v7 - 8);
  v74 = &v69 - v8;
  v78 = sub_1005B981C(&unk_101A0B780, &unk_101480630);
  __chkstk_darwin(v78);
  v79 = &v69 - v9;
  v10 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v82 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1005B981C(&qword_101A00180, &qword_101490890);
  __chkstk_darwin(v87);
  v14 = &v69 - v13;
  v15 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v83 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  __chkstk_darwin(v21);
  v72 = &v69 - v22;
  v73 = v2;
  v23 = *v2;
  Hasher.init(_seed:)();
  v89 = a2;
  sub_100E8FF94(&v93);
  v24 = Hasher._finalize()();
  v25 = v23 + 56;
  v88 = v23;
  v26 = -1 << *(v23 + 32);
  v27 = v24 & ~v26;
  v86 = v25;
  if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_27:
    v64 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v89;
    v67 = v72;
    sub_10000BE14(v89, v72, &unk_101A096C0, &qword_101489120);
    v93 = *v64;
    sub_100E7E1C4(v67, v27, isUniquelyReferenced_nonNull_native);
    *v64 = v93;
    sub_10003DFF8(v66, v75, &unk_101A096C0, &qword_101489120);
    return 1;
  }

  v90 = v10;
  v77 = v4;
  v85 = ~v26;
  v28 = (v11 + 48);
  v29 = *(v16 + 72);
  v76 = (v5 + 48);
  v69 = (v5 + 32);
  v71 = (v5 + 8);
  v30 = &unk_101A096C0;
  v31 = &qword_101489120;
  v81 = v29;
  while (1)
  {
    v33 = *(v88 + 48);
    v84 = v29 * v27;
    sub_10000BE14(v33 + v29 * v27, v20, v30, v31);
    v34 = *(v87 + 48);
    sub_10000BE14(v20, v14, v30, v31);
    sub_10000BE14(v89, &v14[v34], v30, v31);
    v35 = v31;
    v36 = *v28;
    v37 = v30;
    v38 = v90;
    if ((*v28)(v14, 1, v90) == 1)
    {
      break;
    }

    v39 = v83;
    sub_10000BE14(v14, v83, v37, v35);
    if (v36(&v14[v34], 1, v38) == 1)
    {
      sub_10000CAAC(v20, v37, v35);
      sub_100026028(v39, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      v29 = v81;
      v30 = v37;
      v31 = v35;
      goto LABEL_4;
    }

    v40 = &v14[v34];
    v41 = v82;
    sub_100025668(v40, v82, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    v42 = *(v39 + 8);
    v93 = *v39;
    v94 = v42;
    v43 = *(v41 + 8);
    v91 = *v41;
    v92 = v43;
    sub_1007AB290();
    if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
    {
      v30 = &unk_101A096C0;
      v31 = &qword_101489120;
      sub_10000CAAC(v20, &unk_101A096C0, &qword_101489120);
      goto LABEL_26;
    }

    v44 = *(v90 + 20);
    v45 = *(v78 + 48);
    v46 = v79;
    sub_10000BE14(v39 + v44, v79, &unk_1019F33C0, &unk_101468A60);
    v80 = v45;
    sub_10000BE14(v41 + v44, v46 + v45, &unk_1019F33C0, &unk_101468A60);
    v47 = *v76;
    v48 = v77;
    if ((*v76)(v46, 1, v77) == 1)
    {
      if (v47(v46 + v80, 1, v48) != 1)
      {
        v30 = &unk_101A096C0;
        v31 = &qword_101489120;
        sub_10000CAAC(v20, &unk_101A096C0, &qword_101489120);
        goto LABEL_17;
      }

      sub_10000CAAC(v46, &unk_1019F33C0, &unk_101468A60);
      v30 = &unk_101A096C0;
      v31 = &qword_101489120;
    }

    else
    {
      v49 = v74;
      sub_10000BE14(v46, v74, &unk_1019F33C0, &unk_101468A60);
      if (v47(v46 + v80, 1, v48) == 1)
      {
        v30 = &unk_101A096C0;
        v31 = &qword_101489120;
        sub_10000CAAC(v20, &unk_101A096C0, &qword_101489120);
        (*v71)(v49, v48);
LABEL_17:
        v50 = v79;
        v51 = &unk_101A0B780;
        v52 = &unk_101480630;
        goto LABEL_25;
      }

      v53 = v70;
      (*v69)(v70, v46 + v80, v48);
      sub_1000066D0(&qword_101A00190, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      LODWORD(v80) = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *v71;
      (*v71)(v53, v48);
      v54(v49, v48);
      sub_10000CAAC(v46, &unk_1019F33C0, &unk_101468A60);
      v30 = &unk_101A096C0;
      v31 = &qword_101489120;
      if ((v80 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v55 = v90;
    v56 = *(v90 + 24);
    v57 = (v83 + v56);
    v58 = *(v83 + v56 + 8);
    v59 = (v82 + v56);
    if ((*v57 != *v59 || v58 != v59[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_24:
      v50 = v20;
      v51 = &unk_101A096C0;
      v52 = &qword_101489120;
LABEL_25:
      sub_10000CAAC(v50, v51, v52);
      v39 = v83;
LABEL_26:
      sub_100026028(v82, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      sub_100026028(v39, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      sub_10000CAAC(v14, &unk_101A096C0, &qword_101489120);
      v29 = v81;
      goto LABEL_5;
    }

    v60 = v82;
    v61 = v83;
    sub_100B3216C(*(v83 + *(v55 + 28)), *(v82 + *(v55 + 28)));
    v63 = v62;
    sub_10000CAAC(v20, &unk_101A096C0, &qword_101489120);
    sub_100026028(v60, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    sub_100026028(v61, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    sub_10000CAAC(v14, &unk_101A096C0, &qword_101489120);
    v29 = v81;
    if (v63)
    {
      goto LABEL_29;
    }

LABEL_5:
    v27 = (v27 + 1) & v85;
    if (((*(v86 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_10000CAAC(v20, v37, v35);
  v32 = v36(&v14[v34], 1, v38);
  v30 = v37;
  v31 = v35;
  if (v32 != 1)
  {
LABEL_4:
    sub_10000CAAC(v14, &qword_101A00180, &qword_101490890);
    goto LABEL_5;
  }

  sub_10000CAAC(v14, &unk_101A096C0, &qword_101489120);
LABEL_29:
  sub_10000CAAC(v89, &unk_101A096C0, &qword_101489120);
  sub_10000BE14(*(v88 + 48) + v84, v75, &unk_101A096C0, &qword_101489120);
  return 0;
}