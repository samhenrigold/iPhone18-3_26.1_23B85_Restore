uint64_t sub_100323864(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[23];
  v3 = v1[24];
  v5 = v1[22];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_1003238F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100323918, 0, 0);
}

void sub_100323918()
{
  v79 = v0;
  v1 = v0[5];
  if (v1)
  {
    if (v1 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (v2)
      {
LABEL_4:
        v4 = v0[6];
        v3 = v0[7];
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v4 || v5 != v3)
        {
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v7)
          {
LABEL_19:
            if (qword_100973610 != -1)
            {
              swift_once();
            }

            v27 = type metadata accessor for Logger();
            sub_10000C4AC(v27, qword_1009787C0);

            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v28, v29))
            {
              v31 = v0[6];
              v30 = v0[7];
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v78[0] = v33;
              *v32 = 136315138;
              *(v32 + 4) = sub_10000C4E4(v31, v30, v78);
              _os_log_impl(&_mh_execute_header, v28, v29, "Skipping conversion of provided recipients to suggestion for activity %s since SPI will be used instead", v32, 0xCu);
              sub_10000C60C(v33);
            }

            goto LABEL_24;
          }

          v9 = v0[6];
          v8 = v0[7];
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v9 || v10 != v8)
          {
            v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v12 & 1) == 0)
            {
              if (qword_100973610 != -1)
              {
LABEL_61:
                swift_once();
              }

              v13 = type metadata accessor for Logger();
              v0[8] = sub_10000C4AC(v13, qword_1009787C0);

              v14 = Logger.logObject.getter();
              v15 = static os_log_type_t.default.getter();

              v67 = v1;
              v71 = v2;
              if (os_log_type_enabled(v14, v15))
              {
                v17 = v0[6];
                v16 = v0[7];
                v18 = swift_slowAlloc();
                v78[0] = swift_slowAlloc();
                *v18 = 136315394;
                sub_1000276B4(0, &qword_100978800, INPerson_ptr);
                v19 = Array.description.getter();
                v21 = sub_10000C4E4(v19, v20, v78);

                *(v18 + 4) = v21;
                *(v18 + 12) = 2080;
                v22 = v17;
                v2 = v71;
                *(v18 + 14) = sub_10000C4E4(v22, v16, v78);
                _os_log_impl(&_mh_execute_header, v14, v15, "Converting provided recipients %s for activity type %s", v18, 0x16u);
                swift_arrayDestroy();
              }

              v23 = v0[6];
              v24 = v0[7];
              swift_bridgeObjectRetain_n();
              active_platform = dyld_get_active_platform();
              v26 = objc_allocWithZone(LSApplicationExtensionRecord);
              v35 = sub_100322584(v23, v24, 0, active_platform);
              v36 = [v35 containingBundleRecord];
              if (v36 && (v37 = v36, v38 = [v36 bundleIdentifier], v37, v38))
              {
                v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v41 = v40;

                v42 = v39;
              }

              else
              {

                v42 = v0[6];
                v41 = v0[7];
              }

              v0[9] = v42;
              v0[10] = v41;
              v0[4] = _swiftEmptyArrayStorage;
              if (v2 < 1)
              {
                __break(1u);
                return;
              }

              v43 = 0;
              v75 = v0[5] & 0xC000000000000001;
              v76 = v41;
              v77 = v42;
              while (1)
              {
                if (v75)
                {
                  v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v44 = *(v1 + 8 * v43 + 32);
                }

                v45 = v44;
                sub_1003217EC(v42, v41);
                v46 = sub_10032299C();

                v73 = v46;
                v47 = [v46 answers];
                sub_1000276B4(0, &qword_100978810, GDKnosisAnswer_ptr);
                v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                if (v48 >> 62)
                {
                  if (!_CocoaArrayWrapper.endIndex.getter())
                  {
LABEL_44:

LABEL_45:
                    v74 = 0;
                    v53 = 0;
                    goto LABEL_46;
                  }
                }

                else if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                if ((v48 & 0xC000000000000001) != 0)
                {
                  v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_61;
                  }

                  v49 = *(v48 + 32);
                }

                v50 = v49;

                v51 = [v50 answerId];

                if (!v51)
                {
                  goto LABEL_45;
                }

                v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v53 = v52;

LABEL_46:

                v54 = v45;

                v55 = Logger.logObject.getter();
                v56 = static os_log_type_t.default.getter();

                v72 = v56;
                if (os_log_type_enabled(v55, v56))
                {
                  v69 = v0[6];
                  v70 = v0[7];
                  v57 = swift_slowAlloc();
                  v68 = swift_slowAlloc();
                  v78[0] = swift_slowAlloc();
                  *v57 = 136315906;
                  v0[2] = v74;
                  v0[3] = v53;

                  sub_10028088C(&qword_100975100, &qword_1007FBA10);
                  v58 = String.init<A>(describing:)();
                  v60 = sub_10000C4E4(v58, v59, v78);

                  *(v57 + 4) = v60;
                  *(v57 + 12) = 2112;
                  *(v57 + 14) = v54;
                  *v68 = v54;
                  *(v57 + 22) = 2080;
                  v61 = v54;

                  v62 = sub_10000C4E4(v77, v76, v78);

                  *(v57 + 24) = v62;
                  *(v57 + 32) = 2080;
                  *(v57 + 34) = sub_10000C4E4(v69, v70, v78);
                  _os_log_impl(&_mh_execute_header, v55, v72, "Found handle %s for recipient %@ with suggestion bundle ID %s for activity type %s", v57, 0x2Au);
                  sub_10028924C(v68);

                  swift_arrayDestroy();

                  v1 = v67;
                }

                v2 = v71;
                if (qword_100973618 != -1)
                {
                  swift_once();
                }

                v63 = sub_100322668(v74, v53, qword_1009A0758, v54);

                v41 = v76;
                v64 = v63;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v42 = v77;
                if (*((v0[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v42 = v77;
                }

                ++v43;
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v65 = v0[4];
                v0[11] = v65;
                if (v71 == v43)
                {

                  v66 = swift_task_alloc();
                  v0[12] = v66;
                  *v66 = v0;
                  v66[1] = sub_100324534;

                  sub_100322B34(v65, v42, v76);
                  return;
                }
              }
            }

            goto LABEL_19;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_24:
  v34 = v0[1];

  v34(0);
}

uint64_t sub_100324534(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_1003248AC;
  }

  else
  {

    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_100324670;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100324670()
{

  v1 = *(v0 + 112);
  v2 = String._bridgeToObjectiveC()();

  sub_1000276B4(0, &qword_100978808, _PSRecipient_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v1)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(_PSSuggestion);
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithBundleID:v2 conversationIdentifier:0 groupName:0 recipients:v3.super.isa derivedIntentIdentifier:v4 image:0 reason:v6 reasonType:v7 score:0];

  v9 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Final created suggestion: %@", v12, 0xCu);
    sub_10028924C(v13);
  }

  v15 = *(v0 + 8);

  return v15(v9);
}

uint64_t sub_1003248AC()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;

    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get derived intent identifier: %@", v3, 0xCu);
    sub_10028924C(v4);
  }

  else
  {
  }

  v6 = String._bridgeToObjectiveC()();

  sub_1000276B4(0, &qword_100978808, _PSRecipient_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = objc_allocWithZone(_PSSuggestion);
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithBundleID:v6 conversationIdentifier:0 groupName:0 recipients:isa derivedIntentIdentifier:0 image:0 reason:v9 reasonType:v10 score:0];

  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Final created suggestion: %@", v15, 0xCu);
    sub_10028924C(v16);
  }

  v18 = *(v0 + 8);

  return v18(v12);
}

unint64_t sub_100324BBC()
{
  result = qword_100978830;
  if (!qword_100978830)
  {
    sub_100280938(&qword_100978828, &qword_1007FBA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978830);
  }

  return result;
}

uint64_t sub_100324C20()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978850);
  v1 = sub_10000C4AC(v0, qword_100978850);
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0960);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100324CE8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v7, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

uint64_t sub_100324DFC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v7, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

uint64_t sub_100324F0C()
{
  *(v1 + 24) = v0;
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v2 = static IDMSActor.shared;

  return _swift_task_switch(sub_100324FD4, v2, 0);
}

uint64_t sub_100324FD4()
{
  v1 = v0[3];
  if ((*(v1 + 32) & 1) == 0)
  {
    sub_100325360();
    v2 = v0[3];
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    v3 = objc_allocWithZone(CUKeyValueStoreReader);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [v3 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
    v6 = *(v2 + 16);
    *(v2 + 16) = v5;
    v7 = v5;

    v8 = String._bridgeToObjectiveC()();

    v0[2] = 0;
    LODWORD(v6) = [v7 openAtPath:v8 error:v0 + 2];

    v9 = v0[2];
    if (v6)
    {
      v10 = qword_100973620;
      v11 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000C4AC(v12, qword_100978850);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "IDMS store activated", v15, 2u);
      }

      v16 = 1;
    }

    else
    {
      v17 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_100978850);
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v23;
        *v22 = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create & open DB %@", v21, 0xCu);
        sub_100005508(v22, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }

      v16 = 0;
    }

    *(v1 + 32) = v16;
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100325360()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v55 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v56 = v53 - v6;
  __chkstk_darwin(v5);
  v8 = v53 - v7;
  v9 = sub_10028088C(&qword_100978958, &qword_1007FBB38);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v53 - v14;
  v61 = *(v10 + 56);
  sub_10032A41C(v8);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v54 = v0;
  URL.appendingPathComponent(_:)();
  v18 = *(v2 + 8);
  v18(v8, v1);
  v53[2] = v16;
  v53[3] = v17;
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v18(v8, v1);
  v59 = v15;
  sub_10000FF90(v15, v13, &qword_100978958, &qword_1007FBB38);
  v19 = *(v10 + 56);
  v20 = URL.path.getter();
  v22 = v21;
  v18(&v13[v19], v1);
  v57 = v1;
  v58 = v18;
  v53[1] = v2 + 8;
  v18(v13, v1);
  v23 = [objc_opt_self() defaultManager];
  v61 = v22;
  v24 = String._bridgeToObjectiveC()();
  LOBYTE(v1) = [v23 fileExistsAtPath:v24];

  if (v1)
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_100978850);
    v26 = v61;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10000C4E4(v20, v26, &v62);
      _os_log_impl(&_mh_execute_header, v27, v28, "DB present at path %s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    goto LABEL_16;
  }

  v53[0] = v20;
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000C4AC(v31, qword_100978850);
  v32 = v61;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v62 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_10000C4E4(v53[0], v32, &v62);
    _os_log_impl(&_mh_execute_header, v33, v34, "DB not present at path %s", v35, 0xCu);
    sub_10000C60C(v36);
  }

  v37 = v60;
  v38 = [objc_opt_self() standardUserDefaults];
  v39 = String._bridgeToObjectiveC()();
  [v38 setObject:0 forKey:v39];

  v40 = v8;
  sub_10032A41C(v8);
  v41 = v56;
  URL.appendingPathComponent(_:)();
  v42 = v57;
  v43 = v58;
  v58(v40, v57);
  URL.appendingPathComponent(_:)();
  v44 = v55;
  URL.appendingPathExtension(_:)();
  v43(v40, v42);
  v43(v44, v42);
  sub_10032AAF0(v41);
  if (v37)
  {

    v58(v41, v57);
    v20 = v53[0];
LABEL_17:
    sub_100005508(v59, &qword_100978958, &qword_1007FBB38);
    return v20;
  }

  v58(v41, v57);
  v27 = [objc_allocWithZone(CUKeyValueStoreWriter) init];
  v20 = v53[0];
  v45 = String._bridgeToObjectiveC()();
  v62 = 0;
  v46 = [v27 startAtPath:v45 error:&v62];

  v47 = v62;
  if ((v46 & 1) == 0 || (v62 = 0, v48 = v47, v49 = [v27 finishAndReturnError:&v62], v47 = v62, !v49))
  {
    v51 = v47;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_16:

    goto LABEL_17;
  }

  v50 = v62;
  sub_100005508(v59, &qword_100978958, &qword_1007FBB38);

  return v20;
}

uint64_t sub_100325AD0(uint64_t a1, void *a2)
{
  if (*(v2 + 32) != 1)
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100978850);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_14;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Store not loaded", v15, 2u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v5 = *(v2 + 80);

  v6 = sub_100569230(a1, a2, v5);

  if ((v6 & 1) == 0)
  {
    v16 = *(v2 + 16);
    v30[1] = 0xE800000000000000;
    v17 = v16;
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    v30[0] = 0;
    v20 = [v17 valueForKey:v19 valueType:swift_getObjCClassFromMetadata() error:v30];

    if (v30[0])
    {
      v30[0];

      swift_willThrow();
      return v11 & 1;
    }

    if (v20)
    {

      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000C4AC(v22, qword_100978850);

      v8 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v8, v23))
      {
        goto LABEL_8;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000C4E4(a1, a2, v30);
      _os_log_impl(&_mh_execute_header, v8, v23, "Found entry for altDSID %s", v24, 0xCu);
      sub_10000C60C(v25);

      goto LABEL_7;
    }

    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100978850);

    v13 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v13, v27))
    {
LABEL_14:

      v11 = 0;
      return v11 & 1;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_10000C4E4(a1, a2, v30);
    _os_log_impl(&_mh_execute_header, v13, v27, "No handle found for: %s", v28, 0xCu);
    sub_10000C60C(v29);

LABEL_13:

    goto LABEL_14;
  }

  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100978850);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_8;
  }

  v10 = swift_slowAlloc();
  *v10 = 0;
  _os_log_impl(&_mh_execute_header, v8, v9, "Found match in staged entries", v10, 2u);
LABEL_7:

LABEL_8:

  v11 = 1;
  return v11 & 1;
}

uint64_t sub_100325FFC(uint64_t a1, void *a2)
{
  if (*(v2 + 32) != 1)
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100978850);
    v10 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v10, v16, "Store not loaded", v17, 2u);
    }

    goto LABEL_12;
  }

  v5 = *(v2 + 16);
  v31[1] = 0xE800000000000000;
  v6 = v5;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  v31[0] = 0;
  v9 = [v6 valueForKey:v8 valueType:swift_getObjCClassFromMetadata() error:v31];

  if (v31[0])
  {
    v10 = v31[0];

    swift_willThrow();
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100978850);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to query db", v14, 2u);
    }

LABEL_12:
    return 0;
  }

  if (!v9)
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100978850);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10000C4E4(a1, a2, v31);
      _os_log_impl(&_mh_execute_header, v27, v28, "No local altDSID found for: %s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    return 0;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_100978850);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_10000C4E4(v19, v21, v31);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_10000C4E4(a1, a2, v31);
    _os_log_impl(&_mh_execute_header, v23, v24, "Found local altDSID %s for handle %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  return v19;
}

uint64_t sub_10032653C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 32) == 1)
  {
    v7 = *(v3 + 16);
    v34[1] = 0xE600000000000000;
    v8 = v7;
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    String.append(_:)(v9);
    v10 = String._bridgeToObjectiveC()();

    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    v34[0] = 0;
    v11 = [v8 valueForKey:v10 valueType:swift_getObjCClassFromMetadata() error:v34];

    if (v34[0])
    {
      v12 = v34[0];

      swift_willThrow();
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_100978850);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to query db", v16, 2u);
      }
    }

    else
    {
      if (v11)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34[0] = 0;
        v26 = sub_10032A938(v24, v25, v34);

        if (v26)
        {
          Date.init(timeIntervalSince1970:)();

          v27 = type metadata accessor for Date();
          return (*(*(v27 - 8) + 56))(a3, 0, 1, v27);
        }
      }

      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000C4AC(v28, qword_100978850);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v34[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_10000C4E4(a1, a2, v34);
        _os_log_impl(&_mh_execute_header, v29, v30, "No retry date found for: %s", v31, 0xCu);
        sub_10000C60C(v32);
      }
    }

    v33 = type metadata accessor for Date();
    return (*(*(v33 - 8) + 56))(a3, 1, 1, v33);
  }

  else
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100978850);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Store not loaded", v20, 2u);
    }

    v21 = type metadata accessor for Date();
    v22 = *(*(v21 - 8) + 56);

    return v22(a3, 1, 1, v21);
  }
}

uint64_t sub_100326A50(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, ...)
{
  v33 = a3;
  v34 = a4;
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = *a1;
  v16 = a1[1];
  sub_100325FFC(*a1, v16);
  if (v17)
  {

    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_100978850);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10000C4E4(v15, v16, &v35);
      _os_log_impl(&_mh_execute_header, v19, v20, v33, v21, 0xCu);
      sub_10000C60C(v22);
    }

    v23 = 0;
  }

  else
  {
    v24 = v34;
    sub_10032653C(v15, v16, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100005508(v7, &qword_10097A7F0, &unk_1007FB600);
      v23 = 1;
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_100978850);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, v24, v28, 2u);
      }

      static Date.now.getter();
      sub_10032B348(&qword_10097E910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      v30 = *(v9 + 8);
      v30(v12, v8);
      v30(v14, v8);
      v23 = v29 ^ 1;
    }
  }

  return v23 & 1;
}

void *sub_100326E88()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *v0;
    v2 = swift_allocObject();
    *(v2 + 16) = &_swiftEmptySetSingleton;
    v3 = swift_allocObject();
    *(v3 + 16) = &_swiftEmptySetSingleton;
    v4 = v0[2];
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v3;
    v6[4] = v1;
    aBlock[4] = sub_10032B410;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10032765C;
    aBlock[3] = &unk_1008DBE90;
    v7 = _Block_copy(aBlock);
    v8 = v4;

    aBlock[0] = 0;
    v9 = [v8 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:aBlock handler:v7];
    _Block_release(v7);

    if (v9)
    {
      v10 = aBlock[0];
    }

    else
    {
      v16 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000C4AC(v17, qword_100978850);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to query retry handles", v20, 2u);
      }
    }

    swift_beginAccess();
    v15 = *(v2 + 16);
    swift_beginAccess();
  }

  else
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100978850);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Store not loaded", v14, 2u);
    }

    return &_swiftEmptySetSingleton;
  }

  return v15;
}

uint64_t sub_100327270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[1] = a5;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18._countAndFlagsBits = 0x2D7972746572;
  v18._object = 0xE600000000000000;
  if (!String.hasPrefix(_:)(v18))
  {
  }

  v31[0] = 0;
  v19 = sub_10032A938(v15, v17, v31);

  if (!v19)
  {
  }

  v20 = String.count.getter();
  sub_10032AA40(v20, v12, v14);

  v21 = static String._fromSubstring(_:)();
  v23 = v22;

  Date.init(timeIntervalSince1970:)();
  static Date.now.getter();
  sub_10032B348(&qword_10097E910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = dispatch thunk of static Comparable.< infix(_:_:)();
  v25 = *(v6 + 8);
  v25(v9, v5);
  if (v24)
  {
    v25(v11, v5);
  }

  sub_1000276B4(0, &qword_100978820, NSPredicate_ptr);
  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007F5670;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100026764();
  *(v27 + 32) = 0xD000000000000029;
  *(v27 + 40) = 0x800000010078C260;
  v28 = NSPredicate.init(format:_:)();
  v29 = String._bridgeToObjectiveC()();
  [v28 evaluateWithObject:v29];

  swift_beginAccess();
  sub_10046DAAC(&v32, v21, v23);
  swift_endAccess();

  return (v25)(v11, v5);
}

void sub_10032765C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

uint64_t sub_1003276F0()
{
  v1[25] = v0;
  v1[26] = *v0;
  v1[27] = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v3 = static IDMSActor.shared;
  v1[35] = static IDMSActor.shared;

  return _swift_task_switch(sub_1003278A0, v3, 0);
}

uint64_t sub_1003278A0()
{
  v1 = v0[25];
  swift_beginAccess();
  if (*(*(v1 + 56) + 16))
  {
    v2 = swift_task_alloc();
    v0[36] = v2;
    *v2 = v0;
    v2[1] = sub_100327AC8;

    return sub_100324F0C();
  }

  else
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100978850);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No staged changes - skipping store", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100327AC8()
{
  v1 = *(*v0 + 280);

  return _swift_task_switch(sub_100327C04, v1, 0);
}

uint64_t sub_100327C04(uint64_t a1)
{
  v163 = v1;
  v3 = v1[33];
  v2 = v1[34];
  v5 = v1[31];
  v4 = v1[32];
  v6 = v1[30];
  sub_10032A41C(v4);
  URL.appendingPathComponent(_:)();
  v7 = *(v5 + 8);
  v7(v4, v6);
  URL.appendingPathComponent(_:)();
  v7(v2, v6);
  URL.appendingPathExtension(_:)();
  v7(v4, v6);
  URL.path.getter();
  v7(v3, v6);
  if (qword_100973620 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100978850);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Starting store operation", v11, 2u);
    }

    v12 = v156[25];

    v13 = [objc_allocWithZone(CUKeyValueStoreWriter) init];
    v14 = *(v12 + 24);
    *(v12 + 24) = v13;

    v15 = *(v12 + 24);
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v15;
    v17 = String._bridgeToObjectiveC()();
    v156[20] = 0;
    v18 = [v16 startAtPath:v17 error:v156 + 20];

    v19 = v156[20];
    if (!v18)
    {
      break;
    }

    v20 = v19;
LABEL_7:
    v21 = *(v156[25] + 56);
    v151 = v12;
    v22 = -1;
    v23 = -1 << *(v21 + 32);
    if (-v23 < 64)
    {
      v22 = ~(-1 << -v23);
    }

    v24 = v22 & *(v21 + 64);
    v25 = (63 - v23) >> 6;
    swift_bridgeObjectRetain_n();
    v26 = 0;
    v27 = _swiftEmptyArrayStorage;
    if (!v24)
    {
      goto LABEL_12;
    }

    do
    {
LABEL_10:
      while (1)
      {
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = (*(v21 + 56) + 48 * (v28 | (v26 << 6)));
        v30 = v29[1];
        if (v30)
        {
          break;
        }

        if (!v24)
        {
          goto LABEL_12;
        }
      }

      v32 = v29[5];
      v153 = v29[4];
      v33 = v29[3];
      v146 = v29[2];
      v148 = *v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_10028E93C(0, *(v27 + 2) + 1, 1, v27);
      }

      v34 = v27;
      v35 = *(v27 + 2);
      v36 = v34;
      v37 = *(v34 + 3);
      if (v35 >= v37 >> 1)
      {
        v36 = sub_10028E93C((v37 > 1), v35 + 1, 1, v36);
      }

      *(v36 + 2) = v35 + 1;
      v38 = &v36[48 * v35];
      v27 = v36;
      *(v38 + 4) = v148;
      *(v38 + 5) = v30;
      *(v38 + 6) = v146;
      *(v38 + 7) = v33;
      *(v38 + 8) = v153;
      *(v38 + 9) = v32;
    }

    while (v24);
    while (1)
    {
LABEL_12:
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_86;
      }

      if (v31 >= v25)
      {
        break;
      }

      v24 = *(v21 + 64 + 8 * v31);
      ++v26;
      if (v24)
      {
        v26 = v31;
        goto LABEL_10;
      }
    }

    v39 = *(v27 + 2);
    if (v39)
    {
      v40 = 0;
      v41 = (v27 + 40);
      v42 = _swiftEmptyArrayStorage;
      while (v40 < *(v27 + 2))
      {
        v44 = *(v41 - 1);
        v43 = *v41;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_10028E1C8(0, *(v42 + 2) + 1, 1, v42);
        }

        v46 = *(v42 + 2);
        v45 = *(v42 + 3);
        if (v46 >= v45 >> 1)
        {
          v42 = sub_10028E1C8((v45 > 1), v46 + 1, 1, v42);
        }

        ++v40;
        *(v42 + 2) = v46 + 1;
        v47 = &v42[16 * v46];
        *(v47 + 4) = v44;
        *(v47 + 5) = v43;
        v41 += 6;
        if (v39 == v40)
        {
          goto LABEL_32;
        }
      }

LABEL_86:
      __break(1u);
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
LABEL_32:
      v154 = v27;
      v48 = v156;
      v49 = v156[25];
      v50 = sub_100292D28(v42);

      if (*(v49 + 64))
      {

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "Drop all requested - not re-adding existing entries", v53, 2u);
        }
      }

      else
      {
        v57 = v156[26];
        v58 = v156[25];
        v59 = swift_allocObject();
        *(v59 + 16) = 0;
        v60 = swift_allocObject();
        *(v60 + 16) = 0;
        *(v60 + 24) = 256;
        v61 = *(v58 + 16);
        sub_1000276B4(0, &qword_100974E28, NSString_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v63 = swift_allocObject();
        v63[2] = v58;
        v63[3] = v59;
        v63[4] = v60;
        v63[5] = v50;
        v63[6] = v57;
        v156[6] = sub_10032AA30;
        v156[7] = v63;
        v156[2] = _NSConcreteStackBlock;
        v156[3] = 1107296256;
        v156[4] = sub_10032765C;
        v156[5] = &unk_1008DBE18;
        v64 = _Block_copy(v156 + 2);
        v65 = v61;
        v48 = v156;

        v156[21] = 0;
        v66 = [v65 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:v156 + 21 handler:v64];
        _Block_release(v64);

        v67 = v156[21];
        if (!v66)
        {
          v113 = v67;

          _convertNSErrorToError(_:)();

LABEL_75:
          swift_willThrow();

          goto LABEL_76;
        }

        swift_beginAccess();
        if (*(v60 + 25) != 1)
        {
          v131 = *(v60 + 24);
          v132 = *(v60 + 16);
          v133 = v67;

          sub_10032B0C0();
          swift_allocError();
          *v134 = v132;
          *(v134 + 8) = v131 & 1;
          goto LABEL_75;
        }

        v68 = v67;
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 134217984;
          swift_beginAccess();
          *(v71 + 4) = *(v59 + 16);

          _os_log_impl(&_mh_execute_header, v69, v70, "Added %ld existing entries", v71, 0xCu);
        }

        else
        {
        }
      }

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134217984;
        *(v56 + 4) = *(v154 + 2);

        _os_log_impl(&_mh_execute_header, v54, v55, "Adding %ld new entries", v56, 0xCu);

        if (v39)
        {
          goto LABEL_44;
        }
      }

      else
      {

        if (v39)
        {
LABEL_44:
          v72 = 0;
          v73 = v154;
          v74 = (v154 + 72);
          while (v72 < *(v73 + 2))
          {
            v75 = v48[25];
            v76 = *(v74 - 1);
            v77 = *v74;
            v78 = *(v74 - 3);
            v79 = *(v74 - 2);
            v80 = *(v74 - 4);
            v157 = *(v74 - 5);
            v158 = v80;
            v159 = v78;
            v160 = v79;
            v161 = v76;
            v162 = v77;

            sub_10032AE5C(&v157, v75);

            ++v72;
            v74 += 6;
            v73 = v154;
            v48 = v156;
            if (v39 == v72)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_88;
        }
      }

LABEL_47:
      v150 = v48[29];
      aBlock = v48[27];
      v81 = v48[25];

      swift_beginAccess();
      v82 = *(v81 + 72);
      v83 = v82 + 64;
      v84 = -1;
      v85 = -1 << *(v82 + 32);
      if (-v85 < 64)
      {
        v84 = ~(-1 << -v85);
      }

      v86 = v84 & *(v82 + 64);
      v87 = (63 - v85) >> 6;
      v155 = v82;
      swift_bridgeObjectRetain_n();
      v88 = 0;
      v144 = v87;
      v145 = v83;
      while (v86)
      {
LABEL_57:
        v90 = v48[29];
        v91 = __clz(__rbit64(v86)) | (v88 << 6);
        v92 = *(v155 + 56);
        v93 = (*(v155 + 48) + 16 * v91);
        v95 = *v93;
        v94 = v93[1];
        v96 = type metadata accessor for Date();
        v97 = *(v96 - 8);
        v98 = v92 + *(v97 + 72) * v91;
        v99 = v96;
        (*(v97 + 16))(v90 + aBlock[12], v98);
        *v90 = v95;
        *(v150 + 8) = v94;
        v100 = *(v151 + 24);
        if (v100)
        {
          v101 = v48[28];
          v147 = v48[29];
          v157 = 0x2D7972746572;
          v158 = 0xE600000000000000;

          v149 = v100;
          v102._countAndFlagsBits = v95;
          v102._object = v94;
          String.append(_:)(v102);
          v103 = String._bridgeToObjectiveC()();

          sub_10000FF90(v147, v101, &qword_1009750E8, &qword_1007FBB20);

          v104 = aBlock[12];
          Date.timeIntervalSince1970.getter();
          (*(v97 + 8))(v101 + v104, v99);
          Double.description.getter();
          v105 = String._bridgeToObjectiveC()();

          v48[22] = 0;
          LOBYTE(v104) = [v149 addKey:v103 value:v105 error:v48 + 22];

          v106 = v48[22];
          if ((v104 & 1) == 0)
          {
            v142 = v48[29];
            v143 = v106;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_100005508(v142, &qword_1009750E8, &qword_1007FBB20);

            goto LABEL_76;
          }

          v107 = v106;
        }

        else
        {
        }

        v83 = v145;
        v86 &= v86 - 1;
        sub_100005508(v48[29], &qword_1009750E8, &qword_1007FBB20);
        v87 = v144;
      }

      while (1)
      {
        v89 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          break;
        }

        if (v89 >= v87)
        {

          v108 = *(v151 + 24);
          if (v108)
          {
            v48[23] = 0;
            v109 = [v108 finishAndReturnError:v48 + 23];
            v19 = v48[23];
            if (!v109)
            {
              goto LABEL_63;
            }

            v110 = *(v151 + 24);
            v111 = v19;
          }

          else
          {
            v110 = 0;
          }

          *(v151 + 24) = 0;

          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&_mh_execute_header, v114, v115, "Store successful", v116, 2u);
          }

          v117 = v48[25];

          [*(v117 + 16) close];
          sub_1000276B4(0, &qword_100974E28, NSString_ptr);
          v118 = objc_allocWithZone(CUKeyValueStoreReader);
          v119 = swift_getObjCClassFromMetadata();
          v120 = [v118 initWithKeyType:v119 valueType:v119];
          v121 = *(v117 + 16);
          *(v117 + 16) = v120;
          v122 = v120;

          v123 = String._bridgeToObjectiveC()();

          v48[24] = 0;
          LODWORD(v117) = [v122 openAtPath:v123 error:v48 + 24];

          v124 = v48[24];
          if (v117)
          {
            v125 = v124;
          }

          else
          {
            v126 = v124;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v127 = Logger.logObject.getter();
            v128 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v127, v128))
            {
              v129 = swift_slowAlloc();
              *v129 = 0;
              _os_log_impl(&_mh_execute_header, v127, v128, "Failed to re-open reader", v129, 2u);
            }
          }

          sub_100328CEC(v48[25]);

          v130 = v48[1];
          goto LABEL_79;
        }

        v86 = *(v83 + 8 * v89);
        ++v88;
        if (v86)
        {
          v88 = v89;
          goto LABEL_57;
        }
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

LABEL_63:
  v112 = v19;

  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_76:
  swift_errorRetain();
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v137 = 138412290;
    swift_errorRetain();
    v139 = _swift_stdlib_bridgeErrorToNSError();
    *(v137 + 4) = v139;
    *v138 = v139;
    _os_log_impl(&_mh_execute_header, v135, v136, "Failed to store entries %@", v137, 0xCu);
    sub_100005508(v138, &qword_100975400, &qword_1007F65D0);
  }

  v140 = v156[25];

  swift_willThrow();
  sub_100328CEC(v140);

  v130 = v156[1];
LABEL_79:

  return v130();
}

uint64_t sub_100328CEC(uint64_t a1)
{
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100978850);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing all staged state", v5, 2u);
  }

  swift_beginAccess();
  *(a1 + 56) = &_swiftEmptyDictionarySingleton;

  *(a1 + 64) = 0;
  swift_beginAccess();
  *(a1 + 80) = &_swiftEmptySetSingleton;

  swift_beginAccess();
  *(a1 + 72) = &_swiftEmptyDictionarySingleton;
}

void sub_100328E44(uint64_t a1, NSObject *a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v88 = a3;
  v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v13 - 8);
  v15 = &v85 - v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v89 = a2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19._countAndFlagsBits = 0x2D4449656C707061;
  v19._object = 0xE800000000000000;
  if (!String.hasPrefix(_:)(v19))
  {

LABEL_13:
    v41._countAndFlagsBits = 0x2D7972746572;
    v41._object = 0xE600000000000000;
    if (!String.hasPrefix(_:)(v41))
    {

      return;
    }

    v87 = a6;
    v42 = String.count.getter();
    sub_10032AA40(v42, v16, v18);

    v43 = static String._fromSubstring(_:)();
    v45 = v44;

    if (sub_100569230(v43, v45, a7))
    {

      if (qword_100973620 == -1)
      {
LABEL_16:
        v46 = type metadata accessor for Logger();
        sub_10000C4AC(v46, qword_100978850);
        v89 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v89, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v89, v47, "Removing retry handle, matching add entry found", v48, 2u);
        }

        v49 = v89;

        return;
      }

LABEL_60:
      swift_once();
      goto LABEL_16;
    }

    swift_beginAccess();
    v50 = a4[9];
    if (*(v50 + 16) && (v51 = sub_100012854(v43, v45), (v52 & 1) != 0))
    {
      v53 = v51;
      v54 = *(v50 + 56);
      v55 = type metadata accessor for Date();
      v56 = *(v55 - 8);
      (*(v56 + 16))(v15, v54 + *(v56 + 72) * v53, v55);
      (*(v56 + 56))(v15, 0, 1, v55);
    }

    else
    {
      v55 = type metadata accessor for Date();
      (*(*(v55 - 8) + 56))(v15, 1, 1, v55);
    }

    swift_endAccess();

    type metadata accessor for Date();
    v58 = (*(*(v55 - 8) + 48))(v15, 1, v55);
    sub_100005508(v15, &qword_10097A7F0, &unk_1007FB600);
    if (v58 == 1)
    {
      swift_beginAccess();
      v59 = *(a5 + 16);
      v29 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (!v29)
      {
        *(a5 + 16) = v60;
        v61 = a4[3];
        if (v61)
        {
          v91 = 0;
          v62 = [v61 addKey:a1 value:v89 error:&v91];
          v63 = v91;
          if (!v62)
          {
            v89 = v91;
            v82 = v91;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_100973620 != -1)
            {
              swift_once();
            }

            v83 = type metadata accessor for Logger();
            sub_10000C4AC(v83, qword_100978850);
            swift_errorRetain();
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v66, v67))
            {
              goto LABEL_43;
            }

            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *v68 = 138412290;
            swift_errorRetain();
            v84 = _swift_stdlib_bridgeErrorToNSError();
            *(v68 + 4) = v84;
            *v69 = v84;
            v71 = "Retry entry write error %@";
            goto LABEL_42;
          }

          v64 = v63;
        }

        return;
      }

      __break(1u);
    }

    else if (qword_100973620 == -1)
    {
LABEL_45:
      v73 = type metadata accessor for Logger();
      sub_10000C4AC(v73, qword_100978850);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v74, v75))
      {
LABEL_52:

        return;
      }

      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Removing previous retry entry", v76, 2u);
LABEL_51:

      goto LABEL_52;
    }

    swift_once();
    goto LABEL_45;
  }

  sub_10032B114(&v94);
  v20 = v95;
  if (!v95)
  {
    goto LABEL_13;
  }

  v87 = a6;
  v21 = v94;
  v22 = v96;
  v23 = v97;
  v24 = v99;
  v86 = v98;

  swift_beginAccess();
  v25 = a4[7];
  if (*(v25 + 16))
  {
    v26 = sub_100012854(v86, v24);
    if ((v27 & 1) != 0 && !*(*(v25 + 56) + 48 * v26 + 8))
    {
      swift_endAccess();
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_10000C4AC(v77, qword_100978850);
      v91 = v21;
      v92 = v20;
      v93[0] = v22;
      v93[1] = v23;
      sub_10032B2EC(&v91, &v100);
      sub_10032B2EC(v93, &v100);

      v74 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      sub_10032B298(&v91);
      sub_10032B298(v93);

      if (!os_log_type_enabled(v74, v78))
      {

        sub_10032B298(&v91);
        v57 = v93;
        goto LABEL_28;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v100 = v80;
      *v79 = 136315138;

      sub_10032B298(&v91);
      sub_10032B298(v93);

      v81 = sub_10000C4E4(v86, v24, &v100);

      *(v79 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v78, "ContactID %s staged for deletion - removing entry from DB", v79, 0xCu);
      sub_10000C60C(v80);

      goto LABEL_51;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v28 = *(a5 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_60;
  }

  *(a5 + 16) = v30;
  v31 = a4[3];
  if (!v31)
  {
    goto LABEL_27;
  }

  v91 = 0;
  if (![v31 addKey:a1 value:v89 error:&v91])
  {
    v90[0] = v21;
    v90[1] = v20;
    v40 = v91;
    sub_10032B298(v90);
    v100 = v22;
    v101 = v23;
    sub_10032B298(&v100);

    goto LABEL_38;
  }

  v32 = a4[3];
  v33 = v91;
  if (!v32)
  {
LABEL_27:
    v100 = v21;
    v101 = v20;
    sub_10032B298(&v100);
    v91 = v22;
    v92 = v23;
    v57 = &v91;
LABEL_28:
    sub_10032B298(v57);

    return;
  }

  v91 = 0x2D44495344746C61;
  v92 = 0xE800000000000000;
  v34 = v32;
  v35._countAndFlagsBits = v22;
  v35._object = v23;
  String.append(_:)(v35);
  v36 = String._bridgeToObjectiveC()();

  v37 = String._bridgeToObjectiveC()();
  v91 = 0;
  v38 = [v34 addKey:v36 value:v37 error:&v91];
  v100 = v21;
  v101 = v20;
  sub_10032B298(&v100);

  v39 = v91;
  if ((v38 & 1) == 0)
  {
    v40 = v39;
LABEL_38:
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000C4AC(v65, qword_100978850);
    swift_errorRetain();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_43;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    swift_errorRetain();
    v70 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 4) = v70;
    *v69 = v70;
    v71 = "Main entry write error %@";
LABEL_42:
    _os_log_impl(&_mh_execute_header, v66, v67, v71, v68, 0xCu);
    sub_100005508(v69, &qword_100975400, &qword_1007F65D0);

LABEL_43:

    *v88 = 1;

    v72 = v87;
    swift_beginAccess();
    *(v72 + 16) = 0;
    *(v72 + 24) = 1;
  }
}

uint64_t sub_1003299F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v6 = static IDMSActor.shared;

  return _swift_task_switch(sub_100329A94, v6, 0);
}

uint64_t sub_100329A94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_opt_self();
  sub_1002A9924(v1, v2);
  v4 = [v3 standardUserDefaults];
  if (v2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v7 = v0[2];
    v6 = v0[3];
    sub_100294008(v7, v6);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10028BCC0(v7, v6);
  }

  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];
  v11 = String._bridgeToObjectiveC()();
  [v4 setObject:isa forKey:v11];

  swift_unknownObjectRelease();
  sub_10028BCC0(v10, v9);
  v12 = [v3 standardUserDefaults];
  if (v8)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v14 = String._bridgeToObjectiveC()();
  [v12 setObject:v13 forKey:v14];

  swift_unknownObjectRelease();
  v15 = v0[1];

  return v15();
}

uint64_t sub_100329C34()
{
  v1[3] = v0;
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v3 = static IDMSActor.shared;

  return _swift_task_switch(sub_100329D70, v3, 0);
}

uint64_t sub_100329D70()
{
  v1 = v0[3];
  if (*(v1 + 32) == 1)
  {
    [*(v1 + 16) close];
  }

  v26 = v1;
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100978850);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Destroy called", v5, 2u);
  }

  v7 = v0[7];
  v6 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  sub_10032A41C(v8);
  URL.appendingPathComponent(_:)();
  v11 = *(v9 + 8);
  v11(v8, v10);
  URL.appendingPathComponent(_:)();
  v11(v6, v10);
  URL.appendingPathExtension(_:)();
  v11(v8, v10);
  URL.path.getter();
  v11(v7, v10);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 fileExistsAtPath:v14];

  if (!v15)
  {

    goto LABEL_11;
  }

  v16 = [v12 defaultManager];
  v17 = String._bridgeToObjectiveC()();

  v0[2] = 0;
  v18 = [v16 removeItemAtPath:v17 error:v0 + 2];

  v19 = v0[2];
  if (v18)
  {
    v20 = v19;
LABEL_11:
    *(v26 + 32) = 0;
    v21 = [objc_opt_self() standardUserDefaults];
    v22 = String._bridgeToObjectiveC()();
    [v21 setObject:0 forKey:v22];

    v23 = v0[1];
    goto LABEL_13;
  }

  v24 = v19;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v23 = v0[1];
LABEL_13:

  return v23();
}

uint64_t sub_10032A164()
{

  return v0;
}

uint64_t sub_10032A1BC()
{
  sub_10032A164();

  return swift_deallocClassInstance();
}

uint64_t sub_10032A214(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10032A22C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10032A240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032A290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_10032A2EC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10032A32C()
{
  sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  v1 = objc_allocWithZone(CUKeyValueStoreReader);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 16) = [v1 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  strcpy((v0 + 40), "AirDropIDMSDB");
  *(v0 + 54) = -4864;
  *(v0 + 56) = &_swiftEmptyDictionarySingleton;
  *(v0 + 64) = 0;
  *(v0 + 72) = &_swiftEmptyDictionarySingleton;
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = 0xD000000000000022;
  *(v0 + 96) = 0x800000010078C200;
  *(v0 + 104) = 0xD000000000000028;
  *(v0 + 112) = 0x800000010078C230;
  return v0;
}

id sub_10032A41C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  sub_1000276B4(0, &qword_100978950, NSFileManager_ptr);
  sub_1002EFD6C(v4);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_100005508(v4, &unk_100974E00, &qword_1007F8940);
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100978850);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Protected container URL missing", v10, 2u);
  }

  result = sub_1001F149C();
  if (result)
  {
    v12 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032A640(void *a1)
{
  v3 = sub_10028088C(&qword_100978978, &qword_1007FBC00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002CDC0(a1, a1[3]);
  sub_10032B828();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10032A7E0()
{
  v1 = 0x44495344746C61;
  if (*v0 != 1)
  {
    v1 = 0x49746361746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_10032A83C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10032B4C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10032A864(uint64_t a1)
{
  v2 = sub_10032B828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032A8A0(uint64_t a1)
{
  v2 = sub_10032B828();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10032A8DC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10032B5DC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

BOOL sub_10032A938(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10032AA40(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10032AAF0(uint64_t a1)
{
  v2 = type metadata accessor for URLResourceValues();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v27 = v10;
  v9(v8, a1);
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  sub_10028088C(&qword_100978960, &unk_1007FBB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v16;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v17 = NSFileProtectionKey;
  v18 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  sub_100281848(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009746C0, &qword_1007F65A0);
  type metadata accessor for FileAttributeKey(0);
  sub_10032B348(&qword_100974750, type metadata accessor for FileAttributeKey, &unk_1007F74CC);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = 0;
  v20 = [v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:isa error:&v28];

  if (v20)
  {
    v21 = v28;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    URL.setResourceValues(_:)();
    (*(v25 + 8))(v4, v26);
  }

  else
  {
    v22 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v27);
}

uint64_t *sub_10032AE5C(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = result[2];
    v5 = result[3];
    v6 = result[4];
    v8 = *result;
    v7 = result[1];
    v9 = v2;
    v10._countAndFlagsBits = v8;
    v10._object = v7;
    String.append(_:)(v10);
    v11 = String._bridgeToObjectiveC()();

    v27 = v7;

    v12._countAndFlagsBits = 124;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v4;
    v13._object = v5;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 124;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = v6;
    v15._object = v25;
    String.append(_:)(v15);
    v16 = String._bridgeToObjectiveC()();

    v26 = 0;
    LODWORD(v8) = [v9 addKey:v11 value:v16 error:&v26];

    v17 = v26;
    if (!v8)
    {
      goto LABEL_6;
    }

    v18 = *(a2 + 24);
    result = v26;
    if (!v18)
    {
      return result;
    }

    v26 = 0x2D44495344746C61;
    v27 = 0xE800000000000000;
    v19 = v18;
    v20._countAndFlagsBits = v4;
    v20._object = v5;
    String.append(_:)(v20);
    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();
    v26 = 0;
    v23 = [v19 addKey:v21 value:v22 error:&v26];

    v17 = v26;
    if (v23)
    {
      return v26;
    }

    else
    {
LABEL_6:
      v24 = v17;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_10032B0C0()
{
  result = qword_10097A950;
  if (!qword_10097A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A950);
  }

  return result;
}

uint64_t sub_10032B114@<X0>(uint64_t *a2@<X8>)
{
  sub_10001229C();
  v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (*(v3 + 16) != 3)
  {

    v4 = 0;
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v13 = 0;
    goto LABEL_6;
  }

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {

    v8 = static String._fromSubstring(_:)();
    v10 = v9;

    if (*(v3 + 16) >= 3uLL)
    {

      v11 = static String._fromSubstring(_:)();
      v13 = v12;

LABEL_6:
      *a2 = v4;
      a2[1] = v6;
      a2[2] = v8;
      a2[3] = v10;
      a2[4] = v11;
      a2[5] = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10032B348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_10032B390@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

uint64_t sub_10032B41C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10032B464(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10032B4C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10032B5DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10028088C(&qword_100978968, &qword_1007FBBF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_10032B828();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000C60C(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_10032B828()
{
  result = qword_100978970;
  if (!qword_100978970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978970);
  }

  return result;
}

unint64_t sub_10032B890()
{
  result = qword_100978980;
  if (!qword_100978980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978980);
  }

  return result;
}

unint64_t sub_10032B8E8()
{
  result = qword_100978988;
  if (!qword_100978988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978988);
  }

  return result;
}

unint64_t sub_10032B940()
{
  result = qword_100978990;
  if (!qword_100978990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978990);
  }

  return result;
}

id sub_10032B99C()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v15);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1003325DC(v17, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v20 = *v7;

      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v22 = v7;
    }

    else
    {
      v19 = sub_1003325DC(v17, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      sub_10032C0AC(v19);
      v20 = UUID.uuidString.getter();
      (*(v9 + 8))(v11, v8);
      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v22 = v14;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1003325DC(v17, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v20 = UUID.uuidString.getter();
    v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v22 = v4;
LABEL_7:
    sub_10033257C(v22, v21);
    return v20;
  }

  v23 = *v17;
  result = [*v17 identifier];
  if (result)
  {
    v25 = result;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v20;
  }

  __break(1u);
  return result;
}

nw_endpoint_t sub_10032BCF4()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1003325DC(v13, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      UUID.uuidString.getter();
      v19 = String.utf8CString.getter();

      v20 = String.utf8CString.getter();
      v21 = String.utf8CString.getter();
      bonjour_service = nw_endpoint_create_bonjour_service((v19 + 32), (v20 + 32), (v21 + 32));

      sub_10028088C(&unk_100985A50, &qword_1007F8340);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1007F5670;
      v23 = *v4;
      v24 = v4[1];
      *(v22 + 32) = *v4;
      *(v22 + 40) = v24;
      sub_100294008(v23, v24);
      isa = Array._bridgeToObjectiveC()().super.isa;

      nw_endpoint_set_public_keys();

      v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v18 = v4;
      goto LABEL_9;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1003325DC(v13, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v26 = NWEndpoint.nw.getter();
      if (v26)
      {
        bonjour_service = v26;
        v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
        v18 = v7;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1003325DC(v13, v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v15 = NWEndpoint.nw.getter();
      if (v15)
      {
        bonjour_service = v15;
        v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
        v18 = v10;
LABEL_9:
        sub_10033257C(v18, v17);
        return bonjour_service;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10032C0AC(uint64_t a1)
{
  if (!NWEndpoint.nw.getter())
  {
    __break(1u);
  }

  nw_endpoint_get_service_identifier();
  swift_unknownObjectRelease();
  return UUID.init(uuid:)();
}

uint64_t sub_10032C154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v13);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {

      v24 = enum case for SFAirDrop.DeviceRelationship.classroom(_:);
      v25 = type metadata accessor for SFAirDrop.DeviceRelationship();
      return (*(*(v25 - 8) + 104))(a1, v24, v25);
    }

    sub_1003325DC(v15, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    if (v6[*(v4 + 36)] == 1)
    {
      v20 = enum case for SFAirDrop.DeviceRelationship.sameAccount(_:);
      v21 = type metadata accessor for SFAirDrop.DeviceRelationship();
      (*(*(v21 - 8) + 104))(a1, v20, v21);
    }

    else
    {
      v26 = *&v6[*(v4 + 28) + 8];
      v27 = type metadata accessor for SFAirDrop.DeviceRelationship();
      if (v26)
      {
        v28 = &enum case for SFAirDrop.DeviceRelationship.contact(_:);
      }

      else
      {
        v28 = &enum case for SFAirDrop.DeviceRelationship.stranger(_:);
      }

      (*(*(v27 - 8) + 104))(a1, *v28, v27);
    }

    v32 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v33 = v6;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v15, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v9[*(v7 + 52)] == 1)
    {
      v22 = enum case for SFAirDrop.DeviceRelationship.sameAccount(_:);
      v23 = type metadata accessor for SFAirDrop.DeviceRelationship();
      (*(*(v23 - 8) + 104))(a1, v22, v23);
    }

    else
    {
      v29 = *&v9[*(v7 + 44) + 8];
      v30 = type metadata accessor for SFAirDrop.DeviceRelationship();
      if (v29)
      {
        v31 = &enum case for SFAirDrop.DeviceRelationship.contact(_:);
      }

      else
      {
        v31 = &enum case for SFAirDrop.DeviceRelationship.stranger(_:);
      }

      (*(*(v30 - 8) + 104))(a1, *v31, v30);
    }

    v32 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v33 = v9;
  }

  else
  {
    sub_1003325DC(v15, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761) & 0x80000) != 0)
    {
      v19 = &enum case for SFAirDrop.DeviceRelationship.sameAccount(_:);
    }

    else
    {
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        __break(1u);
        return result;
      }

      contact_id = nw_endpoint_get_contact_id();
      swift_unknownObjectRelease();
      if (contact_id)
      {
        String.init(cString:)();

        v19 = &enum case for SFAirDrop.DeviceRelationship.contact(_:);
      }

      else
      {
        v19 = &enum case for SFAirDrop.DeviceRelationship.stranger(_:);
      }
    }

    v34 = *v19;
    v35 = type metadata accessor for SFAirDrop.DeviceRelationship();
    (*(*(v35 - 8) + 104))(a1, v34, v35);
    v32 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v33 = v12;
  }

  return sub_10033257C(v33, v32);
}

uint64_t sub_10032C610()
{
  v0 = type metadata accessor for SFString();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_name = nw_endpoint_get_device_name();
    swift_unknownObjectRelease();
    if (!device_name)
    {
      return 0;
    }

    v6 = String.init(cString:)();
    v8 = v7;
    if ((sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761) & 0x4000000000) != 0)
    {
      (*(v1 + 104))(v3, enum case for SFString.maybeContact(_:), v0);
      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007F5670;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100026764();
      *(v9 + 32) = v6;
      *(v9 + 40) = v8;
      v6 = SFString.format(_:)();

      (*(v1 + 8))(v3, v0);
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10032C7EC()
{
  if ((sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761) & 0x4000000000) != 0 || (sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761) & 0x8000000000) != 0)
  {
    if ((sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761) & 0x4000000000) != 0 || (sub_10032C8E4(0x4665727574616546, 0xEC0000007367616CLL) & 8) != 0)
    {
      return 1;
    }

    sub_10032C610();
    if (v0)
    {
      v1._countAndFlagsBits = 4408910;
      v1._object = 0xE300000000000000;
      v2 = String.hasPrefix(_:)(v1);

      return v2;
    }
  }

  return 0;
}

uint64_t sub_10032C8E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10028088C(&unk_100978CB0, &qword_1007FC088);
  __chkstk_darwin(v2 - 8);
  v4 = &v32[-1] - v3;
  v5 = type metadata accessor for NWTXTRecord();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWEndpoint.txtRecord.getter();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    result = NWTXTRecord.subscript.getter();
    if (!v10)
    {
      (*(v6 + 8))(v8, v5);
      return 0;
    }

    v11 = v10;
    v12 = HIBYTE(v10) & 0xF;
    v13 = result & 0xFFFFFFFFFFFFLL;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      (*(v6 + 8))(v8, v5);

      return 0;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      v33 = 0;
      v16 = sub_1003304CC(result, v11, 10);
      v29 = v30;
LABEL_69:
      (*(v6 + 8))(v8, v5);

      result = v16;
      if ((v29 & 1) == 0)
      {
        return result;
      }

      return 0;
    }

    if ((v11 & 0x2000000000000000) != 0)
    {
      v32[0] = result;
      v32[1] = v11 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v12)
        {
          if (--v12)
          {
            v16 = 0;
            v24 = v32 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                break;
              }

              v19 = __CFADD__(10 * v16, v25);
              v16 = 10 * v16 + v25;
              if (v19)
              {
                break;
              }

              ++v24;
              if (!--v12)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_78:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v12)
        {
          v16 = 0;
          v27 = v32;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              break;
            }

            v19 = __CFADD__(10 * v16, v28);
            v16 = 10 * v16 + v28;
            if (v19)
            {
              break;
            }

            ++v27;
            if (!--v12)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }

      if (v12)
      {
        if (--v12)
        {
          v16 = 0;
          v20 = v32 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              break;
            }

            v19 = 10 * v16 >= v21;
            v16 = 10 * v16 - v21;
            if (!v19)
            {
              break;
            }

            ++v20;
            if (!--v12)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v15 = *result;
      if (v15 == 43)
      {
        if (v13 >= 1)
        {
          v12 = v13 - 1;
          if (v13 != 1)
          {
            v16 = 0;
            if (result)
            {
              v22 = (result + 1);
              while (1)
              {
                v23 = *v22 - 48;
                if (v23 > 9)
                {
                  goto LABEL_67;
                }

                if (!is_mul_ok(v16, 0xAuLL))
                {
                  goto LABEL_67;
                }

                v19 = __CFADD__(10 * v16, v23);
                v16 = 10 * v16 + v23;
                if (v19)
                {
                  goto LABEL_67;
                }

                ++v22;
                if (!--v12)
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_67;
        }

        goto LABEL_77;
      }

      if (v15 != 45)
      {
        if (v13)
        {
          v16 = 0;
          if (result)
          {
            while (1)
            {
              v26 = *result - 48;
              if (v26 > 9)
              {
                goto LABEL_67;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                goto LABEL_67;
              }

              v19 = __CFADD__(10 * v16, v26);
              v16 = 10 * v16 + v26;
              if (v19)
              {
                goto LABEL_67;
              }

              ++result;
              if (!--v13)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_67:
        v16 = 0;
        LOBYTE(v12) = 1;
        goto LABEL_68;
      }

      if (v13 >= 1)
      {
        v12 = v13 - 1;
        if (v13 != 1)
        {
          v16 = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_67;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                goto LABEL_67;
              }

              v19 = 10 * v16 >= v18;
              v16 = 10 * v16 - v18;
              if (!v19)
              {
                goto LABEL_67;
              }

              ++v17;
              if (!--v12)
              {
                goto LABEL_68;
              }
            }
          }

LABEL_59:
          LOBYTE(v12) = 0;
LABEL_68:
          v33 = v12;
          v29 = v12;
          goto LABEL_69;
        }

        goto LABEL_67;
      }

      __break(1u);
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_100005508(v4, &unk_100978CB0, &qword_1007FC088);
  return 0;
}

void sub_10032CD80(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032C0AC(v3);
  sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  if (!NWEndpoint.nw.getter())
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  contact_id = nw_endpoint_get_contact_id();
  swift_unknownObjectRelease();
  if (contact_id)
  {
    String.init(cString:)();
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_10032C610();
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (!NWEndpoint.nw.getter())
  {
    goto LABEL_14;
  }

  device_id = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (device_id)
  {
    String.init(cString:)();
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761);
  Hasher._combine(_:)(v9);
  v10 = sub_10032C8E4(0x4665727574616546, 0xEC0000007367616CLL);
  Hasher._combine(_:)(v10);
}

void sub_10032D050(uint64_t a1)
{
  String.hash(into:)();
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = v1 + v2[6];
  if (*(v3 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v3;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  if (*(v1 + v2[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[10] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[11] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[12] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v2[13]));
  if (*(v1 + v2[14] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

double sub_10032D2B8@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

Swift::Int sub_10032D2C8()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v1 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  type metadata accessor for UUID();
  sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v0 + *(v1 + 28) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + *(v1 + 36)));
  return Hasher._finalize()();
}

void sub_10032D3D4(uint64_t a1)
{
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v18 = *v14;
      Hasher._combine(_:)(3uLL);
      NSObject.hash(into:)();

      return;
    }

    sub_1003325DC(v14, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    Hasher._combine(_:)(2uLL);
    Data.hash(into:)();
    type metadata accessor for UUID();
    sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    if (*&v5[*(v3 + 28) + 8])
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v5[*(v3 + 36)]);
    v16 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v17 = v5;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v14, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    Hasher._combine(_:)(1uLL);
    sub_10032D050(a1);
    v16 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v17 = v8;
  }

  else
  {
    sub_1003325DC(v14, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    Hasher._combine(_:)(0);
    sub_10032CD80(a1);
    v16 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v17 = v11;
  }

  sub_10033257C(v17, v16);
}

void sub_10032D728(uint64_t a1, uint64_t a2)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(a2 + 28) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + *(a2 + 36)));
}

Swift::Int sub_10032D810(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(a2 + 28) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + *(a2 + 36)));
  return Hasher._finalize()();
}

uint64_t sub_10032D910@<X0>(uint64_t *a2@<X8>)
{
  result = UUID.uuidString.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int sub_10032D95C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10032D9C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

id sub_10032DA04@<X0>(void *a1@<X8>)
{
  result = sub_10032B99C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_10032DA30()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v15);
  v17 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1003325DC(v17, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      v60._countAndFlagsBits = 0x2072756F6A6E6F42;
      v60._object = 0xE90000000000003CLL;
      String.append(_:)(v60);
      String.append(_:)(*v7);
      v61._countAndFlagsBits = 544034336;
      v61._object = 0xE400000000000000;
      String.append(_:)(v61);
      *&v81 = sub_10032E398();
      *(&v81 + 1) = v62;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v63._countAndFlagsBits = 543444256;
      v63._object = 0xE400000000000000;
      String.append(_:)(v63);
      *&v81 = sub_10032E5E4();
      *(&v81 + 1) = v64;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v65._countAndFlagsBits = 541346080;
      v65._object = 0xE400000000000000;
      String.append(_:)(v65);
      *&v81 = sub_10032E82C();
      *(&v81 + 1) = v66;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v67._countAndFlagsBits = 0x2044494320;
      v67._object = 0xE500000000000000;
      String.append(_:)(v67);
      *&v81 = sub_10032EA74();
      *(&v81 + 1) = v68;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);
      v46 = v82;
      v47 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v48 = v7;
    }

    else
    {
      sub_1003325DC(v17, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v19._object = 0x800000010078C290;
      v19._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v19);
      sub_10032C0AC(v20);
      sub_10032FAFC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      (*(v9 + 8))(v11, v8);
      v22._countAndFlagsBits = 544034336;
      v22._object = 0xE400000000000000;
      String.append(_:)(v22);
      *&v81 = sub_10032E398();
      *(&v81 + 1) = v23;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v24._countAndFlagsBits = 543444256;
      v24._object = 0xE400000000000000;
      String.append(_:)(v24);
      *&v81 = sub_10032E5E4();
      *(&v81 + 1) = v25;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v26._countAndFlagsBits = 541346080;
      v26._object = 0xE400000000000000;
      String.append(_:)(v26);
      *&v81 = sub_10032E82C();
      *(&v81 + 1) = v27;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v28._countAndFlagsBits = 0x2044494320;
      v28._object = 0xE500000000000000;
      String.append(_:)(v28);
      *&v81 = sub_10032EA74();
      *(&v81 + 1) = v29;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v30._countAndFlagsBits = 542458144;
      v30._object = 0xE400000000000000;
      String.append(_:)(v30);
      v31 = sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761);
      v32 = 1702195828;
      v33 = 0xE400000000000000;
      if ((v31 & 0x4000000000) == 0)
      {
        v34 = sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761);
        v35 = (v34 & 0x8000000000) == 0;
        if ((v34 & 0x8000000000) != 0)
        {
          v32 = 1702195828;
        }

        else
        {
          v32 = 0x65736C6166;
        }

        if (v35)
        {
          v33 = 0xE500000000000000;
        }

        else
        {
          v33 = 0xE400000000000000;
        }
      }

      v36 = v33;
      String.append(_:)(*&v32);

      v37._countAndFlagsBits = 541999904;
      v37._object = 0xE400000000000000;
      String.append(_:)(v37);
      v38 = sub_10032C7EC();
      v39 = !v38;
      if (v38)
      {
        v40 = 1702195828;
      }

      else
      {
        v40 = 0x65736C6166;
      }

      if (v39)
      {
        v41 = 0xE500000000000000;
      }

      else
      {
        v41 = 0xE400000000000000;
      }

      v42 = v41;
      String.append(_:)(*&v40);

      v43._countAndFlagsBits = 541476384;
      v43._object = 0xE400000000000000;
      String.append(_:)(v43);
      *&v81 = sub_10032C8E4(0x4665727574616546, 0xEC0000007367616CLL);
      type metadata accessor for RPFeatureFlags(0);
      _print_unlocked<A, B>(_:_:)();
      v44._countAndFlagsBits = 541479712;
      v44._object = 0xE400000000000000;
      String.append(_:)(v44);
      *&v81 = sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761);
      type metadata accessor for RPStatusFlags(0);
      _print_unlocked<A, B>(_:_:)();
      v45._countAndFlagsBits = 62;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v46 = v82;
      v47 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v48 = v14;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1003325DC(v17, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v49._countAndFlagsBits = 0x6C6569467261654ELL;
    v49._object = 0xEB000000003C2064;
    String.append(_:)(v49);
    v50._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v50);

    v51._countAndFlagsBits = 0x2044494320;
    v51._object = 0xE500000000000000;
    String.append(_:)(v51);
    v81 = *&v4[*(v2 + 28)];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v52._countAndFlagsBits = 541806624;
    v52._object = 0xE400000000000000;
    String.append(_:)(v52);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v54 = [(objc_class *)isa description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    String.append(_:)(v58);

    v59._countAndFlagsBits = 62;
    v59._object = 0xE100000000000000;
    String.append(_:)(v59);
    v46 = v82;
    v47 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v48 = v4;
LABEL_20:
    sub_10033257C(v48, v47);
    return v46;
  }

  v70 = *v17;
  v82 = 0;
  v83 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v71._countAndFlagsBits = 0x6F6F727373616C43;
  v71._object = 0xEB000000003C206DLL;
  String.append(_:)(v71);
  result = [v70 identifier];
  if (result)
  {
    v73 = result;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);

    v78._countAndFlagsBits = 544034336;
    v78._object = 0xE400000000000000;
    String.append(_:)(v78);
    *&v81 = sub_10032E398();
    *(&v81 + 1) = v79;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v80._countAndFlagsBits = 62;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);

    return v82;
  }

  __break(1u);
  return result;
}

id sub_10032E398()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1003325DC(v10, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v12 = *&v4[*(v2 + 36)];

      sub_10033257C(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    }

    else
    {
      sub_1003325DC(v10, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v12 = sub_10032C610();
      sub_10033257C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    }

    return v12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10033257C(v10, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    return 0;
  }

  v13 = *v10;
  result = [*v10 displayName];
  if (result)
  {
    v15 = result;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032E5E4()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v14 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_10033257C(v10, v14);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v10, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    device_model = *&v4[*(v2 + 32)];

    v15 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v16 = v4;
LABEL_12:
    sub_10033257C(v16, v15);
    return device_model;
  }

  sub_1003325DC(v10, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_model = nw_endpoint_get_device_model();
    swift_unknownObjectRelease();
    if (device_model)
    {
      device_model = String.init(cString:)();
    }

    v15 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v16 = v7;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032E82C()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v14 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_10033257C(v10, v14);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v10, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    device_id = *&v4[*(v2 + 28)];

    v15 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v16 = v4;
LABEL_12:
    sub_10033257C(v16, v15);
    return device_id;
  }

  sub_1003325DC(v10, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_id = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (device_id)
    {
      device_id = String.init(cString:)();
    }

    v15 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v16 = v7;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032EA74()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_10033257C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
      return 0;
    }

    sub_1003325DC(v13, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    contact_id = *&v4[*(v2 + 28)];

    v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v18 = v4;
LABEL_11:
    sub_10033257C(v18, v17);
    return contact_id;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v13, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    contact_id = *&v7[*(v5 + 44)];

    v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v18 = v7;
    goto LABEL_11;
  }

  sub_1003325DC(v13, v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    if (contact_id)
    {
      contact_id = String.init(cString:)();
    }

    v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v18 = v10;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_10032ED50()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1003325DC(v13, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      v16 = v7[*(v5 + 40)];
      sub_10033257C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      return v16;
    }

    sub_10033257C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v13, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v17 = &v4[*(v2 + 24)];
    v18 = *v17;
    v19 = v17[8];
    sub_10033257C(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if ((v19 & 1) == 0)
    {
      return (v18 >> 15) & 1;
    }

    return 0;
  }

  sub_1003325DC(v13, v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  v15 = sub_10032C8E4(0x4665727574616546, 0xEC0000007367616CLL);
  sub_10033257C(v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  return (v15 >> 4) & 1;
}

uint64_t sub_10032F010()
{
  v22 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v22);
  v25 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v24);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v27 = v0;
  sub_10032C154(&v22 - v10);
  v12 = *(v6 + 104);
  v12(v9, enum case for SFAirDrop.DeviceRelationship.contact(_:), v5);
  sub_10032FAFC(&unk_100978CF0, &type metadata accessor for SFAirDrop.DeviceRelationship, &protocol conformance descriptor for SFAirDrop.DeviceRelationship);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v29 == v28)
  {
    v14 = 1;
  }

  else
  {
    sub_10032C154(v11);
    v12(v9, enum case for SFAirDrop.DeviceRelationship.sameAccount(_:), v5);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v13(v9, v5);
    v13(v11, v5);
    v14 = v29 == v28;
  }

  sub_1002940CC(v27, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = v25;
      sub_1003325DC(v4, v25, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      if (v14)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(v18 + *(v22 + 32));
      }

      v16 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v17 = v18;
      goto LABEL_15;
    }

    sub_10033257C(v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return 0;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v17 = v4;
LABEL_15:
      sub_10033257C(v17, v16);
      return v14;
    }

    v19 = v23;
    sub_1003325DC(v4, v23, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v20 = *(v19 + *(v24 + 40) + 8);

    sub_10033257C(v19, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v20)
    {
    }

    else if ((v14 & 1) == 0)
    {
      return 0;
    }

    return 1;
  }
}

uint64_t SDAirDropFlags.hashValue.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032F4CC()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032F594(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10032F648(uint64_t a1)
{
  type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    sub_10032F750(319);
    if (v2 <= 0x3F)
    {
      sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1002F2B90(319, &unk_100978AB0, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10032F750(uint64_t a1)
{
  if (!qword_100978AA0)
  {
    type metadata accessor for SDAirDropFlags(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100978AA0);
    }
  }
}

void sub_10032F7C8(uint64_t a1)
{
  sub_10032F8B8(319, &qword_100978B90, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  if (v1 <= 0x3F)
  {
    sub_10032F8B8(319, &qword_100978B98, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v2 <= 0x3F)
    {
      sub_10032F8B8(319, &qword_100978BA0, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      if (v3 <= 0x3F)
      {
        sub_10032F924();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10032F8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_10032F924()
{
  result = qword_100978BA8;
  if (!qword_100978BA8)
  {
    result = &_s17ClassroomEndpointVN;
    atomic_store(&_s17ClassroomEndpointVN, &qword_100978BA8);
  }

  return result;
}

void sub_10032F97C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10032FA44();
    if (v2 <= 0x3F)
    {
      sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10032FA44()
{
  result = qword_100978C40;
  if (!qword_100978C40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100978C40);
  }

  return result;
}

uint64_t sub_10032FAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10032FC64(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1003325DC(v9, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      UUID.uuidString.getter();
      sub_10033257C(v6, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    }

    else
    {
      v14 = *v9;
      v15 = [*v9 identifier];
      if (v15)
      {
        v16 = v15;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_10033257C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    }

    else
    {
      sub_10033257C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v11 = [a2 idSelfIdentity];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 idsDeviceID];

        if (v13)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          return;
        }
      }
    }

    sub_100469844();
  }
}

uint64_t sub_10032FEAC()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10033257C(v10, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      return 3;
    }

    else
    {
      sub_10033257C(v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v10, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v14 = &v4[*(v2 + 24)];
    v15 = *v14;
    v16 = v14[8];
    sub_10033257C(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v16 & 1 | ((v15 & 0x1000) == 0))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1003325DC(v10, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v12 = sub_10032C8E4(0x4665727574616546, 0xEC0000007367616CLL);
    sub_10033257C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((v12 & 8) != 0)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_100330108@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100330338(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100331450(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100026AC0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100330108(v13, a3, a4, &v12);
  v10 = v4;
  sub_100026AC0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unsigned __int8 *sub_1003304CC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100330FDC(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100330A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100330FDC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100330FDC(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10033105C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10033105C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100015E10(v9, 0), v12 = sub_1003311B4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1003311B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1003313D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1003313D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1003313D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100331450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100330108(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100331508(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100294008(a3, a4);
          return sub_100330338(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100331670()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v41 - v6;
  v8 = sub_10032C0AC(v5);
  sub_10032C0AC(v8);
  v9 = static UUID.== infix(_:_:)();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v7, v0);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  contact_id = nw_endpoint_get_contact_id();
  swift_unknownObjectRelease();
  if (contact_id)
  {
    v13 = String.init(cString:)();
    contact_id = v14;
  }

  else
  {
    v13 = 0;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_62;
  }

  v15 = nw_endpoint_get_contact_id();
  swift_unknownObjectRelease();
  if (v15)
  {
    v16 = String.init(cString:)();
    if (contact_id)
    {
      if (!v17)
      {
        goto LABEL_56;
      }

      if (v13 == v16 && contact_id == v17)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v17)
    {
      goto LABEL_56;
    }
  }

  else if (contact_id)
  {
    goto LABEL_56;
  }

  v19 = sub_10032C610();
  v21 = v20;
  v22 = sub_10032C610();
  if (v21)
  {
    if (!v23)
    {
      goto LABEL_56;
    }

    if (v19 == v22 && v21 == v23)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_56;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_63;
  }

  device_id = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (device_id)
  {
    v26 = String.init(cString:)();
    device_id = v27;
  }

  else
  {
    v26 = 0;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_64;
  }

  v28 = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (v28)
  {
    v29 = String.init(cString:)();
    if (device_id)
    {
      if (!v30)
      {
        goto LABEL_56;
      }

      if (v26 == v29 && device_id == v30)
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v30)
    {
      goto LABEL_56;
    }
  }

  else if (device_id)
  {
    goto LABEL_56;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_65;
  }

  device_model = nw_endpoint_get_device_model();
  swift_unknownObjectRelease();
  if (device_model)
  {
    v33 = String.init(cString:)();
    device_model = v34;
  }

  else
  {
    v33 = 0;
  }

  result = NWEndpoint.nw.getter();
  if (result)
  {
    v35 = nw_endpoint_get_device_model();
    swift_unknownObjectRelease();
    if (v35)
    {
      v36 = String.init(cString:)();
      if (device_model)
      {
        if (v37)
        {
          if (v33 == v36 && device_model == v37)
          {
          }

          else
          {
            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v38 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_59;
        }

LABEL_56:

        return 0;
      }

      if (v37)
      {
        goto LABEL_56;
      }
    }

    else if (device_model)
    {
      goto LABEL_56;
    }

LABEL_59:
    v39 = sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761);
    if (v39 == sub_10032C8E4(0x6C46737574617453, 0xEB00000000736761))
    {
      v40 = sub_10032C8E4(0x4665727574616546, 0xEC0000007367616CLL);
      return v40 == sub_10032C8E4(0x4665727574616546, 0xEC0000007367616CLL);
    }

    return 0;
  }

LABEL_66:
  __break(1u);
  return result;
}

BOOL sub_100331B60(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v6 = v5[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = v5[8];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }

    if (*v15 != *v17 || v16 != v18)
    {
      v20 = v5;
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v20;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v22 = v5[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }

    if (*v23 != *v25 || v24 != v26)
    {
      v28 = v5;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  v30 = v5[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }

    if (*v31 != *v33 || v32 != v34)
    {
      v35 = v5;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  v37 = v5[11];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v5;
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v5[12];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (!v46)
  {
    if (!v48)
    {
      goto LABEL_54;
    }

    return 0;
  }

  if (!v48)
  {
    return 0;
  }

  if (*v45 != *v47 || v46 != v48)
  {
    v49 = v5;
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v5 = v49;
    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_54:
  if (*(a1 + v5[13]) != *(a2 + v5[13]))
  {
    return 0;
  }

  v52 = v5[14];
  v54 = *(a1 + v52);
  v53 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v57 = *v55;
  v56 = v55[1];
  if (v53 >> 60 == 15)
  {
    if (v56 >> 60 == 15)
    {
      sub_1002A9924(v54, v53);
      sub_1002A9924(v57, v56);
      sub_10028BCC0(v54, v53);
      return 1;
    }

    goto LABEL_60;
  }

  if (v56 >> 60 == 15)
  {
LABEL_60:
    sub_1002A9924(v54, v53);
    sub_1002A9924(v57, v56);
    sub_10028BCC0(v54, v53);
    sub_10028BCC0(v57, v56);
    return 0;
  }

  sub_1002A9924(v54, v53);
  sub_1002A9924(v57, v56);
  v58 = sub_100331508(v54, v53, v57, v56);
  sub_10028BCC0(v57, v56);
  sub_10028BCC0(v54, v53);
  return v58;
}

uint64_t sub_100331EC8(uint64_t a1, uint64_t a2)
{
  if (!sub_100331508(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_12;
  }

  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  if (v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  v11 = *(a1 + *(v4 + 36)) ^ *(a2 + *(v4 + 36)) ^ 1;
  return v11 & 1;
}

uint64_t sub_100331F88(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v45 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v45);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v11 = __chkstk_darwin(v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = (&v44 - v18);
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v22 = sub_10028088C(&unk_100978CD0, &unk_1007FC090);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v44 - v24;
  v26 = *(v23 + 56);
  sub_1002940CC(a1, &v44 - v24);
  sub_1002940CC(v47, &v25[v26]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002940CC(v25, v19);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_10033257C(v19, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        goto LABEL_23;
      }

      sub_1003325DC(&v25[v26], v6, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v38 = sub_100331B60(v19, v6);
      sub_10033257C(v6, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v39 = v19;
      v40 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      sub_1002940CC(v25, v21);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10033257C(v21, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_23:
        sub_100005508(v25, &unk_100978CD0, &unk_1007FC090);
LABEL_24:
        v38 = 0;
        return v38 & 1;
      }

      sub_1003325DC(&v25[v26], v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v38 = sub_100331670();
      sub_10033257C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v39 = v21;
      v40 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    sub_10033257C(v39, v40);
LABEL_27:
    sub_10033257C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return v38 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1002940CC(v25, v13);
    v41 = *v13;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_23;
    }

    v42 = *&v25[v26];
    sub_100332530();
    v38 = static NSObject.== infix(_:_:)();

    goto LABEL_27;
  }

  sub_1002940CC(v25, v16);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10033257C(v16, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    goto LABEL_23;
  }

  v28 = &v25[v26];
  v29 = v46;
  sub_1003325DC(v28, v46, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  if (!sub_100331508(*v16, *(v16 + 1), *v29, *(v29 + 8)) || (static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v30 = *(v45 + 28);
  v31 = &v16[v30];
  v32 = *&v16[v30 + 8];
  v33 = (v29 + v30);
  v34 = v33[1];
  if (!v32)
  {
    if (!v34)
    {
      goto LABEL_14;
    }

LABEL_30:
    sub_10033257C(v29, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    sub_10033257C(v16, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    goto LABEL_31;
  }

  if (!v34 || (*v31 != *v33 || v32 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  v35 = *(v45 + 36);
  v36 = v16[v35];
  v37 = *(v29 + v35);
  sub_10033257C(v29, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  sub_10033257C(v16, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  if (v36 != v37)
  {
LABEL_31:
    sub_10033257C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
    goto LABEL_24;
  }

  sub_10033257C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v38 = 1;
  return v38 & 1;
}

unint64_t sub_100332530()
{
  result = qword_1009772D8;
  if (!qword_1009772D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009772D8);
  }

  return result;
}

uint64_t sub_10033257C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003325DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100332644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a2, v14);
  if ((*(v15 + 88))(v17, v14) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    (*(v11 + 16))(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v25 = 0;
    sub_100333278(v9, v7);
    v18 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v19 = swift_allocObject();
    sub_1003332E8(v7, v19 + v18);
    *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v9, &unk_100974E00, &qword_1007F8940);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v25 = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = 0;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_100332AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = *(a1 + 16);
  v31 = a1;
  v32 = v10;
  if (v10)
  {
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v36 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v14 = a1 + v36;
    v15 = *(v11 + 56);
    v39 = (v11 + 16);
    v34 = (v11 - 8);
    v16 = _swiftEmptyArrayStorage;
    v37 = v13;
    v38 = v7;
    v35 = v15;
    v13(v9, v14, v3);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v34)(v9, v3);
      }

      else
      {
        v17 = v11;
        v18 = *v39;
        (*v39)(v7, v9, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v16[2] + 1, 1);
          v16 = v40;
        }

        v21 = v16[2];
        v20 = v16[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v16 = v40;
        }

        v16[2] = v21 + 1;
        v22 = v16 + v36 + v21 * v35;
        v15 = v35;
        v7 = v38;
        v18(v22, v38, v3);
        v11 = v17;
        v12 = v37;
      }

      v14 += v15;
      if (!--v10)
      {
        break;
      }

      v12(v9, v14, v3);
    }
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v23 = v16[2];
  if (v23)
  {
    if (v23 != v32)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v40 = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = v16;
    *(v28 + 24) = 0;
  }

  else
  {

    v40 = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    *(v29 + 32) = v31;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100332F18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerMixedTypes();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_100332F4C()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(1);
}

void sub_10033300C(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x5F434952454E4547;
    v7 = inited + 32;
    *(inited + 40) = 0xEC0000004D455449;
    *(inited + 48) = v5;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v7, &qword_100981D40, &unk_1007FA6C0);
    v8 = String._bridgeToObjectiveC()();
    v9 = SFLocalizedStringForKey();

    if (v9)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1007F5670;
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v5;
      static String.localizedStringWithFormat(_:_:)();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1003331B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C00;

  return sub_1003CF9FC(a1, a2, a3, v8, v9);
}

uint64_t sub_100333278(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003332E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100333358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100005C00;

  return sub_1003D0ED8(a1, a2, a3, v3 + v9, v10);
}

uint64_t sub_100333488()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978DC0);
  v1 = sub_10000C4AC(v0, qword_100978DC0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100333550(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v37 = a2;
  v39 = type metadata accessor for SFNWInterfaceType();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0x800000010078C360;
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v8;
  }

  else
  {
    v36 = 0xD000000000000012;
  }

  v9 = 0x800000010078C380;
  v10 = String._bridgeToObjectiveC()();
  v11 = SFLocalizedStringForKey();

  if (v11)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v12;
  }

  else
  {
    v35 = 0xD000000000000016;
  }

  v13 = 0x800000010078C3A0;
  v14 = 0xD00000000000001ALL;
  v15 = String._bridgeToObjectiveC()();
  v16 = SFLocalizedStringForKey();

  v42 = v5;
  if (v16)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v17;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = SFLocalizedStringForKey();

  v34 = v14;
  if (v19)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v33 = 0xD000000000000018;
  }

  v20 = 0xD000000000000013;
  v21 = String._bridgeToObjectiveC()();
  v22 = SFLocalizedStringForKey();

  v41 = v9;
  if (v22)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = SFLocalizedStringForKey();

  v40 = v13;
  if (v24)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v32 = 0xD000000000000012;
  }

  v25 = 0xD000000000000013;
  v26 = String._bridgeToObjectiveC()();
  v27 = SFLocalizedStringForKey();

  if (v27)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for SFAirDropUserDefaults();
  v28 = static SFAirDropUserDefaults.shared.getter();
  v29 = SFAirDropUserDefaults.verboseWalkAway.getter();

  sub_100638724(v4);
  v30 = (*(v2 + 88))(v4, v39);
  if (v30 == enum case for SFNWInterfaceType.awdl(_:))
  {

    if (v29)
    {
      return v36;
    }

    goto LABEL_24;
  }

  if (v30 == enum case for SFNWInterfaceType.cellular(_:))
  {

    return v35;
  }

  if (v30 == enum case for SFNWInterfaceType.directWired(_:))
  {

    goto LABEL_27;
  }

  if (v30 == enum case for SFNWInterfaceType.localWiFi(_:))
  {

    if (v29)
    {
      return v33;
    }

    goto LABEL_24;
  }

  if (v30 == enum case for SFNWInterfaceType.other(_:))
  {

    if (v29)
    {
      return v20;
    }

    goto LABEL_24;
  }

  if (v30 == enum case for SFNWInterfaceType.wifi(_:))
  {

    if (v29)
    {
      return v32;
    }

LABEL_24:

    return v38;
  }

  if (v30 != enum case for SFNWInterfaceType.wired(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  if (v29)
  {

    return v25;
  }

LABEL_27:

  return v34;
}

uint64_t sub_100333B60()
{
  v35 = type metadata accessor for SFNWInterfaceType();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = 0x800000010078C360;
  v4 = String._bridgeToObjectiveC()();
  v5 = SFLocalizedStringForKey();

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v7;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  v8 = 0x800000010078C380;
  v9 = String._bridgeToObjectiveC()();
  v10 = SFLocalizedStringForKey();

  v33 = v6;
  if (v10)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v11;
  }

  else
  {
    v32 = 0xD000000000000016;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = SFLocalizedStringForKey();

  v37 = v3;
  if (v13)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v14;
  }

  else
  {
    v31 = 0xD00000000000001ALL;
    v34 = 0x800000010078C3A0;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = SFLocalizedStringForKey();

  if (v16)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v30 = 0xD000000000000018;
  }

  v17 = 0xD000000000000013;
  v18 = String._bridgeToObjectiveC()();
  v19 = SFLocalizedStringForKey();

  v36 = v8;
  if (v19)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = SFLocalizedStringForKey();

  if (v21)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v29 = 0xD000000000000012;
  }

  v22 = 0xD000000000000013;
  v23 = String._bridgeToObjectiveC()();
  v24 = SFLocalizedStringForKey();

  if (v24)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for SFAirDropUserDefaults();
  v25 = static SFAirDropUserDefaults.shared.getter();
  v26 = SFAirDropUserDefaults.verboseWalkAway.getter();

  sub_1002FCB68(v2);
  v27 = (*(v0 + 88))(v2, v35);
  if (v27 == enum case for SFNWInterfaceType.awdl(_:))
  {

    if (v26)
    {
      return v33;
    }

LABEL_25:

    return 0;
  }

  if (v27 == enum case for SFNWInterfaceType.cellular(_:))
  {

    return v32;
  }

  if (v27 == enum case for SFNWInterfaceType.directWired(_:))
  {

    return v31;
  }

  if (v27 == enum case for SFNWInterfaceType.localWiFi(_:))
  {

    if (v26)
    {
      return v30;
    }

    goto LABEL_25;
  }

  if (v27 == enum case for SFNWInterfaceType.other(_:))
  {

    if (v26)
    {
      return v17;
    }

    goto LABEL_25;
  }

  if (v27 == enum case for SFNWInterfaceType.wifi(_:))
  {

    if (v26)
    {
      return v29;
    }

    goto LABEL_25;
  }

  if (v27 == enum case for SFNWInterfaceType.wired(_:))
  {

    if (v26)
    {
      v17 = v22;
    }

    else
    {
      v17 = v31;
    }

    return v17;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100334168()
{
  v1[5] = v0;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for SFAirDropSend.Failure();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for SFAirDropSend.Transfer.State();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropSend.Transfer();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v1[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_10033436C, v5, 0);
}

uint64_t sub_10033436C()
{
  v74 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  v8 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v72 = *(v3 + 16);
  v72(v1, v7 + v8, v2);
  SFAirDropSend.Transfer.state.getter();
  v71 = *(v3 + 8);
  v71(v1, v2);
  v9 = (*(v6 + 88))(v4, v5);
  if (v9 == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
  {
    v10 = *(v0 + 104);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    (*(*(v0 + 88) + 96))(v10, *(v0 + 80));
    v14 = sub_10028088C(&unk_100986210, &unk_1008042C0);
    (*(v12 + 32))(v11, v10 + *(v14 + 48), v13);
    v15 = (*(v12 + 88))(v11, v13);
    v18 = v15 == enum case for SFAirDropSend.Failure.resolveFailure(_:) || v15 == enum case for SFAirDropSend.Failure.receiverDeclined(_:) || v15 == enum case for SFAirDropSend.Failure.cancelled(_:) || v15 == enum case for SFAirDropSend.Failure.insufficientStorage(_:);
    v19 = !v18;
    if (!v18)
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }

    v20 = *(v0 + 104);
    v21 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    (*(*(v21 - 8) + 8))(v20, v21);
    if (v19)
    {
      v22 = *(v0 + 144);
      v24 = *(v0 + 40);
      v23 = *(v0 + 48);
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
      v26 = sub_100337888(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v27 = swift_allocObject();
      v27[2] = v22;
      v27[3] = v26;
      v27[4] = v24;
      v28 = v24;

      v29 = sub_1002B3098(0, 0, v23, &unk_1007FC1F8, v27);
      *(v0 + 152) = v29;
      v30 = swift_task_alloc();
      *(v0 + 160) = v30;
      *v30 = v0;
      v30[1] = sub_100334B5C;

      return Task<>.value.getter(v30, v29, &type metadata for () + 8);
    }
  }

  else if (v9 == enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:))
  {
    v31 = *(v0 + 104);
    (*(*(v0 + 88) + 96))(v31, *(v0 + 80));
    sub_10028088C(&qword_10097E9D0, &unk_1007FC200);

    v32 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    (*(*(v32 - 8) + 8))(v31, v32);
  }

  else
  {
    v33 = *(v0 + 40);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();

    v65 = v8;
    if (os_log_type_enabled(v34, v35))
    {
      v67 = v35;
      v36 = *(v0 + 128);
      v69 = v7;
      v37 = *(v0 + 112);
      v38 = *(v0 + 88);
      v39 = *(v0 + 96);
      v40 = *(v0 + 80);
      buf = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v73 = v66;
      *buf = 136315138;
      v72(v36, v69 + v8, v37);
      SFAirDropSend.Transfer.state.getter();
      v71(v36, v37);
      sub_100337888(&qword_100977DD8, &type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = *(v38 + 8);
      v45 = v39;
      v7 = v69;
      v44(v45, v40);
      v46 = sub_10000C4E4(v41, v43, &v73);

      *(buf + 4) = v46;
      _os_log_impl(&_mh_execute_header, v34, v67, "runPostTransferEndedSteps invalid transfer state. Skipping. {transfer.state: %s}", buf, 0xCu);
      sub_10000C60C(v66);
    }

    else
    {
      v47 = *(v0 + 88);

      v44 = *(v47 + 8);
    }

    v44(*(v0 + 104), *(v0 + 80));
    v8 = v65;
  }

  v48 = *(v0 + 40);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 128);
    v52 = *(v0 + 112);
    v53 = v8;
    v54 = v7;
    v56 = *(v0 + 88);
    v55 = *(v0 + 96);
    v68 = *(v0 + 80);
    v57 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v73 = v70;
    *v57 = 136315138;
    v72(v51, v54 + v53, v52);
    SFAirDropSend.Transfer.state.getter();
    v71(v51, v52);
    sub_100337888(&qword_100977DD8, &type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    (*(v56 + 8))(v55, v68);
    v61 = sub_10000C4E4(v58, v60, &v73);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v49, v50, "Transer Linger SKIPPED. {transfer.state: %s}", v57, 0xCu);
    sub_10000C60C(v70);
  }

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_100334B5C()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_100334C6C, v1, 0);
}

uint64_t sub_100334C6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100334D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100334E14, v6, 0);
}

uint64_t sub_100334E14(uint64_t a1)
{
  *(v1 + 88) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transfer Linger START", v4, 2u);
  }

  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_100334F6C;

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100334F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1003351D4;
  }

  else
  {
    v7 = sub_1003350F4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003350F4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Send StateMachine Linger END", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1003351D4()
{
  v11 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_10000C4E4(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Transfer Linger FAILED {error: %s}", v3, 0xCu);
    sub_10000C60C(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003353F4@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X2>, const char *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v64 = a5;
  v65 = a6;
  v59 = a3;
  v60 = a4;
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  v66 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v62 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v53 - v12;
  v14 = a2(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v57 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - v19;
  __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v23 = *(v15 + 16);
  v63 = a1;
  v61 = v23;
  v23(&v53 - v21, a1, v14);
  v24 = v6;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v58 = v26;
  v27 = os_log_type_enabled(v25, v26);
  v28 = &unk_1009A0000;
  if (v27)
  {
    v29 = swift_slowAlloc();
    v53 = v22;
    v30 = v29;
    v56 = v29;
    v55 = swift_slowAlloc();
    v67[0] = v55;
    *v30 = 136315394;
    v54 = v25;
    v31 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    v32 = v66;
    v33 = (*(v66 + 16))(v13, &v24[v31], v9);
    v59(v33);
    (*(v32 + 8))(v13, v9);
    v61(v57, v20, v14);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    v59 = *(v15 + 8);
    (v59)(v20, v14);
    v37 = sub_10000C4E4(v34, v36, v67);

    v38 = v56;
    *(v56 + 4) = v37;
    *(v38 + 12) = 2080;
    v39 = v53;
    v61(v20, v53, v14);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    (v59)(v39, v14);
    v43 = sub_10000C4E4(v40, v42, v67);
    v28 = &unk_1009A0000;

    v44 = v56;
    *(v56 + 14) = v43;
    v45 = v54;
    _os_log_impl(&_mh_execute_header, v54, v58, v60, v44, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v15 + 8))(v22, v14);
  }

  v46 = v28[243];
  swift_beginAccess();
  v47 = v66;
  v48 = *(v66 + 16);
  v49 = v62;
  v48(v62, &v24[v46], v9);
  v64(v63);
  v50 = *(v47 + 8);
  v50(v49, v9);
  swift_beginAccess();
  (*(v47 + 40))(&v24[v46], v13, v9);
  swift_endAccess();
  v48(v13, &v24[v46], v9);
  CurrentValueSubject.send(_:)();
  v50(v13, v9);
  v51 = *&v24[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield];
  v48(v13, &v24[v46], v9);
  v51(v13);
  v50(v13, v9);
  return (v48)(v65, &v24[v46], v9);
}

uint64_t sub_100335980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = type metadata accessor for SFAirDropSend.Transfer();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v45 - v9;
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v14 = __chkstk_darwin(v13 - 8);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v53 = a1;
  sub_100337818(a1, &v45 - v19);
  v21 = v2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v48 = v23;
    v49 = v22;
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55[0] = v46;
    v47 = v24;
    *v24 = 136315394;
    v25 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    (*(v5 + 16))(v12, &v21[v25], v4);
    SFAirDropSend.Transfer.activeInterfaceType.getter();
    v50 = v5;
    (*(v5 + 8))(v12, v4);
    v26 = type metadata accessor for SFNWInterfaceType();
    v27 = *(v26 - 8);
    v45 = *(v27 + 48);
    if (v45(v18, 1, v26) == 1)
    {
      sub_100005508(v18, &qword_100977DC0, &unk_1007FB320);
      v28 = 0x8000000100789F30;
      v29 = 0xD000000000000015;
    }

    else
    {
      v29 = SFNWInterfaceType.description.getter();
      v28 = v30;
      (*(v27 + 8))(v18, v26);
    }

    v31 = sub_10000C4E4(v29, v28, v55);

    v32 = v47;
    *(v47 + 1) = v31;
    *(v32 + 6) = 2080;
    v33 = v51;
    sub_100337818(v20, v51);
    if (v45(v33, 1, v26) == 1)
    {
      sub_100005508(v33, &qword_100977DC0, &unk_1007FB320);
      v34 = 0x8000000100789F30;
      v5 = v50;
      v35 = 0xD000000000000015;
    }

    else
    {
      v35 = SFNWInterfaceType.description.getter();
      v34 = v36;
      (*(v27 + 8))(v33, v26);
      v5 = v50;
    }

    sub_100005508(v20, &qword_100977DC0, &unk_1007FB320);
    v37 = sub_10000C4E4(v35, v34, v55);

    *(v32 + 14) = v37;
    v38 = v49;
    _os_log_impl(&_mh_execute_header, v49, v48, "Transfer changed active interface type %s -> %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100005508(v20, &qword_100977DC0, &unk_1007FB320);
  }

  v39 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v40 = *(v5 + 16);
  v41 = v52;
  v40(v52, &v21[v39], v4);
  SFAirDropSend.Transfer.update(activeInterfaceType:)();
  v42 = *(v5 + 8);
  v42(v41, v4);
  swift_beginAccess();
  (*(v5 + 40))(&v21[v39], v10, v4);
  swift_endAccess();
  v40(v10, &v21[v39], v4);
  CurrentValueSubject.send(_:)();
  v42(v10, v4);
  v43 = *&v21[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield];
  v40(v10, &v21[v39], v4);
  v43(v10);
  v42(v10, v4);
  return (v40)(v54, &v21[v39], v4);
}

uint64_t sub_100335F90@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a2;
  v4 = type metadata accessor for SFAirDropSend.Transfer();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Transfer changed network metrics", v13, 2u);
  }

  v14 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v15 = *(v5 + 16);
  v15(v8, v3 + v14, v4);
  SFAirDropSend.Transfer.update(networkMetrics:)();
  v16 = *(v5 + 8);
  v16(v8, v4);
  swift_beginAccess();
  (*(v5 + 40))(v3 + v14, v10, v4);
  swift_endAccess();
  v15(v10, v3 + v14, v4);
  CurrentValueSubject.send(_:)();
  v16(v10, v4);
  v17 = *(v3 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield);
  v15(v10, v3 + v14, v4);
  v17(v10);
  v16(v10, v4);
  return (v15)(v20, v3 + v14, v4);
}

uint64_t sub_100336238(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropSend.Transfer();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32[0] = v15;
    *v14 = 136315138;
    SFAirDropSend.Transfer.id.getter();
    v16 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v28 = a1;
    v18 = v17;
    (*(v30 + 8))(v6, v31);
    (*(v8 + 8))(v10, v7);
    v19 = sub_10000C4E4(v16, v18, v32);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Begin Send OSTransaction and Power Assertion %s", v14, 0xCu);
    sub_10000C60C(v15);

    v2 = v29;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v32, "airdrop.send[");
  HIWORD(v32[1]) = -4864;
  SFAirDropSend.Transfer.id.getter();
  v20 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
  v22 = v21;
  (*(v30 + 8))(v6, v31);
  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 93;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  String.utf8CString.getter();

  v25 = os_transaction_create();

  *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction) = v25;
  swift_unknownObjectRelease();
  result = sub_1000925A4();
  v27 = v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion;
  *v27 = result;
  *(v27 + 4) = 0;
  return result;
}

void sub_1003365C8(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction;
  if (*(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction))
  {
    swift_unknownObjectRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Clearing Send OSTransaction", v7, 2u);
    }

    swift_unknownObjectRelease();
    *(v3 + v4) = 0;
    swift_unknownObjectRelease();
  }

  v8 = v3 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion;
  if ((*(v3 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion + 4) & 1) == 0)
  {
    v9 = *v8;
    if (*v8)
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Clearing Send Power Assertion", v12, 2u);
      }

      IOPMAssertionRelease(v9);
      *v8 = 0;
      *(v8 + 4) = 1;
    }
  }
}

uint64_t sub_100336748(double a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for SFAirDrop.DisplayPriority();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDropSend.Transfer();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask;
  if (*(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask))
  {

    Task.cancel()();
  }

  (*(v7 + 104))(v9, enum case for SFAirDrop.DisplayPriority.high(_:), v6);
  sub_1003353AC(v9, v13);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v5, 1, 1, v15);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v17;
  v19 = static Task<>.noThrow(priority:operation:)();

  sub_100005508(v5, &qword_100976160, &qword_1007F8770);
  *(v1 + v14) = v19;

  v16(v5, 1, 1, v15);

  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v5, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_100336AD4(double a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a3;
  *(v3 + 40) = a1;
  v4 = type metadata accessor for SFAirDrop.DisplayPriority();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  sub_10028088C(&qword_100976460, &qword_1007F9730);
  *(v3 + 80) = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  *(v3 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_100336C68, v6, 0);
}

uint64_t sub_100336C68()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_100336D44;

  return sub_10002ED10(v1, v3, 0, 0, 1);
}

uint64_t sub_100336D44()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_100337038;
  }

  else
  {
    v7 = sub_100336ECC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100336ECC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    (*(v6 + 104))(v4, enum case for SFAirDrop.DisplayPriority.normal(_:), v5);
    sub_1003353AC(v4, v3);

    (*(v6 + 8))(v4, v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v0[10];
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  (*(*(v9 - 8) + 56))(v8, v7, 1, v9);
  sub_100005508(v8, &qword_100976460, &qword_1007F9730);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100337038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003370B4(uint64_t a1, uint64_t a2)
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  *(v2 + 16) = static AirDropActor.shared;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1003371B0;

  return Task.result.getter(v2 + 32, a2, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1003371B0()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1003372C0, v1, 0);
}

id sub_100337304()
{
  v2.receiver = v0;
  v2.super_class = _s10BaseRunnerCMa_0(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s10BaseRunnerCMa_0(uint64_t a1)
{
  result = qword_100978E28;
  if (!qword_100978E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100337520(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SFAirDropSend.Request();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SFAirDropSend.Transfer();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1003376CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_100336AD4(v4, a1, v5);
}

uint64_t sub_10033777C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C04;

  return sub_1003370B4(a1, v1);
}

uint64_t sub_100337818(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100337888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003378D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100334D18(a1, v4, v5, v6);
}

uint64_t sub_100337988()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978E38);
  sub_10000C4AC(v0, qword_100978E38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100337A64(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (NWEndpoint.nw.getter())
  {
    if (a2())
    {
      v8 = String.init(cString:)();
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        return v8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973630 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100978E38);
    (*(v5 + 16))(v7, a1, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = NWEndpoint.debugDescription.getter();
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_10000C4E4(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not convert endpoint to nw_endpoint %s", v16, 0xCu);
      sub_10000C60C(v17);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return 0;
}

uint64_t sub_100337D08()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978E50);
  v1 = sub_10000C4AC(v0, qword_100978E50);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100337DD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_100337FDC, v7, 0);
}

uint64_t sub_100337FDC(uint64_t a1)
{
  v56 = v1;
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[11];
    v7 = SFAirDropReceive.AskRequest.urlItems.getter();
    v8 = 0;
    v9 = v7 + 56;
    v10 = -1;
    v11 = -1 << *(v7 + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & *(v7 + 56);
    v13 = (63 - v11) >> 6;
    v53 = v7;
    while (v12)
    {
LABEL_10:
      v15 = v1[12];
      v16 = v1[10];
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v6 + 16))(v15, *(v53 + 48) + *(v6 + 72) * (v17 | (v8 << 6)), v16);
      URL.scheme.getter();
      v19 = v18;
      (*(v6 + 8))(v15, v16);
      if (v19)
      {
        String.lowercased()();

        v20 = String._bridgeToObjectiveC()();

        MyFriendsLink = SFIsFindMyFriendsLink();

        if ((MyFriendsLink & 1) == 0)
        {

          goto LABEL_13;
        }
      }
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        v23 = objc_allocWithZone(LSApplicationRecord);
        v24 = sub_10066F3F8(0xD000000000000010, 0x800000010078C590, 1);
        v45 = v1[3];
        v46 = *(v45 + 16);
        *(v45 + 16) = v24;

        goto LABEL_18;
      }

      v12 = *(v9 + 8 * v14);
      ++v8;
      if (v12)
      {
        v8 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
    swift_once();
    v26 = v1[8];
    v25 = v1[9];
    v27 = v1[7];
    v28 = v1[2];
    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_100978E50);
    (*(v26 + 16))(v25, v28, v27);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v1[8];
    v34 = v1[9];
    v35 = v1[7];
    if (v32)
    {
      v37 = v1[5];
      v36 = v1[6];
      v38 = v1[4];
      v52 = v31;
      v39 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v39 = 136315394;
      v50 = v30;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002891F4();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v35;
      v42 = v41;
      (*(v37 + 8))(v36, v38);
      (*(v33 + 8))(v34, v40);
      v43 = sub_10000C4E4(v49, v42, &v55);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2112;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v44;
      *v51 = v44;
      _os_log_impl(&_mh_execute_header, v50, v52, "Failed to get FindMy app for ask request %s: %@", v39, 0x16u);
      sub_100005508(v51, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v54);
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

LABEL_18:
    v22 = *(v1[3] + 16) != 0;
  }

  else
  {
LABEL_13:
    v22 = 0;
  }

  v47 = v1[1];

  return v47(v22);
}

uint64_t sub_1003384B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100338924@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerFindMyFriendsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10033895C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100337DD0(a1);
}

void sub_1003389F4(uint64_t a1, uint64_t a2)
{
  sub_1003D8D18(&off_1008D6DB0, a2);
  sub_100005508(&unk_1008D6DD0, &qword_100981D40, &unk_1007FA6C0);
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_100338AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100338B04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}