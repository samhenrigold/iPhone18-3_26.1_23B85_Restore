Swift::Int sub_100212038(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xEA00000000004449;
  }

  else
  {
    v3 = 0xE900000000000044;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1002120C0(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1248, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_100212130(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1248, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

id sub_100212194(void *a1)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = 0;
  v11 = [a1 remObjectIDWithError:{&v63, v8}];
  if (!v11)
  {
    v19 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v3;
  }

  v12 = v11;
  v13 = v63;
  v14 = [a1 trigger];
  if (!v14)
  {
    if (qword_100935C20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093D280);
    v16 = v12;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v16;
      *v24 = v12;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v21, v22, "REMAlarmCDIngestor: cdAlarm.trigger is nil {cdAlarm.remObjectID: %@}", v23, 0xCu);
      sub_1000050A4(v24, &unk_100938E70, &unk_100797230);
    }

    v26 = objc_opt_self();
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = String._bridgeToObjectiveC()();
    [v26 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v28];

    swift_willThrow();
    goto LABEL_13;
  }

  v60[1] = v14;
  v15 = v14;
  v3 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v16 = v15;
  sub_1000F5104(&qword_10093D488, &qword_10079AF40);
  if (!swift_dynamicCast())
  {
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_1000050A4(v61, &qword_10093D490, &qword_10079AF48);
    v29 = objc_opt_self();
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v30._object = 0x80000001007F0E30;
    v30._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v30);
    v31 = [v16 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);
    v34, v36, v37, v38, v39, v40, v41, v42;
    v43._countAndFlagsBits = 125;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    v44 = v64;
    v45 = String._bridgeToObjectiveC()();
    v44, v46, v47, v48, v49, v50, v51, v52;
    [v29 internalErrorWithDebugDescription:v45];

    swift_willThrow();
LABEL_13:

    return v3;
  }

  v60[0] = v6;
  sub_100054B6C(v61, &v63);
  v3 = v65;
  v17 = v66;
  sub_10000F61C(&v63, v65);
  v18 = (*(v17 + 8))(*(v1 + 16), v12, v3, v17);
  if (v2)
  {

    sub_10000607C(&v63);
  }

  else
  {
    v54 = v18;
    v3 = [objc_allocWithZone(REMAlarm) initWithTrigger:v18 objectID:v12];
    v55 = [a1 acknowledgedDate];
    if (v55)
    {
      v56 = v55;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v57.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v60[0] + 8))(v10, v5);
    }

    else
    {
      v57.super.isa = 0;
    }

    [v3 setAcknowledgedDate:v57.super.isa];

    v58 = [a1 alarmUID];
    [v3 setAlarmUID:v58];

    v59 = [a1 originalAlarmUID];
    [v3 setOriginalAlarmUID:v59];

    sub_10000607C(&v63);
  }

  return v3;
}

void sub_100212774(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  v106 = type metadata accessor for Date();
  v7 = *(v106 - 8);
  __chkstk_darwin(v106, v8);
  v105 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for UUID();
  __chkstk_darwin(v113, v10);
  v112 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = (a3 + 32);
    v104 = (v7 + 8);
    v109 = (v11 + 8);
    v108 = xmmword_1007953F0;
    v107 = a1;
    while (1)
    {
      v17 = *v14++;
      v16 = v17;
      if (v17 > 1)
      {
        break;
      }

      if (v16)
      {
        v24 = [a1 trigger];
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = v25;
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v27 = swift_allocObject();
          *(v27 + 16) = v108;
          *(v27 + 32) = v26;
          v28 = *(v111 + 16);
          v114 = 0;
          v29 = v24;
          v30 = v28;
          v31 = [a2 remObjectIDWithError:&v114];
          v32 = v114;
          if (!v31)
          {
            goto LABEL_29;
          }

          v33 = v31;
          type metadata accessor for REMAlarmTimeIntervalTriggerCDIngestor();
          v34 = swift_allocObject();
          *(v34 + 16) = v30;
          *(v34 + 24) = v33;
          v35 = v32;
          sub_1005FA684(v27, v34);
        }

        else
        {
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (v36)
          {
            v37 = v36;
            sub_1000F5104(&unk_100939D60, &unk_1007959E0);
            v27 = swift_allocObject();
            *(v27 + 16) = v108;
            *(v27 + 32) = v37;
            v38 = *(v111 + 16);
            v114 = 0;
            v29 = v24;
            v30 = v38;
            v39 = [a2 remObjectIDWithError:&v114];
            v32 = v114;
            if (!v39)
            {
              goto LABEL_29;
            }

            v40 = v39;
            type metadata accessor for REMAlarmDateTriggerCDIngestor();
            v41 = swift_allocObject();
            *(v41 + 16) = v30;
            *(v41 + 24) = v40;
            v42 = v32;
            sub_1005FAE8C(v27, v41);
          }

          else
          {
            objc_opt_self();
            v43 = swift_dynamicCastObjCClass();
            if (v43)
            {
              v44 = v43;
              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v27 = swift_allocObject();
              *(v27 + 16) = v108;
              *(v27 + 32) = v44;
              v45 = *(v111 + 16);
              v114 = 0;
              v29 = v24;
              v30 = v45;
              v46 = [a2 remObjectIDWithError:&v114];
              v32 = v114;
              if (!v46)
              {
                goto LABEL_29;
              }

              v47 = v46;
              type metadata accessor for REMAlarmLocationTriggerCDIngestor();
              v48 = swift_allocObject();
              *(v48 + 16) = v30;
              *(v48 + 24) = v47;
              v49 = v32;
              sub_1005FB694(v27, v48);
            }

            else
            {
              objc_opt_self();
              v50 = swift_dynamicCastObjCClass();
              if (!v50)
              {

                v72 = objc_opt_self();
                v114 = 0;
                v115 = 0xE000000000000000;
                _StringGuts.grow(_:)(36);
                v115, v73, v74, v75, v76, v77, v78, v79;
                v114 = 0xD000000000000021;
                v115 = 0x80000001007F0E00;
                v80 = [a1 trigger];
                v81 = [v80 description];
                v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v84 = v83;

                v85._countAndFlagsBits = v82;
                v85._object = v84;
                String.append(_:)(v85);
                v84, v86, v87, v88, v89, v90, v91, v92;

                v93._countAndFlagsBits = 125;
                v93._object = 0xE100000000000000;
                String.append(_:)(v93);
                v94 = v115;
                v95 = String._bridgeToObjectiveC()();
                v94, v96, v97, v98, v99, v100, v101, v102;
                [v72 internalErrorWithDebugDescription:v95];

                swift_willThrow();
                return;
              }

              v51 = v50;
              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v27 = swift_allocObject();
              *(v27 + 16) = v108;
              *(v27 + 32) = v51;
              v52 = *(v111 + 16);
              v114 = 0;
              v29 = v24;
              v30 = v52;
              v53 = [a2 remObjectIDWithError:&v114];
              v32 = v114;
              if (!v53)
              {
LABEL_29:
                v64 = v32;
                v27, v65, v66, v67, v68, v69, v70, v71;

                _convertNSErrorToError(_:)();
                swift_willThrow();

                return;
              }

              v54 = v53;
              type metadata accessor for REMAlarmVehicleTriggerCDIngestor();
              v55 = swift_allocObject();
              *(v55 + 16) = v30;
              *(v55 + 24) = v54;
              v56 = v32;
              sub_1005FBE9C(v27, v55);
            }
          }
        }

        a1 = v107;

        v27, v57, v58, v59, v60, v61, v62, v63;
        if (!--v13)
        {
          return;
        }
      }

      else
      {
        v18 = [a1 objectID];
        v19 = [v18 uuid];

        v20 = v112;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v109)(v20, v113);
        [a2 setIdentifier:isa];
LABEL_4:

        if (!--v13)
        {
          return;
        }
      }
    }

    if (v16 == 2)
    {
      v21 = [a1 acknowledgedDate];
      if (v21)
      {
        v22 = v105;
        v23 = v21;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v104)(v22, v106);
      }

      else
      {
        isa = 0;
      }

      [a2 setAcknowledgedDate:isa];
    }

    else if (v16 == 3)
    {
      isa = [a1 alarmUID];
      [a2 setAlarmUID:isa];
    }

    else
    {
      isa = [a1 originalAlarmUID];
      [a2 setOriginalAlarmUID:isa];
    }

    goto LABEL_4;
  }
}

id sub_100212F28(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1001D3CF0(v4);

  return v7;
}

id sub_100212F8C(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1001D333C(v4);

  return v7;
}

id sub_100212FF0(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1001D394C(v4);

  return v7;
}

id sub_100213054(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1001D3844(v4);

  return v7;
}

unint64_t sub_1002130F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0868, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for REMCDTemplateOperationQueueItem.OperationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMCDTemplateOperationQueueItem.OperationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002132D4()
{
  result = qword_10093D4A8;
  if (!qword_10093D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D4A8);
  }

  return result;
}

unint64_t sub_10021335C()
{
  result = qword_10093D4C0;
  if (!qword_10093D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D4C0);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002133B0(uint64_t a1)
{
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_100010D04(0, v2 & ~(v2 >> 63), 0);
    v36 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v4 = _HashTable.startBucket.getter();
      v5 = *(a1 + 36);
    }

    v39 = v4;
    v40 = v5;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v15 = v39;
        v14 = v40;
        v16 = v41;
        sub_10003AFD8(v39, v40, v41, a1);
        v17 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v18)
        {
          goto LABEL_43;
        }

        v19 = v17;
        v20 = v18;
        v38 = &type metadata for String;

        *&v37 = v19;
        *(&v37 + 1) = v20;
        v21 = v36;
        v42 = v36;
        v23 = *v36->clientIdentity;
        v22 = *&v36->clientIdentity[8];
        if (v23 >= v22 >> 1)
        {
          sub_100010D04((v22 > 1), v23 + 1, 1);
          v21 = v42;
        }

        *v21->clientIdentity = v23 + 1;
        v36 = v21;
        sub_100005EE0(&v37, &v21->clientIdentity[32 * v23 + 16]);
        if (v35)
        {
          if (!v16)
          {
            goto LABEL_41;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(&qword_10093D5C0, &qword_10079B268);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(&v37, 0);
          if (v6 == v2)
          {
LABEL_33:
            sub_100010E34(v39, v40, v41, v8, v9, v10, v11, v12);
            return v36;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_42;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v24 = (1 << *(a1 + 32));
          if (v15 >= v24)
          {
            goto LABEL_37;
          }

          v25 = v15 >> 6;
          v26 = *(a1 + 56 + 8 * (v15 >> 6));
          if (((v26 >> v15) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_39;
          }

          v27 = v26 & (-2 << (v15 & 0x3F));
          if (v27)
          {
            v24 = (__clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (a1 + 64 + 8 * v25);
            while (v29 < &v24->storeProvider[1] >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
                v24 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_32;
              }
            }

            sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
          }

LABEL_32:
          v33 = *(a1 + 36);
          v39 = v24;
          v40 = v33;
          v41 = 0;
          if (v6 == v2)
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
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v34._object = 0x80000001007EC120;
    v34._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v34);
    sub_1000F5104(&qword_100946530, &qword_10079B260);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002137C0(uint64_t a1)
{
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_100010D04(0, v2 & ~(v2 >> 63), 0);
    v36 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v4 = _HashTable.startBucket.getter();
      v5 = *(a1 + 36);
    }

    v39 = v4;
    v40 = v5;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v15 = v39;
        v14 = v40;
        v16 = v41;
        sub_1000186FC(v39, v40, v41, a1);
        v17 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v18)
        {
          goto LABEL_43;
        }

        v19 = v17;
        v20 = v18;
        v38 = &type metadata for String;

        *&v37 = v19;
        *(&v37 + 1) = v20;
        v21 = v36;
        v42 = v36;
        v23 = *v36->clientIdentity;
        v22 = *&v36->clientIdentity[8];
        if (v23 >= v22 >> 1)
        {
          sub_100010D04((v22 > 1), v23 + 1, 1);
          v21 = v42;
        }

        *v21->clientIdentity = v23 + 1;
        v36 = v21;
        sub_100005EE0(&v37, &v21->clientIdentity[32 * v23 + 16]);
        if (v35)
        {
          if (!v16)
          {
            goto LABEL_41;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(&qword_10093D5A0, &qword_10079B228);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(&v37, 0);
          if (v6 == v2)
          {
LABEL_33:
            sub_100010E34(v39, v40, v41, v8, v9, v10, v11, v12);
            return v36;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_42;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v24 = (1 << *(a1 + 32));
          if (v15 >= v24)
          {
            goto LABEL_37;
          }

          v25 = v15 >> 6;
          v26 = *(a1 + 56 + 8 * (v15 >> 6));
          if (((v26 >> v15) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_39;
          }

          v27 = v26 & (-2 << (v15 & 0x3F));
          if (v27)
          {
            v24 = (__clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (a1 + 64 + 8 * v25);
            while (v29 < &v24->storeProvider[1] >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
                v24 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_32;
              }
            }

            sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
          }

LABEL_32:
          v33 = *(a1 + 36);
          v39 = v24;
          v40 = v33;
          v41 = 0;
          if (v6 == v2)
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
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v34._object = 0x80000001007EC120;
    v34._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v34);
    sub_1000F5104(&qword_10093F530, &qword_10079B220);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100213BD0(unint64_t a1, unint64_t isUniquelyReferenced_nonNull_native, void *a3)
{
  v72 = a3;
  v67 = type metadata accessor for UUID();
  v5 = *(v67 - 8);
  __chkstk_darwin(v67, v6);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v66 = &v59 - v10;
  __chkstk_darwin(v11, v12);
  v71 = &v59 - v13;
  v75 = a1;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_48:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_3;
    }

    return a1;
  }

  v14 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    return a1;
  }

LABEL_3:
  a1 = 0;
  v15 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v16 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v68 = (v5 + 4);
  v69 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v61 = (v5 + 1);
  v64 = v14;
  v65 = isUniquelyReferenced_nonNull_native;
  v70 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  while (1)
  {
    if (v15)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a1 >= *(v16 + 16))
      {
        goto LABEL_46;
      }

      v17 = *(isUniquelyReferenced_nonNull_native + 8 * a1 + 32);
    }

    v18 = v17;
    v19 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v5 = *v72;
    if ((*v72 & 0xC000000000000001) == 0)
    {
      break;
    }

    v20 = v17;
    v5 = __CocoaDictionary.lookup(_:)();

    if (v5)
    {
      v73 = v5;
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      swift_dynamicCast();
      v21 = v74;
      if (v74)
      {
        goto LABEL_17;
      }
    }

LABEL_4:

LABEL_5:
    ++a1;
    if (v19 == v14)
    {
      return v75;
    }
  }

  if (!v5[2])
  {
    goto LABEL_4;
  }

  v22 = sub_10002B924(v17);
  if ((v23 & 1) == 0)
  {
    goto LABEL_4;
  }

  v21 = *(v5[7] + 8 * v22);
  if (!v21)
  {
    goto LABEL_4;
  }

LABEL_17:
  v24 = v21;
  v25 = [v24 identifier];
  v26 = v24;
  if (!v25)
  {
LABEL_33:

    v5 = sub_100368FC8(v18);

    goto LABEL_42;
  }

  v27 = v66;
  v28 = v25;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v67;
  v30 = *v68;
  v31 = v71;
  (*v68)(v71, v27, v67);
  v32 = [v24 account];
  if (!v32)
  {
    (*v61)(v31, v29);
    v26 = v24;
LABEL_32:
    v14 = v64;
    isUniquelyReferenced_nonNull_native = v65;
    goto LABEL_33;
  }

  v26 = v32;
  v33 = [v32 remObjectID];
  if (!v33)
  {
    (*v61)(v71, v29);

    goto LABEL_32;
  }

  v34 = v33;
  v35 = v29;
  v36 = v71;
  v37 = UUID.uuidString.getter();
  v62 = v38;
  v63 = v37;

  v39 = v60;
  v30(v60, v36, v35);
  type metadata accessor for RDElementManualSortID(0);
  v40 = swift_allocObject();
  v41 = v62;
  *(v40 + 16) = v63;
  *(v40 + 24) = v41;
  v42 = v39;
  v43 = v40;
  v30((v40 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID), v42, v35);
  *(v43 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v34;
  v5 = v75;
  if ((v75 & 0xC000000000000001) == 0)
  {
    goto LABEL_25;
  }

  if (v75 >= 0)
  {
    v5 = (v75 & 0xFFFFFFFFFFFFFF8);
  }

  v44 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v44, 1))
  {
    v5 = sub_10021D4DC(v5, v44 + 1, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
    v75 = v5;
LABEL_25:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v5;
    v46 = sub_10002B924(v18);
    v47 = v5[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_47;
    }

    v50 = v45;
    if (v5[3] >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v53 = v74;
        if ((v45 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v5 = &v74;
        sub_1003731C0();
        v53 = v74;
        if ((v50 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_10036A210(v49, isUniquelyReferenced_nonNull_native);
      v5 = v74;
      v51 = sub_10002B924(v18);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_52;
      }

      v46 = v51;
      v53 = v74;
      if ((v50 & 1) == 0)
      {
LABEL_39:
        v53[(v46 >> 6) + 8] |= 1 << v46;
        *(v53[6] + 8 * v46) = v18;
        *(v53[7] + 8 * v46) = v43;
        v55 = v53[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_51;
        }

        v53[2] = v57;

LABEL_41:
        v75 = v53;
        v14 = v64;
        isUniquelyReferenced_nonNull_native = v65;
LABEL_42:
        v16 = v69;
        v15 = v70;
        goto LABEL_5;
      }
    }

    v54 = v53[7];
    v5 = *(v54 + 8 * v46);
    *(v54 + 8 * v46) = v43;

    goto LABEL_41;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10021417C(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, a2, a3);
    sub_10000CE28(a4, a2, a3);
    Set.Iterator.init(_cocoa:)();
    v4 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
    v11 = v29;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
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

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v21 = v9;
LABEL_8:
  v15 = v10;
  v16 = v11;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000060C8(0, a2, a3), swift_dynamicCast(), v19 = v24, v10 = v15, v11 = v16, !v24))
      {
LABEL_22:
        sub_10001B860(v4);
        return;
      }

      goto LABEL_18;
    }

    v17 = v15;
    v18 = v16;
    v10 = v15;
    if (!v16)
    {
      break;
    }

LABEL_14:
    v11 = (v18 - 1) & v18;
    v19 = *(*(v4 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_18:
    v20 = [v19 remObjectID];

    v15 = v10;
    v16 = v11;
    if (v20)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= ((v9 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v18 = *(v8 + 8 * v10);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1002143F0(uint64_t a1)
{
  v113 = type metadata accessor for DispatchQoS();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113, v3);
  v109 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110, v5);
  v107 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a1;
  sub_10021417C(a1, &qword_100939EE0, off_1008D41D0, &qword_100944210);
  v8 = v7;
  v111 = 0;
  v9 = sub_1001A577C(v7);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyDictionarySingleton;
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptySetSingleton;
  v114 = v1;
  v115 = v18 + 16;
  p_aBlock = *(v1 + 24);
  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = v17;
  v20[4] = v18;
  v21 = *p_aBlock->clientIdentity;
  v22 = swift_allocObject();
  v106 = p_aBlock;
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_100220A94;
  v23[4] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100220AD0;
  *(v24 + 24) = v23;
  v123 = sub_1000FDA90;
  v124 = v24;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10000F160;
  v122 = &unk_1008EA8B0;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v21, v25);
  _Block_release(v25);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v72 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_29;
  }

  swift_beginAccess();
  v26 = *(v17 + 16);
  swift_beginAccess();
  v27 = *(v18 + 16);

  v28 = sub_10031E8C4(v116);
  if (!v28 || (v36 = v28, v37 = [v28 managedObjectContext], v36, !v37))
  {
    v27, v29, v30, v31, v32, v33, v34, v35;
    return;
  }

  v103 = v37;
  v38 = swift_allocObject();
  v102[0] = v38;
  *(v38 + 16) = _swiftEmptyDictionarySingleton;
  aBlock = &_swiftEmptyArrayStorage;
  v115 = v38 + 16;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v43 = -1 << *(v26 + 32);
    v40 = ~v43;
    v39 = v26 + 64;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v41 = v45 & *(v26 + 64);
    v42 = v26;
  }

  v104 = v26;

  v46 = 0;
  v102[1] = v40;
  v47 = (v40 + 64) >> 6;
  v48 = &_swiftEmptyArrayStorage;
LABEL_12:
  v105 = v48;
  while ((v42 & 0x8000000000000000) != 0)
  {
    v53 = __CocoaDictionary.Iterator.next()();
    if (!v53)
    {
      goto LABEL_27;
    }

    v55 = v54;
    v117 = v53;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    p_aBlock = v118;
    v117 = v55;
    type metadata accessor for RDElementManualSortID(0);
    swift_dynamicCast();
    v52 = v118;
    if (!p_aBlock)
    {
      goto LABEL_27;
    }

LABEL_22:
    if (!*&v52->clientIdentity[8])
    {
      v56 = p_aBlock;

      p_aBlock = &aBlock;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v48 = aBlock;
      goto LABEL_12;
    }
  }

  v49 = v46;
  v50 = v41;
  if (!v41)
  {
    while (1)
    {
      v46 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v46 >= v47)
      {
        goto LABEL_27;
      }

      v50 = *(v39 + 8 * v46);
      ++v49;
      if (v50)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_18:
  v41 = (v50 - 1) & v50;
  v51 = (v46 << 9) | (8 * __clz(__rbit64(v50)));
  v52 = *(*(v42 + 56) + v51);
  p_aBlock = *(*(v42 + 48) + v51);

  if (p_aBlock)
  {
    goto LABEL_22;
  }

LABEL_27:
  sub_10001B860(v42);
  v57 = v105;
  p_aBlock = sub_100215F30(v27, v105);
  v57, v58, v59, v60, v61, v62, v63, v64;
  v27, v65, v66, v67, v68, v69, v70, v71;
  if (p_aBlock >> 62)
  {
    goto LABEL_36;
  }

  v72 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v73 = v116;
  v74 = v104;
  v75 = v103;
  if (v72)
  {
    v76 = swift_allocObject();
    v76[2] = v73;
    v76[3] = p_aBlock;
    v77 = v114;
    v76[4] = v115;
    v76[5] = v77;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_1002207F4;
    *(v78 + 24) = v76;
    v123 = sub_1000FDA90;
    v124 = v78;
    aBlock = _NSConcreteStackBlock;
    v120 = 1107296256;
    v121 = sub_10000F160;
    v122 = &unk_1008EA928;
    v79 = _Block_copy(&aBlock);

    [v75 performBlockAndWait:v79];
    _Block_release(v79);
    LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

    if (v79)
    {
      __break(1u);
    }

    else
    {
      v80 = v102[0];

      v81 = v107;
      static DispatchWorkItemFlags.barrier.getter();
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      v83[2] = v82;
      v83[3] = sub_100220800;
      v83[4] = v80;
      v123 = sub_100220AD4;
      v124 = v83;
      aBlock = _NSConcreteStackBlock;
      v120 = 1107296256;
      v121 = sub_100019200;
      v122 = &unk_1008EA978;
      v84 = _Block_copy(&aBlock);

      v85 = v109;
      static DispatchQoS.unspecified.getter();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v84);

      (*(v112 + 8))(v85, v113);
      (*(v108 + 8))(v81, v110);

      swift_beginAccess();
      v118 = v74;

      v87 = v111;
      sub_10021F054(v86, sub_100220A64, 0, &v118);
      if (!v87)
      {

        return;
      }
    }

    v118, v95, v96, v97, v98, v99, v100, v101;
    __break(1u);
  }

  else
  {

    p_aBlock, v88, v89, v90, v91, v92, v93, v94;
  }
}

uint64_t sub_100214E04()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093D4C8);
  v1 = sub_100006654(v0, qword_10093D4C8);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100214ECC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 16) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3 & 1;
  v5 = qword_100935C28;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10093D4C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDManualSortIDAdapter > initialized", v9, 2u);
  }

  return v4;
}

void sub_100214FE4(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer **a3)
{
  v118 = a3;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v115 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32))
  {
    v14 = *(a1 + 16);
    v15 = *(v14 + 24);
    if (!v15)
    {
LABEL_5:
      v23 = objc_opt_self();
      v116 = 0;
      v117 = 0xE000000000000000;
      _StringGuts.grow(_:)(143);
      v24._object = 0x80000001007F0ED0;
      v24._countAndFlagsBits = 0xD000000000000024;
      String.append(_:)(v24);
      v115 = *(v14 + 16);
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v25._countAndFlagsBits = Optional.descriptionOrNil.getter();
      object = v25._object;
      String.append(_:)(v25);
      object, v27, v28, v29, v30, v31, v32, v33;
      v34._countAndFlagsBits = 0xD000000000000069;
      v34._object = 0x80000001007F0F00;
      String.append(_:)(v34);
      v35 = v117;
      v36 = String._bridgeToObjectiveC()();
      v35, v37, v38, v39, v40, v41, v42, v43;
      [v23 internalErrorWithDebugDescription:v36];

      swift_willThrow();
      return;
    }

    UUID.init(uuidString:)();
    v15, v16, v17, v18, v19, v20, v21, v22;
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000050A4(v8, &unk_100939D90, "8\n\r");
      goto LABEL_5;
    }

    (*(v10 + 32))(v13, v8, v9);
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v47 = [ObjCClassFromMetadata objectIDWithUUID:isa];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1007953F0;
    *(v48 + 32) = v47;
    v49 = v47;
    v50 = sub_10000F8A4(v48, 0, 6u);

    v48, v51, v52, v53, v54, v55, v56, v57;
    (*(v10 + 8))(v13, v9);
    v44 = v50;
  }

  else
  {
    v44 = sub_10000F8A4(7uLL, 0, 7u);
  }

  v58 = qword_1009363E0;
  v59 = v44;
  if (v58 != -1)
  {
    swift_once();
  }

  v60 = qword_100974F38;
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v61 = [objc_allocWithZone(NSFetchRequest) init];
  v62 = [swift_getObjCClassFromMetadata() entity];
  [v61 setEntity:v62];

  [v61 setAffectedStores:0];
  [v61 setPredicate:v59];
  v116 = _swiftEmptySetSingleton;

  sub_100010864(v63);
  v60, v64, v65, v66, v67, v68, v69, v70;
  v71 = v116;
  v72 = sub_1002137C0(v116);
  v71, v73, v74, v75, v76, v77, v78, v79;
  v80 = Array._bridgeToObjectiveC()().super.isa;
  v72, v81, v82, v83, v84, v85, v86, v87;
  [v61 setPropertiesToFetch:v80];

  v88 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v89 = v88;
    v90 = sub_1001A615C(v88);
    v89, v91, v92, v93, v94, v95, v96, v97;
    sub_10021551C(v90);
    v99 = v98;

    v90, v100, v101, v102, v103, v104, v105, v106;
    v107 = *v118;
    *v118 = v99;
    v107, v108, v109, v110, v111, v112, v113, v114;
  }
}

void sub_10021551C(uint64_t a1)
{
  v113 = type metadata accessor for DispatchQoS();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113, v3);
  v109 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110, v5);
  v107 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a1;
  sub_10021417C(a1, &qword_1009399F0, off_1008D4120, &qword_10093A8F8);
  v8 = v7;
  v111 = 0;
  v9 = sub_1001A577C(v7);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyDictionarySingleton;
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptySetSingleton;
  v114 = v1;
  v115 = v18 + 16;
  p_aBlock = *(v1 + 24);
  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = v17;
  v20[4] = v18;
  v21 = *p_aBlock->clientIdentity;
  v22 = swift_allocObject();
  v106 = p_aBlock;
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_10021FF60;
  v23[4] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100220AD0;
  *(v24 + 24) = v23;
  v123 = sub_1000FDA90;
  v124 = v24;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10000F160;
  v122 = &unk_1008EA6A8;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v21, v25);
  _Block_release(v25);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v72 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_29;
  }

  swift_beginAccess();
  v26 = *(v17 + 16);
  swift_beginAccess();
  v27 = *(v18 + 16);

  v28 = sub_10031EA24(v116);
  if (!v28 || (v36 = v28, v37 = [v28 managedObjectContext], v36, !v37))
  {
    v27, v29, v30, v31, v32, v33, v34, v35;
    return;
  }

  v103 = v37;
  v38 = swift_allocObject();
  v102[0] = v38;
  *(v38 + 16) = _swiftEmptyDictionarySingleton;
  aBlock = &_swiftEmptyArrayStorage;
  v115 = v38 + 16;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v43 = -1 << *(v26 + 32);
    v40 = ~v43;
    v39 = v26 + 64;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v41 = v45 & *(v26 + 64);
    v42 = v26;
  }

  v104 = v26;

  v46 = 0;
  v102[1] = v40;
  v47 = (v40 + 64) >> 6;
  v48 = &_swiftEmptyArrayStorage;
LABEL_12:
  v105 = v48;
  while ((v42 & 0x8000000000000000) != 0)
  {
    v53 = __CocoaDictionary.Iterator.next()();
    if (!v53)
    {
      goto LABEL_27;
    }

    v55 = v54;
    v117 = v53;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    p_aBlock = v118;
    v117 = v55;
    type metadata accessor for RDAccountManualSortID(0);
    swift_dynamicCast();
    v52 = v118;
    if (!p_aBlock)
    {
      goto LABEL_27;
    }

LABEL_22:
    if (!*&v52->clientIdentity[8])
    {
      v56 = p_aBlock;

      p_aBlock = &aBlock;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v48 = aBlock;
      goto LABEL_12;
    }
  }

  v49 = v46;
  v50 = v41;
  if (!v41)
  {
    while (1)
    {
      v46 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v46 >= v47)
      {
        goto LABEL_27;
      }

      v50 = *(v39 + 8 * v46);
      ++v49;
      if (v50)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_18:
  v41 = (v50 - 1) & v50;
  v51 = (v46 << 9) | (8 * __clz(__rbit64(v50)));
  v52 = *(*(v42 + 56) + v51);
  p_aBlock = *(*(v42 + 48) + v51);

  if (p_aBlock)
  {
    goto LABEL_22;
  }

LABEL_27:
  sub_10001B860(v42);
  v57 = v105;
  p_aBlock = sub_100215F30(v27, v105);
  v57, v58, v59, v60, v61, v62, v63, v64;
  v27, v65, v66, v67, v68, v69, v70, v71;
  if (p_aBlock >> 62)
  {
    goto LABEL_36;
  }

  v72 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v73 = v116;
  v74 = v104;
  v75 = v103;
  if (v72)
  {
    v76 = swift_allocObject();
    v76[2] = v73;
    v76[3] = p_aBlock;
    v77 = v114;
    v76[4] = v115;
    v76[5] = v77;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_10021FF78;
    *(v78 + 24) = v76;
    v123 = sub_1000FDA90;
    v124 = v78;
    aBlock = _NSConcreteStackBlock;
    v120 = 1107296256;
    v121 = sub_10000F160;
    v122 = &unk_1008EA720;
    v79 = _Block_copy(&aBlock);

    [v75 performBlockAndWait:v79];
    _Block_release(v79);
    LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

    if (v79)
    {
      __break(1u);
    }

    else
    {
      v80 = v102[0];

      v81 = v107;
      static DispatchWorkItemFlags.barrier.getter();
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      v83[2] = v82;
      v83[3] = sub_10021FF84;
      v83[4] = v80;
      v123 = sub_100220AD4;
      v124 = v83;
      aBlock = _NSConcreteStackBlock;
      v120 = 1107296256;
      v121 = sub_100019200;
      v122 = &unk_1008EA770;
      v84 = _Block_copy(&aBlock);

      v85 = v109;
      static DispatchQoS.unspecified.getter();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v84);

      (*(v112 + 8))(v85, v113);
      (*(v108 + 8))(v81, v110);

      swift_beginAccess();
      v118 = v74;

      v87 = v111;
      sub_10021F218(v86, sub_100220A64, 0, &v118);
      if (!v87)
      {

        return;
      }
    }

    v118, v95, v96, v97, v98, v99, v100, v101;
    __break(1u);
  }

  else
  {

    p_aBlock, v88, v89, v90, v91, v92, v93, v94;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100215F30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = *(a1 + 16);
    v5 = __OFADD__(v3, v9);
    result = (v3 + v9);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = __CocoaSet.count.getter();
  v5 = __OFADD__(v3, v4);
  result = (v3 + v4);
  if (!v5)
  {
LABEL_4:
    sub_10021C3DC(result);

    sub_100271590(v7);

    sub_100271578(v8);
    return &_swiftEmptyArrayStorage;
  }

LABEL_8:
  __break(1u);
  return result;
}

double sub_100215FF8(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer **a3, uint64_t a4)
{
  v52 = _swiftEmptyDictionarySingleton;
  v51 = _swiftEmptySetSingleton;

  sub_10021F440(a1, a2, &v52, &v51);
  a2, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_10038E300(&_swiftEmptyArrayStorage);

  v16 = sub_10021FFC8(v15, a2, &v52, a4);

  v17 = *a3;
  *a3 = v16;
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = v51;
  sub_10021551C(v51);
  v27 = v26;
  v25, v28, v29, v30, v31, v32, v33, v34;
  v27, v35, v36, v37, v38, v39, v40, v41;
  v49 = v52;

  v49, v42, v43, v44, v45, v46, v47, v48;
  return result;
}

void sub_1002160F4(uint64_t a1, void *a2)
{
  v4 = v2;
  v204 = a2;
  v6 = 0;
  v198 = type metadata accessor for DispatchQoS();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198, v7);
  v196 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for DispatchWorkItemFlags();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195, v9);
  v193 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for UUID();
  v209 = *(v203 - 8);
  __chkstk_darwin(v203, v11);
  v202 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMManualOrdering.PinnedList();
  __chkstk_darwin(v13, v14);
  v206 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v207 = &v192 - v18;
  __chkstk_darwin(v19, v20);
  v208 = &v192 - v21;
  __chkstk_darwin(v22, v23);
  v214 = &v192 - v24;
  __chkstk_darwin(v25, v26);
  v29 = &v192 - v28;
  v30 = &_swiftEmptyArrayStorage;
  aBlock = &_swiftEmptyArrayStorage;
  v31 = *(a1 + 56);
  v211 = a1 + 56;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v216 = v27;
  v217 = v27 + 16;
  v218 = (v27 + 8);
  v219 = a1;

  v205 = 0;
  v36 = v216;
  if (!v34)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v37 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      (*(v36 + 16))(v29, *(v219 + 48) + *(v36 + 72) * (v37 | (v6 << 6)), v13);
      v38 = REMManualOrdering.PinnedList.elementObjectID.getter();
      (*(v36 + 8))(v29, v13);
      if (v38)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_6;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v30 = aBlock;
  }

  while (v34);
  while (1)
  {
LABEL_6:
    v39 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v39 >= v35)
    {
      break;
    }

    v34 = *(v211 + 8 * v39);
    ++v6;
    if (v34)
    {
      v6 = v39;
      goto LABEL_4;
    }
  }

  v213 = v13;

  v40 = sub_1001A577C(v30);
  v30, v41, v42, v43, v44, v45, v46, v47;
  v48 = swift_allocObject();
  *(v48 + 16) = _swiftEmptyDictionarySingleton;
  v49 = swift_allocObject();
  *(v49 + 16) = _swiftEmptySetSingleton;
  v50 = *(v4 + 24);
  v30 = swift_allocObject();
  *(v30 + 16) = v40;
  *(v30 + 24) = v48;
  *(v30 + 32) = v49;
  v51 = *(v50 + 16);
  v52 = swift_allocObject();
  v192 = v50;
  swift_weakInit();
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = sub_100220A94;
  v53[4] = v30;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100220AD0;
  *(v54 + 24) = v53;
  v226 = sub_1000FDA90;
  v227 = v54;
  aBlock = _NSConcreteStackBlock;
  v3 = 1107296256;
  v223 = 1107296256;
  v224 = sub_10000F160;
  v225 = &unk_1008EAA18;
  v55 = _Block_copy(&aBlock);

  dispatch_sync(v51, v55);
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    v98 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_39;
  }

  swift_beginAccess();
  v56 = *(v48 + 16);
  swift_beginAccess();
  v30 = *(v49 + 16);

  v212 = v30;

  aBlock = &_swiftEmptyArrayStorage;
  if ((v56 & 0xC000000000000001) != 0)
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v61 = -1 << *(v56 + 32);
    v58 = ~v61;
    v57 = v56 + 64;
    v62 = -v61;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    else
    {
      v63 = -1;
    }

    v59 = v63 & *(v56 + 64);
    v60 = v56;
  }

  v199 = v56;

  v64 = 0;
  v210 = v58;
  v65 = (v58 + 64) >> 6;
  v66 = &_swiftEmptyArrayStorage;
LABEL_22:
  v215 = v66;
  while ((v60 & 0x8000000000000000) != 0)
  {
    v71 = __CocoaDictionary.Iterator.next()();
    if (!v71)
    {
      goto LABEL_37;
    }

    v73 = v72;
    v220 = v71;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    v70 = v221;
    v220 = v73;
    type metadata accessor for RDElementManualSortID(0);
    swift_dynamicCast();
    v30 = v221;
    if (!v70)
    {
      goto LABEL_37;
    }

LABEL_32:
    if (!*(v30 + 24))
    {
      v74 = v70;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v66 = aBlock;
      goto LABEL_22;
    }
  }

  v67 = v64;
  for (i = v59; !i; ++v67)
  {
    v64 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_91;
    }

    if (v64 >= v65)
    {
      goto LABEL_37;
    }

    i = *(v57 + 8 * v64);
  }

  v59 = (i - 1) & i;
  v69 = (v64 << 9) | (8 * __clz(__rbit64(i)));
  v30 = *(*(v60 + 56) + v69);
  v70 = *(*(v60 + 48) + v69);

  if (v70)
  {
    goto LABEL_32;
  }

LABEL_37:
  sub_10001B860(v60);
  v75 = v212;
  v76 = v215;
  v30 = sub_100215F30(v212, v215);
  v76, v77, v78, v79, v80, v81, v82, v83;
  v75, v84, v85, v86, v87, v88, v89, v90;
  if (v30 >> 62)
  {
    goto LABEL_99;
  }

  v98 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
  v99 = v213;
  v100 = v214;
  v212 = v98;
  if (v98)
  {
    v101 = sub_10038E118(&_swiftEmptyArrayStorage);
    v102 = 1 << *(v219 + 32);
    v103 = -1;
    if (v102 < 64)
    {
      v103 = ~(-1 << v102);
    }

    v104 = v103 & *(v219 + 56);
    v105 = (v102 + 63) >> 6;

    v106 = 0;
    v214 = v30;
LABEL_43:
    v107 = v106;
    v108 = v211;
    v215 = v101;
    while (v104)
    {
      v106 = v107;
LABEL_51:
      v109 = __clz(__rbit64(v104));
      v104 &= v104 - 1;
      v110 = *(v216 + 16);
      v110(v100, *(v219 + 48) + *(v216 + 72) * (v109 | (v106 << 6)), v99);
      v111 = REMManualOrdering.PinnedList.elementObjectID.getter();
      if (v111)
      {
        v113 = v111;
        aBlock = v111;
        __chkstk_darwin(v111, v112);
        *(&v192 - 2) = &aBlock;
        v114 = v30;
        v115 = v205;
        v116 = sub_10032DE90(sub_100220A9C, (&v192 - 4), v114);
        v205 = v115;
        if (v116)
        {
          v117 = v208;
          v110(v208, v100, v99);
          v118 = v113;
          v119 = v215;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v119;
          sub_1002C7480(v117, v118, isUniquelyReferenced_nonNull_native);

          (*v218)(v100, v99);
          v101 = aBlock;
          v30 = v214;
          goto LABEL_43;
        }

        (*v218)(v100, v99);

        v107 = v106;
        v108 = v211;
        v30 = v214;
      }

      else
      {
        (*v218)(v100, v99);
        v107 = v106;
        v108 = v211;
      }

      v101 = v215;
    }

    while (1)
    {
      v106 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        goto LABEL_92;
      }

      if (v106 >= v105)
      {
        break;
      }

      v104 = *(v108 + 8 * v106);
      ++v107;
      if (v104)
      {
        goto LABEL_51;
      }
    }

    v121 = 0;
    aBlock = sub_10038E300(&_swiftEmptyArrayStorage);
    v122 = v30 & 0xC000000000000001;
    v219 = v30 & 0xFFFFFFFFFFFFFF8;
    v201 = (v209 + 8);
    v200 = (v209 + 32);
    v123 = v206;
    v124 = v207;
    v125 = v212;
    v208 = (v30 & 0xC000000000000001);
    while (2)
    {
      if (v122)
      {
        v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v121 >= *(v219 + 16))
        {
          goto LABEL_94;
        }

        v133 = *(v30 + 8 * v121 + 32);
      }

      v134 = v133;
      v135 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_93;
      }

      if (*(v101 + 16))
      {
        v136 = sub_10002B924(v133);
        if (v137)
        {
          v138 = *(v216 + 16);
          v138(v124, *(v101 + 56) + *(v216 + 72) * v136, v99);
          v138(v123, v124, v99);
          v139 = REMManualOrdering.PinnedList.elementObjectID.getter();
          if (!v139)
          {
            v155 = *v218;
            (*v218)(v123, v99);
            sub_100368FC8(v134);

            v155(v124, v99);
            v30 = v214;
            v125 = v212;
            goto LABEL_83;
          }

          v140 = v139;
          v141 = [v139 uuid];
          v142 = v202;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v211 = UUID.uuidString.getter();
          v210 = v143;
          v144 = v99;
          v145 = v203;
          (*v201)(v142, v203);
          v146 = v123;
          v147 = [v140 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = *v218;
          (*v218)(v146, v144);
          type metadata accessor for RDElementManualSortID(0);
          v148 = swift_allocObject();
          v149 = v210;
          *(v148 + 16) = v211;
          *(v148 + 24) = v149;
          (*v200)(v148 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID, v142, v145);
          v150 = v204;
          *(v148 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v204;
          v151 = aBlock;
          v209 = v30;
          if ((aBlock & 0xC000000000000001) != 0)
          {
            if (aBlock < 0)
            {
              v152 = aBlock;
            }

            else
            {
              v152 = (aBlock & 0xFFFFFFFFFFFFFF8);
            }

            v153 = v150;
            v154 = __CocoaDictionary.count.getter();
            if (__OFADD__(v154, 1))
            {
              goto LABEL_96;
            }

            v151 = sub_10021D4DC(v152, v154 + 1, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
            aBlock = v151;
          }

          else
          {
            v156 = v150;
          }

          v157 = swift_isUniquelyReferenced_nonNull_native();
          v221 = v151;
          v159 = sub_10002B924(v134);
          v160 = *(v151 + 16);
          v161 = (v158 & 1) == 0;
          v162 = v160 + v161;
          v124 = v207;
          v125 = v212;
          if (__OFADD__(v160, v161))
          {
            goto LABEL_95;
          }

          v30 = v158;
          if (*(v151 + 24) >= v162)
          {
            if (v157)
            {
              v165 = v221;
              if ((v158 & 1) == 0)
              {
                goto LABEL_77;
              }
            }

            else
            {
              sub_1003731C0();
              v165 = v221;
              if ((v30 & 1) == 0)
              {
                goto LABEL_77;
              }
            }
          }

          else
          {
            sub_10036A210(v162, v157);
            v163 = sub_10002B924(v134);
            if ((v30 & 1) != (v164 & 1))
            {
              sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_101:

              aBlock, v185, v186, v187, v188, v189, v190, v191;
              __break(1u);
              return;
            }

            v159 = v163;
            v165 = v221;
            if ((v30 & 1) == 0)
            {
LABEL_77:
              v165[(v159 >> 6) + 8] |= 1 << v159;
              *(v165[6] + 8 * v159) = v134;
              *(v165[7] + 8 * v159) = v148;
              (v209)(v124, v213);
              v166 = v165[2];
              v167 = __OFADD__(v166, 1);
              v168 = v166 + 1;
              if (v167)
              {
                goto LABEL_97;
              }

              v165[2] = v168;
              aBlock = v165;
              v99 = v213;
LABEL_82:
              v123 = v206;
              v30 = v214;
LABEL_83:
              v101 = v215;
              v122 = v208;
LABEL_57:
              ++v121;
              if (v135 == v125)
              {
                v101, v126, v127, v128, v129, v130, v131, v132;
                v30, v170, v171, v172, v173, v174, v175, v176;
                v177 = aBlock;
                v178 = swift_allocObject();
                *(v178 + 16) = v177;

                v179 = v193;
                static DispatchWorkItemFlags.barrier.getter();
                v180 = swift_allocObject();
                swift_weakInit();
                v181 = swift_allocObject();
                v181[2] = v180;
                v181[3] = sub_1002208B4;
                v181[4] = v178;
                v226 = sub_100220AD4;
                v227 = v181;
                aBlock = _NSConcreteStackBlock;
                v223 = v3;
                v224 = sub_100019200;
                v225 = &unk_1008EAA90;
                v182 = _Block_copy(&aBlock);

                v183 = v196;
                static DispatchQoS.unspecified.getter();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v182);

                (*(v197 + 8))(v183, v198);
                (*(v194 + 8))(v179, v195);

                aBlock = v199;
                v184 = v205;
                sub_10021F054(v177, sub_100220A64, 0, &aBlock);
                if (!v184)
                {
                  return;
                }

                goto LABEL_101;
              }

              continue;
            }
          }

          *(v165[7] + 8 * v159) = v148;

          v169 = v213;
          (v209)(v124, v213);
          aBlock = v165;
          v99 = v169;
          goto LABEL_82;
        }
      }

      break;
    }

    goto LABEL_57;
  }

  v30, v91, v92, v93, v94, v95, v96, v97;
}

void sub_1002173A0(uint64_t a1)
{
  v113 = type metadata accessor for DispatchQoS();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113, v3);
  v109 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110, v5);
  v107 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a1;
  sub_10021417C(a1, &qword_100939D80, off_1008D41B8, &qword_10093A900);
  v8 = v7;
  v111 = 0;
  v9 = sub_1001A577C(v7);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyDictionarySingleton;
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptySetSingleton;
  v114 = v1;
  v115 = v18 + 16;
  p_aBlock = *(v1 + 24);
  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = v17;
  v20[4] = v18;
  v21 = *p_aBlock->clientIdentity;
  v22 = swift_allocObject();
  v106 = p_aBlock;
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_10021F7B4;
  v23[4] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10021F7CC;
  *(v24 + 24) = v23;
  v123 = sub_1000529DC;
  v124 = v24;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10000F160;
  v122 = &unk_1008EA518;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v21, v25);
  _Block_release(v25);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v72 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_29;
  }

  swift_beginAccess();
  v26 = *(v17 + 16);
  swift_beginAccess();
  v27 = *(v18 + 16);

  v28 = sub_10031E8DC(v116);
  if (!v28 || (v36 = v28, v37 = [v28 managedObjectContext], v36, !v37))
  {
    v27, v29, v30, v31, v32, v33, v34, v35;
    return;
  }

  v103 = v37;
  v38 = swift_allocObject();
  v102[0] = v38;
  *(v38 + 16) = _swiftEmptyDictionarySingleton;
  aBlock = &_swiftEmptyArrayStorage;
  v115 = v38 + 16;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v43 = -1 << *(v26 + 32);
    v40 = ~v43;
    v39 = v26 + 64;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v41 = v45 & *(v26 + 64);
    v42 = v26;
  }

  v104 = v26;

  v46 = 0;
  v102[1] = v40;
  v47 = (v40 + 64) >> 6;
  v48 = &_swiftEmptyArrayStorage;
LABEL_12:
  v105 = v48;
  while ((v42 & 0x8000000000000000) != 0)
  {
    v53 = __CocoaDictionary.Iterator.next()();
    if (!v53)
    {
      goto LABEL_27;
    }

    v55 = v54;
    v117 = v53;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    p_aBlock = v118;
    v117 = v55;
    type metadata accessor for RDElementManualSortID(0);
    swift_dynamicCast();
    v52 = v118;
    if (!p_aBlock)
    {
      goto LABEL_27;
    }

LABEL_22:
    if (!*&v52->clientIdentity[8])
    {
      v56 = p_aBlock;

      p_aBlock = &aBlock;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v48 = aBlock;
      goto LABEL_12;
    }
  }

  v49 = v46;
  v50 = v41;
  if (!v41)
  {
    while (1)
    {
      v46 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v46 >= v47)
      {
        goto LABEL_27;
      }

      v50 = *(v39 + 8 * v46);
      ++v49;
      if (v50)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_18:
  v41 = (v50 - 1) & v50;
  v51 = (v46 << 9) | (8 * __clz(__rbit64(v50)));
  v52 = *(*(v42 + 56) + v51);
  p_aBlock = *(*(v42 + 48) + v51);

  if (p_aBlock)
  {
    goto LABEL_22;
  }

LABEL_27:
  sub_10001B860(v42);
  v57 = v105;
  p_aBlock = sub_100215F30(v27, v105);
  v57, v58, v59, v60, v61, v62, v63, v64;
  v27, v65, v66, v67, v68, v69, v70, v71;
  if (p_aBlock >> 62)
  {
    goto LABEL_36;
  }

  v72 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v73 = v116;
  v74 = v104;
  v75 = v103;
  if (v72)
  {
    v76 = swift_allocObject();
    v76[2] = v73;
    v76[3] = p_aBlock;
    v77 = v114;
    v76[4] = v115;
    v76[5] = v77;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_10021F7D8;
    *(v78 + 24) = v76;
    v123 = sub_1000529DC;
    v124 = v78;
    aBlock = _NSConcreteStackBlock;
    v120 = 1107296256;
    v121 = sub_10000F160;
    v122 = &unk_1008EA590;
    v79 = _Block_copy(&aBlock);

    [v75 performBlockAndWait:v79];
    _Block_release(v79);
    LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

    if (v79)
    {
      __break(1u);
    }

    else
    {
      v80 = v102[0];

      v81 = v107;
      static DispatchWorkItemFlags.barrier.getter();
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      v83[2] = v82;
      v83[3] = sub_10021F7E4;
      v83[4] = v80;
      v123 = sub_10021F828;
      v124 = v83;
      aBlock = _NSConcreteStackBlock;
      v120 = 1107296256;
      v121 = sub_100019200;
      v122 = &unk_1008EA5E0;
      v84 = _Block_copy(&aBlock);

      v85 = v109;
      static DispatchQoS.unspecified.getter();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v84);

      (*(v112 + 8))(v85, v113);
      (*(v108 + 8))(v81, v110);

      swift_beginAccess();
      v118 = v74;

      v87 = v111;
      sub_10021F054(v86, sub_100220A64, 0, &v118);
      if (!v87)
      {

        return;
      }
    }

    v118, v95, v96, v97, v98, v99, v100, v101;
    __break(1u);
  }

  else
  {

    p_aBlock, v88, v89, v90, v91, v92, v93, v94;
  }
}

uint64_t sub_100217DB4(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyDictionarySingleton;
  v124 = (v3 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptySetSingleton;
  v5 = *(v1 + 24);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v3;
  v6[4] = v4;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_100220A98;
  v9[4] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100220AD0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000FDA90;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008EAB30;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v49 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_26;
  }

  swift_beginAccess();
  v7 = *(v3 + 16);
  swift_beginAccess();
  v12 = *(v4 + 16);

  v128 = v7;
  v126 = &_swiftEmptyArrayStorage;
  v121 = v12;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(v7 + 32);
    v14 = ~v17;
    v13 = v7 + 64;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(v7 + 64);
    v16 = v7;
  }

  v124 = v7;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v21 = (v14 + 64) >> 6;
  v22 = &_swiftEmptyArrayStorage;
LABEL_9:
  v123 = v22;
  while ((v16 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()())
    {
      goto LABEL_24;
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    v7 = v125;
    type metadata accessor for RDAccountManualSortID(0);
    swift_dynamicCast();
    v26 = v125;
    if (!v125)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (!*(v26 + 24))
    {
      v27 = v7;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 = &v126;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v22 = v126;
      goto LABEL_9;
    }
  }

  v23 = v20;
  v24 = v15;
  if (!v15)
  {
    while (1)
    {
      v20 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        goto LABEL_24;
      }

      v24 = *(v13 + 8 * v20);
      ++v23;
      if (v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_15:
  v15 = (v24 - 1) & v24;
  v25 = (v20 << 9) | (8 * __clz(__rbit64(v24)));
  v26 = *(*(v16 + 56) + v25);
  v7 = *(*(v16 + 48) + v25);

  if (v7)
  {
    goto LABEL_19;
  }

LABEL_24:
  sub_10001B860(v16);
  v7 = sub_100215F30(v121, v123);
  v123, v28, v29, v30, v31, v32, v33, v34;
  v121, v35, v36, v37, v38, v39, v40, v41;
  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  v49 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
  v50 = v124;
  v124, v42, v43, v44, v45, v46, v47, v48;
  if (v49)
  {
    v58 = sub_100530294(v7);
    v50 = sub_10000F8A4(v58, 0, 1u);
    v58, v59, v60, v61, v62, v63, v64, v65;
    if (qword_1009363E0 != -1)
    {
      swift_once();
    }

    v66 = qword_100974F38;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v67 = [objc_allocWithZone(NSFetchRequest) init];
    v68 = [swift_getObjCClassFromMetadata() entity];
    [v67 setEntity:v68];

    [v67 setAffectedStores:0];
    [v67 setPredicate:v50];
    v126 = _swiftEmptySetSingleton;

    sub_100010864(v69);
    v66, v70, v71, v72, v73, v74, v75, v76;
    v77 = v126;
    v78 = sub_1002137C0(v126);
    v77, v79, v80, v81, v82, v83, v84, v85;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v78, v87, v88, v89, v90, v91, v92, v93;
    [v67 setPropertiesToFetch:isa];

    v94 = NSManagedObjectContext.fetch<A>(_:)();
    if (v122)
    {

      v124, v95, v96, v97, v98, v99, v100, v101;
    }

    else
    {
      v102 = v94;
      v103 = sub_1001A615C(v94);
      v102, v104, v105, v106, v107, v108, v109, v110;
      sub_10021551C(v103);
      v112 = v111;
      v103, v113, v114, v115, v116, v117, v118, v119;
      sub_10021F218(v112, sub_100220A64, 0, &v128);

      return v128;
    }
  }

  else
  {
    v7, v51, v52, v53, v54, v55, v56, v57;
  }

  return v50;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002184FC(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyDictionarySingleton;
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptySetSingleton;
  v5 = *(v1 + 24);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v3;
  v6[4] = v4;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_100220A94;
  v9[4] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100220AD0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000FDA90;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008EA810;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v49 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_25;
  }

  swift_beginAccess();
  v12 = *(v3 + 16);
  swift_beginAccess();
  v13 = *(v4 + 16);

  v79 = v12;
  v74 = v13;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v12 + 32);
    v15 = ~v18;
    v14 = v12 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & *(v12 + 64);
    v17 = v12;
  }

  v75 = v12;
  swift_bridgeObjectRetain_n();
  v3 = 0;
  v21 = (v15 + 64) >> 6;
  while ((v17 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()())
    {
      goto LABEL_23;
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    v26 = v77;
    type metadata accessor for RDElementManualSortID(0);
    swift_dynamicCast();
    v25 = v77;
    if (!v77)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (v25[3])
    {
    }

    else
    {
      v27 = v26;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v22 = v3;
  v23 = v16;
  if (!v16)
  {
    while (1)
    {
      v3 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v3 >= v21)
      {
        goto LABEL_23;
      }

      v23 = *(v14 + 8 * v3);
      ++v22;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_14:
  v16 = (v23 - 1) & v23;
  v24 = (v3 << 9) | (8 * __clz(__rbit64(v23)));
  v25 = *(*(v17 + 56) + v24);
  v26 = *(*(v17 + 48) + v24);

  if (v26)
  {
    goto LABEL_18;
  }

LABEL_23:
  sub_10001B860(v17);
  v3 = sub_100215F30(v74, &_swiftEmptyArrayStorage);
  &_swiftEmptyArrayStorage, v28, v29, v30, v31, v32, v33, v34;
  v74, v35, v36, v37, v38, v39, v40, v41;
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  v49 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
  v50 = v75;
  v75, v42, v43, v44, v45, v46, v47, v48;
  if (v49)
  {
    __chkstk_darwin(v51, v52);
    NSManagedObjectContext.performAndWait<A>(_:)();
    v3, v59, v60, v61, v62, v63, v64, v65;
    v50 = v79;
    if (v76)
    {
      v79, v66, v67, v68, v69, v70, v71, v72;
    }
  }

  else
  {
    v3, v52, v53, v54, v55, v56, v57, v58;
  }

  return v50;
}

void sub_100218AC8(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v483 = a6;
  v461 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v461, v10);
  v462 = &v453 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v463, v12);
  v464 = &v453 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMManualOrdering.PinnedList();
  v485 = *(v14 - 8);
  v486 = v14;
  __chkstk_darwin(v14, v15);
  v468 = &v453 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v465 = &v453 - v19;
  __chkstk_darwin(v20, v21);
  v473 = (&v453 - v22);
  __chkstk_darwin(v23, v24);
  v470 = &v453 - v25;
  __chkstk_darwin(v26, v27);
  v467 = &v453 - v28;
  __chkstk_darwin(v29, v30);
  v474 = (&v453 - v31);
  __chkstk_darwin(v32, v33);
  v475 = &v453 - v34;
  __chkstk_darwin(v35, v36);
  v472 = &v453 - v37;
  __chkstk_darwin(v38, v39);
  v41 = &v453 - v40;
  v42 = type metadata accessor for REMManualOrdering.ElementType();
  v43 = *(v42 - 8);
  v45 = __chkstk_darwin(v42, v44);
  v47 = &v453 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v47, a1, v42, v45);
  v48 = (*(v43 + 88))(v47, v42);
  if (v48 == enum case for REMManualOrdering.ElementType.reminders(_:))
  {

    v50 = sub_100530294(v49);
    v488 = v50;
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    sub_100220748();
    v51 = BidirectionalCollection<>.slices(by:)();
    v50, v52, v53, v54, v55, v56, v57, v58;
    v59 = a4;

    sub_10021F834(v51, v59, a5, v483);
    v51, v60, v61, v62, v63, v64, v65, v66;

    return;
  }

  v67 = v477;
  v482 = a2;
  v466 = a4;
  v457 = a5;
  if (v48 == enum case for REMManualOrdering.ElementType.pinnedLists(_:))
  {
    v68 = sub_10003A1B8();
    v69 = v483;
    if (!v68)
    {
      return;
    }

    v453 = v68;
    v488 = &_swiftEmptyArrayStorage;
    v70 = v482;

    v484 = sub_1001A577C(v71);
    v70, v72, v73, v74, v75, v76, v77, v78;
    v454 = v70 >> 62;
    if (v70 >> 62)
    {
      goto LABEL_105;
    }

    v480 = v70 & 0xFFFFFFFFFFFFFF8;
    for (i = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v86 = 0;
      v478 = v70 & 0xC000000000000001;
      while (1)
      {
        if (i == v86)
        {
          goto LABEL_134;
        }

        if (v478)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v86 >= *(v480 + 16))
          {
            goto LABEL_100;
          }

          v87 = *(v70 + 8 * v86 + 32);
        }

        v70 = v87;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_99;
        }

        v88 = [(RDXPCStorePerformer *)v87 entityName];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = [objc_opt_self() cdEntityName];
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;

        if (v89 == v67 && v91 == v94)
        {
          break;
        }

        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v91, v96, v97, v98, v99, v100, v101, v102;
        v94, v103, v104, v105, v106, v107, v108, v109;
        ++v86;
        v70 = v482;
        v69 = v483;
        if (v67)
        {
          goto LABEL_27;
        }
      }

      v91, v140, v141, v142, v143, v144, v145, v146;
      v94, v147, v148, v149, v150, v151, v152, v153;
LABEL_27:
      v154 = static REMSmartListType.manualOrderablePredefinedSmartListTypes.getter();
      v70 = v154;
      v481 = *(v154 + 16);
      if (!v481)
      {
        break;
      }

      v162 = 0;
      v476 = (v154 + 32);
      v163 = enum case for REMManualOrdering.PinnedList.predefinedSmartList(_:);
      v164 = (v485 + 104);
      v69 = v485 + 32;
      v165 = &_swiftEmptyArrayStorage;
      while (v162 < *(v70 + 16))
      {
        v166 = *(&v476->super.isa + v162);
        *v41 = v166;
        (*v164)(v41, v163, v486);
        v167 = v166;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v165 = sub_100365A9C(0, *v165->clientIdentity + 1, 1, v165);
        }

        v67 = *v165->clientIdentity;
        v168 = *&v165->clientIdentity[8];
        if (v67 >= v168 >> 1)
        {
          v165 = sub_100365A9C((v168 > 1), v67 + 1, 1, v165);
        }

        v162 = (v162 + 1);
        *v165->clientIdentity = v67 + 1;
        (*(v485 + 32))(v165 + ((*(v485 + 80) + 32) & ~*(v485 + 80)) + *(v485 + 72) * v67, v41, v486);
        if (v481 == v162)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      v480 = v70 & 0xFFFFFFFFFFFFFF8;
    }

    v165 = &_swiftEmptyArrayStorage;
LABEL_37:
    v70, v155, v156, v157, v158, v159, v160, v161;
    v176 = *v165->clientIdentity;
    if (v176)
    {
      v69 = 0;
      v67 = v485 + 16;
      v471 = (v484 & 0xC000000000000001);
      v177 = v484 & 0xFFFFFFFFFFFFFF8;
      if (v484 < 0)
      {
        v177 = v484;
      }

      v456 = v177;
      v481 = (v484 + 56);
      v460 = (v485 + 32);
      v469 = &_swiftEmptyArrayStorage;
      v476 = (v485 + 8);
      v178 = v472;
      v459 = v176;
      v458 = v485 + 16;
      while (1)
      {
        if (v69 >= *v165->clientIdentity)
        {
          goto LABEL_98;
        }

        v179 = (*(v485 + 80) + 32) & ~*(v485 + 80);
        v180 = *(v485 + 72);
        (*(v485 + 16))(v178, v165 + v179 + v180 * v69, v486);
        v70 = v178;
        v181 = REMManualOrdering.PinnedList.elementObjectID.getter();
        if (v181)
        {
          v41 = v181;
          if (v471)
          {
            v70 = __CocoaSet.contains(_:)();

            if (v70)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v455 = v179;
            if (*(v484 + 16))
            {
              sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
              v186 = v484;
              v70 = v41;
              v187 = NSObject._rawHashValue(seed:)(*(v484 + 40));
              v188 = -1 << *(v186 + 32);
              v189 = v187 & ~v188;
              if ((*(&v481->super.isa + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189))
              {
                v190 = ~v188;
                while (1)
                {
                  v191 = *(*(v484 + 48) + 8 * v189);
                  v70 = static NSObject.== infix(_:_:)();

                  if (v70)
                  {
                    break;
                  }

                  v189 = (v189 + 1) & v190;
                  if (((*(&v481->super.isa + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189) & 1) == 0)
                  {
                    goto LABEL_41;
                  }
                }

                v178 = v472;
                v179 = v455;
LABEL_48:
                v182 = *v460;
                (*v460)(v475, v178, v486);
                v70 = v469;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v487 = v70;
                v41 = v179;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100253860(0, *(v70 + 16) + 1, 1);
                  v70 = v487;
                }

                v185 = *(v70 + 16);
                v184 = *(v70 + 24);
                if (v185 >= v184 >> 1)
                {
                  sub_100253860((v184 > 1), v185 + 1, 1);
                  v70 = v487;
                }

                *(v70 + 16) = v185 + 1;
                v469 = v70;
                v182((v70 + v179 + v185 * v180), v475, v486);
                v176 = v459;
                v67 = v458;
                goto LABEL_43;
              }
            }

LABEL_41:

            v178 = v472;
            v176 = v459;
            v67 = v458;
          }
        }

        (v476->super.isa)(v178, v486);
LABEL_43:
        if (++v69 == v176)
        {
          goto LABEL_61;
        }
      }
    }

    v469 = &_swiftEmptyArrayStorage;
LABEL_61:
    v165, v169, v170, v171, v172, v173, v174, v175;
    sub_100272320(v469);
    v192 = v488;
    v193 = *v488->clientIdentity;
    if (v454)
    {
      v70 = v482;
      v194 = _CocoaArrayWrapper.endIndex.getter();
      v69 = v483;
      if (v193 >= v194)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v70 = v482;
      v69 = v483;
      if (v193 >= *(v480 + 16))
      {
        goto LABEL_134;
      }
    }

    v195 = v464;
    swift_storeEnumTagMultiPayload();
    v196 = sub_10002DDAC();
    sub_1000252B4(v195, _s10PredicatesOMa_3);
    if (qword_100936800 != -1)
    {
      swift_once();
    }

    v197 = qword_100975350;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v198 = [objc_allocWithZone(NSFetchRequest) init];
    v199 = [swift_getObjCClassFromMetadata() entity];
    [v198 setEntity:v199];

    [v198 setAffectedStores:0];
    [v198 setPredicate:v196];
    v487 = _swiftEmptySetSingleton;

    sub_10003AFC0(v200);
    v197, v201, v202, v203, v204, v205, v206, v207;
    v208 = v487;
    v209 = v477;
    v210 = sub_1002133B0(v487);
    v208, v211, v212, v213, v214, v215, v216, v217;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v210, v219, v220, v221, v222, v223, v224, v225;
    [v198 setPropertiesToFetch:isa];

    v226 = NSManagedObjectContext.fetch<A>(_:)();
    v234 = v484;
    if (v209)
    {
      v192, v227, v228, v229, v230, v231, v232, v233;

      v242 = v234;
LABEL_157:
      v242, v235, v236, v237, v238, v239, v240, v241;
      return;
    }

    v67 = v226;
    v487 = &_swiftEmptyArrayStorage;
    v477 = 0;
    v460 = v198;
    v243 = v226 & 0xFFFFFFFFFFFFFF8;
    if (v226 >> 62)
    {
      v244 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v244 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = 0;
    v69 = v67 & 0xC000000000000001;
    v481 = &_swiftEmptyArrayStorage;
    v70 = &selRef_persistentStoreForIdentifier_;
    while (v244 != v41)
    {
      if (v69)
      {
        v245 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *(v243 + 16))
        {
          goto LABEL_102;
        }

        v245 = *(v67 + 8 * v41 + 32);
      }

      v246 = v245;
      v247 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        goto LABEL_101;
      }

      v248 = [v245 remObjectID];

      ++v41;
      if (v248)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v487 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v487 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v481 = v487;
        v41 = v247;
      }
    }

    v67, v227, v228, v229, v230, v231, v232, v233;
    if (v481 >> 62)
    {
      v69 = _CocoaArrayWrapper.endIndex.getter();
      if (v69)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v69 = *((v481 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v69)
      {
LABEL_84:
        v41 = 0;
        v476 = (v481 & 0xC000000000000001);
        v475 = (v481 & 0xFFFFFFFFFFFFFF8);
        v256 = enum case for REMManualOrdering.PinnedList.listOrCustomSmartList(_:);
        v257 = (v485 + 104);
        v70 = v485 + 32;
        v258 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v476)
          {
            v259 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v260 = (v41 + 1);
            if (__OFADD__(v41, 1))
            {
              goto LABEL_103;
            }
          }

          else
          {
            if (v41 >= *(v475 + 2))
            {
              goto LABEL_104;
            }

            v259 = *&v481->clientIdentity[8 * v41 + 16];
            v260 = (v41 + 1);
            if (__OFADD__(v41, 1))
            {
              goto LABEL_103;
            }
          }

          v261 = v474;
          *v474 = v259;
          (*v257)(v261, v256, v486);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v258 = sub_100365A9C(0, *v258->clientIdentity + 1, 1, v258);
          }

          v67 = *v258->clientIdentity;
          v262 = *&v258->clientIdentity[8];
          if (v67 >= v262 >> 1)
          {
            v258 = sub_100365A9C((v262 > 1), v67 + 1, 1, v258);
          }

          *v258->clientIdentity = v67 + 1;
          (*(v485 + 32))(v258 + ((*(v485 + 80) + 32) & ~*(v485 + 80)) + *(v485 + 72) * v67, v474, v486);
          ++v41;
          if (v260 == v69)
          {
            goto LABEL_109;
          }
        }
      }
    }

    v258 = &_swiftEmptyArrayStorage;
LABEL_109:
    v481, v249, v250, v251, v252, v253, v254, v255;
    v270 = *v258->clientIdentity;
    if (!v270)
    {
      v471 = &_swiftEmptyArrayStorage;
      v69 = v483;
LABEL_133:
      v258, v263, v264, v265, v266, v267, v268, v269;
      sub_100272320(v471);

      v70 = v482;
LABEL_134:
      v258 = v488;
      v291 = *v488->clientIdentity;
      if (v454)
      {
        if (v291 >= _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_151:
          v484, v79, v80, v81, v82, v83, v84, v85;
LABEL_152:
          v318 = v488;

          v320 = sub_1001A5CDC(v319);
          v318, v321, v322, v323, v324, v325, v326, v327;
          v328 = v453;
          sub_1002160F4(v320, v453);
          v330 = v329;
          v320, v331, v332, v333, v334, v335, v336, v337;
          sub_10021F054(v330, sub_100220A64, 0, v69);
          v318, v338, v339, v340, v341, v342, v343, v344;

          return;
        }
      }

      else if (v291 >= *(v480 + 16))
      {
        goto LABEL_151;
      }

      v292 = 0;
      while (1)
      {
        if (i == v292)
        {
          goto LABEL_151;
        }

        if (v478)
        {
          v293 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v292 >= *(v480 + 16))
          {
            goto LABEL_187;
          }

          v293 = *(v70 + 8 * v292 + 32);
        }

        v294 = v293;
        if (__OFADD__(v292, 1))
        {
          break;
        }

        v295 = [v293 entityName];
        v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v297;

        v298 = [objc_opt_self() cdEntityName];
        v299 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v301 = v300;

        if (v296 == v299 && v67 == v301)
        {

          v67, v345, v346, v347, v348, v349, v350, v351;
          v301, v352, v353, v354, v355, v356, v357, v358;
LABEL_154:
          v359 = v462;
          swift_storeEnumTagMultiPayload();
          v67 = sub_10001F6F4();
          sub_1000252B4(v359, _s10PredicatesOMa_1);
          if (qword_1009367F8 == -1)
          {
LABEL_155:
            v360 = qword_100975348;
            sub_1000060C8(0, &unk_100938880, off_1008D41A8);
            v361 = [objc_allocWithZone(NSFetchRequest) init];
            v362 = [swift_getObjCClassFromMetadata() entity];
            [v361 setEntity:v362];

            [v361 setAffectedStores:0];
            [v361 setPredicate:v67];
            v487 = _swiftEmptySetSingleton;

            sub_100391CC4(v363);
            v360, v364, v365, v366, v367, v368, v369, v370;
            v371 = v487;
            v372 = v477;
            v373 = sub_1003FE48C(v487);
            v371, v374, v375, v376, v377, v378, v379, v380;
            v381 = Array._bridgeToObjectiveC()().super.isa;
            v373, v382, v383, v384, v385, v386, v387, v388;
            [v361 setPropertiesToFetch:v381];

            v389 = NSManagedObjectContext.fetch<A>(_:)();
            v397 = v372;
            if (v372)
            {
              v258, v390, v391, v392, v393, v394, v395, v396;

              v242 = v484;
              goto LABEL_157;
            }

            v67 = v389;
            v472 = v361;
            v487 = &_swiftEmptyArrayStorage;
            v398 = v389 & 0xFFFFFFFFFFFFFF8;
            if (v389 >> 62)
            {
              v258 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v258 = *((v389 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v399 = 0;
            v482 = &_swiftEmptyArrayStorage;
            while (v258 != v399)
            {
              if ((v67 & 0xC000000000000001) != 0)
              {
                v400 = v397;
                v401 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v399 >= *(v398 + 16))
                {
                  goto LABEL_189;
                }

                v400 = v397;
                v401 = *(v67 + 8 * v399 + 32);
              }

              v402 = v401;
              v403 = (&v399->super.isa + 1);
              if (__OFADD__(v399, 1))
              {
                goto LABEL_188;
              }

              v404 = [v401 remObjectID];

              v399 = (v399 + 1);
              v397 = v400;
              if (v404)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v487 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v487 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v482 = v487;
                v399 = v403;
              }
            }

            v67, v390, v391, v392, v393, v394, v395, v396;
            if (v482 >> 62)
            {
              v412 = _CocoaArrayWrapper.endIndex.getter();
              if (v412)
              {
                goto LABEL_173;
              }
            }

            else
            {
              v412 = *((v482 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v412)
              {
LABEL_173:
                v413 = 0;
                v481 = (v482 & 0xC000000000000001);
                v480 = v482 & 0xFFFFFFFFFFFFFF8;
                LODWORD(i) = enum case for REMManualOrdering.PinnedList.listOrCustomSmartList(_:);
                v414 = (v485 + 104);
                v258 = &_swiftEmptyArrayStorage;
                while (1)
                {
                  if (v481)
                  {
                    v415 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v416 = v413 + 1;
                    if (__OFADD__(v413, 1))
                    {
                      goto LABEL_191;
                    }
                  }

                  else
                  {
                    if (v413 >= *(v480 + 16))
                    {
                      goto LABEL_192;
                    }

                    v415 = *(v482 + 8 * v413 + 32);
                    v416 = v413 + 1;
                    if (__OFADD__(v413, 1))
                    {
                      goto LABEL_191;
                    }
                  }

                  v417 = v473;
                  *v473 = v415;
                  (*v414)(v417, i, v486);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v258 = sub_100365A9C(0, *v258->clientIdentity + 1, 1, v258);
                  }

                  v67 = *v258->clientIdentity;
                  v418 = *&v258->clientIdentity[8];
                  if (v67 >= v418 >> 1)
                  {
                    v258 = sub_100365A9C((v418 > 1), v67 + 1, 1, v258);
                  }

                  *v258->clientIdentity = v67 + 1;
                  (*(v485 + 32))(v258 + ((*(v485 + 80) + 32) & ~*(v485 + 80)) + *(v485 + 72) * v67, v473, v486);
                  ++v413;
                  if (v416 == v412)
                  {
                    goto LABEL_197;
                  }
                }
              }
            }

            v258 = &_swiftEmptyArrayStorage;
LABEL_197:
            v482, v405, v406, v407, v408, v409, v410, v411;
            v426 = *v258->clientIdentity;
            if (!v426)
            {
              v476 = &_swiftEmptyArrayStorage;
              v69 = v483;
LABEL_221:
              v258, v419, v420, v421, v422, v423, v424, v425;
              v484, v446, v447, v448, v449, v450, v451, v452;
              sub_100272320(v476);

              goto LABEL_152;
            }

            v427 = 0;
            v480 = v485 + 16;
            v478 = v484 & 0xC000000000000001;
            v428 = v484 & 0xFFFFFFFFFFFFFF8;
            if (v484 < 0)
            {
              v428 = v484;
            }

            v473 = v428;
            v482 = v484 + 56;
            v475 = (v485 + 32);
            v476 = &_swiftEmptyArrayStorage;
            i = (v485 + 8);
            v69 = v483;
            v429 = v465;
            v474 = v426;
            while (2)
            {
              if (v427 >= *v258->clientIdentity)
              {
                __break(1u);
LABEL_223:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
                return;
              }

              v481 = ((*(v485 + 80) + 32) & ~*(v485 + 80));
              v430 = *(v485 + 72);
              (*(v485 + 16))(v429, v481 + v258 + v430 * v427, v486);
              v431 = REMManualOrdering.PinnedList.elementObjectID.getter();
              if (!v431)
              {
                goto LABEL_202;
              }

              v432 = v431;
              if (v478)
              {
                v433 = __CocoaSet.contains(_:)();

                if (v433)
                {
                  goto LABEL_208;
                }

LABEL_202:
                (*i)(v429, v486);
              }

              else
              {
                v477 = v397;
                v439 = v484;
                if (!*(v484 + 16) || (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), v440 = NSObject._rawHashValue(seed:)(*(v439 + 40)), v441 = -1 << *(v439 + 32), v442 = v440 & ~v441, ((*(v482 + ((v442 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v442) & 1) == 0))
                {
LABEL_201:

                  v397 = v477;
                  v69 = v483;
                  v429 = v465;
                  v426 = v474;
                  goto LABEL_202;
                }

                v443 = ~v441;
                while (1)
                {
                  v444 = *(*(v484 + 48) + 8 * v442);
                  v445 = static NSObject.== infix(_:_:)();

                  if (v445)
                  {
                    break;
                  }

                  v442 = (v442 + 1) & v443;
                  if (((*(v482 + ((v442 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v442) & 1) == 0)
                  {
                    goto LABEL_201;
                  }
                }

                v397 = v477;
                v429 = v465;
LABEL_208:
                v434 = *v475;
                (*v475)(v468, v429, v486);
                v435 = v476;
                v436 = swift_isUniquelyReferenced_nonNull_native();
                v487 = v435;
                if ((v436 & 1) == 0)
                {
                  sub_100253860(0, *v435->clientIdentity + 1, 1);
                  v435 = v487;
                }

                v438 = *v435->clientIdentity;
                v437 = *&v435->clientIdentity[8];
                if (v438 >= v437 >> 1)
                {
                  sub_100253860((v437 > 1), v438 + 1, 1);
                  v435 = v487;
                }

                *v435->clientIdentity = v438 + 1;
                v476 = v435;
                v434(v481 + v435 + v438 * v430, v468, v486);
                v69 = v483;
                v426 = v474;
              }

              if (++v427 == v426)
              {
                goto LABEL_221;
              }

              continue;
            }
          }

LABEL_193:
          swift_once();
          goto LABEL_155;
        }

        v303 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v67, v304, v305, v306, v307, v308, v309, v310;
        v301, v311, v312, v313, v314, v315, v316, v317;
        ++v292;
        v70 = v482;
        v69 = v483;
        if (v303)
        {
          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v271 = 0;
    v476 = (v485 + 16);
    v472 = (v484 & 0xC000000000000001);
    v272 = v484 & 0xFFFFFFFFFFFFFF8;
    if (v484 < 0)
    {
      v272 = v484;
    }

    v463 = v272;
    v481 = (v484 + 56);
    v469 = (v485 + 32);
    v471 = &_swiftEmptyArrayStorage;
    v475 = (v485 + 8);
    v69 = v483;
    v273 = v467;
    v464 = v270;
    while (1)
    {
      if (v271 >= *v258->clientIdentity)
      {
        goto LABEL_190;
      }

      v274 = (*(v485 + 80) + 32) & ~*(v485 + 80);
      v67 = *(v485 + 72);
      (*(v485 + 16))(v273, v258 + v274 + v67 * v271, v486);
      v275 = REMManualOrdering.PinnedList.elementObjectID.getter();
      if (v275)
      {
        v276 = v275;
        if (v472)
        {
          v474 = v274;
          v277 = __CocoaSet.contains(_:)();

          if (v277)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v284 = v484;
          if (*(v484 + 16))
          {
            v474 = v274;
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v285 = NSObject._rawHashValue(seed:)(*(v284 + 40));
            v286 = -1 << *(v284 + 32);
            v287 = v285 & ~v286;
            if ((*(&v481->super.isa + ((v287 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v287))
            {
              v288 = ~v286;
              while (1)
              {
                v289 = *(*(v484 + 48) + 8 * v287);
                v290 = static NSObject.== infix(_:_:)();

                if (v290)
                {
                  break;
                }

                v287 = (v287 + 1) & v288;
                if (((*(&v481->super.isa + ((v287 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v287) & 1) == 0)
                {
                  goto LABEL_113;
                }
              }

              v273 = v467;
LABEL_120:
              v278 = v469->super.isa;
              (v469->super.isa)(v470, v273, v486);
              v279 = v471;
              v280 = swift_isUniquelyReferenced_nonNull_native();
              v281 = v279;
              v487 = v279;
              if ((v280 & 1) == 0)
              {
                sub_100253860(0, *v279->clientIdentity + 1, 1);
                v281 = v487;
              }

              v283 = *v281->clientIdentity;
              v282 = *&v281->clientIdentity[8];
              if (v283 >= v282 >> 1)
              {
                sub_100253860((v282 > 1), v283 + 1, 1);
                v281 = v487;
              }

              *v281->clientIdentity = v283 + 1;
              v471 = v281;
              v278(v474 + v281 + v283 * v67, v470, v486);
              v69 = v483;
              v270 = v464;
              goto LABEL_115;
            }
          }

LABEL_113:

          v69 = v483;
          v273 = v467;
          v270 = v464;
        }
      }

      (*v475)(v273, v486);
LABEL_115:
      if (++v271 == v270)
      {
        goto LABEL_133;
      }
    }
  }

  v110 = v483;
  if (v48 == enum case for REMManualOrdering.ElementType.templates(_:))
  {

    v112 = sub_100530294(v111);
    v488 = v112;
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    sub_100220748();
    v113 = BidirectionalCollection<>.slices(by:)();
    v112, v114, v115, v116, v117, v118, v119, v120;
    v121 = v466;
    v122 = v457;

    v123 = sub_10021A72C;
  }

  else
  {
    if (v48 != enum case for REMManualOrdering.ElementType.savedReminders(_:))
    {
      goto LABEL_223;
    }

    v125 = sub_100530294(v124);
    v488 = v125;
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    sub_100220748();
    v113 = BidirectionalCollection<>.slices(by:)();
    v125, v126, v127, v128, v129, v130, v131, v132;
    v121 = v466;
    v122 = v457;

    v123 = sub_10021ADDC;
  }

  sub_10021FB38(v113, v121, v122, v110, v123);
  v113, v133, v134, v135, v136, v137, v138, v139;
}

void sub_10021A72C(uint64_t *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if ((v8 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = &_swiftEmptyArrayStorage;
  }

  v11 = *v10->clientIdentity;

  if (__OFSUB__(v8 >> 1, v7))
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v11 != (v8 >> 1) - v7)
  {
LABEL_55:
    swift_unknownObjectRelease();
LABEL_2:
    sub_100278278(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = &_swiftEmptyArrayStorage;
  }

LABEL_9:
  v111 = v9;
  if (qword_100936808 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = qword_100975358;
    if (!(qword_100975358 >> 62))
    {
      v13 = *((qword_100975358 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v110 = a4;
      if (!v13)
      {
        break;
      }

      goto LABEL_12;
    }

    v27 = qword_100975358;
    v28 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v27;
    v13 = v28;
    v110 = a4;
    if (!v28)
    {
      break;
    }

LABEL_12:
    v14 = 0;
    v113 = v12 & 0xFFFFFFFFFFFFFF8;
    v115 = v12 & 0xC000000000000001;
    a4 = &_swiftEmptyArrayStorage;
    while (v115)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v16 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v17)
      {
LABEL_56:
        _StringGuts.grow(_:)(46);
        v109._object = 0x80000001007EC120;
        v109._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v109);
        sub_1000F5104(&qword_100938C08, &unk_10079B270);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v18 = v16;
      v19 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a4 = sub_100365788(0, *a4->clientIdentity + 1, 1, a4, v20, v21, v22, v23);
      }

      v25 = *a4->clientIdentity;
      v24 = *&a4->clientIdentity[8];
      if (v25 >= v24 >> 1)
      {
        a4 = sub_100365788((v24 > 1), v25 + 1, 1, a4, v20, v21, v22, v23);
      }

      *a4->clientIdentity = v25 + 1;
      v26 = a4 + 16 * v25;
      *(v26 + 4) = v18;
      *(v26 + 5) = v19;
      ++v14;
      if (v15 == v13)
      {
        goto LABEL_30;
      }
    }

    if (v14 >= *(v113 + 16))
    {
      goto LABEL_26;
    }

    v15 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  a4 = &_swiftEmptyArrayStorage;
LABEL_30:
  if (qword_100936810 != -1)
  {
    goto LABEL_48;
  }

LABEL_31:
  v29 = qword_100975360;
  if (!(qword_100975360 >> 62))
  {
    v30 = *((qword_100975360 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_50;
    }

    goto LABEL_33;
  }

  v45 = qword_100975360;
  v46 = _CocoaArrayWrapper.endIndex.getter();
  v29 = v45;
  v30 = v46;
  if (v46)
  {
LABEL_33:
    v31 = 0;
    v114 = v29 & 0xFFFFFFFFFFFFFF8;
    v116 = v29 & 0xC000000000000001;
    v32 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v116)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v31 >= *(v114 + 16))
        {
          goto LABEL_47;
        }

        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          swift_once();
          goto LABEL_31;
        }
      }

      v34 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v35)
      {
        goto LABEL_56;
      }

      v36 = v34;
      v37 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100365788(0, *v32->clientIdentity + 1, 1, v32, v38, v39, v40, v41);
      }

      v43 = *v32->clientIdentity;
      v42 = *&v32->clientIdentity[8];
      if (v43 >= v42 >> 1)
      {
        v32 = sub_100365788((v42 > 1), v43 + 1, 1, v32, v38, v39, v40, v41);
      }

      *v32->clientIdentity = v43 + 1;
      v44 = v32 + 16 * v43;
      *(v44 + 4) = v36;
      *(v44 + 5) = v37;
      ++v31;
      if (v33 == v30)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_50:
  v32 = &_swiftEmptyArrayStorage;
LABEL_51:
  v47 = sub_10034A794(v111, 1);
  type metadata accessor for REMCDTemplate();
  v48 = [objc_allocWithZone(NSFetchRequest) init];
  v49 = [swift_getObjCClassFromMetadata() entity];
  [v48 setEntity:v49];

  [v48 setAffectedStores:0];
  [v48 setPredicate:v47];

  v50 = sub_10003450C(a4);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v50, v52, v53, v54, v55, v56, v57, v58;
  [v48 setPropertiesToFetch:isa];

  v59 = Array._bridgeToObjectiveC()().super.isa;
  [v48 setRelationshipKeyPathsForPrefetching:v59];

  v60 = NSManagedObjectContext.fetch<A>(_:)();
  if (v112)
  {
    a4, v61, v62, v63, v64, v65, v66, v67;
    v32, v68, v69, v70, v71, v72, v73, v74;
  }

  else
  {
    v75 = v60;
    a4, v61, v62, v63, v64, v65, v66, v67;
    v32, v76, v77, v78, v79, v80, v81, v82;

    v83 = sub_1001A57AC(v75);
    v75, v84, v85, v86, v87, v88, v89, v90;
    sub_10039509C(v83);
    v92 = v91;
    v83, v93, v94, v95, v96, v97, v98, v99;
    sub_1002173A0(v92);
    v101 = v100;
    v92, v102, v103, v104, v105, v106, v107, v108;
    sub_10021F054(v101, sub_100220A64, 0, v110);
  }
}

void sub_10021ADDC(uint64_t *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if ((v8 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = &_swiftEmptyArrayStorage;
  }

  v11 = *v10->clientIdentity;

  if (__OFSUB__(v8 >> 1, v7))
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v11 != (v8 >> 1) - v7)
  {
LABEL_55:
    swift_unknownObjectRelease();
LABEL_2:
    sub_100278278(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = &_swiftEmptyArrayStorage;
  }

LABEL_9:
  v111 = v9;
  if (qword_100936818 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = qword_100975368;
    if (!(qword_100975368 >> 62))
    {
      v13 = *((qword_100975368 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v110 = a4;
      if (!v13)
      {
        break;
      }

      goto LABEL_12;
    }

    v27 = qword_100975368;
    v28 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v27;
    v13 = v28;
    v110 = a4;
    if (!v28)
    {
      break;
    }

LABEL_12:
    v14 = 0;
    v113 = v12 & 0xFFFFFFFFFFFFFF8;
    v115 = v12 & 0xC000000000000001;
    a4 = &_swiftEmptyArrayStorage;
    while (v115)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v16 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v17)
      {
LABEL_56:
        _StringGuts.grow(_:)(46);
        v109._object = 0x80000001007EC120;
        v109._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v109);
        sub_1000F5104(&qword_10093D5C8, &unk_1007A76F0);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v18 = v16;
      v19 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a4 = sub_100365788(0, *a4->clientIdentity + 1, 1, a4, v20, v21, v22, v23);
      }

      v25 = *a4->clientIdentity;
      v24 = *&a4->clientIdentity[8];
      if (v25 >= v24 >> 1)
      {
        a4 = sub_100365788((v24 > 1), v25 + 1, 1, a4, v20, v21, v22, v23);
      }

      *a4->clientIdentity = v25 + 1;
      v26 = a4 + 16 * v25;
      *(v26 + 4) = v18;
      *(v26 + 5) = v19;
      ++v14;
      if (v15 == v13)
      {
        goto LABEL_30;
      }
    }

    if (v14 >= *(v113 + 16))
    {
      goto LABEL_26;
    }

    v15 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  a4 = &_swiftEmptyArrayStorage;
LABEL_30:
  if (qword_100936820 != -1)
  {
    goto LABEL_48;
  }

LABEL_31:
  v29 = qword_100975370;
  if (!(qword_100975370 >> 62))
  {
    v30 = *((qword_100975370 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_50;
    }

    goto LABEL_33;
  }

  v45 = qword_100975370;
  v46 = _CocoaArrayWrapper.endIndex.getter();
  v29 = v45;
  v30 = v46;
  if (v46)
  {
LABEL_33:
    v31 = 0;
    v114 = v29 & 0xFFFFFFFFFFFFFF8;
    v116 = v29 & 0xC000000000000001;
    v32 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v116)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v31 >= *(v114 + 16))
        {
          goto LABEL_47;
        }

        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          swift_once();
          goto LABEL_31;
        }
      }

      v34 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v35)
      {
        goto LABEL_56;
      }

      v36 = v34;
      v37 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100365788(0, *v32->clientIdentity + 1, 1, v32, v38, v39, v40, v41);
      }

      v43 = *v32->clientIdentity;
      v42 = *&v32->clientIdentity[8];
      if (v43 >= v42 >> 1)
      {
        v32 = sub_100365788((v42 > 1), v43 + 1, 1, v32, v38, v39, v40, v41);
      }

      *v32->clientIdentity = v43 + 1;
      v44 = v32 + 16 * v43;
      *(v44 + 4) = v36;
      *(v44 + 5) = v37;
      ++v31;
      if (v33 == v30)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_50:
  v32 = &_swiftEmptyArrayStorage;
LABEL_51:
  v47 = sub_10055BD54(v111, 1);
  type metadata accessor for REMCDSavedReminder();
  v48 = [objc_allocWithZone(NSFetchRequest) init];
  v49 = [swift_getObjCClassFromMetadata() entity];
  [v48 setEntity:v49];

  [v48 setAffectedStores:0];
  [v48 setPredicate:v47];

  v50 = sub_10003450C(a4);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v50, v52, v53, v54, v55, v56, v57, v58;
  [v48 setPropertiesToFetch:isa];

  v59 = Array._bridgeToObjectiveC()().super.isa;
  [v48 setRelationshipKeyPathsForPrefetching:v59];

  v60 = NSManagedObjectContext.fetch<A>(_:)();
  if (v112)
  {
    a4, v61, v62, v63, v64, v65, v66, v67;
    v32, v68, v69, v70, v71, v72, v73, v74;
  }

  else
  {
    v75 = v60;
    a4, v61, v62, v63, v64, v65, v66, v67;
    v32, v76, v77, v78, v79, v80, v81, v82;

    v83 = sub_1001A595C(v75);
    v75, v84, v85, v86, v87, v88, v89, v90;
    sub_100394B34(v83);
    v92 = v91;
    v83, v93, v94, v95, v96, v97, v98, v99;
    sub_1002173A0(v92);
    v101 = v100;
    v92, v102, v103, v104, v105, v106, v107, v108;
    sub_10021F054(v101, sub_100220A64, 0, v110);
  }
}

void sub_10021B48C(void **a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *sub_10000F61C(a2, a2[3]);
  swift_beginAccess();
  v7 = sub_100353718(v5, *(v6 + 16));
  swift_endAccess();
  if (!v7)
  {
    swift_beginAccess();
    sub_100378D70(&v12, v5);
    swift_endAccess();

    return;
  }

  swift_beginAccess();
  v8 = *a3;
  if ((*a3 & 0xC000000000000001) == 0)
  {

    goto LABEL_10;
  }

  if (v8 < 0)
  {
    v9 = *a3;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v10, 1))
  {
    *a3 = sub_10021D4DC(v9, v10 + 1, &qword_100943070, &unk_10079B200, type metadata accessor for RDAccountManualSortID, sub_10036DB04);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a3;
    sub_1002C8BB8(v7, v5, isUniquelyReferenced_nonNull_native);
    *a3 = v12;
    swift_endAccess();

    return;
  }

  __break(1u);
}

void sub_10021B624(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = [*(*sub_10000F61C(a2 a2[3]) + 24)];
  if (!v6)
  {
    swift_beginAccess();
    sub_100378D70(&v12, v5);
    swift_endAccess();

    return;
  }

  v7 = v6;
  swift_beginAccess();
  v8 = *a3;
  if ((*a3 & 0xC000000000000001) == 0)
  {

    goto LABEL_10;
  }

  if (v8 < 0)
  {
    v9 = *a3;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v10, 1))
  {
    *a3 = sub_10021D4DC(v9, v10 + 1, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a3;
    sub_1002C7454(v7, v5, isUniquelyReferenced_nonNull_native);
    *a3 = v12;
    swift_endAccess();

    return;
  }

  __break(1u);
}

void sub_10021B7B4(uint64_t a1, unint64_t a2, _TtC7remindd19RDXPCStorePerformer **a3, uint64_t a4)
{
  v76 = a4;
  v77 = a2;
  v72 = a3;
  v73 = sub_10038F910(&_swiftEmptyArrayStorage);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    sub_10000CE28(&qword_10093A8F8, &qword_1009399F0, off_1008D4120);
    Set.Iterator.init(_cocoa:)();
    a1 = v82[1];
    v5 = v82[2];
    v6 = v82[3];
    v7 = v82[4];
    v8 = v82[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v79 = v6;
  v12 = (v6 + 64) >> 6;
  while (1)
  {
    while (1)
    {
      if (a1 < 0)
      {
        v16 = __CocoaSet.Iterator.next()();
        if (!v16 || (v81 = v16, sub_1000060C8(0, &qword_1009399F0, off_1008D4120), swift_dynamicCast(), (v15 = v82[0]) == 0))
        {
LABEL_28:
          sub_10001B860(a1);
          v5 = sub_10038DB14(&_swiftEmptyArrayStorage);
          v82[0] = v5;
          v8 = v77;
          if (!(v77 >> 62))
          {
            v34 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v35 = v73;
            if (!v34)
            {
LABEL_68:
              v35, v27, v28, v29, v30, v31, v32, v33;
              v63 = *v72;
              *v72 = v5;
              v63, v64, v65, v66, v67, v68, v69, v70;
              return;
            }

            goto LABEL_30;
          }

LABEL_75:
          v34 = _CocoaArrayWrapper.endIndex.getter();
          v35 = v73;
          if (!v34)
          {
            goto LABEL_68;
          }

LABEL_30:
          v36 = 0;
          v37 = v8 & 0xC000000000000001;
          v38 = v8 & 0xFFFFFFFFFFFFFF8;
          v39 = v35 & 0xFFFFFFFFFFFFFF8;
          if (v35 < 0)
          {
            v39 = v35;
          }

          v78 = v39;
          v79 = v35 & 0xC000000000000001;
          v74 = v8 & 0xFFFFFFFFFFFFFF8;
          v75 = v8 & 0xC000000000000001;
          while (1)
          {
            if (v37)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v36 >= *(v38 + 16))
              {
                goto LABEL_71;
              }

              v40 = *(v8 + 8 * v36 + 32);
            }

            v41 = v40;
            v42 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_70;
            }

            if (v79)
            {
              v43 = v40;
              v5 = __CocoaDictionary.lookup(_:)();

              if (v5)
              {
                v80 = v5;
                sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
                swift_dynamicCast();
                v5 = v81;
                if (v81)
                {
                  goto LABEL_46;
                }
              }
            }

            else if (*(v35 + 16))
            {
              v44 = sub_10002B924(v40);
              if (v45)
              {
                v5 = *(*(v35 + 56) + 8 * v44);
                if (v5)
                {
LABEL_46:
                  type metadata accessor for RDAccountManualSortID(0);
                  v46 = *(v76 + 16);

                  v47 = v5;
                  v48 = sub_10053044C(v47, v46);
                  if (v48)
                  {
                    v5 = v48;
                    v49 = v82[0];
                    if ((v82[0] & 0xC000000000000001) != 0)
                    {
                      if (v82[0] >= 0)
                      {
                        v49 = v82[0] & 0xFFFFFFFFFFFFFF8;
                      }

                      v50 = __CocoaDictionary.count.getter();
                      if (__OFADD__(v50, 1))
                      {
                        goto LABEL_73;
                      }

                      v49 = sub_10021D4DC(v49, v50 + 1, &qword_100943070, &unk_10079B200, type metadata accessor for RDAccountManualSortID, sub_10036DB04);
                      v82[0] = v49;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v81 = v49;
                    v8 = sub_10002B924(v41);
                    v53 = *(v49 + 16);
                    v54 = (v52 & 1) == 0;
                    v55 = v53 + v54;
                    if (__OFADD__(v53, v54))
                    {
                      goto LABEL_72;
                    }

                    v56 = v52;
                    if (*(v49 + 24) >= v55)
                    {
                      if (isUniquelyReferenced_nonNull_native)
                      {
                        v59 = v81;
                        if ((v52 & 1) == 0)
                        {
                          goto LABEL_63;
                        }
                      }

                      else
                      {
                        sub_1003751CC();
                        v59 = v81;
                        if ((v56 & 1) == 0)
                        {
                          goto LABEL_63;
                        }
                      }
                    }

                    else
                    {
                      sub_10036DB04(v55, isUniquelyReferenced_nonNull_native);
                      v57 = sub_10002B924(v41);
                      if ((v56 & 1) != (v58 & 1))
                      {
                        goto LABEL_78;
                      }

                      v8 = v57;
                      v59 = v81;
                      if ((v56 & 1) == 0)
                      {
LABEL_63:
                        *&v59->storeProvider[8 * (v8 >> 6) + 2] |= 1 << v8;
                        *(*&v59->clientIdentity[32] + 8 * v8) = v41;
                        *(*&v59->clientIdentity[40] + 8 * v8) = v5;

                        v60 = *v59->clientIdentity;
                        v61 = __OFADD__(v60, 1);
                        v62 = v60 + 1;
                        if (v61)
                        {
                          goto LABEL_74;
                        }

                        *v59->clientIdentity = v62;
LABEL_65:
                        v82[0] = v59;
                        v8 = v77;
                        v35 = v73;
LABEL_66:
                        v38 = v74;
                        v37 = v75;
                        goto LABEL_34;
                      }
                    }

                    *(*&v59->clientIdentity[40] + 8 * v8) = v5;

                    goto LABEL_65;
                  }

                  v5 = sub_100369468(v41);

                  goto LABEL_66;
                }
              }
            }

LABEL_34:
            ++v36;
            if (v42 == v34)
            {
              v5 = v82[0];
              goto LABEL_68;
            }
          }
        }
      }

      else
      {
        v13 = v7;
        v14 = v8;
        if (!v8)
        {
          while (1)
          {
            v7 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_28;
            }

            v14 = *(&v5->super.isa + v7);
            ++v13;
            if (v14)
            {
              goto LABEL_15;
            }
          }

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
          goto LABEL_75;
        }

LABEL_15:
        v8 = (v14 - 1) & v14;
        v15 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      v17 = [v15 remObjectID];
      if (v17)
      {
        break;
      }

LABEL_9:
    }

    v19 = v17;
    v82[0] = v17;
    __chkstk_darwin(v17, v18);
    v71[2] = v82;
    if ((sub_10032DE90(sub_100220660, v71, v77) & 1) == 0)
    {

      goto LABEL_9;
    }

    v20 = v73;
    if ((v73 & 0xC000000000000001) != 0)
    {
      break;
    }

    v24 = v19;
    v25 = v15;
LABEL_27:
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v20;
    sub_1002C79B0(v15, v19, v26);

    v73 = v82[0];
  }

  if (v73 >= 0)
  {
    v20 = v73 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = v19;
  v22 = v15;
  v23 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v23, 1))
  {
    v20 = sub_10021C924(v20, v23 + 1);
    goto LABEL_27;
  }

  __break(1u);
LABEL_78:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10021BE34(void **a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *sub_10000F61C(a2, a2[3]);
  swift_beginAccess();
  v5 = *(v4 + 16);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    result = __CocoaDictionary.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    *(v4 + 16) = sub_10021D4DC(v6, result + 1, &qword_100943070, &unk_10079B200, type metadata accessor for RDAccountManualSortID, sub_10036DB04);
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 16);
  sub_1002C8BB8(v2, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v9;
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10054B530(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10021BF78(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer **a3)
{
  v50 = _swiftEmptyDictionarySingleton;
  v49 = _swiftEmptySetSingleton;

  sub_10021FBEC(a1, a2, &v50, &v49);
  a2, v6, v7, v8, v9, v10, v11, v12;
  v13 = sub_10038E300(&_swiftEmptyArrayStorage);
  v14 = sub_100213BD0(v13, a2, &v50);
  v15 = *a3;
  *a3 = v14;
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = v49;
  sub_10021551C(v49);
  v25 = v24;
  v23, v26, v27, v28, v29, v30, v31, v32;
  v25, v33, v34, v35, v36, v37, v38, v39;
  v47 = v50;

  v47, v40, v41, v42, v43, v44, v45, v46;
  return result;
}

double sub_10021C050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *, uint64_t, __n128))
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v17[2] = a1;

  (a4)(a3, v17, v8);
  v8, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

uint64_t sub_10021C0D8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10021C150()
{
  result = qword_10093D590;
  if (!qword_10093D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D590);
  }

  return result;
}

unint64_t sub_10021C1A4@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = __CocoaDictionary.makeIterator()();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void (*sub_10021C23C(void (*result)(void)))(void)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    v6 = result;
    result = __CocoaDictionary.Iterator.next()();
    if (!result)
    {
      return result;
    }

    v8 = v7;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    v9 = v19[0];
    v18 = v8;
    v6(0);
    swift_dynamicCast();
    v10 = v19[0];
    if (v19[0])
    {
      goto LABEL_16;
    }

    return 0;
  }

  v3 = v1[3];
  v4 = v1[4];
  if (v4)
  {
    v5 = v1[3];
LABEL_15:
    v14 = (v4 - 1) & v4;
    v15 = (v5 << 9) | (8 * __clz(__rbit64(v4)));
    v9 = *(*(v2 + 48) + v15);
    v10 = *(*(v2 + 56) + v15);
    v16 = v9;

    v1[3] = v5;
    v1[4] = v14;
    if (v9)
    {
LABEL_16:
      v17 = v1[5];
      v19[0] = v9;
      v19[1] = v10;
      v17(&v18, v19);

      return v18;
    }

    return 0;
  }

  v11 = (v1[2] + 64) >> 6;
  if (v11 <= v3 + 1)
  {
    v12 = v3 + 1;
  }

  else
  {
    v12 = (v1[2] + 64) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v5 >= v11)
    {
      v1[3] = v13;
      v1[4] = 0;
      return 0;
    }

    v4 = *(v1[1] + 8 * v5);
    ++v3;
    if (v4)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10021C3DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

Swift::Int sub_10021C4B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943D70, &qword_10079B2B8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for REMObjectID_Codable();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for REMList_Codable();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036AED0(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021C6D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5F0, &unk_10079B2C0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_100938880, off_1008D41A8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036AEE4(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021C924(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943090, &unk_1007A3B10);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036BAEC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021CB70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943D20, &qword_10079B2A0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036C32C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021CDBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_10094F620, &unk_1007A3C40);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036CA94(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021D008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D598, &unk_10079B210);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036CABC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021D254(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5D8, &qword_1007A4490);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036CE90(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021D4DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    sub_1000F5104(a3, a4);
    v8 = static _DictionaryStorage.convert(_:capacity:)();
    v25 = v8;
    __CocoaDictionary.makeIterator()();
    v9 = __CocoaDictionary.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = NSObject._rawHashValue(seed:)(*(v25 + 40));
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = __CocoaDictionary.Iterator.next()();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v8;
}

Swift::Int sub_10021D718(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5B8, &qword_10079B258);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036DD80(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021D964(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D600, &qword_10079B2D0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_10093D608, CNContact_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036DFFC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021DBB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100944190, &unk_10079B2E0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100939DB0, REMSharedEntitySyncActivity_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036F11C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021DDFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943A60, &unk_10079B280);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100370B54(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E048(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5F8, &unk_1007A45A0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100370B68(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E294(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5A8, &unk_10079B230);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for RDManualSortIDPersistenceHost();
      do
      {
        swift_dynamicCast();
        type metadata accessor for RDManualSortIDCache();
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_100371EBC(v4 + 1, 1);
        }

        v2 = v16;
        Hasher.init(_seed:)();
        if (*(v15 + 24))
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        result = Hasher._finalize()();
        v6 = v16 + 64;
        v7 = -1 << *(v16 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v16 + 64 + 8 * (v8 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v8) & ~*(v16 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v9 == v11;
            if (v9 == v11)
            {
              v9 = 0;
            }

            v10 |= v12;
            v13 = *(v6 + 8 * v9);
          }

          while (v13 == -1);
          v3 = __clz(__rbit64(~v13)) + (v9 << 6);
        }

        *(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v16 + 48) + 8 * v3) = v15;
        *(*(v16 + 56) + 8 * v3) = v14;
        ++*(v16 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E4F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_100943AE0, &unk_10079B290);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10002BD4C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E744(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943AD0, &unk_1007A4340);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1003721AC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E990(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_1009433B0, &unk_10079B240);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1003721D4(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021EBBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100944040, &qword_10079B2D8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100372788(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021EE08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5E0, &qword_10079B2A8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_10093F790, off_1008D4158);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100372B8C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_10021F054(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = __CocoaDictionary.count.getter();
    v34 = sub_10021D4DC(v10, v11, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
    sub_10022038C(a1, a2, a3, 1, &v34, type metadata accessor for RDElementManualSortID, sub_1003731C0, sub_10036A210);
    if (v4)
    {

      a1, v19, v20, v21, v22, v23, v24, v25;

      return;
    }

    v9, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a4;
    sub_10022038C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v34, type metadata accessor for RDElementManualSortID, sub_1003731C0, sub_10036A210);
  }

  a1, v27, v28, v29, v30, v31, v32, v33;
  *a4 = v34;
}

void sub_10021F218(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = __CocoaDictionary.count.getter();
    v34 = sub_10021D4DC(v10, v11, &qword_100943070, &unk_10079B200, type metadata accessor for RDAccountManualSortID, sub_10036DB04);
    sub_10022038C(a1, a2, a3, 1, &v34, type metadata accessor for RDAccountManualSortID, sub_1003751CC, sub_10036DB04);
    if (v4)
    {

      a1, v19, v20, v21, v22, v23, v24, v25;

      return;
    }

    v9, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a4;
    sub_10022038C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v34, type metadata accessor for RDAccountManualSortID, sub_1003751CC, sub_10036DB04);
  }

  a1, v27, v28, v29, v30, v31, v32, v33;
  *a4 = v34;
}

void sub_10021F440(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v41 = a2;
  v38 = a4;
  v4 = a1;
  v40 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_10000CE28(&qword_100944210, &qword_100939EE0, off_1008D41D0);
    Set.Iterator.init(_cocoa:)();
    v4 = v44;
    v5 = v45;
    v6 = v46;
    v7 = v47;
    v8 = v48;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v37 = v6;
  v12 = (v6 + 64) >> 6;
  v39 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v18 = __CocoaSet.Iterator.next()();
  if (!v18 || (v43 = v18, sub_1000060C8(0, &qword_100939EE0, off_1008D41D0), swift_dynamicCast(), v17 = v49, v15 = v7, v16 = v8, !v49))
  {
LABEL_34:
    sub_10001B860(v4);
    return;
  }

  while (1)
  {
    v19 = [v17 remObjectID];
    if (!v19)
    {

      goto LABEL_10;
    }

    v21 = v19;
    v49 = v19;
    __chkstk_darwin(v19, v20);
    v36[2] = &v49;
    v22 = v42;
    v23 = sub_10032DE90(sub_100220A9C, v36, v41);
    v42 = v22;
    if ((v23 & 1) == 0)
    {

LABEL_10:
      v7 = v15;
      v8 = v16;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v24 = *v40;
    if ((*v40 & 0xC000000000000001) != 0)
    {
      if (v24 < 0)
      {
        v25 = *v40;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = v21;
      v27 = v17;
      v28 = __CocoaDictionary.count.getter();
      if (__OFADD__(v28, 1))
      {
        goto LABEL_36;
      }

      v29 = sub_10021D718(v25, v28 + 1);
      v30 = v40;
      *v40 = v29;
    }

    else
    {
      v31 = v21;
      v32 = v17;
      v30 = v40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v30;
    sub_1002C8A40(v17, v21, isUniquelyReferenced_nonNull_native);
    *v30 = v49;

    v34 = [v17 account];
    if (v34)
    {
      sub_10037CB0C(&v49, v34);

      v35 = v49;
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v4 = v39;
    if (v39 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_34;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_10021F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41[1] = a3;
  v43 = a2;
  v42 = _s10PredicatesOMa(0);
  __chkstk_darwin(v42, v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 56);
    v41[0] = a4;
    while (1)
    {
      v12 = *(v11 - 3);
      v44 = *(v11 - 2);
      v14 = *(v11 - 1);
      v13 = *v11;
      if ((*v11 & 1) == 0)
      {
        break;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
        swift_unknownObjectRelease();
        v16 = &_swiftEmptyArrayStorage;
      }

      v17 = *v16->clientIdentity;

      if (__OFSUB__(v13 >> 1, v14))
      {
        __break(1u);
        return;
      }

      if (v17 != (v13 >> 1) - v14)
      {
        swift_unknownObjectRelease();
        a4 = v41[0];
        goto LABEL_5;
      }

      v15 = swift_dynamicCastClass();
      a4 = v41[0];
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = &_swiftEmptyArrayStorage;
      }

LABEL_12:
      *v9 = v15;
      v9[8] = 0;
      swift_storeEnumTagMultiPayload();
      v18 = sub_100043AA8();
      sub_1000252B4(v9, _s10PredicatesOMa);
      if (qword_1009367E8 != -1)
      {
        swift_once();
      }

      v19 = qword_100975338;
      if (qword_1009367F0 != -1)
      {
        v40 = qword_100975338;
        swift_once();
        v19 = v40;
      }

      v20 = sub_100050654(v19, qword_100975340, 0, v18);

      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v21 = NSManagedObjectContext.fetch<A>(_:)();
      if (v4)
      {
        swift_unknownObjectRelease();

        return;
      }

      v11 += 4;
      v22 = v21;
      v23 = sub_1001A574C(v21);
      v22, v24, v25, v26, v27, v28, v29, v30;
      sub_1002143F0(v23);
      v32 = v31;
      v23, v33, v34, v35, v36, v37, v38, v39;
      sub_10021F054(v32, sub_100220A64, 0, a4);
      swift_unknownObjectRelease();

      if (!--v10)
      {
        return;
      }
    }

    swift_unknownObjectRetain();
LABEL_5:
    sub_100278278(v12, v44, v14, v13);
    goto LABEL_12;
  }
}

uint64_t sub_10021FB38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t, uint64_t, uint64_t))
{
  v6 = *(result + 16);
  if (v6)
  {
    for (i = (result + 48); ; i += 2)
    {
      v12 = *i;
      v13[0] = *(i - 1);
      v13[1] = v12;
      swift_unknownObjectRetain();
      a5(v13, a2, a3, a4);
      if (v5)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v6)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10021FBEC(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v41 = a2;
  v38 = a4;
  v4 = a1;
  v40 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    sub_10000CE28(&qword_10093A900, &qword_100939D80, off_1008D41B8);
    Set.Iterator.init(_cocoa:)();
    v4 = v44;
    v5 = v45;
    v6 = v46;
    v7 = v47;
    v8 = v48;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v37 = v6;
  v12 = (v6 + 64) >> 6;
  v39 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v18 = __CocoaSet.Iterator.next()();
  if (!v18 || (v43 = v18, sub_1000060C8(0, &qword_100939D80, off_1008D41B8), swift_dynamicCast(), v17 = v49, v15 = v7, v16 = v8, !v49))
  {
LABEL_34:
    sub_10001B860(v4);
    return;
  }

  while (1)
  {
    v19 = [v17 remObjectID];
    if (!v19)
    {

      goto LABEL_10;
    }

    v21 = v19;
    v49 = v19;
    __chkstk_darwin(v19, v20);
    v36[2] = &v49;
    v22 = v42;
    v23 = sub_10032DE90(sub_100220A9C, v36, v41);
    v42 = v22;
    if ((v23 & 1) == 0)
    {

LABEL_10:
      v7 = v15;
      v8 = v16;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v24 = *v40;
    if ((*v40 & 0xC000000000000001) != 0)
    {
      if (v24 < 0)
      {
        v25 = *v40;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = v21;
      v27 = v17;
      v28 = __CocoaDictionary.count.getter();
      if (__OFADD__(v28, 1))
      {
        goto LABEL_36;
      }

      v29 = sub_10021D008(v25, v28 + 1);
      v30 = v40;
      *v40 = v29;
    }

    else
    {
      v31 = v21;
      v32 = v17;
      v30 = v40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v30;
    sub_1002C8510(v17, v21, isUniquelyReferenced_nonNull_native);
    *v30 = v49;

    v34 = [v17 account];
    if (v34)
    {
      sub_10037CB0C(&v49, v34);

      v35 = v49;
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v4 = v39;
    if (v39 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_34;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

id sub_10021FFC8(id result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a2;
  v37 = result;
  if (a2 >> 62)
  {
LABEL_45:
    v29 = result;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    result = v29;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v35 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v31 = a3;
      v32 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v33 = v6;
      while (1)
      {
        if (v8)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v35 + 16))
          {
            goto LABEL_41;
          }

          result = *(isUniquelyReferenced_nonNull_native + 8 * v7 + 32);
        }

        v9 = result;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v11 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          v12 = result;
          v13 = __CocoaDictionary.lookup(_:)();

          if (v13)
          {
            sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
            swift_dynamicCast();
            v14 = v36[0];
            if (v36[0])
            {
              goto LABEL_17;
            }
          }
        }

        else if (*(v11 + 16))
        {
          v15 = sub_10002B924(result);
          if (v16)
          {
            v14 = *(*(v11 + 56) + 8 * v15);
            if (v14)
            {
LABEL_17:
              sub_100220844(*(a4 + 16) + 40, v36);
              v17 = v14;
              v18 = sub_1007449F4(v17, v36);
              if (v18)
              {
                v19 = v18;
                v20 = v37;
                if ((v37 & 0xC000000000000001) != 0)
                {
                  if (v37 >= 0)
                  {
                    v20 = v37 & 0xFFFFFFFFFFFFFF8;
                  }

                  result = __CocoaDictionary.count.getter();
                  if (__OFADD__(result, 1))
                  {
                    goto LABEL_43;
                  }

                  v20 = sub_10021D4DC(v20, result + 1, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
                  v37 = v20;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v36[0] = v20;
                a3 = sub_10002B924(v9);
                v22 = *(v20 + 16);
                v23 = (v21 & 1) == 0;
                result = (v22 + v23);
                if (__OFADD__(v22, v23))
                {
                  goto LABEL_42;
                }

                v24 = v21;
                if (*(v20 + 24) >= result)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    isUniquelyReferenced_nonNull_native = v36[0];
                    if ((v21 & 1) == 0)
                    {
                      goto LABEL_34;
                    }
                  }

                  else
                  {
                    result = sub_1003731C0();
                    isUniquelyReferenced_nonNull_native = v36[0];
                    if ((v24 & 1) == 0)
                    {
                      goto LABEL_34;
                    }
                  }
                }

                else
                {
                  sub_10036A210(result, isUniquelyReferenced_nonNull_native);
                  result = sub_10002B924(v9);
                  if ((v24 & 1) != (v25 & 1))
                  {
                    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
                    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                    __break(1u);
                    return result;
                  }

                  a3 = result;
                  isUniquelyReferenced_nonNull_native = v36[0];
                  if ((v24 & 1) == 0)
                  {
LABEL_34:
                    *(isUniquelyReferenced_nonNull_native + 8 * (a3 >> 6) + 64) |= 1 << a3;
                    *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * a3) = v9;
                    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * a3) = v19;
                    v26 = *(isUniquelyReferenced_nonNull_native + 16);
                    v27 = __OFADD__(v26, 1);
                    v28 = v26 + 1;
                    if (v27)
                    {
                      goto LABEL_44;
                    }

                    *(isUniquelyReferenced_nonNull_native + 16) = v28;

LABEL_36:
                    v37 = isUniquelyReferenced_nonNull_native;
                    isUniquelyReferenced_nonNull_native = v30;
                    a3 = v31;
LABEL_37:
                    v8 = v32;
                    v6 = v33;
                    goto LABEL_5;
                  }
                }

                *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * a3) = v19;

                goto LABEL_36;
              }

              sub_100368FC8(v9);

              goto LABEL_37;
            }
          }
        }

LABEL_5:
        ++v7;
        if (v10 == v6)
        {
          return v37;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10022038C(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5, void (*a6)(void), void (*a7)(void), void (*a8)(uint64_t, uint64_t))
{
  sub_10021C1A4(a1, a2, a3, &v49);
  v48 = v49;

  v13 = sub_10021C23C(a6);
  if (!v13)
  {
    goto LABEL_23;
  }

  v15 = v13;
  v16 = v14;
  v47 = a7;
  v17 = *a5;
  v19 = sub_10002B924(v13);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  if (__OFADD__(v20, v21))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = v18;
  if (v17[3] >= v20 + v21)
  {
    if (a4)
    {
      v25 = *a5;
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v47();
      v25 = *a5;
      if (v22)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v25[(v19 >> 6) + 8] |= 1 << v19;
    *(v25[6] + 8 * v19) = v15;
    *(v25[7] + 8 * v19) = v16;
    v26 = v25[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v25[2] = v28;
LABEL_13:
    v29 = sub_10021C23C(a6);
    if (v29)
    {
      v31 = v29;
      v32 = v30;
      do
      {
        v35 = *a5;
        v36 = sub_10002B924(v31);
        v38 = v35[2];
        v39 = (v37 & 1) == 0;
        v27 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v27)
        {
          goto LABEL_24;
        }

        v41 = v37;
        if (v35[3] < v40)
        {
          a8(v40, 1);
          v36 = sub_10002B924(v31);
          if ((v41 & 1) != (v42 & 1))
          {
            goto LABEL_26;
          }
        }

        v43 = *a5;
        if (v41)
        {
          v33 = v36;

          *(v43[7] + 8 * v33) = v32;
        }

        else
        {
          v43[(v36 >> 6) + 8] |= 1 << v36;
          *(v43[6] + 8 * v36) = v31;
          *(v43[7] + 8 * v36) = v32;
          v44 = v43[2];
          v27 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v27)
          {
            goto LABEL_25;
          }

          v43[2] = v45;
        }

        v31 = sub_10021C23C(a6);
        v32 = v34;
      }

      while (v31);
    }

LABEL_23:
    sub_10001B860(v48);
  }

  (a8)();
  v23 = sub_10002B924(v15);
  if ((v22 & 1) == (v24 & 1))
  {
    v19 = v23;
    v25 = *a5;
    if ((v22 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:

    *(v25[7] + 8 * v19) = v16;

    goto LABEL_13;
  }

LABEL_26:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100220748()
{
  result = qword_10093D5B0;
  if (!qword_10093D5B0)
  {
    sub_1000F514C(&qword_10093A578, &qword_1007A1E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D5B0);
  }

  return result;
}

uint64_t sub_1002207AC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v8, 48, 7);
}

uint64_t sub_100220844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100947E90, &qword_10079B250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002208B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3[2] = a1;
  sub_1002A13B4(sub_100220AB8, v3, v2);
}

uint64_t sub_10022095C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 40, 7);
}

void sub_1002209A4(uint64_t a1, void (*a2)(id *))
{
  v3 = *(v2 + 16);
  v4[2] = a1;
  v5 = vaddq_s64(*(v2 + 24), vdupq_n_s64(0x10uLL));
  sub_1002A13E0(a2, v4, v3);
}

uint64_t sub_1002209F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100220AD8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093D610);
  v1 = sub_100006654(v0, qword_10093D610);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100220BA0()
{
  result = [objc_opt_self() housekeepingingActivityScheduler];
  qword_10093D628 = result;
  return result;
}

uint64_t sub_100220BDC()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_100935C38 != -1)
  {
    swift_once();
  }

  v7 = qword_10093D628;
  static OSSignpostID.exclusive.getter();
  v39 = v7;
  os_signpost(_:dso:log:name:signpostID:)();
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  v38 = v9;
  v9(v6, v2);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = qword_100935C30;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10093D610);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v10, v16, v17, v18, v19, v20, v21, v22;
  if (os_log_type_enabled(v14, v15))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v8;
    v25 = v2;
    v26 = v24;
    v42 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_10000668C(v11, v10, &v42);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] start execute()", v23, 0xCu);
    sub_10000607C(v26);
    v2 = v25;
  }

  v40[0] = 0xD000000000000025;
  v40[1] = 0x800000010079B480;
  v40[3] = 0;
  v41[0] = 0;
  v40[2] = 0;
  *(v41 + 6) = 0;
  __chkstk_darwin(v27, v28);
  *(&v37 - 4) = v1;
  *(&v37 - 3) = v11;
  *(&v37 - 2) = v10;
  sub_100014A64(v40, sub_100224AB8, (&v37 - 6));
  v10, v29, v30, v31, v32, v33, v34, v35;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return v38(v6, v2);
}

void sub_100220F34(uint64_t a1, void *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_100220FC4(a2, a1, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

void sub_100220FC4(void *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5)
{
  v8 = sub_1002222B8();
  v16 = v8;
  if (!(v8 >> 62))
  {
    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_24:
    v16, v9, v10, v11, v12, v13, v14, v15;
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_10093D610);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    a4, v56, v57, v58, v59, v60, v61, v62;
    if (os_log_type_enabled(v54, v55))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69[0] = v64;
      *v63 = 136446210;
      *(v63 + 4) = sub_10000668C(a3, a4, v69);
      _os_log_impl(&_mh_execute_header, v54, v55, "[%{public}s] there's no account supporting attachments, completing execution", v63, 0xCu);
      sub_10000607C(v64);
    }

    return;
  }

LABEL_23:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_3:
  v65 = a5;
  v18 = a4;
  v19 = 0;
  v71 = 1;
  v20 = a1[10];
  if (v20 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v70 = v20;
  a5 = (v16 & 0xC000000000000001);
  a4 = (v16 & 0xFFFFFFFFFFFFFF8);
  do
  {
    if (a5)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v21 = *&v16->clientIdentity[8 * v19 + 16];
    }

    v22 = v21;
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v69[0] = v21;
    sub_1002213B8(v69, &v71, a1, a2, a3, v18, &v70);
    if (v5)
    {
      v16, v24, v25, v26, v27, v28, v29, v30;

      *v65 = v5;
      return;
    }

    ++v19;
  }

  while (v23 != v17);
  v16, v31, v32, v33, v34, v35, v36, v37;
  if (v71)
  {
    v38 = v18;
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_10093D610);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v18, v42, v43, v44, v45, v46, v47, v48;
    if (os_log_type_enabled(v40, v41))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v69[0] = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_10000668C(a3, v38, v69);
      _os_log_impl(&_mh_execute_header, v40, v41, "[%{public}s] no staled attachment left, container deemed clean", v49, 0xCu);
      sub_10000607C(v50);
    }

    swift_beginAccess();
    v51 = a1[8];
    v52 = a1[9];
    sub_10000C9DC((a1 + 5), v51);
    (*(v52 + 40))(1, v51, v52);
    swift_endAccess();
  }
}

void sub_1002213B8(void **a1, _BYTE *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v255 = a7;
  v256 = a6;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v243 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = sub_1002220B4(v18, a4);
  if (v7)
  {
    return;
  }

  v251 = a2;
  v249 = v17;
  v250 = v14;
  v252 = v13;
  v254 = a5;
  if (v19)
  {
    v253 = 0;
    if (*v19->clientIdentity)
    {
      v27 = v19;
      v28 = v255;
      swift_beginAccess();
      v36 = *v28;
      if (*v28 <= 0)
      {
        v27, v29, v30, v31, v32, v33, v34, v35;
        if (qword_100935C30 == -1)
        {
LABEL_17:
          v96 = type metadata accessor for Logger();
          sub_100006654(v96, qword_10093D610);
          v97 = v256;

          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.default.getter();
          v97, v100, v101, v102, v103, v104, v105, v106;
          v107 = os_log_type_enabled(v98, v99);
          v108 = v254;
          v109 = v251;
          if (v107)
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *&v258[0] = v111;
            *v110 = 136446466;
            *(v110 + 4) = sub_10000668C(v108, v97, v258);
            *(v110 + 12) = 2048;
            *(v110 + 14) = a3[10];

            _os_log_impl(&_mh_execute_header, v98, v99, "[%{public}s] no delete limit left {perRunDeleteLimit: %lu}", v110, 0x16u);
            sub_10000607C(v111);
          }

          else
          {
          }

          *v109 = 0;
          return;
        }
      }

      else
      {

        sub_1002F2280(v36, v27, &v260);
        v27, v37, v38, v39, v40, v41, v42, v43;
        v257 = v262;
        v265 = *&v261[8];
        v266 = v261[24];
        v263 = v260;
        v264 = v261[0];
        v258[0] = v260;
        v258[1] = *v261;
        v258[2] = *&v261[16];
        v259 = v262;
        sub_1000F5104(&qword_10093D908, &qword_10079B678);
        sub_100224AD8();
        v246 = sub_100224A60();
        v44 = v253;
        v45 = Sequence.mapToSet<A>(_:)();
        v253 = v44;
        sub_1000050A4(&v263, &qword_10093D918, &qword_10079B680);
        sub_1000050A4(&v265, &qword_10093D918, &qword_10079B680);
        sub_1000050A4(&v257, &unk_10093D920, &qword_10079B688);
        if (qword_100935C30 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        v47 = sub_100006654(v46, qword_10093D610);
        v48 = v256;

        v49 = v18;

        v245 = v47;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        v48, v52, v53, v54, v55, v56, v57, v58;
        v59 = os_log_type_enabled(v50, v51);
        v248 = v45;
        v247 = v27;
        if (v59)
        {
          v60 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v258[0] = v61;
          *v60 = 136447234;
          *(v60 + 4) = sub_10000668C(v254, v48, v258);
          *(v60 + 12) = 2048;
          v62 = v248;
          *(v60 + 14) = *v248->clientIdentity;
          v62, v63, v64, v65, v66, v67, v68, v69;
          *(v60 + 22) = 2048;
          v70 = v255;
          swift_beginAccess();
          *(v60 + 24) = *v70;
          *(v60 + 32) = 2048;
          *(v60 + 34) = *(v27 + 16);
          v27, v71, v72, v73, v74, v75, v76, v77;
          *(v60 + 42) = 2114;
          *(v60 + 44) = v49;
          v78 = v244;
          *v244 = v49;
          v79 = v49;
          _os_log_impl(&_mh_execute_header, v50, v51, "[%{public}s] going to purge staled attachments {to-purge.count: %ld, limit-left: %ld, total-staled: %ld, accountID: %{public}@}", v60, 0x34u);
          sub_1000050A4(v78, &unk_100938E70, &unk_100797230);

          sub_10000607C(v61);
        }

        else
        {

          v248, v112, v113, v114, v115, v116, v117, v118;
          v27, v119, v120, v121, v122, v123, v124, v125;
        }

        v126 = v49;
        v127 = a3[4];
        v128 = v252;
        isa = Set._bridgeToObjectiveC()().super.isa;
        v130 = [v49 uuid];
        a3 = v249;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v131 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v250 + 8))(a3, v128);
        *&v258[0] = 0;
        v132 = [v127 purgeAttachmentFilesWithAttachmentIDs:isa accountID:v131 error:v258];

        v133 = *&v258[0];
        if (!v132)
        {
          v181 = *&v258[0];
          v248, v182, v183, v184, v185, v186, v187, v188;
          v247, v189, v190, v191, v192, v193, v194, v195;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          *v251 = 0;
          return;
        }

        v134 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v135 = v133;

        v136 = *(v134 + 16);
        v137 = *v248->clientIdentity;
        v248, v138, v139, v140, v141, v142, v143, v144;
        v152 = v251;
        if (v136 == v137)
        {
          v153 = v256;

          v154 = v126;

          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.default.getter();

          v153, v157, v158, v159, v160, v161, v162, v163;
          if (os_log_type_enabled(v155, v156))
          {
            v164 = swift_slowAlloc();
            a3 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            *&v258[0] = v165;
            *v164 = 136446722;
            *(v164 + 4) = sub_10000668C(v254, v153, v258);
            *(v164 + 12) = 2048;
            *(v164 + 14) = *(v134 + 16);
            v134, v166, v167, v168, v169, v170, v171, v172;
            *(v164 + 22) = 2114;
            *(v164 + 24) = v154;
            *a3 = v154;
            v173 = v154;
            _os_log_impl(&_mh_execute_header, v155, v156, "[%{public}s] purge was successful {purged.count: %ld, accountID: %{public}@}", v164, 0x20u);
            sub_1000050A4(a3, &unk_100938E70, &unk_100797230);

            sub_10000607C(v165);
          }

          else
          {

            v134, v224, v225, v226, v227, v228, v229, v230;
          }

          v231 = v255;
          v232 = *(v134 + 16);
          v233 = *v247->clientIdentity;
          v247, v174, v175, v176, v177, v178, v179, v180;
          v234 = v232 == v233;
        }

        else
        {
          v247, v145, v146, v147, v148, v149, v150, v151;
          v196 = v256;

          v197 = v126;

          v198 = Logger.logObject.getter();
          v199 = static os_log_type_t.error.getter();

          v196, v200, v201, v202, v203, v204, v205, v206;
          if (os_log_type_enabled(v198, v199))
          {
            v207 = swift_slowAlloc();
            a3 = swift_slowAlloc();
            v208 = swift_slowAlloc();
            *&v258[0] = v208;
            *v207 = 136446722;
            *(v207 + 4) = sub_10000668C(v254, v196, v258);
            *(v207 + 12) = 2048;
            *(v207 + 14) = *(v134 + 16);
            v134, v209, v210, v211, v212, v213, v214, v215;
            *(v207 + 22) = 2114;
            *(v207 + 24) = v197;
            *a3 = v197;
            v216 = v197;
            _os_log_impl(&_mh_execute_header, v198, v199, "[%{public}s] some purge wasn't successful {purged.count: %ld, accountID: %{public}@}", v207, 0x20u);
            sub_1000050A4(a3, &unk_100938E70, &unk_100797230);

            sub_10000607C(v208);
            v152 = v251;
          }

          else
          {

            v134, v235, v236, v237, v238, v239, v240, v241;
          }

          v234 = 0;
          v231 = v255;
        }

        v242 = *(v134 + 16);
        v134, v217, v218, v219, v220, v221, v222, v223;
        swift_beginAccess();
        if (!__OFSUB__(*v231, v242))
        {
          *v231 -= v242;
          if (!v234)
          {
            *v152 = 0;
          }

          return;
        }

        __break(1u);
      }

      swift_once();
      goto LABEL_17;
    }

    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  if (qword_100935C30 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_100006654(v80, qword_10093D610);
  v81 = v256;

  v82 = v18;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  v81, v85, v86, v87, v88, v89, v90, v91;
  if (os_log_type_enabled(v83, v84))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *&v258[0] = v94;
    *v92 = 136446466;
    *(v92 + 4) = sub_10000668C(v254, v81, v258);
    *(v92 + 12) = 2114;
    *(v92 + 14) = v82;
    *v93 = v82;
    v95 = v82;
    _os_log_impl(&_mh_execute_header, v83, v84, "[%{public}s] no staled attachment found for {accountID: %{public}@}", v92, 0x16u);
    sub_1000050A4(v93, &unk_100938E70, &unk_100797230);

    sub_10000607C(v94);
  }
}

void *sub_1002220B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v9 = __chkstk_darwin(v6, v8).n128_u64[0];
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 32);
  v13 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v11, v6);
  v36 = 0;
  v15 = [v12 attachmentIDsFromAttachmentDirectoryWithAccountID:isa error:&v36];

  v16 = v36;
  if (v15)
  {
    sub_100224A60();
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v16;

    if (*(v17 + 16))
    {
      v26 = sub_100222974(a1, a2);
      v27 = sub_10019D7E8(v26, v17);
      v26, v28, v29, v30, v31, v32, v33, v34;
    }

    else
    {
      v17, v19, v20, v21, v22, v23, v24, v25;
      return 0;
    }
  }

  else
  {
    v27 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v27;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002222B8()
{
  v0 = sub_100222544();
  v8 = v0;
  if (v0 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v11, "type")}];
      v15 = [v14 supportsAttachments];

      if (v15)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_14;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_14:
  v8, v1, v2, v3, v4, v5, v6, v7;
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *_swiftEmptyArrayStorage.clientIdentity;
  }

  v16 = 0;
  while (v8 != v16)
  {
    if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *_swiftEmptyArrayStorage.clientIdentity)
      {
        goto LABEL_30;
      }

      v17 = *&_swiftEmptyArrayStorage.clientIdentity[8 * v16 + 16];
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v20 = [v17 remObjectID];

    ++v16;
    if (v20)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v19;
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100222544()
{
  v0 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v0];

  sub_100010864(v4);
  inited, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_1002137C0(_swiftEmptySetSingleton);
  _swiftEmptySetSingleton, v13, v14, v15, v16, v17, v18, v19;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12, v21, v22, v23, v24, v25, v26, v27;
  [v2 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v28 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v29 = Array._bridgeToObjectiveC()().super.isa;
  v28, v30, v31, v32, v33, v34, v35, v36;
  [v2 setSortDescriptors:v29];

  v37 = NSManagedObjectContext.fetch<A>(_:)();
  return v37;
}

_TtC7remindd19RDXPCStorePerformer *sub_100222974(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_100222A14(a1, v2, &v9);
  objc_autoreleasePoolPop(v4);
  v5 = v9;
  v6 = objc_autoreleasePoolPush();
  sub_100223188(a1, v2, &v9);
  objc_autoreleasePoolPop(v6);
  v7 = v9;
  v9 = v5;
  sub_10027234C(v7);
  return v9;
}

void sub_100222A14(void *a1@<X0>, uint64_t a2@<X2>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v78 = a3;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v75 - v8;
  v10 = type metadata accessor for UUID();
  v79 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10024653C(a1);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  v77 = v14;
  [v15 setPredicate:v14];
  [v15 setResultType:2];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100791300;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v15 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v76 = v15;
  v26 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    if (qword_100935C30 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v82 = v13;
  if (v26 >> 62)
  {
    v74 = v26;
    v53 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v74;
  }

  else
  {
    v53 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = 0;
  if (!v53)
  {
    v86 = &_swiftEmptyArrayStorage;
LABEL_30:
    v66 = v26;

    v66, v67, v68, v69, v70, v71, v72, v73;
    v52 = v86;
    goto LABEL_31;
  }

  v54 = 0;
  v84 = v26 & 0xFFFFFFFFFFFFFF8;
  v85 = v26 & 0xC000000000000001;
  a2 = v79 + 56;
  v80 = (v79 + 32);
  v81 = (v79 + 48);
  v86 = &_swiftEmptyArrayStorage;
  v83 = v53;
  while (1)
  {
    if (v85)
    {
      v55 = v26;
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v54 >= *(v84 + 16))
      {
        goto LABEL_33;
      }

      v55 = v26;
      v56 = *(v26 + 8 * v54 + 32);
    }

    v57 = v56;
    v58 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    *&v87 = 0x696669746E656469;
    *(&v87 + 1) = 0xEA00000000007265;
    v59 = [v56 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v59)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v87 = 0u;
      v88 = 0u;
    }

    v89[0] = v87;
    v89[1] = v88;
    if (*(&v88 + 1))
    {
      v60 = swift_dynamicCast();
      (*a2)(v9, v60 ^ 1u, 1, v10);
      if ((*v81)(v9, 1, v10) != 1)
      {
        v61 = *v80;
        (*v80)(v82, v9, v10);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v62 = v86;
        }

        else
        {
          v62 = sub_100366328(0, *v86->clientIdentity + 1, 1, v86);
        }

        v64 = *v62->clientIdentity;
        v63 = *&v62->clientIdentity[8];
        if (v64 >= v63 >> 1)
        {
          v62 = sub_100366328((v63 > 1), v64 + 1, 1, v62);
        }

        *v62->clientIdentity = v64 + 1;
        v65 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v86 = v62;
        v61(v62 + v65 + *(v79 + 72) * v64);
        goto LABEL_12;
      }
    }

    else
    {
      sub_1000050A4(v89, &qword_100939ED0, &qword_100791B10);
      (*a2)(v9, 1, 1, v10);
    }

    sub_1000050A4(v9, &unk_100939D90, "8\n\r");
LABEL_12:
    ++v54;
    v26 = v55;
    if (v58 == v83)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_3:
  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_10093D610);

  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *&v89[0] = swift_slowAlloc();
    *v30 = 136446466;
    v32 = *(a2 + 16);
    v31 = *(a2 + 24);

    v33 = sub_10000668C(v32, v31, v89);
    v31, v34, v35, v36, v37, v38, v39, v40;
    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    swift_getErrorValue();
    v41 = Error.rem_errorDescription.getter();
    v43 = v42;
    v44 = sub_10000668C(v41, v42, v89);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v30 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] failed to fetch file attachment UUIDs from database {error: %{public}s}", v30, 0x16u);
    swift_arrayDestroy();
  }

  v52 = &_swiftEmptyArrayStorage;
LABEL_31:
  *v78 = v52;
}

void sub_100223188(void *a1@<X0>, uint64_t a2@<X2>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v78 = a3;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v75 - v8;
  v10 = type metadata accessor for UUID();
  v79 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005BDBEC(a1, 0x60u);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDSavedAttachment();
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  v77 = v14;
  [v15 setPredicate:v14];
  [v15 setResultType:2];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100791300;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v15 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v76 = v15;
  v26 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    if (qword_100935C30 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v82 = v13;
  if (v26 >> 62)
  {
    v74 = v26;
    v53 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v74;
  }

  else
  {
    v53 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = 0;
  if (!v53)
  {
    v86 = &_swiftEmptyArrayStorage;
LABEL_30:
    v66 = v26;

    v66, v67, v68, v69, v70, v71, v72, v73;
    v52 = v86;
    goto LABEL_31;
  }

  v54 = 0;
  v84 = v26 & 0xFFFFFFFFFFFFFF8;
  v85 = v26 & 0xC000000000000001;
  a2 = v79 + 56;
  v80 = (v79 + 32);
  v81 = (v79 + 48);
  v86 = &_swiftEmptyArrayStorage;
  v83 = v53;
  while (1)
  {
    if (v85)
    {
      v55 = v26;
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v54 >= *(v84 + 16))
      {
        goto LABEL_33;
      }

      v55 = v26;
      v56 = *(v26 + 8 * v54 + 32);
    }

    v57 = v56;
    v58 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    *&v87 = 0x696669746E656469;
    *(&v87 + 1) = 0xEA00000000007265;
    v59 = [v56 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v59)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v87 = 0u;
      v88 = 0u;
    }

    v89[0] = v87;
    v89[1] = v88;
    if (*(&v88 + 1))
    {
      v60 = swift_dynamicCast();
      (*a2)(v9, v60 ^ 1u, 1, v10);
      if ((*v81)(v9, 1, v10) != 1)
      {
        v61 = *v80;
        (*v80)(v82, v9, v10);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v62 = v86;
        }

        else
        {
          v62 = sub_100366328(0, *v86->clientIdentity + 1, 1, v86);
        }

        v64 = *v62->clientIdentity;
        v63 = *&v62->clientIdentity[8];
        if (v64 >= v63 >> 1)
        {
          v62 = sub_100366328((v63 > 1), v64 + 1, 1, v62);
        }

        *v62->clientIdentity = v64 + 1;
        v65 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v86 = v62;
        v61(v62 + v65 + *(v79 + 72) * v64);
        goto LABEL_12;
      }
    }

    else
    {
      sub_1000050A4(v89, &qword_100939ED0, &qword_100791B10);
      (*a2)(v9, 1, 1, v10);
    }

    sub_1000050A4(v9, &unk_100939D90, "8\n\r");
LABEL_12:
    ++v54;
    v26 = v55;
    if (v58 == v83)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_3:
  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_10093D610);

  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *&v89[0] = swift_slowAlloc();
    *v30 = 136446466;
    v32 = *(a2 + 16);
    v31 = *(a2 + 24);

    v33 = sub_10000668C(v32, v31, v89);
    v31, v34, v35, v36, v37, v38, v39, v40;
    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    swift_getErrorValue();
    v41 = Error.rem_errorDescription.getter();
    v43 = v42;
    v44 = sub_10000668C(v41, v42, v89);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v30 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] failed to fetch saved attachment UUIDs from database {error: %{public}s}", v30, 0x16u);
    swift_arrayDestroy();
  }

  v52 = &_swiftEmptyArrayStorage;
LABEL_31:
  *v78 = v52;
}