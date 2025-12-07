void sub_2250D52E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedNotifier];
  v11 = MEMORY[0x22AA62D80](a2, a3);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  sub_225072D78();
  v14[1] = 1107296256;
  v14[2] = sub_2250D5428;
  v14[3] = &unk_28385AA90;
  v13 = _Block_copy(v14);

  [v10 registerObserver:a1 forAccountID:v11 authTokenRenewalInProgressNotifications:v13];
  _Block_release(v13);
}

uint64_t sub_2250D5428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_2250D54A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2250D54EC(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(31);

  MEMORY[0x22AA62E50](a1, a2);
  v4 = MEMORY[0x22AA62D80](0xD00000000000001DLL, 0x800000022547A190);

  return v4;
}

void sub_2250D5584(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a4;
  v9 = type metadata accessor for Logger();
  sub_225072D1C();
  v84 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v73 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - v14;
  v83 = type metadata accessor for ResolvedBundleID();
  sub_225072D1C();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v71 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  v27 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v27 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    __break(1u);
    goto LABEL_18;
  }

  v76 = a5;
  v77 = v15;
  v82 = v9;
  v80 = a1;
  v86 = sub_2250D54EC(a1, a2);
  v28 = a3;
  v29 = MEMORY[0x22AA62510]();
  v30 = MEMORY[0x22AA62D80](v29);

  v87 = [objc_opt_self() kTCCServiceLiverpool];
  if (!v87)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  empty = xpc_array_create_empty();
  v32 = [v30 UTF8String];
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = xpc_string_create(v32);
  xpc_array_append_value(empty, v33);
  swift_unknownObjectRelease();
  v34 = xpc_dictionary_create_empty();
  v35 = [v87 UTF8String];
  if (!v35)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  xpc_dictionary_set_value(v34, v35, empty);
  v85 = tcc_events_filter_create_with_criteria();
  v81 = v30;
  if (!v85)
  {
    v56 = v73;
    CCLog.getter();
    v57 = v17;
    v58 = *(v17 + 16);
    v59 = v83;
    v58(v22, v28, v83);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v74 = v34;
      v75 = empty;
      v64 = v63;
      aBlock[0] = v63;
      *v62 = 136315138;
      v65 = MEMORY[0x22AA62510]();
      v66 = v84;
      v68 = v67;
      (*(v57 + 8))(v22, v59);
      v69 = sub_225095AFC(v65, v68, aBlock);

      *(v62 + 4) = v69;
      _os_log_impl(&dword_22506F000, v60, v61, "Failed to generate TCC event filter for bundle identifier: %s", v62, 0xCu);
      sub_225073BF0(v64);
      sub_22507C9FC();
      sub_22507C9FC();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v66 + 8))(v73, v82);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v22, v59);
      (*(v84 + 8))(v56, v82);
    }

    return;
  }

  v74 = v34;
  v75 = empty;
  v73 = CKGetGlobalQueue();
  if (![v86 UTF8String])
  {
LABEL_21:
    __break(1u);
    return;
  }

  v71 = *(v17 + 16);
  v72 = v28;
  v36 = v83;
  v71(v26, v28, v83);
  v37 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v38 = (v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v17 + 32))(v39 + v37, v26, v36);
  v40 = (v39 + v38);
  *v40 = v80;
  v40[1] = a2;
  v41 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
  v42 = v76;
  *v41 = v78;
  v41[1] = v42;
  aBlock[4] = sub_2250D75C4;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2250D691C;
  aBlock[3] = &unk_28385ABB0;
  v43 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v44 = v73;
  tcc_events_subscribe();
  _Block_release(v43);
  swift_unknownObjectRelease();
  v45 = v77;
  CCLog.getter();
  v46 = v79;
  v71(v79, v72, v36);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v49 = 136315394;
    *(v49 + 4) = sub_225095AFC(v80, a2, aBlock);
    *(v49 + 12) = 2080;
    sub_2250D71BC();
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v36;
    v52 = v50;
    v54 = v53;
    (*(v17 + 8))(v46, v51);
    v55 = sub_225095AFC(v52, v54, aBlock);

    *(v49 + 14) = v55;
    _os_log_impl(&dword_22506F000, v47, v48, "Subscribed to TCC events with token %s for bundleID: %s", v49, 0x16u);
    swift_arrayDestroy();
    sub_22507C9FC();
    v44 = v73;
    sub_22507C9FC();
  }

  else
  {

    (*(v17 + 8))(v46, v36);
  }

  (*(v84 + 8))(v45, v82);
  v70 = v81;
  [objc_opt_self() sleepForTimeInterval_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_2250D5D64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v115 = a7;
  v116 = a6;
  v117 = a3;
  v110 = a1;
  v113 = type metadata accessor for ResolvedBundleID();
  v109 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v104 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v111 = &v104 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v118 = (&v104 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v114 = &v104 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v104 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v104 - v27;
  v29 = tcc_authorization_record_get_service();
  if (!v29)
  {
    CCLog.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_22506F000, v52, v53, "TCC event has no service", v54, 2u);
      MEMORY[0x22AA65DF0](v54, -1, -1);
    }

    v55 = *(v11 + 8);
    v56 = v28;
    return v55(v56, v10);
  }

  v30 = v29;
  v105 = a4;
  v106 = a5;
  tcc_service_get_name();
  v31 = String.init(utf8String:)();
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    v107 = v10;
    v108 = v30;
    v35 = v11;
    v36 = [objc_opt_self() kTCCServiceLiverpool];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (v33 == v37 && v34 == v39)
    {

      v11 = v35;
      v10 = v107;
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v35;
      v10 = v107;
      if ((v41 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v57 = tcc_authorization_record_get_subject_identity();
    if (v57)
    {
      v58 = v57;
      if (tcc_identity_get_type())
      {
        CCLog.getter();
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_22506F000, v59, v60, "TCC event is not for a bundle ID", v61, 2u);
          MEMORY[0x22AA65DF0](v61, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v55 = *(v11 + 8);
        v56 = v17;
        return v55(v56, v10);
      }

      tcc_identity_get_identifier();
      v65 = String.init(utf8String:)();
      if (!v66)
      {
        v14 = v114;
        CCLog.getter();
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_22506F000, v90, v91, "Failed to retrieve bundle ID for TCC event", v92, 2u);
          MEMORY[0x22AA65DF0](v92, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        goto LABEL_24;
      }

      v67 = v65;
      v68 = v66;
      if (v65 == MEMORY[0x22AA62510]() && v68 == v69)
      {

        v73 = v118;
      }

      else
      {
        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v72 = v106;
        v73 = v118;
        if ((v71 & 1) == 0)
        {
          v118 = v67;
          v26 = v111;
          CCLog.getter();
          v74 = v109;
          (*(v109 + 16))(v112, v117, v113);

          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();

          LODWORD(v116) = v76;
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v117 = v58;
            v79 = v78;
            v119 = v78;
            *v77 = 136315650;
            v80 = sub_225095AFC(v118, v68, &v119);
            v118 = v75;
            v81 = v80;

            *(v77 + 4) = v81;
            *(v77 + 12) = 2080;
            sub_2250D71BC();
            v83 = v112;
            v82 = v113;
            v84 = dispatch thunk of CustomStringConvertible.description.getter();
            v85 = v72;
            v87 = v86;
            (*(v74 + 8))(v83, v82);
            v88 = sub_225095AFC(v84, v87, &v119);

            *(v77 + 14) = v88;
            *(v77 + 22) = 2080;
            *(v77 + 24) = sub_225095AFC(v105, v85, &v119);
            v89 = v118;
            _os_log_impl(&dword_22506F000, v118, v116, "Ignoring TCC event for a different bundle identifier: %s, expected: %s, token: %s", v77, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA65DF0](v79, -1, -1);
            MEMORY[0x22AA65DF0](v77, -1, -1);
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            return (*(v11 + 8))(v111, v107);
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v74 + 8))(v112, v113);
          goto LABEL_38;
        }
      }

      CCLog.getter();

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v119 = v96;
        *v95 = 136315650;
        v97 = sub_2250D6818(v110);
        v99 = sub_225095AFC(v97, v98, &v119);
        v117 = v58;
        v100 = v10;
        v101 = v99;

        *(v95 + 4) = v101;
        *(v95 + 12) = 2080;
        v102 = sub_225095AFC(v67, v68, &v119);

        *(v95 + 14) = v102;
        *(v95 + 22) = 2080;
        *(v95 + 24) = sub_225095AFC(v105, v106, &v119);
        _os_log_impl(&dword_22506F000, v93, v94, "TCC %s event received for %s, token: %s", v95, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v96, -1, -1);
        MEMORY[0x22AA65DF0](v95, -1, -1);

        v103 = (*(v11 + 8))(v118, v100);
      }

      else
      {

        v103 = (*(v11 + 8))(v73, v10);
      }

      v116(v103);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    CCLog.getter();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_22506F000, v62, v63, "TCC event has no identity", v64, 2u);
      MEMORY[0x22AA65DF0](v64, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

LABEL_38:
    v55 = *(v11 + 8);
    v56 = v26;
    return v55(v56, v10);
  }

LABEL_8:
  CCLog.getter();
  swift_unknownObjectRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v42, v43))
  {

LABEL_24:
    swift_unknownObjectRelease();
    v55 = *(v11 + 8);
    v56 = v14;
    return v55(v56, v10);
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v119 = v45;
  *v44 = 136315138;
  tcc_service_get_name();
  v46 = String.init(utf8String:)();
  if (!v47)
  {
    v46 = 7104878;
  }

  v48 = v10;
  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0xE300000000000000;
  }

  v50 = sub_225095AFC(v46, v49, &v119);

  *(v44 + 4) = v50;
  _os_log_impl(&dword_22506F000, v42, v43, "TCC event is for a different service: %s)", v44, 0xCu);
  sub_225073BF0(v45);
  MEMORY[0x22AA65DF0](v45, -1, -1);
  MEMORY[0x22AA65DF0](v44, -1, -1);
  swift_unknownObjectRelease();

  return (*(v11 + 8))(v14, v48);
}

uint64_t sub_2250D6818(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0x455441455243;
    case 2:
      return 0x594649444F4DLL;
    case 3:
      return 0x4554454C4544;
  }

  _StringGuts.grow(_:)(18);
  MEMORY[0x22AA62E50](0x676F6365726E7528, 0xEF203A64657A696ELL);
  type metadata accessor for tcc_event_type_t(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x22AA62E50](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2250D691C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_2250D698C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  sub_225072D1C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_225072C00();
  v10 = v9 - v8;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = sub_2250D54EC(a1, a2);
  v13 = [v12 UTF8String];
  v14 = v12;
  if (!v13)
  {
LABEL_10:
    __break(1u);
    return;
  }

  tcc_events_unsubscribe();
  CCLog.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_225095AFC(a1, a2, &v19);
    _os_log_impl(&dword_22506F000, v15, v16, "Unsubscribed to TCC events with token %s", v17, 0xCu);
    sub_225073BF0(v18);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  else
  {
  }

  (*(v6 + 8))(v10, v4);
}

uint64_t sub_2250D6B78(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedBundleID();
  sub_225072D1C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  v8 = v7 - v6;
  v9 = type metadata accessor for Logger();
  sub_225072D1C();
  v29 = v10;
  MEMORY[0x28223BE20](v11);
  sub_225072C00();
  v14 = v13 - v12;
  v15 = MEMORY[0x22AA62510]();
  v16 = MEMORY[0x22AA62D80](v15);

  v17 = TCCAccessCopyInformationForBundleId();

  v30 = v9;
  if (v17)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v31[0] = 0;
      v18 = v17;
      sub_2250B0DFC(&qword_27D719058, &unk_225445058);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  CCLog.getter();
  (*(v4 + 16))(v8, a1, v2);

  v19 = v2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = sub_225095AFC(0x4649434550534E55, 0xEB00000000444549, v31);

    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;
    sub_2250D71BC();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v4 + 8))(v8, v19);
    v27 = sub_225095AFC(v24, v26, v31);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_22506F000, v20, v21, "TCC access %s for bundleID: %s", v22, 0x16u);
    swift_arrayDestroy();
    sub_22507C9FC();
    sub_22507C9FC();
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  (*(v29 + 8))(v14, v30);
  return 2;
}

unint64_t sub_2250D71BC()
{
  result = qword_280D53638;
  if (!qword_280D53638)
  {
    type metadata accessor for ResolvedBundleID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53638);
  }

  return result;
}

uint64_t sub_2250D7214(uint64_t a1)
{
  v2 = sub_2250B0DFC(&qword_27D718AE0, &unk_225443AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2250D727C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_2250D73A4(a1, v4);
}

unint64_t sub_2250D72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return sub_2250D7468(a1, a2, a3, a4, v8);
}

unint64_t sub_2250D7360(uint64_t a1)
{
  v3 = MEMORY[0x22AA635D0](*(v1 + 40), a1);

  return sub_2250D7564(a1, v3);
}

unint64_t sub_2250D73A4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_22508DECC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x22AA63210](v8, a1);
    sub_2250B28FC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2250D7468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_2250D7564(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_2250D75C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ResolvedBundleID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);

  return sub_2250D5D64(a1, a2, (v2 + v6), v10, v11, v12, v13);
}

uint64_t sub_2250D7684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2250D76B0()
{
  type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  sub_22507CD68();
  sub_2250DBE6C(v0, v1, MEMORY[0x277CFA9E8]);
  sub_22507CC80();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_2250D7720()
{
  Hasher.init(_seed:)();
  type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  sub_22507CD68();
  sub_2250DBE6C(v0, v1, MEMORY[0x277CFA9E8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_2250D77A0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  sub_2250DBE6C(&unk_27D7190A0, MEMORY[0x277CFA9E0], MEMORY[0x277CFA9E8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_2250D7828(uint64_t a1)
{
  v2 = sub_2250DBE6C(&qword_280D53710, type metadata accessor for DataSecurityAcquiredPayload, &unk_225445350);

  return MEMORY[0x28214D000](a1, v2);
}

uint64_t sub_2250D7894()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = sub_22507CD44(v1);
  MEMORY[0x28223BE20](v2);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225444480;
  v4 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v7[3] = v4;
  v5 = sub_225073808(v7);
  (*(*(v4 - 8) + 16))(v5, v0, v4);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v3;
}

uint64_t sub_2250D7A18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a2;
  v7 = type metadata accessor for SessionReadinessError();
  v112 = *(v7 - 8);
  v113 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v103 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v105 = &v97 - v10;
  v11 = sub_2250B0DFC(&qword_27D718F80, &qword_2254453B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v97 - v12;
  v108 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v106 = *(v108 - 8);
  v14 = MEMORY[0x28223BE20](v108);
  v99 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v100 = &v97 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v104 = (&v97 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v107 = &v97 - v21;
  MEMORY[0x28223BE20](v20);
  v109 = &v97 - v22;
  v23 = type metadata accessor for Logger();
  v110 = *(v23 - 8);
  v111 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v102 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v101 = &v97 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v97 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v97 - v31;
  v33 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v97 - v34;
  AnySessionConfiguration.account.getter();
  v36 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v37 = sub_22507C8E8(v35, 1, v36);
  sub_2250D4224(v35, &unk_27D718ED0, &qword_225444FF0);
  if (v37 == 1 || (v98 = a4, v38 = AnySessionAcquiredInfo.serviceName.getter(), !v39))
  {
LABEL_15:
    sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
    return swift_storeEnumTagMultiPayload();
  }

  v40 = v38;
  v41 = v39;
  v42 = sub_2250D4824(a1, v114);
  if (!v42)
  {

    CCLog.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_22506F000, v59, v60, "Account has logged out since session acquisition.", v61, 2u);
      MEMORY[0x22AA65DF0](v61, -1, -1);
    }

    (*(v110 + 8))(v32, v111);
    (*(v112 + 104))(v98, *MEMORY[0x277CFAA30], v113);
    goto LABEL_15;
  }

  v43 = v42;
  v44 = [v42 accountID];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  LOBYTE(v44) = sub_2250D8854(a3, v45, v47);

  if ((v44 & 1) == 0)
  {

    CCLog.getter();
    v62 = v43;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v116[0] = v66;
      *v65 = 136315138;
      v67 = [v62 accountID];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = sub_225095AFC(v68, v70, v116);

      *(v65 + 4) = v71;
      _os_log_impl(&dword_22506F000, v63, v64, "Account acquired does not match the current account. Current accountID %s", v65, 0xCu);
      sub_225073BF0(v66);
      MEMORY[0x22AA65DF0](v66, -1, -1);
      MEMORY[0x22AA65DF0](v65, -1, -1);
    }

    else
    {
    }

    (*(v110 + 8))(v30, v111);
    (*(v112 + 104))(v98, *MEMORY[0x277CFAA30], v113);
    goto LABEL_15;
  }

  v48 = v40;
  AnySessionAcquiredInfo.user.getter();
  v49 = type metadata accessor for AuthenticatedSession.ResolvedUser();
  result = sub_22507C8E8(v13, 1, v49);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v51 = v109;
    AuthenticatedSession.ResolvedUser.dataProtection.getter();
    (*(*(v49 - 8) + 8))(v13, v49);
    v52 = MEMORY[0x22AA62D80](v48, v41);
    IsManatee = PCSServiceItemTypeIsManatee();

    v54 = v106;
    v55 = v107;
    v56 = v108;
    (*(v106 + 104))(v107, *MEMORY[0x277CFA9D8], v108);
    v116[3] = sub_2250DC584();
    v116[4] = &off_28385A390;
    v116[0] = v43;
    v57 = v43;
    v58 = v104;
    sub_2250DD984(v116, v114, v48, v41, IsManatee, v105, v104);

    sub_225073BF0(v116);
    (*(v54 + 40))(v55, v58, v56);
    sub_2250DBE6C(&unk_280D53618, MEMORY[0x277CFA9E0], MEMORY[0x277CFA9F0]);
    v72 = dispatch thunk of static Equatable.== infix(_:_:)();
    if (v72)
    {
      v73 = *(v54 + 8);
      v73(v51, v56);

      sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
      swift_storeEnumTagMultiPayload();
      return (v73)(v55, v56);
    }

    else
    {
      v74 = v101;
      CCLog.getter();
      v75 = *(v54 + 16);
      v76 = v100;
      v75(v100, v51, v56);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        LODWORD(v104) = v78;
        v80 = v79;
        v81 = swift_slowAlloc();
        v114 = v57;
        v115[0] = v81;
        v82 = v54;
        v105 = v81;
        *v80 = 136315394;
        v83 = v107;
        swift_beginAccess();
        v84 = v99;
        v75(v99, v83, v56);
        v85 = String.init<A>(describing:)();
        v87 = sub_225095AFC(v85, v86, v115);

        *(v80 + 4) = v87;
        *(v80 + 12) = 2080;
        v75(v84, v76, v108);
        v88 = String.init<A>(describing:)();
        v90 = v89;
        v91 = *(v82 + 8);
        v91(v76, v108);
        v92 = sub_225095AFC(v88, v90, v115);

        *(v80 + 14) = v92;
        v56 = v108;
        _os_log_impl(&dword_22506F000, v77, v104, "Current data protection status is different from the acquired data protection status. Current data protection %s. Acquired data protection %s", v80, 0x16u);
        v93 = v105;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v93, -1, -1);
        v94 = v80;
        v95 = v107;
        MEMORY[0x22AA65DF0](v94, -1, -1);

        (*(v110 + 8))(v101, v111);
        v91(v109, v56);
        v96 = v98;
      }

      else
      {

        v91 = *(v54 + 8);
        v91(v76, v56);
        (*(v110 + 8))(v74, v111);
        v91(v109, v56);
        v96 = v98;
        v95 = v107;
      }

      (*(v112 + 104))(v96, *MEMORY[0x277CFAA70], v113);
      sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
      swift_storeEnumTagMultiPayload();
      return (v91)(v95, v56);
    }
  }

  return result;
}

uint64_t sub_2250D8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2250C8B38(a2, a3);
  v3 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
  v5 = v4;
  v6 = MEMORY[0x22AA62370]();
  sub_22508D128(v3, v5);
  v7 = sub_22507CC80();
  sub_22508D128(v7, v8);
  return v6 & 1;
}

uint64_t sub_2250D88CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31[1] = a1;
  v3 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v4 = sub_22507CD44(v3);
  MEMORY[0x28223BE20](v4);
  v33 = v31 - v5;
  v31[0] = type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_225072C00();
  v32 = v10 - v9;
  v11 = sub_2250B0DFC(&qword_27D7190D8, &unk_2254453F0);
  sub_225072D1C();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v17 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  sub_225072D1C();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v26 = v31 - v25;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
    (*(v13 + 104))(v16, *MEMORY[0x277D85778], v11);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v13 + 8))(v16, v11);
    v27 = v32;
    (*(v7 + 16))(v32, v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_sessionConfiguration, v31[0]);
    v28 = v33;
    sub_2250DC5C8(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_previousInvalidationContext, v33, &unk_27D718E60, &unk_225444780);
    v29 = *(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_testDeviceReferenceProtocol);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account, v35);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_systemInteraction, v34);
    (*(v19 + 16))(v23, v26, v17);
    _s17DataSecurityCheckC5ActorCMa(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    v30 = sub_2250D8F34(v27, v28, v29, v35, v34, v23);
    (*(v19 + 8))(v26, v17);
    *(v2 + 16) = v30;
  }

  return result;
}

uint64_t sub_2250D8C60()
{

  v1 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_sessionConfiguration;
  type metadata accessor for AnySessionConfiguration();
  sub_225072BF0();
  (*(v2 + 8))(v0 + v1);
  sub_2250D4224(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_previousInvalidationContext, &unk_27D718E60, &unk_225444780);
  swift_unknownObjectRelease();
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account));
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_systemInteraction));
  v3 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_dataProtectionStatus;
  type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  sub_225072BF0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_2250D8D48()
{
  sub_2250D8C60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2250D8DC8(uint64_t a1)
{
  type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    sub_2250B649C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

Swift::Int sub_2250D8EF0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](v2);
  return Hasher._finalize()();
}

uint64_t sub_2250D8F34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v49 = a5;
  v50 = a6;
  v51 = a4;
  v47 = a2;
  v10 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v41 - v11;
  v12 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_2250B0DFC(&qword_27D7190B0, &qword_2254453B8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41 - v19;
  swift_defaultActor_initialize();
  *(v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_areDataSecurityStatusesValid) = 0;
  *(v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken) = 0;
  v21 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_readinessSink;
  v22 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  sub_22507C8C0(v7 + v21, 1, 1, v22);
  *(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v7) = 0;
  v23 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_sessionConfiguration;
  v24 = type metadata accessor for AnySessionConfiguration();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v44 = v24;
  v26(v7 + v23, a1);
  *(v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_testDeviceReferenceProtocol) = a3;
  sub_2250D4724(v51, v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account);
  sub_2250D4724(v49, v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction);
  v27 = *(v22 - 8);
  (*(v27 + 16))(v20, v50, v22);
  sub_22507C8C0(v20, 0, 1, v22);
  swift_beginAccess();
  v46 = a3;
  swift_unknownObjectRetain();
  sub_2250DC628(v20, v7 + v21);
  swift_endAccess();
  v48 = a1;
  AnySessionConfiguration.encryption.getter();
  v28 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v17, 1, v28) == 1)
  {
    sub_2250D4224(v17, &unk_27D7190E0, &unk_2254447D0);
  }

  else
  {
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
    (*(*(v28 - 8) + 8))(v17, v28);
    v29 = AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
    v31 = v30;
    (*(v42 + 8))(v14, v43);
    if (v31)
    {
      v32 = (v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_primaryServiceName);
      *v32 = v29;
      v32[1] = v31;
      v33 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_dataProtection;
      v34 = *MEMORY[0x277CFA9D8];
      v35 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
      (*(*(v35 - 8) + 104))(v7 + v33, v34, v35);

      v36 = MEMORY[0x22AA62D80](v29, v31);

      IsManatee = PCSServiceItemTypeIsManatee();

      *(v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_isServiceManatee) = IsManatee;
      v38 = type metadata accessor for TaskPriority();
      sub_22507C8C0(v45, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v7;

      sub_2250E1D44();
      swift_unknownObjectRelease();

      (*(v27 + 8))(v50, v22);
      sub_225073BF0(v49);
      sub_225073BF0(v51);
      sub_2250D4224(v47, &unk_27D718E60, &unk_225444780);
      (*(v25 + 8))(v48, v44);
      return v7;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250D94F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2250DC7FC;

  return sub_2250D99AC();
}

uint64_t sub_2250D9580()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2250DAC88();
  v6 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_readinessSink;
  swift_beginAccess();
  if (!sub_22507C8E8(v0 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v0 + v6, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v5, v2);
  }

  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_sessionConfiguration;
  v8 = type metadata accessor for AnySessionConfiguration();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  swift_unknownObjectRelease();
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account));

  v9 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_dataProtection;
  v10 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  sub_2250D4224(v1 + v6, &qword_27D7190B0, &qword_2254453B8);
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2250D97DC()
{
  v0 = sub_2250D9580();

  return MEMORY[0x282200960](v0);
}

void sub_2250D9860(uint64_t a1)
{
  type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
    if (v2 <= 0x3F)
    {
      sub_2250DBB90(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2250D99CC()
{
  if (*(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + *(v0 + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_225072C10();
    sub_2250D9B58();
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_2250D9A74;

    sub_2250D9F00();
  }
}

uint64_t sub_2250D9A74()
{
  sub_225072C10();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  sub_225075274();

  return v3();
}

void sub_2250D9B58()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken;
  if (!*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    sub_2250D4724(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction, v6);
    sub_225073BAC(v6, v6[3]);
    if (v4)
    {
      v5 = swift_allocObject();
      swift_weakInit();

      sub_2250DC87C(v4, sub_2250DC698, v5);

      sub_225073BF0(v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2250D9C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    sub_22507C8C0(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;
    v11[6] = a2;

    sub_2250E1D44();
  }

  return result;
}

uint64_t sub_2250D9D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_2250D9E1C;

  return sub_2250DB4B8(a5, a6);
}

uint64_t sub_2250D9E1C()
{
  sub_225072C10();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  sub_225075274();

  return v3();
}

uint64_t sub_2250D9F00()
{
  v1[9] = v0;
  v1[10] = sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
  v1[11] = swift_task_alloc();
  v2 = sub_2250B0DFC(&qword_27D7190C0, &qword_2254453C8);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  sub_2250B0DFC(&qword_27D7190C8, &unk_2254453D0);
  v1[18] = swift_task_alloc();
  v4 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for SessionReadinessError();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_2250B0DFC(&qword_27D7190B0, &qword_2254453B8);
  v1[26] = swift_task_alloc();
  v6 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  v1[27] = v6;
  v1[28] = *(v6 - 8);
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250DA200, v0, 0);
}

uint64_t sub_2250DA200()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 72);
  v4 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_readinessSink;
  swift_beginAccess();
  sub_2250DC5C8(v3 + v4, v1, &qword_27D7190B0, &qword_2254453B8);
  if (sub_22507C8E8(v1, 1, v2) == 1)
  {
    sub_2250D4224(*(v0 + 208), &qword_27D7190B0, &qword_2254453B8);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = *(v0 + 72);
    (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    *(v0 + 288) = *MEMORY[0x277CFAA70];
    v9 = *(v7 + 104);
    *(v0 + 240) = v9;
    *(v0 + 248) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v9(v6);
    v10 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_areDataSecurityStatusesValid;
    *(v0 + 256) = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_areDataSecurityStatusesValid;
    *(v8 + v10) = 0;
    sub_225073BAC((v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction), *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction + 24));
    v11 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account;
    *(v0 + 264) = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account;
    v12 = *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_testDeviceReferenceProtocol);
    v13 = *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_primaryServiceName);
    v14 = *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_primaryServiceName + 8);
    v15 = *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_isServiceManatee);
    v16 = swift_task_alloc();
    *(v0 + 272) = v16;
    *v16 = v0;
    v16[1] = sub_2250DA444;
    v17 = *(v0 + 168);

    return sub_2250DC994(v17, v8 + v11, v12, v13, v14, v15);
  }
}

uint64_t sub_2250DA444()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_2250DA8B0;
  }

  else
  {
    v4 = sub_2250DA570;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2250DA570()
{
  v2 = *(v0 + 256);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 72);
  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_dataProtection;
  swift_beginAccess();
  (*(v4 + 40))(v6 + v7, v3, v5);
  swift_endAccess();
  *(v6 + v2) = 1;
  v8 = *(v0 + 72);
  v9 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state;
  v10 = *(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v8);
  if (v10 != 2)
  {
    if (*(v8 + *(v0 + 256)) == 1)
    {
      v3 = *(v0 + 72);
      sub_2250DAD30();
    }

    else if (v10 != 1)
    {
      v3 = *(v0 + 136);
      CCLog.getter();

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = sub_2250752B0();
        swift_slowAlloc();
        *v13 = 136315394;
        v15 = v3[3];
        v14 = v3[4];
        sub_225073BAC(v3, v15);
        sub_22507E9A4();
        v17 = v16(v15, v14);
        v25 = sub_2250971B4(v17, v18, v19, v20, v21, v22, v23, v24, v47, v49);

        *(v13 + 4) = v25;
        *(v13 + 12) = 2080;
        *(v0 + 292) = v9[v8];
        v26 = String.init<A>(describing:)();
        v34 = sub_2250971B4(v26, v27, v28, v29, v30, v31, v32, v33, v48, v50);

        *(v13 + 14) = v34;
        _os_log_impl(&dword_22506F000, v11, v12, "Manatee is unavailable for account %s while in state %s. Waiting for account update...", v13, 0x16u);
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507C94C();

        (*(v51 + 8))();
      }

      else
      {
        v35 = *(v0 + 128);
        v3 = *(v0 + 136);
        v36 = *(v0 + 120);

        (*(v35 + 8))(v3, v36);
      }

      sub_22507CBDC();
      v38 = *(v0 + 104);
      v37 = *(v0 + 112);
      v40 = *(v0 + 88);
      v39 = *(v0 + 96);
      v9[v8] = 1;
      (*(v41 + 16))(v40);
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      v42 = *(v38 + 8);
      v1 = v38 + 8;
      v42(v37, v39);
    }
  }

  v43 = sub_22507F314();
  v44(v43);
  (*(v1 + 8))(v3, v8);

  sub_225075274();

  return v45();
}

uint64_t sub_2250DA8B0()
{
  v1 = *(v0 + 280);
  (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
  *(v0 + 64) = v1;
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  sub_22507CC80();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    sub_22507C8C0(v5, 0, 1, v4);
    v6 = *(v3 + 32);
    v6(v2, v5, v4);
  }

  else
  {
    v7 = *(v0 + 240);
    v2 = *(v0 + 288);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 176);
    sub_22507C8C0(*(v0 + 144), 1, 1, v10);
    v7(v8, v2, v10);
    v6 = *(v9 + 32);
  }

  v6(*(v0 + 200), *(v0 + 192), *(v0 + 176));
  v11 = *(v0 + 72);
  v12 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state;
  v13 = *(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v11);
  if (v13 != 2)
  {
    if (*(v11 + *(v0 + 256)) == 1)
    {
      v2 = *(v0 + 72);
      sub_2250DAD30();
    }

    else if (v13 != 1)
    {
      v14 = *(v0 + 136);
      CCLog.getter();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = sub_2250752B0();
        v55 = swift_slowAlloc();
        *v17 = 136315394;
        v18 = v14[3];
        v19 = v14[4];
        sub_225073BAC(v14, v18);
        sub_22507E9A4();
        v21 = v20(v18, v19);
        v29 = sub_2250971B4(v21, v22, v23, v24, v25, v26, v27, v28, v55, v52);

        *(v17 + 4) = v29;
        *(v17 + 12) = 2080;
        *(v0 + 292) = *(v12 + v11);
        v30 = String.init<A>(describing:)();
        v38 = sub_2250971B4(v30, v31, v32, v33, v34, v35, v36, v37, v50, v53);

        *(v17 + 14) = v38;
        _os_log_impl(&dword_22506F000, v15, v16, "Manatee is unavailable for account %s while in state %s. Waiting for account update...", v17, 0x16u);
        v2 = v51;
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507C9FC();

        (*(v54 + 8))();
      }

      else
      {
        v39 = *(v0 + 128);
        v2 = *(v0 + 136);
        v40 = *(v0 + 120);

        (*(v39 + 8))(v2, v40);
      }

      sub_22507CBDC();
      v42 = *(v0 + 104);
      v41 = *(v0 + 112);
      v44 = *(v0 + 88);
      v43 = *(v0 + 96);
      *(v12 + v11) = 1;
      (*(v45 + 16))(v44);
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v42 + 8))(v41, v43);
    }
  }

  v46 = sub_22507F314();
  v47(v46);
  v12[1](v2, v11);

  sub_225075274();

  return v48();
}

void sub_2250DAC88()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken;
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedNotifier];
    [v5 unregisterObserverForAccountChangeNotification_];

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_2250DAD30()
{
  v1 = v0;
  v58 = sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
  MEMORY[0x28223BE20](v58);
  v57 = &v53 - v2;
  v3 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v60 = &v53 - v5;
  v6 = sub_2250B0DFC(&qword_27D7190B0, &qword_2254453B8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v66 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - v12;
  v13 = sub_2250B0DFC(&qword_27D7190B8, &qword_2254453C0);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v53 - v14;
  v15 = type metadata accessor for Logger();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DataSecurityAcquiredPayload(0);
  v18 = MEMORY[0x28223BE20](v59);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  *(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v0) = 2;
  sub_2250DAC88();
  v23 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_dataProtection;
  swift_beginAccess();
  v24 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  (*(*(v24 - 8) + 16))(v22, v1 + v23, v24);
  CCLog.getter();
  v65 = v22;
  sub_2250C7ECC(v22, v20);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v56 = v3;
    v28 = v27;
    v54 = swift_slowAlloc();
    v67[0] = v54;
    *v28 = 136315394;
    v29 = v4;
    v55 = v9;
    v31 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account + 24);
    v30 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account + 32);
    sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account), v31);
    v32 = v31;
    v4 = v29;
    v33 = (*(v30 + 8))(v32, v30);
    v35 = sub_225095AFC(v33, v34, v67);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2080;
    sub_2250DBE6C(&qword_280D53708, type metadata accessor for DataSecurityAcquiredPayload, &unk_225445380);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    sub_2250C7F30(v20);
    v39 = sub_225095AFC(v36, v38, v67);
    v9 = v55;

    *(v28 + 14) = v39;
    _os_log_impl(&dword_22506F000, v25, v26, "Data security acquired for account %s with payload: %s", v28, 0x16u);
    v40 = v54;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v40, -1, -1);
    v41 = v28;
    v3 = v56;
    MEMORY[0x22AA65DF0](v41, -1, -1);
  }

  else
  {

    sub_2250C7F30(v20);
  }

  (*(v61 + 8))(v17, v62);
  v42 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_readinessSink;
  swift_beginAccess();
  v43 = v63;
  sub_2250DC5C8(v1 + v42, v63, &qword_27D7190B0, &qword_2254453B8);
  v44 = sub_22507C8E8(v43, 1, v3);
  v46 = v65;
  v45 = v66;
  v47 = v64;
  if (v44)
  {
    sub_2250D4224(v43, &qword_27D7190B0, &qword_2254453B8);
    v48 = 1;
  }

  else
  {
    v49 = v60;
    (*(v4 + 16))(v60, v43, v3);
    sub_2250D4224(v43, &qword_27D7190B0, &qword_2254453B8);
    sub_2250C7ECC(v46, v57);
    swift_storeEnumTagMultiPayload();
    AsyncStream.Continuation.yield(_:)();
    (*(v4 + 8))(v49, v3);
    v48 = 0;
  }

  v50 = sub_2250B0DFC(&qword_27D7190C0, &qword_2254453C8);
  sub_22507C8C0(v47, v48, 1, v50);
  sub_2250D4224(v47, &qword_27D7190B8, &qword_2254453C0);
  sub_2250DC5C8(v1 + v42, v45, &qword_27D7190B0, &qword_2254453B8);
  if (sub_22507C8E8(v45, 1, v3))
  {
    sub_2250C7F30(v46);
    sub_2250D4224(v45, &qword_27D7190B0, &qword_2254453B8);
  }

  else
  {
    v51 = v60;
    (*(v4 + 16))(v60, v45, v3);
    sub_2250D4224(v45, &qword_27D7190B0, &qword_2254453B8);
    AsyncStream.Continuation.finish()();
    (*(v4 + 8))(v51, v3);
    sub_2250C7F30(v46);
  }

  sub_22507C8C0(v9, 1, 1, v3);
  swift_beginAccess();
  sub_2250DC628(v9, v1 + v42);
  return swift_endAccess();
}

uint64_t sub_2250DB4B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250DB594, v2, 0);
}

uint64_t sub_2250DB594(uint64_t a1)
{
  v55 = v1;
  v2 = *(v1 + 32);
  if (!*(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken))
  {
    CCLog.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v1 + 16);
      v21 = *(v1 + 24);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v54 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_225095AFC(v22, v21, &v54);
      _os_log_impl(&dword_22506F000, v19, v20, "Received account change notification for account %s when we do not have an active subscription. Ignoring the account change", v23, 0xCu);
      sub_225073BF0(v24);
      sub_22507C9FC();
      sub_22507C94C();
    }

    v25 = sub_22507CC80();
    v26(v25);
    goto LABEL_16;
  }

  if (*(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v2) == 2)
  {
    CCLog.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 72);
    v8 = *(v1 + 40);
    v7 = *(v1 + 48);
    if (v5)
    {
      sub_22508CFE8();
      v54 = sub_2250956E0();
      v12 = sub_225082638(4.8151e-34, v54, v9, v10, v11);
      sub_22507E6F4(v12);
      *(v1 + 89) = v13;
      v14 = String.init<A>(describing:)();
      v16 = sub_225095AFC(v14, v15, &v54);

      *(v8 + 14) = v16;
      sub_2250986F8(&dword_22506F000, v17, v18, "Ignoring account change notification for account %s while in state %s.");
      swift_arrayDestroy();
      sub_22507C94C();
      sub_22507C9FC();

      (*(v7 + 8))();
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

LABEL_16:

    sub_225075274();

    return v35();
  }

  if (!*(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_testDeviceReferenceProtocol))
  {
    v28 = *(v1 + 16);
    v27 = *(v1 + 24);
    v29 = *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account + 24);
    v30 = *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account + 32);
    sub_225073BAC((v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account), v29);
    sub_22507E9A4();
    if (v31(v29, v30) == v28 && v32 == v27)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  CCLog.getter();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v1 + 64);
  v42 = *(v1 + 40);
  v41 = *(v1 + 48);
  if (v39)
  {
    sub_22508CFE8();
    v54 = sub_2250956E0();
    v46 = sub_225082638(4.8151e-34, v54, v43, v44, v45);
    sub_22507E6F4(v46);
    *(v1 + 88) = v47;
    v48 = String.init<A>(describing:)();
    v50 = sub_225095AFC(v48, v49, &v54);

    *(v42 + 14) = v50;
    sub_2250986F8(&dword_22506F000, v51, v52, "Received account change notification for account %s while in state %s. Checking data security requirements");
    swift_arrayDestroy();
    sub_22507C94C();
    sub_22507C9FC();

    (*(v41 + 8))();
  }

  else
  {

    (*(v41 + 8))(v40, v42);
  }

  v53 = swift_task_alloc();
  *(v1 + 80) = v53;
  *v53 = v1;
  v53[1] = sub_2250DBA48;

  return sub_2250D9F00();
}

uint64_t sub_2250DBA48()
{
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_2250DBB90(uint64_t a1)
{
  if (!qword_280D534C8)
  {
    sub_2250C7B40(&unk_27D719060, &qword_225445178);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_280D534C8);
    }
  }
}

_BYTE *_s17DataSecurityCheckC5ActorC5StateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2250DBD18(uint64_t a1)
{
  result = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2250DBDD0()
{
  result = qword_27D719078;
  if (!qword_27D719078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719078);
  }

  return result;
}

uint64_t sub_2250DBE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2250DBF18()
{
  v1 = v0;
  v52 = type metadata accessor for PropertyDescription();
  v2 = *(v52 - 8);
  v3 = MEMORY[0x28223BE20](v52);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v47 = &v43 - v5;
  v6 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v7 = sub_22507CD44(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v49 = type metadata accessor for SessionInvalidationContext();
  sub_225072D1C();
  v46 = v10;
  MEMORY[0x28223BE20](v11);
  sub_225072C00();
  v45 = v13 - v12;
  v14 = type metadata accessor for OSLogPrivacy();
  v15 = sub_22507CD44(v14);
  MEMORY[0x28223BE20](v15);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v16 = *(v2 + 72);
  v51 = v2;
  v17 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225444470;
  v19 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_sessionConfiguration;
  v20 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v20;
  v21 = sub_225073808(v53);
  (*(*(v20 - 8) + 16))(v21, v1 + v19, v20);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v22 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account + 24);
  v23 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account + 32);
  sub_225073BAC((v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account), v22);
  sub_22507E9A4();
  v24 = v22;
  v25 = v16;
  v26 = v49;
  v28 = v27(v24, v23);
  ObjectType = MEMORY[0x277D837D0];
  v53[0] = v28;
  v53[1] = v29;
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v50 = v1;
  sub_2250DC5C8(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_previousInvalidationContext, v9, &unk_27D718E60, &unk_225444780);
  if (sub_22507C8E8(v9, 1, v26) == 1)
  {
    sub_2250D4224(v9, &unk_27D718E60, &unk_225444780);
    v31 = v51;
    v30 = v52;
  }

  else
  {
    v44 = 2 * v25;
    v33 = v45;
    v32 = v46;
    (*(v46 + 32))(v45, v9, v26);
    ObjectType = v26;
    v34 = sub_225073808(v53);
    (*(v32 + 16))(v34, v33, v26);
    static OSLogPrivacy.auto.getter();
    v35 = v47;
    PropertyDescription.init(_:_:privacy:)();
    v18 = sub_2250C7388();
    (*(v32 + 8))(v33, v26);
    *(v18 + 16) = 3;
    v31 = v51;
    v36 = v35;
    v30 = v52;
    (*(v51 + 32))(v18 + v17 + v44, v36, v52);
  }

  v37 = v17;
  v38 = *(v50 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_testDeviceReferenceProtocol);
  if (v38)
  {
    v39 = v25;
    ObjectType = swift_getObjectType();
    v53[0] = v38;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v40 = v48;
    PropertyDescription.init(_:_:privacy:)();
    v41 = *(v18 + 16);
    if (v41 >= *(v18 + 24) >> 1)
    {
      v18 = sub_2250C7388();
    }

    swift_unknownObjectRelease();
    *(v18 + 16) = v41 + 1;
    (*(v31 + 32))(v18 + v37 + v41 * v39, v40, v30);
  }

  return v18;
}

unint64_t sub_2250DC480()
{
  result = qword_280D53470;
  if (!qword_280D53470)
  {
    sub_2250C7B40(&qword_27D718F40, &qword_2254448B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53470);
  }

  return result;
}

uint64_t sub_2250DC4E4(uint64_t a1)
{
  result = sub_2250DBE6C(&qword_280D544D0, _s17DataSecurityCheckCMa, &unk_225445318);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2250DC584()
{
  result = qword_280D53450;
  if (!qword_280D53450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D53450);
  }

  return result;
}

uint64_t sub_2250DC5C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2250B0DFC(a3, a4);
  sub_225072BF0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2250DC628(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D7190B0, &qword_2254453B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250DC6A0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_225072C3C(v5);

  return sub_2250D9D70(v6, v7, v8, v2, v3, v4);
}

uint64_t sub_2250DC758()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_225072C3C(v1);

  return sub_2250D94F0();
}

uint64_t sub_2250DC800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v4(v5, v7, a3);
}

void sub_2250DC87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedNotifier];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_2250DE054;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2250DC800;
  v9[3] = &unk_28385AD70;
  v8 = _Block_copy(v9);

  [v6 registerObserver:a1 forAccountChangeNotification:v8];
  _Block_release(v8);
}

uint64_t sub_2250DC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 337) = a6;
  *(v6 + 216) = a4;
  *(v6 + 224) = a5;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  *(v6 + 192) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 232) = v7;
  sub_22507D394(v7);
  *(v6 + 240) = v8;
  *(v6 + 248) = swift_task_alloc();
  v9 = type metadata accessor for SessionReadinessError();
  *(v6 + 256) = v9;
  sub_22507D394(v9);
  *(v6 + 264) = v10;
  *(v6 + 272) = swift_task_alloc();
  v11 = sub_2250B0DFC(&qword_27D7190F0, &qword_225445458);
  *(v6 + 280) = v11;
  sub_22507D394(v11);
  *(v6 + 288) = v12;
  *(v6 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250DCB0C, 0, 0);
}

uint64_t sub_2250DCB0C()
{
  sub_2250D4724(*(v0 + 200), v0 + 144);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 288);
    v2 = *(v0 + 296);
    v3 = *(v0 + 280);
    v12 = *(v0 + 337);
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    *(v0 + 304) = v5;
    v6 = [objc_opt_self() deviceContextForTestDeviceReference_];
    *(v0 + 312) = v6;
    v7 = [v6 accountDataSecurityObserver];
    *(v0 + 320) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_2250DCE28;
    swift_continuation_init();
    *(v0 + 136) = v3;
    v8 = sub_225073808((v0 + 112));
    sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
    CheckedContinuation.init(continuation:function:)();
    (*(v1 + 32))(v8, v2, v3);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2250DD39C;
    *(v0 + 104) = &unk_28385AD20;
    [v7 validateDataSecurityStatusesForAccount:v5 isServiceManatee:v12 clientSDKVersionLaterThanSkyStar:1 completionHandler:?];
    (*(v1 + 8))(v8, v3);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 200);
    _StringGuts.grow(_:)(27);

    sub_225073BAC(v9, v9[3]);
    swift_getDynamicType();
    v10 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v10);

    sub_22507CA6C();
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_2250DCE28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_2250DD090;
  }

  else
  {
    v2 = sub_2250DCF38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2250DCF38()
{
  v1 = *(v0 + 336);

  sub_22507C968();
  sub_2250DD43C(0, v1, v2, v3, v4, v5, v6);
  v7 = *(v0 + 304);

  sub_225075274();

  return v8();
}

uint64_t sub_2250DD090(uint64_t a1)
{
  v37 = v1;
  v3 = *(v1 + 320);
  v2 = *(v1 + 328);
  v4 = *(v1 + 304);
  swift_willThrow();

  CCLog.getter();
  v5 = v4;
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 328);
    v10 = *(v1 + 304);
    v33 = *(v1 + 240);
    v34 = *(v1 + 232);
    v35 = *(v1 + 248);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v11 = 136315394;
    v14 = [v10 accountID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_225095AFC(v15, v17, &v36);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    *v12 = v20;
    _os_log_impl(&dword_22506F000, v7, v8, "Manatee unavailable for account %s. Error: %@", v11, 0x16u);
    sub_2250DDF8C(v12);
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
    sub_225073BF0(v13);
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
    sub_225072C54();
    MEMORY[0x22AA65DF0]();

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v22 = *(v1 + 240);
    v21 = *(v1 + 248);
    v23 = *(v1 + 232);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v1 + 328);
  sub_22507C968();
  sub_2250DD43C(v24, 0, v25, v26, v27, v28, v29);
  v30 = *(v1 + 304);

  sub_225075274();

  return v31();
}

void sub_2250DD39C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_225073BAC((a1 + 32), *(a1 + 56));
  v6 = v5;
  if (a3)
  {
    v7 = a3;
    sub_2250ED7A8(v6, v7);
  }

  else
  {

    sub_2250ED8B0(v5, v4);
  }
}

uint64_t sub_2250DD43C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for Logger();
  sub_225072D1C();
  v53 = v10;
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  sub_225072C00();
  v52 = v12 - v11;
  v13 = type metadata accessor for SessionReadinessError();
  sub_225072D1C();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_225072C00();
  v19 = v18 - v17;
  v48 = *MEMORY[0x277CFAA70];
  v51 = *(v15 + 104);
  v51(v18 - v17);
  v20 = *MEMORY[0x277CFA9D8];
  v21 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v22 = *(v21 - 8);
  v23 = v20;
  v24 = *(v22 + 104);
  v24(a7, v23, v21);
  if (a1)
  {
    v57 = v21;
    v58 = a7;
    v25 = a1;
    v26 = a1;
    sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
    type metadata accessor for CKUnderlyingError(0);
    if (swift_dynamicCast())
    {
      sub_22507F344();
      sub_2250DDFF4(v27, v28, &unk_22544426C);
      _BridgedStoredNSError.code.getter();
      v29 = v13;
      if (v60 == 5014)
      {
        v30 = sub_225075600();
        v31(v30);

        (v51)(v19, *MEMORY[0x277CFAA60], v13);
        v32 = a7;
        v33 = a1;
      }

      else
      {
        _BridgedStoredNSError.code.getter();

        v32 = a7;
        v33 = a1;
        if (v60 == 5006)
        {
          v46 = sub_225075600();
          v47(v46);
          (v51)(v19, v48, v13);
        }
      }
    }

    else
    {
      CCLog.getter();
      v35 = a1;
      v33 = a1;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      v29 = v13;
      v38 = v36;
      if (os_log_type_enabled(v36, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_22506F000, v38, v37, "Got unexpected error from data security check %@. Defaulting to .dataProtectionInsufficient block event", v39, 0xCu);
        sub_2250DDF8C(v40);
        sub_225072C54();
        MEMORY[0x22AA65DF0]();
        sub_225072C54();
        MEMORY[0x22AA65DF0]();
      }

      (*(v53 + 8))(v52, v54);
      v32 = v58;
    }

    (*(v15 + 16))(a6, v19, v29);
    sub_225072D9C();
    sub_2250DDFF4(v43, v44, MEMORY[0x277CFAA80]);
    swift_willThrowTypedImpl();

    (*(v22 + 8))(v32, v57);
    return (*(v15 + 8))(v19, v29);
  }

  else
  {
    (*(v22 + 8))(a7, v21);
    (*(v15 + 8))(v19, v13);
    if (a2)
    {
      v34 = MEMORY[0x277CFA9C0];
    }

    else
    {
      if (a5)
      {
        *a7 = a3;
        a7[1] = a4;
        v24(a7, *MEMORY[0x277CFA9D0], v21);
      }

      v34 = MEMORY[0x277CFA9C8];
    }

    return (v24)(a7, *v34, v21);
  }
}

void sub_2250DD984(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v58 = a6;
  v59 = a7;
  v8 = v7;
  v66 = *MEMORY[0x277D85DE8];
  type metadata accessor for Logger();
  sub_225072D1C();
  v54 = v15;
  v55 = v14;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v52 - v19;
  type metadata accessor for SessionReadinessError();
  sub_225072D1C();
  v56 = v21;
  v57 = v20;
  MEMORY[0x28223BE20](v20);
  sub_225072C00();
  v24 = v23 - v22;
  sub_2250D4724(a1, &v64);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (!swift_dynamicCast())
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v64 = 0xD000000000000019;
    v65 = 0x800000022547A4C0;
    sub_225073BAC(a1, a1[3]);
    swift_getDynamicType();
    v51 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v51);

    sub_22507CA6C();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v61 = a3;
  v62 = a4;
  v25 = v63;
  v26 = [objc_opt_self() deviceContextForTestDeviceReference_];
  v27 = [v26 accountDataSecurityObserver];
  v64 = 0;
  v60 = a5;
  v28 = [v27 validateCachedDataSecurityRequirementsAndReturnWalrusResultForAccount:v25 isServiceManatee:a5 & 1 errorPtr:&v64];

  if (!v28)
  {
    v34 = v64;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v33 = 0;
    v64 = v31;
    v35 = v31;
    sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
    type metadata accessor for CKUnderlyingError(0);
    if (swift_dynamicCast())
    {
      v8 = 0;
      v36 = v63;
      v64 = v63;
      sub_22507F344();
      sub_2250DDFF4(v37, v38, &unk_22544426C);
      _BridgedStoredNSError.code.getter();
      if (v63 == 1017)
      {
        v39 = v53;
        CCLog.getter();
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_22506F000, v40, v41, "There are no cached manatee/walrus statuses. The cached values may have been cleared. Not invalidating the session until there is an actual problem with it.", v42, 2u);
          sub_225072C54();
          MEMORY[0x22AA65DF0]();

          (*(v54 + 8))(v53, v55);
        }

        else
        {

          (*(v54 + 8))(v39, v55);
        }

        v30 = 0;
        goto LABEL_4;
      }

      v33 = 0;
    }

    v43 = v31;
    CCLog.getter();
    v44 = v31;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53 = 0;
      v49 = v48;
      *v47 = 138412290;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&dword_22506F000, v45, v46, "Manatee / Walrus check using cached values failed with error %@", v47, 0xCu);
      sub_2250DDF8C(v49);
      v33 = v53;
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
    }

    else
    {
    }

    v32 = v60;

    (*(v54 + 8))(v18, v55);
    v30 = 0;
    goto LABEL_14;
  }

  v29 = v64;
  v30 = [v28 isWalrusEnabled];

LABEL_4:
  v31 = 0;
  v32 = v60;
  v33 = v8;
LABEL_14:
  sub_2250DD43C(v31, v30, v61, v62, v32 & 1, v24, v59);

  if (v33)
  {
    (*(v56 + 32))(v58, v24, v57);
  }
}

uint64_t sub_2250DDF8C(uint64_t a1)
{
  v2 = sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2250DDFF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2250DE07C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2250DE0A4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor) = 0;
  v5 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_sessionConfiguration;
  type metadata accessor for AnySessionConfiguration();
  sub_225072BF0();
  (*(v6 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_testDeviceReferenceProtocol) = a2;
  return v2;
}

uint64_t sub_2250DE128@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v31 = v3;
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  sub_225072C00();
  v33 = v5 - v4;
  v6 = sub_2250B0DFC(qword_27D7191B0, &qword_225445718);
  sub_225072D1C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v30 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  sub_225072D1C();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = v29 - v19;
  v21 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor;
  if (*(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor))
  {
    __break(1u);
  }

  else
  {
    v22 = v1;
    sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
    (*(v8 + 104))(v11, *MEMORY[0x277D85778], v6);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v8 + 8))(v11, v6);
    v23 = v1;
    v24 = v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_sessionConfiguration;
    v25 = v33;
    (*(v31 + 16))(v33, v24, v32);
    v26 = *(v22 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_testDeviceReferenceProtocol);
    v27 = v30;
    (*(v13 + 16))(v17, v20, v30);
    _s11DeviceCheckC5ActorCMa(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    v28 = sub_2250DEC2C(v25, v26, v17);
    (*(v13 + 8))(v20, v27);
    *(v23 + v21) = v28;
  }

  return result;
}

uint64_t sub_2250DE420@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = type metadata accessor for Logger();
  sub_225072D1C();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for AuthenticatedSession.Configuration.System();
  sub_225072D1C();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_225072C00();
  v18 = v17 - v16;
  v19 = [objc_opt_self() sharedMonitor];
  if (([v19 availabilityState] & 2) == 0)
  {
    CCLog.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22506F000, v20, v21, "Device is no longer past first boot", v22, 2u);
      sub_22507C97C();
    }

    (*(v2 + 8))(v6, v38);
LABEL_9:
    v27 = *MEMORY[0x277CFAA58];
    type metadata accessor for SessionReadinessError();
    sub_225072BF0();
    (*(v28 + 104))(v39, v27);
    goto LABEL_10;
  }

  v23 = [v19 availabilityState];
  if ((v23 & 2) == 0)
  {
    CCLog.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22506F000, v24, v25, "Logical Device is no longer past first unlock", v26, 2u);
      sub_22507C97C();
    }

    (*(v2 + 8))(v9, v38);
    goto LABEL_9;
  }

  AnySessionConfiguration.system.getter();
  v30 = AuthenticatedSession.Configuration.System.allowAccessDuringBuddy.getter();
  (*(v14 + 8))(v18, v12);
  if (v23 & 1) != 0 || (v30)
  {
  }

  else
  {
    CCLog.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v39;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22506F000, v31, v32, "Logical Device is not past Buddy", v35, 2u);
      sub_22507C97C();
    }

    (*(v2 + 8))(v11, v38);
    v36 = *MEMORY[0x277CFAA38];
    type metadata accessor for SessionReadinessError();
    sub_225072BF0();
    (*(v37 + 104))(v34, v36);
  }

LABEL_10:
  sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2250DE834()
{
  v1 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_sessionConfiguration;
  type metadata accessor for AnySessionConfiguration();
  sub_225072BF0();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2250DE8AC()
{
  sub_2250DE834();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2250DE92C(uint64_t a1)
{
  result = type metadata accessor for AnySessionConfiguration();
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

void *sub_2250DEA44()
{
  v1 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x28223BE20](v1 - 8);
  sub_225072C00();
  v2 = type metadata accessor for PropertyDescription();
  sub_225072D1C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  v8 = v7 - v6;
  if (!*(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor))
  {
    return MEMORY[0x277D84F90];
  }

  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  v9 = sub_2250C7388();
  v10 = v9[2];
  if (v10 >= v9[3] >> 1)
  {
    v9 = sub_2250C7388();
  }

  v9[2] = v10 + 1;
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v8, v2);

  return v9;
}

uint64_t sub_2250DEC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v6 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  v13 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  sub_22507C8C0(v3 + v12, 1, 1, v13);
  *(v3 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) = 0xC000000000000000;
  v14 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_sessionConfiguration;
  v15 = type metadata accessor for AnySessionConfiguration();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v3 + v14, a1, v15);
  *(v3 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_testDeviceReferenceProtocol) = a2;
  v17 = *(v13 - 8);
  v18 = v24;
  (*(v17 + 16))(v11, v24, v13);
  sub_22507C8C0(v11, 0, 1, v13);
  v19 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_2250E1C2C(v11, v3 + v19);
  swift_endAccess();
  v20 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v8, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v3;

  sub_2250E1D44();
  swift_unknownObjectRelease();

  (*(v17 + 8))(v18, v13);
  (*(v16 + 8))(v25, v15);
  return v3;
}

uint64_t sub_2250DEF30()
{
  sub_225072C10();
  sub_2250DF2D4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2250DEF8C()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  swift_beginAccess();
  if (!sub_22507C8E8(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v5, v2);
  }

  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_sessionConfiguration;
  v8 = type metadata accessor for AnySessionConfiguration();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  swift_unknownObjectRelease();
  sub_2250D4224(v1 + v6, &qword_27D719198, &qword_225445700);
  sub_2250E1B8C(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2250DF168()
{
  v0 = sub_2250DEF8C();

  return MEMORY[0x282200960](v0);
}

void sub_2250DF1EC(uint64_t a1)
{
  type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    sub_2250E12C8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2250DF2D4()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - v3;
  v5 = sub_2250B0DFC(&qword_27D7191A8, &qword_225445710);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - v6;
  v7 = type metadata accessor for Logger();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state;
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) != 0xC000000000000000)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD000000000000024, 0x800000022547A850);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v42 = *(v0 + v17);
    _print_unlocked<A, B>(_:_:)();
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  swift_beginAccess();
  sub_2250E1BBC(v1 + v18, v12);
  if (sub_22507C8E8(v12, 1, v13) == 1)
  {
    sub_2250D4224(v12, &qword_27D719198, &qword_225445700);
    goto LABEL_11;
  }

  (*(v14 + 32))(v16, v12, v13);
  v19 = [objc_opt_self() sharedMonitor];
  v20 = objc_allocWithZone(_s11DeviceCheckC5ActorC25SystemAvailabilityWatcherCMa());

  v22 = sub_2250E08BC(v21, &OBJC_IVAR____TtCCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor25SystemAvailabilityWatcher_actor, _s11DeviceCheckC5ActorC25SystemAvailabilityWatcherCMa);
  v23 = *(v1 + v17);
  *(v1 + v17) = v22;
  v24 = v22;
  sub_2250E1B8C(v23);
  if (([v19 availabilityState] & 2) != 0)
  {
    sub_2250DFBEC();
  }

  else
  {
    CCLog.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = v4;
      v28 = v27;
      *v27 = 0;
      _os_log_impl(&dword_22506F000, v25, v26, "Device is not past first unlock", v27, 2u);
      v4 = v34;
      MEMORY[0x22AA65DF0](v28, -1, -1);
    }

    (*(v35 + 8))(v9, v36);
    v29 = *MEMORY[0x277CFAA58];
    v30 = type metadata accessor for SessionReadinessError();
    (*(*(v30 - 8) + 104))(v4, v29, v30);
    swift_storeEnumTagMultiPayload();
    v31 = v37;
    AsyncStream.Continuation.yield(_:)();
    (*(v38 + 8))(v31, v39);
    v32 = v24;
    [v19 registerWatcher_];
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_2250DF904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2250DF928, 0, 0);
}

uint64_t sub_2250DF928()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return sub_22507F490(sub_2250DF954, v1);
  }

  **(v0 + 16) = 1;
  return sub_225072DB4();
}

uint64_t sub_2250DF954()
{
  sub_225072C10();
  sub_2250DFA70(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_2250E1D3C, 0, 0);
}

uint64_t sub_2250DFA70(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) >> 62)
  {
    CCLog.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22506F000, v8, v9, "Ignoring system availability callback in unexpected state", v10, 2u);
      MEMORY[0x22AA65DF0](v10, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  else if ((a1 & 2) != 0)
  {

    return sub_2250DFBEC();
  }

  return result;
}

uint64_t sub_2250DFBEC()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - v3;
  v5 = sub_2250B0DFC(&qword_27D7191A8, &qword_225445710);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - v6;
  v7 = type metadata accessor for Logger();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state;
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) >> 62)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD00000000000002BLL, 0x800000022547A7C0);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v42 = *(v0 + v17);
    _print_unlocked<A, B>(_:_:)();
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  swift_beginAccess();
  sub_2250E1BBC(v1 + v18, v12);
  if (sub_22507C8E8(v12, 1, v13) == 1)
  {
    sub_2250D4224(v12, &qword_27D719198, &qword_225445700);
    goto LABEL_11;
  }

  (*(v14 + 32))(v16, v12, v13);
  v19 = [objc_opt_self() sharedMonitor];
  v20 = objc_allocWithZone(_s11DeviceCheckC5ActorC32LogicalDeviceAvailabilityWatcherCMa());

  v22 = sub_2250E08BC(v21, &OBJC_IVAR____TtCCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor32LogicalDeviceAvailabilityWatcher_actor, _s11DeviceCheckC5ActorC32LogicalDeviceAvailabilityWatcherCMa);
  v23 = *(v1 + v17);
  *(v1 + v17) = v22 | 0x4000000000000000;
  v24 = v22;
  sub_2250E1B8C(v23);
  if (([v19 availabilityState] & 2) != 0)
  {
    sub_2250E01F8();
  }

  else
  {
    CCLog.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = v4;
      v28 = v27;
      *v27 = 0;
      _os_log_impl(&dword_22506F000, v25, v26, "Logical Device is not past first unlock", v27, 2u);
      v4 = v34;
      MEMORY[0x22AA65DF0](v28, -1, -1);
    }

    (*(v35 + 8))(v9, v36);
    v29 = *MEMORY[0x277CFAA58];
    v30 = type metadata accessor for SessionReadinessError();
    (*(*(v30 - 8) + 104))(v4, v29, v30);
    swift_storeEnumTagMultiPayload();
    v31 = v37;
    AsyncStream.Continuation.yield(_:)();
    (*(v38 + 8))(v31, v39);
    v32 = v24;
    [v19 registerWatcher_];
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_2250E01F8()
{
  v1 = v0;
  v45 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - v2;
  v3 = sub_2250B0DFC(&qword_27D7191A8, &qword_225445710);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v38 - v4;
  v5 = type metadata accessor for Logger();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AuthenticatedSession.Configuration.System();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v47 = &v38 - v16;
  v17 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state;
  v18 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
  if (v18 >> 62 == 1)
  {
    v46 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
    v19 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    v20 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
    swift_beginAccess();
    sub_2250E1BBC(v1 + v20, v13);
    if (sub_22507C8E8(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v47, v13, v14);
      v21 = v19;
      AnySessionConfiguration.system.getter();
      v22 = AuthenticatedSession.Configuration.System.allowAccessDuringBuddy.getter();
      (*(v8 + 8))(v10, v7);
      if (v22)
      {
        sub_2250E0DC0();
      }

      else
      {
        v23 = [objc_opt_self() sharedMonitor];
        v24 = [v23 availabilityState];
        v25 = *(v1 + v17);
        *(v1 + v17) = v19 | 0x8000000000000000;
        v26 = v21;
        sub_2250E1B8C(v25);
        if ((v24 & 1) == 0)
        {
          v27 = v38;
          CCLog.getter();
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          v30 = os_log_type_enabled(v28, v29);
          v31 = v46;
          if (v30)
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_22506F000, v28, v29, "Logical Device is not past Buddy", v32, 2u);
            MEMORY[0x22AA65DF0](v32, -1, -1);
          }

          (*(v39 + 8))(v27, v40);
          v33 = *MEMORY[0x277CFAA38];
          v34 = type metadata accessor for SessionReadinessError();
          (*(*(v34 - 8) + 104))(v44, v33, v34);
          swift_storeEnumTagMultiPayload();
          v35 = v41;
          AsyncStream.Continuation.yield(_:)();
          (*(v42 + 8))(v35, v43);
          sub_2250E191C(v31);
          [v23 registerWatcher_];

          sub_2250E1B8C(v31);
          goto LABEL_11;
        }

        sub_2250E0DC0();
      }

      v31 = v46;
LABEL_11:
      sub_2250E1B8C(v31);
      return (*(v15 + 8))(v47, v14);
    }

    v37 = v19;
    sub_2250D4224(v13, &qword_27D719198, &qword_225445700);
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD00000000000001DLL, 0x800000022547A750);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v50 = *(v1 + v17);
    _print_unlocked<A, B>(_:_:)();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_2250E08BC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  swift_weakInit();
  swift_weakAssign();
  v7.receiver = v3;
  v7.super_class = a3(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

uint64_t sub_2250E0964(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  Strong = swift_weakLoadStrong();
  v9 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = Strong;
  v10[5] = a1;
  sub_2250E1FF4();

  return 1;
}

uint64_t sub_2250E0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2250E0A78, 0, 0);
}

uint64_t sub_2250E0A78()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return sub_22507F490(sub_2250E0AA4, v1);
  }

  **(v0 + 16) = 1;
  return sub_225072DB4();
}

uint64_t sub_2250E0AA4()
{
  sub_225072C10();
  sub_2250E0C14(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_2250E0B08, 0, 0);
}

id sub_2250E0BC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2250E0C14(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
  if (v7 >> 62 == 2)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v9 = (v7 & 0x3FFFFFFFFFFFFFFFLL);
    sub_2250E0DC0();
    goto LABEL_7;
  }

  if (v7 >> 62 == 1)
  {
    if ((a1 & 2) == 0)
    {
      return;
    }

    v8 = (v7 & 0x3FFFFFFFFFFFFFFFLL);
    sub_2250E01F8();
LABEL_7:

    sub_2250E1B8C(v7);
    return;
  }

  CCLog.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22506F000, v10, v11, "Ignoring system availability callback in unexpected state", v12, 2u);
    MEMORY[0x22AA65DF0](v12, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_2250E0DC0()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  MEMORY[0x28223BE20](v2);
  v3 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = sub_2250B0DFC(&qword_27D7191A0, &qword_225445708);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state;
  v19 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
  if ((v19 >> 62) - 1 < 2 || (v19 >> 62 == 3 ? (v20 = v19 == 0xC000000000000008) : (v20 = 0), v20))
  {
    *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) = 0xC000000000000008;
    sub_2250E1B8C(v19);
    v21 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
    swift_beginAccess();
    sub_2250E1BBC(v1 + v21, v14);
    if (sub_22507C8E8(v14, 1, v3))
    {
      sub_2250D4224(v14, &qword_27D719198, &qword_225445700);
      v22 = 1;
    }

    else
    {
      v27 = v9;
      v23 = v28;
      (*(v28 + 16))(v5, v14, v3);
      sub_2250D4224(v14, &qword_27D719198, &qword_225445700);
      v9 = v27;
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v23 + 8))(v5, v3);
      v22 = 0;
    }

    v24 = sub_2250B0DFC(&qword_27D7191A8, &qword_225445710);
    sub_22507C8C0(v17, v22, 1, v24);
    sub_2250D4224(v17, &qword_27D7191A0, &qword_225445708);
    sub_2250E1BBC(v1 + v21, v12);
    if (sub_22507C8E8(v12, 1, v3))
    {
      sub_2250D4224(v12, &qword_27D719198, &qword_225445700);
    }

    else
    {
      v25 = v28;
      (*(v28 + 16))(v5, v12, v3);
      sub_2250D4224(v12, &qword_27D719198, &qword_225445700);
      AsyncStream.Continuation.finish()();
      (*(v25 + 8))(v5, v3);
    }

    sub_22507C8C0(v9, 1, 1, v3);
    swift_beginAccess();
    sub_2250E1C2C(v9, v1 + v21);
    return swift_endAccess();
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0x7571634165746F6ELL, 0xEE00292864657269);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v29 = *(v1 + v18);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_2250E12C8(uint64_t a1)
{
  if (!qword_280D534B0)
  {
    sub_2250C7B40(&unk_27D7190F8, &qword_2254454F0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_280D534B0);
    }
  }
}

uint64_t sub_2250E1374(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2250E139C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2250E13F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2250E1450(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_2250E14D0()
{
  v16 = type metadata accessor for PropertyDescription();
  v1 = *(v16 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v16);
  v15 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v5 = *(v1 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_225444470;
  v8 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
  ObjectType = &_s11DeviceCheckC5ActorC5StateON;
  v17[0] = v8;
  sub_2250E191C(v8);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v9 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_sessionConfiguration;
  v10 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v10;
  v11 = sub_225073808(v17);
  (*(*(v10 - 8) + 16))(v11, v0 + v9, v10);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v12 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_testDeviceReferenceProtocol);
  if (v12)
  {
    ObjectType = swift_getObjectType();
    v17[0] = v12;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v13 = v15;
    PropertyDescription.init(_:_:privacy:)();
    v7 = sub_2250C7388();
    swift_unknownObjectRelease();
    *(v7 + 16) = 3;
    (*(v2 + 32))(v7 + v6 + 2 * v5, v13, v16);
  }

  return v7;
}

uint64_t sub_2250E17F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2250E183C()
{
  result = qword_280D53458;
  if (!qword_280D53458)
  {
    sub_2250C7B40(&qword_27D719190, &qword_225444808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53458);
  }

  return result;
}

uint64_t sub_2250E18A0(uint64_t a1)
{
  result = sub_2250E17F0(&unk_280D54230, _s11DeviceCheckCMa, &unk_2254456A0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2250E191C(unint64_t result)
{
  switch(result >> 62)
  {
    case 1uLL:
    case 2uLL:
      result &= 0x3FFFFFFFFFFFFFFFuLL;
      goto LABEL_3;
    case 3uLL:
      return result;
    default:
LABEL_3:
      result = result;
      break;
  }

  return result;
}

uint64_t sub_2250E194C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_225075264(v3);
  *v4 = v5;
  v6 = sub_225072C3C(v4);

  return sub_2250E0A54(v6, v7, v8, v2, v1);
}

uint64_t sub_2250E19F4()
{
  sub_225072C10();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2250E1AE4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_225075264(v3);
  *v4 = v5;
  v6 = sub_225072C3C(v4);

  return sub_2250DF904(v6, v7, v8, v2, v1);
}

void sub_2250E1B8C(unint64_t a1)
{
  switch(a1 >> 62)
  {
    case 1uLL:
    case 2uLL:
      a1 &= 0x3FFFFFFFFFFFFFFFuLL;
      goto LABEL_3;
    case 3uLL:
      return;
    default:
LABEL_3:

      break;
  }
}

uint64_t sub_2250E1BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250E1C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250E1C9C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_225075264(v2);
  *v3 = v4;
  v5 = sub_225072C3C(v3);

  return sub_2250DEF10(v5, v6, v7, v1);
}

void sub_2250E1D44()
{
  sub_2250C88E8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  sub_22507CD44(v9);
  sub_22507CA80();
  MEMORY[0x28223BE20](v10);
  v11 = sub_2250EBCD0();
  sub_2250DC5C8(v11, v12, &qword_27D7190D0, &qword_225445B10);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_22507C8E8(v0, 1, v13);

  if (v14 == 1)
  {
    sub_2250D4224(v0, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_22507E428();
    (*(v15 + 8))(v0, v13);
  }

  v16 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2250D4224(v6, &qword_27D7190D0, &qword_225445B10);
    sub_2250EBCC4();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_2250EBCC4();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v2;

  swift_task_create();

  sub_2250D4224(v6, &qword_27D7190D0, &qword_225445B10);

LABEL_9:
  sub_2250C8920();
}

void sub_2250E1FF4()
{
  sub_2250C88E8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  sub_22507CD44(v9);
  sub_22507CA80();
  MEMORY[0x28223BE20](v10);
  v11 = sub_2250EBCD0();
  sub_2250DC5C8(v11, v12, &qword_27D7190D0, &qword_225445B10);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_2250EBD3C(v13);

  if (v14 == 1)
  {
    sub_2250D4224(v0, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_22507E428();
    (*(v15 + 8))(v0, &qword_27D7190D0);
  }

  v16 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2250D4224(v6, &qword_27D7190D0, &qword_225445B10);
    sub_2250EBCC4();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v2;
    sub_2250B0DFC(&qword_27D7192A0, &qword_225445BB8);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_2250EBCC4();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v2;

  sub_2250B0DFC(&qword_27D7192A0, &qword_225445BB8);
  swift_task_create();

  sub_2250D4224(v6, &qword_27D7190D0, &qword_225445B10);

LABEL_9:
  sub_2250C8920();
}

uint64_t sub_2250E22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void sub_2250E22F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    sub_22507F210();

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_2250E235C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_2250E23E0(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_2250E2460(uint64_t a1)
{
  v2 = sub_2250EB158();

  return MEMORY[0x28214D000](a1, v2);
}

uint64_t sub_2250E249C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSLogPrivacy();
  v4 = sub_22507CD44(v3);
  MEMORY[0x28223BE20](v4);
  sub_225072C00();
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_225444480;

  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v5;
}

uint64_t sub_2250E2600()
{
  sub_2250B0DFC(&unk_27D719000, &qword_225444F50);

  return swift_storeEnumTagMultiPayload();
}

void sub_2250E2650()
{
  sub_2250C88E8();
  v1 = v0;
  v31[1] = v2;
  v3 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507CD44(v3);
  sub_22507CA80();
  MEMORY[0x28223BE20](v4);
  sub_2250981FC(v5);
  v31[0] = type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_225072C00();
  v32 = (v10 - v9);
  v11 = sub_2250B0DFC(&qword_27D7192A8, &unk_225445BC8);
  sub_225072D1C();
  v13 = v12;
  sub_22507CA80();
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v17 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  sub_225072D1C();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v31 - v24;
  if (*(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
    (*(v13 + 104))(v16, *MEMORY[0x277D85778], v11);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v13 + 8))(v16, v11);
    v26 = v32;
    (*(v7 + 16))(v32, v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_sessionConfiguration, v31[0]);
    v27 = v33;
    sub_2250DC5C8(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_previousInvalidationContext, v33, &unk_27D718E60, &unk_225444780);
    v28 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_testDeviceReferenceProtocol);
    sub_2250EB788(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account, v35);
    v29 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_applicationID);
    sub_2250EB788(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_systemInteraction, v34);
    (*(v19 + 16))(v23, v25, v17);
    _s15EncryptionCheckC5ActorCMa(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    v30 = sub_2250E30A8(v26, v27, v28, v35, v29, v34, v23);
    (*(v19 + 8))(v25, v17);
    *(v1 + 16) = v30;

    sub_2250C8920();
  }
}

uint64_t sub_2250E29D4()
{

  v1 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_sessionConfiguration;
  type metadata accessor for AnySessionConfiguration();
  sub_225072BF0();
  (*(v2 + 8))(v0 + v1);
  sub_2250D4224(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_previousInvalidationContext, &unk_27D718E60, &unk_225444780);
  swift_unknownObjectRelease();
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account));

  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_systemInteraction));
  return v0;
}

uint64_t sub_2250E2A94()
{
  sub_2250E29D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2250E2B14(uint64_t a1)
{
  type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    sub_2250E5908(319, &qword_280D535E0, MEMORY[0x277CFAAE8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2250E2D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF18PCSIdentityWatcher_token;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_2250E2D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v10 = &v4[OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF18PCSIdentityWatcher_serviceName];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF18PCSIdentityWatcher_pcsIdentityChangedCallback];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_2250E2F0C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2250E3000(uint64_t a1)
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

uint64_t sub_2250E30A8(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v66 = a7;
  v67 = a6;
  v55 = a5;
  v68 = a4;
  v65 = a2;
  v11 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v51 - v12;
  v13 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AnySessionConfiguration();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v51 - v22;
  v24 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  MEMORY[0x28223BE20](v24 - 8);
  v54 = &v51 - v25;
  v26 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v51 - v27;
  swift_defaultActor_initialize();
  v29 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  v30 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  sub_22507C8C0(v8 + v29, 1, 1, v30);
  v31 = (v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID);
  *v31 = 0;
  v31[1] = 0;
  *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors) = MEMORY[0x277D84F98];
  v61 = v16;
  v62 = v15;
  v32 = *(v16 + 16);
  v52 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_sessionConfiguration;
  v53 = v32;
  v64 = a1;
  v32((v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_sessionConfiguration), a1, v15);
  v33 = a3;
  *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_testDeviceReferenceProtocol) = a3;
  sub_2250EB788(v68, v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_account);
  v34 = v55;
  *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_applicationID) = v55;
  sub_2250EB788(v67, v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_systemInteraction);
  v35 = *(v30 - 8);
  (*(v35 + 16))(v28, v66, v30);
  sub_22507C8C0(v28, 0, 1, v30);
  swift_beginAccess();
  v63 = v33;
  swift_unknownObjectRetain();
  v55 = v34;
  sub_2250EB718(v28, v8 + v29);
  swift_endAccess();
  sub_2250DC5C8(v65, v23, &unk_27D718E60, &unk_225444780);
  v36 = type metadata accessor for SessionInvalidationContext();
  if (sub_22507C8E8(v23, 1, v36) == 1)
  {
    sub_2250D4224(v23, &unk_27D718E60, &unk_225444780);
    v37 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    v38 = v54;
    sub_22507C8C0(v54, 1, 1, v37);
  }

  else
  {
    v38 = v54;
    SessionInvalidationContext.keySyncRequest.getter();
    (*(*(v36 - 8) + 8))(v23, v36);
  }

  sub_2250EBB20(v38, v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequest);
  v39 = v56;
  v40 = v62;
  v53(v56, v8 + v52, v62);
  AnySessionConfiguration.encryption.getter();
  v41 = *(v61 + 8);
  v41(v39, v40);
  v42 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v20, 1, v42) == 1)
  {
    sub_2250D4224(v20, &unk_27D7190E0, &unk_2254447D0);
  }

  else
  {
    v43 = v57;
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
    (*(*(v42 - 8) + 8))(v20, v42);
    v44 = AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
    v46 = v45;
    (*(v58 + 8))(v43, v59);
    if (v46)
    {
      v47 = (v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName);
      *v47 = v44;
      v47[1] = v46;
      v48 = type metadata accessor for TaskPriority();
      sub_22507C8C0(v60, 1, 1, v48);
      v49 = swift_allocObject();
      v49[2] = 0;
      v49[3] = 0;
      v49[4] = v8;

      sub_2250E1D44();
      swift_unknownObjectRelease();

      (*(v35 + 8))(v66, v30);
      sub_225073BF0(v67);
      sub_225073BF0(v68);
      sub_2250D4224(v65, &unk_27D718E60, &unk_225444780);
      v41(v64, v40);
      return v8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250E37F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225095DA4;

  return sub_2250E3CF8();
}

uint64_t sub_2250E3884()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  swift_beginAccess();
  if (!sub_22507C8E8(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v5, v2);
  }

  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_sessionConfiguration;
  v8 = type metadata accessor for AnySessionConfiguration();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  swift_unknownObjectRelease();
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_account));

  sub_2250D4224(v1 + v6, &qword_27D719288, &qword_225445B60);
  sub_2250D4224(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequest, &qword_27D7193C0, &qword_225445B38);

  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_systemInteraction));

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2250E3AD8()
{
  v0 = sub_2250E3884();

  return MEMORY[0x282200960](v0);
}

void sub_2250E3B5C(uint64_t a1)
{
  type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    sub_2250EA72C(319, &unk_280D534D0, &qword_27D719228, &qword_225445818, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2250E5908(319, &qword_280D535F0, MEMORY[0x277CFAAD8]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2250E3CF8()
{
  v1[5] = v0;
  sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E3DF0, v0, 0);
}

uint64_t sub_2250E3DF0()
{
  sub_22507CE94();
  v1 = v0[6];
  sub_2250DC5C8(v0[5] + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequest, v1, &qword_27D7193C0, &qword_225445B38);
  sub_22507F37C(v1);
  if (v2)
  {
    sub_2250D4224(v0[6], &qword_27D7193C0, &qword_225445B38);
  }

  else
  {
    v3 = v0[9];
    (*(v0[8] + 32))(v3, v0[6], v0[7]);
    sub_2250E3F58(v3);
    v4 = sub_22507CC80();
    v5(v4);
  }

  v6 = v0[5];
  v8 = *(v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName);
  v7 = *(v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName + 8);
  v9 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
  sub_2250EBD20(v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors);
  v10 = *(v6 + v9);

  v11 = sub_2250ACD24(v8, v7, v10);

  if (v11)
  {
  }

  else
  {
    sub_2250E4888();
  }

  sub_225075274();

  return v12();
}

uint64_t sub_2250E3F58(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  swift_beginAccess();
  sub_2250DC5C8(v2 + v16, v8, &qword_27D719288, &qword_225445B60);
  if (sub_22507C8E8(v8, 1, v9) == 1)
  {
    sub_2250D4224(v8, &qword_27D719288, &qword_225445B60);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v17 = v34;
    v18 = SessionInvalidationContext.KeySyncRequest.serviceName.getter();
    v20 = v19;
    sub_2250EB788(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_account, v36);
    v21 = *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_applicationID);

    v22 = [v21 applicationBundleIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v24;
    v33 = v23;

    v25 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    (*(*(v25 - 8) + 16))(v5, v17, v25);
    sub_22507C8C0(v5, 0, 1, v25);
    sub_2250EB788(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_systemInteraction, v35);
    (*(v10 + 16))(v13, v15, v9);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v18;
    v27[4] = v20;
    _s15EncryptionCheckC20ServiceIdentityActorCMa(0);
    swift_allocObject();

    v28 = sub_2250E595C(v18, v20, v36, v33, v32, v5, v35, v13, sub_2250EB930, v27);
    v29 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *(v2 + v29);
    sub_2251027D8(v28, v18, v20, isUniquelyReferenced_nonNull_native);
    *(v2 + v29) = v35[0];

    swift_endAccess();

    return (*(v10 + 8))(v15, v9);
  }

  return result;
}

uint64_t sub_2250E43C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a4;
  v14[8] = a5;

  sub_2250E1D44();
}

uint64_t sub_2250E44E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_2250E4510, 0, 0);
}

uint64_t sub_2250E4510()
{
  sub_225072C10();
  sub_2250EBD20(v0[5] + 16);
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_2250E45E8;
    v3 = sub_22507CCC8(v0[6]);

    return sub_2250E5004(v3, v4);
  }

  else
  {
    sub_225075274();

    return v6();
  }
}

uint64_t sub_2250E45E8()
{
  sub_22507CE94();
  v1 = *v0;
  v2 = *v0;
  sub_225072D68();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 96) = v5;
  *v5 = v4;
  v5[1] = sub_2250E4744;
  v6 = sub_22507CCC8(*(v1 + 64));

  return sub_2250E50A0(v6, v7);
}

uint64_t sub_2250E4744()
{
  sub_225072C10();
  sub_225075560();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2250E4830, 0, 0);
}

uint64_t sub_2250E4830()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_2250E4888()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v29 - v3;
  v4 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  swift_beginAccess();
  sub_2250DC5C8(v1 + v14, v6, &qword_27D719288, &qword_225445B60);
  if (sub_22507C8E8(v6, 1, v7) == 1)
  {
    sub_2250D4224(v6, &qword_27D719288, &qword_225445B60);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v15 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName);
    v16 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName + 8);
    sub_2250EB788(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_account, v33);
    v17 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_applicationID);

    v18 = [v17 applicationBundleIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v20;
    v30 = v19;

    v21 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    v22 = v31;
    sub_22507C8C0(v31, 1, 1, v21);
    sub_2250EB788(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_systemInteraction, v32);
    (*(v8 + 16))(v11, v13, v7);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v15;
    v24[4] = v16;
    _s15EncryptionCheckC20ServiceIdentityActorCMa(0);
    swift_allocObject();

    v25 = sub_2250E595C(v15, v16, v33, v30, v29, v22, v32, v11, sub_2250EB7E8, v24);
    v26 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *(v1 + v26);
    sub_2251027D8(v25, v15, v16, isUniquelyReferenced_nonNull_native);
    *(v1 + v26) = v32[0];
    swift_endAccess();

    return (*(v8 + 8))(v13, v7);
  }

  return result;
}

uint64_t sub_2250E4CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;

  sub_2250E1D44();
}

uint64_t sub_2250E4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_2250E4DE8, 0, 0);
}

uint64_t sub_2250E4DE8()
{
  sub_225072C10();
  sub_2250EBD20(v0[5] + 16);
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_2250E4EC0;
    v3 = sub_22507CCC8(v0[6]);

    return sub_2250E50A0(v3, v4);
  }

  else
  {
    sub_225075274();

    return v6();
  }
}

uint64_t sub_2250E4EC0()
{
  sub_225072C10();
  sub_225075560();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2250E4FAC, 0, 0);
}

uint64_t sub_2250E4FAC()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_2250E5004(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2250E5028, v2, 0);
}

uint64_t sub_2250E5028()
{
  sub_225072C10();
  v1 = v0[3];
  v2 = (v0[4] + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID);
  *v2 = v0[2];
  v2[1] = v1;

  sub_225075274();

  return v3();
}

uint64_t sub_2250E50A0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2250E50C4, v2, 0);
}

uint64_t sub_2250E50C4()
{
  sub_22507E6E8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
  *(v0 + 64) = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
  swift_beginAccess();
  sub_2250EB1B4(v3, v1);
  swift_endAccess();

  v5 = *(v2 + v4);
  *(v0 + 72) = v5;
  v6 = *(v5 + 32);
  *(v0 + 104) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (((63 - v8) >> 6) - 1 == v12)
      {
        v13 = *(v0 + 56);
        v14 = *(v0 + 64);

        if (!*(*(v13 + v14) + 16))
        {
          sub_2250E53A4();
        }

        sub_225075274();

        __asm { BRAA            X1, X16 }
      }

      v11 = v12 + 1;
      v9 = *(v10 + 8 * v12++ + 72);
    }

    while (!v9);
  }

  *(v0 + 80) = v9;
  *(v0 + 88) = v11;
  sub_22507CC8C(v10, v11);

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_2250E523C()
{
  sub_225072C10();
  v1 = *(v0 + 56);
  sub_2250E5F9C();

  return MEMORY[0x2822009F8](sub_2250E52A4, v1, 0);
}

uint64_t sub_2250E52A4()
{
  sub_225072C10();

  v6 = *(v2 + 88);
  v7 = (*(v2 + 80) - 1) & *(v2 + 80);
  if (v7)
  {
    v3 = *(v2 + 72);
LABEL_7:
    *(v2 + 80) = v7;
    *(v2 + 88) = v6;
    sub_22507CC8C(v3, v6);
    v3 = v0;
    v4 = v1;
    v5 = 0;
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v3 = *(v2 + 72);
      if (v8 >= (((1 << *(v2 + 104)) + 63) >> 6))
      {
        v9 = *(v2 + 56);
        v10 = *(v2 + 64);

        if (!*(*(v9 + v10) + 16))
        {
          sub_2250E53A4();
        }

        sub_225075274();

        __asm { BRAA            X1, X16 }
      }

      v7 = *(v3 + 8 * v8 + 64);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2250E53A4()
{
  v1 = v0;
  v41 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  MEMORY[0x28223BE20](v41);
  v40 = (&v39 - v2);
  v3 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v39 - v5;
  v6 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v44 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = sub_2250B0DFC(&qword_27D719290, &qword_225445B68);
  MEMORY[0x28223BE20](v14 - 8);
  v43 = &v39 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v3;
    v23 = v4;
    v24 = v9;
    v25 = v1;
    v26 = v22;
    *v22 = 0;
    _os_log_impl(&dword_22506F000, v20, v21, "Requested identities have been acquired.", v22, 2u);
    v27 = v26;
    v1 = v25;
    v9 = v24;
    v4 = v23;
    v3 = v39;
    MEMORY[0x22AA65DF0](v27, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  v28 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID);
  v29 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID + 8);
  v30 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  swift_beginAccess();
  sub_2250DC5C8(v1 + v30, v13, &qword_27D719288, &qword_225445B60);
  if (sub_22507C8E8(v13, 1, v3))
  {
    sub_2250D4224(v13, &qword_27D719288, &qword_225445B60);
    v31 = 1;
    v32 = v43;
  }

  else
  {
    v33 = v42;
    (*(v4 + 16))(v42, v13, v3);

    sub_2250D4224(v13, &qword_27D719288, &qword_225445B60);
    v34 = v40;
    *v40 = v28;
    v34[1] = v29;
    swift_storeEnumTagMultiPayload();
    v32 = v43;
    AsyncStream.Continuation.yield(_:)();
    (*(v4 + 8))(v33, v3);
    v31 = 0;
  }

  v35 = sub_2250B0DFC(&unk_27D719278, &unk_225445B50);
  sub_22507C8C0(v32, v31, 1, v35);
  sub_2250D4224(v32, &qword_27D719290, &qword_225445B68);
  v36 = v44;
  sub_2250DC5C8(v1 + v30, v44, &qword_27D719288, &qword_225445B60);
  if (sub_22507C8E8(v36, 1, v3))
  {
    sub_2250D4224(v36, &qword_27D719288, &qword_225445B60);
  }

  else
  {
    v37 = v42;
    (*(v4 + 16))(v42, v36, v3);
    sub_2250D4224(v36, &qword_27D719288, &qword_225445B60);
    AsyncStream.Continuation.finish()();
    (*(v4 + 8))(v37, v3);
  }

  sub_22507C8C0(v9, 1, 1, v3);
  swift_beginAccess();
  sub_2250EB718(v9, v1 + v30);
  return swift_endAccess();
}

void sub_2250E5908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_2250E595C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a8;
  v35 = a3;
  v33 = a9;
  v18 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v32 - v19;
  swift_defaultActor_initialize();
  v21 = (v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID);
  *v21 = 0;
  v21[1] = 0;
  *(v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher) = 0;
  v22 = (v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID);
  *v22 = 0;
  v22[1] = 0;
  *(v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) = 0;
  v10[14] = a1;
  v10[15] = a2;
  sub_2250EB788(a3, (v10 + 16));
  v10[21] = a4;
  v10[22] = a5;
  v23 = a6;
  sub_2250DC5C8(a6, v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, &qword_27D7193C0, &qword_225445B38);
  sub_2250EB788(a7, v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction);
  v24 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_readinessSink;
  v25 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v26 = *(v25 - 8);
  v27 = v34;
  (*(v26 + 16))(v10 + v24, v34, v25);
  v28 = (v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_completionCallback);
  *v28 = v33;
  v28[1] = a10;
  v29 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v20, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v10;

  sub_2250E1D44();

  (*(v26 + 8))(v27, v25);
  sub_225073BF0(a7);
  sub_2250D4224(v23, &qword_27D7193C0, &qword_225445B38);
  sub_225073BF0(v35);
  return v10;
}

uint64_t sub_2250E5BF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22507F4D4;

  return sub_2250E632C();
}

char *sub_2250E5C80()
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2250EA67C();

  sub_225073BF0((v0 + 128));

  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_readinessSink;
  v2 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_225073BF0((v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction));
  sub_2250D4224(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, &qword_27D7193C0, &qword_225445B38);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2250E5DBC()
{
  v0 = sub_2250E5C80();

  return MEMORY[0x282200960](v0);
}

void sub_2250E5E40(uint64_t a1)
{
  sub_2250EA72C(319, &qword_280D534E0, &qword_27D718F08, &qword_225444868, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    sub_2250E5908(319, &qword_280D535F0, MEMORY[0x277CFAAD8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2250E5F9C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  result = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  switch(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state))
  {
    case 1:
    case 2:
      sub_2250DC5C8(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, v12, &qword_27D7193C0, &qword_225445B38);
      v13 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
      v14 = sub_22507C8E8(v12, 1, v13);
      result = sub_2250D4224(v12, &qword_27D7193C0, &qword_225445B38);
      if (v14 == 1)
      {
        goto LABEL_3;
      }

      break;
    case 3:
LABEL_3:
      CCLog.getter();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v26);
        _os_log_impl(&dword_22506F000, v15, v16, "Checking if identity for %s has become available", v17, 0xCu);
        sub_225073BF0(v18);
        MEMORY[0x22AA65DF0](v18, -1, -1);
        MEMORY[0x22AA65DF0](v17, -1, -1);
      }

      v19 = *(v3 + 8);
      v19(v8, v2);
      result = sub_2250E7C70();
      if (result)
      {
        CCLog.getter();

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v26 = v23;
          *v22 = 136315138;
          *(v22 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v26);
          _os_log_impl(&dword_22506F000, v20, v21, "Identity for %s has been acquired.", v22, 0xCu);
          sub_225073BF0(v23);
          MEMORY[0x22AA65DF0](v23, -1, -1);
          MEMORY[0x22AA65DF0](v22, -1, -1);
        }

        v24 = (v19)(v6, v2);
        result = sub_2250EA5D8(v24);
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2250E632C()
{
  v1[2] = v0;
  sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E6424, v0, 0);
}

void sub_2250E6424()
{
  sub_225072C10();
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state))
  {
    __break(1u);
  }

  else
  {
    v2 = v0[3];
    sub_2250DC5C8(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, v2, &qword_27D7193C0, &qword_225445B38);
    sub_22507F37C(v2);
    if (v3)
    {
      sub_2250D4224(v0[3], &qword_27D7193C0, &qword_225445B38);
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v4[1] = sub_2250E670C;

      sub_2250E7558();
    }

    else
    {
      (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
      v5 = swift_task_alloc();
      v0[7] = v5;
      *v5 = v0;
      v5[1] = sub_2250E6598;
      v6 = sub_22507CCC8(v0[6]);

      sub_2250E682C(v6);
    }
  }
}

uint64_t sub_2250E6598()
{
  sub_225072C10();
  sub_225075560();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  v3 = sub_225098658();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2250E6690()
{
  sub_225072C10();
  (*(v0[5] + 8))(v0[6], v0[4]);

  sub_225075274();

  return v1();
}

uint64_t sub_2250E670C()
{
  sub_225072C10();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2250E682C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SaltedHash();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v2[15] = swift_task_alloc();
  v6 = sub_2250B0DFC(&unk_27D719278, &unk_225445B50);
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E6AE0, v1, 0);
}

void sub_2250E6AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_2250957E4();
  a21 = v24;
  a22 = v25;
  sub_2250EBCAC();
  a20 = v22;
  v26 = v22[3];
  v27 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v26 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state))
  {
    __break(1u);
  }

  else
  {
    CCLog.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v22[25];
    v32 = v22[19];
    v33 = v22[20];
    if (v30)
    {
      v53 = v22[25];
      v34 = v27;
      v35 = v22[3];
      v36 = sub_22507CA14();
      sub_225082610();
      sub_22509494C();
      *v36 = 136315138;
      v37 = *(v35 + 112);
      v38 = *(v35 + 120);
      v27 = v34;
      *(v36 + 4) = sub_225095AFC(v37, v38, &a11);
      sub_2250EBC9C();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      sub_225073BF0(v23);
      sub_22507C94C();
      sub_22507C97C();

      v44 = *(v33 + 8);
      v44(v53, v32);
    }

    else
    {

      v44 = *(v33 + 8);
      v44(v31, v32);
    }

    v22[26] = v44;
    v45 = v22[15];
    *(v26 + v27) = 2;
    v46 = *MEMORY[0x277CFAA50];
    type metadata accessor for SessionReadinessError();
    sub_225072BF0();
    (*(v47 + 104))(v45, v46);
    swift_storeEnumTagMultiPayload();
    v48 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
    sub_2250EBD7C(v48);
    v49 = sub_2250EBCB8();
    v50(v49);
    v51 = swift_task_alloc();
    v22[27] = v51;
    *v51 = v22;
    v51[1] = sub_2250E6D04;
    sub_22508D008();

    sub_2250E8258();
  }
}

uint64_t sub_2250E6D04()
{
  sub_225072C10();
  sub_225075560();
  sub_225075614();
  *v2 = v1;
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;
  *(v6 + 224) = v5;

  v7 = sub_225098658();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2250E6E00()
{
  v82 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 224) == 1)
  {
    v2 = (v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID);
    v3 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8);
    if (!v3)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v4 = *v2;

    SessionInvalidationContext.KeySyncRequest.reason.getter();
    v5 = sub_2250EBCB8();
    v7 = v6(v5);
    if (v7 == *MEMORY[0x277CFAAC0])
    {
      v8 = *(v0 + 104);

      v9 = sub_22507F210();
      v10(v9);
      type metadata accessor for ServerDate();
      sub_225072BF0();
      (*(v11 + 8))(v8);
LABEL_5:
      CCLog.getter();

      v12 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_2250EBD9C();
      v13 = sub_22509541C();
      v14 = *(v0 + 208);
      if (v13)
      {
        v15 = v2;
        v16 = *(v0 + 24);
        v78 = *(v0 + 208);
        v17 = sub_22507CA14();
        v18 = sub_225082610();
        v81 = v18;
        *v17 = 136315138;
        v19 = *(v16 + 112);
        v20 = *(v16 + 120);
        v2 = v15;
        *(v17 + 4) = sub_225095AFC(v19, v20, &v81);
        sub_22507556C(&dword_22506F000, v21, v22, "User key sync successfully acquired an identity set for %s");
        sub_225073BF0(v18);
        sub_22507C97C();
        sub_22507C9FC();

        v23 = sub_22507CC80();
        v78(v23, v24);
      }

      else
      {

        v45 = sub_22507CC80();
        v14(v45);
      }

      goto LABEL_24;
    }

    v26 = v7;
    if (v7 != *MEMORY[0x277CFAAC8])
    {
      v46 = *MEMORY[0x277CFAAD0];

      if (v26 != v46)
      {
        v48 = *(v0 + 40);
        v47 = *(v0 + 48);
        v49 = *(v0 + 32);
        v50 = *(v0 + 16);
        CCLog.getter();
        (*(v48 + 16))(v47, v50, v49);

        v51 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        v52 = sub_225095778();
        v53 = *(v0 + 208);
        v54 = *(v0 + 168);
        v55 = *(v0 + 152);
        if (v52)
        {
          v76 = *(v0 + 152);
          v80 = v2;
          v57 = *(v0 + 40);
          v56 = *(v0 + 48);
          v58 = *(v0 + 24);
          v73 = *(v0 + 32);
          sub_2250957CC();
          v81 = sub_225095700();
          *v53 = 136315394;
          SessionInvalidationContext.KeySyncRequest.reason.getter();
          v59 = String.init<A>(describing:)();
          v61 = v60;
          (*(v57 + 8))(v56, v73);
          v62 = sub_225095AFC(v59, v61, &v81);
          v2 = v80;

          *(v53 + 4) = v62;
          *(v53 + 12) = 2080;
          *(v53 + 14) = sub_225095AFC(*(v58 + 112), *(v58 + 120), &v81);
          sub_2250752E4(&dword_22506F000, v63, v64, "Unrecognized key sync request reason: %s. Proceeding anyway, since user key sync was successful for %s");
          sub_225082658();
          sub_22507C94C();
          sub_22507C97C();

          (v53)(v54, v76);
        }

        else
        {

          v67 = sub_22507E440();
          v68(v67);
          (v53)(v54, v55);
        }

        (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
        goto LABEL_24;
      }

      goto LABEL_5;
    }

    v79 = v2;
    v27 = *(v0 + 104);
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 56);
    (*(*(v0 + 88) + 96))(v27, *(v0 + 80));
    (*(v29 + 32))(v28, v27, v30);
    sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_225444480;
    *(v31 + 32) = v4;
    *(v31 + 40) = v3;
    LOBYTE(v27) = SaltedHash.matches(_:)();

    if (v27)
    {
      CCLog.getter();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 208);
      v36 = *(v0 + 192);
      v37 = *(v0 + 152);
      v39 = *(v0 + 64);
      v38 = *(v0 + 72);
      v40 = *(v0 + 56);
      if (v34)
      {
        v77 = *(v0 + 72);
        v41 = *(v0 + 24);
        sub_22507CA14();
        v75 = v40;
        v74 = v35;
        v42 = sub_225095854();
        v81 = v42;
        *v40 = 136315138;
        *(v40 + 4) = sub_225095AFC(*(v41 + 112), *(v41 + 120), &v81);
        v44 = "User key sync for %s did not yield an updated current identity. Proceeding anyway, but there is a good chance the issue has not been resolved.";
LABEL_19:
        sub_2250988F4(&dword_22506F000, v43, v33, v44);
        sub_225073BF0(v42);
        sub_22507C9FC();
        sub_22507C94C();

        v74(v36, v37);
        (*(v39 + 8))(v77, v75);
LABEL_21:
        v2 = v79;
LABEL_24:
        v69 = v2[1];
        v70 = (*(v0 + 24) + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID);
        *v70 = *v2;
        v70[1] = v69;

        sub_2250EA5D8(v71);
        goto LABEL_25;
      }
    }

    else
    {
      CCLog.getter();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      v65 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 208);
      v36 = *(v0 + 184);
      v37 = *(v0 + 152);
      v39 = *(v0 + 64);
      v38 = *(v0 + 72);
      v40 = *(v0 + 56);
      if (v65)
      {
        v77 = *(v0 + 72);
        v66 = *(v0 + 24);
        sub_22507CA14();
        v75 = v40;
        v74 = v35;
        v42 = sub_225095854();
        v81 = v42;
        *v40 = 136315138;
        *(v40 + 4) = sub_225095AFC(*(v66 + 112), *(v66 + 120), &v81);
        v44 = "User key sync successfully acquired an identity set for %s";
        goto LABEL_19;
      }
    }

    v35(v36, v37);
    (*(v39 + 8))(v38, v40);
    goto LABEL_21;
  }

  sub_2250E7F08();
LABEL_25:

  sub_225075274();

  return v72();
}

uint64_t sub_2250E7558()
{
  v1[2] = v0;
  v1[3] = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v1[4] = swift_task_alloc();
  v2 = sub_2250B0DFC(&unk_27D719278, &unk_225445B50);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E76D4, v0, 0);
}

void sub_2250E76D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_2250957E4();
  a21 = v25;
  a22 = v26;
  sub_2250EBCAC();
  a20 = v22;
  v27 = v22[2];
  v28 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  v22[13] = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v27 + v28))
  {
    __break(1u);
  }

  else
  {
    v29 = sub_2250E7C70();
    if (v29)
    {
      CCLog.getter();

      v30 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_22509541C())
      {
        v31 = v22[2];
        v32 = sub_22507CA14();
        v33 = sub_225082610();
        a11 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_225095AFC(*(v31 + 112), *(v31 + 120), &a11);
        sub_22507556C(&dword_22506F000, v34, v35, "Identity set for %s is available");
        sub_225073BF0(v33);
        sub_22507C97C();
        sub_22507C9FC();
      }

      v36 = sub_22507CC80();
      v38 = v37(v36);
      sub_2250EA5D8(v38);
      sub_2250EBD5C();

      sub_225075274();
      sub_22508D008();

      v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      sub_2250EBDCC(v29);

      v47 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_2250953E0();
      v48 = os_log_type_enabled(v47, v23);
      v49 = v22[11];
      v50 = v22[8];
      v51 = v22[9];
      if (v48)
      {
        v68 = v22[11];
        v52 = v22[2];
        v53 = sub_22507CA14();
        sub_225082610();
        sub_22509494C();
        *v53 = 136315138;
        *(v53 + 4) = sub_225095AFC(*(v52 + 112), *(v52 + 120), &a11);
        sub_2250EBC9C();
        _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
        sub_225073BF0(v24);
        sub_22507C94C();
        sub_22507C97C();

        v59 = *(v51 + 8);
        v59(v68, v50);
      }

      else
      {

        v59 = *(v51 + 8);
        v59(v49, v50);
      }

      v22[14] = v59;
      v60 = v22[4];
      *(v27 + v28) = 2;
      v61 = *MEMORY[0x277CFAA50];
      type metadata accessor for SessionReadinessError();
      sub_225072BF0();
      (*(v62 + 104))(v60, v61);
      swift_storeEnumTagMultiPayload();
      v63 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
      sub_2250EBD7C(v63);
      v64 = sub_2250EBCB8();
      v65(v64);
      v66 = swift_task_alloc();
      v22[15] = v66;
      *v66 = v22;
      v66[1] = sub_2250E79FC;
      sub_22508D008();

      sub_2250E8258();
    }
  }
}

uint64_t sub_2250E79FC()
{
  sub_225072C10();
  sub_225075560();
  sub_225075614();
  *v2 = v1;
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;
  *(v6 + 128) = v5;

  v7 = sub_225098658();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2250E7AF8(uint64_t a1)
{
  v15 = v1;
  if (*(v1 + 128) == 1)
  {
    if (*(*(v1 + 16) + *(v1 + 104)) != 4)
    {
      CCLog.getter();

      v2 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_2250EBD9C();
      v3 = sub_22509541C();
      v4 = *(v1 + 112);
      if (v3)
      {
        v5 = *(v1 + 16);
        v6 = sub_22507CA14();
        v7 = sub_225082610();
        v14 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_225095AFC(*(v5 + 112), *(v5 + 120), &v14);
        sub_22507556C(&dword_22506F000, v8, v9, "Identity set for %s acquired via user key sync");
        sub_225073BF0(v7);
        sub_22507C97C();
        sub_22507C9FC();
      }

      v10 = sub_22507CC80();
      v11 = v4(v10);
      sub_2250EA5D8(v11);
    }
  }

  else
  {
    sub_2250E7F08();
  }

  sub_2250EBD5C();

  sub_225075274();

  return v12();
}

BOOL sub_2250E7C70()
{
  v1 = type metadata accessor for Logger();
  MEMORY[0x28223BE20](v1);
  v2 = (v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID);
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8))
  {
    return 1;
  }

  sub_225073BAC((v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction), *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction + 24));
  v4 = sub_2250EC6C8(v0 + 16, v0[14], v0[15]);
  v6 = v5;
  *v2 = v4;
  v2[1] = v5;

  return v6 != 0;
}

void sub_2250E7F08()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - v3;
  v5 = sub_2250B0DFC(&unk_27D719278, &unk_225445B50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) != 4)
  {
    v25 = v8;
    v26 = v6;
    v27 = v2;
    CCLog.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = v5;
      v17 = v16;
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v28);
      _os_log_impl(&dword_22506F000, v14, v15, "Waiting for identity change for %s", v17, 0xCu);
      sub_225073BF0(v18);
      MEMORY[0x22AA65DF0](v18, -1, -1);
      v19 = v17;
      v5 = v24;
      MEMORY[0x22AA65DF0](v19, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    *(v1 + v13) = 3;
    v20 = *MEMORY[0x277CFAA50];
    v21 = type metadata accessor for SessionReadinessError();
    (*(*(v21 - 8) + 104))(v4, v20, v21);
    swift_storeEnumTagMultiPayload();
    sub_2250B0DFC(&qword_27D719228, &qword_225445818);
    v22 = v25;
    AsyncStream.Continuation.yield(_:)();
    (*(v26 + 8))(v22, v5);
    sub_2250E9AC8();
  }
}

uint64_t sub_2250E8258()
{
  v1[2] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v1[14] = swift_task_alloc();
  sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E8488, v0, 0);
}

uint64_t sub_2250E8488()
{
  v114 = v0;
  v3 = v0[2];
  v4 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  v0[20] = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v3 + v4) == 4)
  {
    goto LABEL_2;
  }

  v7 = v0[15];
  *(v3 + v4) = 1;
  v8 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction;
  v0[21] = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction;
  sub_225073BAC((v3 + v8), *(v3 + v8 + 24));
  v9 = v3[14];
  v0[22] = v9;
  v10 = v3[15];
  v0[23] = v10;
  sub_2250EBDE4(v3 + 16, v9, v10, v7);
  sub_22507F37C(v7);
  if (v11)
  {
    sub_2250D4224(v0[15], &unk_27D719260, &unk_225445B40);
  }

  else
  {
    v12 = v0[14];
    v13 = v0[2];
    (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
    sub_2250DC5C8(v13 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, v12, &qword_27D7193C0, &qword_225445B38);
    v14 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    v15 = sub_2250EBD3C(v14);
    v16 = v0[14];
    if (v15 == 1)
    {
      sub_2250D4224(v0[14], &qword_27D7193C0, &qword_225445B38);
      v17 = 20.0;
    }

    else
    {
      v18 = SessionInvalidationContext.KeySyncRequest.retryCount.getter();
      sub_22507E428();
      (*(v19 + 8))(v16, v13);
      v17 = (v18 + 1.0) * 20.0;
    }

    Date.timeIntervalSinceNow.getter();
    v21 = v17 - fabs(v20);
    if (v21 < 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v21;
    }

    v23 = v0[19];
    if (v22 > 0.0)
    {
      v25 = v0[17];
      v24 = v0[18];
      v26 = v0[16];
      CCLog.getter();
      (*(v25 + 16))(v24, v23, v26);

      v27 = Logger.logObject.getter();
      LOBYTE(v24) = static os_log_type_t.default.getter();

      v107 = v24;
      v28 = sub_22509541C();
      v29 = v0[17];
      v30 = v0[18];
      v31 = v0[16];
      v32 = v0[13];
      v33 = v0[7];
      v110 = v0[6];
      if (v28)
      {
        loga = v27;
        v34 = v0[2];
        v106 = v0[13];
        v35 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *v35 = 136315906;
        v36 = sub_22507CC80();
        *(v35 + 4) = sub_225095AFC(v36, v37, v38);
        *(v35 + 12) = 2080;
        sub_225073BAC(v3 + 16, *(v34 + 152));
        v39 = sub_22507CC80();
        v41 = v40(v39);
        v43 = sub_225095AFC(v41, v42, &v113);

        *(v35 + 14) = v43;
        *(v35 + 22) = 2080;
        sub_2250EB0B8(&qword_27D719270, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        v47 = *(v29 + 8);
        v47(v30, v31);
        v48 = sub_225095AFC(v44, v46, &v113);

        *(v35 + 24) = v48;
        *(v35 + 32) = 2048;
        *(v35 + 34) = v22;
        _os_log_impl(&dword_22506F000, loga, v107, "Last user key sync for %s and account %s was at %s. Will wait %f seconds before next sync.", v35, 0x2Au);
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507C9FC();

        v49 = *(v33 + 8);
        v49(v106, v110);
      }

      else
      {

        v47 = *(v29 + 8);
        v47(v30, v31);
        v49 = *(v33 + 8);
        v49(v32, v110);
      }

      v0[24] = v47;
      v0[25] = v49;
      static Duration.seconds(_:)();
      static Clock<>.continuous.getter();
      v100 = swift_task_alloc();
      v0[26] = v100;
      *v100 = v0;
      v100[1] = sub_2250E8BE0;
      sub_22507CC80();
      sub_2250EBCE8();

      __asm { BR              X5 }
    }

    (*(v0[17] + 8))(v0[19], v0[16]);
  }

  sub_225093434();
  if (v11)
  {
    CCLog.getter();

    v51 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250953A8();
      v108 = v52;
      v111 = v53;
      sub_2250957CC();
      v113 = sub_225095700();
      v61 = sub_225097510(4.8151e-34, v113, v54, v55, v56, v57, v58, v59, v60, v103, log);
      v62 = sub_225072DC8(v61);
      v64 = v63(v62);
      sub_225095AFC(v64, v65, &v113);
      sub_2250EBD08();
      *(v1 + 14) = v2;
      sub_2250752E4(&dword_22506F000, v66, v67, "Identity already acquired for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v10 + 8))(v111, v108);
    }

    else
    {

      v86 = sub_22507E440();
      v87(v86);
    }

LABEL_2:
    sub_22507C998();

    sub_2250EBC8C();
    sub_2250EBCE8();

    __asm { BRAA            X2, X16 }
  }

  sub_2250EBDCC(v50);

  v68 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_2250953E0();
  if (sub_225095778())
  {
    sub_2250EBC7C();
    v109 = v70;
    v112 = v71;
    sub_2250957CC();
    v113 = sub_225095700();
    v79 = sub_225097510(4.8151e-34, v113, v72, v73, v74, v75, v76, v77, v78, v103, log);
    v80 = sub_225072DC8(v79);
    v82 = v81(v80);
    sub_225095AFC(v82, v83, &v113);
    sub_2250EBD08();
    *(v1 + 14) = v2;
    sub_2250752E4(&dword_22506F000, v84, v85, "Synchronizing user key registry for service %s and account %s");
    sub_225082658();
    sub_22507C94C();
    sub_22507C97C();

    (*(v10 + 8))(v112, v109);
  }

  else
  {
    v88 = v0[7];

    v89 = *(v88 + 8);
    v90 = sub_22507F210();
    v89(v90);
  }

  sub_22507E708();
  v91 = swift_task_alloc();
  v0[29] = v91;
  *v91 = v0;
  sub_22507CD80(v91);
  sub_2250EBCE8();

  return sub_2250EBF98(v92, v93, v94, v95, v96, v97);
}

uint64_t sub_2250E8BE0()
{
  sub_22507E6E8();
  v2 = *v1;
  sub_225075614();
  *v4 = v3;
  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  *v4 = *v1;
  *(v3 + 216) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[2];
  if (v0)
  {
    v9 = sub_2250E900C;
  }

  else
  {
    v9 = sub_2250E8D60;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2250E8D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2250957E4();
  sub_2250EBCAC();
  (*(v15 + 192))(*(v15 + 152), *(v15 + 128));
  sub_225093434();
  if (v19)
  {
    CCLog.getter();

    v20 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250953A8();
      sub_2250971CC();
      sub_225095700();
      sub_22509494C();
      v25 = sub_22508E740(4.8151e-34, v21, v22, v23, v24);
      v26 = sub_225072DC8(v25);
      v28 = v27(v26);
      sub_2250EBDB4(v28, v29, v30, v31, v32, v33);
      sub_2250EBD08();
      *(v16 + 14) = v17;
      sub_2250752E4(&dword_22506F000, v34, v35, "Identity already acquired for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v14 + 8))(a10, a9);
    }

    else
    {

      v53 = sub_22507E440();
      v54(v53);
    }

    sub_22507C998();
    v76 = v55;

    sub_2250EBC8C();
    sub_22508D008();

    return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, v76, a11, a12, a13, a14);
  }

  else
  {
    sub_2250EBDCC(v18);

    v36 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250EBC7C();
      sub_2250971CC();
      sub_225095700();
      sub_22509494C();
      v42 = sub_22508E740(4.8151e-34, v38, v39, v40, v41);
      v43 = sub_225072DC8(v42);
      v45 = v44(v43);
      sub_2250EBDB4(v45, v46, v47, v48, v49, v50);
      sub_2250EBD08();
      *(v16 + 14) = v17;
      sub_2250752E4(&dword_22506F000, v51, v52, "Synchronizing user key registry for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v14 + 8))(a10, a9);
    }

    else
    {
      v65 = *(v15 + 56);

      v66 = *(v65 + 8);
      v67 = sub_22507F210();
      v66(v67);
    }

    sub_22507E708();
    v68 = swift_task_alloc();
    *(v15 + 232) = v68;
    *v68 = v15;
    sub_22507CD80(v68);
    sub_22508D008();

    return sub_2250EBF98(v69, v70, v71, v72, v73, v74);
  }
}

uint64_t sub_2250E900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2250957E4();
  sub_2250EBCAC();
  v15 = v14[27];
  CCLog.getter();
  v16 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v14[27];
    v20 = sub_22507CA14();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_22506F000, v17, v18, "Waiting failed, proceeding with user key sync. Error: %@", v20, 0xCu);
    sub_2250D4224(v21, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  v24 = v14[27];
  v26 = v14[24];
  v25 = v14[25];
  v27 = v14[19];
  v28 = v14[12];
  v29 = v14[6];

  v25(v28, v29);
  v30 = sub_2250EBCB8();
  v26(v30);
  sub_225093434();
  if (v32)
  {
    CCLog.getter();

    v33 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250953A8();
      sub_2250971CC();
      sub_225095700();
      sub_22509494C();
      v38 = sub_22508E740(4.8151e-34, v34, v35, v36, v37);
      v39 = sub_225072DC8(v38);
      v41 = v40(v39);
      sub_2250EBDB4(v41, v42, v43, v44, v45, v46);
      sub_2250EBD08();
      *(v29 + 14) = v26;
      sub_2250752E4(&dword_22506F000, v47, v48, "Identity already acquired for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v27 + 8))(a10, a9);
    }

    else
    {

      v66 = sub_22507E440();
      v67(v66);
    }

    sub_22507C998();
    v89 = v68;

    sub_2250EBC8C();
    sub_22508D008();

    return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, v89, a11, a12, a13, a14);
  }

  else
  {
    sub_2250EBDCC(v31);

    v49 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250EBC7C();
      sub_2250971CC();
      sub_225095700();
      sub_22509494C();
      v55 = sub_22508E740(4.8151e-34, v51, v52, v53, v54);
      v56 = sub_225072DC8(v55);
      v58 = v57(v56);
      sub_2250EBDB4(v58, v59, v60, v61, v62, v63);
      sub_2250EBD08();
      *(v29 + 14) = v26;
      sub_2250752E4(&dword_22506F000, v64, v65, "Synchronizing user key registry for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v27 + 8))(a10, a9);
    }

    else
    {
      v78 = v14[7];

      v79 = *(v78 + 8);
      v80 = sub_22507F210();
      v79(v80);
    }

    sub_22507E708();
    v81 = swift_task_alloc();
    v14[29] = v81;
    *v81 = v14;
    sub_22507CD80(v81);
    sub_22508D008();

    return sub_2250EBF98(v82, v83, v84, v85, v86, v87);
  }
}

uint64_t sub_2250E93BC()
{
  sub_22507E6E8();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 240) = v0;

  v7 = *(v4 + 16);
  if (v0)
  {
    v8 = sub_2250E96C8;
  }

  else
  {
    *(v5 + 248) = v3;
    v8 = sub_2250E94EC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2250E94EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_2250957E4();
  a21 = v25;
  a22 = v26;
  sub_2250EBCAC();
  a20 = v22;
  v27 = v22[31];
  v28 = sub_2250E7C70();
  sub_2250E9A10(v27, v28);

  v29 = *(v22[2] + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8);
  if (!v29)
  {
    CCLog.getter();

    v30 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_2250EBD9C();
    v31 = sub_22509541C();
    v32 = v22[28];
    if (v31)
    {
      a10 = v22[28];
      v34 = v22[22];
      v33 = v22[23];
      v49 = v22[9];
      v35 = v22[6];
      sub_22507CA14();
      v36 = sub_225095854();
      a11 = v36;
      *v24 = 136315138;
      *(v24 + 4) = sub_225095AFC(v34, v33, &a11);
      sub_2250988F4(&dword_22506F000, v37, v23, "User key sync attempt did not acquire a current identity for %s");
      sub_225073BF0(v36);
      sub_22507C9FC();
      sub_22507C94C();

      a10(v49, v35);
    }

    else
    {

      v38 = sub_22507CC80();
      v32(v38);
    }
  }

  sub_225097DE4();
  v50 = v39;

  sub_22508D008();

  LODWORD(a10) = v29 != 0;
  return v42(v40, v41, v42, v43, v44, v45, v46, v47, v50, a10, a11, a12, a13, a14);
}

uint64_t sub_2250E96C8(uint64_t a1)
{
  v40 = v1;
  v4 = v1[30];
  CCLog.getter();

  v5 = v4;
  v6 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_2250953E0();

  v7 = os_log_type_enabled(v6, v2);
  v8 = v1[30];
  v9 = v1[28];
  if (v7)
  {
    v10 = v1[22];
    v11 = v1[23];
    v35 = v1[6];
    v37 = v1[10];
    v12 = v1[28];
    v13 = sub_2250957CC();
    v14 = swift_slowAlloc();
    v3 = sub_225082610();
    v39 = v3;
    *v13 = 136315394;
    *(v13 + 4) = sub_225095AFC(v10, v11, &v39);
    *(v13 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    sub_2250EBC9C();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    sub_2250D4224(v14, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_225073BF0(v3);
    sub_22507C94C();
    sub_22507C97C();

    v12(v37, v35);
  }

  else
  {
    v12 = v1[6];

    v22 = sub_2250EBCB8();
    v9(v22);
  }

  v23 = *(v1[2] + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8);
  if (!v23)
  {
    CCLog.getter();

    v24 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_2250EBD9C();
    v25 = sub_22509541C();
    v26 = v1[28];
    if (v25)
    {
      v38 = v1[28];
      v28 = v1[22];
      v27 = v1[23];
      v36 = v1[9];
      v29 = v1[6];
      sub_22507CA14();
      v30 = sub_225095854();
      v39 = v30;
      *v3 = 136315138;
      *(v3 + 4) = sub_225095AFC(v28, v27, &v39);
      sub_2250988F4(&dword_22506F000, v31, v12, "User key sync attempt did not acquire a current identity for %s");
      sub_225073BF0(v30);
      sub_22507C9FC();
      sub_22507C94C();

      v38(v36, v29);
    }

    else
    {

      v32 = sub_22507CC80();
      v26(v32);
    }
  }

  sub_225097DE4();

  v33 = v1[1];

  return v33(v23 != 0);
}

void sub_2250E9A10(void *a1, char a2)
{
  if (a1)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = a1;
    sub_2250EB290(v3, v5, v6);
    [objc_opt_self() sendCoreAnalyticsEventForKeySync_];
  }
}

void sub_2250E9AC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v34 - v8;
  v10 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher;
  if (!*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher))
  {
    v35 = v7;
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = objc_allocWithZone(_s15EncryptionCheckC18PCSIdentityWatcherCMa(0));

    v15 = sub_2250E2D94(v12, v11, sub_2250EB1AC, v13);
    v16 = *(v1 + v10);
    *(v1 + v10) = v15;
    v17 = v15;

    CCLog.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v34[1] = v3;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34[0] = v17;
      v23 = v22;
      v36 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_225095AFC(v12, v11, &v36);
      _os_log_impl(&dword_22506F000, v18, v19, "Registering for identity update notifications for service %s", v21, 0xCu);
      sub_225073BF0(v23);
      v24 = v23;
      v17 = v34[0];
      MEMORY[0x22AA65DF0](v24, -1, -1);
      MEMORY[0x22AA65DF0](v21, -1, -1);
    }

    v25 = *(v3 + 8);
    v26 = v35;
    v25(v9, v35);
    sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction + 24));
    v27 = v17;
    sub_2250EB4E4(v27, v12, v11, (v1 + 128));

    if (sub_2250E7C70())
    {
      CCLog.getter();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v36 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_225095AFC(v12, v11, &v36);
        _os_log_impl(&dword_22506F000, v28, v29, "Identity for %s was acquired while registering for identity updates", v30, 0xCu);
        sub_225073BF0(v31);
        MEMORY[0x22AA65DF0](v31, -1, -1);
        MEMORY[0x22AA65DF0](v30, -1, -1);

        v32 = v35;
        v33 = v6;
      }

      else
      {

        v33 = v6;
        v32 = v26;
      }

      v25(v33, v32);
      sub_2250EA174();
    }
  }
}

uint64_t sub_2250E9E78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    CCLog.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_225095AFC(v22, a2, &v23);
      _os_log_impl(&dword_22506F000, v14, v15, "Received identity update notification for service %s", v17, 0xCu);
      sub_225073BF0(v18);
      MEMORY[0x22AA65DF0](v18, -1, -1);
      MEMORY[0x22AA65DF0](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v19 = type metadata accessor for TaskPriority();
    sub_22507C8C0(v7, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v13;
    sub_2250E1D44();
  }

  return result;
}

uint64_t sub_2250EA11C()
{
  sub_225072C10();
  sub_2250EA174();
  sub_225075274();

  return v0();
}

uint64_t sub_2250EA174()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34[-v8];
  result = MEMORY[0x28223BE20](v7);
  v12 = &v34[-v11];
  v13 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) != 4)
  {
    if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher))
    {
      CCLog.getter();

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v35 = v15;
        v17 = v16;
        v36 = swift_slowAlloc();
        v38 = v36;
        *v17 = 136315394;
        *(v17 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v38);
        *(v17 + 12) = 2080;
        v37 = *(v1 + v13);
        v18 = String.init<A>(describing:)();
        v20 = v13;
        v21 = v3;
        v22 = sub_225095AFC(v18, v19, &v38);

        *(v17 + 14) = v22;
        v3 = v21;
        v13 = v20;
        _os_log_impl(&dword_22506F000, v14, v35, "Processing identity update for service %s in state %s", v17, 0x16u);
        v23 = v36;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v23, -1, -1);
        MEMORY[0x22AA65DF0](v17, -1, -1);
      }

      v24 = *(v3 + 8);
      v24(v12, v2);
      v25 = sub_2250E7C70();
      if (v25)
      {
        return sub_2250EA5D8(v25);
      }

      else
      {
        CCLog.getter();

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v38 = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v38);
          _os_log_impl(&dword_22506F000, v30, v31, "Unexpected: Received identity update notification for %s, but there is still no current identity.", v32, 0xCu);
          sub_225073BF0(v33);
          MEMORY[0x22AA65DF0](v33, -1, -1);
          MEMORY[0x22AA65DF0](v32, -1, -1);
        }

        result = (v24)(v9, v2);
        *(v1 + v13) = 3;
      }
    }

    else
    {
      CCLog.getter();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v38);
        _os_log_impl(&dword_22506F000, v26, v27, "Received identity update for %s when we are no longer registered for identity updates. Ignoring", v28, 0xCu);
        sub_225073BF0(v29);
        MEMORY[0x22AA65DF0](v29, -1, -1);
        MEMORY[0x22AA65DF0](v28, -1, -1);
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_2250EA5D8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) != 4)
  {
    *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) = 4;
    sub_2250EA67C();
    v2 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_completionCallback);
    v3 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID;
    v4 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID);
    v5 = *(v3 + 8);

    v2(v4, v5);
  }

  return v6;
}

void sub_2250EA67C()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher;
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedNotifier];
    [v5 unregisterIdentityChangeWatcher_];

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_2250EA72C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2250C7B40(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _s15EncryptionCheckC20ServiceIdentityActorC13IdentityStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s15EncryptionCheckC20ServiceIdentityActorC13IdentityStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2250EA908()
{
  result = qword_27D719230;
  if (!qword_27D719230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719230);
  }

  return result;
}

unint64_t sub_2250EA960()
{
  result = qword_27D719238;
  if (!qword_27D719238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719238);
  }

  return result;
}

void sub_2250EAA60()
{
  sub_2250C88E8();
  v1 = v0;
  v42 = type metadata accessor for PropertyDescription();
  v2 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - v5;
  v6 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507CD44(v6);
  sub_22507CA80();
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for SessionInvalidationContext();
  sub_225072D1C();
  v37 = v11;
  MEMORY[0x28223BE20](v12);
  sub_225072C00();
  sub_2250981FC(v13);
  v14 = type metadata accessor for OSLogPrivacy();
  v15 = sub_22507CD44(v14);
  MEMORY[0x28223BE20](v15);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v16 = *(v2 + 72);
  v41 = v2;
  v17 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v35 = v17 + 3 * v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225444490;
  v39 = v17;
  ObjectType = type metadata accessor for AnySessionConfiguration();
  sub_225073808(v43);
  sub_22507E428();
  (*(v19 + 16))();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v21 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account + 24);
  v20 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account + 32);
  sub_225073BAC((v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account), *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account + 24));
  v22 = (*(v20 + 8))(v21, v20);
  ObjectType = MEMORY[0x277D837D0];
  v43[0] = v22;
  v43[1] = v23;
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v24 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_applicationID);
  ObjectType = sub_2250C7F8C(0, &qword_27D719248, off_278543978);
  v43[0] = v24;
  v25 = v24;
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  sub_2250DC5C8(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_previousInvalidationContext, v9, &unk_27D718E60, &unk_225444780);
  if (sub_22507C8E8(v9, 1, v10) == 1)
  {
    sub_2250D4224(v9, &unk_27D718E60, &unk_225444780);
    v27 = v41;
    v26 = v42;
  }

  else
  {
    v29 = v36;
    v28 = v37;
    (*(v37 + 32))(v36, v9, v10);
    ObjectType = v10;
    v30 = sub_225073808(v43);
    (*(v28 + 16))(v30, v29, v10);
    static OSLogPrivacy.auto.getter();
    v31 = v38;
    PropertyDescription.init(_:_:privacy:)();
    v18 = sub_2250C7388();
    (*(v28 + 8))(v29, v10);
    *(v18 + 16) = 4;
    v27 = v41;
    v26 = v42;
    (*(v41 + 32))(v18 + v35, v31, v42);
  }

  v32 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_testDeviceReferenceProtocol);
  if (v32)
  {
    ObjectType = swift_getObjectType();
    v43[0] = v32;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v33 = v40;
    PropertyDescription.init(_:_:privacy:)();
    v34 = *(v18 + 16);
    if (v34 >= *(v18 + 24) >> 1)
    {
      v18 = sub_2250C7388();
    }

    swift_unknownObjectRelease();
    *(v18 + 16) = v34 + 1;
    (*(v27 + 32))(v18 + v39 + v34 * v16, v33, v26);
  }

  sub_2250C8920();
}

unint64_t sub_2250EAFFC()
{
  result = qword_280D53478;
  if (!qword_280D53478)
  {
    sub_2250C7B40(&qword_27D719240, &qword_225444878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53478);
  }

  return result;
}

uint64_t sub_2250EB060(uint64_t a1)
{
  result = sub_2250EB0B8(&unk_280D54840, _s15EncryptionCheckCMa, &unk_225445A80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2250EB0B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2250EB104()
{
  result = qword_280D53718;
  if (!qword_280D53718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53718);
  }

  return result;
}

unint64_t sub_2250EB158()
{
  result = qword_280D53720;
  if (!qword_280D53720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53720);
  }

  return result;
}

uint64_t sub_2250EB1B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22507DF9C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  sub_2250B0DFC(&qword_27D719298, &qword_225445B70);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v6);
  _s15EncryptionCheckC20ServiceIdentityActorCMa(0);
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

void sub_2250EB290(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x22AA62D80](a1);

  [a3 setOverallResult_];
}

uint64_t sub_2250EB2F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2250EB3E8;

  return v5(v2 + 32);
}

uint64_t sub_2250EB3E8()
{
  sub_225072C10();
  sub_225075560();
  v2 = v1;
  sub_225075614();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_225072D68();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_225075274();

  return v8();
}

void sub_2250EB4E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2250EB788(a4, &v12);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250C7F8C(0, &qword_280D53450, off_278543938);
  if (swift_dynamicCast())
  {
    v8 = [objc_opt_self() sharedNotifier];
    v9 = MEMORY[0x22AA62D80](a2, a3);
    [v8 registerIdentityChangeWatcher:a1 service:v9 account:v11];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v12 = 0xD000000000000019;
    v13 = 0x800000022547A4C0;
    sub_225073BAC(a4, a4[3]);
    swift_getDynamicType();
    v10 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v10);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_2250EB688()
{
  sub_22507CE94();
  sub_2250971A4();
  v1 = swift_task_alloc();
  v2 = sub_225075264(v1);
  *v2 = v3;
  v4 = sub_225072C3C(v2);

  return sub_2250EA0FC(v4, v5, v6, v0);
}

uint64_t sub_2250EB718(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250EB788(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_22507E428();
  (*v3)(a2);
  return a2;
}

uint64_t sub_2250EB7F4()
{
  sub_22507CE94();
  sub_2250971A4();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  sub_225072C3C(v1);

  return sub_2250E5BF0();
}

uint64_t sub_2250EB884()
{
  sub_22507E6E8();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_225075264(v4);
  *v5 = v6;
  v7 = sub_225072C3C(v5);

  return sub_2250E4DC4(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_2250EB93C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = sub_225075264(v6);
  *v7 = v8;
  v9 = sub_225072C3C(v7);

  return sub_2250E44E8(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t sub_2250EBA00()
{
  sub_22507CE94();
  sub_225093448();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v3 = sub_22507F35C(v1);

  return v4(v3);
}

uint64_t sub_2250EBA90()
{
  sub_22507CE94();
  sub_225093448();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v3 = sub_22507F35C(v1);

  return v4(v3);
}

uint64_t sub_2250EBB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250EBB90(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_2250EBBE8()
{
  sub_22507CE94();
  sub_2250971A4();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  sub_225072C3C(v1);

  return sub_2250E37F4();
}

uint64_t sub_2250EBD08()
{
}

uint64_t sub_2250EBD20(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_2250EBD3C(uint64_t a1)
{

  return sub_22507C8E8(v1, 1, a1);
}

uint64_t sub_2250EBD5C()
{
}

uint64_t sub_2250EBD7C(uint64_t a1)
{

  return AsyncStream.Continuation.yield(_:)();
}

uint64_t sub_2250EBD9C()
{
}

unint64_t sub_2250EBDB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_225095AFC(a1, a2, va);
}

uint64_t sub_2250EBDCC(uint64_t a1)
{

  return CCLog.getter();
}

uint64_t sub_2250EBDE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_2250D4724(a1, &v21);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  v6 = v20;
  v8 = [objc_opt_self() sharedManager];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_2250EC914(v20);
  if (!v11)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    sub_225072E08();
    v21 = v18;
    v22 = v17;
    sub_225073BAC(v6, v6[3]);
    swift_getDynamicType();
    v19 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v19);

    sub_22507CDBC();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v12 = sub_2250EC990(v10, v11, a2, a3, v9);
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
    v9 = v13;
  }

  else
  {

    v14 = 1;
  }

  v15 = type metadata accessor for Date();
  return sub_22507C8C0(a4, v14, 1, v15);
}

uint64_t sub_2250EBF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = sub_2250B0DFC(&qword_27D7192B0, &unk_225445C30);
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250EC06C, 0, 0);
}

uint64_t sub_2250EC06C()
{
  sub_2250D4724(v0[29], (v0 + 18));
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (!swift_dynamicCast())
  {
    v11 = v0[29];
    _StringGuts.grow(_:)(27);

    sub_225072E08();
    sub_225073BAC(v11, v11[3]);
    swift_getDynamicType();
    v12 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v12);

    sub_22507CDBC();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = v0[23];
  v0[34] = v1;
  v2 = [objc_opt_self() sharedManager];
  v0[35] = v2;
  if (v2)
  {
    v18 = v2;
    v4 = v0[27];
    v3 = v0[28];
    v17 = MEMORY[0x22AA62D80](v0[25], v0[26]);
    v0[36] = v17;
    v16 = MEMORY[0x22AA62D80](v4, v3);
    v0[37] = v16;
    v2 = sub_2250EC914(v1);
    if (v5)
    {
      v6 = v0[32];
      v7 = v0[33];
      v8 = v0[31];
      v15 = v0[30];
      v9 = MEMORY[0x22AA62D80](v2);
      v0[38] = v9;

      v14 = [v1 accountType];
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_2250EC3D4;
      swift_continuation_init();
      v0[17] = v8;
      v10 = sub_225073808(v0 + 14);
      sub_2250B0DFC(&qword_27D7192B8, &unk_225445C40);
      sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
      CheckedContinuation.init(continuation:function:)();
      (*(v6 + 32))(v10, v7, v8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2250EC624;
      v0[13] = &unk_28385B210;
      [v18 syncUserKeysForSessionAcquisitionWithService:v17 bundleID:v16 accountDSID:v9 accountType:v14 testOverrideProvider:v15 completionHandler:?];
      (*(v6 + 8))(v10, v8);
      v2 = v0 + 2;

      return MEMORY[0x282200938](v2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return MEMORY[0x282200938](v2);
}

uint64_t sub_2250EC3D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_2250EC580;
  }

  else
  {
    v2 = sub_2250EC4E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2250EC4E4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);

  v5 = *(v0 + 192);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_2250EC580(uint64_t a1)
{
  v2 = v1[38];
  v4 = v1[36];
  v3 = v1[37];
  v6 = v1[34];
  v5 = v1[35];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

void sub_2250EC624(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v7 = a2;
    sub_2250ED7BC(v5, v7);
  }

  else
  {
    v6 = a3;

    sub_2250ED8FC(v5, a3);
  }
}

id sub_2250EC6C8(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_2250D4724(a1, &v17);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (swift_dynamicCast())
  {
    v6 = objc_opt_self();
    v17 = 0;
    v7 = v16;
    v8 = sub_2250EC8A4(v16, a2, a3, &v17, v6);

    v9 = v17;
    if (v8)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v9;
    }

    else
    {
      v10 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    return v10;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    sub_225072E08();
    v17 = v14;
    v18 = v13;
    sub_225073BAC(a1, a1[3]);
    swift_getDynamicType();
    v15 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v15);

    sub_22507CDBC();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_2250EC8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x22AA62D80](a2, a3);
  v9 = [a5 currentIdentityPublicKeyIDForAccount:a1 serviceName:v8 error:a4];

  return v9;
}

uint64_t sub_2250EC914(void *a1)
{
  v1 = [a1 dsid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_2250EC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x22AA62D80](a1);

  v9 = MEMORY[0x22AA62D80](a3, a4);
  v10 = [a5 lastUserKeySyncCompletionDateForAccountDSID:v8 service:v9];

  return v10;
}

uint64_t sub_2250ECA2C()
{
  sub_2250B0DFC(&qword_27D719330, &unk_225445D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2254444A0;
  v1 = _s11DeviceCheckCMa(0);
  v2 = sub_2250ED5FC(&unk_280D54230, _s11DeviceCheckCMa, &unk_2254456A0);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = _s12AccountCheckCMa(0);
  v4 = sub_2250ED5FC(&qword_280D53E50, _s12AccountCheckCMa, &unk_225444F10);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = _s15EncryptionCheckCMa(0);
  v6 = sub_2250ED5FC(&unk_280D54840, _s15EncryptionCheckCMa, &unk_225445A80);
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = _s17DataSecurityCheckCMa(0);
  v8 = sub_2250ED5FC(&qword_280D544D0, _s17DataSecurityCheckCMa, &unk_225445318);
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  sub_2250ECBB4(inited);
  return swift_setDeallocating();
}

uint64_t sub_2250ECBB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = v38 - v5;
  v6 = type metadata accessor for SaltedHash();
  MEMORY[0x28223BE20](v6 - 8);
  v38[1] = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionInvalidationContext();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = v38 - v11;
  v12 = type metadata accessor for SessionReadinessError();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v38[0] = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = v38 - v15;
  v47 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v16 = MEMORY[0x28223BE20](v47);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = v38 - v20;
  v22 = *(a1 + 16);
  v23 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionConfiguration;
  v24 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_testDeviceReferenceProtocol;
  v48 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionAcquiredInfo;
  v25 = a1 + 40;
  v26 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_entitlements;
  if (v22)
  {
    while (1)
    {
      (*(*v25 + 32))(v2 + v23, *(v2 + v24), v2 + v48, v2 + v26);
      sub_2250ED644(v21, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      result = sub_2250ED6B4(v21);
      v25 += 16;
      if (!--v22)
      {
        return result;
      }
    }

    (*(v45 + 32))(v44, v18, v46);
    sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_225444480;
    v28 = *(v2 + OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_deviceID + 8);
    *(v27 + 32) = *(v2 + OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_deviceID);
    *(v27 + 40) = v28;

    SaltedHash.init(_:)();
    v47 = AnySessionAcquiredInfo.serviceName.getter();
    AnySessionAcquiredInfo.privilegedInfoHash.getter();
    AnySessionAcquiredInfo.userPersonaUniqueString.getter();
    v29 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    sub_22507C8C0(v40, 1, 1, v29);
    v30 = v41;
    SessionInvalidationContext.init(deviceIDHash:primaryServiceName:privilegedInfoHash:userPersonaUniqueString:keySyncRequest:)();
    v32 = v44;
    v31 = v45;
    v33 = v46;
    (*(v45 + 16))(v38[0], v44, v46);
    v35 = v42;
    v34 = v43;
    (*(v42 + 16))(v39, v30, v43);
    v36 = related decl 'e' for CKUnderlyingErrorCode.init(sessionReadinessError:invalidationContext:)();
    v37 = _convertErrorToNSError(_:)();

    [v37 CKClientSuitableError];
    swift_willThrow();
    (*(v35 + 8))(v30, v34);
    (*(v31 + 8))(v32, v33);
    return sub_2250ED6B4(v21);
  }

  return result;
}

uint64_t type metadata accessor for CKDSessionValidator(uint64_t a1)
{
  result = qword_280D53730;
  if (!qword_280D53730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2250ED290(uint64_t a1)
{
  result = type metadata accessor for AnySessionConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AnySessionAcquiredInfo();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2250ED3C0()
{
  v1 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_225444470;
  v3 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionConfiguration;
  v4 = type metadata accessor for AnySessionConfiguration();
  v11 = v4;
  v5 = sub_225073808(v10);
  (*(*(v4 - 8) + 16))(v5, v0 + v3, v4);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v6 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionAcquiredInfo;
  v7 = type metadata accessor for AnySessionAcquiredInfo();
  v11 = v7;
  v8 = sub_225073808(v10);
  (*(*(v7 - 8) + 16))(v8, v0 + v6, v7);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v2;
}

uint64_t sub_2250ED5FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2250ED644(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250ED6B4(uint64_t a1)
{
  v2 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2250ED728()
{
  result = qword_280D53640;
  if (!qword_280D53640)
  {
    type metadata accessor for Entitlements.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53640);
  }

  return result;
}

void sub_2250ED984(uint64_t a1, void *a2)
{
  v3 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    sub_2250ED7D0(v3, v4, &unk_27D718F60, &unk_225444928);
  }

  else
  {

    sub_2250ED948();
  }
}

uint64_t sub_2250EDA40()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v2 = Strong;
  v3 = [Strong processScopedClientProxy];
  v4 = [v3 clientEntitlements];

  LODWORD(v3) = [v4 hasSPIEntitlement];
  if (v3)
  {
    v5 = [objc_opt_self() sharedManager];
    v6 = [v5 globalDeviceIdentifier];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

LABEL_10:
      v16 = *(v0 + 8);

      return v16(v7, v9);
    }

LABEL_9:
    v7 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  _StringGuts.grow(_:)(50);

  v10 = [v2 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x22AA62E50](v11, v13);

  MEMORY[0x22AA62E50](0xD000000000000025, 0x800000022547AFD0);
  related decl 'e' for CKErrorCode.init(_:description:)();
  swift_willThrow();

  sub_225075274();

  return v14();
}

uint64_t sub_2250EDCF8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2250EDDA0;

  return sub_2250EDA20();
}

uint64_t sub_2250EDDA0(uint64_t a1, void *a2)
{
  v4 = v2;
  sub_225075560();
  v8 = v7;
  sub_225075614();
  *v9 = v8;
  v11 = *(v10 + 16);
  v12 = *v3;
  sub_225072D68();
  *v13 = v12;

  if (v4)
  {
    a2 = _convertErrorToNSError(_:)();

    v14 = 0;
    v15 = a2;
  }

  else if (a2)
  {
    v14 = MEMORY[0x22AA62D80](a1, a2);

    a2 = 0;
    v15 = v14;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = *(v8 + 24);
  (v16)[2](v16, v14, a2);

  _Block_release(v16);
  sub_225075274();

  return v17();
}

uint64_t sub_2250EDF30()
{
  sub_225072C10();
  v0[21] = v1;
  v0[22] = v2;
  v0[19] = v3;
  v0[20] = v4;
  v0[18] = v5;
  v6 = sub_2250B0DFC(&unk_27D718F60, &unk_225444928);
  v0[23] = v6;
  v0[24] = *(v6 - 8);
  v0[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250EE000, 0, 0);
}

uint64_t sub_2250EE000()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v7 = v1[21];
  v6 = v1[22];
  v8 = v1[19];
  v9 = v1[18];
  v15 = objc_opt_self();
  v14 = MEMORY[0x22AA62D80](v9, v8);
  v1[26] = v14;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[27] = isa;
  v11 = MEMORY[0x22AA62D80](v7, v6);
  v1[28] = v11;
  v1[2] = v1;
  v1[3] = sub_2250EE228;
  swift_continuation_init();
  v1[17] = v5;
  v12 = sub_225073808(v1 + 14);
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  CheckedContinuation.init(continuation:function:)();
  (*(v3 + 32))(v12, v4, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2250ED984;
  v1[13] = &unk_28385B2A8;
  [v15 reportWithEventType:v14 event:isa bundleIdentifier:v11 completionHandler:?];
  (*(v3 + 8))(v12, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2250EE228()
{
  sub_225072C10();
  sub_225075560();
  sub_225075614();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = sub_2250EE3A8;
  }

  else
  {
    v5 = sub_2250EE32C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2250EE32C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);

  sub_225075274();

  return v3();
}

uint64_t sub_2250EE3A8(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  sub_225075274();

  return v5();
}

uint64_t sub_2250EE4D8(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v7;
  v5[5] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v8;
  v9 = a5;
  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = sub_2250EE60C;

  return sub_2250EDF30();
}

uint64_t sub_2250EE60C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_225072D68();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2250EE7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2250EE81C, 0, 0);
}

uint64_t sub_2250EE81C()
{
  sub_225072C10();
  type metadata accessor for CKSymptomDiagnosticsReporter();
  v0[12] = CKSymptomDiagnosticsReporter.__allocating_init()();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2250EE8E0;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return MEMORY[0x28210DDC8](v9, v8, v6, v7, v4, v5, v2, v3);
}

uint64_t sub_2250EE8E0()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_225075614();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {

    sub_225075274();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2250EEA04, 0, 0);
}

uint64_t sub_2250EEA04()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_2250EEB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7, int a8, char a9)
{
  v9[2] = a7;
  v9[3] = _Block_copy(aBlock);
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v9[4] = v14;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v9[5] = v16;
  if (a3)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v27 = 0;
    v19 = 0;
  }

  v9[6] = v19;
  if (a4)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v21;
  }

  else
  {
    v20 = 0;
  }

  v9[7] = a4;
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v9[8] = v23;
  v24 = a7;
  v25 = swift_task_alloc();
  v9[9] = v25;
  *v25 = v9;
  v25[1] = sub_2250EECDC;

  return sub_2250EE7E4(v29, v15, v28, v17, v27, v19, v20, a4);
}

uint64_t sub_2250EECDC()
{
  sub_225075560();
  v3 = v2;
  sub_225075614();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_225072D68();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = *(v3 + 24);
      v11 = _convertErrorToNSError(_:)();

      (v10)[2](v10, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v12 = *(v3 + 24);
    v12[2](v12, 0);
    _Block_release(v12);
  }

  sub_225075274();

  return v13();
}

uint64_t sub_2250EEF4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225095DA4;
  v2 = sub_22507F498();

  return v3(v2);
}

uint64_t sub_2250EF018()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22507F4D4;
  v2 = sub_22507F498();

  return v3(v2);
}

uint64_t sub_2250EF0E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225095DA4;

  return sub_2250EDCF8(v2, v3);
}

void sub_2250EF194(SEL *a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = [v5 options];
  v12 = [v11 isCloudCoreSession];

  if (v12)
  {
    v13 = [v5 options];
    v14 = [v13 *a1];

    if (!v14)
    {
      __break(1u);
      return;
    }

    a2(0);
    sub_225093454();
    swift_dynamicCastClassUnconditional();
    a3();
    swift_unknownObjectRelease();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4(0);

  sub_22507C8C0(a5, v15, 1, v16);
}

uint64_t sub_2250EF2C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], &v8 - v3);
  v5 = type metadata accessor for AnySessionAcquiredInfo();
  if (sub_22507C8E8(v4, 1, v5) == 1)
  {
    sub_22507F168(v4, &unk_27D7193B0, &qword_225445E18);
    v6 = type metadata accessor for SessionInvalidationContext();
    return sub_22507C8C0(a1, 1, 1, v6);
  }

  else
  {
    AnySessionAcquiredInfo.previousInvalidationContext.getter();
    return (*(*(v5 - 8) + 8))(v4, v5);
  }
}

void sub_2250EF41C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_2250B0DFC(&qword_27D7194A0, &qword_225445E38);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Entitlements();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v1 options];
  v16 = [v15 isCloudCoreSession];

  if (!v16)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = [v1 sessionValidatorLock];
  [v17 lock];

  v18 = &off_27854F000;
  if ([v1 _sessionValidator])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_22507F168(&v53, &qword_27D718AE0, &unk_225443AA0);
    goto LABEL_4;
  }

  v53 = 0u;
  v54 = 0u;
  sub_22507F168(&v53, &qword_27D718AE0, &unk_225443AA0);
  v20 = [v1 processScopedClientProxy];
  if (!v20 || (v21 = v20, v22 = [v20 clientConnection], v21, !v22))
  {
    CKLog.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22506F000, v25, v26, "Failed to obtain client connection from the proxy. This might be due to the adopter process disappearing.", v27, 2u);
      MEMORY[0x22AA65DF0](v27, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    related decl 'e' for CKErrorCode.init(_:description:)();
    swift_willThrow();
    goto LABEL_13;
  }

  v23 = v22;
  v24 = v50;
  sub_22507369C();
  if (v24)
  {

LABEL_13:
    v28 = [v1 sessionValidatorLock];
    [v28 unlock];

    return;
  }

  sub_2250EF194(&selRef_ckSessionConfiguration, MEMORY[0x277CBBDF0], MEMORY[0x277CBBDE8], MEMORY[0x277CFAAA8], v11);
  v29 = type metadata accessor for AnySessionConfiguration();
  if (sub_22507C8E8(v11, 1, v29) == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v47 = v23;
  v50 = 0;
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v8);
  v30 = type metadata accessor for AnySessionAcquiredInfo();
  if (sub_22507C8E8(v8, 1, v30) != 1)
  {
    v31 = [v1 options];
    v46 = [v31 testDeviceReferenceProtocol];

    v32 = [v1 deviceID];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v34;
    v45 = v33;

    v43 = type metadata accessor for CKDSessionValidator(0);
    v35 = objc_allocWithZone(v43);
    v36 = v49;
    *(&v54 + 1) = v49;
    v55 = MEMORY[0x277CFA990];
    v37 = sub_225073808(&v53);
    (*(v48 + 16))(v37, v14, v36);
    v38 = *(v29 - 8);
    (*(v38 + 16))(&v35[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionConfiguration], v11, v29);
    v39 = *(v30 - 8);
    (*(v39 + 16))(&v35[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionAcquiredInfo], v8, v30);
    *&v35[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_testDeviceReferenceProtocol] = v46;
    sub_2250D4724(&v53, &v35[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_entitlements]);
    v40 = &v35[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_deviceID];
    v41 = v44;
    *v40 = v45;
    v40[1] = v41;
    v52.receiver = v35;
    v52.super_class = v43;
    v42 = objc_msgSendSuper2(&v52, sel_init);
    (*(v39 + 8))(v8, v30);
    (*(v38 + 8))(v11, v29);
    sub_225073BF0(&v53);
    [v1 set:v42 sessionValidator:?];

    (*(v48 + 8))(v14, v49);
    v18 = &off_27854F000;
LABEL_4:
    if ([v1 v18[366]])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_2250B28C8(&v51, &v53);
      type metadata accessor for CKDSessionValidator(0);
      swift_dynamicCast();
      v19 = [v1 sessionValidatorLock];
      [v19 unlock];

      return;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void *sub_2250EFBB0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v73 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v75 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v62 - v5;
  v78 = type metadata accessor for SessionInvalidationContext();
  v7 = *(v78 - 8);
  v8 = MEMORY[0x28223BE20](v78);
  v72 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v62 - v10;
  v11 = sub_2250B0DFC(&qword_27D7190C8, &unk_2254453D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  v14 = type metadata accessor for SessionReadinessError();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = &v62 - v19;
  result = [v1 sessionInvalidationError];
  if (!result)
  {
    return result;
  }

  v67 = v7;
  v79 = result;
  v71 = result;
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(92);
    MEMORY[0x22AA62E50](0xD00000000000004FLL, 0x800000022547B230);
    v50 = [v1 description];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    MEMORY[0x22AA62E50](v51, v53);

    MEMORY[0x22AA62E50](0x3A726F727265202CLL, 0xE900000000000020);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v69 = v1;
  v21 = v81;
  related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter();
  if (sub_22507C8E8(v13, 1, v14) == 1)
  {
    sub_22507F168(v13, &qword_27D7190C8, &unk_2254453D0);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(115);
    MEMORY[0x22AA62E50](0xD000000000000066, 0x800000022547B280);
    v54 = [v69 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    MEMORY[0x22AA62E50](v55, v57);

    MEMORY[0x22AA62E50](0x3A726F727265202CLL, 0xE900000000000020);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    goto LABEL_13;
  }

  v70 = v2;
  v22 = v76;
  (*(v15 + 32))(v76, v13, v14);
  v68 = v21;
  related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter();
  v23 = v78;
  v24 = sub_22507C8E8(v6, 1, v78);
  v74 = v14;
  if (v24 == 1)
  {
    sub_22507F168(v6, &unk_27D718E60, &unk_225444780);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(113);
    MEMORY[0x22AA62E50](0xD000000000000064, 0x800000022547B2F0);
    v58 = [v69 description];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    MEMORY[0x22AA62E50](v59, v61);

    MEMORY[0x22AA62E50](0x3A726F727265202CLL, 0xE900000000000020);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    goto LABEL_13;
  }

  v25 = v67;
  v26 = v77;
  (*(v67 + 32))(v77, v6, v23);
  CKLog.getter();
  v65 = *(v15 + 16);
  v65(v18, v22, v74);
  v27 = v72;
  (*(v25 + 16))(v72, v26, v23);
  v28 = v69;
  v29 = Logger.logObject.getter();
  LODWORD(v26) = static os_log_type_t.default.getter();

  v66 = v26;
  if (os_log_type_enabled(v29, v26))
  {
    v30 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v79 = v64;
    *v30 = 138412802;
    sub_2250F4D28(&qword_280D53600, MEMORY[0x277CFAA78], MEMORY[0x277CFAA80]);
    v31 = v74;
    swift_allocError();
    v63 = v29;
    v65(v32, v18, v31);
    v33 = _swift_stdlib_bridgeErrorToNSError();
    v69 = *(v15 + 8);
    (v69)(v18, v31);
    *(v30 + 4) = v33;
    v34 = v62;
    *v62 = v33;
    *(v30 + 12) = 2080;
    sub_2250F4D28(&qword_280D535E8, MEMORY[0x277CFAAE8], MEMORY[0x277CFAAF0]);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v27;
    v37 = v35;
    v39 = v38;
    v40 = *(v25 + 8);
    v40(v36, v78);
    v41 = v40;
    v42 = sub_225095AFC(v37, v39, &v79);

    *(v30 + 14) = v42;
    *(v30 + 22) = 2112;
    *(v30 + 24) = v28;
    v34[1] = v28;
    v43 = v28;
    v44 = v63;
    _os_log_impl(&dword_22506F000, v63, v66, "Container is already invalid due to an earlier error %@ with invalidationContext %s: %@", v30, 0x20u);
    sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v34, -1, -1);
    v45 = v64;
    sub_225073BF0(v64);
    MEMORY[0x22AA65DF0](v45, -1, -1);
    v46 = v30;
    v23 = v78;
    MEMORY[0x22AA65DF0](v46, -1, -1);

    (*(v73 + 8))(v75, v70);
    v47 = v74;
  }

  else
  {

    v48 = *(v25 + 8);
    v48(v27, v23);
    v41 = v48;
    v47 = v74;
    v69 = *(v15 + 8);
    (v69)(v18, v74);
    (*(v73 + 8))(v75, v70);
  }

  v49 = v68;
  swift_willThrow();

  v41(v77, v23);
  return (v69)(v76, v47);
}

void sub_2250F05F8(void *a1)
{
  v4 = v1;
  type metadata accessor for Logger();
  sub_225072D1C();
  v172 = v7;
  v173 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22507CD30();
  v163 = v8;
  sub_22507C940();
  MEMORY[0x28223BE20](v9);
  sub_22507E6C4();
  v170 = v10;
  sub_22507C940();
  MEMORY[0x28223BE20](v11);
  sub_22508D024();
  v161 = v12;
  v13 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v14 = sub_22507CD44(v13);
  MEMORY[0x28223BE20](v14);
  sub_22507CD30();
  v158 = v15;
  sub_22507C940();
  MEMORY[0x28223BE20](v16);
  sub_22507E450();
  type metadata accessor for SessionInvalidationContext();
  sub_225072D1C();
  v168 = v18;
  v169 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22507CD30();
  v162 = v19;
  sub_22507C940();
  MEMORY[0x28223BE20](v20);
  sub_22507E6C4();
  v171 = v21;
  sub_22507C940();
  MEMORY[0x28223BE20](v22);
  sub_22507E6C4();
  v165 = v23;
  sub_22507C940();
  MEMORY[0x28223BE20](v24);
  sub_22508D024();
  v167 = v25;
  v26 = sub_2250B0DFC(&qword_27D7190C8, &unk_2254453D0);
  v27 = sub_22507CD44(v26);
  MEMORY[0x28223BE20](v27);
  sub_22507F304();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v156 - v32;
  v174 = type metadata accessor for SessionReadinessError();
  sub_225072D1C();
  v164 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22507CD30();
  isa = v36;
  sub_22507C940();
  MEMORY[0x28223BE20](v37);
  sub_22507E6C4();
  v39 = v38;
  sub_22507C940();
  MEMORY[0x28223BE20](v40);
  sub_22507E6C4();
  v160 = v41;
  sub_22507C940();
  MEMORY[0x28223BE20](v42);
  sub_22508D024();
  v166 = v43;
  v44 = [v1 options];
  v45 = [v44 isCloudCoreSession];

  if (!v45)
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_2250EFBB0();
  if (v2)
  {
    return;
  }

  v45 = v4;
  v175[0] = a1;
  sub_2250F4CE4();
  type metadata accessor for CKUnderlyingError(0);
  v47 = v46;
  v48 = a1;
  sub_225095800();
  if (swift_dynamicCast())
  {
    v4 = v176;
    v175[0] = v176;
    sub_2250F4D28(&unk_280D53540, type metadata accessor for CKUnderlyingError, &unk_22544426C);
    v157 = v47;
    _BridgedStoredNSError.code.getter();
    v49 = v174;
    if (v176 == 12000)
    {
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionReadinessError.getter();
      sub_2250F4D70(v33, 1, v49);
      v50 = v164;
      if (!v51)
      {
        v170 = v45;
        v52 = v166;
        (v164[4].isa)(v166, v33, v49);
        v171 = v4;
        related decl 'e' for CKUnderlyingErrorCode.underlyingSessionInvalidationContext.getter();
        v53 = sub_22509537C();
        v54 = v169;
        sub_2250F4D70(v53, v55, v169);
        if (!v51)
        {
          v56 = v167;
          v57 = v3;
          v58 = v168;
          (*(v168 + 32))(v167, v57, v54);
          v59 = v161;
          CKLog.getter();
          v60 = v160;
          isa = v50[2].isa;
          isa(v160, v52, v174);
          (*(v58 + 16))(v165, v56, v54);
          v61 = v170;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();
          v163 = v61;

          LODWORD(v162) = v63;
          if (os_log_type_enabled(v62, v63))
          {
            sub_22507CCD4();
            v64 = v54;
            v65 = v58;
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            sub_22507CCD4();
            v158 = swift_slowAlloc();
            v175[0] = v158;
            *v66 = 138412802;
            sub_22507CBF0();
            sub_2250F4D28(v68, v69, MEMORY[0x277CFAA80]);
            v157 = v62;
            v70 = v174;
            sub_225093454();
            swift_allocError();
            isa(v71, v60, v70);
            v72 = _swift_stdlib_bridgeErrorToNSError();
            v73 = sub_22508D0F8();
            v74(v73, v70);
            *(v66 + 4) = v72;
            *v67 = v72;
            v75 = v67;
            *(v66 + 12) = 2080;
            sub_22507CED0();
            sub_2250F4D28(v76, v77, MEMORY[0x277CFAAF0]);
            v78 = v165;
            v79 = dispatch thunk of CustomStringConvertible.description.getter();
            v81 = v80;
            v82 = v78;
            v83 = *(v65 + 8);
            v83(v82, v64);
            v84 = sub_225095AFC(v79, v81, v175);
            v85 = v174;

            *(v66 + 14) = v84;
            *(v66 + 22) = 2112;
            v86 = v163;
            *(v66 + 24) = v163;
            v75[1] = v86;
            v87 = v86;
            v88 = v157;
            _os_log_impl(&dword_22506F000, v157, v162, "Container has become invalid due to %@ with invalidationContext %s: %@", v66, 0x20u);
            sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
            swift_arrayDestroy();
            sub_225072C54();
            MEMORY[0x22AA65DF0]();
            sub_225073BF0(v158);
            sub_225072C54();
            MEMORY[0x22AA65DF0]();
            sub_225072C54();
            MEMORY[0x22AA65DF0]();

            sub_22507F274();
            v89(v161);
            v90 = v64;
          }

          else
          {

            v83 = *(v58 + 8);
            v83(v165, v54);
            v134 = sub_22508D0F8();
            v85 = v174;
            v135(v134, v174);
            sub_22507F274();
            v136(v59);
            v90 = v54;
          }

          v137 = v171;
          v138 = _convertErrorToNSError(_:)();

          v139 = [v138 CKClientSuitableError];
          v83(v167, v90);
          (v164)(v166, v85);
LABEL_25:
          v143 = v139;
          v144 = _convertErrorToNSError(_:)();
          [v170 setSessionInvalidationError_];

          sub_2250F15F4();
          swift_willThrow();

          return;
        }

        sub_22507F168(v3, &unk_27D718E60, &unk_225444780);
        sub_22507F8E0();
        _StringGuts.grow(_:)(110);
        sub_225095870();
        sub_225097E00();
        v148 = [v170 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_2250981BC();
        v149 = sub_225093C14();
        MEMORY[0x22AA62E50](v149);

        sub_225072C60();
        v176 = v171;
        _print_unlocked<A, B>(_:_:)();
        sub_22507E73C();
        v147 = 99;
        goto LABEL_32;
      }

LABEL_28:
      sub_22507F168(v33, &qword_27D7190C8, &unk_2254453D0);
      sub_22507F8E0();
      _StringGuts.grow(_:)(112);
      sub_225095870();
      sub_22507558C();
      v145 = [v45 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_2250981BC();
      v146 = sub_225093C14();
      MEMORY[0x22AA62E50](v146);

      sub_225072C60();
      v176 = v4;
      _print_unlocked<A, B>(_:_:)();
      sub_22507E73C();
      v147 = 96;
      goto LABEL_32;
    }

    v91 = v49;
  }

  else
  {
    v91 = v174;
  }

  v175[0] = a1;
  type metadata accessor for CKError(0);
  v92 = a1;
  sub_225095800();
  v93 = swift_dynamicCast();
  v94 = v171;
  if (v93)
  {
    v95 = v176;
    v175[0] = v176;
    sub_2250F4D28(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);
    _BridgedStoredNSError.code.getter();
    if (v176 == 170)
    {
      related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter();
      sub_2250F4D70(v30, 1, v91);
      if (v51)
      {
        sub_22507F168(v30, &qword_27D7190C8, &unk_2254453D0);
        v175[0] = 0;
        v175[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(112);
        sub_225095870();
        sub_22507558C();
        v150 = [v45 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_2250981BC();
        v151 = sub_225093C14();
        MEMORY[0x22AA62E50](v151);

        sub_225072C60();
        v152 = related decl 'e' for CKErrorCode.description.getter();
        MEMORY[0x22AA62E50](v152);

        sub_22507E73C();
        v147 = 105;
      }

      else
      {
        v96 = v164;
        (v164[4].isa)(v39, v30, v91);
        v97 = v158;
        v166 = v95;
        related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter();
        v98 = v169;
        sub_2250F4D70(v97, 1, v169);
        v99 = v168;
        v167 = v39;
        if (!v51)
        {
          (*(v168 + 32))(v94, v97, v98);
          CKLog.getter();
          v100 = isa;
          v165 = v96[2].isa;
          (v165)(isa, v167, v91);
          (*(v99 + 16))(v162, v94, v98);
          v170 = v45;
          v101 = v98;
          v102 = v45;
          v103 = v96;
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v104, v105))
          {
            sub_22507CCD4();
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            LODWORD(v160) = v105;
            v158 = v107;
            sub_22507CCD4();
            v161 = swift_slowAlloc();
            v175[0] = v161;
            *v106 = 138412802;
            sub_22507CBF0();
            sub_2250F4D28(v108, v109, MEMORY[0x277CFAA80]);
            sub_225093454();
            swift_allocError();
            (v165)(v110, v100, v91);
            v111 = _swift_stdlib_bridgeErrorToNSError();
            v165 = v103[1].isa;
            v165(v100, v91);
            *(v106 + 4) = v111;
            v112 = v158;
            *v158 = v111;
            *(v106 + 12) = 2080;
            sub_22507CED0();
            sub_2250F4D28(v113, v114, MEMORY[0x277CFAAF0]);
            v115 = v162;
            v116 = dispatch thunk of CustomStringConvertible.description.getter();
            v164 = v104;
            v117 = v116;
            v119 = v118;
            v120 = *(v168 + 8);
            v120(v115, v101);
            v121 = sub_225095AFC(v117, v119, v175);

            *(v106 + 14) = v121;
            *(v106 + 22) = 2112;
            *(v106 + 24) = v102;
            v112[1] = v102;
            v122 = v102;
            v123 = v164;
            _os_log_impl(&dword_22506F000, v164, v160, "Container has become invalid due to %@ with invalidationContext %s: %@", v106, 0x20u);
            sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
            swift_arrayDestroy();
            sub_225072C54();
            MEMORY[0x22AA65DF0]();
            sub_225073BF0(v161);
            sub_225072C54();
            MEMORY[0x22AA65DF0]();
            sub_225072C54();
            MEMORY[0x22AA65DF0]();

            sub_22507F274();
            v124(v163);
            v120(v171, v169);
            v165(v167, v174);
          }

          else
          {

            v140 = *(v99 + 8);
            v140(v162, v101);
            v141 = v103[1].isa;
            v141(v100, v91);
            sub_22507F274();
            v142(v163);
            v140(v171, v101);
            v141(v167, v91);
          }

          v139 = v166;
          goto LABEL_25;
        }

        sub_22507F168(v97, &unk_27D718E60, &unk_225444780);
        sub_22507F8E0();
        _StringGuts.grow(_:)(110);
        sub_225095870();
        sub_225097E00();
        v153 = [v45 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_2250981BC();
        v154 = sub_225093C14();
        MEMORY[0x22AA62E50](v154);

        sub_225072C60();
        v155 = related decl 'e' for CKErrorCode.description.getter();
        MEMORY[0x22AA62E50](v155);

        sub_22507E73C();
        v147 = 108;
      }

LABEL_32:
      v156 = v147;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

  CKLog.getter();
  v125 = a1;
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v128 = 138412290;
    *(v128 + 4) = v125;
    *v129 = v125;
    v130 = v125;
    _os_log_impl(&dword_22506F000, v126, v127, "Expected a session invalidation error, got: %@", v128, 0xCu);
    sub_22507F168(v129, &unk_27D719030, &qword_225443AB0);
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
  }

  v131 = sub_225075620();
  v132(v131);
  swift_willThrow();
  v133 = v125;
}

void sub_2250F15F4()
{
  v1 = type metadata accessor for Logger();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnySessionAcquiredInfo();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v0 options];
  v16 = [v15 ckSessionAcquiredInfo];

  if (v16)
  {
    type metadata accessor for CKSessionAcquiredInfo();
    v35 = v16;
    swift_dynamicCastClassUnconditional();
    CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
    v17 = *MEMORY[0x277CBC8B8];
    AnySessionAcquiredInfo.sessionID.getter();
    SessionID.uuid.getter();
    (*(v9 + 8))(v11, v8);
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v5 + 8))(v7, v4);
    v21 = MEMORY[0x22AA62D80](v18, v20);

    v22 = CKNotificationKey();

    v23 = v22;
    if (!v22)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = MEMORY[0x22AA62D80](v24);
    }

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    CKLog.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315138;
      v32 = sub_225095AFC(v25, v27, &v40);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_22506F000, v28, v29, "Posting session invalidation notification for key: %s", v30, 0xCu);
      sub_225073BF0(v31);
      MEMORY[0x22AA65DF0](v31, -1, -1);
      MEMORY[0x22AA65DF0](v30, -1, -1);
    }

    else
    {
    }

    (*(v38 + 8))(v3, v39);
    v33 = [v23 UTF8String];
    v34 = v23;
    notify_post(v33);
    swift_unknownObjectRelease();
    (*(v36 + 8))(v14, v37);
  }

  else
  {
    __break(1u);
  }
}

void sub_2250F1B30(uint64_t a1)
{
  v50 = a1;
  v55[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for SessionReadinessError();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = v44 - v7;
  v8 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v44 - v15;
  v17 = type metadata accessor for SaltedHash();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = type metadata accessor for SessionInvalidationContext();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v47 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v49 = v44 - v21;
  v54 = v1;
  v22 = [v1 options];
  v23 = [v22 isCloudCoreSession];

  if (!v23)
  {
    __break(1u);
    goto LABEL_9;
  }

  v45 = v5;
  v46 = v3;
  v44[1] = v2;
  sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_225444480;
  v25 = [v54 deviceID];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  SaltedHash.init(_:)();
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v16);
  v29 = type metadata accessor for AnySessionAcquiredInfo();
  if (sub_22507C8E8(v16, 1, v29) == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v30 = AnySessionAcquiredInfo.serviceName.getter();
  v44[2] = v31;
  v44[3] = v30;
  v32 = *(*(v29 - 8) + 8);
  v32(v16, v29);
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v14);
  if (sub_22507C8E8(v14, 1, v29) == 1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  AnySessionAcquiredInfo.privilegedInfoHash.getter();
  v32(v14, v29);
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v11);
  if (sub_22507C8E8(v11, 1, v29) == 1)
  {
    goto LABEL_11;
  }

  AnySessionAcquiredInfo.userPersonaUniqueString.getter();
  v32(v11, v29);
  v33 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v34 = v48;
  (*(*(v33 - 8) + 16))(v48, v50, v33);
  sub_22507C8C0(v34, 0, 1, v33);
  v35 = v49;
  SessionInvalidationContext.init(deviceIDHash:primaryServiceName:privilegedInfoHash:userPersonaUniqueString:keySyncRequest:)();
  (*(v53 + 104))(v45, *MEMORY[0x277CFAA50], v46);
  v37 = v51;
  v36 = v52;
  (*(v51 + 16))(v47, v35, v52);
  v38 = related decl 'e' for CKUnderlyingErrorCode.init(sessionReadinessError:invalidationContext:)();
  v39 = _convertErrorToNSError(_:)();
  v55[0] = 0;
  v40 = [v54 noteSessionInvalidationError:v39 error:v55];

  if (v40)
  {
    v41 = *(v37 + 8);
    v42 = v55[0];
    v41(v35, v36);
  }

  else
  {
    v43 = v55[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v37 + 8))(v35, v36);
  }
}