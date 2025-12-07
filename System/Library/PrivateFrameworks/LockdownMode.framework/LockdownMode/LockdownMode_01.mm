void sub_10001B1C4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 aa_primaryAppleAccount];

  if (!v4)
  {
    return;
  }

  v5 = [v4 aa_altDSID];
  if (!v5)
  {
    goto LABEL_8;
  }

  v0 = v5;
  v6 = [v1 defaultStore];
  if (!v6)
  {
LABEL_13:

    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 aa_authKitAccountForAltDSID:v0];

  if (v8)
  {
    if (([v8 aa_needsToVerifyTerms] & 1) == 0)
    {
      v9 = [objc_opt_self() sharedInstance];
      [v9 securityLevelForAccount:v8];

      return;
    }

    goto LABEL_9;
  }

LABEL_8:
  v8 = v4;
LABEL_9:
}

void sub_10001B320(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not enableIfNeeded: %@", v14, 0xCu);
      sub_100005E54(v15, &qword_100042158, qword_100031C60);
    }

    (*(v9 + 8))(v11, v8);
    v17 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, 0, v17);

    return;
  }

  type metadata accessor for LockdownModeXNU();
  if ((static LockdownModeXNU.lockdownModeEnabled.getter() & 1) == 0)
  {
    if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = static LockdownModeXNU.lockdownModeEnabled.getter();
      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (a3)
    {
      sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034790);
      v18 = 1;
    }

    goto LABEL_12;
  }

  v18 = 0;
LABEL_12:
  v19 = *(a4 + 16);

  v19(a4, v18 & 1, 0);
}

void sub_10001B5B4(int a1, uint64_t a2, void *a3, int a4, void (**a5)(void, void, void))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v81 = &v73 - v15;
  v16 = __chkstk_darwin(v14);
  v76 = &v73 - v17;
  v18 = __chkstk_darwin(v16);
  v75 = &v73 - v19;
  v20 = __chkstk_darwin(v18);
  v77 = &v73 - v21;
  v22 = __chkstk_darwin(v20);
  v78 = &v73 - v23;
  v24 = __chkstk_darwin(v22);
  v80 = &v73 - v25;
  __chkstk_darwin(v24);
  v27 = &v73 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10002233C;
  *(v29 + 24) = v28;
  *(v29 + 32) = a3;
  v86 = v29;
  v82 = a4;
  *(v29 + 40) = a4;
  _Block_copy(a5);
  _Block_copy(a5);
  _Block_copy(a5);
  _Block_copy(a5);
  v85 = v28;

  v83 = a3;
  static Logger.daemonLogger.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v84 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v90[0] = v34;
    *v33 = 136446210;
    if (a1)
    {
      v35 = 0x726F74617267696DLL;
    }

    else
    {
      v35 = 0x617267694D657270;
    }

    v74 = a2;
    v36 = a5;
    v37 = v11;
    if (a1)
    {
      v38 = 0xE800000000000000;
    }

    else
    {
      v38 = 0xEC0000006E6F6974;
    }

    v39 = sub_100019C8C(v35, v38, v90);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Requested to migrateIfNeeded. Migration source: %{public}s", v33, 0xCu);
    sub_100005E08(v34);

    v40 = v37;
    a5 = v36;
    a2 = v74;
    v41 = *(v40 + 8);
    v41(v27, v10);
  }

  else
  {

    v41 = *(v11 + 8);
    v41(v27, v10);
  }

  if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
  {
    v42 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v42 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  if (qword_100041CF0 != -1)
  {
    v72 = v42;
    swift_once();
    v42 = v72;
  }

  v43 = static RestrictionsManager.shared;
  if ((v42 & 1) == 0)
  {
    if (*(static RestrictionsManager.shared + 32))
    {
      v53 = v81;
      static Logger.daemonLogger.getter();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Lockdown Mode isn't turned on but previous state exists, turning on Lockdown Mode…", v56, 2u);
      }

      v41(v53, v10);
      sub_100012394(1, 0, v84 & 1, 0, v84 & 1, 0, 0, 0, 1u, sub_10002234C, v86);
      goto LABEL_25;
    }

    v59 = [objc_opt_self() standardUserDefaults];
    static Constants.userDefaultsKey.getter();
    v60 = String._bridgeToObjectiveC()();

    v61 = [v59 objectForKey:v60 inDomain:NSGlobalDomain];

    if (v61)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
    }

    v90[0] = v88;
    v90[1] = v89;
    if (*(&v89 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v87)
      {
        v66 = swift_allocObject();
        v67 = v86;
        *(v66 + 16) = sub_10002234C;
        *(v66 + 24) = v67;

        sub_100012394(1, 0, v84 & 1, 0, v84 & 1, 0, 0, 0, 1u, sub_1000226BC, v66);

        goto LABEL_25;
      }
    }

    else
    {
      sub_100005E54(v90, &qword_100042500, &qword_100031EB0);
    }

    v44 = v79;
    static Logger.daemonLogger.getter();
    v45 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v45, v57))
    {
      goto LABEL_44;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v48 = "Lockdown Mode is turned off and there's no previous state. No need to migrate";
LABEL_42:
    v49 = v57;
    v50 = v45;
    v51 = v58;
    v52 = 2;
    goto LABEL_43;
  }

  if ((v84 & 1) == 0)
  {
    v44 = v80;
    static Logger.daemonLogger.getter();
    v45 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v45, v57))
    {
      goto LABEL_44;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v48 = "Migration is not needed";
    goto LABEL_42;
  }

  if (*(static RestrictionsManager.shared + 32))
  {
    if ((*(static RestrictionsManager.shared + 16) & 0x8000000000000000) != 0)
    {
      static Logger.daemonLogger.getter();

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 134218240;
        *(v71 + 4) = *(v43 + 16);

        *(v71 + 12) = 2048;
        *(v71 + 14) = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Migrating from version %ld to version %ld", v71, 0x16u);
      }

      else
      {
      }

      v41(v78, v10);
      sub_100027E54();
LABEL_45:
      type metadata accessor for LockdownModeXNU();
      _Block_copy(a5);
      if (static LockdownModeXNU.lockdownModeEnabled.getter())
      {
        v68 = 0;
LABEL_52:
        a5[2](a5, v68 & 1, 0);
        _Block_release(a5);

        goto LABEL_53;
      }

      if (v83[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1)
      {
        v68 = 1;
      }

      else
      {
        v68 = static LockdownModeXNU.lockdownModeEnabled.getter();
        if ((v68 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      if (v82)
      {
        sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034790);
        v68 = 1;
      }

      goto LABEL_52;
    }

    v44 = v77;
    static Logger.daemonLogger.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = 0;
      v48 = "Lockdown Mode is turned on and the version of the state matches the current one (%ld). No need to migrate";
      v49 = v46;
      v50 = v45;
      v51 = v47;
      v52 = 12;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v50, v49, v48, v51, v52);
    }

LABEL_44:

    v41(v44, v10);
    goto LABEL_45;
  }

  if ((v84 & 1) == 0)
  {
    goto LABEL_45;
  }

  v62 = v76;
  static Logger.daemonLogger.getter();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Lockdown Mode is turned on but there's no state stored, re-turning on Lockdown Mode…", v65, 2u);
  }

  v41(v62, v10);
  sub_100012394(1, 0, 1, 0, 1, 0, 0, 0, 0, sub_10002234C, v86);
LABEL_25:

LABEL_53:

  _Block_release(a5);
  _Block_release(a5);
  _Block_release(a5);
}

uint64_t sub_10001C190(int a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void *a5, int a6)
{
  v85 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v82 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v79 = v74 - v16;
  v17 = __chkstk_darwin(v15);
  v75 = v74 - v18;
  v19 = __chkstk_darwin(v17);
  v74[2] = v74 - v20;
  v21 = __chkstk_darwin(v19);
  v78 = v74 - v22;
  v23 = __chkstk_darwin(v21);
  v76 = v74 - v24;
  v25 = __chkstk_darwin(v23);
  v83 = v74 - v26;
  __chkstk_darwin(v25);
  v28 = v74 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  *(v29 + 32) = a5;
  v80 = a6;
  *(v29 + 40) = a6;

  v81 = a5;
  static Logger.daemonLogger.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v84 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v77 = v11;
    v74[1] = a4;
    v34 = a3;
    v35 = v29;
    v36 = v33;
    v37 = swift_slowAlloc();
    *&v89[0] = v37;
    *v36 = 136446210;
    if (a1)
    {
      v38 = 0x726F74617267696DLL;
    }

    else
    {
      v38 = 0x617267694D657270;
    }

    if (a1)
    {
      v39 = 0xE800000000000000;
    }

    else
    {
      v39 = 0xEC0000006E6F6974;
    }

    v40 = v12;
    v41 = sub_100019C8C(v38, v39, v89);

    *(v36 + 4) = v41;
    v12 = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Requested to migrateIfNeeded. Migration source: %{public}s", v36, 0xCu);
    sub_100005E08(v37);

    v29 = v35;
    a3 = v34;
    v11 = v77;
  }

  v42 = *(v12 + 8);
  v42(v28, v11);
  if (*(v85 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
  {
    v43 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v43 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  if (qword_100041CF0 != -1)
  {
    v73 = v43;
    swift_once();
    v43 = v73;
  }

  v44 = static RestrictionsManager.shared;
  if (v43)
  {
    if ((v84 & 1) == 0)
    {
      static Logger.daemonLogger.getter();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Migration is not needed", v55, 2u);
      }

      v48 = v83;
      goto LABEL_43;
    }

    if (*(static RestrictionsManager.shared + 32))
    {
      if ((*(static RestrictionsManager.shared + 16) & 0x8000000000000000) != 0)
      {
        static Logger.daemonLogger.getter();

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        v71 = os_log_type_enabled(v69, v70);
        v77 = v11;
        if (v71)
        {
          v72 = swift_slowAlloc();
          *v72 = 134218240;
          *(v72 + 4) = *(v44 + 16);

          *(v72 + 12) = 2048;
          *(v72 + 14) = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "Migrating from version %ld to version %ld", v72, 0x16u);
        }

        else
        {
        }

        v42(v76, v77);
        sub_100027E54();
LABEL_44:
        type metadata accessor for LockdownModeXNU();
        if (static LockdownModeXNU.lockdownModeEnabled.getter())
        {
          v67 = 0;
LABEL_51:
          a3(v67 & 1, 0);
        }

        if (v81[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1)
        {
          v67 = 1;
        }

        else
        {
          v67 = static LockdownModeXNU.lockdownModeEnabled.getter();
          if ((v67 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        if (v80)
        {
          sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034790);
          v67 = 1;
        }

        goto LABEL_51;
      }

      static Logger.daemonLogger.getter();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Lockdown Mode is turned on and the version of the state matches the current one (%ld). No need to migrate", v47, 0xCu);
      }

      v48 = v78;
LABEL_43:
      v42(v48, v11);
      goto LABEL_44;
    }

    if ((v84 & 1) == 0)
    {
      goto LABEL_44;
    }

    v59 = v75;
    static Logger.daemonLogger.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Lockdown Mode is turned on but there's no state stored, re-turning on Lockdown Mode…", v62, 2u);
    }

    v42(v59, v11);
    sub_100012394(1, 0, 1, 0, 1, 0, 0, 0, 0, sub_100022634, v29);
  }

  else
  {
    if ((*(static RestrictionsManager.shared + 32) & 1) == 0)
    {
      v56 = [objc_opt_self() standardUserDefaults];
      static Constants.userDefaultsKey.getter();
      v57 = String._bridgeToObjectiveC()();

      v58 = [v56 objectForKey:v57 inDomain:NSGlobalDomain];

      if (v58)
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
        if (swift_dynamicCast() & 1) != 0 && (v86)
        {
          v63 = swift_allocObject();
          *(v63 + 16) = sub_100022634;
          *(v63 + 24) = v29;

          sub_100012394(1, 0, v84 & 1, 0, v84 & 1, 0, 0, 0, 1u, sub_1000226BC, v63);
        }
      }

      else
      {
        sub_100005E54(v89, &qword_100042500, &qword_100031EB0);
      }

      static Logger.daemonLogger.getter();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Lockdown Mode is turned off and there's no previous state. No need to migrate", v66, 2u);
      }

      v48 = v82;
      goto LABEL_43;
    }

    v49 = v79;
    static Logger.daemonLogger.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Lockdown Mode isn't turned on but previous state exists, turning on Lockdown Mode…", v52, 2u);
    }

    v42(v49, v11);
    sub_100012394(1, 0, v84 & 1, 0, v84 & 1, 0, 0, 0, 1u, sub_100022634, v29);
  }
}

void sub_10001CD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Could not migrateIfNeeded: %@", v13, 0xCu);
      sub_100005E54(v14, &qword_100042158, qword_100031C60);
    }

    (*(v5 + 8))(v10, v4);
    v16 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v16);
  }

  else
  {
    static Logger.daemonLogger.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully ran migrateIfNeeded", v19, 2u);
    }

    (*(v5 + 8))(v8, v4);
    (*(a2 + 16))(a2, 0);
  }
}

void sub_10001CFDC(int a1, uint64_t a2, const void *a3)
{
  v6 = type metadata accessor for Logger();
  v77 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v72 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v73 = v67 - v10;
  v11 = __chkstk_darwin(v9);
  v70 = v67 - v12;
  v13 = __chkstk_darwin(v11);
  v67[1] = v67 - v14;
  v15 = __chkstk_darwin(v13);
  v68 = v67 - v16;
  v17 = __chkstk_darwin(v15);
  v69 = v67 - v18;
  v19 = __chkstk_darwin(v17);
  v71 = v67 - v20;
  __chkstk_darwin(v19);
  v22 = v67 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1000222EC;
  *(v24 + 24) = v23;
  v75 = v24;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v76 = v23;

  static Logger.daemonLogger.getter();
  v25 = v22;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v74 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v81[0] = v30;
    *v29 = 136446210;
    if (a1)
    {
      v31 = 0x726F74617267696DLL;
    }

    else
    {
      v31 = 0x617267694D657270;
    }

    v67[0] = a2;
    if (a1)
    {
      v32 = 0xE800000000000000;
    }

    else
    {
      v32 = 0xEC0000006E6F6974;
    }

    v33 = a3;
    v34 = sub_100019C8C(v31, v32, v81);
    a2 = v67[0];

    *(v29 + 4) = v34;
    v35 = v77;
    a3 = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Requested to migrateIfNeeded. Migration source: %{public}s", v29, 0xCu);
    sub_100005E08(v30);

    v36 = v35;
  }

  else
  {

    v36 = v77;
  }

  v37 = *(v36 + 8);
  v37(v25, v6);
  if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
  {
    v38 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v38 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  if (qword_100041CF0 != -1)
  {
    v66 = v38;
    swift_once();
    v38 = v66;
  }

  v39 = static RestrictionsManager.shared;
  if (v38)
  {
    if (v74)
    {
      if (*(static RestrictionsManager.shared + 32))
      {
        if ((*(static RestrictionsManager.shared + 16) & 0x8000000000000000) != 0)
        {
          static Logger.daemonLogger.getter();

          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 134218240;
            *(v65 + 4) = *(v39 + 16);

            *(v65 + 12) = 2048;
            *(v65 + 14) = 0;
            _os_log_impl(&_mh_execute_header, v63, v64, "Migrating from version %ld to version %ld", v65, 0x16u);
          }

          else
          {
          }

          v37(v69, v6);
          sub_100027E54();
          goto LABEL_45;
        }

        v40 = v68;
        static Logger.daemonLogger.getter();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_44;
        }

        v43 = swift_slowAlloc();
        *v43 = 134217984;
        *(v43 + 4) = 0;
        v44 = "Lockdown Mode is turned on and the version of the state matches the current one (%ld). No need to migrate";
        v45 = v42;
        v46 = v41;
        v47 = v43;
        v48 = 12;
        goto LABEL_43;
      }

      if ((v74 & 1) == 0)
      {
LABEL_45:
        _Block_copy(a3);
        sub_10001CD38(0, a3);
        _Block_release(a3);

        goto LABEL_46;
      }

      static Logger.daemonLogger.getter();
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Lockdown Mode is turned on but there's no state stored, re-turning on Lockdown Mode…", v59, 2u);
      }

      v37(v70, v6);
      sub_100012394(1, 0, 1, 0, 1, 0, 0, 0, 0, sub_1000222F4, v75);
      goto LABEL_25;
    }

    v40 = v71;
    static Logger.daemonLogger.getter();
    v41 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v44 = "Migration is not needed";
LABEL_42:
      v45 = v52;
      v46 = v41;
      v47 = v53;
      v48 = 2;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v46, v45, v44, v47, v48);

      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if ((*(static RestrictionsManager.shared + 32) & 1) == 0)
  {
    v54 = [objc_opt_self() standardUserDefaults];
    static Constants.userDefaultsKey.getter();
    v55 = String._bridgeToObjectiveC()();

    v56 = [v54 objectForKey:v55 inDomain:NSGlobalDomain];

    if (v56)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    v81[0] = v79;
    v81[1] = v80;
    if (*(&v80 + 1))
    {
      v60 = swift_dynamicCast();
      v40 = v72;
      if (v60 & 1) != 0 && (v78)
      {
        v61 = swift_allocObject();
        v62 = v75;
        *(v61 + 16) = sub_1000222F4;
        *(v61 + 24) = v62;

        sub_100012394(1, 0, v74 & 1, 0, v74 & 1, 0, 0, 0, 1u, sub_1000222FC, v61);

        goto LABEL_46;
      }
    }

    else
    {
      sub_100005E54(v81, &qword_100042500, &qword_100031EB0);
      v40 = v72;
    }

    static Logger.daemonLogger.getter();
    v41 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v44 = "Lockdown Mode is turned off and there's no previous state. No need to migrate";
      goto LABEL_42;
    }

LABEL_44:

    v37(v40, v6);
    goto LABEL_45;
  }

  static Logger.daemonLogger.getter();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Lockdown Mode isn't turned on but previous state exists, turning on Lockdown Mode…", v51, 2u);
  }

  v37(v73, v6);
  sub_100012394(1, 0, v74 & 1, 0, v74 & 1, 0, 0, 0, 1u, sub_1000222F4, v75);
LABEL_25:

LABEL_46:

  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_10001DB20(int a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v80 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v79 = &v71 - v13;
  v14 = __chkstk_darwin(v12);
  v76 = &v71 - v15;
  v16 = __chkstk_darwin(v14);
  v75 = &v71 - v17;
  v18 = __chkstk_darwin(v16);
  v78 = &v71 - v19;
  v20 = __chkstk_darwin(v18);
  v77 = &v71 - v21;
  v22 = __chkstk_darwin(v20);
  v81 = &v71 - v23;
  __chkstk_darwin(v22);
  v25 = &v71 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;

  static Logger.daemonLogger.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v82 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v73 = a3;
    v74 = a4;
    v72 = v26;
    v31 = v30;
    v32 = a2;
    v33 = v8;
    v34 = swift_slowAlloc();
    *&v86[0] = v34;
    *v31 = 136446210;
    if (a1)
    {
      v35 = 0x726F74617267696DLL;
    }

    else
    {
      v35 = 0x617267694D657270;
    }

    if (a1)
    {
      v36 = 0xE800000000000000;
    }

    else
    {
      v36 = 0xEC0000006E6F6974;
    }

    v37 = v9;
    v38 = sub_100019C8C(v35, v36, v86);

    *(v31 + 4) = v38;
    v9 = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "Requested to migrateIfNeeded. Migration source: %{public}s", v31, 0xCu);
    sub_100005E08(v34);
    v8 = v33;
    a2 = v32;

    v26 = v72;
    a3 = v73;
  }

  v39 = *(v9 + 8);
  v39(v25, v8);
  if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
  {
    v40 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v40 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  if (qword_100041CF0 != -1)
  {
    v70 = v40;
    swift_once();
    v40 = v70;
  }

  v41 = static RestrictionsManager.shared;
  if ((v40 & 1) == 0)
  {
    if (*(static RestrictionsManager.shared + 32))
    {
      v46 = v79;
      static Logger.daemonLogger.getter();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Lockdown Mode isn't turned on but previous state exists, turning on Lockdown Mode…", v49, 2u);
      }

      v39(v46, v8);
      sub_100012394(1, 0, v82 & 1, 0, v82 & 1, 0, 0, 0, 1u, sub_1000226C0, v26);
    }

    v53 = [objc_opt_self() standardUserDefaults];
    static Constants.userDefaultsKey.getter();
    v54 = String._bridgeToObjectiveC()();

    v55 = [v53 objectForKey:v54 inDomain:NSGlobalDomain];

    if (v55)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
    }

    v86[0] = v84;
    v86[1] = v85;
    if (*(&v85 + 1))
    {
      v60 = swift_dynamicCast();
      v61 = v80;
      if (v60 & 1) != 0 && (v83)
      {
        v62 = swift_allocObject();
        *(v62 + 16) = sub_1000226C0;
        *(v62 + 24) = v26;

        sub_100012394(1, 0, v82 & 1, 0, v82 & 1, 0, 0, 0, 1u, sub_1000226BC, v62);
      }
    }

    else
    {
      sub_100005E54(v86, &qword_100042500, &qword_100031EB0);
      v61 = v80;
    }

    static Logger.daemonLogger.getter();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Lockdown Mode is turned off and there's no previous state. No need to migrate", v65, 2u);
    }

    v45 = v61;
LABEL_43:
    v39(v45, v8);
    goto LABEL_44;
  }

  if ((v82 & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Migration is not needed", v52, 2u);
    }

    v45 = v81;
    goto LABEL_43;
  }

  if (*(static RestrictionsManager.shared + 32))
  {
    if ((*(static RestrictionsManager.shared + 16) & 0x8000000000000000) != 0)
    {
      static Logger.daemonLogger.getter();

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134218240;
        *(v69 + 4) = *(v41 + 16);

        *(v69 + 12) = 2048;
        *(v69 + 14) = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Migrating from version %ld to version %ld", v69, 0x16u);
      }

      else
      {
      }

      v39(v77, v8);
      sub_100027E54();
      goto LABEL_44;
    }

    static Logger.daemonLogger.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Lockdown Mode is turned on and the version of the state matches the current one (%ld). No need to migrate", v44, 0xCu);
    }

    v45 = v78;
    goto LABEL_43;
  }

  if ((v82 & 1) == 0)
  {
LABEL_44:
    sub_1000172C8(0, a3);
  }

  v56 = v76;
  static Logger.daemonLogger.getter();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Lockdown Mode is turned on but there's no state stored, re-turning on Lockdown Mode…", v59, 2u);
  }

  v39(v56, v8);
  sub_100012394(1, 0, 1, 0, 1, 0, 0, 0, 0, sub_1000226C0, v26);
}

uint64_t sub_10001E618(void *a1)
{
  v37 = type metadata accessor for Logger();
  v2 = *(v37 - 8);
  v3 = __chkstk_darwin(v37);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v36 - v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 valueForEntitlement:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  aBlock = v43;
  v39 = v44;
  if (*(&v44 + 1))
  {
    if (swift_dynamicCast() && (v42 & 1) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 valueForEntitlement:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  aBlock = v43;
  v39 = v44;
  if (*(&v44 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v42)
    {
LABEL_15:
      v12 = v36;
      static Logger.daemonLogger.getter();
      v13 = a1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Handling incoming connection: %@", v16, 0xCu);
        sub_100005E54(v17, &qword_100042158, qword_100031C60);
      }

      (*(v2 + 8))(v7, v37);
      v19 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP12LockdownMode20LockdownModeProtocol_];
      [v13 setExportedInterface:v19];

      [v13 setExportedObject:v12];
      v20 = swift_allocObject();
      *(v20 + 16) = v13;
      v40 = sub_1000225C0;
      v41 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_10000B434;
      *(&v39 + 1) = &unk_10003DC20;
      v21 = _Block_copy(&aBlock);
      v22 = v13;

      [v22 setInterruptionHandler:v21];
      _Block_release(v21);
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v40 = sub_1000225E4;
      v41 = v23;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_10000B434;
      *(&v39 + 1) = &unk_10003DC70;
      v24 = _Block_copy(&aBlock);
      v25 = v22;

      [v25 setInvalidationHandler:v24];
      _Block_release(v24);
      v26 = 1;
      v27 = &selRef_resume;
      goto LABEL_22;
    }
  }

  else
  {
    sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
  }

  static Logger.daemonLogger.getter();
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&aBlock = v33;
    *v31 = 136315394;
    *(v31 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, &aBlock);
    *(v31 + 12) = 2112;
    *(v31 + 14) = v28;
    *v32 = v28;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Client is missing entitlement: %s. (%@)", v31, 0x16u);
    sub_100005E54(v32, &qword_100042158, qword_100031C60);

    sub_100005E08(v33);
  }

  (*(v2 + 8))(v5, v37);
  v26 = 0;
  v27 = &selRef_invalidate;
LABEL_22:
  [a1 *v27];
  return v26;
}

unint64_t sub_10001EC70()
{
  result = qword_1000424F8;
  if (!qword_1000424F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424F8);
  }

  return result;
}

uint64_t sub_10001ED2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001ED48()
{
  result = qword_100042520;
  if (!qword_100042520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042520);
  }

  return result;
}

uint64_t sub_10001EDB0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10001EDCC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001EDE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001EE28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001EE6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10001EE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&qword_1000425F0, &qword_100032100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EF14()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001EF78()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10001EFC8(int a1, unint64_t a2, _BYTE *a3, void (**a4)(void, void))
{
  v106 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v105 = &v92 - v13;
  v14 = __chkstk_darwin(v12);
  v104 = &v92 - v15;
  v16 = __chkstk_darwin(v14);
  v102 = &v92 - v17;
  __chkstk_darwin(v16);
  v103 = &v92 - v18;
  v107 = swift_allocObject();
  *(v107 + 16) = a4;
  v19 = objc_opt_self();
  _Block_copy(a4);
  v20 = [v19 currentConnection];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  v101 = a1;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 valueForEntitlement:v22];

  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v110[0] = v111;
  v110[1] = v112;
  if (!*(&v112 + 1))
  {

    sub_100005E54(v110, &qword_100042500, &qword_100031EB0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v108 & 1) == 0)
  {

LABEL_16:
    static Logger.daemonLogger.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v110[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, v110);
      _os_log_impl(&_mh_execute_header, v28, v29, "Client is missing entitlement: %s", v30, 0xCu);
      sub_100005E08(v31);
    }

    (*(v8 + 8))(v11, v7);
    sub_10001EC70();
    swift_allocError();
    *v32 = 0xD00000000000002ALL;
    *(v32 + 8) = 0x80000001000342C0;
    *(v32 + 16) = 0;
    v33 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v33);
    goto LABEL_19;
  }

  if (!a2)
  {
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v39 = 0;
    v98 = 0;
    v97 = 0;
    v99 = 0;
    v111 = 0u;
    v112 = 0u;
    LODWORD(a2) = 1;
    v96 = 1;
    LODWORD(v27) = 1;
LABEL_82:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v100 = 0;
    v59 = v101;
    if (v101)
    {
      goto LABEL_87;
    }

    goto LABEL_83;
  }

  v108 = static Constants.stateOptionReboot.getter();
  v109 = v24;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v25 = sub_10001A2E8(v110), (v26 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_21;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v25, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_21:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_22;
  }

  if (!swift_dynamicCast())
  {
LABEL_22:
    LODWORD(v27) = 1;
    goto LABEL_23;
  }

  LODWORD(v27) = LOBYTE(v110[0]);
LABEL_23:
  v108 = static Constants.stateOptionPasscode.getter();
  v109 = v34;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v35 = sub_10001A2E8(v110), (v36 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_32;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v35, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_32:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v39 = 0;
    v98 = 0;
    goto LABEL_33;
  }

  v37 = swift_dynamicCast();
  v38 = *&v110[0];
  if (!v37)
  {
    v38 = 0;
  }

  v98 = v38;
  if (v37)
  {
    v39 = *(&v110[0] + 1);
  }

  else
  {
    v39 = 0;
  }

LABEL_33:
  v108 = static Constants.stateOptionAllDevices.getter();
  v109 = v40;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v41 = sub_10001A2E8(v110), (v42 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_39;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v41, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_39:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_40;
  }

  if (!swift_dynamicCast())
  {
LABEL_40:
    v97 = 0;
    goto LABEL_41;
  }

  v97 = LOBYTE(v110[0]);
LABEL_41:
  v108 = static Constants.stateOptionIncludePaired.getter();
  v109 = v43;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v44 = sub_10001A2E8(v110), (v45 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_47;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v44, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_47:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_48;
  }

  if (!swift_dynamicCast())
  {
LABEL_48:
    v46 = 1;
    goto LABEL_49;
  }

  v46 = LOBYTE(v110[0]);
LABEL_49:
  v96 = v46;
  v108 = static Constants.stateOptionAcknowledgementOnly.getter();
  v109 = v47;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v48 = sub_10001A2E8(v110), (v49 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_55;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v48, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_55:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_56;
  }

  if (!swift_dynamicCast())
  {
LABEL_56:
    v99 = 0;
    goto LABEL_57;
  }

  v99 = LOBYTE(v110[0]);
LABEL_57:
  v108 = static Constants.stateOptionRequireAuthentication.getter();
  v109 = v50;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v51 = sub_10001A2E8(v110), (v52 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_63;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v51, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_63:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_64;
  }

  if (!swift_dynamicCast())
  {
LABEL_64:
    v53 = 1;
    goto LABEL_65;
  }

  v53 = LOBYTE(v110[0]);
LABEL_65:
  v95 = v53;
  v108 = static Constants.stateOptionExcludeRestrictions.getter();
  v109 = v54;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v55 = sub_10001A2E8(v110), (v56 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_80;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v55, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_80:
    LODWORD(a2) = v95;
    goto LABEL_82;
  }

  sub_100003BC8(&qword_100042518, &qword_100031EB8);
  if (swift_dynamicCast())
  {
    v93 = v39;
    v94 = v27;
    v39 = 0;
    v57 = *&v110[0];
    v27 = *(*&v110[0] + 16);
    v58 = *&v110[0] + 40;
    v100 = &_swiftEmptyArrayStorage;
    v59 = v101;
    v92 = *&v110[0] + 40;
LABEL_70:
    v60 = (v58 + 16 * v39);
    while (1)
    {
      if (v27 == v39)
      {

        LODWORD(v27) = v94;
        v39 = v93;
        goto LABEL_106;
      }

      if (v39 >= *(v57 + 16))
      {
        break;
      }

      ++v39;
      v61 = v60 + 2;
      v62 = *(v60 - 1);
      v63 = *v60;

      v64._countAndFlagsBits = v62;
      v64._object = v63;
      a2 = _findStringSwitchCase(cases:string:)(&off_10003D178, v64);

      v60 = v61;
      v59 = v101;
      if (a2 < 8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_100019B98(0, *(v100 + 2) + 1, 1, v100);
        }

        v66 = *(v100 + 2);
        v65 = *(v100 + 3);
        if (v66 >= v65 >> 1)
        {
          v100 = sub_100019B98((v65 > 1), v66 + 1, 1, v100);
        }

        v67 = v100;
        *(v100 + 2) = v66 + 1;
        v67[v66 + 32] = a2;
        v59 = v101;
        v58 = v92;
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_109:
    swift_once();
LABEL_95:
    v76 = v39;
    v77 = off_1000441F0();
    v78 = v77;
    if (v59 & 1) != 0 && (v77)
    {
      v94 = v27;
      static Logger.daemonLogger.getter();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v79, v80, "Client requested to turn on Lockdown Mode while in Buddy. Clearing all notifications…", v81, 2u);
      }

      (*(v8 + 8))(v104, v7);
      v106[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
      v82 = sub_10000B570();
      sub_100008C40();

      LOBYTE(v27) = v94;
    }

    v83 = swift_allocObject();
    v84 = v107;
    *(v83 + 16) = sub_1000226C4;
    *(v83 + 24) = v84;
    *(v83 + 32) = v59 & 1;
    *(v83 + 33) = v78;
    v85 = v106;
    *(v83 + 40) = v106;
    *(v83 + 48) = v27;

    v86 = v85;
    sub_100012394(v59 & 1, v97, v96, a2, 1, v100, v98, v76, 0, sub_1000226B8, v83);

    return;
  }

  v100 = 0;
  v59 = v101;
LABEL_106:
  LODWORD(a2) = v95;
  if ((v59 & 1) == 0)
  {
LABEL_83:
    if ((a2 & 1) == 0)
    {
      static Logger.daemonLogger.getter();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Client requested to turn off Lockdown Mode without authentication. Ignoring override…", v70, 2u);
        v59 = v101;
      }

      (*(v8 + 8))(v105, v7);
      LODWORD(a2) = 1;
    }
  }

LABEL_87:
  if (!v99)
  {
    if (qword_100041CF8 == -1)
    {
      goto LABEL_95;
    }

    goto LABEL_109;
  }

  if (v59 & 1) != 0 || v106[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
  {
    v71 = v103;
    static Logger.daemonLogger.getter();
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Client requested acknowledgementOnly but Lockdown Mode is either already on or client wants to turn it on. Ignoring acknowledgementOnly…", v74, 2u);
    }

    (*(v8 + 8))(v71, v7);
    sub_10001EC70();
    swift_allocError();
    *v75 = 0;
    *(v75 + 8) = 0;
    *(v75 + 16) = 2;
    v33 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v33);

LABEL_19:

    return;
  }

  v87 = v102;
  static Logger.daemonLogger.getter();
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "Client requested acknowledgementOnly. Clearing Lockdown Mode notifications…", v90, 2u);
  }

  (*(v8 + 8))(v87, v7);
  v106[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
  v91 = sub_10000B570();
  sub_100008C40();

  a4[2](a4, 0);
}

void sub_10001FF98(int a1, void *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v35[-v11];
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = objc_opt_self();
  _Block_copy(a3);
  v15 = [v14 currentConnection];
  if (v15)
  {
    v16 = v15;
    v36 = a1;
    v37 = a2;
    v17 = v13;
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 valueForEntitlement:v18];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    aBlock = v43;
    v39 = v44;
    v20 = v17;
    if (*(&v44 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v42)
      {
        if (v36)
        {
          static Logger.daemonLogger.getter();
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.default.getter();
          v23 = os_log_type_enabled(v21, v22);
          v24 = v37;
          if (v23)
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v21, v22, "Client requested to fetch the state from KVS…", v25, 2u);
          }

          (*(v7 + 8))(v12, v6);
          v26 = sub_10000B64C();
          v27 = swift_allocObject();
          v27[2] = sub_100022394;
          v27[3] = v20;
          v27[4] = v24;
          v40 = sub_100022688;
          v41 = v27;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v39 = sub_10000B478;
          *(&v39 + 1) = &unk_10003DA90;
          v28 = _Block_copy(&aBlock);

          v29 = v24;

          [v26 synchronizeWithCompletionHandler:v28];
          _Block_release(v28);
        }

        else
        {
          v34 = sub_10000BEBC();
          a3[2](a3, v34 & 1);
        }

        return;
      }
    }

    else
    {

      sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&aBlock = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, &aBlock);
    _os_log_impl(&_mh_execute_header, v30, v31, "Client is missing entitlement: %s", v32, 0xCu);
    sub_100005E08(v33);
  }

  (*(v7 + 8))(v10, v6);
  a3[2](a3, 0);
}

void sub_100020458(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v54 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  if (qword_100041CF0 != -1)
  {
    swift_once();
  }

  v15 = static RestrictionsManager.shared;
  v55 = [objc_opt_self() currentConnection];

  v60._countAndFlagsBits = a1;
  v60._object = a2;
  v16 = _s13lockdownmoded19RestrictionsManagerC14RestrictionKeyO8rawValueAESgSS_tcfC_0(v60);
  if (v16 == 8)
  {
    goto LABEL_11;
  }

  v17 = v16;
  swift_beginAccess();
  v18 = *(v15 + 24);
  if (!*(v18 + 16))
  {
    goto LABEL_11;
  }

  v19 = sub_10001A480(v17);
  if ((v20 & 1) == 0)
  {

LABEL_11:
    sub_10001EC70();
    swift_allocError();
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = 1;

    v31 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v31);

    return;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  v22 = v21;
  v23 = *(v21 + 128);
  if (v23)
  {
    v53 = v22;
    v24 = *(v22 + 120);
    *&v58 = 0xD000000000000020;
    *(&v58 + 1) = 0x80000001000342F0;

    v25._countAndFlagsBits = v24;
    v25._object = v23;
    String.append(_:)(v25);

    v26 = *(&v58 + 1);
    v52 = v58;
    if (v55)
    {
      v27 = v55;
      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 valueForEntitlement:v28];
      v51 = v27;

      if (v29)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v56 = 0u;
        v57 = 0u;
      }

      v58 = v56;
      v59 = v57;
      if (*(&v57 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v56 != 1)
          {
            goto LABEL_33;
          }

LABEL_28:

          if (*(v53 + 112) == 1)
          {
            static Logger.daemonLogger.getter();
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              *v42 = 0;
              _os_log_impl(&_mh_execute_header, v40, v41, "Restriction is already set to changed. No need to update", v42, 2u);
            }

            (*(v54 + 8))(v12, v6);
          }

          else
          {
            *(v53 + 112) = 1;
            sub_100027E54();
          }

          (*(a3 + 16))(a3, 0);
          v50 = v51;
          goto LABEL_37;
        }
      }

      else
      {
        sub_100005E54(&v58, &qword_100042500, &qword_100031EB0);
      }

      v38 = String._bridgeToObjectiveC()();
      v39 = [v51 valueForEntitlement:v38];

      if (v39)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v56 = 0u;
        v57 = 0u;
      }

      v58 = v56;
      v59 = v57;
      if (*(&v57 + 1))
      {
        if (swift_dynamicCast() && (v56 & 1) != 0)
        {
          goto LABEL_28;
        }

LABEL_33:
        static Logger.daemonLogger.getter();

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *&v58 = v46;
          *v45 = 136315138;
          v47 = v52;
          *(v45 + 4) = sub_100019C8C(v52, v26, &v58);
          _os_log_impl(&_mh_execute_header, v43, v44, "Client is missing entitlement: %s", v45, 0xCu);
          sub_100005E08(v46);

          (*(v54 + 8))(v9, v6);
        }

        else
        {

          (*(v54 + 8))(v9, v6);
          v47 = v52;
        }

        sub_10001EC70();
        swift_allocError();
        *v48 = v47;
        *(v48 + 8) = v26;
        *(v48 + 16) = 0;
        v49 = _convertErrorToNSError(_:)();
        (*(a3 + 16))(a3, v49);

        v50 = v55;
LABEL_37:

        return;
      }
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      sub_100005E54(&v58, &qword_100042500, &qword_100031EB0);
      v58 = 0u;
      v59 = 0u;
    }

    sub_100005E54(&v58, &qword_100042500, &qword_100031EB0);
    goto LABEL_33;
  }

  static Logger.daemonLogger.getter();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v58 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_100019C8C(a1, a2, &v58);
    _os_log_impl(&_mh_execute_header, v32, v33, "Could not update restriction because it is not set as updatable: %s", v34, 0xCu);
    sub_100005E08(v35);
  }

  (*(v54 + 8))(v14, v6);
  sub_10001EC70();
  swift_allocError();
  *v36 = a1;
  *(v36 + 8) = a2;
  *(v36 + 16) = 1;

  v37 = _convertErrorToNSError(_:)();
  (*(a3 + 16))(a3, v37);
}

void sub_100020C74(int a1, void *a2, void (**a3)(void, void, void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = objc_opt_self();
  _Block_copy(a3);
  v14 = [v13 currentConnection];
  if (v14)
  {
    v15 = v14;
    v33 = a1;
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 valueForEntitlement:v16];

    v32 = a2;
    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37 = v35;
    v38 = v36;
    if (*(&v36 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v34)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100005E54(&v37, &qword_100042500, &qword_100031EB0);
    }

    v18 = String._bridgeToObjectiveC()();
    v19 = [v15 valueForEntitlement:{v18, v32}];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37 = v35;
    v38 = v36;
    if (*(&v36 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v34)
      {
LABEL_16:
        static Logger.daemonLogger.getter();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        v22 = os_log_type_enabled(v20, v21);
        v23 = v33;
        if (v22)
        {
          v24 = swift_slowAlloc();
          *v24 = 67109120;
          *(v24 + 4) = v23 & 1;
          _os_log_impl(&_mh_execute_header, v20, v21, "Client requested to enableIfNeeded (reboot: %{BOOL}d)", v24, 8u);
        }

        (*(v7 + 8))(v12, v6);
        _Block_copy(a3);
        v25 = v32;
        sub_10001B5B4(0, v25, v25, v23 & 1, a3);
        _Block_release(a3);

        goto LABEL_24;
      }
    }

    else
    {

      sub_100005E54(&v37, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v37 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, &v37);
    _os_log_impl(&_mh_execute_header, v26, v27, "Client is missing entitlement: %s", v28, 0xCu);
    sub_100005E08(v29);
  }

  (*(v7 + 8))(v10, v6);
  sub_10001EC70();
  swift_allocError();
  *v30 = 0xD000000000000027;
  *(v30 + 8) = 0x8000000100034320;
  *(v30 + 16) = 0;
  v31 = _convertErrorToNSError(_:)();
  (a3)[2](a3, 0, v31);

LABEL_24:
  _Block_release(a3);
}

void sub_100021184(uint64_t a1, void (**a2)(void, void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v25[-v9];
  v11 = objc_opt_self();
  _Block_copy(a2);
  v12 = [v11 currentConnection];
  if (v12)
  {
    v13 = v12;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 valueForEntitlement:v14];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    if (*(&v27 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v25[15])
      {
        static Logger.daemonLogger.getter();
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Client requested to migrateIfNeeded", v18, 2u);
        }

        (*(v5 + 8))(v10, v4);
        _Block_copy(a2);
        sub_10001CFDC(1, a1, a2);
        _Block_release(a2);

        goto LABEL_16;
      }
    }

    else
    {

      sub_100005E54(v28, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v28[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, v28);
    _os_log_impl(&_mh_execute_header, v19, v20, "Client is missing entitlement: %s", v21, 0xCu);
    sub_100005E08(v22);
  }

  (*(v5 + 8))(v8, v4);
  sub_10001EC70();
  swift_allocError();
  *v23 = 0xD000000000000027;
  *(v23 + 8) = 0x8000000100034320;
  *(v23 + 16) = 0;
  v24 = _convertErrorToNSError(_:)();
  (a2)[2](a2, v24);

LABEL_16:
  _Block_release(a2);
}

void sub_10002158C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v39 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {
    v17 = v16;
    v39 = a1;
    v40 = v3;
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 valueForEntitlement:v18];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45 = v43;
    v46 = v44;
    if (*(&v44 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v42)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100005E54(&v45, &qword_100042500, &qword_100031EB0);
    }

    v20 = String._bridgeToObjectiveC()();
    v21 = [v17 valueForEntitlement:v20];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45 = v43;
    v46 = v44;
    v3 = v40;
    if (*(&v44 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v42)
        {
LABEL_16:
          static Logger.daemonLogger.getter();
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v22, v23, "Checking if a reboot is needed…", v24, 2u);
          }

          v25 = *(v4 + 8);
          v26 = v40;
          v25(v15, v40);
          if (qword_100041CF0 != -1)
          {
            swift_once();
          }

          if (*(static RestrictionsManager.shared + 32) == 1 && ((*(v39 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter() & 1) != 0) || (static LockdownModeXNU.lockdownModeEnabled.getter() & 1) == 0))
          {
            static Logger.daemonLogger.getter();
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 0;
              _os_log_impl(&_mh_execute_header, v36, v37, "Lockdown Mode was turned on by a migrator. Rebooting…", v38, 2u);
            }

            v25(v13, v26);
            sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034350);
          }

          else
          {
            static Logger.daemonLogger.getter();
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&_mh_execute_header, v27, v28, "Lockdown Mode was not turned on by a migrator. No need to reboot", v29, 2u);
            }

            v25(v10, v26);
          }

          (*(v41 + 16))(v41, 0);

          return;
        }

        v3 = v40;
      }

      else
      {
      }
    }

    else
    {

      sub_100005E54(&v45, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v45 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, &v45);
    _os_log_impl(&_mh_execute_header, v30, v31, "Client is missing entitlement: %s", v32, 0xCu);
    sub_100005E08(v33);
  }

  (*(v4 + 8))(v7, v3);
  sub_10001EC70();
  swift_allocError();
  *v34 = 0xD000000000000027;
  *(v34 + 8) = 0x8000000100034320;
  *(v34 + 16) = 0;
  v35 = _convertErrorToNSError(_:)();
  (*(v41 + 16))(v41, v35);
}

void sub_100021C50(int a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v16 = v15;
    LODWORD(v36) = a1;
    v17 = v4;
    v37 = a2;
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 valueForEntitlement:v18];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41[0] = v39;
    v41[1] = v40;
    a2 = v37;
    v4 = v17;
    if (*(&v40 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v38)
      {
        static Logger.daemonLogger.getter();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 67109120;
          *(v22 + 4) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v20, v21, "Client requested to set the managed configuration value: lockdownModeEnabled=%{BOOL}d", v22, 8u);
          a2 = v37;
        }

        v23 = v17;
        v24 = *(v5 + 8);
        v24(v14, v23);
        if (qword_100041CF0 != -1)
        {
          swift_once();
        }

        v25 = v36;
        sub_10002B764(v36 & 1);
        static Logger.daemonLogger.getter();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109120;
          *(v34 + 4) = v25 & 1;
          _os_log_impl(&_mh_execute_header, v32, v33, "Successfully set the managed configuration value: lockdownModeEnabled=%{BOOL}d", v34, 8u);
        }

        v24(v12, v23);
        (*(a2 + 16))(a2, 0);

        return;
      }
    }

    else
    {

      sub_100005E54(v41, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v41[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, v41);
    _os_log_impl(&_mh_execute_header, v26, v27, "Client is missing entitlement: %s", v28, 0xCu);
    sub_100005E08(v29);
  }

  (*(v5 + 8))(v8, v4);
  sub_10001EC70();
  swift_allocError();
  *v30 = 0xD00000000000002ALL;
  *(v30 + 8) = 0x80000001000342C0;
  *(v30 + 16) = 0;
  v31 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, v31);
}

uint64_t sub_100022304()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002235C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000223B4()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10002240C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000224B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003BC8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100022520()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000225A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000226C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003BC8(&qword_100041DD8, "zn");
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 4 * v13);
    sub_100005DA4(*(a1 + 56) + 32 * v13, v33 + 8);
    LODWORD(v33[0]) = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v14;
    swift_dynamicCast();
    sub_10000427C((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000427C(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000427C(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10000427C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_100022A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a4;
  v69 = a3;
  v70 = a2;
  v68 = a1;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Logger();
  v73 = *(v72 - 8);
  v11 = __chkstk_darwin(v72);
  v67 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v67 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v67 - v17;
  __chkstk_darwin(v16);
  v20 = &v67 - v19;
  v21 = [objc_allocWithZone(LAContext) init];
  v76[0] = 0;
  v74 = v21;
  v22 = [v21 canEvaluatePolicy:1007 error:v76];
  v23 = v76[0];
  if ((v22 & 1) != 0 || !v76[0])
  {
    if (a6)
    {
      v28 = v76[0];
      static String.Encoding.utf8.getter();
      v29 = String.data(using:allowLossyConversion:)();
      v31 = v30;
      (*(v8 + 8))(v10, v7);
      if (v31 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100023344(v29, v31);
      }

      v26 = v74;
      v55 = [v74 setCredential:isa type:-1];

      if (v55)
      {

        return v26;
      }

      static Logger.daemonLogger.getter();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Could not setCredential with the user-provided passcode", v58, 2u);
      }

      (*(v73 + 8))(v15, v72);
      return 0;
    }

    sub_100003BC8(&qword_1000429A8, &qword_100032190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100032150;
    *(inited + 32) = 1021;
    *(inited + 64) = &type metadata for String;
    v44 = v70;
    *(inited + 40) = v68;
    *(inited + 48) = v44;
    *(inited + 72) = 1030;
    *(inited + 104) = &type metadata for String;
    v45 = v71;
    *(inited + 80) = v69;
    *(inited + 88) = v45;
    *(inited + 112) = 1042;
    *(inited + 144) = &type metadata for String;
    *(inited + 120) = 0xD00000000000001DLL;
    *(inited + 128) = 0x8000000100034A30;
    v46 = sub_100003DE4(inited);
    swift_setDeallocating();
    v33 = v23;

    sub_100003BC8(&qword_100041E98, &qword_100031548);
    swift_arrayDestroy();
    sub_1000226C8(v46);

    v47 = Dictionary._bridgeToObjectiveC()().super.isa;

    v76[0] = 0;
    v26 = v74;
    v48 = [v74 evaluatePolicy:1007 options:v47 error:v76];

    v49 = v76[0];
    if (!v48)
    {
      v65 = v76[0];
      _convertNSErrorToError(_:)();

LABEL_32:
      swift_willThrow();

      return v26;
    }

    v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v49;

    v75 = 3;
    AnyHashable.init<A>(_:)();
    if (*(v50 + 16) && (v52 = sub_10001A2E8(v76), (v53 & 1) != 0))
    {
      sub_100005DA4(*(v50 + 56) + 32 * v52, v77);
      sub_10001ECCC(v76);

      if (swift_dynamicCast())
      {
        v54 = v67;
        if (v75 == 1)
        {

          return v26;
        }

        goto LABEL_28;
      }
    }

    else
    {

      sub_10001ECCC(v76);
    }

    v54 = v67;
LABEL_28:
    static Logger.daemonLogger.getter();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Could not evaluatePolicy. Unknown error", v64, 2u);
    }

    (*(v73 + 8))(v54, v72);
    return 0;
  }

  v24 = v76[0];
  if ([v24 code] != -5)
  {
    static Logger.daemonLogger.getter();
    v33 = v24;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v76[0] = v37;
      *v36 = 136315138;
      v38 = [v33 localizedDescription];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_100019C8C(v39, v41, v76);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Could not canEvaluatePolicy: %s", v36, 0xCu);
      sub_100005E08(v37);
    }

    (*(v73 + 8))(v18, v72);
    v26 = v74;
    goto LABEL_32;
  }

  v25 = Data._bridgeToObjectiveC()().super.isa;
  v26 = v74;
  v27 = [v74 setCredential:v25 type:-1];

  if ((v27 & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Could not setCredential with an empty passcode", v61, 2u);
    }

    else
    {
    }

    (*(v73 + 8))(v20, v72);

    return 0;
  }

  return v26;
}

uint64_t sub_100023344(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100023358(a1, a2);
  }

  return a1;
}

uint64_t sub_100023358(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1000233AC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Setting BOOLean value via LAStorage: %{BOOL}d", v10, 8u);
  }

  (*(v5 + 8))(v7, v4);
  v11 = objc_allocWithZone(LAStorage);
  if (a1)
  {
    v12 = [v11 init];
  }

  else
  {
    v12 = [v11 initWithDomain:0 authenticationContext:a2];
  }

  v13 = v12;
  v16 = 0;
  if ([v12 setBool:a1 & 1 forKey:6 error:&v16])
  {
    v14 = v16;
  }

  else
  {
    v15 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000235C8(uint64_t a1, const char *a2)
{
  v3 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v15) = 2;
  v8 = sub_100024990(&v15 + 1, v3);
  if (!v8)
  {
    return HIDWORD(v15);
  }

  v9 = v8;
  static Logger.daemonLogger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 8u);
  }

  (*(v5 + 8))(v7, v4);
  sub_1000247E4();
  swift_allocError();
  *v13 = v9;
  return swift_willThrow();
}

BOOL sub_10002379C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v12) = 2;
  v4 = sub_100024990(&v12 + 1, 4);
  if (v4)
  {
    v5 = v4;
    static Logger.daemonLogger.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error getting TRM GracePeriod: %d", v8, 8u);
    }

    (*(v1 + 8))(v3, v0);
    sub_1000247E4();
    swift_allocError();
    *v9 = v5;
    swift_willThrow();
  }

  else
  {
    return HIDWORD(v12) == 3;
  }

  return v10;
}

BOOL sub_100023978()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v12) = 0;
  v4 = sub_100024870(&v12 + 4);
  if (v4)
  {
    v5 = v4;
    static Logger.daemonLogger.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error getting TRM FeatureFlags: %d", v8, 8u);
    }

    (*(v1 + 8))(v3, v0);
    sub_1000247E4();
    swift_allocError();
    *v9 = v5;
    swift_willThrow();
  }

  else
  {
    return (~HIDWORD(v12) & 6) == 0;
  }

  return v10;
}

BOOL sub_100023B50(uint64_t a1, const char *a2)
{
  v3 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v16) = 2;
  v8 = sub_100024990(&v16 + 1, v3);
  if (v8)
  {
    v9 = v8;
    static Logger.daemonLogger.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 8u);
    }

    (*(v5 + 8))(v7, v4);
    sub_1000247E4();
    swift_allocError();
    *v13 = v9;
    swift_willThrow();
  }

  else
  {
    return HIDWORD(v16) == 1;
  }

  return v14;
}

uint64_t sub_100023D30(uint64_t a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a2(a1);
  if (result)
  {
    v11 = result;
    static Logger.daemonLogger.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109376;
      *(v14 + 4) = a1;
      *(v14 + 8) = 1024;
      *(v14 + 10) = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, a3, v14, 0xEu);
    }

    (*(v7 + 8))(v9, v6);
    sub_1000247E4();
    swift_allocError();
    *v15 = v11;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100023EDC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v12) = 0;
  v4 = sub_100024870(&v12 + 4);
  if (v4)
  {
    v5 = v4;
    static Logger.daemonLogger.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error getting TRM FeatureFlags: %d", v8, 8u);
    }

    (*(v1 + 8))(v3, v0);
    sub_1000247E4();
    swift_allocError();
    *v9 = v5;
    swift_willThrow();
  }

  else
  {
    v10 = (HIDWORD(v12) >> 3) & 1;
  }

  return v10 & 1;
}

BOOL sub_1000240AC()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  if (sub_100023978())
  {
    v3 = sub_100023B50(5, "Error getting TRM Profile: %d");
  }

  else
  {
    v3 = sub_10002379C();
  }

  return v3 && ((sub_100023EDC() & 1) == 0 || sub_100023B50(12, "Error getting HIDRM GlobalSwitch: %d"));
}

uint64_t sub_1000242C4(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v24 - v8;
  __chkstk_darwin(v7);
  if (sub_100023978())
  {
    if (a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1000235C8(10, "Error getting default TRM Profile: %d");
    }

    v11 = "Error setting TRM Profile (value=%u: %d";
    v12 = sub_1000247AC;
  }

  else
  {
    if (a1)
    {
      v10 = 3;
    }

    else
    {
      v10 = sub_1000235C8(9, "Error getting default TRM GracePeriod: %d");
    }

    v11 = "Error setting TRM GracePeriod (value=%u: %d";
    v12 = sub_100024958;
  }

  sub_100023D30(v10, v12, v11);
  result = sub_100023EDC();
  if (result)
  {
    if (a1)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_1000235C8(13, "Error getting default HIDRM GlobalSwitch: %d");
    }

    result = sub_100023D30(v23, sub_100024838, "Error setting HIDRM GlobalSwitch (value=%u: %d");
  }

  if (a1)
  {
    v14 = lockdown_reset_pairing();
    if (v14)
    {
      v15 = v14;
      static Logger.daemonLogger.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Error resetting Pairing Records: %d", v18, 8u);
      }

      (*(v3 + 8))(v9, v2);
    }

    result = sub_100024730();
    if (result)
    {
      v19 = result;
      static Logger.daemonLogger.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "Error clearing acessory cache: %d", v22, 8u);
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_100024744(uint64_t a1)
{
  v2 = sub_100003BC8(&qword_100042158, qword_100031C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000247E4()
{
  result = qword_1000429B0;
  if (!qword_1000429B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000429B0);
  }

  return result;
}

uint64_t sub_100024870(uint64_t a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = -5;
  v1 = ACMKernelControl(18);
  if (!v1)
  {
    v1 = *(v4 + 6);
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

uint64_t sub_100024990(_DWORD *a1, int a2)
{
  if (!a1)
  {
    return 4294967293;
  }

  v5 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -5;
  v12 = a2;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100024B04;
  v9 = &unk_10003DD30;
  v10 = &v13;
  v11 = &v5;
  v3 = ACMKernelControl(18);
  if (v3)
  {
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v3 = *(v14 + 6);
    _Block_object_dispose(&v13, 8);
    if (!v3)
    {
      *a1 = v5;
    }
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for LockdownModeACM.ACMError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LockdownModeACM.ACMError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100024B04(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = -5;
  if (a2 && a3 == 4)
  {
    v3 = 0;
    **(result + 40) = *a2;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

uint64_t sub_100024B38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000056546FLL;
  v3 = 0x5479616C50726941;
  if (a1 > 3u)
  {
    v4 = 0x8000000100033C30;
    v5 = 0xD000000000000017;
    if (a1 != 6)
    {
      v5 = 0x65706F6C65766544;
      v4 = 0xED000065646F4D72;
    }

    v6 = 0x5279616C50726941;
    v7 = 0xEF72657669656365;
    if (a1 != 4)
    {
      v6 = 0xD000000000000011;
      v7 = 0x8000000100033C10;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 5067348;
    if (a1 != 2)
    {
      v5 = 0x6C41646572616853;
      v4 = 0xEC000000736D7562;
    }

    v6 = 0x766572506B6E694CLL;
    v7 = 0xEC00000073776569;
    if (!a1)
    {
      v6 = 0x5479616C50726941;
      v7 = 0xEB0000000056546FLL;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x8000000100033C30;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xED000065646F4D72;
        if (v9 != 0x65706F6C65766544)
        {
          goto LABEL_40;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF72657669656365;
      if (v9 != 0x5279616C50726941)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v2 = 0x8000000100033C10;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE300000000000000;
        if (v9 != 5067348)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v3 = 0x6C41646572616853;
      v2 = 0xEC000000736D7562;
    }

    else if (a2)
    {
      v2 = 0xEC00000073776569;
      if (v9 != 0x766572506B6E694CLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v9 != v3)
    {
LABEL_40:
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_41;
    }
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v11 = 1;
LABEL_41:

  return v11 & 1;
}

uint64_t sub_100024DF4(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_100024F58(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t *RestrictionsManager.shared.unsafeMutableAddressor()
{
  if (qword_100041CF0 != -1)
  {
    swift_once();
  }

  return &static RestrictionsManager.shared;
}

uint64_t sub_100025124(uint64_t a1)
{
  result = sub_10002B110();
  static RestrictionsManager.shared = result;
  return result;
}

uint64_t static RestrictionsManager.shared.getter()
{
  if (qword_100041CF0 != -1)
  {
    swift_once();
  }
}

unint64_t RestrictionsManager.RestrictionKey.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD000000000000017;
    if (a1 != 6)
    {
      v4 = 0x65706F6C65766544;
    }

    v5 = 0x5279616C50726941;
    if (a1 != 4)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x5479616C50726941;
    v2 = 5067348;
    if (a1 != 2)
    {
      v2 = 0x6C41646572616853;
    }

    if (a1)
    {
      v1 = 0x766572506B6E694CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100025304@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13lockdownmoded19RestrictionsManagerC14RestrictionKeyO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100025334(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000056546FLL;
  v4 = 0x5479616C50726941;
  v5 = 0x8000000100033C30;
  v6 = 0xD000000000000017;
  if (v2 != 6)
  {
    v6 = 0x65706F6C65766544;
    v5 = 0xED000065646F4D72;
  }

  v7 = 0xEF72657669656365;
  v8 = 0x5279616C50726941;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000100033C10;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5067348;
  if (v2 != 2)
  {
    v10 = 0x6C41646572616853;
    v9 = 0xEC000000736D7562;
  }

  if (*v1)
  {
    v4 = 0x766572506B6E694CLL;
    v3 = 0xEC00000073776569;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100025478(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = sub_100004164(&_swiftEmptyArrayStorage);
  v4 = (v2 + 24);
  *(v2 + 32) = 0;
  v5 = sub_10000428C(&_swiftEmptyArrayStorage);
  if (!a1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 16) && (v6 = sub_10001A408(0x7463697274736552, 0xEC000000736E6F69), (v7 & 1) != 0))
  {
    sub_100005DA4(*(a1 + 56) + 32 * v6, &v97);
    sub_100003BC8(&qword_100042B08, &unk_100032350);
    if (swift_dynamicCast())
    {
      v5 = v95;
    }

    else
    {
      v5 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if (!*(a1 + 16))
    {
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = sub_10001A408(0x6E6F6973726556, 0xE700000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100005DA4(*(a1 + 56) + 32 * v8, &v97);

  if (swift_dynamicCast())
  {
    v10 = v95;
    goto LABEL_15;
  }

LABEL_14:
  v10 = 0;
LABEL_15:
  *(v2 + 16) = v10;
  *(v2 + 32) = 1;
  if (!v5)
  {
LABEL_23:
    v98 = &type metadata for Int;
    *&v97 = 0;
    goto LABEL_24;
  }

LABEL_16:
  if (!*(v5 + 16))
  {
    goto LABEL_23;
  }

  v11 = sub_10001A408(0x5479616C50726941, 0xEB0000000056546FLL);
  if ((v12 & 1) == 0)
  {
    goto LABEL_23;
  }

  v13 = *(*(v5 + 56) + 8 * v11);

  v98 = &type metadata for Int;
  *&v97 = 0;
  if (!v13)
  {
LABEL_24:
    v16 = 0;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_25;
  }

  if (*(v13 + 16))
  {

    v14 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v15)
    {
      sub_100005DA4(*(v13 + 56) + 32 * v14, &v95);

      if (!*(v13 + 16))
      {
        goto LABEL_102;
      }

      goto LABEL_99;
    }
  }

  v95 = 0u;
  v96 = 0u;
  if (!*(v13 + 16))
  {
LABEL_102:

    goto LABEL_103;
  }

LABEL_99:
  v76 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v77 & 1) == 0)
  {
    goto LABEL_102;
  }

  sub_100005DA4(*(v13 + 56) + 32 * v76, &v93);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_103:
    v16 = 0;
    goto LABEL_25;
  }

  v16 = v92[0];
LABEL_25:
  v93 = v95;
  v94 = v96;
  type metadata accessor for Restriction();
  v17 = swift_allocObject();
  *(v17 + 113) = 0;
  *(v17 + 64) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 120) = 0;
  *(v17 + 128) = 0;
  *(v17 + 16) = sub_100026994;
  *(v17 + 24) = 0;
  *(v17 + 32) = sub_1000269CC;
  *(v17 + 40) = 0;
  sub_10000427C(&v97, v92);
  swift_beginAccess();
  sub_10002BCCC(v92, v17 + 48);
  swift_endAccess();
  *(v17 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v93, v17 + 80);
  swift_endAccess();
  *(v17 + 112) = v16;
  *(v17 + 120) = xmmword_1000321F0;

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v17, 0, isUniquelyReferenced_nonNull_native);
  *v4 = v95;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v19 = sub_10001A408(0x766572506B6E694CLL, 0xEC00000073776569), (v20 & 1) == 0))
  {
    v98 = &type metadata for Bool;
    LOBYTE(v97) = 0;
    goto LABEL_34;
  }

  v21 = *(*(v5 + 56) + 8 * v19);

  v98 = &type metadata for Bool;
  LOBYTE(v97) = 0;
  if (!v21)
  {
LABEL_34:
    v24 = 0;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_35;
  }

  if (*(v21 + 16))
  {

    v22 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v23)
    {
      sub_100005DA4(*(v21 + 56) + 32 * v22, &v95);

      if (!*(v21 + 16))
      {
        goto LABEL_109;
      }

      goto LABEL_106;
    }
  }

  v95 = 0u;
  v96 = 0u;
  if (!*(v21 + 16))
  {
LABEL_109:

    goto LABEL_110;
  }

LABEL_106:
  v78 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v79 & 1) == 0)
  {
    goto LABEL_109;
  }

  sub_100005DA4(*(v21 + 56) + 32 * v78, &v93);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_110:
    v24 = 0;
    goto LABEL_35;
  }

  v24 = v92[0];
LABEL_35:
  v93 = v95;
  v94 = v96;
  v25 = swift_allocObject();
  *(v25 + 113) = 0;
  *(v25 + 64) = 0u;
  *(v25 + 96) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 120) = 0;
  *(v25 + 128) = 0;
  *(v25 + 16) = sub_1000269E4;
  *(v25 + 24) = 0;
  *(v25 + 32) = sub_100026A60;
  *(v25 + 40) = 0;
  sub_10000427C(&v97, v92);
  swift_beginAccess();
  sub_10002BCCC(v92, v25 + 48);
  swift_endAccess();
  *(v25 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v93, v25 + 80);
  swift_endAccess();
  *(v25 + 112) = v24;
  *(v25 + 120) = xmmword_100032200;

  swift_beginAccess();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v25, 1, v26);
  *v4 = v95;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v27 = sub_10001A408(5067348, 0xE300000000000000), (v28 & 1) == 0))
  {
    v98 = &type metadata for Bool;
    LOBYTE(v97) = 1;
    goto LABEL_44;
  }

  v29 = *(*(v5 + 56) + 8 * v27);

  v98 = &type metadata for Bool;
  LOBYTE(v97) = 1;
  if (!v29)
  {
LABEL_44:
    v32 = 0;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_45;
  }

  if (*(v29 + 16))
  {

    v30 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v31)
    {
      sub_100005DA4(*(v29 + 56) + 32 * v30, &v95);

      if (!*(v29 + 16))
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }
  }

  v95 = 0u;
  v96 = 0u;
  if (!*(v29 + 16))
  {
LABEL_116:

    goto LABEL_117;
  }

LABEL_113:
  v80 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v81 & 1) == 0)
  {
    goto LABEL_116;
  }

  sub_100005DA4(*(v29 + 56) + 32 * v80, &v93);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_117:
    v32 = 0;
    goto LABEL_45;
  }

  v32 = v92[0];
LABEL_45:
  v93 = v95;
  v94 = v96;
  v33 = swift_allocObject();
  *(v33 + 113) = 0;
  *(v33 + 64) = 0u;
  *(v33 + 96) = 0u;
  *(v33 + 80) = 0u;
  *(v33 + 48) = 0u;
  *(v33 + 120) = 0;
  *(v33 + 128) = 0;
  *(v33 + 16) = sub_100026B0C;
  *(v33 + 24) = 0;
  *(v33 + 32) = sub_100026B44;
  *(v33 + 40) = 0;
  sub_10000427C(&v97, v92);
  swift_beginAccess();
  sub_10002BCCC(v92, v33 + 48);
  swift_endAccess();
  *(v33 + 114) = 0;
  swift_beginAccess();
  sub_10002BCCC(&v93, v33 + 80);
  swift_endAccess();
  *(v33 + 112) = v32;
  *(v33 + 120) = 0;
  *(v33 + 128) = 0;

  swift_beginAccess();
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v33, 2, v34);
  *v4 = v95;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v35 = sub_10001A408(0x6C41646572616853, 0xEC000000736D7562), (v36 & 1) == 0))
  {
    v98 = &type metadata for Bool;
    LOBYTE(v97) = 0;
    goto LABEL_54;
  }

  v37 = *(*(v5 + 56) + 8 * v35);

  v98 = &type metadata for Bool;
  LOBYTE(v97) = 0;
  if (!v37)
  {
LABEL_54:
    v40 = 0;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_55;
  }

  if (*(v37 + 16))
  {

    v38 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v39)
    {
      sub_100005DA4(*(v37 + 56) + 32 * v38, &v95);

      if (!*(v37 + 16))
      {
        goto LABEL_123;
      }

      goto LABEL_120;
    }
  }

  v95 = 0u;
  v96 = 0u;
  if (!*(v37 + 16))
  {
LABEL_123:

    goto LABEL_124;
  }

LABEL_120:
  v82 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v83 & 1) == 0)
  {
    goto LABEL_123;
  }

  sub_100005DA4(*(v37 + 56) + 32 * v82, &v93);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_124:
    v40 = 0;
    goto LABEL_55;
  }

  v40 = v92[0];
LABEL_55:
  v93 = v95;
  v94 = v96;
  v41 = swift_allocObject();
  *(v41 + 113) = 0;
  *(v41 + 64) = 0u;
  *(v41 + 96) = 0u;
  *(v41 + 80) = 0u;
  *(v41 + 48) = 0u;
  *(v41 + 120) = 0;
  *(v41 + 128) = 0;
  *(v41 + 16) = sub_100026B9C;
  *(v41 + 24) = 0;
  *(v41 + 32) = sub_100026C44;
  *(v41 + 40) = 0;
  sub_10000427C(&v97, v92);
  swift_beginAccess();
  sub_10002BCCC(v92, v41 + 48);
  swift_endAccess();
  *(v41 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v93, v41 + 80);
  swift_endAccess();
  *(v41 + 112) = v40;
  *(v41 + 120) = 0;
  *(v41 + 128) = 0;

  swift_beginAccess();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v41, 3, v42);
  *v4 = v95;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v43 = sub_10001A408(0x5279616C50726941, 0xEF72657669656365), (v44 & 1) == 0))
  {
    v98 = &type metadata for Bool;
    LOBYTE(v97) = 0;
    goto LABEL_64;
  }

  v45 = *(*(v5 + 56) + 8 * v43);

  v98 = &type metadata for Bool;
  LOBYTE(v97) = 0;
  if (!v45)
  {
LABEL_64:
    v48 = 0;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_65;
  }

  if (*(v45 + 16))
  {

    v46 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v47)
    {
      sub_100005DA4(*(v45 + 56) + 32 * v46, &v95);

      if (!*(v45 + 16))
      {
        goto LABEL_130;
      }

      goto LABEL_127;
    }
  }

  v95 = 0u;
  v96 = 0u;
  if (!*(v45 + 16))
  {
LABEL_130:

    goto LABEL_131;
  }

LABEL_127:
  v84 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v85 & 1) == 0)
  {
    goto LABEL_130;
  }

  sub_100005DA4(*(v45 + 56) + 32 * v84, &v93);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_131:
    v48 = 0;
    goto LABEL_65;
  }

  v48 = v92[0];
LABEL_65:
  v93 = v95;
  v94 = v96;
  v49 = swift_allocObject();
  *(v49 + 113) = 0;
  *(v49 + 64) = 0u;
  *(v49 + 96) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 48) = 0u;
  *(v49 + 120) = 0;
  *(v49 + 128) = 0;
  *(v49 + 16) = sub_100026C98;
  *(v49 + 24) = 0;
  *(v49 + 32) = sub_100026D38;
  *(v49 + 40) = 0;
  sub_10000427C(&v97, v92);
  swift_beginAccess();
  sub_10002BCCC(v92, v49 + 48);
  swift_endAccess();
  *(v49 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v93, v49 + 80);
  swift_endAccess();
  *(v49 + 112) = v48;
  *(v49 + 120) = xmmword_100032210;

  swift_beginAccess();
  v50 = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v49, 4, v50);
  *v4 = v95;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v51 = sub_10001A408(0xD000000000000011, 0x8000000100033C10), (v52 & 1) == 0))
  {
    v98 = &type metadata for Bool;
    LOBYTE(v97) = 1;
    goto LABEL_74;
  }

  v53 = *(*(v5 + 56) + 8 * v51);

  v98 = &type metadata for Bool;
  LOBYTE(v97) = 1;
  if (!v53)
  {
LABEL_74:
    v56 = 0;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_75;
  }

  if (*(v53 + 16))
  {

    v54 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v55)
    {
      sub_100005DA4(*(v53 + 56) + 32 * v54, &v95);

      if (!*(v53 + 16))
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }
  }

  v95 = 0u;
  v96 = 0u;
  if (!*(v53 + 16))
  {
LABEL_137:

    goto LABEL_138;
  }

LABEL_134:
  v86 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v87 & 1) == 0)
  {
    goto LABEL_137;
  }

  sub_100005DA4(*(v53 + 56) + 32 * v86, &v93);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_138:
    v56 = 0;
    goto LABEL_75;
  }

  v56 = v92[0];
LABEL_75:
  v93 = v95;
  v94 = v96;
  v57 = swift_allocObject();
  *(v57 + 113) = 0;
  *(v57 + 64) = 0u;
  *(v57 + 96) = 0u;
  *(v57 + 80) = 0u;
  *(v57 + 48) = 0u;
  *(v57 + 120) = 0;
  *(v57 + 128) = 0;
  *(v57 + 16) = sub_100026E04;
  *(v57 + 24) = 0;
  *(v57 + 32) = sub_100026EC0;
  *(v57 + 40) = 0;
  sub_10000427C(&v97, v92);
  swift_beginAccess();
  sub_10002BCCC(v92, v57 + 48);
  swift_endAccess();
  *(v57 + 114) = 0;
  swift_beginAccess();
  sub_10002BCCC(&v93, v57 + 80);
  swift_endAccess();
  *(v57 + 112) = v56;
  *(v57 + 120) = 0;
  *(v57 + 128) = 0;

  swift_beginAccess();
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v57, 5, v58);
  *v4 = v95;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v59 = sub_10001A408(0xD000000000000017, 0x8000000100033C30), (v60 & 1) == 0))
  {
    v98 = &type metadata for Int;
    *&v97 = 0;
    goto LABEL_84;
  }

  v61 = *(*(v5 + 56) + 8 * v59);

  v98 = &type metadata for Int;
  *&v97 = 0;
  if (!v61)
  {
LABEL_84:
    v64 = 0;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_85;
  }

  if (*(v61 + 16))
  {

    v62 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v63)
    {
      sub_100005DA4(*(v61 + 56) + 32 * v62, &v95);

      if (!*(v61 + 16))
      {
        goto LABEL_144;
      }

      goto LABEL_141;
    }
  }

  v95 = 0u;
  v96 = 0u;
  if (!*(v61 + 16))
  {
LABEL_144:

    goto LABEL_145;
  }

LABEL_141:
  v88 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v89 & 1) == 0)
  {
    goto LABEL_144;
  }

  sub_100005DA4(*(v61 + 56) + 32 * v88, &v93);

  if (swift_dynamicCast())
  {
    v64 = v92[0];
    goto LABEL_85;
  }

LABEL_145:
  v64 = 0;
LABEL_85:
  v93 = v95;
  v94 = v96;
  v65 = swift_allocObject();
  *(v65 + 113) = 0;
  *(v65 + 64) = 0u;
  *(v65 + 96) = 0u;
  *(v65 + 80) = 0u;
  *(v65 + 48) = 0u;
  *(v65 + 120) = 0;
  *(v65 + 128) = 0;
  *(v65 + 16) = sub_100026FA8;
  *(v65 + 24) = 0;
  *(v65 + 32) = sub_100026FE0;
  *(v65 + 40) = 0;
  sub_10000427C(&v97, v92);
  swift_beginAccess();
  sub_10002BCCC(v92, v65 + 48);
  swift_endAccess();
  *(v65 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v93, v65 + 80);
  swift_endAccess();
  *(v65 + 112) = v64;
  *(v65 + 120) = 0xD000000000000017;
  *(v65 + 128) = 0x8000000100033C30;

  swift_beginAccess();
  v66 = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v65, 6, v66);
  *v4 = v95;
  swift_endAccess();
  if (!v5)
  {
LABEL_94:
    v98 = &type metadata for Bool;
    LOBYTE(v97) = 0;
    goto LABEL_95;
  }

  if (!*(v5 + 16) || (v67 = sub_10001A408(0x65706F6C65766544, 0xED000065646F4D72), (v68 & 1) == 0))
  {

    goto LABEL_94;
  }

  v69 = *(*(v5 + 56) + 8 * v67);

  v98 = &type metadata for Bool;
  LOBYTE(v97) = 0;
  if (!v69)
  {
LABEL_95:
    v72 = 0;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_96;
  }

  if (*(v69 + 16))
  {

    v70 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v71)
    {
      sub_100005DA4(*(v69 + 56) + 32 * v70, &v95);

      if (!*(v69 + 16))
      {
        goto LABEL_151;
      }

      goto LABEL_148;
    }
  }

  v95 = 0u;
  v96 = 0u;
  if (!*(v69 + 16))
  {
LABEL_151:

    goto LABEL_152;
  }

LABEL_148:
  v90 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v91 & 1) == 0)
  {
    goto LABEL_151;
  }

  sub_100005DA4(*(v69 + 56) + 32 * v90, &v93);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_152:
    v72 = 0;
    goto LABEL_96;
  }

  v72 = v92[0];
LABEL_96:
  v93 = v95;
  v94 = v96;
  v73 = swift_allocObject();
  *(v73 + 113) = 0;
  *(v73 + 64) = 0u;
  *(v73 + 96) = 0u;
  *(v73 + 80) = 0u;
  *(v73 + 48) = 0u;
  *(v73 + 120) = 0;
  *(v73 + 128) = 0;
  *(v73 + 16) = sub_10002706C;
  *(v73 + 24) = 0;
  *(v73 + 32) = sub_1000270A0;
  *(v73 + 40) = 0;
  sub_10000427C(&v97, v92);
  swift_beginAccess();
  sub_10002BCCC(v92, v73 + 48);
  swift_endAccess();
  *(v73 + 114) = 0;
  swift_beginAccess();
  sub_10002BCCC(&v93, v73 + 80);
  swift_endAccess();
  *(v73 + 112) = v72;
  *(v73 + 120) = 0;
  *(v73 + 128) = 0;

  swift_beginAccess();
  v74 = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_10001A604(v73, 7, v74);
  *(v2 + 24) = v95;
  swift_endAccess();
  return v2;
}

uint64_t sub_100026994@<X0>(void *a1@<X8>)
{
  result = sub_10002CAB8();
  a1[3] = &type metadata for Int;
  *a1 = result;
  return result;
}

void sub_1000269E4(uint64_t a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, kCFPreferencesAnyApplication, 0);

  *(a1 + 24) = &type metadata for Bool;
  *a1 = AppBooleanValue != 0;
}

void sub_100026A60(uint64_t a1)
{
  sub_100005DA4(a1, v3);
  swift_dynamicCast();
  v1 = String._bridgeToObjectiveC()();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  CFPreferencesSetAppValue(v1, isa, kCFPreferencesAnyApplication);
}

BOOL sub_100026B0C@<W0>(uint64_t a1@<X8>)
{
  result = sub_1000240AC();
  *(a1 + 24) = &type metadata for Bool;
  *a1 = result;
  return result;
}

uint64_t sub_100026B44(uint64_t a1)
{
  sub_100005DA4(a1, v4);
  v1 = swift_dynamicCast();
  return sub_1000242C4(v3 & 1u | ((v1 & 1) == 0));
}

void sub_100026B9C(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isEnabledForDataclass:ACAccountDataclassSharedStreams];

    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = &type metadata for Bool;
  *a1 = v5;
}

void sub_100026C44(uint64_t a1)
{
  sub_100005DA4(a1, v3);
  v1 = swift_dynamicCast();
  sub_100005800(v1 & v2);
}

void sub_100026C98(uint64_t a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v3, 0);

  *(a1 + 24) = &type metadata for Bool;
  *a1 = AppBooleanValue != 0;
}

void sub_100026D38(uint64_t a1)
{
  sub_100005DA4(a1, v4);
  swift_dynamicCast();
  v1 = String._bridgeToObjectiveC()();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  CFPreferencesSetAppValue(v1, isa, v3);
}

uint64_t sub_100026E04@<X0>(uint64_t a1@<X8>)
{
  if (qword_100041CD8 != -1)
  {
    swift_once();
  }

  v2 = qword_100042168;
  if (qword_100041CD0 != -1)
  {
    v4 = qword_100042168;
    swift_once();
    v2 = v4;
  }

  result = CFPreferencesGetAppBooleanValue(v2, qword_100042160, 0);
  *(a1 + 24) = &type metadata for Bool;
  *a1 = result != 0;
  return result;
}

void sub_100026EC0(uint64_t a1)
{
  sub_100005DA4(a1, v3);
  swift_dynamicCast();
  if (qword_100041CD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100042168;
  v2.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  if (qword_100041CD0 != -1)
  {
    swift_once();
  }

  CFPreferencesSetAppValue(v1, v2.super.super.isa, qword_100042160);
}

uint64_t sub_100026FA8@<X0>(void *a1@<X8>)
{
  result = sub_100005FD4();
  a1[3] = &type metadata for Int;
  *a1 = result;
  return result;
}

uint64_t sub_100026FF8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_100005DA4(a1, v6);
  swift_dynamicCast();
  if (v5 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v5 == 1;
  }

  return a2(v3);
}

uint64_t sub_10002706C@<X0>(uint64_t a1@<X8>)
{
  result = AMFIIsDeveloperModeEnabled();
  *(a1 + 24) = &type metadata for Bool;
  *a1 = result;
  return result;
}

void sub_1000270A0(uint64_t a1)
{
  sub_100005DA4(a1, v4);
  if (!swift_dynamicCast() || (v3 & 1) == 0)
  {
    sub_100005DA4(a1, v4);
    v2 = swift_dynamicCast();
    sub_10000A30C(v2 & v3);
  }
}

uint64_t sub_100027134(int a1, uint64_t a2)
{
  LODWORD(v4) = a1;
  v81 = type metadata accessor for Logger();
  v77 = *(v81 - 8);
  v5 = __chkstk_darwin(v81);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v74 = &v65 - v8;
  __chkstk_darwin(v7);
  v10 = &v65 - v9;
  swift_beginAccess();
  v69 = v2;

  v12 = sub_10002B5A4(v11, a2);

  if (v4)
  {
    v68 = 0;
  }

  else
  {
    v13 = sub_10002A5C0(v12);
    v68 = 0;

    v12 = v13;
  }

  static Logger.daemonLogger.getter();
  swift_bridgeObjectRetain_n();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = &off_100031000;
  v79 = v4;
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v86 = v19;
    *v18 = 136315394;
    if (v4)
    {
      v20 = 0x7463697274736572;
    }

    else
    {
      v20 = 0x6972747365726E75;
    }

    if (v4)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEA00000000007463;
    }

    v21 = sub_100019C8C(v20, v4, &v86);
    LOBYTE(v4) = v79;

    *(v18 + 4) = v21;
    *(v18 + 12) = 2048;
    v22 = v12[2];

    *(v18 + 14) = v22;

    _os_log_impl(&_mh_execute_header, v14, v15, "Will %s %ld restrictions…", v18, 0x16u);
    sub_100005E08(v19);

    v23 = v77 + 8;
    v80 = *(v77 + 8);
    v80(v10, v81);
    v17 = &off_100031000;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v23 = v77 + 8;
    v80 = *(v77 + 8);
    v80(v10, v81);
  }

  v25 = v74;
  result = v12;
  v27 = 0;
  v28 = v12 + 8;
  v29 = 1 << *(v12 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v12[8];
  v32 = (v29 + 63) >> 6;
  v33 = 0x6972747365726E55;
  if (v4)
  {
    v33 = 0x7463697274736552;
  }

  v72 = v33;
  v34 = 0xED0000676E697463;
  if (v4)
  {
    v34 = 0xEB00000000676E69;
  }

  v73 = v34;
  v67 = 0x8000000100033C30;
  v66 = 0x8000000100033C10;
  *&v24 = *(v17 + 458);
  v71 = v24;
  v77 = v23;
  v78 = result;
  if (v31)
  {
    while (1)
    {
LABEL_24:
      v36 = __clz(__rbit64(v31)) | (v27 << 6);
      v37 = *(*(result + 48) + v36);
      v38 = *(*(result + 56) + 8 * v36);

      static Logger.daemonLogger.getter();
      v39 = Logger.logObject.getter();
      v40 = v25;
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v41))
      {
        v75 = v41;
        v42 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v86 = v76;
        *v42 = v71;
        v43 = sub_100019C8C(v72, v73, &v86);

        *(v42 + 4) = v43;
        *(v42 + 12) = 2080;
        if (v37 > 3)
        {
          if (v37 > 5)
          {
            v44 = v75;
            if (v37 == 6)
            {
              v45 = 0xD000000000000017;
              v46 = v67;
            }

            else
            {
              v45 = 0x65706F6C65766544;
              v46 = 0xED000065646F4D72;
            }
          }

          else
          {
            v44 = v75;
            if (v37 == 4)
            {
              v45 = 0x5279616C50726941;
              v46 = 0xEF72657669656365;
            }

            else
            {
              v45 = 0xD000000000000011;
              v46 = v66;
            }
          }
        }

        else if (v37 > 1)
        {
          v44 = v75;
          if (v37 == 2)
          {
            v46 = 0xE300000000000000;
            v45 = 5067348;
          }

          else
          {
            v45 = 0x6C41646572616853;
            v46 = 0xEC000000736D7562;
          }
        }

        else
        {
          v44 = v75;
          if (v37)
          {
            v45 = 0x766572506B6E694CLL;
            v46 = 0xEC00000073776569;
          }

          else
          {
            v45 = 0x5479616C50726941;
            v46 = 0xEB0000000056546FLL;
          }
        }

        v47 = sub_100019C8C(v45, v46, &v86);

        *(v42 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v39, v44, "%s %s…", v42, 0x16u);
        swift_arrayDestroy();

        v25 = v74;
        v80(v74, v81);
      }

      else
      {

        v80(v40, v81);
        v25 = v40;
      }

      LOBYTE(v4) = v79;
      if (v79)
      {
        break;
      }

      swift_beginAccess();
      sub_1000045C4(v38 + 80, &v84, &qword_100042500, &qword_100031EB0);
      if (v85)
      {
        goto LABEL_46;
      }

      swift_beginAccess();
      result = sub_1000045C4(v38 + 48, &v82, &qword_100042500, &qword_100031EB0);
      if (!v83)
      {
        goto LABEL_73;
      }

      sub_10000427C(&v82, &v86);
      if (v85)
      {
        sub_100005E54(&v84, &qword_100042500, &qword_100031EB0);
      }

LABEL_47:
      v31 &= v31 - 1;
      v48 = *(v38 + 32);

      v48(&v86);

      sub_100005E08(&v86);
      *(v38 + 112) = 0;

      result = v78;
      if (!v31)
      {
        goto LABEL_20;
      }
    }

    swift_beginAccess();
    result = sub_1000045C4(v38 + 48, &v84, &qword_100042500, &qword_100031EB0);
    if (!v85)
    {
      goto LABEL_72;
    }

LABEL_46:
    sub_10000427C(&v84, &v86);
    goto LABEL_47;
  }

  while (1)
  {
LABEL_20:
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v35 >= v32)
    {
      break;
    }

    v31 = v28[v35];
    ++v27;
    if (v31)
    {
      v27 = v35;
      goto LABEL_24;
    }
  }

  v49 = 0;
  v50 = *(v69 + 24);
  v51 = 1 << *(v50 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v50 + 64);
  v54 = (v51 + 63) >> 6;
  for (i = v70; v53; *(*(*(v50 + 56) + ((v56 << 9) | (8 * v57))) + 112) = 0)
  {
    v56 = v49;
LABEL_60:
    v57 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
  }

  while (1)
  {
    v56 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v56 >= v54)
    {
      v58 = v68;
      sub_10002B764(v4 & 1);
      if (v58)
      {
      }

      static Logger.daemonLogger.getter();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v86 = v62;
        *v61 = 136315138;
        if (v4)
        {
          v63 = 0x7463697274736572;
        }

        else
        {
          v63 = 0x6972747365726E75;
        }

        v64 = sub_100019C8C(v63, v73, &v86);

        *(v61 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v59, v60, "Finished %s restrictions…", v61, 0xCu);
        sub_100005E08(v62);
      }

      return (v80)(i, v81);
    }

    v53 = *(v50 + 64 + 8 * v56);
    ++v49;
    if (v53)
    {
      v49 = v56;
      goto LABEL_60;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

BOOL sub_100027B74(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  do
  {
    v7 = v4;
    if (!v4)
    {
      break;
    }

    v8 = *v5;
    if (v8 > 3)
    {
      if (*v5 > 5u)
      {
        if (v8 == 6)
        {
          v13 = 0xD000000000000017;
          v14 = 0x8000000100033C30;
          if (v3 <= 3)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v13 = 0x65706F6C65766544;
          v14 = 0xED000065646F4D72;
          if (v3 <= 3)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        if (v8 == 4)
        {
          v13 = 0x5279616C50726941;
        }

        else
        {
          v13 = 0xD000000000000011;
        }

        if (v8 == 4)
        {
          v14 = 0xEF72657669656365;
        }

        else
        {
          v14 = 0x8000000100033C10;
        }

        if (v3 <= 3)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v9 = 0x6C41646572616853;
      if (v8 == 2)
      {
        v9 = 5067348;
      }

      v10 = 0xEC000000736D7562;
      if (v8 == 2)
      {
        v10 = 0xE300000000000000;
      }

      v11 = 0x766572506B6E694CLL;
      if (!*v5)
      {
        v11 = 0x5479616C50726941;
      }

      v12 = 0xEC00000073776569;
      if (!*v5)
      {
        v12 = 0xEB0000000056546FLL;
      }

      if (*v5 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v5 <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v3 <= 3)
      {
LABEL_47:
        if (v3 > 1)
        {
          if (v3 == 2)
          {
            v19 = 5067348;
          }

          else
          {
            v19 = 0x6C41646572616853;
          }

          if (v3 == 2)
          {
            v20 = 0xE300000000000000;
          }

          else
          {
            v20 = 0xEC000000736D7562;
          }
        }

        else
        {
          v19 = 0x5479616C50726941;
          v20 = 0xEB0000000056546FLL;
          if (v3)
          {
            v19 = 0x766572506B6E694CLL;
            v20 = 0xEC00000073776569;
          }
        }

        goto LABEL_56;
      }
    }

    v15 = 0xD000000000000017;
    if (v3 != 6)
    {
      v15 = 0x65706F6C65766544;
    }

    v16 = 0xED000065646F4D72;
    if (v3 == 6)
    {
      v16 = 0x8000000100033C30;
    }

    v17 = 0x5279616C50726941;
    if (v3 != 4)
    {
      v17 = 0xD000000000000011;
    }

    v18 = 0xEF72657669656365;
    if (v3 != 4)
    {
      v18 = 0x8000000100033C10;
    }

    if (v3 <= 5)
    {
      v19 = v17;
    }

    else
    {
      v19 = v15;
    }

    if (v3 <= 5)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

LABEL_56:
    if (v13 == v19 && v14 == v20)
    {

      return v7 == 0;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v5;
    v4 = v7 - 1;
  }

  while ((v6 & 1) == 0);
  return v7 == 0;
}

id sub_100027E54()
{
  v2 = v0;
  v3 = sub_100003BC8(&unk_100042310, &unk_100032370);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 32) & 1) == 0)
  {
    v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v6;
    v34 = v1;
    swift_beginAccess();
    v33 = v0;
    v10 = *(v0 + 24);
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    while (v13)
    {
      v16 = v15;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(*(v10 + 56) + ((v16 << 9) | (8 * v17)));
      v19 = *(v18 + 16);

      v19(v36, v20);

      sub_10000427C(v36, v35);
      swift_beginAccess();
      sub_10002BCCC(v35, v18 + 80);
      swift_endAccess();
      *(v18 + 112) = 0;
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v2 = v33;
        v9 = v31;
        v6 = v32;
        goto LABEL_13;
      }

      v13 = *(v10 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    sub_100005E54(v5, &unk_100042310, &unk_100032370);
    __break(1u);
  }

LABEL_13:
  sub_1000288A4();
  v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_10002BD3C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_18;
  }

  URL.appendingPathComponent(_:)();
  v22 = *(v7 + 8);
  v22(v5, v6);
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v22(v9, v6);
  *&v36[0] = 0;
  v26 = [(objc_class *)v21.super.isa writeToURL:v25 error:v36];

  v27 = *&v36[0];
  if (v26)
  {
    *(v2 + 32) = 1;
    return v27;
  }

  else
  {
    v29 = *&v36[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

id sub_100028210()
{
  v1 = v0;
  v2 = sub_100003BC8(&unk_100042310, &unk_100032370);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  sub_10002BD3C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005E54(v4, &unk_100042310, &unk_100032370);
    __break(1u);
  }

  URL.appendingPathComponent(_:)();
  v10 = *(v6 + 8);
  v10(v4, v5);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v10(v8, v5);
  v18 = 0;
  v14 = [v9 removeItemAtURL:v13 error:&v18];

  v15 = v18;
  if (v14)
  {
    *(v1 + 32) = 0;
    return v15;
  }

  else
  {
    v17 = v18;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

id sub_100028470()
{
  v38 = type metadata accessor for Logger();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v40 = v0;

  v5 = sub_10002A820(v4);
  v41 = v1;

  v8 = 0;
  v9 = 0;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v37 = (v2 + 8);
  v34 = 0x8000000100033C10;
  v35 = 0x8000000100033C30;
  *&v7 = 136315138;
  v36 = v7;
  while (1)
  {
    v14 = v9;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = v15 | (v9 << 6);
    v17 = *(*(v5 + 48) + v16);
    v18 = *(*(v5 + 56) + 8 * v16);

    if (sub_10002D178())
    {
      *(v18 + 112) = 1;
      v19 = v39;
      static Logger.daemonLogger.getter();
      v20 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v33))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v42 = v22;
        v31 = v21;
        v32 = v20;
        *v21 = v36;
        v30 = v22;
        if (v17 > 3)
        {
          if (v17 > 5)
          {
            if (v17 == 6)
            {
              v23 = 0xD000000000000017;
              v24 = v35;
            }

            else
            {
              v23 = 0x65706F6C65766544;
              v24 = 0xED000065646F4D72;
            }
          }

          else if (v17 == 4)
          {
            v23 = 0x5279616C50726941;
            v24 = 0xEF72657669656365;
          }

          else
          {
            v23 = 0xD000000000000011;
            v24 = v34;
          }
        }

        else if (v17 > 1)
        {
          if (v17 == 2)
          {
            v24 = 0xE300000000000000;
            v23 = 5067348;
          }

          else
          {
            v23 = 0x6C41646572616853;
            v24 = 0xEC000000736D7562;
          }
        }

        else if (v17)
        {
          v23 = 0x766572506B6E694CLL;
          v24 = 0xEC00000073776569;
        }

        else
        {
          v23 = 0x5479616C50726941;
          v24 = 0xEB0000000056546FLL;
        }

        v25 = v33;
        v26 = sub_100019C8C(v23, v24, &v42);

        v27 = v31;
        *(v31 + 1) = v26;
        v28 = v25;
        v29 = v32;
        _os_log_impl(&_mh_execute_header, v32, v28, "Value of restriction changed: %s", v27, 0xCu);
        sub_100005E08(v30);

        result = (*v37)(v39, v38);
      }

      else
      {

        result = (*v37)(v19, v38);
      }

      v8 = 1;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v13)
    {
      break;
    }

    v12 = *(v5 + 64 + 8 * v9);
    ++v14;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  if (v8)
  {
    return sub_100027E54();
  }

  return result;
}

unint64_t sub_1000288A4()
{
  sub_100003BC8(&qword_100042B00, &qword_100032348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100031EA0;
  *(inited + 32) = 0x6E6F6973726556;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = &type metadata for Int;
  strcpy((inited + 80), "Restrictions");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  swift_beginAccess();
  v2 = *(v0 + 24);

  v3 = sub_10000428C(&_swiftEmptyArrayStorage);
  v43 = inited;
  *(inited + 120) = sub_100003BC8(&qword_100042B08, &unk_100032350);
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v45 = v2 + 64;
  v46 = v2;
  v44 = v8;
  while (v7)
  {
    v10 = v9;
LABEL_11:
    v11 = __clz(__rbit64(v7)) | (v10 << 6);
    v12 = *(*(v2 + 48) + v11);
    if (v12 > 3)
    {
      if (*(*(v2 + 48) + v11) > 5u)
      {
        if (v12 == 6)
        {
          v47 = 0xD000000000000017;
          v13 = 0x8000000100033C30;
        }

        else
        {
          v47 = 0x65706F6C65766544;
          v13 = 0xED000065646F4D72;
        }
      }

      else if (v12 == 4)
      {
        v47 = 0x5279616C50726941;
        v13 = 0xEF72657669656365;
      }

      else
      {
        v47 = 0xD000000000000011;
        v13 = 0x8000000100033C10;
      }
    }

    else if (*(*(v2 + 48) + v11) > 1u)
    {
      if (v12 == 2)
      {
        v13 = 0xE300000000000000;
        v47 = 5067348;
      }

      else
      {
        v47 = 0x6C41646572616853;
        v13 = 0xEC000000736D7562;
      }
    }

    else if (*(*(v2 + 48) + v11))
    {
      v47 = 0x766572506B6E694CLL;
      v13 = 0xEC00000073776569;
    }

    else
    {
      v47 = 0x5479616C50726941;
      v13 = 0xEB0000000056546FLL;
    }

    v14 = *(*(v2 + 56) + 8 * v11);
    v52[0] = 0x65756C6156;
    v52[1] = 0xE500000000000000;
    swift_beginAccess();
    sub_1000045C4(v14 + 80, &v48, &qword_100042500, &qword_100031EB0);
    if (*(&v49[0] + 1))
    {
      sub_10000427C(&v48, v53);
    }

    else
    {
      swift_beginAccess();
      sub_1000045C4(v14 + 48, &v50, &qword_100042500, &qword_100031EB0);
      if (!v51)
      {
        goto LABEL_50;
      }

      sub_10000427C(&v50, v53);
      v15 = *(&v49[0] + 1);

      if (v15)
      {
        sub_100005E54(&v48, &qword_100042500, &qword_100031EB0);
      }
    }

    v54[0] = 0x6465676E616843;
    v54[1] = 0xE700000000000000;
    v16 = *(v14 + 112);
    v56 = &type metadata for Bool;
    v55 = v16;
    sub_100003BC8(&qword_100041DF0, &qword_100031500);
    v17 = static _DictionaryStorage.allocate(capacity:)();

    sub_1000045C4(v52, &v48, &qword_100041DF8, &qword_100031508);
    v18 = v48;
    v19 = sub_10001A408(v48, *(&v48 + 1));
    if (v20)
    {
      goto LABEL_46;
    }

    *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
    *(v17[6] + 16 * v19) = v18;
    sub_10000427C(v49, (v17[7] + 32 * v19));
    v21 = v17[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_47;
    }

    v17[2] = v23;
    sub_1000045C4(v54, &v48, &qword_100041DF8, &qword_100031508);
    v24 = v48;
    v25 = sub_10001A408(v48, *(&v48 + 1));
    if (v26)
    {
      goto LABEL_46;
    }

    *(v17 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
    *(v17[6] + 16 * v25) = v24;
    sub_10000427C(v49, (v17[7] + 32 * v25));
    v27 = v17[2];
    v22 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v22)
    {
      goto LABEL_47;
    }

    v17[2] = v28;

    sub_100003BC8(&qword_100041DF8, &qword_100031508);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v48 = v3;
    v31 = sub_10001A408(v47, v13);
    v32 = v3[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_48;
    }

    v35 = v30;
    if (v3[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10002A144();
      }
    }

    else
    {
      sub_100029668(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_10001A408(v47, v13);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_51;
      }

      v31 = v36;
    }

    v7 &= v7 - 1;
    v3 = v48;
    if (v35)
    {
      *(*(v48 + 56) + 8 * v31) = v17;
    }

    else
    {
      *(v48 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (v3[6] + 16 * v31);
      *v38 = v47;
      v38[1] = v13;
      *(v3[7] + 8 * v31) = v17;
      v39 = v3[2];
      v22 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v22)
      {
        goto LABEL_49;
      }

      v3[2] = v40;
    }

    v9 = v10;
    v4 = v45;
    v2 = v46;
    v8 = v44;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      *(v43 + 96) = v3;
      v41 = sub_100004390(v43);
      swift_setDeallocating();
      sub_100003BC8(&qword_100041DF8, &qword_100031508);
      swift_arrayDestroy();
      return v41;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t RestrictionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100028FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003BC8(&qword_100041E78, &qword_100031528);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_10000427C(v21, v31);
      }

      else
      {
        sub_100005DA4(v21, v31);
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_10000626C();
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_10000427C(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000292A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003BC8(&qword_100041E88, &qword_100031538);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100029668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003BC8(&qword_100041DE8, &unk_100032360);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100029910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003BC8(&qword_100041DF0, &qword_100031500);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000427C(v24, v34);
      }

      else
      {
        sub_100005DA4(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000427C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100029BC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003BC8(&qword_100042B18, &qword_100032388);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_100029E68()
{
  v1 = v0;
  sub_100003BC8(&qword_100041E78, &qword_100031528);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100005DA4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000427C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100029FE8()
{
  v1 = v0;
  sub_100003BC8(&qword_100041E88, &qword_100031538);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002A144()
{
  v1 = v0;
  sub_100003BC8(&qword_100041DE8, &unk_100032360);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002A2B4()
{
  v1 = v0;
  sub_100003BC8(&qword_100041DF0, &qword_100031500);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100005DA4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000427C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10002A458()
{
  v1 = v0;
  sub_100003BC8(&qword_100042B18, &qword_100032388);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_10002A5C0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v23 = v4;
    v24 = v1;
    v22[1] = v22;
    __chkstk_darwin(a1);
    v6 = v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v25 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v4 = v9 & *(v2 + 64);
    v10 = (v8 + 63) >> 6;
    while (v4)
    {
      v11 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_12:
      v14 = v11 | (v7 << 6);
      v15 = *(*(v2 + 56) + 8 * v14);
      if ((*(v15 + 112) & 1) == 0)
      {
        if (*(v15 + 114) != 1 || (, v16 = sub_10002D178(), , (v16 & 1) == 0))
        {
          *&v6[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
          if (__OFADD__(v25++, 1))
          {
            __break(1u);
            return sub_10002AD98(v6, v23, v25, v2);
          }
        }
      }
    }

    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v7 >= v10)
      {
        return sub_10002AD98(v6, v23, v25, v2);
      }

      v13 = *(v2 + 64 + 8 * v7);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v4 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  sub_10002AA34(v19, v4, v2);
  v21 = v20;

  return v21;
}

Swift::Int sub_10002A820(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    __chkstk_darwin(a1);
    v5 = &v21 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_12:
      v16 = *(*(v1 + 56) + 8 * v13);
      if ((*(v16 + 112) & 1) == 0 && *(v16 + 114) == 1)
      {
        *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10002AD98(v5, v3, v6, v1);
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_10002AD98(v5, v3, v6, v1);
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_10002AC5C(v19, v3, v1);

  return v20;
}

void sub_10002AA34(char *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v18 = a1;
    v19 = 0;
    v6 = 0;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = v11 | (v6 << 6);
      v15 = *(*(a3 + 56) + 8 * v14);
      if ((*(v15 + 112) & 1) == 0)
      {
        if (*(v15 + 114) != 1 || (, v16 = sub_10002D178(), , (v16 & 1) == 0))
        {
          *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          if (__OFADD__(v19++, 1))
          {
            __break(1u);
LABEL_20:
            sub_10002AD98(v18, a2, v19, a3);

            return;
          }
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_20;
      }

      v13 = *(a3 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t *sub_10002ABC0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10002B440(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

char *sub_10002AC5C(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_14:
      v16 = *(*(a3 + 56) + 8 * v13);
      if ((*(v16 + 112) & 1) == 0 && *(v16 + 114) == 1)
      {
        *&result[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_19:
          v18 = sub_10002AD98(result, a2, v6, a3);

          return v18;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_19;
      }

      v15 = *(a3 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10002AD98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003BC8(&qword_100041E88, &qword_100031538);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + v16);
    v19 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();

    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + v23) = v18;
    *(*(v9 + 56) + 8 * v23) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10002B110()
{
  v0 = sub_100003BC8(&unk_100042310, &unk_100032370);
  __chkstk_darwin(v0 - 8);
  v2 = v19 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BD3C(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100005E54(v2, &unk_100042310, &unk_100032370);
    __break(1u);
  }

  URL.appendingPathComponent(_:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v8 = Data.init(contentsOf:options:)();
  v10 = v9;
  v7(v6, v3);
  v11 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v20[0] = 0;
  v13 = [v11 propertyListWithData:isa options:0 format:0 error:v20];

  if (v13)
  {
    v14 = v20[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100003BC8(&qword_100042B10, &qword_100032380);
    if (swift_dynamicCast())
    {
      v15 = v19[1];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = v20[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = 0;
  }

  type metadata accessor for RestrictionsManager();
  v17 = swift_allocObject();
  sub_100025478(v15);
  sub_100023358(v8, v10);
  return v17;
}

unint64_t *sub_10002B440(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v19 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v23 = *(*(a3 + 48) + v15);

    v16 = sub_100027B74(&v23, v22, a4);

    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_10002AD98(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_10002AD98(v19, a2, v20, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10002B5A4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_10002ABC0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_10002B440((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10002B764(int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - v8;
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  if ((sub_10000B098() ^ a1))
  {
    sub_10000B238(a1 & 1);
    if ((sub_10000B098() ^ a1))
    {
      static Logger.daemonLogger.getter();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        v11 = v6;
        goto LABEL_10;
      }

      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to set MC value: lockdownModeEnabled=%{BOOL}d", v14, 8u);
      v11 = v6;
    }

    else
    {
      static Logger.daemonLogger.getter();
      v12 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v17))
      {
        v11 = v9;
        goto LABEL_10;
      }

      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v12, v17, "Successfully set MC value: lockdownModeEnabled=%{BOOL}d", v18, 8u);
      v11 = v9;
    }

    goto LABEL_9;
  }

  static Logger.daemonLogger.getter();
  v12 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v15, "Unchanged MC value: lockdownModeEnabled=%{BOOL}d", v16, 8u);
LABEL_9:
  }

LABEL_10:

  return (*(v3 + 8))(v11, v2);
}

unint64_t _s13lockdownmoded19RestrictionsManagerC14RestrictionKeyO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10003D178, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002BA80()
{
  result = qword_1000429B8;
  if (!qword_1000429B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000429B8);
  }

  return result;
}

unint64_t sub_10002BAD8()
{
  result = qword_1000429C0;
  if (!qword_1000429C0)
  {
    sub_100003C74(&qword_1000429C8, &qword_1000322C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000429C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionsManager.RestrictionKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RestrictionsManager.RestrictionKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002BCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&qword_100042500, &qword_100031EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BD3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = __chkstk_darwin(v2);
  v88 = (&v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v7 = &v85 - v6;
  v8 = __chkstk_darwin(v5);
  v89 = &v85 - v9;
  __chkstk_darwin(v8);
  v86 = &v85 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v87 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v85 - v16;
  __chkstk_darwin(v15);
  v19 = &v85 - v18;
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = [v21 URLsForDirectory:5 inDomains:1];

  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v23 + 16))
  {
    v90 = v11;
    v91 = a1;
    v24 = *(v12 + 16);
    v24(v19, v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

    v92 = v19;
    URL.appendingPathComponent(_:)();
    v95 = 0;
    v25 = [v20 defaultManager];
    URL.path(percentEncoded:)(0);
    v26 = String._bridgeToObjectiveC()();

    v27 = [v25 fileExistsAtPath:v26 isDirectory:&v95];

    if (v27)
    {
      v28 = v17;
      v29 = v92;
      if (v95)
      {
LABEL_8:
        v42 = v90;
        (*(v12 + 8))(v29, v90);
        v43 = v91;
        v44 = v28;
LABEL_14:
        (*(v12 + 32))(v43, v44, v42);
        return (*(v12 + 56))(v43, 0, 1, v42);
      }

      v30 = v86;
      static Logger.daemonLogger.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "LockdownMode exists but as a file instead of a directory. Replacing with a directory…", v33, 2u);
        v29 = v92;
      }

      v34 = v94;
      v93 = *(v93 + 8);
      (v93)(v30, v94);
      v35 = [v20 defaultManager];
      v36 = v28;
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      v96 = 0;
      v40 = [v35 removeItemAtURL:v38 error:&v96];

      if (v40)
      {
        v41 = v96;
        goto LABEL_8;
      }

      v76 = v96;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.daemonLogger.getter();
      swift_errorRetain();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      v79 = os_log_type_enabled(v77, v78);
      v45 = v90;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138739971;
        swift_errorRetain();
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v80 + 4) = v82;
        *v81 = v82;
        _os_log_impl(&_mh_execute_header, v77, v78, "Could not remove LockdownMode file: %{sensitive}@", v80, 0xCu);
        sub_100005E54(v81, &qword_100042158, qword_100031C60);
        v29 = v92;

        v36 = v28;
      }

      (v93)(v88, v34);
      v83 = *(v12 + 8);
      v83(v36, v45);
      v83(v29, v45);
      v49 = *(v12 + 56);
      v50 = v91;
    }

    else
    {
      v88 = v24;
      v51 = [v20 defaultManager];
      URL._bridgeToObjectiveC()(v52);
      v54 = v53;
      sub_100003BC8(&qword_100042B20, &unk_1000323B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100032390;
      *(inited + 32) = NSFileProtectionKey;
      type metadata accessor for FileProtectionType(0);
      *(inited + 64) = v56;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = NSFileProtectionKey;
      v58 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      sub_10000403C(inited);
      swift_setDeallocating();
      sub_100005E54(inited + 32, &qword_100041E08, &qword_100031518);
      type metadata accessor for FileAttributeKey(0);
      sub_10002C79C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v96 = 0;
      v60 = [v51 createDirectoryAtURL:v54 withIntermediateDirectories:1 attributes:isa error:&v96];

      if (v60)
      {
        v61 = *(v12 + 8);
        v62 = v96;
        v42 = v90;
        v61(v92, v90);
        v43 = v91;
        v44 = v17;
        goto LABEL_14;
      }

      v64 = v96;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v65 = v89;
      static Logger.daemonLogger.getter();
      v66 = v87;
      v45 = v90;
      v88(v87, v17, v90);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v96 = v70;
        *v69 = 136642819;
        v71 = URL.path.getter();
        v73 = v72;
        v88 = v17;
        v74 = *(v12 + 8);
        v74(v66, v45);
        v75 = sub_100019C8C(v71, v73, &v96);

        *(v69 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v67, v68, "Could not create directory at %{sensitive}s", v69, 0xCu);
        sub_100005E08(v70);

        (*(v93 + 8))(v89, v94);
        v74(v88, v45);
        v74(v92, v45);
      }

      else
      {

        v84 = *(v12 + 8);
        v84(v66, v45);
        (*(v93 + 8))(v65, v94);
        v84(v17, v45);
        v84(v92, v45);
      }

      v50 = v91;
      v49 = *(v12 + 56);
    }
  }

  else
  {
    v45 = v11;

    static Logger.daemonLogger.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Could not get Library path for user", v48, 2u);
    }

    (*(v93 + 8))(v7, v94);
    v49 = *(v12 + 56);
    v50 = a1;
  }

  return v49(v50, 1, 1, v45);
}

void *sub_10002C760()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  if (result)
  {
    result = dlsym(result, "BYSetupAssistantNeedsToRun");
  }

  off_1000441F0 = result;
  return result;
}

unint64_t sub_10002C79C()
{
  result = qword_100041F60;
  if (!qword_100041F60)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041F60);
  }

  return result;
}

void sub_10002C7F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100019C8C(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v8, v9, "reboot called (reason: %s)", v10, 0xCu);
    sub_100005E08(v11);
  }

  (*(v5 + 8))(v7, v4);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v17 = 0x6E776F646B636F4CLL;
  v18 = 0xEF203A65646F4D20;
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = objc_allocWithZone(FBSShutdownOptions);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithReason:v14];

  [v15 setSource:1];
  [v15 setRebootType:1];
  v16 = [objc_opt_self() sharedService];
  [v16 shutdownWithOptions:v15];
}

uint64_t sub_10002CAB8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = CFPreferencesGetAppBooleanValue(v3, v4, 0);

  if (AppBooleanValue)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_10002CBA4()
{
  v0 = String._bridgeToObjectiveC()();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  CFPreferencesSetAppValue(v0, isa, v2);

  v3 = String._bridgeToObjectiveC()();
  v4 = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  CFPreferencesSetAppValue(v3, v4, v5);
}

void sub_10002CCE4(char a1, int a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = a2;
    v13 = v11;
    v29 = v11;
    *v10 = 67240450;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2082;
    v28[1] = v12;
    v14 = v12;
    v15 = 0xE500000000000000;
    v16 = 0xE800000000000000;
    v17 = 0x73676E6974746573;
    v18 = 0x6464754274736F70;
    v19 = 0xE900000000000079;
    if (v14 != 3)
    {
      v18 = 0xD000000000000016;
      v19 = 0x8000000100034C80;
    }

    if (v14 != 2)
    {
      v17 = v18;
      v16 = v19;
    }

    v20 = 0x7964647562;
    if (v14)
    {
      v20 = 0x6E496E676973;
      v15 = 0xE600000000000000;
    }

    if (v14 <= 1)
    {
      v21 = v20;
    }

    else
    {
      v21 = v17;
    }

    if (v14 <= 1)
    {
      v22 = v15;
    }

    else
    {
      v22 = v16;
    }

    v23 = sub_100019C8C(v21, v22, &v29);

    *(v10 + 10) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sending status event (enabled: %{BOOL,public}d, source: %{public}s)", v10, 0x12u);
    sub_100005E08(v13);

    (*(v5 + 8))(v7, v4);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v24 = String._bridgeToObjectiveC()();
  sub_100003BC8(&qword_100042C90, "te");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100031EA0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0x656372756F73;
  *(inited + 64) = 0xE600000000000000;
  v26 = String._bridgeToObjectiveC()();

  *(inited + 72) = v26;
  sub_1000044C0(inited);
  swift_setDeallocating();
  sub_100003BC8(&qword_100042C98, &unk_100032400);
  swift_arrayDestroy();
  sub_10002D108();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

unint64_t sub_10002D108()
{
  result = qword_100042CA0;
  if (!qword_100042CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100042CA0);
  }

  return result;
}

uint64_t sub_10002D178()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  sub_10000B004(v1 + 48, v25);
  if (v26)
  {
    if (swift_dynamicCast())
    {
      sub_10000B004(v1 + 48, v25);
      if (v26)
      {
        if (swift_dynamicCast())
        {
          v6 = v24;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        sub_10002D53C(v25);
        v6 = 2;
      }

      v13 = *(v1 + 16);

      v13(v25, v14);

      v15 = swift_dynamicCast();
      v16 = (v6 != 2) | v15;
      if (v6 != 2 && (v15 & 1) != 0)
      {
        v16 = v24 ^ v6;
      }

      v17 = v16 & 1;
LABEL_31:
      *(v1 + 113) = v17;
      return *(v1 + 113);
    }
  }

  else
  {
    sub_10002D53C(v25);
  }

  sub_10000B004(v1 + 48, v25);
  if (v26)
  {
    if (swift_dynamicCast())
    {
      sub_10000B004(v1 + 48, v25);
      if (v26)
      {
        v7 = swift_dynamicCast();
        if (v7)
        {
          v8 = v24;
        }

        else
        {
          v8 = 0;
        }

        v9 = v7 ^ 1;
      }

      else
      {
        sub_10002D53C(v25);
        v8 = 0;
        v9 = 1;
      }

      v18 = *(v1 + 16);

      v18(v25, v19);

      v20 = swift_dynamicCast();
      v21 = v24;
      if (!v20)
      {
        v21 = 0;
      }

      v22 = v8 == v21;
      v17 = v20 ^ 1;
      if (!v22)
      {
        v17 = 1;
      }

      if (v9)
      {
        v17 = v20;
      }

      goto LABEL_31;
    }
  }

  else
  {
    sub_10002D53C(v25);
  }

  static Logger.daemonLogger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Could not get currentChanged. Unhandled type", v12, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return *(v1 + 113);
}

uint64_t sub_10002D4C0()
{

  sub_10002D53C(v0 + 48);
  sub_10002D53C(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_10002D53C(uint64_t a1)
{
  v2 = sub_100003BC8(&qword_100042500, &qword_100031EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10002D5A4()
{
  v1 = type metadata accessor for Logger();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService] = 0;
  v22 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_dispatchQueue;
  sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_10002E8AC();
  sub_100003BC8(&qword_100041D10, &qword_1000314B0);
  sub_100003C10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v8 = v24;
  *&v0[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = &v0[OBJC_IVAR____TtC13lockdownmoded10IDSManager_delegate];
  v10 = type metadata accessor for IDSManager();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v27.receiver = v0;
  v27.super_class = v10;
  v11 = objc_msgSendSuper2(&v27, "init");
  static Logger.daemonLogger.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Initializing IDSManager…", v14, 2u);
  }

  (*(v25 + 8))(v8, v26);
  v15 = objc_allocWithZone(IDSService);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithService:v16];

  v18 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService;
  v19 = *&v11[OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService];
  *&v11[OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService] = v17;

  v20 = *&v11[v18];
  if (v20)
  {
    [v20 addDelegate:v11 queue:*&v11[OBJC_IVAR____TtC13lockdownmoded10IDSManager_dispatchQueue]];
  }

  return v11;
}

void *sub_10002D9C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService);
  if (v1)
  {
    v2 = [v1 devices];
    if (v2)
    {
      v3 = v2;
      sub_10000A220(0, &qword_100043018, IDSDevice_ptr);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ([v7 isDefaultPairedDevice] && (objc_msgSend(v8, "isActive") & 1) != 0)
          {

            return v8;
          }

          ++v6;
          if (v9 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

void sub_10002DB30(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService);
  if (v3)
  {
    v4 = v3;
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    sub_100003BC8(&qword_100042FF8, &qword_1000324B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100032390;
    v7 = IDSCopyIDForDevice();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v19[1] = v10;
    sub_100003BC8(&qword_100043000, &qword_1000324C0);
    sub_10002E830();
    AnyHashable.init<A>(_:)();
    sub_10002E200(inited);
    swift_setDeallocating();
    sub_10001ECCC(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    sub_100003F00(&_swiftEmptyArrayStorage);
    v12 = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = 0;
    v19[0] = 0;
    v13 = [v4 sendMessage:v5.super.isa toDestinations:isa priority:300 options:v12 identifier:v19 error:&v18];

    if (v13)
    {
      v14 = v18;
    }

    else
    {
      v15 = v19[0];
      v16 = v18;
      v17 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

id sub_10002DD68(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IDSManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10002DF10(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100003BC8(&qword_100043020, &qword_1000324D8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000A220(0, &qword_100042378, UNNotificationCategory_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000A220(0, &qword_100042378, UNNotificationCategory_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

Swift::Int sub_10002E200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100043010, &unk_1000324C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_10002245C(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_10002245C(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_10001ECCC(v18);
        if (v11)
        {
          sub_10001ECCC(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_10002E360(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v36 = a1;
  v37 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - v12;
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  static Logger.daemonLogger.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Handling incoming message…", v18, 2u);
  }

  v19 = *(v7 + 8);
  v19(v15, v6);
  v20 = *(v4 + OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService);
  if (!v20 || ((v21 = v20, !a3) ? (v22 = 0) : (v22 = String._bridgeToObjectiveC()()), v23 = [v20 deviceForFromID:v22], v20, v22, !v23))
  {
    static Logger.daemonLogger.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v19;
      v29 = swift_slowAlloc();
      result = swift_slowAlloc();
      v40[0] = result;
      *v29 = 136446210;
      if (a3)
      {
        v30 = result;
        *(v29 + 4) = sub_100019C8C(v37, a3, v40);
        _os_log_impl(&_mh_execute_header, v26, v27, "Incoming message is from an unknown device: %{public}s", v29, 0xCu);
        sub_100005E08(v30);

        return v28(v13, v6);
      }

      __break(1u);
      goto LABEL_20;
    }

    v31 = v13;
    return (v19)(v31, v6);
  }

  v24 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_delegate;
  swift_beginAccess();
  sub_10002E758(v4 + v24, &v38);
  if (!v39)
  {
    sub_10002E7C8(&v38);
    static Logger.daemonLogger.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Incoming message is not handled because delegate is not set", v34, 2u);
    }

    v31 = v10;
    return (v19)(v31, v6);
  }

  sub_10000A19C(&v38, v40);
  result = sub_100005EB4(v40, v40[3]);
  if (v36)
  {
    sub_100018D48(v36);
    return sub_100005E08(v40);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10002E758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&qword_100042FF0, &qword_1000324B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E7C8(uint64_t a1)
{
  v2 = sub_100003BC8(&qword_100042FF0, &qword_1000324B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002E830()
{
  result = qword_100043008;
  if (!qword_100043008)
  {
    sub_100003C74(&qword_100043000, &qword_1000324C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043008);
  }

  return result;
}

unint64_t sub_10002E8AC()
{
  result = qword_100041D08;
  if (!qword_100041D08)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D08);
  }

  return result;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    qword_1000441C0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, qword_1000441C0, 0, qword_1000441C8, qword_1000441D0, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = qword_1000441C0 - a3;
    if (qword_1000441C0 < a3)
    {
      v6 = 0;
    }

    qword_1000441C0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, qword_1000441C0, 0, qword_1000441C8, qword_1000441D0, v9, a5, v7);
  }

  return result;
}

uint64_t sub_10002EA68(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v18, 0x2000uLL);
  v17 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v18, &v17);
  if (v3)
  {
    if (v17)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  return v13;
}

uint64_t ACMKernelControl(int a1)
{
  if (byte_100043029 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(sub_10002EE68);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= byte_100043029 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    v9 = 2048;
    v10 = v2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  return v2;
}

uint64_t sub_10002EE68(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_100043029 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002EE2C();
    sub_10002EE14();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = sub_10002F02C();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = sub_10002F1E0(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= byte_100043029 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002EE5C();
    sub_10002EE38();
    sub_10002EE04();
    sub_10002EE14();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t sub_10002F02C()
{
  if (byte_100043029 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002EDD4();
    sub_10002EE14();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (byte_1000441D8)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_1000441DC);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    byte_1000441D8 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= byte_100043029 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002EE5C();
    sub_10002EE38();
    sub_10002EE04();
    sub_10002EE14();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

uint64_t sub_10002F1E0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v11 = a3;
  v12 = a2;
  if (byte_100043029 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002EDEC();
    sub_10002EDC8();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
  }

  inputStructCnt = 0;
  v18 = LibCall_BuildCommand(v12, 0, v11, a4, a5, &inputStructCnt);
  if (v18)
  {
    v19 = v18;
    if (!a6 && a7)
    {
      v21 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v20 = *a7;
      }

      else
      {
        v20 = 0;
      }

      v41 = v20;
      v21 = IOConnectCallStructMethod(dword_1000441DC, 0, v18, inputStructCnt, a6, &v41);
      if (v21)
      {
        if (byte_100043029 <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_10002EDEC();
          sub_10002EE44();
          v46 = v22;
          v47 = v21;
          v48 = v22;
          v49 = v21;
          sub_10002EDC8();
          _os_log_impl(v23, v24, v25, v26, v27, 0x2Eu);
        }
      }

      else
      {
        if (byte_100043029 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_10002EDEC();
          sub_10002EE44();
          sub_10002EDC8();
          _os_log_impl(v28, v29, v30, v31, v32, 0x22u);
        }

        v21 = 0;
        if (a7)
        {
          *a7 = v41;
        }
      }
    }

    v33 = inputStructCnt;
    acm_mem_free_info("<data>", v19, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v19, v33);
    if (v21)
    {
      v34 = 70;
    }

    else
    {
      v34 = 10;
    }
  }

  else
  {
    v34 = 70;
    v21 = 4294967291;
  }

  if (v34 >= byte_100043029 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v43 = 136315650;
    v44 = "ACMLib";
    sub_10002EE20();
    v45 = "performCommand";
    sub_10002EDB8();
    sub_10002EDC8();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
  }

  return v21;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v20 = &v20;
    __chkstk_darwin(a1);
    v15 = (&v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      sub_10002F6BC();
    }

    v17 = v13(a2, 26, 0, &v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  return v17;
}

void sub_10002F6FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to post CFU: %@", &v2, 0xCu);
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    qword_1000441C8 += size;
  }

  return result;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_10002EA68(a1, a2);
    free(v3);
    v4 = qword_1000441C8 - v2;
    if (qword_1000441C8 < v2)
    {
      v4 = 0;
    }

    qword_1000441C8 = v4;
  }
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}