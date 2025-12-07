uint64_t sub_10002C89C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a4;
  v91 = a8;
  v88 = a2;
  v89 = a6;
  v85 = a1;
  v82 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v11 = __chkstk_darwin(v82);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v74 - v15;
  v17 = __chkstk_darwin(v14);
  v80 = &v74 - v18;
  v19 = __chkstk_darwin(v17);
  v81 = &v74 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v74 - v22;
  __chkstk_darwin(v21);
  v25 = &v74 - v24;
  v92 = type metadata accessor for Logger();
  v26 = *(v92 - 8);
  v27 = __chkstk_darwin(v92);
  v87 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v74 - v29;
  v31 = [objc_opt_self() currentConnection];
  v83 = a3;
  v84 = a5;
  v86 = v23;
  if (v31)
  {
    v32 = v31;
    v33 = [v31 processIdentifier];
  }

  else
  {
    v33 = 0;
  }

  static Logger.agent.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67240192;
    *(v36 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Remove received from process %{public}d", v36, 8u);
  }

  v37 = *(v26 + 8);
  v37(v30, v92);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      *&v94 = 0;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v94)
      {
        v38 = v94;
        v79 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
        sub_100028434(0xD000000000000028, 0x8000000100069A60, &v94);
        if (v95)
        {
          v39 = swift_dynamicCast();
          v40 = v86;
          if (v39)
          {
            LODWORD(v85) = v93;
          }

          else
          {
            LODWORD(v85) = 0;
          }
        }

        else
        {
          sub_100008630(&v94, &unk_10007B3F0, &unk_100066D70);
          LODWORD(v85) = 0;
          v40 = v86;
        }

        static Logger.persistenceRecordStore.getter();
        sub_100006754(v88, v40, &unk_10007B400, &unk_100066D80);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        v77 = v51;
        v78 = v50;
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v94 = v75;
          *v52 = 136447234;
          v53 = Set.description.getter();
          v76 = v38;
          v55 = sub_100001ED8(v53, v54, &v94);

          *(v52 + 4) = v55;
          *(v52 + 12) = 2082;
          v56 = v86;
          sub_100006754(v86, v81, &unk_10007B400, &unk_100066D80);
          v57 = String.init<A>(describing:)();
          v59 = v58;
          sub_100008630(v56, &unk_10007B400, &unk_100066D80);
          v60 = sub_100001ED8(v57, v59, &v94);

          *(v52 + 14) = v60;
          *(v52 + 22) = 2082;
          *(v52 + 24) = sub_100001ED8(v83, v90, &v94);
          *(v52 + 32) = 2082;
          *(v52 + 34) = sub_100001ED8(v84, v89, &v94);
          *(v52 + 42) = 2082;
          if (v85)
          {
            v61 = 7562585;
          }

          else
          {
            v61 = 28494;
          }

          if (v85)
          {
            v62 = 0xE300000000000000;
          }

          else
          {
            v62 = 0xE200000000000000;
          }

          v63 = sub_100001ED8(v61, v62, &v94);

          *(v52 + 44) = v63;
          v38 = v76;
          v64 = v90;
          v65 = v78;
          _os_log_impl(&_mh_execute_header, v78, v77, "Remove values for settings %{public}s for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v52, 0x34u);
          swift_arrayDestroy();

          v37(v87, v92);
          v66 = v83;
          v67 = v89;
        }

        else
        {

          sub_100008630(v86, &unk_10007B400, &unk_100066D80);
          v37(v87, v92);
          v66 = v83;
          v67 = v89;
          v64 = v90;
        }

        v68 = sub_100006278(_swiftEmptyArrayStorage);
        v69 = sub_100006278(_swiftEmptyArrayStorage);
        sub_1000395A4(v68, v38, v69, 0, v88, v66, v64, v84, v25, v67, v85);

        v70 = v80;
        sub_100006754(v25, v80, &unk_10007B400, &unk_100066D80);
        v71 = type metadata accessor for UUID();
        v72 = *(v71 - 8);
        isa = 0;
        if ((*(v72 + 48))(v70, 1, v71) != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v72 + 8))(v70, v71);
        }

        (*(v91 + 16))(v91, isa, 0);

        return sub_100008630(v25, &unk_10007B400, &unk_100066D80);
      }

      sub_100031408();
      swift_allocError();
      *v43 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v42 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v41 = 2;
  }

  swift_willThrow();
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  (*(v45 + 56))(v16, 1, 1, v44);
  sub_100006754(v16, v13, &unk_10007B400, &unk_100066D80);
  v46 = (*(v45 + 48))(v13, 1, v44);
  swift_errorRetain();
  v47 = 0;
  if (v46 != 1)
  {
    v47 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v45 + 8))(v13, v44);
  }

  v48 = _convertErrorToNSError(_:)();
  (*(v91 + 16))(v91, v47, v48);

  v25 = v16;
  return sub_100008630(v25, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_10002D270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v88 = a7;
  v84 = a3;
  v85 = a4;
  v86 = a1;
  v80 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = __chkstk_darwin(v80);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v87 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v78 = &v72 - v16;
  v17 = __chkstk_darwin(v15);
  v79 = &v72 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v72 - v20;
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  v89 = type metadata accessor for Logger();
  v24 = *(v89 - 8);
  v25 = __chkstk_darwin(v89);
  v81 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v72 - v27;
  v29 = [objc_opt_self() currentConnection];
  v82 = a5;
  v83 = a2;
  if (v29)
  {
    v30 = v29;
    v31 = [v29 processIdentifier];
  }

  else
  {
    v31 = 0;
  }

  static Logger.agent.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67240192;
    *(v34 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "clear all received from process %{public}d", v34, 8u);
  }

  v35 = *(v24 + 8);
  v35(v28, v89);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      v76 = *(a6 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
      sub_100028434(0xD000000000000028, 0x8000000100069A60, &v91);
      if (v92)
      {
        v36 = swift_dynamicCast();
        v37 = v84;
        v38 = v81;
        if (v36)
        {
          v39 = v90;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        sub_100008630(&v91, &unk_10007B3F0, &unk_100066D70);
        v39 = 0;
        v37 = v84;
        v38 = v81;
      }

      v75 = v39;
      static Logger.persistenceRecordStore.getter();
      sub_100006754(v86, v21, &unk_10007B400, &unk_100066D80);

      v49 = v82;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      v74 = v51;
      v77 = v50;
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v91 = v73;
        *v52 = 136446978;
        sub_100006754(v21, v79, &unk_10007B400, &unk_100066D80);
        v53 = String.init<A>(describing:)();
        v55 = v54;
        sub_100008630(v21, &unk_10007B400, &unk_100066D80);
        v56 = sub_100001ED8(v53, v55, &v91);
        v37 = v84;

        *(v52 + 4) = v56;
        *(v52 + 12) = 2082;
        *(v52 + 14) = sub_100001ED8(v83, v37, &v91);
        *(v52 + 22) = 2082;
        v57 = v82;
        *(v52 + 24) = sub_100001ED8(v85, v82, &v91);
        *(v52 + 32) = 2082;
        v58 = v75;
        if (v75)
        {
          v59 = 7562585;
        }

        else
        {
          v59 = 28494;
        }

        if (v75)
        {
          v60 = 0xE300000000000000;
        }

        else
        {
          v60 = 0xE200000000000000;
        }

        v61 = sub_100001ED8(v59, v60, &v91);

        *(v52 + 34) = v61;
        v62 = v57;
        v63 = v77;
        _os_log_impl(&_mh_execute_header, v77, v74, "Clear all settings for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v52, 0x2Au);
        swift_arrayDestroy();

        v35(v81, v89);
        v64 = v85;
        v65 = v83;
      }

      else
      {

        sub_100008630(v21, &unk_10007B400, &unk_100066D80);
        v35(v38, v89);
        v64 = v85;
        v65 = v83;
        v58 = v75;
        v62 = v49;
      }

      v66 = sub_100006278(_swiftEmptyArrayStorage);
      v67 = sub_100006278(_swiftEmptyArrayStorage);
      sub_1000395A4(v66, &_swiftEmptySetSingleton, v67, 1, v86, v65, v37, v64, v23, v62, v58);

      v68 = v78;
      sub_100006754(v23, v78, &unk_10007B400, &unk_100066D80);
      v69 = type metadata accessor for UUID();
      v70 = *(v69 - 8);
      isa = 0;
      if ((*(v70 + 48))(v68, 1, v69) != 1)
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v70 + 8))(v68, v69);
      }

      (*(v88 + 16))(v88, isa, 0);

      return sub_100008630(v23, &unk_10007B400, &unk_100066D80);
    }

    sub_100031408();
    swift_allocError();
    *v41 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v40 = 2;
  }

  swift_willThrow();
  v42 = type metadata accessor for UUID();
  v43 = *(v42 - 8);
  v44 = v87;
  (*(v43 + 56))(v87, 1, 1, v42);
  sub_100006754(v44, v12, &unk_10007B400, &unk_100066D80);
  v45 = (*(v43 + 48))(v12, 1, v42);
  swift_errorRetain();
  v46 = 0;
  if (v45 != 1)
  {
    v46 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v43 + 8))(v12, v42);
  }

  v47 = _convertErrorToNSError(_:)();
  (*(v88 + 16))(v88, v46, v47);

  v23 = v44;
  return sub_100008630(v23, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_10002DB84(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v45 = a2;
  v46 = a3;
  v47 = a1;
  v9 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v43 - v14;
  v16 = __chkstk_darwin(v13);
  v44 = v43 - v17;
  __chkstk_darwin(v16);
  v19 = v43 - v18;
  v49 = type metadata accessor for Logger();
  v20 = *(v49 - 8);
  __chkstk_darwin(v49);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    v48 = [v23 processIdentifier];
  }

  else
  {
    v48 = 0;
  }

  static Logger.agent.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43[1] = a5;
    *v27 = 67240192;
    *(v27 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v25, v26, "delete stores received from process %{public}d", v27, 8u);
  }

  (*(v20 + 8))(v22, v49);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      *&v51 = 0;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();
      v28 = v51;
      if (v51)
      {
        sub_100028434(0xD000000000000028, 0x8000000100069A60, &v51);
        if (v52)
        {
          if (swift_dynamicCast())
          {
            v29 = v50;
LABEL_21:
            sub_10003786C(v28, v45, v46, a4, v29, v19);

            v39 = v44;
            sub_100006754(v19, v44, &unk_10007B400, &unk_100066D80);
            v40 = type metadata accessor for UUID();
            v41 = *(v40 - 8);
            isa = 0;
            if ((*(v41 + 48))(v39, 1, v40) != 1)
            {
              isa = UUID._bridgeToObjectiveC()().super.isa;
              (*(v41 + 8))(v39, v40);
            }

            (*(a6 + 16))(a6, isa, 0);

            return sub_100008630(v19, &unk_10007B400, &unk_100066D80);
          }
        }

        else
        {
          sub_100008630(&v51, &unk_10007B3F0, &unk_100066D70);
        }

        v29 = 0;
        goto LABEL_21;
      }

      sub_100031408();
      swift_allocError();
      *v32 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v31 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v30 = 2;
  }

  swift_willThrow();
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v15, 1, 1, v33);
  sub_100006754(v15, v12, &unk_10007B400, &unk_100066D80);
  v35 = (*(v34 + 48))(v12, 1, v33);
  swift_errorRetain();
  v36 = 0;
  if (v35 != 1)
  {
    v36 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v34 + 8))(v12, v33);
  }

  v37 = _convertErrorToNSError(_:)();
  (*(a6 + 16))(a6, v36, v37);

  v19 = v15;
  return sub_100008630(v19, &unk_10007B400, &unk_100066D80);
}

void sub_10002E1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = a8;
  v29 = a1;
  v30 = a2;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() currentConnection];
  if (v17)
  {
    v18 = v17;
    v31 = [v17 processIdentifier];
  }

  else
  {
    v31 = 0;
  }

  static Logger.agent.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v28 = v13;
    *v21 = 67240192;
    *(v21 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, v32, v21, 8u);
    v13 = v28;
  }

  (*(v14 + 8))(v16, v13);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      sub_100028434(0xD000000000000028, 0x8000000100069A60, &v34);
      if (v35)
      {
        if (swift_dynamicCast())
        {
          v22 = v33;
LABEL_17:
          a9(v29, v30, a3, a4, a5, v22);
          sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          (*(a7 + 16))(a7, isa, 0);

          return;
        }
      }

      else
      {
        sub_100008630(&v34, &unk_10007B3F0, &unk_100066D70);
      }

      v22 = 0;
      goto LABEL_17;
    }

    sub_100031408();
    swift_allocError();
    *v24 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v23 = 2;
  }

  swift_willThrow();
  swift_errorRetain();
  v25 = _convertErrorToNSError(_:)();
  (*(a7 + 16))(a7, 0, v25);
}

uint64_t sub_10002E58C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a4;
  v94 = a8;
  v91 = a6;
  v92 = a2;
  v86 = a5;
  v88 = a1;
  v85 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = __chkstk_darwin(v85);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v78 - v14;
  v16 = __chkstk_darwin(v13);
  v83 = v78 - v17;
  v18 = __chkstk_darwin(v16);
  v84 = v78 - v19;
  v20 = __chkstk_darwin(v18);
  v89 = v78 - v21;
  __chkstk_darwin(v20);
  v23 = v78 - v22;
  v95 = type metadata accessor for Logger();
  v24 = *(v95 - 8);
  v25 = __chkstk_darwin(v95);
  v90 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = v78 - v27;
  v29 = [objc_opt_self() currentConnection];
  v87 = a3;
  if (v29)
  {
    v30 = v29;
    v31 = [v29 processIdentifier];
  }

  else
  {
    v31 = 0;
  }

  static Logger.agent.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67240192;
    *(v34 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "set store properties received from process %{public}d", v34, 8u);
  }

  v35 = *(v24 + 8);
  v35(v28, v95);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      *&v97 = 0;
      v36 = sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v97)
      {
        v78[1] = v36;
        v88 = v97;
        v82 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
        sub_100028434(0xD000000000000028, 0x8000000100069A60, &v97);
        if (v98)
        {
          v37 = swift_dynamicCast();
          v38 = v93;
          v39 = v91;
          v40 = v89;
          if (v37)
          {
            v41 = v96;
          }

          else
          {
            v41 = 0;
          }
        }

        else
        {
          sub_100008630(&v97, &unk_10007B3F0, &unk_100066D70);
          v41 = 0;
          v38 = v93;
          v39 = v91;
          v40 = v89;
        }

        v81 = v41;
        static Logger.persistenceRecordStore.getter();
        sub_100006754(v92, v40, &unk_10007B400, &unk_100066D80);
        v51 = v88;

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        v79 = v53;
        v80 = v52;
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v78[0] = swift_slowAlloc();
          *&v97 = v78[0];
          *v54 = 136316162;
          v55 = Dictionary.description.getter();
          v57 = sub_100001ED8(v55, v56, &v97);
          v58 = v89;
          v59 = v57;

          *(v54 + 4) = v59;
          *(v54 + 12) = 2082;
          sub_100006754(v58, v84, &unk_10007B400, &unk_100066D80);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          sub_100008630(v58, &unk_10007B400, &unk_100066D80);
          v63 = sub_100001ED8(v60, v62, &v97);

          *(v54 + 14) = v63;
          *(v54 + 22) = 2082;
          *(v54 + 24) = sub_100001ED8(v87, v93, &v97);
          *(v54 + 32) = 2082;
          v64 = v86;
          *(v54 + 34) = sub_100001ED8(v86, v91, &v97);
          *(v54 + 42) = 2082;
          v65 = v81;
          if (v81)
          {
            v66 = 7562585;
          }

          else
          {
            v66 = 28494;
          }

          if (v81)
          {
            v67 = 0xE300000000000000;
          }

          else
          {
            v67 = 0xE200000000000000;
          }

          v68 = sub_100001ED8(v66, v67, &v97);

          *(v54 + 44) = v68;
          v69 = v80;
          _os_log_impl(&_mh_execute_header, v80, v79, "Update store properties %s for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v54, 0x34u);
          swift_arrayDestroy();

          v39 = v91;
          v38 = v93;

          v70 = v87;
          v35(v90, v95);
          v71 = v64;
          v72 = v88;
        }

        else
        {

          sub_100008630(v89, &unk_10007B400, &unk_100066D80);
          v35(v90, v95);
          v71 = v86;
          v70 = v87;
          v72 = v51;
          v65 = v81;
        }

        v73 = sub_100006278(_swiftEmptyArrayStorage);
        sub_1000395A4(v73, &_swiftEmptySetSingleton, v72, 0, v92, v70, v38, v71, v23, v39, v65);

        v74 = v83;
        sub_100006754(v23, v83, &unk_10007B400, &unk_100066D80);
        v75 = type metadata accessor for UUID();
        v76 = *(v75 - 8);
        isa = 0;
        if ((*(v76 + 48))(v74, 1, v75) != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v76 + 8))(v74, v75);
        }

        (*(v94 + 16))(v94, isa, 0);

        return sub_100008630(v23, &unk_10007B400, &unk_100066D80);
      }

      sub_100031408();
      swift_allocError();
      *v44 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v43 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v42 = 2;
  }

  swift_willThrow();
  v45 = type metadata accessor for UUID();
  v46 = *(v45 - 8);
  (*(v46 + 56))(v15, 1, 1, v45);
  sub_100006754(v15, v12, &unk_10007B400, &unk_100066D80);
  v47 = (*(v46 + 48))(v12, 1, v45);
  swift_errorRetain();
  v48 = 0;
  if (v47 != 1)
  {
    v48 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v46 + 8))(v12, v45);
  }

  v49 = _convertErrorToNSError(_:)();
  (*(v94 + 16))(v94, v48, v49);

  v23 = v15;
  return sub_100008630(v23, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_10002EF7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a7;
  v55 = a8;
  v52 = a5;
  v53 = a6;
  v51 = a4;
  v56 = a3;
  v57 = a2;
  v58 = a1;
  v11 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v49 - v16;
  v18 = __chkstk_darwin(v15);
  v50 = &v49 - v19;
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() currentConnection];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 processIdentifier];
  }

  else
  {
    v28 = 0;
  }

  static Logger.agent.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 67240192;
    *(v31 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "set store properties received from process %{public}d", v31, 8u);
  }

  (*(v23 + 8))(v25, v22);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      *&v60 = 0;
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      v32 = v60;
      if (v60)
      {
        *&v60 = 0;
        static Set._conditionallyBridgeFromObjectiveC(_:result:)();
        v33 = v60;
        if (v60)
        {
          *&v60 = 0;
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
          if (v60)
          {
            v34 = v60;
            v58 = *(a10 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
            sub_100028434(0xD000000000000028, 0x8000000100069A60, &v60);
            if (v61)
            {
              if (swift_dynamicCast())
              {
                v35 = v59;
LABEL_25:
                sub_1000395A4(v32, v33, v34, v51 & 1, v52, v53, v54, v55, v21, a9, v35);

                v45 = v50;
                sub_100006754(v21, v50, &unk_10007B400, &unk_100066D80);
                v46 = type metadata accessor for UUID();
                v47 = *(v46 - 8);
                isa = 0;
                if ((*(v47 + 48))(v45, 1, v46) != 1)
                {
                  isa = UUID._bridgeToObjectiveC()().super.isa;
                  (*(v47 + 8))(v45, v46);
                }

                (*(a11 + 16))(a11, isa, 0);

                return sub_100008630(v21, &unk_10007B400, &unk_100066D80);
              }
            }

            else
            {
              sub_100008630(&v60, &unk_10007B3F0, &unk_100066D70);
            }

            v35 = 0;
            goto LABEL_25;
          }
        }
      }

      sub_100031408();
      swift_allocError();
      *v38 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v37 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v36 = 2;
  }

  swift_willThrow();
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  (*(v40 + 56))(v17, 1, 1, v39);
  sub_100006754(v17, v14, &unk_10007B400, &unk_100066D80);
  v41 = (*(v40 + 48))(v14, 1, v39);
  swift_errorRetain();
  v42 = 0;
  if (v41 != 1)
  {
    v42 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v40 + 8))(v14, v39);
  }

  v43 = _convertErrorToNSError(_:)();
  (*(a11 + 16))(a11, v42, v43);

  v21 = v17;
  return sub_100008630(v21, &unk_10007B400, &unk_100066D80);
}

void sub_10002F68C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() currentConnection];
  if (v13)
  {
    v14 = v13;
    v25 = [v13 processIdentifier];
  }

  else
  {
    v25 = 0;
  }

  static Logger.agent.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v9;
    *v17 = 67240192;
    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "get store names received from process %{public}d", v17, 8u);
    v9 = v24;
  }

  (*(v10 + 8))(v12, v9);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      sub_100022170(1);
      sub_100028434(0xD000000000000028, 0x8000000100069A60, &v27);
      if (v28)
      {
        if (swift_dynamicCast())
        {
          v18 = v26;
LABEL_17:
          sub_10003AD8C(a1, a2, a3, v18);
          isa = Set._bridgeToObjectiveC()().super.isa;

          (*(a5 + 16))(a5, isa, 0);

          return;
        }
      }

      else
      {
        sub_100008630(&v27, &unk_10007B3F0, &unk_100066D70);
      }

      v18 = 0;
      goto LABEL_17;
    }

    sub_100031408();
    swift_allocError();
    *v20 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v19 = 2;
  }

  swift_willThrow();
  swift_errorRetain();
  v21 = _convertErrorToNSError(_:)();
  (*(a5 + 16))(a5, 0, v21);
}

uint64_t sub_10002FA2C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_10000637C(&qword_10007A450, &unk_100065C00);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v30 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - v10;
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000002ELL, 0x8000000100069A30, &v33);
    if (v34)
    {
      if (swift_dynamicCast() & 1) != 0 && (v32)
      {
        sub_100022170(1);
        sub_100041ECC(v17);
        (*(v15 + 16))(v13, v17, v14);
        (*(v15 + 56))(v13, 0, 1, v14);
        sub_100006754(v13, v11, &qword_10007A450, &unk_100065C00);
        v26 = (*(v15 + 48))(v11, 1, v14);
        if (v26 == 1)
        {
          v28 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v27);
          v28 = v29;
          (*(v15 + 8))(v11, v14);
        }

        (*(v31 + 16))(v31, v28, 0);

        sub_100008630(v13, &qword_10007A450, &unk_100065C00);
        return (*(v15 + 8))(v17, v14);
      }
    }

    else
    {
      sub_100008630(&v33, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    *v19 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v18 = 2;
  }

  swift_willThrow();
  (*(v15 + 56))(v8, 1, 1, v14);
  sub_100006754(v8, v5, &qword_10007A450, &unk_100065C00);
  v20 = (*(v15 + 48))(v5, 1, v14);
  swift_errorRetain();
  if (v20 == 1)
  {
    v22 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v21);
    v22 = v23;
    (*(v15 + 8))(v5, v14);
  }

  v24 = _convertErrorToNSError(_:)();
  (*(v31 + 16))(v31, v22, v24);

  return sub_100008630(v8, &qword_10007A450, &unk_100065C00);
}

void sub_10002FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a6;
  v8 = objc_opt_self();
  _Block_copy(a6);
  if ([v8 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000002BLL, 0x8000000100069A00, &v18);
    if (v20)
    {
      if (swift_dynamicCast() & 1) != 0 && (v23[0])
      {
        v9 = sub_100022170(1);
        v11 = sub_100028108(v9, v10);
        v12 = String._bridgeToObjectiveC()();
        v13 = String._bridgeToObjectiveC()();
        v21 = sub_100031528;
        v22 = v7;
        *&v18 = _NSConcreteStackBlock;
        *(&v18 + 1) = 1107296256;
        v19 = sub_100055788;
        v20 = &unk_1000768C8;
        v14 = _Block_copy(&v18);

        [v11 askToOverrideUnremovabilityOfApplication:v12 teamIdentifier:v13 replyHandler:v14];
        _Block_release(v14);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&v18, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v16 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v16 = 2;
  }

  *v15 = v16;
  swift_willThrow();
  swift_errorRetain();
  v17 = _convertErrorToNSError(_:)();
  (a6)[2](a6, 0, v17);
}

void sub_100030164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a6;
  v8 = objc_opt_self();
  _Block_copy(a6);
  if ([v8 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &v18);
    if (v20)
    {
      if (swift_dynamicCast() & 1) != 0 && (v23[0])
      {
        v9 = sub_100022170(1);
        v11 = sub_100027F94(v9, v10);
        v12 = String._bridgeToObjectiveC()();
        v13 = String._bridgeToObjectiveC()();
        v21 = sub_100031524;
        v22 = v7;
        *&v18 = _NSConcreteStackBlock;
        *(&v18 + 1) = 1107296256;
        v19 = sub_100055884;
        v20 = &unk_100076828;
        v14 = _Block_copy(&v18);

        [v11 fetchConfigurationForCategoryIdentifier:v12 categoryName:v13 replyHandler:v14];
        _Block_release(v14);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&v18, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v16 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v16 = 2;
  }

  *v15 = v16;
  swift_willThrow();
  swift_errorRetain();
  v17 = _convertErrorToNSError(_:)();
  (a6)[2](a6, 0, v17);
}

void sub_10003040C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void), uint64_t a9, uint64_t a10, uint64_t a11, SEL *a12)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a8;
  v14 = objc_opt_self();
  _Block_copy(a8);
  if ([v14 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &aBlock);
    if (v27)
    {
      if (swift_dynamicCast() & 1) != 0 && (v30[0])
      {
        v15 = sub_100022170(1);
        v17 = sub_100027F94(v15, v16);
        v18 = String._bridgeToObjectiveC()();
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v28 = a10;
        v29 = v13;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v26 = sub_100055884;
        v27 = a11;
        v21 = _Block_copy(&aBlock);

        [v17 *a12];
        _Block_release(v21);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&aBlock, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v23 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v23 = 2;
  }

  *v22 = v23;
  swift_willThrow();
  swift_errorRetain();
  v24 = _convertErrorToNSError(_:)();
  (a8)[2](a8, 0, v24);
}

void sub_1000306D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  v8 = objc_opt_self();
  _Block_copy(a5);
  if ([v8 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &v17);
    if (v19)
    {
      if (swift_dynamicCast() & 1) != 0 && (v22[0])
      {
        v9 = sub_100022170(1);
        v11 = sub_100027F94(v9, v10);
        v12 = String._bridgeToObjectiveC()();
        v20 = sub_100031528;
        v21 = v7;
        *&v17 = _NSConcreteStackBlock;
        *(&v17 + 1) = 1107296256;
        v18 = sub_100055788;
        v19 = &unk_100076738;
        v13 = _Block_copy(&v17);

        [v11 handleAction:a1 categoryIdentifier:v12 replyHandler:v13];
        _Block_release(v13);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&v17, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v15 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v15 = 2;
  }

  *v14 = v15;
  swift_willThrow();
  swift_errorRetain();
  v16 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v16);
}

void sub_100030968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void), uint64_t a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a7;
  v14 = objc_opt_self();
  _Block_copy(a7);
  if ([v14 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &aBlock);
    if (v26)
    {
      if (swift_dynamicCast() & 1) != 0 && (v29[0])
      {
        v15 = sub_100022170(1);
        v17 = sub_100027F94(v15, v16);
        v18 = String._bridgeToObjectiveC()();
        v19 = String._bridgeToObjectiveC()();
        v27 = a9;
        v28 = v13;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v25 = sub_100055788;
        v26 = a10;
        v20 = _Block_copy(&aBlock);

        [v17 *a11];
        _Block_release(v20);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&aBlock, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v22 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v22 = 2;
  }

  *v21 = v22;
  swift_willThrow();
  swift_errorRetain();
  v23 = _convertErrorToNSError(_:)();
  (a7)[2](a7, 0, v23);
}

void sub_100030C1C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  v6 = objc_opt_self();
  _Block_copy(a4);
  if ([v6 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &v15);
    if (v17)
    {
      if (swift_dynamicCast() & 1) != 0 && (v20[0])
      {
        v7 = sub_100022170(1);
        v9 = sub_100027F94(v7, v8);
        v10 = String._bridgeToObjectiveC()();
        v18 = sub_100031520;
        v19 = v5;
        *&v15 = _NSConcreteStackBlock;
        *(&v15 + 1) = 1107296256;
        v16 = sub_100029790;
        v17 = &unk_100076648;
        v11 = _Block_copy(&v15);

        [v9 appResponsibleForShieldingCategoryIdentifier:v10 replyHandler:v11];
        _Block_release(v11);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&v15, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v13 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v13 = 2;
  }

  *v12 = v13;
  swift_willThrow();
  swift_errorRetain();
  v14 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v14);
}

void sub_100030E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void), uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  v13 = objc_opt_self();
  _Block_copy(a6);
  if ([v13 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &aBlock);
    if (v25)
    {
      if (swift_dynamicCast() & 1) != 0 && (v28[0])
      {
        v14 = sub_100022170(1);
        v16 = sub_100027F94(v14, v15);
        v17 = String._bridgeToObjectiveC()();
        v18 = String._bridgeToObjectiveC()();
        v26 = a8;
        v27 = v12;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v24 = sub_100029790;
        v25 = a9;
        v19 = _Block_copy(&aBlock);

        [v16 *a10];
        _Block_release(v19);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&aBlock, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v21 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v21 = 2;
  }

  *v20 = v21;
  swift_willThrow();
  swift_errorRetain();
  v22 = _convertErrorToNSError(_:)();
  (a6)[2](a6, 0, v22);
}

void sub_100031140(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (![objc_opt_self() isAfterFirstUnlock])
  {
    sub_100031408();
    swift_allocError();
    v21 = 2;
LABEL_18:
    *v20 = v21;
    swift_willThrow();
    swift_errorRetain();
    v22 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, 0, v22);

    return;
  }

  sub_100028434(0xD000000000000028, 0x8000000100069970, &v25);
  if (!v26)
  {
    sub_100008630(&v25, &unk_10007B3F0, &unk_100066D70);
LABEL_17:
    sub_100031408();
    swift_allocError();
    v21 = 0;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v24 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100022170(1);
  v7 = sub_10003CADC(a1, a2);
  v8 = v7;
  v9 = v7 + 8;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7[8];
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  while (v12)
  {
    v15 = v14;
LABEL_13:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = (v8[6] + 40 * (v16 | (v15 << 6)));
    v18 = *v17;
    v19 = v17[1];

    sub_100002624(&v25, v18, v19);
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      isa = Set._bridgeToObjectiveC()().super.isa;
      (*(a4 + 16))(a4, isa, 0);

      return;
    }

    v12 = v9[v15];
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_100031408()
{
  result = qword_10007B3E8;
  if (!qword_10007B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B3E8);
  }

  return result;
}

unint64_t sub_100031498()
{
  result = qword_10007B418;
  if (!qword_10007B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B418);
  }

  return result;
}

void sub_1000315B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100031620(uint64_t a1)
{
  v3 = sub_10000637C(&qword_10007B5A0, &unk_100067300);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - v5;
  v7 = sub_10000637C(&qword_10007B5A8, &unk_100066F40);
  result = __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return result;
  }

  v52 = v11;
  v53 = v9;
  v54 = result;
  v55 = v1;
  v48 = v6;
  v49 = v4;
  v50 = v3;
  v13 = 0;
  v14 = a1 + 40;
  v15 = _swiftEmptyArrayStorage;
  v56 = a1;
  do
  {
    v57 = v15;
    v16 = (v14 + 16 * v13);
    v17 = v13;
    while (1)
    {
      if (v17 >= v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_25;
      }

      v18 = *v16;
      v58 = *(v16 - 1);
      v59 = v18;
      v60 = 46;
      v61 = 0xE100000000000000;
      sub_100011710();

      v19 = StringProtocol.components<A>(separatedBy:)();
      if (v19[2])
      {
        break;
      }

      ++v17;
      v16 += 2;
      if (v13 == v12)
      {
        v24 = v56;
        v15 = v57;
        goto LABEL_14;
      }
    }

    v20 = v19[5];
    v51 = v19[4];

    v15 = v57;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000261AC(0, *(v15 + 2) + 1, 1, v15);
      v15 = result;
    }

    v24 = v56;
    v22 = *(v15 + 2);
    v21 = *(v15 + 3);
    if (v22 >= v21 >> 1)
    {
      result = sub_1000261AC((v21 > 1), v22 + 1, 1, v15);
      v15 = result;
    }

    *(v15 + 2) = v22 + 1;
    v23 = &v15[16 * v22];
    *(v23 + 4) = v51;
    *(v23 + 5) = v20;
  }

  while (v13 != v12);
LABEL_14:
  v25 = sub_100026624(v15);

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_1000479A4(*(v25 + 16), 0);
    v28 = sub_10004DB84(&v58, v27 + 4, v26, v25);
    v29 = v58;

    sub_100003AB8(v29);
    if (v28 == v26)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_18:
  v30 = v55;
  sub_100031B74(v27);

  v57 = v25;
  sub_10000CE10(v25);
  v31 = v52;
  static MediaSettings.maximumMovieRating.getter();
  v32 = v54;
  v33 = BoundedSettingMetadata.name.getter();
  v35 = v34;
  v36 = *(v53 + 8);
  v37 = v36(v31, v32);
  v58 = v33;
  v59 = v35;
  __chkstk_darwin(v37);
  *(&v48 - 2) = &v58;
  LOBYTE(v33) = sub_100035664(sub_1000366AC, (&v48 - 4), v24);

  if (v33 & 1) != 0 || (static MediaSettings.maximumTVShowRating.getter(), v38 = BoundedSettingMetadata.name.getter(), v40 = v39, v41 = v36(v31, v32), v58 = v38, v59 = v40, __chkstk_darwin(v41), *(&v48 - 2) = &v58, LOBYTE(v38) = sub_100035664(sub_10003674C, (&v48 - 4), v24), , (v38) || (v42 = v48, static MediaSettings.denyExplicitContent.getter(), v43 = v50, v44 = SettingMetadata.name.getter(), v46 = v45, v47 = (*(v49 + 8))(v42, v43), v58 = v44, v59 = v46, __chkstk_darwin(v47), *(&v48 - 2) = &v58, LOBYTE(v44) = sub_100035664(sub_10003674C, (&v48 - 4), v24), , (v44))
  {
    sub_100008578((v30 + 56), *(v30 + 80));
    sub_10000B970();
  }

  sub_100009D94(v57);
}

uint64_t sub_100031B74(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008578((v1 + 112), *(v1 + 136));
  v7 = ExtensionFinder.extensionsForGroups(_:)(a1);
  v8 = v7[2];
  if (v8)
  {
    v9 = v7 + 5;
    do
    {
      v10 = *v9;
      v11 = *(v9 - 1);

      sub_100031DD4(v11, v10);

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {

    static Logger.agent.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      v17 = Array.description.getter();
      v19 = sub_100001ED8(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Nobody cares that effective settings changed in groups %{public}s", v15, 0xCu);
      sub_10000210C(v16);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_100031DD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.agent.getter();
  v10 = a1;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v11, v12))
  {

    (*(v7 + 8))(v9, v6);
    goto LABEL_5;
  }

  v34 = v6;
  *&v36 = v3;
  v13 = swift_slowAlloc();
  aBlock = swift_slowAlloc();
  *v13 = 136446466;
  v14 = [v10 identifier];
  v15 = v10;
  v16 = v14;
  v35 = v15;

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100001ED8(v17, v19, &aBlock);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2082;
    v21 = Array.description.getter();
    v23 = sub_100001ED8(v21, v22, &aBlock);

    *(v13 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "Notifying extension %{public}s with groups %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v9, v34);
    v3 = v36;
    v10 = v35;
LABEL_5:
    v41 = sub_1000365FC;
    v42 = v3;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10003276C;
    v40 = &unk_100076B10;
    v24 = _Block_copy(&aBlock);

    [v10 set_requestPostCompletionBlock:v24];
    _Block_release(v24);
    v25 = [objc_allocWithZone(NSExtensionItem) init];
    sub_10000637C(&qword_10007B5B8, &qword_100066F58);
    inited = swift_initStackObject();
    v36 = xmmword_100066E60;
    *(inited + 16) = xmmword_100066E60;
    aBlock = 0x6D614E70756F7267;
    v38 = 0xEA00000000007365;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = sub_10000637C(&qword_10007B2D8, &unk_100066D00);
    *(inited + 72) = a2;

    sub_100006618(inited);
    swift_setDeallocating();
    sub_100008630(inited + 32, &qword_10007A290, &qword_100065BC8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v25 setUserInfo:isa];

    sub_10000637C(&qword_10007B5C0, &unk_100066F60);
    v28 = swift_allocObject();
    *(v28 + 16) = v36;
    *(v28 + 56) = sub_100006820(0, &qword_10007B5C8, NSExtensionItem_ptr);
    *(v28 + 32) = v25;
    v29 = v25;
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v31 = swift_allocObject();
    v31[2] = v10;
    v31[3] = a2;
    v31[4] = v3;
    v41 = sub_100036604;
    v42 = v31;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10003307C;
    v40 = &unk_100076B60;
    v32 = _Block_copy(&aBlock);
    v33 = v10;

    [v33 beginExtensionRequestWithOptions:0 inputItems:v30 completion:v32];

    _Block_release(v32);
    return;
  }

  __break(1u);
}

uint64_t sub_100032368(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  if (a1 && (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0))
  {
    v16 = v15;
    swift_unknownObjectRetain();
    static Logger.agent.getter();
    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32 = a4;
      v22 = v21;
      *v20 = 138543362;
      *(v20 + 4) = v16;
      *v21 = v16;
      swift_unknownObjectRetain();
      _os_log_impl(&_mh_execute_header, v17, v18, "RequestID %{public}@ complete", v20, 0xCu);
      sub_100008630(v22, &qword_10007AC58, &qword_100066568);
      a4 = v32;

      a3 = v33;
    }

    (*(v9 + 8))(v12, v8);
    v23 = *(a4 + 168);
    v24 = swift_allocObject();
    v24[2] = a4;
    v24[3] = v16;
    v24[4] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100036768;
    *(v25 + 24) = v24;
    aBlock[4] = sub_100036734;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031590;
    aBlock[3] = &unk_100076C78;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    dispatch_sync(v23, v26);
    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();
    swift_unknownObjectRelease();

    if (v26)
    {
      __break(1u);
      return result;
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    static Logger.agent.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unknown request complete", v31, 2u);
    }

    result = (*(v9 + 8))(v14, v8);
    if (a2)
    {
LABEL_7:

      a2(v28);
      return sub_100036644(a2, a3);
    }
  }

  return result;
}

uint64_t sub_10003276C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100036654;
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_unknownObjectRetain();
  v3(v6, v4, v5);
  swift_unknownObjectRelease();
  sub_100036644(v4, v5);
}

void sub_100032830(id a1, uint64_t a2, void *a3, NSObject *a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v68 - v16;
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  if (a2)
  {
    swift_errorRetain();
    static Logger.agent.getter();
    swift_errorRetain();
    a1 = a3;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {

      (*(v11 + 8))(v19, v10);
      goto LABEL_11;
    }

    v72 = a5;
    v73 = v11;
    v74 = v10;
    v22 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    aBlock[0] = v71;
    *v22 = 136446722;
    v23 = [a1 identifier];
    if (v23)
    {
      v24 = v23;

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = a4;
      v28 = v27;

      v29 = sub_100001ED8(v25, v28, aBlock);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2082;
      v30 = Array.description.getter();
      v32 = sub_100001ED8(v30, v31, aBlock);

      *(v22 + 14) = v32;
      *(v22 + 22) = 2082;
      a4 = v26;
      v75 = a2;
      swift_errorRetain();
      sub_10000637C(&qword_10007A380, &qword_100065BE0);
      v33 = String.init<A>(describing:)();
      v35 = sub_100001ED8(v33, v34, aBlock);

      *(v22 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to notify extension %{public}s with groups %{public}s: %{public}s", v22, 0x20u);
      swift_arrayDestroy();

      (*(v73 + 8))(v19, v74);
LABEL_11:
      sub_1000330FC(a1, a4);

      return;
    }

    goto LABEL_20;
  }

  if (!a1 || (objc_opt_self(), (v36 = swift_dynamicCastObjCClass()) == 0))
  {
    static Logger.agent.getter();
    v52 = a3;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v53, v54))
    {

      (*(v11 + 8))(v14, v10);
      return;
    }

    v55 = v11;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136446210;
    v58 = [v52 identifier];

    if (v58)
    {
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_100001ED8(v59, v61, aBlock);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "Notified extension %{public}s without error or requestID?", v56, 0xCu);
      sub_10000210C(v57);

      (*(v55 + 8))(v14, v10);
      return;
    }

    goto LABEL_21;
  }

  v37 = v36;
  v74 = v10;
  swift_unknownObjectRetain();
  static Logger.agent.getter();
  v38 = a3;

  swift_unknownObjectRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v72 = a5;
    v73 = v11;
    v41 = v38;
    v42 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v42 = 136446722;
    v43 = [v41 identifier];
    v71 = v41;

    swift_unknownObjectRelease();
    if (!v43)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_100001ED8(v44, v46, aBlock);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    v48 = Array.description.getter();
    v50 = sub_100001ED8(v48, v49, aBlock);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2114;
    *(v42 + 24) = v37;
    v51 = v69;
    *v69 = v37;
    swift_unknownObjectRetain();
    _os_log_impl(&_mh_execute_header, v39, v40, "Successfully notified extension %{public}s with groups %{public}s, requestID %{public}@", v42, 0x20u);
    sub_100008630(v51, &qword_10007AC58, &qword_100066568);

    swift_arrayDestroy();

    (*(v73 + 8))(v17, v74);
    v38 = v71;
    a5 = v72;
  }

  else
  {

    swift_unknownObjectRelease();

    (*(v11 + 8))(v17, v74);
  }

  v63 = *(a5 + 168);
  v64 = swift_allocObject();
  v64[2] = a5;
  v64[3] = v37;
  v64[4] = v38;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_100036610;
  *(v65 + 24) = v64;
  aBlock[4] = sub_10003661C;
  aBlock[5] = v65;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031590;
  aBlock[3] = &unk_100076BD8;
  v66 = _Block_copy(aBlock);
  v67 = v38;
  swift_unknownObjectRetain();

  dispatch_sync(v63, v66);
  _Block_release(v66);
  LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();
  swift_unknownObjectRelease();

  if (v66)
  {
    __break(1u);
LABEL_20:

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_10003307C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000330FC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v97 = *(v6 - 1);
  v98 = v6;
  __chkstk_darwin(v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v96 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v99 = &v93 - v14;
  __chkstk_darwin(v13);
  v16 = &v93 - v15;
  static Logger.agent.getter();
  v17 = a1;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v100 = v10;
  v101 = v9;
  if (v20)
  {
    v95 = v3;
    v21 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v21 = 136446466;
    v22 = [v17 identifier];
    v94 = v17;

    if (!v22)
    {
      __break(1u);
      goto LABEL_18;
    }

    v23 = a2;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_100001ED8(v24, v26, &aBlock);

    *(v21 + 4) = v27;
    *(v21 + 6) = 2082;
    v28 = Array.description.getter();
    v30 = sub_100001ED8(v28, v29, &aBlock);

    *(v21 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Scheduling to retry notifying extension %{public}s with groups: %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    (*(v100 + 8))(v16, v101);
    a2 = v23;
    v17 = v94;
    v3 = v95;
  }

  else
  {

    (*(v10 + 8))(v16, v9);
  }

  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  (v97)[1](v8, v98);
  aBlock = 0xD000000000000037;
  v104 = 0x800000010006A0F0;
  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v36 = aBlock;
  v35 = v104;
  v98 = objc_opt_self();
  v37 = [v98 sharedScheduler];
  v38 = String._bridgeToObjectiveC()();
  v39 = *(v3 + 152);
  v40 = swift_allocObject();
  v40[2] = v36;
  v40[3] = v35;
  v40[4] = v17;
  v40[5] = a2;
  v40[6] = v3;
  v107 = sub_1000365E4;
  v108 = v40;
  aBlock = _NSConcreteStackBlock;
  v104 = 1107296256;
  v105 = sub_1000315B8;
  v106 = &unk_100076AC0;
  v41 = _Block_copy(&aBlock);
  v42 = a2;
  v43 = v17;
  v44 = v35;
  v45 = v43;

  [v37 registerForTaskWithIdentifier:v38 usingQueue:v39 launchHandler:v41];
  _Block_release(v41);

  v46 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v47 = String._bridgeToObjectiveC()();
  v48 = [v46 initWithIdentifier:v47];

  v49 = v48;
  [v49 setRequiresBuddyComplete:0];
  [v49 setRequiresExternalPower:0];
  [v49 setPriority:2];

  [v49 setScheduleAfter:30.0];
  [v49 setTrySchedulingBefore:120.0];
  v50 = v99;
  static Logger.agent.getter();
  v51 = v45;

  v52 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v53 = os_log_type_enabled(v52, v21);
  v95 = v36;
  v97 = v51;
  if (v53)
  {
    v54 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v54 = 136446722;
    *(v54 + 4) = sub_100001ED8(v36, v44, &aBlock);
    *(v54 + 12) = 2082;
    v55 = [v51 identifier];

    if (v55)
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = sub_100001ED8(v56, v58, &aBlock);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2082;
      v60 = v42;
      v61 = Array.description.getter();
      v63 = sub_100001ED8(v61, v62, &aBlock);

      *(v54 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v52, v21, "Scheduling task %{public}s for extension %{public}s with groups: %{public}s", v54, 0x20u);
      swift_arrayDestroy();

      v64 = v99;
      v65 = *(v100 + 8);
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v60 = v42;

  v65 = *(v100 + 8);
  v64 = v50;
LABEL_9:
  v66 = v101;
  v65(v64, v101);
  v67 = [v98 sharedScheduler];
  aBlock = 0;
  v68 = [v67 submitTaskRequest:v49 error:&aBlock];

  if (v68)
  {
    v69 = aBlock;
  }

  v99 = v65;
  v71 = aBlock;
  v72 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v73 = v96;
  static Logger.agent.getter();
  v21 = v97;
  v74 = v60;

  swift_errorRetain();
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v75, v76))
  {

    v92 = v73;
    v91 = v66;
    return (v99)(v92, v91);
  }

  v98 = v74;
  v77 = swift_slowAlloc();
  aBlock = swift_slowAlloc();
  *v77 = 136446978;
  v78 = sub_100001ED8(v95, v44, &aBlock);

  *(v77 + 4) = v78;
  *(v77 + 12) = 2082;
  v79 = [v21 identifier];
  if (!v79)
  {
LABEL_19:

    __break(1u);
    return result;
  }

  v80 = v79;

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  v84 = sub_100001ED8(v81, v83, &aBlock);

  *(v77 + 14) = v84;
  *(v77 + 22) = 2082;
  v85 = Array.description.getter();
  v87 = sub_100001ED8(v85, v86, &aBlock);

  *(v77 + 24) = v87;
  *(v77 + 32) = 2082;
  v102 = v72;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  v88 = String.init<A>(describing:)();
  v90 = sub_100001ED8(v88, v89, &aBlock);

  *(v77 + 34) = v90;
  _os_log_impl(&_mh_execute_header, v75, v76, "Failed to schedule task %{public}s for extension %{public}s with groups: %{public}s. Error: %{public}s", v77, 0x2Au);
  swift_arrayDestroy();

  v91 = v101;
  v92 = v96;
  return (v99)(v92, v91);
}

id sub_100033B84(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_100076AE8;
  v15 = _Block_copy(aBlock);
  [a1 setExpirationHandler:v15];
  _Block_release(v15);
  static Logger.agent.getter();

  v16 = a4;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v17, v18))
  {

    (*(v12 + 8))(v14, v11);
    goto LABEL_5;
  }

  v30 = v12;
  v31 = v11;
  v32 = a6;
  v33 = a1;
  v19 = swift_slowAlloc();
  aBlock[0] = swift_slowAlloc();
  *v19 = 136446722;
  *(v19 + 4) = sub_100001ED8(v34, a3, aBlock);
  *(v19 + 12) = 2082;
  v20 = [v16 identifier];

  if (v20)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100001ED8(v22, v24, aBlock);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2082;
    v26 = Array.description.getter();
    v28 = sub_100001ED8(v26, v27, aBlock);

    *(v19 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Running task %{public}s for extension %{public}s with groups: %{public}s", v19, 0x20u);
    swift_arrayDestroy();

    (*(v30 + 8))(v14, v31);
    a1 = v33;
LABEL_5:
    sub_100031DD4(v16, a5);
    return [a1 setTaskCompleted];
  }

  __break(1u);
  return result;
}

uint64_t sub_100033ED4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  __chkstk_darwin(v2 - 8);
  v29 = &v29 - v3;
  v4 = sub_10000637C(&qword_10007B5B0, &qword_100066F50);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008578((v1 + 16), *(v1 + 40));
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v15 = sub_10003595C(v14);
  (*(v12 + 8))(v14, v11);
  static AllowedClientSettings.allowedClient.getter();
  v16 = SettingMetadata.name.getter();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v10, v4);
  if (!*(v15 + 16))
  {

    goto LABEL_6;
  }

  v20 = sub_1000182E8(v16, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v23 = *(*(v15 + 56) + 8 * v20);

  v24 = v23;
  v25 = v29;
  static Application.value(from:)();

  v26 = type metadata accessor for Application();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) != 1)
  {
    return (*(v27 + 32))(v30, v25, v26);
  }

  sub_100008630(v25, &qword_10007AC90, &unk_1000665A0);
LABEL_7:
  static AllowedClientSettings.allowedClient.getter();
  SettingMetadata.defaultValue.getter();
  return (v19)(v8, v4);
}

uint64_t sub_10003426C(void (*a1)(uint64_t))
{
  v30[0] = a1;
  v2 = sub_10000637C(&qword_10007B5A8, &unk_100066F40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v30 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008578((v1 + 16), *(v1 + 40));
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v13 = sub_10003595C(v12);
  v14 = (*(v10 + 8))(v12, v9);
  v15 = v30[0];
  (v30[0])(v14);
  v16 = BoundedSettingMetadata.name.getter();
  v18 = v17;
  v19 = *(v3 + 8);
  v19(v8, v2);
  if (!*(v13 + 16))
  {

    goto LABEL_6;
  }

  v20 = sub_1000182E8(v16, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v23 = *(*(v13 + 56) + 8 * v20);

  v24 = v23;
  v25 = static Int.value(from:)();
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    return v25;
  }

LABEL_7:
  v15(v28);
  BoundedSettingMetadata.defaultValue.getter();
  v19(v6, v2);
  return v30[1];
}

uint64_t sub_100034508()
{
  v1 = sub_10000637C(&qword_10007B5A0, &unk_100067300);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v24[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100008578((v0 + 16), *(v0 + 40));
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v12 = sub_10003595C(v11);
  (*(v9 + 8))(v11, v8);
  static MediaSettings.denyExplicitContent.getter();
  v13 = SettingMetadata.name.getter();
  v15 = v14;
  v16 = *(v2 + 8);
  v16(v7, v1);
  if (*(v12 + 16))
  {
    v17 = sub_1000182E8(v13, v15);
    v19 = v18;

    if (v19)
    {
      v20 = *(*(v12 + 56) + 8 * v17);

      v21 = v20;
      v22 = static Bool.value(from:)();

      if (v22 != 2)
      {
        return v22 & 1;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_7:
  static MediaSettings.denyExplicitContent.getter();
  SettingMetadata.defaultValue.getter();
  v16(v5, v1);
  v22 = v24[15];
  return v22 & 1;
}

uint64_t sub_100034798()
{
  v1 = sub_10000637C(&qword_10007B598, &unk_100066F30);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v24 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008578((v0 + 16), *(v0 + 40));
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v12 = sub_10003595C(v11);
  (*(v9 + 8))(v11, v8);
  static ApplicationSettings.unremovableApplications.getter();
  v13 = SettingMetadata.name.getter();
  v15 = v14;
  v16 = *(v2 + 8);
  v16(v7, v1);
  if (!*(v12 + 16))
  {

    goto LABEL_6;
  }

  v17 = sub_1000182E8(v13, v15);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v20 = *(*(v12 + 56) + 8 * v17);

  type metadata accessor for Application();
  sub_10003659C(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  v21 = v20;
  v22 = static Set<>.value(from:)();

  if (v22)
  {
    return v22;
  }

LABEL_7:
  static ApplicationSettings.unremovableApplications.getter();
  SettingMetadata.defaultValue.getter();
  v16(v5, v1);
  return v24[1];
}

uint64_t sub_100034A74(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  if (!a3)
  {

    return swift_endAccess();
  }

  v6 = *(a1 + 160);
  if ((v6 & 0xC000000000000001) == 0)
  {
    v8 = a3;
    goto LABEL_10;
  }

  if (v6 < 0)
  {
    v7 = *(a1 + 160);
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = a3;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(a1 + 160) = sub_100035710(v7, result + 1);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 160);
    sub_10001CB80(v8, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 160) = v11;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_100034B64()
{
  sub_10000210C((v0 + 16));
  sub_10000210C((v0 + 56));

  sub_10000210C((v0 + 112));

  return v0;
}

uint64_t sub_100034BBC()
{
  sub_100034B64();

  return swift_deallocClassInstance();
}

void sub_100034C14(uint64_t a1, void *a2)
{
  v29 = _swiftEmptyArrayStorage;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v28 = a1;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v28 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = a2[2];
    v16 = *(*(v28 + 56) + 8 * v11);

    if (v15)
    {
      v17 = sub_1000182E8(v14, v13);
      if (v18)
      {
        v15 = *(a2[7] + 8 * v17);
        v19 = v15;
      }

      else
      {
        v15 = 0;
      }
    }

    sub_100034E88(v16, v15, a2);
    v21 = v20;

    if (v21)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1000261AC(0, *(v29 + 2) + 1, 1, v29);
      }

      v23 = *(v29 + 2);
      v22 = *(v29 + 3);
      if (v23 >= v22 >> 1)
      {
        v29 = sub_1000261AC((v22 > 1), v23 + 1, 1, v29);
      }

      *(v29 + 2) = v23 + 1;
      v24 = &v29[16 * v23];
      *(v24 + 4) = v14;
      *(v24 + 5) = v13;
    }

    v7 &= v7 - 1;
    v25 = sub_1000182E8(v14, v13);
    v27 = v26;

    if (v27)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_10001DD34();
      }

      sub_100048874(v25, a2);
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      sub_1000078A4(a2);
      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100034E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      sub_100036534();
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    if (a2)
    {
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static NSObject.== infix(_:_:)();
    }
  }
}

char *sub_100035468(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100057830(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100057830((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100002614(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100057830((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100002614(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100035664(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_100035710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000637C(&qword_10007ADB0, &unk_100066F70);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100006820(0, &qword_10007A220, NSExtension_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10001B7F4(v12 + 1, 1);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10003595C(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  v6[5] = *(v1 - 8);
  __chkstk_darwin(v1);
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  v6[6] = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v4);
  type metadata accessor for Persistence();
  return static Persistence.readEffectiveSettings(from:)();
}

uint64_t sub_100035E58(uint64_t a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t), const char *a5, uint64_t a6, ...)
{
  v28[1] = a6;
  v28[3] = a5;
  v29 = a2;
  v9 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for Logger();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = __chkstk_darwin(v10);
  v28[2] = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  v16 = URL.path(percentEncoded:)(1);
  countAndFlagsBits = v16._countAndFlagsBits;
  type metadata accessor for Persistence();
  v17 = a4(a1);
  v18 = a3;
  v19 = Dictionary<>.sanitize(isInternalClient:)(v29 & 1, v17);

  static Logger.agent.getter();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v22 = 136446466;
    v23 = sub_100001ED8(countAndFlagsBits, v16._object, v33);

    *(v22 + 4) = v23;
    *(v22 + 12) = 2082;
    sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
    v24 = Dictionary.description.getter();
    v26 = sub_100001ED8(v24, v25, v33);

    *(v22 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s contains %{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v31 + 8))(v15, v32);
  Dictionary<>.incorporate(persistableKeysAndValues:scope:)(v19, v18);
}

unint64_t sub_100036534()
{
  result = qword_10007B590;
  if (!qword_10007B590)
  {
    sub_100006820(255, &qword_10007A4A0, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B590);
  }

  return result;
}

uint64_t sub_10003659C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100036644(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100036664()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000366C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10003676C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100002624(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100036870(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for Application();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v25 - v9;
  result = __chkstk_darwin(v8);
  v13 = v25 - v12;
  v14 = 0;
  v26 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v25[1] = v4 + 32;
  v25[2] = v4 + 16;
  v25[0] = v4 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v4 + 16))(v13, *(v26 + 48) + *(v4 + 72) * (v23 | (v22 << 6)), v3);
      v24.n128_f64[0] = (*(v4 + 32))(v7, v13, v3);
      sub_10004A558(v10, v7, v24);
      result = (*(v4 + 8))(v10, v3);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100036A80()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = v0[34];
  sub_100008578(v0 + 7, v0[10]);

  dispatch thunk of Locatable.persistenceRecordStorePath.getter();
  sub_10004E694(v6, v5);
  (*(v3 + 8))(v5, v2);
}

NSObject *sub_100036D80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v95 = a6;
  v86 = a4;
  v94 = a2;
  v90 = type metadata accessor for UUID();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v12 = __chkstk_darwin(v11);
  v93 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v87 = &v78 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v78 - v17;
  __chkstk_darwin(v16);
  v20 = &v78 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v96 = v21;
  v97 = v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v78 - v26;
  v98 = v6;
  [*(v6 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v99 = a1;
  sub_100006754(a1, v20, &unk_10007B400, &unk_100066D80);

  v28 = a3;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v81 = v11;
  v92 = v18;
  v82 = a5;
  v85 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v80 = v30;
    v83 = v29;
    v33 = v32;
    v79 = swift_slowAlloc();
    v104 = v79;
    *v33 = 136446978;
    v84 = v25;
    sub_100006754(v20, v18, &unk_10007B400, &unk_100066D80);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    v37 = v20;
    v38 = v97;
    sub_100008630(v37, &unk_10007B400, &unk_100066D80);
    v39 = sub_100001ED8(v34, v36, &v104);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2082;
    *(v33 + 14) = sub_100001ED8(v94, v28, &v104);
    *(v33 + 22) = 2082;
    *(v33 + 24) = sub_100001ED8(v86, a5, &v104);
    *(v33 + 32) = 2082;
    if (v95)
    {
      v40 = 7562585;
    }

    else
    {
      v40 = 28494;
    }

    if (v95)
    {
      v41 = 0xE300000000000000;
    }

    else
    {
      v41 = 0xE200000000000000;
    }

    v42 = sub_100001ED8(v40, v41, &v104);
    v25 = v84;

    *(v33 + 34) = v42;
    v43 = v83;
    _os_log_impl(&_mh_execute_header, v83, v80, "Get all settings for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v33, 0x2Au);
    swift_arrayDestroy();

    v44 = v98;
    v83 = *(v38 + 8);
    (v83)(v27, v96);
  }

  else
  {

    sub_100008630(v20, &unk_10007B400, &unk_100066D80);
    v83 = *(v97 + 8);
    (v83)(v27, v96);
    v44 = v98;
  }

  v45 = v99;
  v46 = v87;
  sub_100006754(v99, v87, &unk_10007B400, &unk_100066D80);
  v47 = v89;
  v48 = v90;
  v49 = (*(v89 + 48))(v46, 1, v90);
  v50 = v93;
  v51 = v91;
  v52 = v88;
  if (v49 == 1)
  {
    sub_100008630(v46, &unk_10007B400, &unk_100066D80);
    v53 = v92;
    v54 = v95;
    v55 = v85;
    v56 = v94;
LABEL_12:
    sub_10004680C(v56, v55, v54 & 1, v101);
    v57 = v51;
    if (v51)
    {
      goto LABEL_23;
    }

    v60 = sub_100046A04(v101);
    v103 = v101[0];
    sub_100020EA0(&v103);
    v102 = v101[1];
    sub_100020EA0(&v102);
LABEL_22:
    v77 = sub_100052364(v60, v86, v82);

LABEL_26:
    [*(v44 + 216) unlock];
    return v77;
  }

  v58 = v93;
  (*(v47 + 32))(v88, v46, v48);
  v59 = v51;
  v60 = sub_10004649C(v52);
  v61 = v52;
  v57 = v51;
  v62 = v92;
  if (!v51)
  {
    (*(v47 + 8))(v61, v48);
    goto LABEL_22;
  }

  v51 = 0;
  (*(v47 + 8))(v61, v48);
  v104 = v59;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast())
  {
    v53 = v62;
    if (!v100)
    {

      v54 = v95;
      v55 = v85;
      v56 = v94;
      v50 = v58;
      v45 = v99;
      goto LABEL_12;
    }
  }

  else
  {

    v53 = v62;
  }

  v50 = v58;
  v45 = v99;
LABEL_23:
  v104 = v57;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast() && v100 <= 1u)
  {

    v77 = sub_100006278(_swiftEmptyArrayStorage);
    goto LABEL_26;
  }

  static Logger.persistenceRecordStore.getter();
  sub_100006754(v45, v50, &unk_10007B400, &unk_100066D80);
  swift_errorRetain();
  v63 = v25;
  v77 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v77, v64))
  {
    v65 = swift_slowAlloc();
    v84 = v63;
    v66 = v65;
    v99 = swift_slowAlloc();
    v104 = v99;
    *v66 = 136446466;
    sub_100006754(v50, v53, &unk_10007B400, &unk_100066D80);
    v67 = String.init<A>(describing:)();
    v68 = v50;
    v70 = v69;
    sub_100008630(v68, &unk_10007B400, &unk_100066D80);
    v71 = sub_100001ED8(v67, v70, &v104);

    *(v66 + 4) = v71;
    *(v66 + 12) = 2082;
    v100 = v57;
    swift_errorRetain();
    v72 = String.init<A>(describing:)();
    v74 = sub_100001ED8(v72, v73, &v104);

    *(v66 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v77, v64, "Failed to retrieve settings for record %{public}s with unexpected error. Error: %{public}s", v66, 0x16u);
    swift_arrayDestroy();

    v75 = v84;
  }

  else
  {

    sub_100008630(v50, &unk_10007B400, &unk_100066D80);
    v75 = v63;
  }

  (v83)(v75, v96);
  swift_willThrow();
  [*(v98 + 216) unlock];
  return v77;
}

id sub_10003786C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v125 = a5;
  v124 = a3;
  v116 = a6;
  v111 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v100[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109 = type metadata accessor for DispatchQoS();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v100[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = type metadata accessor for DispatchQoS.QoSClass();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v100[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = type metadata accessor for UUID();
  v123 = *(v127 - 8);
  v14 = __chkstk_darwin(v127);
  v112 = &v100[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v119 = &v100[-v16];
  v17 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v18 = __chkstk_darwin(v17);
  v122 = &v100[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v118 = &v100[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v100[-v23];
  __chkstk_darwin(v22);
  v26 = &v100[-v25];
  v27 = type metadata accessor for Logger();
  v129 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v114 = &v100[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v31 = &v100[-v30];
  v130 = v7;
  [*(v7 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v128 = a2;
  sub_100006754(a2, v26, &unk_10007B400, &unk_100066D80);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v126 = a4;

  v34 = os_log_type_enabled(v32, v33);
  v117 = v27;
  v115 = a1;
  v113 = v17;
  v121 = v24;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock[0] = v102;
    *v35 = 136446978;
    v36 = Set.description.getter();
    v101 = v33;
    v38 = sub_100001ED8(v36, v37, aBlock);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    sub_100006754(v26, v24, &unk_10007B400, &unk_100066D80);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    sub_100008630(v26, &unk_10007B400, &unk_100066D80);
    v42 = sub_100001ED8(v39, v41, aBlock);

    *(v35 + 14) = v42;
    *(v35 + 22) = 2082;
    *(v35 + 24) = sub_100001ED8(v124, v126, aBlock);
    *(v35 + 32) = 2082;
    if (v125)
    {
      v43 = 7562585;
    }

    else
    {
      v43 = 28494;
    }

    if (v125)
    {
      v44 = 0xE300000000000000;
    }

    else
    {
      v44 = 0xE200000000000000;
    }

    v45 = sub_100001ED8(v43, v44, aBlock);
    v46 = v127;

    *(v35 + 34) = v45;
    _os_log_impl(&_mh_execute_header, v32, v101, "Deleting stores “%{public}s” with record ID “%{public}s,” container “%{public}s.” Is internal: %{public}s", v35, 0x2Au);
    swift_arrayDestroy();

    v47 = *(v129 + 8);
    v47(v31, v117);
  }

  else
  {

    sub_100008630(v26, &unk_10007B400, &unk_100066D80);
    v47 = *(v129 + 8);
    v47(v31, v27);
    v46 = v127;
  }

  v48 = v118;
  sub_100006754(v128, v118, &unk_10007B400, &unk_100066D80);
  v49 = v123;
  v50 = (*(v123 + 48))(v48, 1, v46);
  v51 = v120;
  v52 = v46;
  v53 = v119;
  if (v50 == 1)
  {
    sub_100008630(v48, &unk_10007B400, &unk_100066D80);
    v54 = v122;
    v55 = v121;
  }

  else
  {
    (*(v49 + 32))(v119, v48, v52);
    v58 = v51;
    v59 = sub_10004649C(v53);
    v56 = v51;
    v55 = v121;
    if (!v51)
    {
      v60 = v59;
      (*(v49 + 8))(v53, v52);
LABEL_22:
      v134 = 0;
      v133 = 0;
      sub_1000531C8(v115, v60, &v134 + 1, &v134, &v133);
      v61 = v134;
      v62 = v133;
      if ((v134 & 0x100) != 0)
      {
        v63 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
        swift_beginAccess();
        if (!*(*(v60 + v63) + 16))
        {
          sub_10003DCD0(v60);
          if ((v61 & 1) == 0)
          {
            if ((v62 & 1) == 0)
            {
LABEL_44:

              v89 = 1;
              v90 = v127;
LABEL_47:
              (*(v49 + 56))(v116, v89, 1, v90);
              return [*(v130 + 216) unlock];
            }

            v70 = 1;
            goto LABEL_42;
          }

          v70 = 1;
LABEL_38:
          sub_100045138();
          if (!v62)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v64 = *(v49 + 16);
        v65 = v112;
        v125 = v62;
        v66 = v127;
        v64(v112, v60 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v127);
        v126 = v47;
        v67 = v130;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = *(v67 + 272);
        *(v67 + 272) = 0x8000000000000000;
        sub_10001BD04(v60, v65, isUniquelyReferenced_nonNull_native);
        v69 = v66;
        v62 = v125;
        (*(v49 + 8))(v65, v69);
        *(v67 + 272) = v138;
        swift_endAccess();
        sub_100036A80();
        if ((v61 & 1) == 0)
        {
LABEL_25:
          if ((v62 & 1) == 0)
          {
            goto LABEL_46;
          }

          v70 = 0;
LABEL_42:
          if ((*(v130 + 264) & 1) == 0)
          {
            LODWORD(v129) = v70;
            v91 = v130;
            *(v130 + 264) = 1;
            sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
            v92 = v104;
            v93 = v103;
            v94 = v105;
            (*(v104 + 104))(v103, enum case for DispatchQoS.QoSClass.default(_:), v105);
            v128 = static OS_dispatch_queue.global(qos:)();
            (*(v92 + 8))(v93, v94);
            aBlock[4] = sub_10005463C;
            aBlock[5] = v91;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100020A64;
            aBlock[3] = &unk_100076CF0;
            v126 = _Block_copy(aBlock);

            v95 = v106;
            static DispatchQoS.unspecified.getter();
            v138 = _swiftEmptyArrayStorage;
            sub_10005459C(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_10000637C(&qword_10007AF10, &unk_1000670A0);
            v49 = v123;
            sub_1000545E4(&qword_10007B290, &qword_10007AF10, &unk_1000670A0, &protocol conformance descriptor for [A]);
            v96 = v108;
            v97 = v111;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v98 = v126;
            v99 = v128;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v98);

            (*(v110 + 8))(v96, v97);
            (*(v107 + 8))(v95, v109);

            if (v129)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }

LABEL_43:
          if (v70)
          {
            goto LABEL_44;
          }

LABEL_46:
          v90 = v127;
          (*(v49 + 16))(v116, v60 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v127);

          v89 = 0;
          goto LABEL_47;
        }
      }

      else if ((v134 & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_100050310(v60);
      v70 = 0;
      goto LABEL_38;
    }

    v51 = 0;
    (*(v49 + 8))(v53, v52);
    aBlock[0] = v58;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v57 = v52;

      v54 = v122;
      goto LABEL_29;
    }

    v54 = v122;
    if (v131)
    {
      v57 = v52;

      goto LABEL_29;
    }
  }

  sub_10004680C(v124, v126, v125 & 1, v135);
  v56 = v51;
  if (!v51)
  {
    v60 = sub_100046A04(v135);
    v137 = v135[0];
    sub_100020EA0(&v137);
    v136 = v135[1];
    sub_100020EA0(&v136);
    goto LABEL_22;
  }

  v57 = v52;
LABEL_29:
  aBlock[0] = v56;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast() && !v138)
  {

    (*(v49 + 56))(v116, 1, 1, v57);

    return [*(v130 + 216) unlock];
  }

  v126 = v47;

  v71 = v114;
  static Logger.persistenceRecordStore.getter();
  sub_100006754(v128, v54, &unk_10007B400, &unk_100066D80);

  swift_errorRetain();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    aBlock[0] = v128;
    *v74 = 136446722;
    v75 = Set.description.getter();
    v77 = sub_100001ED8(v75, v76, aBlock);

    *(v74 + 4) = v77;
    *(v74 + 12) = 2082;
    sub_100006754(v54, v55, &unk_10007B400, &unk_100066D80);
    v78 = String.init<A>(describing:)();
    v79 = v54;
    v80 = v78;
    v82 = v81;
    sub_100008630(v79, &unk_10007B400, &unk_100066D80);
    v83 = sub_100001ED8(v80, v82, aBlock);

    *(v74 + 14) = v83;
    *(v74 + 22) = 2082;
    v138 = v56;
    swift_errorRetain();
    v84 = String.init<A>(describing:)();
    v86 = sub_100001ED8(v84, v85, aBlock);

    *(v74 + 24) = v86;
    _os_log_impl(&_mh_execute_header, v72, v73, "Failed to delete stores “%{public}s” for record %{public}s with unexpected error. Error: %{public}s", v74, 0x20u);
    swift_arrayDestroy();

    v87 = v114;
  }

  else
  {

    sub_100008630(v54, &unk_10007B400, &unk_100066D80);
    v87 = v71;
  }

  (v126)(v87, v117);
  swift_willThrow();
  return [*(v130 + 216) unlock];
}

NSObject *sub_100038A50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  LODWORD(v90) = a6;
  v84 = a4;
  v89 = a2;
  v86 = type metadata accessor for UUID();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v79 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v11 = __chkstk_darwin(v81);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v83 = &v74 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v74 - v17;
  __chkstk_darwin(v16);
  v20 = &v74 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v91 = v21;
  v92 = v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v74 - v26;
  v93 = v6;
  [*(v6 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v88 = a1;
  v28 = a1;
  v29 = a5;
  sub_100006754(v28, v20, &unk_10007B400, &unk_100066D80);

  v30 = Logger.logObject.getter();
  LODWORD(a5) = static os_log_type_t.default.getter();
  v80 = v29;

  v31 = a3;

  v78 = a5;
  v82 = v30;
  v32 = os_log_type_enabled(v30, a5);
  v77 = v25;
  v76 = v13;
  v75 = v18;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v94[0] = v74;
    *v33 = 136446978;
    sub_100006754(v20, v18, &unk_10007B400, &unk_100066D80);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    v37 = v92;
    sub_100008630(v20, &unk_10007B400, &unk_100066D80);
    v38 = sub_100001ED8(v34, v36, v94);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2082;
    v39 = v89;
    *(v33 + 14) = sub_100001ED8(v89, v31, v94);
    *(v33 + 22) = 2082;
    v40 = v84;
    *(v33 + 24) = sub_100001ED8(v84, v80, v94);
    *(v33 + 32) = 2082;
    if (v90)
    {
      v41 = 7562585;
    }

    else
    {
      v41 = 28494;
    }

    if (v90)
    {
      v42 = 0xE300000000000000;
    }

    else
    {
      v42 = 0xE200000000000000;
    }

    v43 = sub_100001ED8(v41, v42, v94);

    *(v33 + 34) = v43;
    v44 = v82;
    _os_log_impl(&_mh_execute_header, v82, v78, "Get store properties for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v33, 0x2Au);
    swift_arrayDestroy();

    v82 = *(v37 + 8);
    (v82)(v27, v91);
    v45 = v40;
    v46 = v31;
  }

  else
  {

    sub_100008630(v20, &unk_10007B400, &unk_100066D80);
    v82 = *(v92 + 8);
    (v82)(v27, v91);
    v45 = v84;
    v46 = a3;
    v39 = v89;
  }

  v47 = v88;
  v48 = v83;
  sub_100006754(v88, v83, &unk_10007B400, &unk_100066D80);
  v49 = v85;
  v50 = v86;
  v51 = (*(v85 + 48))(v48, 1, v86);
  v52 = v87;
  if (v51 == 1)
  {
    sub_100008630(v48, &unk_10007B400, &unk_100066D80);
    v53 = v90;
LABEL_12:
    sub_10004680C(v39, v46, v53 & 1, v95);
    v54 = v52;
    if (v52)
    {
      goto LABEL_20;
    }

    v70 = sub_100046A04(v95);
    v97 = v95[0];
    sub_100020EA0(&v97);
    v96 = v95[1];
    sub_100020EA0(&v96);
LABEL_28:
    v71 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    swift_beginAccess();
    if (*(*(v70 + v71) + 16))
    {

      sub_1000182E8(v45, v80);
      if (v72)
      {

        v58 = sub_1000090D0();

        goto LABEL_35;
      }
    }

    if (qword_10007A210 != -1)
    {
      swift_once();
    }

    v58 = qword_10007D5D0;

    goto LABEL_35;
  }

  v84 = v46;
  v55 = v79;
  (*(v49 + 32))(v79, v48, v50);
  v56 = v52;
  v57 = sub_10004649C(v55);
  v54 = v52;
  if (!v52)
  {
    v70 = v57;
    (*(v49 + 8))(v55, v50);
    goto LABEL_28;
  }

  v52 = 0;
  (*(v49 + 8))(v55, v50);
  v94[0] = v56;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if ((swift_dynamicCast() & 1) != 0 && !v98)
  {

    v53 = v90;
    v46 = v84;
    v39 = v89;
    goto LABEL_12;
  }

LABEL_20:
  v94[0] = v54;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast() && !v98)
  {

    v58 = sub_100006278(_swiftEmptyArrayStorage);

LABEL_35:
    [*(v93 + 216) unlock];
    return v58;
  }

  v59 = v77;
  static Logger.persistenceRecordStore.getter();
  v60 = v76;
  sub_100006754(v47, v76, &unk_10007B400, &unk_100066D80);
  swift_errorRetain();
  v58 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v58, v61))
  {
    v62 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v94[0] = v90;
    *v62 = 136446466;
    sub_100006754(v60, v75, &unk_10007B400, &unk_100066D80);
    v63 = String.init<A>(describing:)();
    v65 = v64;
    sub_100008630(v60, &unk_10007B400, &unk_100066D80);
    v66 = sub_100001ED8(v63, v65, v94);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2082;
    v98 = v54;
    swift_errorRetain();
    v67 = String.init<A>(describing:)();
    v69 = sub_100001ED8(v67, v68, v94);

    *(v62 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v58, v61, "Failed to get properties for record %{public}s with unexpected error. Error: %{public}s", v62, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008630(v60, &unk_10007B400, &unk_100066D80);
  }

  (v82)(v59, v91);
  swift_willThrow();
  [*(v93 + 216) unlock];
  return v58;
}

id sub_1000395A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v176 = a8;
  v189 = a6;
  v174 = a4;
  v182 = a3;
  v173 = a2;
  v191 = a1;
  v179 = a9;
  v188 = a11;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v169 = *(v15 - 8);
  v170 = v15;
  __chkstk_darwin(v15);
  v167 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DispatchQoS();
  v166 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v163 = *(v18 - 8);
  v164 = v18;
  __chkstk_darwin(v18);
  v162 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v194 = v20;
  v195 = v21;
  v22 = __chkstk_darwin(v20);
  v172 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v185 = &v161 - v24;
  v181 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v25 = __chkstk_darwin(v181);
  v177 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v192 = &v161 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v161 - v30;
  __chkstk_darwin(v29);
  v33 = &v161 - v32;
  v34 = type metadata accessor for Logger();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v180 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v161 = &v161 - v39;
  __chkstk_darwin(v38);
  v41 = &v161 - v40;
  v206 = v12;
  [*(v12 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v193 = a5;
  sub_100006754(a5, v33, &unk_10007B400, &unk_100066D80);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v187 = a7;

  v44 = os_log_type_enabled(v42, v43);
  v183 = v34;
  v184 = v35;
  v190 = v31;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v196[0] = v178;
    *v45 = 136446722;
    sub_100006754(v33, v31, &unk_10007B400, &unk_100066D80);
    v46 = String.init<A>(describing:)();
    LODWORD(v175) = v43;
    v47 = v46;
    v49 = v48;
    sub_100008630(v33, &unk_10007B400, &unk_100066D80);
    v50 = sub_100001ED8(v47, v49, v196);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2082;
    v51 = v189;
    v52 = v187;
    *(v45 + 14) = sub_100001ED8(v189, v187, v196);
    *(v45 + 22) = 2082;
    v53 = v188;
    if (v188)
    {
      v54 = 7562585;
    }

    else
    {
      v54 = 28494;
    }

    if (v188)
    {
      v55 = 0xE300000000000000;
    }

    else
    {
      v55 = 0xE200000000000000;
    }

    v56 = sub_100001ED8(v54, v55, v196);

    *(v45 + 24) = v56;
    _os_log_impl(&_mh_execute_header, v42, v175, "Updating store with record ID “%{public}s,” container “%{public}s.” Is internal: %{public}s", v45, 0x20u);
    swift_arrayDestroy();

    v178 = *(v184 + 8);
    v178(v41, v183);
    v57 = v52;
    v58 = v51;
    v59 = v53;
  }

  else
  {

    sub_100008630(v33, &unk_10007B400, &unk_100066D80);
    v178 = *(v35 + 8);
    v178(v41, v34);
    v57 = v187;
    v58 = v189;
    v59 = v188;
  }

  v175 = a10;
  v60 = v192;
  v62 = v194;
  v61 = v195;
  v63 = v185;
  if (*(v191 + 16))
  {
    v64 = 1;
  }

  else
  {
    sub_100008F38(v182);
    v60 = v192;
    v64 = v65 ^ 1;
  }

  v171 = v64;
  v66 = v190;
  sub_100006754(v193, v60, &unk_10007B400, &unk_100066D80);
  if ((*(v61 + 48))(v60, 1, v62) == 1)
  {
    sub_100008630(v60, &unk_10007B400, &unk_100066D80);
    v67 = v186;
    v68 = v61;
  }

  else
  {
    (*(v61 + 32))(v63, v60, v62);
    v71 = v186;
    v72 = sub_10004649C(v63);
    v69 = v71;
    if (!v71)
    {
      v73 = v72;
      (*(v61 + 8))(v63, v62);
      v74 = v73;
      v68 = v61;
      if (v174)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    (*(v61 + 8))(v63, v62);
    v196[0] = v71;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    if ((swift_dynamicCast() & 1) == 0 || v197[0])
    {

      v70 = v66;
      v68 = v195;
      goto LABEL_60;
    }

    v67 = 0;
    v57 = v187;
    v58 = v189;
    v68 = v195;
    v59 = v188;
  }

  sub_10004680C(v58, v57, v59 & 1, v199);
  v69 = v67;
  if (!v67)
  {
    v75 = sub_100046A04(v199);
    v201[0] = v199[0];
    sub_100020EA0(v201);
    v200 = v199[1];
    sub_100020EA0(&v200);
    v74 = v75;
    if (v174)
    {
      goto LABEL_26;
    }

LABEL_25:
    if (!*(v191 + 16))
    {
      v192 = v74;
      v92 = *(v182 + 16);
      if (!*(v173 + 16))
      {
        if (!v92)
        {
          v135 = v161;
          static Logger.persistenceRecordStore.getter();
          v136 = Logger.logObject.getter();
          v137 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            *v138 = 0;
            _os_log_impl(&_mh_execute_header, v136, v137, "Nothing to modify, exiting early", v138, 2u);
            v68 = v195;
          }

          v178(v135, v183);
          v132 = v179;
          goto LABEL_114;
        }

        v76 = 0;
LABEL_29:
        v77 = v175;
        v78 = v176;
        v79 = v192;
        v80 = sub_10000EB6C(v176, v175);
        v81 = sub_10000EC24(v78, v77);
        v82 = v78;
        v83 = v79;
        v84 = sub_10000ECDC(v182, v82, v77);
        LODWORD(v187) = v76;
        if (v84)
        {
          v86 = v175;
          v89 = v176;
          LODWORD(v189) = v80 ^ sub_10000EB6C(v176, v175);
          v90 = v89;
          v83 = v192;
          v91 = 0;
          v85 = v81 ^ sub_10000EC24(v90, v86);
          v197[0] = 0;
          v188 = 1;
          v68 = v195;
          if ((v187 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v188 = 0;
          LODWORD(v189) = 0;
          v85 = 0;
          v91 = 0;
          v197[0] = 0;
          v68 = v195;
          v86 = v175;
          if (!v187)
          {
LABEL_69:
            v130 = v176;
            v131 = sub_10000EECC(v176, v86);
            v192 = v83;
            if (v131)
            {
              sub_10000FE2C(v130, v86);
            }

            else
            {
              v132 = v179;
              if (v197[0] != 1)
              {
                if (v91)
                {
                  if (v85)
                  {
                    v133 = 1;
                    v134 = 1;
                    if ((v188 & 1) == 0)
                    {
                      goto LABEL_94;
                    }

                    goto LABEL_91;
                  }
                }

                else
                {
                  if (v85)
                  {
                    if ((v188 & 1) == 0)
                    {
                      if (v189)
                      {
                        LOBYTE(v134) = 1;
LABEL_94:
                        v145 = v192;
                        sub_100050310(v192);
                        v146 = 0;
                        goto LABEL_101;
                      }

                      goto LABEL_98;
                    }

                    goto LABEL_76;
                  }

                  if ((v189 & 1) == 0)
                  {
                    if ((v188 & 1) == 0)
                    {
                      goto LABEL_114;
                    }

                    v133 = 0;
                    v134 = 0;
                    goto LABEL_91;
                  }
                }

                v134 = sub_10000EC24(v130, v86);
                if ((v188 & 1) == 0)
                {
                  goto LABEL_94;
                }

                v133 = 1;
                goto LABEL_91;
              }
            }

            if (v91)
            {
              if (v85)
              {
                v133 = 1;
                v134 = 1;
                goto LABEL_91;
              }

              goto LABEL_82;
            }

            if (v85)
            {
LABEL_76:
              v134 = 1;
              v133 = v189;
              goto LABEL_91;
            }

            if (v189)
            {
LABEL_82:
              v134 = sub_10000EC24(v130, v86);
              v133 = 1;
              goto LABEL_91;
            }

            v133 = 0;
            v134 = 0;
LABEL_91:
            v139 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
            v140 = v192;
            swift_beginAccess();
            if (!*(*(v140 + v139) + 16))
            {
              sub_10003DCD0(v140);
              v145 = v140;
              if (v133)
              {
                v146 = 1;
LABEL_101:
                sub_100045138();
                v132 = v179;
                if ((v134 & 1) == 0)
                {
                  goto LABEL_103;
                }

                goto LABEL_102;
              }

              if ((v134 & 1) == 0)
              {

                v159 = 1;
                v132 = v179;
                goto LABEL_108;
              }

              v146 = 1;
              v132 = v179;
LABEL_102:
              if (*(v206 + 264))
              {
LABEL_103:
                if (!v146)
                {
                  goto LABEL_115;
                }

                goto LABEL_106;
              }

              v147 = v206;
              *(v206 + 264) = 1;
              sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
              v149 = v162;
              v148 = v163;
              v150 = *(v163 + 104);
              LODWORD(v193) = v146;
              v151 = v164;
              v150(v162, enum case for DispatchQoS.QoSClass.default(_:), v164);
              v192 = static OS_dispatch_queue.global(qos:)();
              (*(v148 + 8))(v149, v151);
              v196[4] = sub_100054590;
              v196[5] = v147;
              v196[0] = _NSConcreteStackBlock;
              v196[1] = 1107296256;
              v196[2] = sub_100020A64;
              v196[3] = &unk_100076CA0;
              v191 = _Block_copy(v196);

              v152 = v165;
              static DispatchQoS.unspecified.getter();
              v198 = _swiftEmptyArrayStorage;
              sub_10005459C(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_10000637C(&qword_10007AF10, &unk_1000670A0);
              sub_1000545E4(&qword_10007B290, &qword_10007AF10, &unk_1000670A0, &protocol conformance descriptor for [A]);
              v153 = v145;
              v154 = v167;
              v155 = v170;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v157 = v191;
              v156 = v192;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              v68 = v195;
              _Block_release(v157);

              v158 = v154;
              v145 = v153;
              (*(v169 + 8))(v158, v155);
              (*(v166 + 8))(v152, v168);

              v132 = v179;
              if (v193)
              {
LABEL_106:

                v159 = 1;
LABEL_108:
                v160 = v194;
LABEL_116:
                (*(v68 + 56))(v132, v159, 1, v160);
                return [*(v206 + 216) unlock];
              }

LABEL_115:
              v160 = v194;
              (*(v68 + 16))(v132, v145 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v194);

              v159 = 0;
              goto LABEL_116;
            }

            LODWORD(v191) = v134;
            v141 = v172;
            v142 = v194;
            (*(v68 + 16))(v172, v140 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v194);
            LODWORD(v189) = v133;
            v143 = v206;
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v198 = *(v143 + 272);
            *(v143 + 272) = 0x8000000000000000;
            sub_10001BD04(v140, v141, isUniquelyReferenced_nonNull_native);
            (*(v68 + 8))(v141, v142);
            *(v143 + 272) = v198;
            swift_endAccess();
            sub_100036A80();
            if (v189)
            {
              LOBYTE(v134) = v191;
              goto LABEL_94;
            }

            v132 = v179;
            if (v191)
            {
LABEL_98:
              v146 = 0;
              v145 = v192;
              goto LABEL_102;
            }

LABEL_114:
            v145 = v192;
            goto LABEL_115;
          }
        }

LABEL_32:
        v87 = v176;
        v88 = sub_100052364(v83, v176, v86);
        LODWORD(v187) = v85;
        v93 = v88;
        v94 = v173;

        v192 = v83;
        v98 = sub_100052768(v83, v87, v86);
        if (v174)
        {

          if (*(v191 + 16))
          {
            v95 = &v192[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client];
            v96 = Dictionary<>.sanitize(isInternalClient:)(v192[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32], v191);
            v97 = *(v95 + 1);
            v202[0] = *v95;
            v202[1] = v97;
            v203 = v95[32];
            v104 = sub_100012400(v202, v206 + 152, v96);
          }

          else
          {
            v96 = sub_100006278(_swiftEmptyArrayStorage);
            v104 = sub_100006278(_swiftEmptyArrayStorage);
          }
        }

        else
        {
          v99 = *(v94 + 16);

          if (v99)
          {

            v96 = sub_100052D80(v93, v94);

            v100 = sub_100052D80(v98, v94);
          }

          else
          {
            v100 = v98;
            v96 = v93;
          }

          if (*(v191 + 16))
          {
            v186 = v100;
            v101 = &v192[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client];
            v102 = Dictionary<>.sanitize(isInternalClient:)(v192[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32], v191);
            v103 = *(v101 + 1);
            v204[0] = *v101;
            v204[1] = v103;
            v205 = v101[32];
            v105 = sub_100012400(v204, v206 + 152, v102);
            v106 = swift_isUniquelyReferenced_nonNull_native();
            v196[0] = v96;
            sub_100052F40(v102, sub_10004E214, 0, v106, v196);

            v96 = v196[0];
            v107 = v186;
            v108 = swift_isUniquelyReferenced_nonNull_native();
            v196[0] = v107;
            sub_100052F40(v105, sub_10004E214, 0, v108, v196);

            v104 = v196[0];
          }

          else
          {
            v104 = v100;
          }
        }

        sub_10001027C(v93, v96);
        v110 = v109;

        if (v110)
        {
          sub_10001027C(v98, v104);
          v112 = v111;

          if (v112)
          {
            v113 = 0;
            v86 = v175;
LABEL_68:

            v68 = v195;
            LOBYTE(v85) = v187;
            v83 = v192;
            v91 = v113;
            goto LABEL_69;
          }
        }

        else
        {
        }

        v86 = v175;
        sub_10004FAC4(v192, v176, v175, v96, v104, v197);
        v113 = 1;
        goto LABEL_68;
      }

      if (v92)
      {
LABEL_28:
        v76 = 1;
        goto LABEL_29;
      }

      v83 = v192;
LABEL_31:
      v188 = 0;
      LODWORD(v189) = 0;
      v85 = 0;
      v197[0] = 0;
      v86 = v175;
      goto LABEL_32;
    }

LABEL_26:
    if (*(v182 + 16))
    {
      v192 = v74;
      goto LABEL_28;
    }

    v83 = v74;
    goto LABEL_31;
  }

  v70 = v66;
LABEL_60:
  v196[0] = v69;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (!swift_dynamicCast() || v198)
  {

    v114 = v180;
    static Logger.persistenceRecordStore.getter();
    v115 = v177;
    sub_100006754(v193, v177, &unk_10007B400, &unk_100066D80);
    swift_errorRetain();
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v196[0] = v195;
      *v118 = 136446466;
      sub_100006754(v115, v70, &unk_10007B400, &unk_100066D80);
      v119 = String.init<A>(describing:)();
      v120 = v115;
      v121 = v119;
      v123 = v122;
      sub_100008630(v120, &unk_10007B400, &unk_100066D80);
      v124 = sub_100001ED8(v121, v123, v196);

      *(v118 + 4) = v124;
      *(v118 + 12) = 2082;
      v198 = v69;
      swift_errorRetain();
      v125 = String.init<A>(describing:)();
      v127 = sub_100001ED8(v125, v126, v196);

      *(v118 + 14) = v127;
      _os_log_impl(&_mh_execute_header, v116, v117, "Failed to update store for record %{public}s with unexpected error. Error: %{public}s", v118, 0x16u);
      swift_arrayDestroy();

      v128 = v180;
    }

    else
    {

      sub_100008630(v115, &unk_10007B400, &unk_100066D80);
      v128 = v114;
    }

    v178(v128, v183);
    swift_willThrow();
  }

  else
  {

    (*(v68 + 56))(v179, 1, 1, v194);
  }

  return [*(v206 + 216) unlock];
}

char *sub_10003AD8C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v72 = a4;
  v71 = a2;
  v75 = type metadata accessor for UUID();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v9 = __chkstk_darwin(v8);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v69 = &v64 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - v14;
  __chkstk_darwin(v13);
  v17 = &v64 - v16;
  v18 = type metadata accessor for Logger();
  v79 = *(v18 - 8);
  v80 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v64 - v22;
  v81 = v4;
  [*(v4 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v78 = a1;
  sub_100006754(a1, v17, &unk_10007B400, &unk_100066D80);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v70 = a3;

  v26 = os_log_type_enabled(v24, v25);
  v68 = v21;
  v66 = v8;
  v65 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v82[0] = v67;
    *v27 = 136446722;
    sub_100006754(v17, v15, &unk_10007B400, &unk_100066D80);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    sub_100008630(v17, &unk_10007B400, &unk_100066D80);
    v31 = sub_100001ED8(v28, v30, v82);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v32 = v71;
    v33 = v70;
    *(v27 + 14) = sub_100001ED8(v71, v70, v82);
    *(v27 + 22) = 2082;
    v34 = v72;
    if (v72)
    {
      v35 = 7562585;
    }

    else
    {
      v35 = 28494;
    }

    if (v72)
    {
      v36 = 0xE300000000000000;
    }

    else
    {
      v36 = 0xE200000000000000;
    }

    v37 = sub_100001ED8(v35, v36, v82);
    v38 = v79;

    *(v27 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v24, v25, "Get store names for store with record ID “%{public}s” and container “%{public}s.” Is internal: %{public}s", v27, 0x20u);
    swift_arrayDestroy();

    v67 = *(v38 + 8);
    v67(v23, v80);
    v39 = v34;
  }

  else
  {

    sub_100008630(v17, &unk_10007B400, &unk_100066D80);
    v67 = *(v79 + 8);
    v67(v23, v80);
    v33 = v70;
    v39 = v72;
    v32 = v71;
  }

  v40 = v69;
  sub_100006754(v78, v69, &unk_10007B400, &unk_100066D80);
  v41 = v74;
  v42 = v75;
  v43 = (*(v74 + 48))(v40, 1, v75);
  v44 = v76;
  v45 = v73;
  if (v43 == 1)
  {
    v46 = v77;
    sub_100008630(v40, &unk_10007B400, &unk_100066D80);
LABEL_12:
    sub_10004680C(v32, v33, v39 & 1, v83);
    v47 = v44;
    if (v44)
    {
      goto LABEL_22;
    }

    sub_100046A04(v83);
    v85 = v83[0];
    sub_100020EA0(&v85);
    v84 = v83[1];
    sub_100020EA0(&v84);
LABEL_29:
    swift_beginAccess();

    v51 = sub_100023564(v62);

    goto LABEL_30;
  }

  v48 = v77;
  (*(v41 + 32))(v73, v40, v42);
  v49 = v44;
  sub_10004649C(v45);
  v50 = v45;
  v47 = v44;
  if (!v44)
  {
    (*(v41 + 8))(v50, v42);
    goto LABEL_29;
  }

  v44 = 0;
  (*(v41 + 8))(v50, v42);
  v82[0] = v49;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast())
  {
    v46 = v48;
    if (!v86)
    {

      goto LABEL_12;
    }
  }

  else
  {

    v46 = v48;
  }

LABEL_22:
  v82[0] = v47;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast() && !v86)
  {

    v51 = &_swiftEmptySetSingleton;
LABEL_30:
    [*(v81 + 216) unlock];
    return v51;
  }

  v52 = v68;
  static Logger.persistenceRecordStore.getter();
  sub_100006754(v78, v46, &unk_10007B400, &unk_100066D80);
  swift_errorRetain();
  v51 = v52;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v51 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82[0] = v78;
    *v51 = 136446466;
    sub_100006754(v46, v65, &unk_10007B400, &unk_100066D80);
    v55 = String.init<A>(describing:)();
    v57 = v56;
    sub_100008630(v46, &unk_10007B400, &unk_100066D80);
    v58 = sub_100001ED8(v55, v57, v82);

    *(v51 + 4) = v58;
    *(v51 + 6) = 2082;
    v86 = v47;
    swift_errorRetain();
    v59 = String.init<A>(describing:)();
    v61 = sub_100001ED8(v59, v60, v82);

    *(v51 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v53, v54, "Failed to get stores for record %{public}s with unexpected error. Error: %{public}s", v51, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008630(v46, &unk_10007B400, &unk_100066D80);
  }

  v67(v52, v80);
  swift_willThrow();
  [*(v81 + 216) unlock];
  return v51;
}

uint64_t sub_10003B7C4(int a1)
{
  v3 = v1;
  v50 = a1;
  v58 = type metadata accessor for URL();
  v56 = *(v58 - 8);
  v4 = __chkstk_darwin(v58);
  v53 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v49 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v52 = (v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v54 = v49 - v13;
  __chkstk_darwin(v12);
  v15 = v49 - v14;
  static Logger.persistenceRecordStore.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Updating Effective Settings", v18, 2u);
  }

  v20 = *(v9 + 8);
  v19 = v9 + 8;
  v55 = v20;
  v20(v15, v8);
  v60 = &_swiftEmptyDictionarySingleton;
  sub_1000416E0();

  v59 = sub_10004D76C(v21);
  sub_10004C98C(&v59);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v57 = v8;

    sub_100051FC8(v59, &v60);
    sub_100041A30(v60, v22);

    v59 = sub_10004D76C(v23);
    sub_10004C98C(&v59);
    v24 = v56;

    sub_100051FC8(v59, &v60);

    sub_10006100C(&v60);
    type metadata accessor for Persistence();
    sub_100008578((v3 + 56), *(v3 + 80));
    dispatch thunk of Locatable.effectiveSettingsPath.getter();
    v25 = static Persistence.readUnmigratedSettings(from:)();
    v26 = *(v24 + 8);
    v26(v7, v58);
    v27 = v60;
    sub_100034C14(v25, v60);
    v29 = v28;

    if (*(v29 + 16))
    {
      v52 = v27;
      v56 = 0;
      v30 = v54;
      static Logger.persistenceRecordStore.getter();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      v33 = os_log_type_enabled(v31, v32);
      v51 = v26;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v59 = v35;
        *v34 = 136446210;
        v36 = Array.description.getter();
        v49[1] = v19;
        v38 = sub_100001ED8(v36, v37, &v59);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Settings changed: %{public}s", v34, 0xCu);
        sub_10000210C(v35);

        v55(v54, v57);
      }

      else
      {

        v55(v30, v57);
      }

      v46 = v53;
      sub_100008578((v3 + 56), *(v3 + 80));
      dispatch thunk of Locatable.effectiveSettingsPath.getter();
      v47 = v52;
      v48 = v56;
      sub_100053E9C(v52, v46, &static Persistence.write(_:to:));
      if (v48)
      {
        v51(v46, v58);
      }

      else
      {
        v51(v46, v58);
        if (v50)
        {
          sub_100008578((v3 + 96), *(v3 + 120));
          sub_100031620(v29);
        }

        sub_1000454EC(v47);
      }
    }

    else
    {

      v39 = v52;
      static Logger.persistenceRecordStore.getter();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v57;
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Effective settings did not change, exiting early", v44, 2u);
      }

      result = (v55)(v39, v43);
    }

    *(v3 + 208) = 0;
  }

  return result;
}

void sub_10003BE20()
{
  v26 = type metadata accessor for UUID();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Logger();
  v3 = *(v28 - 8);
  v4 = __chkstk_darwin(v28);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  [*(v0 + 216) lock];
  swift_beginAccess();
  v20 = v0;
  v8 = *(v0 + 272);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v27 = v3 + 8;
  v22 = v1 + 8;
  v23 = v1 + 16;
  v29 = v8;

  v14 = 0;
  *&v15 = 136446466;
  v21 = v15;
  v24 = v7;
  if (v12)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      v18 = v20;
      sub_10003B7C4(0);
      sub_10003C440();
      [*(v18 + 216) unlock];
      return;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      while (1)
      {
        v12 &= v12 - 1;

        sub_100050310(v17);

        v14 = v16;
        if (!v12)
        {
          break;
        }

LABEL_10:
        v16 = v14;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10003C440()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.persistenceRecordStore.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Notifying all clients", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_10000695C(v1 + 96, v23);
  sub_100008578(v23, v23[3]);
  v9 = static SettingMetadataDirectory.allMetadata.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_100057850(0, v10, 0);
    v11 = v22;
    v12 = v9 + 32;
    do
    {
      sub_10000695C(v12, v21);
      sub_100008578(v21, v21[3]);
      v13 = dispatch thunk of SettingMetadataProtocol.name.getter();
      v15 = v14;
      sub_10000210C(v21);
      v22 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_100057850((v16 > 1), v17 + 1, 1);
        v11 = v22;
      }

      v11[2] = v17 + 1;
      v18 = &v11[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      v12 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  sub_100031620(v11);

  return sub_10000210C(v23);
}

id sub_10003C6A4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating synced stores", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_10003C810();
  *(v1 + 264) = 0;
  return [*(v1 + 216) unlock];
}

uint64_t sub_10003C810()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.persistenceRecordStore.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Converting syncable store to syncable data", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  v9 = v1[34];
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v23 = v1;
  while (v12)
  {
LABEL_13:
    v25 = *(*(v9 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v12)))));

    sub_100046DC4(&v25, &v24);

    v18 = v24;
    if (v24)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000264F0(0, v16[2] + 1, 1, v16);
        v16 = result;
      }

      v20 = v16[2];
      v19 = v16[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_1000264F0((v19 > 1), v20 + 1, 1, v16);
        v16 = result;
      }

      v16[2] = v20 + 1;
      v16[v20 + 4] = v18;
      v1 = v23;
    }

    v12 &= v12 - 1;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      v21 = sub_100008578(v1 + 2, v1[5]);
      sub_1000202A0(v16, *v21, v21[1], v21[2]);
    }

    v12 = *(v9 + 64 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003CADC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v74 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for URL();
  v66 = *(v73 - 8);
  __chkstk_darwin(v73);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v3 + 216) lock];
  static Logger.persistenceRecordStore.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v61 = v3;
  v63 = a2;
  v62 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = a1;
    v20 = v18;
    *&v77 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_100001ED8(v19, a2, &v77);
    _os_log_impl(&_mh_execute_header, v14, v15, "Getting client values for %{public}s", v17, 0xCu);
    sub_10000210C(v20);

    v3 = v61;
  }

  v21.n128_f64[0] = (*(v11 + 8))(v13, v10);
  sub_10003D2FC(v21);
  v23 = v22;
  if (v22 >> 62)
  {
LABEL_40:
    v75 = v23 & 0xFFFFFFFFFFFFFF8;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v75 = v22 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_5:
      v25 = 0;
      v70 = 0x800000010006A320;
      v71 = v23 & 0xC000000000000001;
      v69 = enum case for URL.DirectoryHint.notDirectory(_:);
      v68 = (v6 + 104);
      v67 = (v6 + 8);
      ++v66;
      v64 = &_swiftEmptyDictionarySingleton;
      v65 = v23;
      while (1)
      {
LABEL_6:
        v3 = v25;
        while (1)
        {
          if (v71)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v25 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v3 >= *(v75 + 16))
            {
              goto LABEL_39;
            }

            v26 = *(v23 + 8 * v3 + 32);

            v25 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          v6 = v24;
          type metadata accessor for Persistence();
          v76[0] = 0xD00000000000001DLL;
          v76[1] = v70;
          v27 = v9;
          v28 = v72;
          v29 = v74;
          (*v68)(v72, v69, v74);
          sub_100011710();
          URL.appending<A>(path:directoryHint:)();
          v30 = v28;
          v9 = v27;
          (*v67)(v30, v29);
          v31 = static Persistence.readEffectiveSettings(from:)();
          (*v66)(v27, v73);
          v79 = *(v26 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);
          v32 = *(v26 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
          v77 = *(v26 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
          v78 = v32;
          v80 = v77;
          v81[0] = v32;
          if (*(v31 + 16))
          {
            sub_1000544B8(&v80, v76);
            sub_1000544B8(v81, v76);
            v33 = sub_1000182E8(v62, v63);
            if (v34)
            {
              v40 = *(*(v31 + 56) + 8 * v33);

              v41 = v64;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v76[0] = v41;
              v43 = sub_100018434(&v77);
              v45 = v43;
              v46 = v41[2];
              v47 = (v44 & 1) == 0;
              v48 = v46 + v47;
              if (__OFADD__(v46, v47))
              {
                __break(1u);
                goto LABEL_44;
              }

              v49 = v44;
              if (v41[3] >= v48)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v24 = v6;
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_33;
                  }
                }

                else
                {
                  sub_10001D550();
                  v24 = v6;
                  if ((v49 & 1) == 0)
                  {
                    goto LABEL_33;
                  }
                }
              }

              else
              {
                sub_100019B40(v48, isUniquelyReferenced_nonNull_native);
                v50 = sub_100018434(&v77);
                if ((v49 & 1) != (v51 & 1))
                {
                  goto LABEL_45;
                }

                v45 = v50;
                v24 = v6;
                if ((v49 & 1) == 0)
                {
LABEL_33:
                  v54 = v76[0];
                  *(v76[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
                  v55 = v54[6] + 40 * v45;
                  v56 = v78;
                  *v55 = v77;
                  *(v55 + 16) = v56;
                  *(v55 + 32) = v79;
                  *(v54[7] + 8 * v45) = v40;

                  v57 = v54[2];
                  v58 = __OFADD__(v57, 1);
                  v59 = v57 + 1;
                  if (!v58)
                  {
                    v64 = v54;
                    v54[2] = v59;
LABEL_35:
                    v3 = v61;
                    v23 = v65;
                    if (v25 != v24)
                    {
                      goto LABEL_6;
                    }

                    goto LABEL_42;
                  }

LABEL_44:
                  __break(1u);
LABEL_45:
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }
              }

              sub_100020EA0(&v80);
              sub_100020EA0(v81);
              v64 = v76[0];
              v52 = *(v76[0] + 56);
              v53 = *(v52 + 8 * v45);
              *(v52 + 8 * v45) = v40;

              goto LABEL_35;
            }
          }

          else
          {
            sub_1000544B8(&v80, v76);
            sub_1000544B8(v81, v76);
          }

          v35 = sub_100018434(&v77);
          v37 = v36;
          sub_100020EA0(&v80);
          sub_100020EA0(v81);
          if (v37)
          {
            break;
          }

          v24 = v6;
          ++v3;
          v23 = v65;
          if (v25 == v6)
          {
            v3 = v61;
            goto LABEL_42;
          }
        }

        v38 = v64;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = v38;
        if (!v39)
        {
          sub_10001D550();
          v38 = v76[0];
        }

        v64 = v38;
        sub_100047F44(v35, v38);

        v3 = v61;
        v23 = v65;
        v24 = v6;
        if (v25 == v6)
        {
          goto LABEL_42;
        }
      }
    }
  }

  v64 = &_swiftEmptyDictionarySingleton;
LABEL_42:

  [*(v3 + 216) unlock];
  return v64;
}

void sub_10003D2FC(__n128 a1)
{
  v45 = type metadata accessor for Application();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10000637C(&qword_10007B810, "(N");
  __chkstk_darwin(v43);
  v6 = &v37 - v5;
  v7 = sub_100040148(0);
  swift_beginAccess();
  v8 = *(v1 + 272);
  v38 = _swiftEmptyArrayStorage;
  v51 = _swiftEmptyArrayStorage;
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v48 = v2;
  v49 = v7;
  v14 = v7 + 56;
  v46 = (v2 + 8);
  v47 = v2 + 16;
  v44 = v8;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v50 = v4;
  v41 = v9;
  v42 = v6;
  v40 = v13;
  while (1)
  {
    v16 = v15;
LABEL_7:
    if (!v12)
    {
      break;
    }

    v15 = v16;
LABEL_12:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = v44;
    v20 = *(v44 + 48);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 16))(v6, v20 + *(*(v21 - 8) + 72) * v18, v21);
    v22 = *(*(v19 + 56) + 8 * v18);
    *&v6[*(v43 + 48)] = v22;
    v23 = (v22 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    if (*(v22 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32) != 1)
    {
      v24 = 1 << v49[32];
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v49 + 7);
      v27 = (v24 + 63) >> 6;
      v39 = v22;

      v28 = 0;
      v29 = v45;
      while (v26)
      {
LABEL_23:
        v31 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v32 = v50;
        (*(v48 + 16))(v50, *(v49 + 6) + *(v48 + 72) * (v31 | (v28 << 6)), v29);
        v33 = Application.bundleIdentifier.getter();
        if (v34)
        {
          if (v33 == *v23 && v34 == v23[1])
          {

            (*v46)(v50, v45);
LABEL_31:

            v9 = v41;
            v6 = v42;
            v13 = v40;
            goto LABEL_32;
          }

          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v29 = v45;
          (*v46)(v50, v45);
          if (v36)
          {
            goto LABEL_31;
          }
        }

        else
        {
          (*v46)(v32, v29);
        }
      }

      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v30 >= v27)
        {

          v6 = v42;
          sub_100008630(v42, &qword_10007B810, "(N");
          v16 = v15;
          v13 = v40;
          v9 = v41;
          goto LABEL_7;
        }

        v26 = *&v14[8 * v30];
        ++v28;
        if (v26)
        {
          v28 = v30;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_32:

    sub_100008630(v6, &qword_10007B810, "(N");
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v38 = v51;
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_12;
    }
  }

LABEL_38:
  __break(1u);
}

void sub_10003D780()
{
  v1 = v0;
  v53 = type metadata accessor for UUID();
  v2 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 216) lock];
  swift_beginAccess();
  v8 = *(v1 + 272);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v54 = (v5 + 8);
  v14 = v7;
  v50 = (v2 + 8);
  v51 = (v2 + 16);
  v15 = v8;
  v49 = 0x8000000100069140;

  v16 = 0;
  *&v17 = 136446466;
  v48 = v17;
  v55 = v15;
  while (v12)
  {
LABEL_10:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = *(*(v15 + 56) + ((v16 << 9) | (8 * v19)));
    v21 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    swift_beginAccess();
    if (!*(*(v20 + v21) + 16))
    {

      static Logger.persistenceRecordStore.getter();

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v46 = v4;
        v25 = v24;
        v44 = swift_slowAlloc();
        v58 = v44;
        *v25 = v48;
        v26 = *v51;
        v45 = v14;
        v27 = v52;
        v43 = v22;
        v28 = v53;
        v26(v52, v20 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v53);
        sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v42 = v23;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v1;
        v31 = v30;
        (*v50)(v27, v28);
        v32 = sub_100001ED8(v29, v31, &v58);

        *(v25 + 4) = v32;
        *(v25 + 12) = 2082;
        v34 = *(v20 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
        v33 = *(v20 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
        v35 = *(v20 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 24);
        v41 = *(v20 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
        v56 = 0;
        v57 = 0xE000000000000000;

        _StringGuts.grow(_:)(37);

        v56 = 0xD000000000000018;
        v57 = v49;
        v36._countAndFlagsBits = v34;
        v1 = v47;
        v36._object = v33;
        String.append(_:)(v36);
        v37._countAndFlagsBits = 0x44496D616574202CLL;
        v37._object = 0xE900000000000020;
        String.append(_:)(v37);
        v38._countAndFlagsBits = v41;
        v38._object = v35;
        String.append(_:)(v38);
        v14 = v45;

        v39 = sub_100001ED8(v56, v57, &v58);

        *(v25 + 14) = v39;
        v22 = v43;
        _os_log_impl(&_mh_execute_header, v43, v42, "Clearing empty record %{public}s for %{public}s", v25, 0x16u);
        swift_arrayDestroy();

        v4 = v46;
      }

      (*v54)(v14, v4);
      sub_10003DCD0(v20);

      v15 = v55;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      [*(v1 + 216) unlock];
      return;
    }

    v12 = *(v9 + 8 * v18);
    ++v16;
    if (v12)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10003DCD0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v42 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  static Logger.persistenceRecordStore.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  LODWORD(v38) = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v2;
    v17 = v16;
    v35 = swift_slowAlloc();
    v43 = v35;
    *v17 = 136446466;
    sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v39 = v9;
    v18 = v4;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_100001ED8(v19, v20, &v43);
    v40 = v7;
    v22 = v21;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v23 = a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
    v24 = v8;
    v36 = v5;
    v37 = a1;
    v26 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    v25 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
    v28 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
    v27 = *(v23 + 24);
    v44 = 0;
    v45 = 0xE000000000000000;

    _StringGuts.grow(_:)(37);

    v44 = 0xD000000000000018;
    v45 = 0x8000000100069140;
    v29._countAndFlagsBits = v26;
    v8 = v24;
    v29._object = v25;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0x44496D616574202CLL;
    v30._object = 0xE900000000000020;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v28;
    v4 = v18;
    v9 = v39;
    a1 = v37;
    v31._object = v27;
    String.append(_:)(v31);

    v5 = v36;

    v32 = sub_100001ED8(v44, v45, &v43);

    *(v17 + 14) = v32;
    v7 = v40;
    _os_log_impl(&_mh_execute_header, v14, v38, "Removing record %{public}s for %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v13, v8);
  sub_10004F638(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_containerPath);
  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v4);
  swift_beginAccess();
  sub_1000170D0(0, v7);
  swift_endAccess();
  return sub_100036A80();
}

uint64_t sub_10003E3E8(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for Application();
  v4 = *(v3 - 8);
  v139 = v3;
  v140 = v4;
  v5 = __chkstk_darwin(v3);
  v131 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v143 = &v127 - v8;
  __chkstk_darwin(v7);
  v138 = &v127 - v9;
  v136 = type metadata accessor for SettingScope();
  v161 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_10000637C(&qword_10007A468, &qword_100065C10);
  v160 = *(v153 - 8);
  __chkstk_darwin(v153);
  v154 = &v127 - v11;
  v162 = type metadata accessor for URL.DirectoryHint();
  v12 = *(v162 - 8);
  __chkstk_darwin(v162);
  v14 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v155 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v144 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v142 = (&v127 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = &v127 - v21;
  __chkstk_darwin(v20);
  v130 = &v127 - v23;
  v147 = type metadata accessor for Logger();
  v24 = *(v147 - 8);
  v25 = __chkstk_darwin(v147);
  v129 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v148 = &v127 - v28;
  v29 = __chkstk_darwin(v27);
  v137 = &v127 - v30;
  __chkstk_darwin(v29);
  v32 = &v127 - v31;
  [*(v2 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v158 = v2;
  if (v35)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Persistence record migration: migrateDataFromLocalAppContainer start", v36, 2u);
    v2 = v158;
  }

  v145 = *(v24 + 8);
  v146 = v24 + 8;
  v145(v32, v147);
  v169 = &_swiftEmptyDictionarySingleton;
  v168 = &_swiftEmptySetSingleton;
  sub_100008578((v2 + 56), *(v2 + 80));
  dispatch thunk of Locatable.effectiveSettingsDirectory.getter();
  v170 = 0xD000000000000014;
  v171 = 0x800000010006A2E0;
  v37 = v162;
  (*(v12 + 104))(v14, enum case for URL.DirectoryHint.notDirectory(_:), v162);
  sub_100011710();
  v38 = v130;
  URL.appending<A>(path:directoryHint:)();
  (*(v12 + 8))(v14, v37);
  v39 = v155[1];
  v156 = (v155 + 1);
  v159 = v39;
  v39(v22, v15);
  v157 = sub_100005C64(_swiftEmptyArrayStorage);
  v167 = v157;
  v40 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v41 = String._bridgeToObjectiveC()();

  v42 = [v40 fileExistsAtPath:v41];

  if (v42)
  {
    v43 = sub_10004E260(v38);
    v162 = 0;
    v44 = v142;
    v45 = v43;

    v167 = v45;
    v157 = v45;
  }

  else
  {
    v162 = 0;
    v44 = v142;
  }

  sub_100008578((v2 + 56), *(v2 + 80));
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v46 = sub_10004EF04(v22);
  v159(v22, v15);
  v166 = v46;
  sub_100008578((v2 + 224), *(v2 + 248));
  v47 = sub_1000069C0();
  v48 = v47[2];
  v128 = v15;
  if (v48)
  {
    v153 = *(v153 + 48);
    v49 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v127 = v47;
    v50 = v47 + v49;
    v152 = *(v160 + 72);
    v150 = v155 + 2;
    *&v151 = v155 + 4;
    v134 = enum case for SettingScope.user(_:);
    v132 = (v161 + 8);
    v133 = (v161 + 104);
    *(&v51 + 1) = 2;
    v149 = xmmword_100066E60;
    *&v51 = 136446210;
    v141 = v51;
    do
    {
      v160 = v50;
      v161 = v48;
      v53 = v154;
      sub_100006754(v50, v154, &qword_10007A468, &qword_100065C10);
      v54 = *(v53 + 16);
      v178 = *v53;
      v179 = v54;
      v180 = *(v53 + 32);
      v55 = v155;
      (v155[4])(v44, v53 + v153, v15);
      sub_10000637C(&qword_10007B1F8, &qword_100066C28);
      v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v149;
      v58 = v55[2];
      v59 = v44;
      v58(v57 + v56, v44, v15);
      v60 = v162;
      v61 = sub_10003F668(&v178, v57, v157, &v169);
      v162 = v60;
      if (v60)
      {
        v185 = v178;
        sub_100020EA0(&v185);
        v186 = v179;
        sub_100020EA0(&v186);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v62 = v148;
        static Logger.persistenceRecordStore.getter();
        v63 = v144;
        v58(v144, v44, v15);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = v63;
          v68 = swift_slowAlloc();
          v170 = v68;
          *v66 = v141;
          sub_10005459C(&qword_10007B860, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = v70;
          v159(v67, v15);
          v72 = sub_100001ED8(v69, v71, &v170);

          *(v66 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v64, v65, "Failed to migrate settings at path %{public}s", v66, 0xCu);
          sub_10000210C(v68);

          v145(v148, v147);
          v44 = v142;
          v159(v142, v15);
          v162 = 0;
        }

        else
        {

          v52 = v159;
          v159(v63, v15);
          v145(v62, v147);
          v52(v59, v15);
          v162 = 0;
          v44 = v59;
        }

        v73 = v161;
      }

      else
      {
        v74 = v61;
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v74)
        {
          v76 = v135;
          v75 = v136;
          (*v133)(v135, v134, v136);
          sub_100035E30(v44, v180, v76);
          v181 = v178;
          sub_100020EA0(&v181);
          v182 = v179;
          sub_100020EA0(&v182);
          (*v132)(v76, v75);
          v159(v44, v15);
        }

        else
        {
          v159(v44, v15);
          v183 = v178;
          sub_100020EA0(&v183);
          v184 = v179;
          sub_100020EA0(&v184);
        }

        v73 = v161;
      }

      v50 = v152 + v160;
      v48 = v73 - 1;
    }

    while (v48);

    v46 = v166;
  }

  else
  {
  }

  v77 = sub_100040148(v46);

  v80 = 0;
  v81 = (v77 + 56);
  v82 = 1 << v77[32];
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v77 + 7);
  v85 = (v82 + 63) >> 6;
  v86 = v139;
  v161 = v140 + 16;
  v160 = v140 + 32;
  v152 = (v140 + 8);
  v148 = 0x8000000100069140;
  *&v79 = 136446210;
  v151 = v79;
  v144 = 0xD000000000000018;
  v87 = v131;
  v88 = v143;
  v153 = v85;
  v154 = v77 + 56;
  v155 = v77;
  if (v84)
  {
    goto LABEL_26;
  }

LABEL_27:
  while (1)
  {
    v90 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v90 >= v85)
    {

      v126 = v130;
      sub_1000506AC(&v167, &v169, v130, &v168, v158);
      v159(v126, v128);
    }

    v84 = *(v81 + 8 * v90);
    ++v80;
    if (v84)
    {
      while (1)
      {
        v91 = __clz(__rbit64(v84));
        v84 &= v84 - 1;
        v92 = v140;
        v93 = *(v140 + 16);
        v94 = v138;
        v93(v138, *(v77 + 6) + *(v140 + 72) * (v91 | (v90 << 6)), v86);
        (*(v92 + 32))(v88, v94, v86);
        v95 = Application.bundleIdentifier.getter();
        if (v96 && (v97 = v95, v98 = v96, sub_100008578((v158 + 224), *(v158 + 248)), sub_100007B60(v97, v98, &v170), , (v99 = v171) != 0))
        {
          v100 = v170;
          v102 = v172;
          v101 = v173;
          v176[0] = v170;
          v176[1] = v171;
          v176[2] = v172;
          v176[3] = v173;
          v177 = v174 & 1;
          v103 = v162;
          sub_10003F668(v176, v175, v157, &v169);
          v162 = v103;
          if (v103)
          {

            v104 = v129;
            static Logger.persistenceRecordStore.getter();

            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              LODWORD(v150) = v106;
              v108 = v107;
              v109 = swift_slowAlloc();
              *&v149 = v109;
              *v108 = v151;
              v163 = 0;
              v164 = 0xE000000000000000;
              v165 = v109;
              v142 = v105;
              _StringGuts.grow(_:)(37);

              v163 = v144;
              v164 = v148;
              v110._countAndFlagsBits = v100;
              v110._object = v99;
              String.append(_:)(v110);
              v111._countAndFlagsBits = 0x44496D616574202CLL;
              v111._object = 0xE900000000000020;
              String.append(_:)(v111);
              v112._countAndFlagsBits = v102;
              v112._object = v101;
              String.append(_:)(v112);

              v113 = sub_100001ED8(v163, v164, &v165);

              *(v108 + 4) = v113;
              v105 = v142;
              _os_log_impl(&_mh_execute_header, v142, v150, "Failed to migrate settings for %{public}s", v108, 0xCu);
              sub_10000210C(v149);
            }

            else
            {
            }

            v145(v104, v147);
            v88 = v143;
            v86 = v139;
            result = (*v152)(v143, v139);
            v162 = 0;
          }

          else
          {
            v125 = v143;
            v86 = v139;
            (*v152)(v143, v139);

            v88 = v125;
          }

          v80 = v90;
          v87 = v131;
          v81 = v154;
          v77 = v155;
          v85 = v153;
          if (!v84)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v114 = v137;
          static Logger.persistenceRecordStore.getter();
          v93(v87, v143, v86);
          v115 = Logger.logObject.getter();
          v116 = v87;
          v117 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v115, v117))
          {
            v118 = swift_slowAlloc();
            *&v149 = v118;
            v150 = swift_slowAlloc();
            v163 = v150;
            *v118 = v151;
            sub_10005459C(&qword_10007B878, &type metadata accessor for Application, &protocol conformance descriptor for Application);
            v119 = dispatch thunk of CustomStringConvertible.description.getter();
            v121 = v120;
            v122 = *v152;
            (*v152)(v116, v139);
            v123 = sub_100001ED8(v119, v121, &v163);
            v86 = v139;

            v124 = v149;
            *(v149 + 4) = v123;
            _os_log_impl(&_mh_execute_header, v115, v117, "Unable to retrieve settings for %{public}s", v124, 0xCu);
            sub_10000210C(v150);

            v145(v137, v147);
            v88 = v143;
            result = v122(v143, v86);
          }

          else
          {

            v89 = *v152;
            (*v152)(v116, v86);
            v145(v114, v147);
            v88 = v143;
            result = v89(v143, v86);
          }

          v80 = v90;
          v87 = v116;
          v85 = v153;
          v81 = v154;
          v77 = v155;
          if (!v84)
          {
            goto LABEL_27;
          }
        }

LABEL_26:
        v90 = v80;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003F668(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t *a4)
{
  v97 = a4;
  v106 = a3;
  v8 = type metadata accessor for Logger();
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v98 = &v87 - v13;
  __chkstk_darwin(v12);
  v91 = &v87 - v14;
  v90 = type metadata accessor for UUID();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ManagedSettingsStore.Name();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for SettingScope();
  v95 = *(v107 - 8);
  __chkstk_darwin(v107);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v105 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10004F3B0(v22);

  swift_beginAccess();
  v96 = v4;
  v23 = *(v4 + 272);

  v24 = sub_10004F4F8(a1, v23);
  v25 = a1;

  if (v24 & 1) != 0 || (sub_10004F4F8(a1, v106))
  {
    static Logger.persistenceRecordStore.getter();
    v27 = *a1;
    v26 = *(v25 + 8);
    v29 = *(v25 + 16);
    v28 = *(v25 + 24);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v107 = v29;
      v33 = v32;
      v34 = swift_slowAlloc();
      v99 = v5;
      v35 = v34;
      v112 = v34;
      *v33 = 136446210;
      v109 = 0;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v109 = 0xD000000000000018;
      v110 = 0x8000000100069140;
      v36._countAndFlagsBits = v27;
      v36._object = v26;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 0x44496D616574202CLL;
      v37._object = 0xE900000000000020;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v107;
      v38._object = v28;
      String.append(_:)(v38);
      v39 = sub_100001ED8(v109, v110, &v112);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Already migrated files for %{public}s", v33, 0xCu);
      sub_10000210C(v35);
    }

    (*(v100 + 8))(v11, v101);
    goto LABEL_6;
  }

  v99 = v5;
  v42 = &_swiftEmptyDictionarySingleton;
  v112 = &_swiftEmptyDictionarySingleton;
  v43 = *(a2 + 16);
  if (v43)
  {
    v44 = v105 + 16;
    v106 = *(v105 + 16);
    v45 = a2 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v87 = a1;
    LODWORD(v105) = *(a1 + 32);
    v104 = *(v44 + 56);
    v103 = enum case for SettingScope.localContainer(_:);
    v102 = (v95 + 104);
    v46 = (v95 + 8);
    v47 = (v44 - 8);
    v48 = v107;
    do
    {
      v49 = v19;
      v50 = v19;
      v51 = v44;
      v106(v21, v45, v49);
      (*v102)(v18, v103, v48);
      sub_100035E08(v21, v105, v18);
      v48 = v107;
      (*v46)(v18, v107);
      (*v47)(v21, v50);
      v44 = v51;
      v19 = v50;
      v45 += v104;
      --v43;
    }

    while (v43);
    v42 = v112;
    v52 = v97;
    v25 = v87;
  }

  else
  {
    v52 = v97;
  }

  v53 = Dictionary<>.sanitize(isInternalClient:)(*(v25 + 32), v42);
  v54 = v25;
  v55 = v98;
  v56 = v99;
  if (!*(v53 + 16))
  {

    static Logger.persistenceRecordStore.getter();
    v58 = *v54;
    v59 = v54[1];
    v60 = v54[2];
    v61 = v54[3];

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v108 = v65;
      v109 = 0;
      *v64 = 136446210;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v109 = 0xD000000000000018;
      v110 = 0x8000000100069140;
      v66._countAndFlagsBits = v58;
      v66._object = v59;
      String.append(_:)(v66);
      v67._countAndFlagsBits = 0x44496D616574202CLL;
      v67._object = 0xE900000000000020;
      String.append(_:)(v67);
      v68._countAndFlagsBits = v60;
      v68._object = v61;
      String.append(_:)(v68);
      v69 = sub_100001ED8(v109, v110, &v108);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "No settings to migrate for %{public}s", v64, 0xCu);
      sub_10000210C(v65);

      (*(v100 + 8))(v98, v101);
    }

    else
    {

      (*(v100 + 8))(v55, v101);
    }

LABEL_6:
    v40 = 0;
    return v40 & 1;
  }

  v57 = sub_100012400(v54, v96 + 152, v53);
  if (v56)
  {

    return v40 & 1;
  }

  if (!*(v53 + 16))
  {

    goto LABEL_23;
  }

  v70 = v54;
  v71 = v57;
  v72 = *(v57 + 16);

  if (!v72)
  {
LABEL_23:

    v40 = 1;
    return v40 & 1;
  }

  v73 = v92;
  static ManagedSettingsStore.Name.default.getter();
  v74 = ManagedSettingsStore.Name.rawValue.getter();
  v76 = v75;
  (*(v93 + 8))(v73, v94);
  v77 = sub_1000460C0(v70, 1);
  sub_10004FAC4(v77, v74, v76, v53, v71, &v111);

  v78 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
  swift_beginAccess();
  if (*(*(v77 + v78) + 16))
  {
    sub_100050310(v77);
    v79 = v89;
    v80 = v88;
    v81 = v90;
    (*(v89 + 16))(v88, v77 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v90);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *v52;
    sub_10001BD04(v77, v80, isUniquelyReferenced_nonNull_native);
    (*(v79 + 8))(v80, v81);
    *v52 = v108;
    v40 = 1;
  }

  else
  {
    v83 = v91;
    static Logger.persistenceRecordStore.getter();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Removing newly created record during migration... This shouldn't be possible", v86, 2u);
    }

    else
    {
    }

    (*(v100 + 8))(v83, v101);
    v40 = 1;
  }

  return v40 & 1;
}

void *sub_100040148(uint64_t a1)
{
  v30 = type metadata accessor for Logger();
  v3 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000637C(&qword_10007B598, &unk_100066F30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v28 = v5;
    v29 = v6;
    sub_100008578((v1 + 56), *(v1 + 80));
    v5 = v28;
    v6 = v29;
    dispatch thunk of Locatable.effectiveSettingsPath.getter();
    v13 = sub_10004EF04(v12);
    (*(v10 + 8))(v12, v9);
  }

  static ManagedSettingsSettings.allowedClients.getter();
  v14 = SettingMetadata.name.getter();
  v16 = v31;
  if (*(v13 + 16))
  {
    v17 = sub_1000182E8(v14, v15);
    v19 = v18;

    if (v19)
    {
      v20 = *(*(v13 + 56) + 8 * v17);

      type metadata accessor for Application();
      sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      v21 = v20;
      v22 = static Set<>.value(from:)();

      v32 = v22;
      sub_10000637C(&qword_10007B880, &qword_100067058);
      sub_10000637C(&qword_10007ACA8, &unk_100067060);
      if (swift_dynamicCast())
      {
        v23 = v33;
        if (v33)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_11:
  static Logger.persistenceRecordStore.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "No allowed clients found", v26, 2u);
  }

  (*(v3 + 8))(v16, v30);
  v23 = &_swiftEmptySetSingleton;
LABEL_14:
  (*(v6 + 8))(v8, v5);
  return v23;
}

void sub_100040550()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  __chkstk_darwin(v2);
  v73 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v71 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v72 = &v57 - v10;
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v62 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v57 - v17;
  [*(v1 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Persistence record migration: migrateRecordDataFromEffectiveSettingsDirectory start", v21, 2u);
  }

  v22 = *(v14 + 8);
  v63 = (v14 + 8);
  v64 = v13;
  v61 = v22;
  v22(v18, v13);
  v81[0] = &_swiftEmptyDictionarySingleton;
  v80 = &_swiftEmptySetSingleton;
  sub_100008578((v1 + 56), *(v1 + 80));
  v23 = v72;
  dispatch thunk of Locatable.effectiveSettingsDirectory.getter();
  v78 = 0xD000000000000014;
  v79 = 0x800000010006A2E0;
  v25 = v74;
  v24 = v75;
  v26 = *(v75 + 104);
  v27 = v73;
  v70 = enum case for URL.DirectoryHint.notDirectory(_:);
  v68 = v26;
  v69 = v75 + 104;
  v26(v73);
  v67 = sub_100011710();
  URL.appending<A>(path:directoryHint:)();
  v28 = *(v24 + 8);
  v75 = v24 + 8;
  v66 = v28;
  v28(v27, v25);
  v29 = *(v6 + 8);
  v29(v23, v5);
  v30 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v30 fileExistsAtPath:v31];

  if (v32)
  {
    v33 = v23;
    v34 = v71;
    (*(v6 + 16))(v71, v12, v5);
    sub_100049CB8(v33, v34);
    v29(v33, v5);
    v35 = sub_10004E260(v12);
    v36 = v6 + 8;
    v63 = v12;
    v64 = v5;
    v65 = v1;
    v37 = v35 + 8;
    v38 = 1 << *(v35 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & v35[8];
    v41 = (v38 + 63) >> 6;
    v42 = 0;

    v59 = v36;
    v60 = v29;
    v58 = v43;
    while (v40)
    {
LABEL_14:
      v45 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v46 = *(*(v43 + 56) + ((v42 << 9) | (8 * v45)));
      v47 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
      swift_beginAccess();
      if (*(*(v46 + v47) + 16))
      {
        sub_100008578((v65 + 56), *(v65 + 80));

        dispatch thunk of Locatable.persistenceRecordStoreDirectory.getter();
        v76 = UUID.uuidString.getter();
        v77 = v48;
        v50 = v73;
        v49 = v74;
        v68(v73, v70, v74);
        v51 = v72;
        URL.appending<A>(path:directoryHint:)();
        v52 = v50;
        v53 = v71;
        v66(v52, v49);

        v54 = v64;
        v60(v53, v64);
        sub_100040D28(v46, v51, v81);

        v55 = v51;
        v29 = v60;
        v56 = v54;
        v43 = v58;
        v60(v55, v56);
      }
    }

    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= v41)
      {
        v29(v63, v64);

        v1 = v65;
        goto LABEL_17;
      }

      v40 = v37[v44];
      ++v42;
      if (v40)
      {
        v42 = v44;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v29(v12, v5);
LABEL_17:
    sub_10005194C(v1, v81, &v80);
  }
}

uint64_t sub_100040D28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v86 = a3;
  v91 = a2;
  v5 = type metadata accessor for Logger();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = __chkstk_darwin(v5);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v94 = &v80 - v8;
  v85 = type metadata accessor for UUID();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v80 - v16;
  __chkstk_darwin(v15);
  v19 = &v80 - v18;
  v20 = *(v11 + 16);
  v20(&v80 - v18, a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_containerPath, v10);
  v20(v14, v19, v10);
  sub_100049CB8(v17, v14);
  v82 = v11;
  v21 = v11;
  v22 = a1;
  v24 = *(v21 + 8);
  v23 = (v21 + 8);
  v95 = v24;
  v96 = v10;
  v24(v17, v10);
  v25 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
  v97 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
  v98 = v25;
  v99 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);
  v90 = *(&v97 + 1);
  v88 = v97;
  v89 = *(&v25 + 1);
  v26 = v25;
  swift_beginAccess();
  v27 = *(v3 + 272);

  v28 = sub_10004F4F8(&v97, v27);

  if (v28)
  {
    v29 = v26;
    static Logger.persistenceRecordStore.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v102 = v33;
      *v32 = 136446210;
      v100 = 0;
      v101 = 0xE000000000000000;
      v34 = v90;

      v35 = v89;

      _StringGuts.grow(_:)(37);

      v100 = 0xD000000000000018;
      v101 = 0x8000000100069140;
      v36._countAndFlagsBits = v88;
      v36._object = v34;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 0x44496D616574202CLL;
      v37._object = 0xE900000000000020;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v29;
      v38._object = v35;
      String.append(_:)(v38);

      v39 = sub_100001ED8(v100, v101, &v102);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Already migrated files for %{public}s", v32, 0xCu);
      sub_10000210C(v33);
    }

    (*(v92 + 8))(v94, v93);
    return v95(v19, v96);
  }

  else
  {
    v94 = v23;
    v41 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    v100 = 0;
    v48 = [v41 moveItemAtURL:v44 toURL:v46 error:&v100];

    v49 = v100;
    v81 = v19;
    if (v48)
    {
      v50 = v84;
      v51 = *(v84 + 16);
      v92 = v84 + 16;
      v93 = v51;
      v52 = v83;
      v53 = v85;
      v51(v83, v22 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v85);
      v54 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
      swift_beginAccess();
      v55 = *(v22 + v54);
      v56 = v96;
      v20(v17, v91, v96);
      type metadata accessor for PersistenceRecord(0);
      v57 = swift_allocObject();
      v58 = v53;
      (*(v50 + 32))(v57 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v52, v53);
      v59 = v57 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
      v60 = v98;
      *v59 = v97;
      *(v59 + 16) = v60;
      *(v59 + 32) = v99;
      *(v57 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory) = v55;
      (*(v82 + 32))(v57 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_containerPath, v17, v56);
      *(v57 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_version) = 1;
      v61 = v86;
      v62 = *v86;

      v63 = v49;

      v64 = sub_100051448(v62, v57);

      *v61 = v64;
      v93(v52, v57 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = *v61;
      sub_10001BD04(v57, v52, isUniquelyReferenced_nonNull_native);
      (*(v50 + 8))(v52, v58);
      *v61 = v102;
      v66 = v81;
      v67 = v56;
    }

    else
    {
      v68 = v100;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v69 = v87;
      static Logger.persistenceRecordStore.getter();

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v102 = v73;
        *v72 = 136446210;
        v100 = 0;
        v101 = 0xE000000000000000;
        v74 = v90;

        v75 = v89;

        _StringGuts.grow(_:)(37);

        v100 = 0xD000000000000018;
        v101 = 0x8000000100069140;
        v76._countAndFlagsBits = v88;
        v76._object = v74;
        String.append(_:)(v76);
        v77._countAndFlagsBits = 0x44496D616574202CLL;
        v77._object = 0xE900000000000020;
        String.append(_:)(v77);
        v78._countAndFlagsBits = v26;
        v78._object = v75;
        String.append(_:)(v78);

        v79 = sub_100001ED8(v100, v101, &v102);

        *(v72 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v70, v71, "Unable to move record data for %{public}s", v72, 0xCu);
        sub_10000210C(v73);
      }

      (*(v92 + 8))(v69, v93);
      v66 = v81;
      v67 = v96;
    }

    return v95(v66, v67);
  }
}

void *sub_1000416E0()
{
  v31 = sub_10000637C(&qword_10007B810, "(N");
  v1 = __chkstk_darwin(v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  swift_beginAccess();
  v5 = *(v0 + 272);
  v27 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = v5;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v28 = v10;
  v29 = v6;
LABEL_4:
  v13 = v12;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    v12 = v13;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = v32;
    v17 = *(v32 + 48);
    v18 = type metadata accessor for UUID();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v4, v17 + *(v19 + 72) * v15, v18);
    v20 = v31;
    *&v4[*(v31 + 48)] = *(*(v16 + 56) + 8 * v15);
    v21 = v4;
    v22 = v4;
    v23 = v30;
    sub_100006754(v21, v30, &qword_10007B810, "(N");
    LODWORD(v33) = *(*(v23 + *(v20 + 48)) + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);

    v24 = *(v19 + 8);
    v24(v23, v18);
    if (v33)
    {
      v33 = v22;
      v25 = v30;
      sub_100008690(v22, v30, &qword_10007B810, "(N");
      v24(v25, v18);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v33;
      v27 = v34;
      v10 = v28;
      v6 = v29;
      goto LABEL_4;
    }

    result = sub_100008630(v22, &qword_10007B810, "(N");
    v13 = v12;
    v4 = v22;
    v10 = v28;
    v6 = v29;
  }

  while (v9);
LABEL_6:
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v27;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100041A30(uint64_t a1, __n128 a2)
{
  v48 = type metadata accessor for Application();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000637C(&qword_10007B810, "(N");
  __chkstk_darwin(v46);
  v7 = a1;
  v9 = &v40 - v8;
  v10 = sub_100040148(v7);
  swift_beginAccess();
  v11 = *(v2 + 272);
  v41 = _swiftEmptyArrayStorage;
  v53 = v10;
  v54 = _swiftEmptyArrayStorage;
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10 + 56;
  v50 = v4 + 16;
  v51 = v4;
  v49 = (v4 + 8);
  v47 = v11;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v44 = v16;
  v45 = v12;
  v52 = v6;
  v43 = v9;
  if (!v15)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v18 << 6);
    v22 = v47;
    v23 = *(v47 + 48);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 16))(v9, v23 + *(*(v24 - 8) + 72) * v21, v24);
    v25 = *(*(v22 + 56) + 8 * v21);
    *&v9[*(v46 + 48)] = v25;
    v26 = (v25 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    if (*(v25 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32) != 1)
    {
      v27 = 1 << v53[32];
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & *(v53 + 7);
      v30 = (v27 + 63) >> 6;
      v42 = v25;

      v31 = 0;
      v32 = v48;
      while (v29)
      {
LABEL_21:
        v34 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v35 = v52;
        (*(v51 + 16))(v52, *(v53 + 6) + *(v51 + 72) * (v34 | (v31 << 6)), v32);
        v36 = Application.bundleIdentifier.getter();
        if (v37)
        {
          if (v36 == *v26 && v37 == v26[1])
          {

            (*v49)(v52, v48);
LABEL_33:

            v9 = v43;
            sub_100008630(v43, &qword_10007B810, "(N");
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v41 = v54;
            goto LABEL_30;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v32 = v48;
          (*v49)(v52, v48);
          if (v39)
          {
            goto LABEL_33;
          }
        }

        else
        {
          (*v49)(v35, v32);
        }
      }

      while (1)
      {
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v33 >= v30)
        {

          v9 = v43;
          goto LABEL_29;
        }

        v29 = *&v17[8 * v33];
        ++v31;
        if (v29)
        {
          v31 = v33;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_29:
    sub_100008630(v9, &qword_10007B810, "(N");
LABEL_30:
    v16 = v44;
    v12 = v45;
  }

  while (v15);
LABEL_5:
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
      goto LABEL_9;
    }
  }

LABEL_38:
  __break(1u);
}

id sub_100041ECC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v323 = a1;
  v361 = type metadata accessor for URL.DirectoryHint();
  v368 = *(v361 - 8);
  __chkstk_darwin(v361);
  v360 = &v322 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = type metadata accessor for Logger();
  v374 = *(v370 - 8);
  v5 = __chkstk_darwin(v370);
  v329 = &v322 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v322 - v8;
  v10 = __chkstk_darwin(v7);
  v349 = &v322 - v11;
  v12 = __chkstk_darwin(v10);
  v352 = &v322 - v13;
  v14 = __chkstk_darwin(v12);
  v377.super.isa = (&v322 - v15);
  v16 = __chkstk_darwin(v14);
  v377._urlString = (&v322 - v17);
  v18 = __chkstk_darwin(v16);
  v373 = &v322 - v19;
  v20 = __chkstk_darwin(v18);
  v353 = &v322 - v21;
  v22 = __chkstk_darwin(v20);
  v350 = &v322 - v23;
  v24 = __chkstk_darwin(v22);
  v341 = &v322 - v25;
  v26 = __chkstk_darwin(v24);
  v340 = &v322 - v27;
  v28 = __chkstk_darwin(v26);
  v376 = &v322 - v29;
  v30 = __chkstk_darwin(v28);
  v372 = (&v322 - v31);
  v32 = __chkstk_darwin(v30);
  v375 = &v322 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v322 - v35;
  __chkstk_darwin(v34);
  v38 = &v322 - v37;
  v39 = type metadata accessor for URL();
  v330 = *(v39 - 8);
  v40 = __chkstk_darwin(v39);
  v344 = &v322 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v343 = &v322 - v43;
  v44 = __chkstk_darwin(v42);
  v362 = &v322 - v45;
  v46 = __chkstk_darwin(v44);
  v328 = &v322 - v47;
  v48 = __chkstk_darwin(v46);
  v335 = &v322 - v49;
  v50 = __chkstk_darwin(v48);
  v371 = &v322 - v51;
  v52 = __chkstk_darwin(v50);
  v369 = &v322 - v53;
  v54 = __chkstk_darwin(v52);
  v366 = &v322 - v55;
  v56 = __chkstk_darwin(v54);
  v364 = (&v322 - v57);
  v58 = __chkstk_darwin(v56);
  v365 = &v322 - v59;
  v60 = __chkstk_darwin(v58);
  v354 = &v322 - v61;
  v62 = __chkstk_darwin(v60);
  v359 = (&v322 - v63);
  __chkstk_darwin(v62);
  v65 = &v322 - v64;
  [*(v1 + 216) lock];
  v66 = *(v1 + 80);
  v331 = v1;
  sub_100008578((v1 + 56), v66);
  dispatch thunk of Locatable.diagnosticsDirectory.getter();
  v67 = [objc_opt_self() defaultManager];
  v345 = v65;
  URL.path.getter();
  v68 = String._bridgeToObjectiveC()();

  v325 = v67;
  v69 = [v67 fileExistsAtPath:v68];

  v363 = v39;
  v70 = v9;
  v355 = v9;
  if (v69)
  {
    static Logger.persistenceRecordStore.getter();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Diagnostics directory already exist. Deleting old data...", v73, 2u);
    }

    v74 = *(v374 + 8);
    v74(v38, v370);
    URL._bridgeToObjectiveC()(&v377);
    v76 = v75;
    v380 = 0;
    v77 = [v325 removeItemAtURL:v75 error:&v380];

    if (v77)
    {
      v78 = v380;
    }

    else
    {
      v79 = v380;
      v80 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v3 = 0;
      v81 = v373;
      static Logger.persistenceRecordStore.getter();
      swift_errorRetain();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      LODWORD(v367) = v83;
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v357 = 0;
        v358 = v74;
        v85 = v84;
        v86 = swift_slowAlloc();
        v380 = v86;
        *v85 = 136446210;
        v382 = v80;
        swift_errorRetain();
        sub_10000637C(&qword_10007A380, &qword_100065BE0);
        v87 = String.init<A>(describing:)();
        v89 = sub_100001ED8(v87, v88, &v380);

        *(v85 + 4) = v89;
        v70 = v355;
        _os_log_impl(&_mh_execute_header, v82, v367, "Failed to delete old diagnostics directory. Error: %{public}s", v85, 0xCu);
        sub_10000210C(v86);

        v3 = v357;

        v358(v373, v370);
      }

      else
      {

        v74(v81, v370);
      }
    }
  }

  static Logger.persistenceRecordStore.getter();
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&_mh_execute_header, v90, v91, "Creating new diagnostics directory...", v92, 2u);
  }

  v93 = *(v374 + 8);
  v94 = v36;
  v95 = v370;
  v374 += 8;
  v373 = v93;
  (v93)(v94, v370);
  v96 = type metadata accessor for Persistence();
  static Persistence.createDirectory(at:)();
  v97 = v363;
  if (!v3)
  {
    v351 = v96;
    v108 = v375;
    static Logger.persistenceRecordStore.getter();
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v109, v110, "Copying effective settings...", v111, 2u);
      v95 = v370;
    }

    (v373)(v108, v95);
    v380 = 0xD000000000000017;
    v381 = 0x800000010006A2C0;
    v112 = v368;
    v113 = *(v368 + 104);
    v114 = v360;
    v339 = enum case for URL.DirectoryHint.notDirectory(_:);
    v115 = v361;
    v367 = v113;
    v358 = (v368 + 104);
    (v113)(v360);
    v116 = sub_100011710();
    v117 = v359;
    v357 = v116;
    URL.appending<A>(path:directoryHint:)();
    v356 = *(v112 + 8);
    v356(v114, v115);
    sub_100008578((v331 + 56), *(v331 + 80));
    v118 = v354;
    dispatch thunk of Locatable.effectiveSettingsPath.getter();
    v119 = static Persistence.readRawSettings(from:)();
    v368 = v112 + 8;
    v121 = v70;
    v122 = *(v330 + 8);
    v123 = v119;
    v122(v118, v97);
    v124 = Dictionary<>.filterSensitiveInformation()(v123);

    sub_100053E9C(v124, v117, &static Persistence.writeRawSettings(_:to:));
    v375 = v122;
    v122(v117, v97);

    v125 = v121;
    v126 = v372;
    static Logger.persistenceRecordStore.getter();
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.default.getter();
    v129 = os_log_type_enabled(v127, v128);
    v130 = v364;
    if (v129)
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "Copying setting records...", v131, 2u);
    }

    (v373)(v126, v370);
    v380 = 0xD000000000000014;
    v381 = 0x800000010006A2E0;
    v132 = v360;
    v133 = v361;
    v367(v360, v339, v361);
    v134 = v365;
    URL.appending<A>(path:directoryHint:)();
    v356(v132, v133);
    sub_100008578((v331 + 56), *(v331 + 80));
    dispatch thunk of Locatable.persistenceRecordStorePath.getter();
    v135 = sub_10004E260(v130);
    v136 = v130;
    v137 = v125;
    v138 = v375;
    (v375)(v136, v97);
    sub_10004E694(v135, v134);
    v377._urlString = 0;
    v138(v134, v97);

    v166 = v137;
    v139 = v366;
    v140 = v376;
    static Logger.persistenceRecordStore.getter();
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.default.getter();
    v143 = os_log_type_enabled(v141, v142);
    v144 = v369;
    if (v143)
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&_mh_execute_header, v141, v142, "Copying data version...", v145, 2u);
    }

    (v373)(v140, v370);
    v380 = 0xD000000000000011;
    v381 = 0x800000010006A300;
    v146 = v360;
    v147 = v361;
    v367(v360, v339, v361);
    URL.appending<A>(path:directoryHint:)();
    v356(v146, v147);
    sub_100008578((v331 + 56), *(v331 + 80));
    dispatch thunk of Locatable.dataVersionPath.getter();
    urlString = v377._urlString;
    static Persistence.dataVersion(from:)();
    p_isa = urlString;
    if (urlString)
    {
      v151 = v375;
      (v375)(v144, v97);
      v372 = 0;
LABEL_25:
      v375 = v151;
      (v151)(v139, v97);
      v152 = v349;
      static Logger.persistenceRecordStore.getter();
      swift_errorRetain();
      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v380 = v156;
        *v155 = 136446210;
        v382 = p_isa;
        swift_errorRetain();
        sub_10000637C(&qword_10007A380, &qword_100065BE0);
        v157 = String.init<A>(describing:)();
        v159 = sub_100001ED8(v157, v158, &v380);
        v166 = v355;

        *(v155 + 4) = v159;
        v97 = v363;
        v160 = v154;
        v161 = v370;
        _os_log_impl(&_mh_execute_header, v153, v160, "Failed to copy data version. Error: %{public}s", v155, 0xCu);
        sub_10000210C(v156);

        v162 = v152;
        v163 = v161;
      }

      else
      {

        v162 = v152;
        v163 = v370;
      }

      (v373)(v162, v163);
LABEL_34:
      v167 = v331;
      swift_beginAccess();
      v169 = *(v167 + 272);
      v170 = *(v169 + 16);
      if (v170)
      {
        v171 = sub_100047A28(*(v169 + 16), 0);
        v172 = sub_10004DCDC(&v380, (v171 + 32), v170, v169);
        v173 = v380;

        sub_100003AB8(v173);
        if (v172 != v170)
        {
          __break(1u);
        }

        v166 = v355;
        v97 = v363;
        v174 = v171;
        if (v171 < 0)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v174 = _swiftEmptyArrayStorage;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
        {
          goto LABEL_133;
        }
      }

      if ((v174 & 0x4000000000000000) != 0)
      {
        goto LABEL_133;
      }

      v175 = *(v174 + 16);
      if (!v175)
      {
LABEL_134:

        (*(v330 + 32))(v323, v345, v97);
        return [*(v331 + 216) unlock];
      }

LABEL_41:
      v176 = 0;
      v338 = v174 & 0xC000000000000001;
      v327 = v174 + 32;
      LODWORD(v354) = enum case for URL.DirectoryHint.isDirectory(_:);
      v365 = (v330 + 8);
      v326 = 0x800000010006A320;
      v332 = 0x8000000100069320;
      *&v168 = 136446210;
      v333 = v168;
      *&v168 = 136446466;
      v342 = v168;
      *&v168 = 136446722;
      v334 = v168;
      v324 = xmmword_100065C80;
      v337 = v174;
      v336 = v175;
      while (1)
      {
        if (v338)
        {
          v178 = v176;
          v376 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v179 = v176 + 1;
          if (__OFADD__(v178, 1))
          {
            goto LABEL_129;
          }
        }

        else
        {
          if (v176 >= *(v174 + 16))
          {
            goto LABEL_132;
          }

          v376 = *(v327 + 8 * v176);

          v180 = __OFADD__(v176, 1);
          v179 = v176 + 1;
          if (v180)
          {
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            v175 = _CocoaArrayWrapper.endIndex.getter();
            if (!v175)
            {
              goto LABEL_134;
            }

            goto LABEL_41;
          }
        }

        v349 = v179;
        v181 = *&v376[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8];
        isa = *&v376[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client];
        v182 = isa;
        v379 = v181;
        v183 = v360;
        v184 = v361;
        v367(v360, v354, v361);

        URL.appending<A>(path:directoryHint:)();
        v356(v183, v184);
        v185 = v340;
        static Logger.persistenceRecordStore.getter();

        v186 = Logger.logObject.getter();
        v187 = static os_log_type_t.default.getter();

        v188 = os_log_type_enabled(v186, v187);
        v364 = v182;
        if (v188)
        {
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          isa = v190;
          *v189 = v333;
          *(v189 + 4) = sub_100001ED8(v182, v181, &isa);
          _os_log_impl(&_mh_execute_header, v186, v187, "Creating new diagnostics directory for “%{public}s”...", v189, 0xCu);
          sub_10000210C(v190);
        }

        v191 = v370;
        (v373)(v185, v370);
        v192 = v341;
        v193 = v372;
        static Persistence.createDirectory(at:)();
        if (!v193)
        {
          break;
        }

        v372 = 0;
        static Logger.persistenceRecordStore.getter();

        swift_errorRetain();
        v194 = Logger.logObject.getter();
        v195 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v194, v195))
        {
          v196 = swift_slowAlloc();
          isa = swift_slowAlloc();
          *v196 = v342;
          v197 = v97;
          v198 = sub_100001ED8(v364, v181, &isa);

          *(v196 + 4) = v198;
          *(v196 + 12) = 2082;
          v377._baseURL = v193;
          swift_errorRetain();
          sub_10000637C(&qword_10007A380, &qword_100065BE0);
          v199 = String.init<A>(describing:)();
          v201 = sub_100001ED8(v199, v200, &isa);
          v202 = v375;

          *(v196 + 14) = v201;
          v97 = v197;
          v203 = v370;
          _os_log_impl(&_mh_execute_header, v194, v195, "Failed to create diagnostics directory for “%{public}s.” Error: %{public}s", v196, 0x16u);
          swift_arrayDestroy();

          v166 = v355;

          (v373)(v166, v203);
          v202(v371, v97);
        }

        else
        {

          (v373)(v166, v191);
          (v375)(v371, v97);
        }

LABEL_43:
        v176 = v349;
        v174 = v337;
        if (v349 == v336)
        {
          goto LABEL_134;
        }
      }

      static Logger.persistenceRecordStore.getter();

      v204 = Logger.logObject.getter();
      v205 = static os_log_type_t.default.getter();

      v206 = os_log_type_enabled(v204, v205);
      v366 = v181;
      v377._urlString = 0;
      if (v206)
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        isa = v208;
        *v207 = v333;
        *(v207 + 4) = sub_100001ED8(v364, v181, &isa);
        _os_log_impl(&_mh_execute_header, v204, v205, "Copying effective settings for container “%{public}s” ...", v207, 0xCu);
        sub_10000210C(v208);
      }

      (v373)(v192, v191);
      v377.super.isa = 0xD00000000000001DLL;
      v209 = v326;
      isa = 0xD00000000000001DLL;
      v379 = v326;
      v210 = v360;
      v211 = v339;
      v212 = v361;
      v213 = v367;
      v367(v360, v339, v361);
      URL.appending<A>(path:directoryHint:)();
      v214 = v356;
      v356(v210, v212);
      isa = v377.super.isa;
      v379 = v209;
      v213(v210, v211, v212);
      v215 = v328;
      URL.appending<A>(path:directoryHint:)();
      v214(v210, v212);
      v216 = v377._urlString;
      v217 = static Persistence.readRawSettings(from:)();
      if (v216)
      {
        v218 = v363;
        v219 = v375;
        (v375)(v215, v363);
        v220 = v219;
        (v219)(v335, v218);
        v372 = 0;
        v221 = v329;
        v227 = v364;
        static Logger.persistenceRecordStore.getter();
        v228 = v366;

        swift_errorRetain();
        v229 = Logger.logObject.getter();
        v230 = static os_log_type_t.error.getter();

        v231 = os_log_type_enabled(v229, v230);
        v166 = v355;
        if (v231)
        {
          v232 = swift_slowAlloc();
          isa = swift_slowAlloc();
          *v232 = v342;
          *(v232 + 4) = sub_100001ED8(v227, v228, &isa);
          *(v232 + 12) = 2082;
          v377._baseURL = v216;
          swift_errorRetain();
          sub_10000637C(&qword_10007A380, &qword_100065BE0);
          v233 = String.init<A>(describing:)();
          v235 = sub_100001ED8(v233, v234, &isa);
          v236 = v370;

          *(v232 + 14) = v235;
          v237 = v230;
          v321 = v236;
          _os_log_impl(&_mh_execute_header, v229, v237, "Failed to copy effective settings for “%{public}s.” Error: %{public}s", v232, 0x16u);
          swift_arrayDestroy();
          v166 = v355;

          v238 = v221;
          v239 = v236;
        }

        else
        {

          v238 = v221;
          v321 = v370;
          v239 = v370;
        }

        (v373)(v238, v239);
        v97 = v220;
      }

      else
      {
        v222 = v217;
        v223 = v363;
        v224 = v375;
        (v375)(v215, v363);
        v225 = Dictionary<>.filterSensitiveInformation()(v222);

        v226 = v335;
        sub_100053E9C(v225, v335, &static Persistence.writeRawSettings(_:to:));
        v372 = 0;
        (v224)(v226, v223);

        v97 = v224;
        v166 = v355;
        v321 = v370;
      }

      v240 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
      v241 = v376;
      swift_beginAccess();
      v348 = v240;
      v242 = *&v241[v240];
      v243 = v242 + 64;
      v244 = 1 << v242[32];
      if (v244 < 64)
      {
        v245 = ~(-1 << v244);
      }

      else
      {
        v245 = -1;
      }

      v246 = v245 & *(v242 + 8);
      v174 = (v244 + 63) >> 6;
      v352 = v242;

      v247 = 0;
      v248 = v350;
      v249 = v366;
      v347 = v243;
      for (i = v174; ; v174 = i)
      {
        v250 = v247;
        v375 = v97;
        if (!v246)
        {
          while (1)
          {
            v247 = v250 + 1;
            if (__OFADD__(v250, 1))
            {
              break;
            }

            if (v247 >= v174)
            {
              v177 = v97;
              v97 = v363;
              v177(v371, v363);

              goto LABEL_43;
            }

            v246 = *&v243[8 * v247];
            ++v250;
            if (v246)
            {
              v251 = v249;
              v252 = v321;
              goto LABEL_75;
            }
          }

          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        v251 = v249;
        v252 = v321;
LABEL_75:
        v369 = v246;
        v253 = __clz(__rbit64(v246)) | (v247 << 6);
        v254 = *(v352 + 7);
        v255 = *(v352 + 6) + 16 * v253;
        v256 = *(v255 + 8);
        v377.super.isa = *v255;
        v257 = v254 + 32 * v253;
        v258 = *(v257 + 8);
        v359 = *v257;

        static Logger.persistenceRecordStore.getter();

        v259 = v248;
        v260 = Logger.logObject.getter();
        v261 = static os_log_type_t.default.getter();
        v377._urlString = v256;

        if (os_log_type_enabled(v260, v261))
        {
          v262 = swift_slowAlloc();
          isa = swift_slowAlloc();
          *v262 = v342;
          *(v262 + 4) = sub_100001ED8(v364, v251, &isa);
          *(v262 + 12) = 2082;
          *(v262 + 14) = sub_100001ED8(v377.super.isa, v377._urlString, &isa);
          _os_log_impl(&_mh_execute_header, v260, v261, "Copying data for container “%{public}s” and name “%{public}s”...", v262, 0x16u);
          swift_arrayDestroy();

          v263 = v259;
          v264 = v370;
        }

        else
        {

          v263 = v259;
          v264 = v252;
        }

        (v373)(v263, v264);
        isa = v359;
        v379 = v258;
        v265._countAndFlagsBits = 0x7473696C702ELL;
        v265._object = 0xE600000000000000;
        String.append(_:)(v265);
        v266 = v360;
        v267 = v361;
        v367(v360, v354, v361);
        URL.appending<A>(path:directoryHint:)();
        v268 = v356;
        v356(v266, v267);

        v269 = v344;
        v270 = v372;
        sub_10000F5A4(v377.super.isa, v377._urlString, v344);
        v271 = v343;
        if (v270)
        {
          break;
        }

        isa = 0xD000000000000011;
        v379 = v332;
        v372 = 0;
        v367(v266, v339, v267);
        URL.appending<A>(path:directoryHint:)();
        v268(v266, v267);
        v272 = v363;
        v273 = v375;
        (v375)(v269, v363);
        v274 = v372;
        v275 = static Persistence.readRawSettings(from:)();
        if (v274)
        {

          v273(v271, v272);
          goto LABEL_82;
        }

        v285 = v275;
        v273(v271, v272);
        v166 = v362;
        v249 = v366;
        if (v285)
        {
          v174 = Dictionary<>.filterSensitiveInformation()(v285);
        }

        else
        {
          v174 = &_swiftEmptyDictionarySingleton;
        }

LABEL_83:
        if (*(*&v376[v348] + 16))
        {

          sub_1000182E8(v377.super.isa, v377._urlString);
          if (v276)
          {

            v277 = Bool.persistableValue()();
            if (v277)
            {
              v278 = v277;
              v279 = Bool.persistableValue()();
              if (v279)
              {
                v280 = v279;
                sub_10000637C(&qword_10007A490, &qword_100065D50);
                inited = swift_initStackObject();
                *(inited + 16) = v324;
                *(inited + 32) = static ManagedSettingsStore.PropertyKeys.active.getter();
                *(inited + 40) = v282;
                *(inited + 48) = v278;
                v372 = v278;
                *(inited + 56) = static ManagedSettingsStore.PropertyKeys.syncToWatch.getter();
                *(inited + 64) = v283;
                *(inited + 72) = v280;
                v284 = v280;
                sub_100006278(inited);
                swift_setDeallocating();
                sub_10000637C(&qword_10007A498, &qword_100065D58);
                v249 = v366;
                swift_arrayDestroy();

LABEL_98:

                goto LABEL_99;
              }
            }

            if (qword_10007A210 != -1)
            {
              swift_once();
            }

            goto LABEL_98;
          }
        }

        if (qword_10007A210 != -1)
        {
          swift_once();
        }

LABEL_99:
        sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
        v286 = Dictionary._bridgeToObjectiveC()().super.isa;

        v97 = v286;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        isa = v174;
        v288 = sub_1000182E8(0x69747265706F7250, 0xEA00000000007365);
        v290 = *(v174 + 16);
        v291 = (v289 & 1) == 0;
        v180 = __OFADD__(v290, v291);
        v292 = v290 + v291;
        if (v180)
        {
          goto LABEL_128;
        }

        v293 = v289;
        if (*(v174 + 24) >= v292)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v319 = v288;
            sub_10001DD34();
            v288 = v319;
          }
        }

        else
        {
          sub_10001B190(v292, isUniquelyReferenced_nonNull_native);
          v288 = sub_1000182E8(0x69747265706F7250, 0xEA00000000007365);
          if ((v293 & 1) != (v294 & 1))
          {
            goto LABEL_136;
          }
        }

        v174 = v377.super.isa;
        v295 = isa;
        if (v293)
        {
          v296 = isa[7];
          v297 = *(v296 + 8 * v288);
          *(v296 + 8 * v288) = v97;
        }

        else
        {
          isa[(v288 >> 6) + 8] |= 1 << v288;
          v298 = (v295[6] + 16 * v288);
          *v298 = 0x69747265706F7250;
          v298[1] = 0xEA00000000007365;
          *(v295[7] + 8 * v288) = v97;
          v299 = v295[2];
          v180 = __OFADD__(v299, 1);
          v300 = v299 + 1;
          if (v180)
          {
            goto LABEL_131;
          }

          v295[2] = v300;
        }

        v301 = String.persistableValue()();
        if (v301)
        {
          v174 = v301;
          v372 = v97;
          v97 = v249;
          v302 = v166;
          v166 = 0;
          v303 = swift_isUniquelyReferenced_nonNull_native();
          isa = v295;
          v305 = sub_1000182E8(0x6D614E65726F7453, 0xE900000000000065);
          v306 = v295[2];
          v307 = (v304 & 1) == 0;
          v308 = v306 + v307;
          if (__OFADD__(v306, v307))
          {
            goto LABEL_130;
          }

          v309 = v304;
          if (v295[3] >= v308)
          {
            if ((v303 & 1) == 0)
            {
              sub_10001DD34();
            }
          }

          else
          {
            sub_10001B190(v308, v303);
            v310 = sub_1000182E8(0x6D614E65726F7453, 0xE900000000000065);
            if ((v309 & 1) != (v311 & 1))
            {
LABEL_136:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v305 = v310;
          }

          v295 = isa;
          v166 = v302;
          if (v309)
          {
            v317 = isa[7];
            v318 = *(v317 + 8 * v305);
            *(v317 + 8 * v305) = v174;
          }

          else
          {
            sub_10001D074(v305, 0x6D614E65726F7453, 0xE900000000000065, v174, isa);
          }

          v316 = v369;
          v249 = v97;
          v97 = v372;
        }

        else
        {
          v312 = sub_1000182E8(0x6D614E65726F7453, 0xE900000000000065);
          if (v313)
          {
            v314 = v312;
            v315 = swift_isUniquelyReferenced_nonNull_native();
            isa = v295;
            v316 = v369;
            if (!v315)
            {
              sub_10001DD34();
              v295 = isa;
            }

            sub_100048874(v314, v295);
          }

          else
          {
            v316 = v369;
          }
        }

        v246 = (v316 - 1) & v316;
        sub_100053E9C(v295, v166, &static Persistence.writeRawSettings(_:to:));
        v372 = 0;
        v320 = v375;
        (v375)(v166, v363);

        v97 = v320;
        v321 = v370;
        v166 = v355;
        v248 = v350;
        v243 = v347;
      }

LABEL_82:
      v174 = &_swiftEmptyDictionarySingleton;
      v166 = v362;
      v249 = v366;
      goto LABEL_83;
    }

    v372 = 0;
    v164 = v149;
    (v375)(v144, v97);
    if ((v164 & 1) == 0)
    {
      v165 = v372;
      static Persistence.write(dataVersion:to:)();
      if (v165)
      {
        p_isa = &v165->super.isa;
        v372 = 0;
        v151 = v375;
        goto LABEL_25;
      }

      v372 = 0;
    }

    (v375)(v139, v97);
    goto LABEL_34;
  }

  v98 = v377._urlString;
  static Logger.persistenceRecordStore.getter();
  swift_errorRetain();
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v380 = v102;
    *v101 = 136446210;
    v382 = v3;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    v103 = String.init<A>(describing:)();
    v105 = sub_100001ED8(v103, v104, &v380);

    *(v101 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v99, v100, "Failed to create new diagnostics directory. Error: %{public}s", v101, 0xCu);
    sub_10000210C(v102);

    v106 = v98;
    v107 = v370;
  }

  else
  {

    v106 = v98;
    v107 = v95;
  }

  (v373)(v106, v107);
  swift_willThrow();

  (*(v330 + 8))(v345, v97);
  return [*(v331 + 216) unlock];
}

uint64_t sub_1000450AC()
{
  sub_10000210C((v0 + 16));
  sub_10000210C((v0 + 56));
  sub_10000210C((v0 + 96));
  sub_10000210C((v0 + 152));

  sub_10000210C((v0 + 224));

  return swift_deallocClassInstance();
}

uint64_t sub_100045138()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 208) & 1) == 0)
  {
    *(v0 + 208) = 1;
    sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
    v17 = v2;
    v18 = v5;
    (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v14 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v13, v9);
    aBlock[4] = sub_10005462C;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020A64;
    aBlock[3] = &unk_100076CC8;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v19 = _swiftEmptyArrayStorage;
    sub_10005459C(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000637C(&qword_10007AF10, &unk_1000670A0);
    sub_1000545E4(&qword_10007B290, &qword_10007AF10, &unk_1000670A0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v17 + 8))(v4, v1);
    (*(v6 + 8))(v8, v18);
  }

  return result;
}

uint64_t sub_1000454EC(uint64_t a1)
{
  v2 = v1;
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045C20(a1, v10);
  v13 = v11;
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  v45 = result;
  if (result >= 1)
  {
    v15 = 0;
    v47 = (v7 + 8);
    v48 = v13 & 0xC000000000000001;
    v37 = (v4 + 8);
    v38 = (v4 + 16);
    v36 = 0x8000000100069140;
    *&v12 = 136446466;
    v35 = v12;
    v16 = v45;
    v41 = v6;
    v42 = v2;
    v39 = v13;
    v40 = v9;
    do
    {
      if (v48)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      static Logger.persistenceRecordStore.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v51 = v46;
        *v20 = v35;
        v22 = v43;
        v21 = v44;
        (*v38)(v43, v17 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v44);
        sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        (*v37)(v22, v21);
        v26 = sub_100001ED8(v23, v25, &v51);

        *(v20 + 4) = v26;
        *(v20 + 12) = 2082;
        v27 = *(v17 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
        v28 = *(v17 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
        v29 = *(v17 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
        v30 = *(v17 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 24);
        v49 = 0;
        v50 = 0xE000000000000000;

        _StringGuts.grow(_:)(37);

        v49 = 0xD000000000000018;
        v50 = v36;
        v31._countAndFlagsBits = v27;
        v31._object = v28;
        String.append(_:)(v31);
        v32._countAndFlagsBits = 0x44496D616574202CLL;
        v32._object = 0xE900000000000020;
        String.append(_:)(v32);
        v33._countAndFlagsBits = v29;
        v9 = v40;
        v33._object = v30;
        String.append(_:)(v33);
        v13 = v39;

        v6 = v41;

        v34 = sub_100001ED8(v49, v50, &v51);

        *(v20 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v18, v19, "Removing unauthorized client record %{public}s for %{public}s", v20, 0x16u);
        swift_arrayDestroy();

        v16 = v45;
      }

      (*v47)(v9, v6);
      ++v15;
      sub_10003DCD0(v17);
    }

    while (v16 != v15);
  }

  __break(1u);
  return result;
}

id sub_1000459C4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  [*(a1 + 216) lock];
  sub_10003B7C4(1);
  v3 = *(a1 + 216);

  return [v3 unlock];
}

void sub_100045C20(uint64_t a1, __n128 a2)
{
  v48 = type metadata accessor for Application();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000637C(&qword_10007B810, "(N");
  __chkstk_darwin(v46);
  v7 = a1;
  v9 = &v40 - v8;
  v10 = sub_100040148(v7);
  swift_beginAccess();
  v11 = *(v2 + 272);
  v42 = _swiftEmptyArrayStorage;
  v53 = v10;
  v54 = _swiftEmptyArrayStorage;
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10 + 56;
  v50 = v4 + 16;
  v51 = v4;
  v49 = (v4 + 8);
  v47 = v11;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v44 = v16;
  v45 = v12;
  v52 = v6;
  v41 = v9;
  while (v15)
  {
LABEL_10:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v18 << 6);
    v22 = v47;
    v23 = *(v47 + 48);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 16))(v9, v23 + *(*(v24 - 8) + 72) * v21, v24);
    v25 = *(*(v22 + 56) + 8 * v21);
    *&v9[*(v46 + 48)] = v25;
    v26 = (v25 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    if (*(v25 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32) == 1)
    {

LABEL_12:
      v12 = v45;
      sub_100008630(v9, &qword_10007B810, "(N");
      v16 = v44;
    }

    else
    {
      v27 = 1 << v53[32];
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & *(v53 + 7);
      v30 = (v27 + 63) >> 6;
      v43 = v25;

      v31 = 0;
      v32 = v48;
      while (v29)
      {
LABEL_23:
        v34 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v35 = v52;
        (*(v51 + 16))(v52, *(v53 + 6) + *(v51 + 72) * (v34 | (v31 << 6)), v32);
        v36 = Application.bundleIdentifier.getter();
        if (v37)
        {
          if (v36 == *v26 && v37 == v26[1])
          {

            (*v49)(v52, v48);
LABEL_34:

            v9 = v41;
            goto LABEL_12;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v32 = v48;
          (*v49)(v52, v48);
          if (v39)
          {
            goto LABEL_34;
          }
        }

        else
        {
          (*v49)(v35, v32);
        }
      }

      while (1)
      {
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v33 >= v30)
        {
          break;
        }

        v29 = *&v17[8 * v33];
        ++v31;
        if (v29)
        {
          v31 = v33;
          goto LABEL_23;
        }
      }

      v9 = v41;
      sub_100008630(v41, &qword_10007B810, "(N");
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v42 = v54;
      v16 = v44;
      v12 = v45;
    }
  }

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

LABEL_37:
  __break(1u);
}

uint64_t sub_1000460C0(uint64_t *a1, int a2)
{
  v36 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v29 - v7;
  v8 = type metadata accessor for Logger();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.persistenceRecordStore.getter();
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v31 = *a1;
  v32 = v12;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v40 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v30 = v3;
    v18 = v17;
    v29 = swift_slowAlloc();
    v43 = v29;
    *v18 = 136446210;
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v41 = 0xD000000000000018;
    v42 = 0x8000000100069140;
    v19._countAndFlagsBits = v31;
    v19._object = v11;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x44496D616574202CLL;
    v20._object = 0xE900000000000020;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v32;
    v21._object = v13;
    String.append(_:)(v21);
    v22 = sub_100001ED8(v41, v42, &v43);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Creating new record for %{public}s", v18, 0xCu);
    sub_10000210C(v29);

    v3 = v30;
  }

  (*(v33 + 8))(v10, v34);
  sub_100008578((v35 + 56), *(v35 + 80));
  v23 = v38;
  if (v36)
  {
    dispatch thunk of Locatable.effectiveSettingsDirectory.getter();
  }

  else
  {
    dispatch thunk of Locatable.persistenceRecordStoreDirectory.getter();
  }

  v24 = v40;
  v25 = v37;
  (*(v40 + 16))(v37, v23, v3);

  v26 = sub_1000113A4(a1, v25);
  type metadata accessor for Persistence();
  v27 = v39;
  static Persistence.createDirectory(at:)();
  if (v27)
  {
  }

  (*(v24 + 8))(v23, v3);
  return v26;
}

void *sub_10004649C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v1 + 272);
  if (*(v11 + 16))
  {

    v12 = sub_100018360(a1);
    if (v13)
    {
      v7 = *(*(v11 + 56) + 8 * v12);

      return v7;
    }
  }

  v25 = v8;
  static Logger.persistenceRecordStore.getter();
  (*(v4 + 16))(v6, a1, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v16 = 136446210;
    sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v7;
    v19 = v18;
    (*(v4 + 8))(v6, v3);
    v20 = sub_100001ED8(v17, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unable to find existing record with recordIdentifier %{public}s", v16, 0xCu);
    v7 = v24;
    sub_10000210C(v24);

    (*(v25 + 8))(v10, v23);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    (*(v25 + 8))(v10, v7);
  }

  sub_100011890();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  return v7;
}

void sub_10004680C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = dispatch thunk of static TeamIdentifierRetrieving.teamIdentifierFromCurrentConnection()();
  if (!v5)
  {
    v13 = v12;
    v23 = v11;
    if (a3)
    {

LABEL_4:
      *a4 = a1;
      *(a4 + 8) = a2;
      *(a4 + 16) = v23;
      *(a4 + 24) = v13;
      *(a4 + 32) = a3 & 1;
      return;
    }

    v22 = &v19;
    v15 = *(v4 + 136);
    v14 = *(v4 + 144);
    v20 = *(*(v6 + 136) - 8);
    __chkstk_darwin(v11);
    v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v14 + 8);

    v21(a1, a2, v15, v14);
    v21 = 0;
    a1 = (*(v14 + 16))(v15, v14);
    a2 = v18;
    (*(v20 + 8))(v17, v15);
    if (a2)
    {
      goto LABEL_4;
    }

    sub_100008524();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_100046A04(uint64_t *a1)
{
  v3 = type metadata accessor for Logger();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v6 = 0;
  v7 = *(v1 + 272);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v41 = *(v1 + 272);
  v11 = 1 << *(v41 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
LABEL_10:
    v16 = *(*(v41 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    v13 &= v13 - 1;
    result = *&v16[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client];
    v17 = *&v16[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16];
    v18 = *&v16[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 24];
    v19 = v16[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32];
    if (result != *a1 || *&v16[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8] != a1[1])
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v17 != a1[2] || v18 != a1[3])
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v19 == (a1[4] & 1))
    {

      return v16;
    }
  }

  while (1)
  {
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v9 + 8 * v15);
    ++v6;
    if (v13)
    {
      v6 = v15;
      goto LABEL_10;
    }
  }

  v22 = v38;
  static Logger.persistenceRecordStore.getter();
  v23 = *a1;
  v16 = a1[1];
  v25 = a1[2];
  v24 = a1[3];

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = v25;
    v42 = 0;
    v30 = v23;
    v31 = v29;
    v44 = v29;
    *v28 = 136446210;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v42 = 0xD000000000000018;
    v43 = 0x8000000100069140;
    v32._countAndFlagsBits = v30;
    v32._object = v16;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0x44496D616574202CLL;
    v33._object = 0xE900000000000020;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v41;
    v34._object = v24;
    String.append(_:)(v34);
    v16 = v43;
    v35 = sub_100001ED8(v42, v43, &v44);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Unable to find existing record with %{public}s", v28, 0xCu);
    sub_10000210C(v31);
  }

  (*(v39 + 8))(v22, v40);
  sub_100011890();
  swift_allocError();
  *v36 = 0;
  swift_willThrow();
  return v16;
}