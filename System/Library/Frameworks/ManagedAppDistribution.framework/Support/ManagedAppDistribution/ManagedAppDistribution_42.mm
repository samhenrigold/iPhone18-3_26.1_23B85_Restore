void sub_100551CCC(uint64_t a1)
{
  v3 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v3 - 8);
  v67 = &v66 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = &v66 - v12;
  __chkstk_darwin(v11);
  v15 = &v66 - v14;
  v16 = *(a1 + 8);
  v17 = [v16 bundleID];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = *a1;
  if (*a1)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v22 = *(a1 + 40);
    if (v21)
    {
      if (v22 == 4 && (*(a1 + 16) & 0xFFFFFFFFFFFFFFFELL) == 2 && *(a1 + 24) == 0)
      {
        v23 = v1;
        v24 = v20;
        static Logger.install.getter();

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v72 = v28;
          *v27 = 136446210;
          v29 = v68;
          *(v27 + 4) = sub_1002346CC(v68, v19, v72);
          _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] Prioritize restore", v27, 0xCu);
          sub_10000710C(v28);

          (*(v70 + 8))(v15, v69);
          v30 = v23;
        }

        else
        {

          (*(v70 + 8))(v15, v69);
          v30 = v23;
          v29 = v68;
        }

        v55 = type metadata accessor for TaskPriority();
        v56 = v67;
        (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
        v57 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
        v58 = swift_allocObject();
        v58[2] = v30;
        v58[3] = v57;
        v58[4] = v30;
        v58[5] = v29;
        v58[6] = v19;
        swift_retain_n();
        sub_1004A673C(0, 0, v56, &unk_1006B2B70, v58);
      }

      else
      {
        v35 = v20;
        static Logger.install.getter();

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v72 = v39;
          *v38 = 136446210;
          v40 = sub_1002346CC(v68, v19, v72);

          *(v38 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v36, v37, "[%{public}s] Not prioritizing restore", v38, 0xCu);
          sub_10000710C(v39);
        }

        else
        {
        }

        (*(v70 + 8))(v13, v69);
      }
    }

    else if (v22 == 4 && *(a1 + 16) == 3 && *(a1 + 24) == 0)
    {
      v48 = v1;
      v49 = v20;
      v50 = [v16 bundleID];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = objc_allocWithZone(LSApplicationRecord);
      v59 = type metadata accessor for TaskPriority();
      v60 = v67;
      (*(*(v59 - 8) + 56))(v67, 1, 1, v59);
      v61 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
      v62 = swift_allocObject();
      v62[2] = v48;
      v62[3] = v61;
      v62[4] = v68;
      v62[5] = v19;
      v62[6] = v48;
      swift_retain_n();
      sub_1004A673C(0, 0, v60, &unk_1006B2B60, v62);
    }

    else
    {
    }
  }

  else
  {
    *&v72[9] = *(a1 + 25);
    *v72 = *(a1 + 16);
    if (v72[24] == 4 && *v72 == 3 && *&v72[8] == 0)
    {
      v31 = type metadata accessor for TaskPriority();
      v32 = v67;
      (*(*(v31 - 8) + 56))(v67, 1, 1, v31);
      v33 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
      v34 = swift_allocObject();
      v34[2] = v1;
      v34[3] = v33;
      v34[4] = v68;
      v34[5] = v19;
      v34[6] = v1;
      swift_retain_n();
      sub_1004A673C(0, 0, v32, &unk_1006B2B50, v34);
    }

    else
    {
      static Logger.install.getter();

      v41 = v16;
      sub_100567420(v72, v71);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      sub_10056747C(v72);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v44 = 136446466;
        v45 = sub_1002346CC(v68, v19, v71);

        *(v44 + 4) = v45;
        *(v44 + 12) = 2080;
        if (v72[24] <= 1u)
        {
          if (v72[24])
          {
            v47 = 0x64656C696166;
          }

          else
          {
            v47 = 0x6574656C706D6F63;
          }

          if (v72[24])
          {
            v46 = 0xE600000000000000;
          }

          else
          {
            v46 = 0xE900000000000064;
          }
        }

        else if (v72[24] == 2)
        {
          v46 = 0xE800000000000000;
          v47 = 0x73736572676F7270;
        }

        else if (v72[24] == 3)
        {
          v46 = 0xEB00000000726564;
          v47 = 0x6C6F686563616C70;
        }

        else if (*&v72[8] | *&v72[16] | *v72)
        {
          if (*v72 == 1 && *&v72[8] == 0)
          {
            v46 = 0xE600000000000000;
            v47 = 0x646573756170;
          }

          else
          {
            v63 = *&v72[8] == 0;
            v64 = *v72 == 2;
            if (v64 && v63)
            {
              v47 = 0x64656D75736572;
            }

            else
            {
              v47 = 0x697469726F697270;
            }

            if (v64 && v63)
            {
              v46 = 0xE700000000000000;
            }

            else
            {
              v46 = 0xEB0000000064657ALL;
            }
          }
        }

        else
        {
          v46 = 0xE800000000000000;
          v47 = 0x64656C65636E6163;
        }

        v65 = sub_1002346CC(v47, v46, v71);

        *(v44 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v42, v43, "[%{public}s] handleRestoreOrPromotionEvent event kind: %s", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v70 + 8))(v9, v69);
    }
  }
}

uint64_t sub_100552800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v8 = type metadata accessor for Logger();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_1005528D4, a6, 0);
}

uint64_t sub_1005528D4(uint64_t a1)
{
  v16 = v1;
  static Logger.install.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[28];
  v6 = v1[25];
  v7 = v1[26];
  if (v4)
  {
    v9 = v1[22];
    v8 = v1[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1002346CC(v9, v8, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "[[%{public}s]] Cold Promotion", v10, 0xCu);
    sub_10000710C(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[29] = v12;
  v13 = swift_task_alloc();
  v1[30] = v13;
  *v13 = v1;
  v13[1] = sub_100552A94;

  return sub_100324268((v1 + 14));
}

uint64_t sub_100552A94()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_100552BC0;
  }

  else
  {
    v4 = sub_1005683B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100552BC0(uint64_t a1)
{
  v18 = v1;
  static Logger.install.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[29];
  v6 = v1[27];
  v7 = v1[25];
  if (v4)
  {
    v16 = v1[29];
    v8 = v1[22];
    v9 = v1[23];
    v15 = v1[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446722;
    *(v10 + 4) = sub_1002346CC(v8, v9, &v17);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1002346CC(v8, v9, &v17);
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Error fetching bag to prioritize bundleID: %s error: %@", v10, 0x20u);
    sub_1000032A8(v11, &qword_10077F920, &qword_10069E6A0);

    swift_arrayDestroy();

    v16(v15, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v13 = v1[1];

  return v13();
}

uint64_t sub_100552E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = type metadata accessor for Logger();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[28] = v8;
  *v8 = v6;
  v8[1] = sub_100552F24;

  return sub_100324268((v6 + 14));
}

uint64_t sub_100552F24()
{
  v2 = *(*v1 + 176);
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1005531E8;
  }

  else
  {
    v3 = sub_10055304C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10055304C()
{
  v1 = (*(v0 + 176) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies);
  result = swift_beginAccess();
  v3 = v1[3];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(*sub_100006D8C(v1, v3) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
  result = sub_100005934(v1, v0 + 16, &qword_100784E10, &qword_1006AD788);
  v5 = *(v0 + 40);
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  *(v0 + 256) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 272) = 1;
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);
  v12 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = sub_100006D8C((v0 + 16), v5);

  sub_10046413C(v0 + 112, 1, v7, v6, 0, 0, 2, (v0 + 240), v10, v4, v5, v14, v13, v12, v8, v9);

  sub_10000710C((v0 + 112));
  sub_10000710C((v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1005531E8(uint64_t a1)
{
  v19 = v1;
  static Logger.install.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[26];
  v5 = v1[27];
  v7 = v1[25];
  if (v4)
  {
    v17 = v1[27];
    v8 = v1[23];
    v9 = v1[24];
    v16 = v1[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_1002346CC(v8, v9, &v18);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Fetching bag to prioritize coordinator resulted in error: %@", v10, 0x16u);
    sub_1000032A8(v11, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v12);

    (*(v6 + 8))(v17, v16);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1005533F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v8 = type metadata accessor for Logger();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_1005534CC, a6, 0);
}

uint64_t sub_1005534CC(uint64_t a1)
{
  v16 = v1;
  static Logger.install.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[28];
  v6 = v1[25];
  v7 = v1[26];
  if (v4)
  {
    v9 = v1[22];
    v8 = v1[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1002346CC(v9, v8, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Cold Promotion of a placeholder", v10, 0xCu);
    sub_10000710C(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[29] = v12;
  v13 = swift_task_alloc();
  v1[30] = v13;
  *v13 = v1;
  v13[1] = sub_10055368C;

  return sub_100324268((v1 + 14));
}

uint64_t sub_10055368C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_100553980;
  }

  else
  {
    v4 = sub_1005537B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005537B8()
{
  v1 = (*(v0 + 192) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies);
  result = swift_beginAccess();
  v3 = v1[3];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(*sub_100006D8C(v1, v3) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
  sub_1001F0C48(&qword_100784460, &unk_10069FAD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10069E680;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  result = sub_100005934(v1, v0 + 16, &qword_100784E10, &qword_1006AD788);
  v8 = *(v0 + 40);
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 1;
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = sub_100006D8C((v0 + 16), v8);

  sub_100464C24(v7, v0 + 112, (v0 + 256), v13, v6, v8, v9, v10, v16, v15, v11, v12);

  sub_10000710C((v0 + 112));
  sub_10000710C((v0 + 16));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100553980(uint64_t a1)
{
  v20 = v1;
  static Logger.install.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[29];
  v6 = v1[27];
  v7 = v1[25];
  if (v4)
  {
    v18 = v1[29];
    v8 = v1[22];
    v9 = v1[23];
    v17 = v1[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v7;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_1002346CC(v8, v9, &v19);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Fetching bag to prioritize a placeholder resulted in error: %@", v10, 0x16u);
    sub_1000032A8(v11, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v12);

    v18(v17, v16);
  }

  else
  {

    v5(v6, v7);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_100553BB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  return sub_100553C40();
}

uint64_t sub_100553C40()
{
  v1[121] = v0;
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[126] = v2;
  v1[127] = *(v2 - 8);
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[132] = v3;
  v1[133] = *(v3 - 8);
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_1007839F0, &unk_1006B2A50);
  v1[140] = v4;
  v1[141] = *(v4 - 8);
  v1[142] = swift_task_alloc();

  return _swift_task_switch(sub_100553E80, v0, 0);
}

uint64_t sub_100553E80()
{
  *(v0 + 248) = 0u;
  v1 = *(v0 + 968);
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0;
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;
  *(v0 + 1144) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;
  v3 = (v1 + v2);
  v4 = swift_beginAccess();
  v7 = v3[3];
  if (v7)
  {
    v8 = *(*sub_100006D8C(v3, v7) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installObserver);
    sub_1001F0C48(&qword_1007839F8, &qword_1006AA088);
    AsyncStream.makeAsyncIterator()();

    *(v0 + 1152) = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
    *(v0 + 1160) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_coordinatorMap;
    *(v0 + 1168) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_installers;
    *(v0 + 1176) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_bagService;
    swift_beginAccess();
    v9 = *(v0 + 1152);
    v10 = *(v0 + 968);
    v11 = swift_task_alloc();
    *(v0 + 1184) = v11;
    *v11 = v0;
    v11[1] = sub_10055404C;
    v6 = *(v0 + 1120);
    v4 = v0 + 112;
    v7 = v10;
    v5 = v9;
  }

  else
  {
    __break(1u);
  }

  return AsyncStream.Iterator.next(isolation:)(v4, v7, v5, v6);
}

uint64_t sub_10055404C()
{
  v1 = *(*v0 + 968);

  return _swift_task_switch(sub_10055415C, v1, 0);
}

uint64_t sub_10055415C(uint64_t a1)
{
  v2 = *(v1 + 112);
  *(v1 + 1192) = v2;
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  *(v1 + 1200) = v3;
  *(v1 + 1208) = v4;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  *(v1 + 1216) = v5;
  *(v1 + 1224) = v6;
  v7 = *(v1 + 152);
  *(v1 + 153) = v7;
  if (v3)
  {
    *(v1 + 160) = v2;
    *(v1 + 168) = v3;
    *(v1 + 176) = v4;
    *(v1 + 184) = v5;
    *(v1 + 192) = v6;
    *(v1 + 200) = v7;
    *(&v98 + 1) = v5;
    if (!v2)
    {
      static Logger.install.getter();
      v28 = v3;
      sub_1003D8008(v4, v5, v6, v7);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      v93 = v28;

      sub_1003D802C(v4, v5, v6, v7);
      if (os_log_type_enabled(v29, v30))
      {
        v99 = v6;
        v31 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *(v1 + 952) = v90;
        *v31 = 136315138;
        v96 = v4;
        if (v7 <= 1)
        {
          if (v7)
          {
            v32 = 0x64656C696166;
          }

          else
          {
            v32 = 0x6574656C706D6F63;
          }

          if (v7)
          {
            v33 = 0xE600000000000000;
          }

          else
          {
            v33 = 0xE900000000000064;
          }
        }

        else if (v7 == 2)
        {
          v33 = 0xE800000000000000;
          v32 = 0x73736572676F7270;
        }

        else if (v7 == 3)
        {
          v32 = 0x6C6F686563616C70;
          v33 = 0xEB00000000726564;
        }

        else
        {
          v41 = v99 | v5;
          if (v99 | v5 | v4)
          {
            if (v4 != 1 || v41)
            {
              v78 = v41 == 0;
              v79 = v4 == 2;
              if (v79 && v78)
              {
                v32 = 0x64656D75736572;
              }

              else
              {
                v32 = 0x697469726F697270;
              }

              if (v79 && v78)
              {
                v33 = 0xE700000000000000;
              }

              else
              {
                v33 = 0xEB0000000064657ALL;
              }
            }

            else
            {
              v32 = 0x646573756170;
              v33 = 0xE600000000000000;
            }
          }

          else
          {
            v32 = 0x64656C65636E6163;
            v33 = 0xE800000000000000;
          }
        }

        v88 = *(v1 + 1080);
        v80 = *(v1 + 1064);
        v81 = *(v1 + 1056);
        v82 = sub_1002346CC(v32, v33, (v1 + 952));

        *(v31 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v29, v30, "Received event: %s", v31, 0xCu);
        sub_10000710C(v90);

        (*(v80 + 8))(v88, v81);
        v4 = v96;
        v6 = v99;
      }

      else
      {
        v38 = *(v1 + 1080);
        v39 = *(v1 + 1064);
        v40 = *(v1 + 1056);

        (*(v39 + 8))(v38, v40);
      }

      sub_100551CCC(v1 + 160);

      sub_1003D802C(v4, *(&v98 + 1), v6, v7);
      goto LABEL_79;
    }

    v8 = v2;
    static Logger.install.getter();
    v9 = v8;
    v10 = v3;
    sub_1003D8008(v4, v5, v6, v7);
    v11 = v6;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v89 = v10;
    *&v98 = v11;
    sub_1003D802C(v4, v5, v11, v7);
    if (os_log_type_enabled(v12, v13))
    {
      v87 = v13;
      v95 = v4;
      v14 = *(v1 + 1048);
      v15 = *(v1 + 1016);
      v16 = v9;
      v17 = *(v1 + 1008);
      v18 = swift_slowAlloc();
      *(v1 + 960) = swift_slowAlloc();
      *v18 = 136315394;
      v92 = v16;
      v19 = [v16 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v15 + 8))(v14, v17);
      v23 = sub_1002346CC(v20, v22, (v1 + 960));

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      if (v7 <= 1)
      {
        if (v7)
        {
          v24 = 0x64656C696166;
        }

        else
        {
          v24 = 0x6574656C706D6F63;
        }

        if (v7)
        {
          v25 = 0xE600000000000000;
        }

        else
        {
          v25 = 0xE900000000000064;
        }
      }

      else if (v7 == 2)
      {
        v25 = 0xE800000000000000;
        v24 = 0x73736572676F7270;
      }

      else if (v7 == 3)
      {
        v24 = 0x6C6F686563616C70;
        v25 = 0xEB00000000726564;
      }

      else if (v98 | *(&v98 + 1) | v95)
      {
        if (v95 == 1 && v98 == 0)
        {
          v24 = 0x646573756170;
          v25 = 0xE600000000000000;
        }

        else
        {
          v42 = v98 == 0;
          v43 = v95 == 2;
          if (v43 && v42)
          {
            v24 = 0x64656D75736572;
          }

          else
          {
            v24 = 0x697469726F697270;
          }

          if (v43 && v42)
          {
            v25 = 0xE700000000000000;
          }

          else
          {
            v25 = 0xEB0000000064657ALL;
          }
        }
      }

      else
      {
        v24 = 0x64656C65636E6163;
        v25 = 0xE800000000000000;
      }

      v44 = *(v1 + 1112);
      v45 = *(v1 + 1064);
      v46 = *(v1 + 1056);
      v47 = sub_1002346CC(v24, v25, (v1 + 960));

      *(v18 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v12, v87, "Received coordinator event: %s, %s", v18, 0x16u);
      swift_arrayDestroy();

      v37 = *(v45 + 8);
      v37(v44, v46);
      v9 = v92;
      v4 = v95;
    }

    else
    {
      v34 = *(v1 + 1112);
      v35 = *(v1 + 1064);
      v36 = *(v1 + 1056);

      v37 = *(v35 + 8);
      v37(v34, v36);
    }

    *(v1 + 1232) = v37;
    v48 = *(v1 + 1160);
    v49 = *(v1 + 968);
    v50 = [v9 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v51 = *(v49 + v48);
    if (*(v51 + 16) && (v52 = sub_1005225DC(*(v1 + 1040)), (v53 & 1) != 0))
    {
      v54 = *(v1 + 1168);
      v55 = *(v1 + 968);
      v56 = *(*(v51 + 56) + 8 * v52);
      swift_endAccess();
      swift_beginAccess();
      v57 = *(v55 + v54);
      if (*(v57 + 16) && (v58 = sub_10052BA64(v56), (v59 & 1) != 0))
      {
        sub_10020A980(*(v57 + 56) + 40 * v58, v1 + 288);
      }

      else
      {
        *(v1 + 320) = 0;
        *(v1 + 288) = 0u;
        *(v1 + 304) = 0u;
      }

      swift_endAccess();
      if (*(v1 + 312))
      {
        sub_1001F0C48(&qword_1007875C0, &qword_1006B2A70);
        type metadata accessor for IPA_AppInstall(0);
        if (swift_dynamicCast())
        {
          v94 = v9;
          v64 = *(v1 + 1000);
          v65 = *(v1 + 992);
          v66 = *(v1 + 944);
          v67 = type metadata accessor for TaskPriority();
          v68 = *(v67 - 8);
          (*(v68 + 56))(v64, 1, 1, v67);
          v69 = swift_allocObject();
          *(v69 + 16) = 0;
          *(v69 + 24) = 0;
          *(v69 + 32) = v66;
          v70 = *(v1 + 176);
          *(v69 + 40) = *(v1 + 160);
          *(v69 + 56) = v70;
          *(v69 + 65) = *(v1 + 185);
          sub_100005934(v64, v65, &unk_100780380, &qword_10069E9E0);
          LODWORD(v64) = (*(v68 + 48))(v65, 1, v67);
          v91 = v89;
          sub_1003D8008(v4, *(&v98 + 1), v98, v7);

          v71 = *(v1 + 992);
          v97 = v4;
          if (v64 == 1)
          {
            sub_1000032A8(v71, &unk_100780380, &qword_10069E9E0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v68 + 8))(v71, v67);
          }

          v72 = *(v69 + 16);
          swift_unknownObjectRetain();

          if (v72)
          {
            swift_getObjectType();
            v73 = dispatch thunk of Actor.unownedExecutor.getter();
            v75 = v74;
            swift_unknownObjectRelease();
          }

          else
          {
            v73 = 0;
            v75 = 0;
          }

          sub_1000032A8(*(v1 + 1000), &unk_100780380, &qword_10069E9E0);
          v76 = swift_allocObject();
          *(v76 + 16) = &unk_1006B2A98;
          *(v76 + 24) = v69;
          if (v75 | v73)
          {
            *(v1 + 648) = 0;
            *(v1 + 656) = 0;
            *(v1 + 664) = v73;
            *(v1 + 672) = v75;
          }

          v77 = *(v1 + 1016);
          swift_task_create();

          sub_1003D802C(v97, *(&v98 + 1), v98, v7);
          (*(v77 + 8))(*(v1 + 1040), *(v1 + 1008));
LABEL_79:
          v83 = *(v1 + 1152);
          v84 = *(v1 + 968);
          v85 = swift_task_alloc();
          *(v1 + 1184) = v85;
          *v85 = v1;
          v85[1] = sub_10055404C;
          v86 = *(v1 + 1120);

          return AsyncStream.Iterator.next(isolation:)(v1 + 112, v84, v83, v86);
        }
      }

      else
      {
        sub_1000032A8(v1 + 288, &qword_100787560, &qword_1006B2950);
      }
    }

    else
    {
      swift_endAccess();
    }

    v60 = *(v1 + 1040);
    v61 = *(*(v1 + 968) + 112);
    *(v1 + 1240) = v61;
    v62 = swift_task_alloc();
    *(v1 + 1248) = v62;
    *(v62 + 16) = v60;
    v63 = swift_task_alloc();
    *(v1 + 1256) = v63;
    *v63 = v1;
    v63[1] = sub_100554E54;

    return sub_1003B5E68(sub_1005670EC, v62, v61);
  }

  else
  {
    (*(*(v1 + 1128) + 8))(*(v1 + 1136), *(v1 + 1120));
    sub_1000032A8(v1 + 248, &qword_1007875B8, &unk_1006B2A60);

    v26 = *(v1 + 8);

    return v26();
  }
}

uint64_t sub_100554E54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 1264) = a1;
  *(v5 + 1272) = a2;

  v6 = *(v4 + 968);
  if (v2)
  {

    v7 = sub_10055757C;
  }

  else
  {

    v7 = sub_100554FBC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100554FBC(uint64_t a1)
{
  if (!*(v1 + 1272))
  {
    v176 = *(v1 + 1216);
    v182 = *(v1 + 1224);
    v13 = *(v1 + 1208);
    v14 = *(v1 + 1200);
    v15 = *(v1 + 1192);
    v16 = *(v1 + 1040);
    v17 = *(v1 + 1024);
    v18 = *(v1 + 1016);
    v19 = *(v1 + 1008);
    v20 = *(v1 + 153);
    static Logger.install.getter();
    (*(v18 + 16))(v17, v16, v19);
    v21 = v15;
    v22 = v14;
    sub_1003D8008(v13, v176, v182, v20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    sub_1003D802C(v13, v176, v182, v20);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v1 + 153);
      v26 = swift_slowAlloc();
      *(v1 + 928) = swift_slowAlloc();
      *v26 = 136446466;
      if (v25 <= 1)
      {
        if (v25)
        {
          v27 = 0x64656C696166;
        }

        else
        {
          v27 = 0x6574656C706D6F63;
        }

        if (v25)
        {
          v28 = 0xE600000000000000;
        }

        else
        {
          v28 = 0xE900000000000064;
        }
      }

      else if (v25 == 2)
      {
        v28 = 0xE800000000000000;
        v27 = 0x73736572676F7270;
      }

      else if (v25 == 3)
      {
        v27 = 0x6C6F686563616C70;
        v28 = 0xEB00000000726564;
      }

      else
      {
        v123 = *(v1 + 1208);
        if (*(v1 + 1216) | *(v1 + 1224) | v123)
        {
          if (v123 == 1 && *(v1 + 1216) == 0)
          {
            v27 = 0x646573756170;
            v28 = 0xE600000000000000;
          }

          else
          {
            v134 = *(v1 + 1216) == 0;
            v135 = v123 == 2;
            if (v135 && v134)
            {
              v27 = 0x64656D75736572;
            }

            else
            {
              v27 = 0x697469726F697270;
            }

            if (v135 && v134)
            {
              v28 = 0xE700000000000000;
            }

            else
            {
              v28 = 0xEB0000000064657ALL;
            }
          }
        }

        else
        {
          v27 = 0x64656C65636E6163;
          v28 = 0xE800000000000000;
        }
      }

      v174 = *(v1 + 1088);
      v179 = *(v1 + 1232);
      v136 = *(v1 + 1024);
      v137 = *(v1 + 1016);
      v138 = *(v1 + 1008);
      v170 = *(v1 + 1056);
      v139 = sub_1002346CC(v27, v28, (v1 + 928));

      *(v26 + 4) = v139;
      *(v26 + 12) = 2082;
      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v140 = dispatch thunk of CustomStringConvertible.description.getter();
      v142 = v141;
      v183 = *(v137 + 8);
      v183(v136, v138);
      v143 = sub_1002346CC(v140, v142, (v1 + 928));

      *(v26 + 14) = v143;
      _os_log_impl(&_mh_execute_header, v23, v24, "Installation not found for %{public}s for %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      v179(v174, v170);
    }

    else
    {
      v61 = *(v1 + 1232);
      v62 = *(v1 + 1088);
      v63 = *(v1 + 1056);
      v64 = *(v1 + 1024);
      v65 = *(v1 + 1016);
      v66 = *(v1 + 1008);

      v183 = *(v65 + 8);
      v183(v64, v66);
      v61(v62, v63);
    }

    v180 = *(v1 + 1224);
    v144 = *(v1 + 1216);
    v145 = *(v1 + 1208);
    v146 = *(v1 + 1200);
    v147 = *(v1 + 1192);
    v148 = *(v1 + 1040);
    v149 = *(v1 + 1008);
    v150 = *(v1 + 153);
    sub_100551CCC(v1 + 160);

    sub_1003D802C(v145, v144, v180, v150);
    v183(v148, v149);
    goto LABEL_104;
  }

  v2 = *(v1 + 1168);
  v3 = *(v1 + 968);
  swift_beginAccess();
  v4 = *(v3 + v2);
  if (*(v4 + 16) && (v5 = sub_10052BA64(*(v1 + 1264)), (v6 & 1) != 0))
  {
    sub_10020A980(*(v4 + 56) + 40 * v5, v1 + 368);
  }

  else
  {
    *(v1 + 400) = 0;
    *(v1 + 368) = 0u;
    *(v1 + 384) = 0u;
  }

  swift_endAccess();
  v7 = *(v1 + 392);
  sub_1000032A8(v1 + 368, &qword_100787560, &qword_1006B2950);
  if (v7)
  {
    v8 = *(v1 + 1168);
    v9 = *(v1 + 968);
    swift_beginAccess();
    v10 = *(v9 + v8);
    if (*(v10 + 16) && (v11 = sub_10052BA64(*(v1 + 1264)), (v12 & 1) != 0))
    {
      sub_10020A980(*(v10 + 56) + 40 * v11, v1 + 328);
    }

    else
    {
      *(v1 + 360) = 0;
      *(v1 + 328) = 0u;
      *(v1 + 344) = 0u;
    }

    swift_endAccess();
    if (*(v1 + 352))
    {
      sub_1001F0C48(&qword_1007875C0, &qword_1006B2A70);
      type metadata accessor for IPA_AppInstall(0);
      if (swift_dynamicCast())
      {
        v29 = *(v1 + 1160);
        v30 = *(v1 + 1032);
        v31 = *(v1 + 968);
        v32 = *(*(v1 + 1016) + 16);
        v33 = *(v1 + 912);
        v32(v30, *(v1 + 1040), *(v1 + 1008));
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v31 + v29);
        *(v1 + 920) = v35;
        *(v31 + v29) = 0x8000000000000000;
        v36 = sub_1005225DC(v30);
        v38 = *(v35 + 16);
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v30) = v37;
          if (*(v35 + 24) < v41)
          {
            v42 = *(v1 + 1032);
            sub_1005BED68(v41, isUniquelyReferenced_nonNull_native);
            v36 = sub_1005225DC(v42);
            if ((v30 & 1) != (v43 & 1))
            {

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }

            goto LABEL_45;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_45:
            v93 = *(v1 + 920);
            v94 = *(v1 + 1264);
            if (v30)
            {
              v95 = v33;
              *(v93[7] + 8 * v36) = v94;
            }

            else
            {
              v96 = *(v1 + 1032);
              v97 = *(v1 + 1016);
              v98 = *(v1 + 1008);
              v93[(v36 >> 6) + 8] |= 1 << v36;
              v99 = v36;
              v100 = v32(v93[6] + *(v97 + 72) * v36, v96, v98);
              *(v93[7] + 8 * v99) = v94;
              v104 = v93[2];
              v40 = __OFADD__(v104, 1);
              v105 = v104 + 1;
              if (v40)
              {
                __break(1u);
                return AsyncStream.Iterator.next(isolation:)(v100, v101, v102, v103);
              }

              v95 = v33;
              v93[2] = v105;
            }

            v173 = *(v1 + 1216);
            v178 = *(v1 + 1224);
            v106 = *(v1 + 1208);
            v107 = *(v1 + 1200);
            v108 = *(v1 + 1160);
            v109 = *(v1 + 984);
            v110 = *(v1 + 976);
            v111 = *(v1 + 968);
            v112 = *(v1 + 153);
            v185 = *(*(v1 + 1016) + 8);
            v185(*(v1 + 1032), *(v1 + 1008));
            *(v111 + v108) = v93;

            swift_endAccess();
            v113 = type metadata accessor for TaskPriority();
            v114 = *(v113 - 8);
            (*(v114 + 56))(v109, 1, 1, v113);
            v115 = swift_allocObject();
            *(v115 + 16) = 0;
            *(v115 + 24) = 0;
            *(v115 + 32) = v95;
            v116 = *(v1 + 176);
            *(v115 + 40) = *(v1 + 160);
            *(v115 + 56) = v116;
            *(v115 + 65) = *(v1 + 185);
            sub_100005934(v109, v110, &unk_100780380, &qword_10069E9E0);
            LODWORD(v110) = (*(v114 + 48))(v110, 1, v113);
            v117 = v107;
            sub_1003D8008(v106, v173, v178, v112);

            v118 = *(v1 + 976);
            if (v110 == 1)
            {
              sub_1000032A8(*(v1 + 976), &unk_100780380, &qword_10069E9E0);
            }

            else
            {
              TaskPriority.rawValue.getter();
              (*(v114 + 8))(v118, v113);
            }

            v119 = *(v115 + 16);
            swift_unknownObjectRetain();

            if (v119)
            {
              swift_getObjectType();
              v120 = dispatch thunk of Actor.unownedExecutor.getter();
              v122 = v121;
              swift_unknownObjectRelease();
            }

            else
            {
              v120 = 0;
              v122 = 0;
            }

            sub_1000032A8(*(v1 + 984), &unk_100780380, &qword_10069E9E0);
            v124 = swift_allocObject();
            *(v124 + 16) = &unk_1006B2A80;
            *(v124 + 24) = v115;
            if (v122 | v120)
            {
              *(v1 + 680) = 0;
              *(v1 + 688) = 0;
              *(v1 + 696) = v120;
              *(v1 + 704) = v122;
            }

            v125 = *(v1 + 1272);
            v126 = *(v1 + 1224);
            v127 = *(v1 + 1216);
            v128 = *(v1 + 1208);
            v129 = *(v1 + 1200);
            v130 = *(v1 + 1192);
            v131 = *(v1 + 153);
            swift_task_create();

            sub_1003D802C(v128, v127, v126, v131);
            v185(*(v1 + 1040), *(v1 + 1008));
LABEL_104:
            v157 = *(v1 + 1152);
            v158 = *(v1 + 968);
            v159 = swift_task_alloc();
            *(v1 + 1184) = v159;
            *v159 = v1;
            v159[1] = sub_10055404C;
            v103 = *(v1 + 1120);
            v100 = v1 + 112;
            v101 = v158;
            v102 = v157;

            return AsyncStream.Iterator.next(isolation:)(v100, v101, v102, v103);
          }
        }

        v165 = v36;
        sub_1005C6994();
        v36 = v165;
        goto LABEL_45;
      }
    }

    else
    {
      sub_1000032A8(v1 + 328, &qword_100787560, &qword_1006B2950);
    }

    v67 = *(v1 + 1224);
    v68 = *(v1 + 1216);
    v69 = *(v1 + 1208);
    v70 = *(v1 + 1200);
    v71 = *(v1 + 1192);
    v72 = *(v1 + 153);
    static Logger.install.getter();
    v73 = v71;
    v74 = v70;
    sub_1003D8008(v69, v68, v67, v72);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();

    sub_1003D802C(v69, v68, v67, v72);
    if (os_log_type_enabled(v75, v76))
    {
      v77 = *(v1 + 153);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *(v1 + 904) = v79;
      *v78 = 136315394;
      if (v77 <= 1)
      {
        if (v77)
        {
          v80 = 0x64656C696166;
        }

        else
        {
          v80 = 0x6574656C706D6F63;
        }

        if (v77)
        {
          v81 = 0xE600000000000000;
        }

        else
        {
          v81 = 0xE900000000000064;
        }
      }

      else if (v77 == 2)
      {
        v81 = 0xE800000000000000;
        v80 = 0x73736572676F7270;
      }

      else if (v77 == 3)
      {
        v80 = 0x6C6F686563616C70;
        v81 = 0xEB00000000726564;
      }

      else
      {
        v132 = *(v1 + 1208);
        if (*(v1 + 1216) | *(v1 + 1224) | v132)
        {
          if (v132 == 1 && *(v1 + 1216) == 0)
          {
            v80 = 0x646573756170;
            v81 = 0xE600000000000000;
          }

          else
          {
            v151 = *(v1 + 1216) == 0;
            v152 = v132 == 2;
            if (v152 && v151)
            {
              v80 = 0x64656D75736572;
            }

            else
            {
              v80 = 0x697469726F697270;
            }

            if (v152 && v151)
            {
              v81 = 0xE700000000000000;
            }

            else
            {
              v81 = 0xEB0000000064657ALL;
            }
          }
        }

        else
        {
          v80 = 0x64656C65636E6163;
          v81 = 0xE800000000000000;
        }
      }

      v153 = *(v1 + 1264);
      v181 = *(v1 + 1224);
      v186 = *(v1 + 1232);
      v168 = *(v1 + 1216);
      v169 = *(v1 + 1272);
      v167 = *(v1 + 1208);
      v154 = *(v1 + 1200);
      v155 = *(v1 + 1192);
      v171 = *(v1 + 1056);
      v175 = *(v1 + 1096);
      v166 = *(v1 + 153);
      v156 = sub_1002346CC(v80, v81, (v1 + 904));

      *(v78 + 4) = v156;
      *(v78 + 12) = 2050;
      *(v78 + 14) = v153;
      _os_log_impl(&_mh_execute_header, v75, v76, "Received unexpected coordinator event %s for '%{public}lld'", v78, 0x16u);
      sub_10000710C(v79);

      sub_1003D802C(v167, v168, v181, v166);
      v186(v175, v171);
    }

    else
    {
      v82 = *(v1 + 1272);
      v83 = *(v1 + 1224);
      v84 = *(v1 + 1216);
      v85 = *(v1 + 1208);
      v172 = v75;
      v86 = *(v1 + 1200);
      v87 = *(v1 + 1192);
      v177 = *(v1 + 1096);
      v184 = *(v1 + 1232);
      v88 = *(v1 + 1056);
      v89 = *(v1 + 153);

      sub_1003D802C(v85, v84, v83, v89);
      v184(v177, v88);
    }

    (*(*(v1 + 1016) + 8))(*(v1 + 1040), *(v1 + 1008));
    goto LABEL_104;
  }

  v45 = *(v1 + 1224);
  v46 = *(v1 + 1216);
  v47 = *(v1 + 1208);
  v48 = *(v1 + 1200);
  v49 = *(v1 + 1192);
  v50 = *(v1 + 153);
  static Logger.install.getter();
  v51 = v49;
  v52 = v48;
  sub_1003D8008(v47, v46, v45, v50);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();

  sub_1003D802C(v47, v46, v45, v50);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v1 + 1264);
    v56 = *(v1 + 153);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *(v1 + 936) = v58;
    *v57 = 134349314;
    *(v57 + 4) = v55;
    *(v57 + 12) = 2082;
    if (v56 <= 1)
    {
      if (v56)
      {
        v59 = 0x64656C696166;
      }

      else
      {
        v59 = 0x6574656C706D6F63;
      }

      if (v56)
      {
        v60 = 0xE600000000000000;
      }

      else
      {
        v60 = 0xE900000000000064;
      }
    }

    else if (v56 == 2)
    {
      v60 = 0xE800000000000000;
      v59 = 0x73736572676F7270;
    }

    else if (v56 == 3)
    {
      v59 = 0x6C6F686563616C70;
      v60 = 0xEB00000000726564;
    }

    else
    {
      v133 = *(v1 + 1208);
      if (*(v1 + 1216) | *(v1 + 1224) | v133)
      {
        if (v133 == 1 && *(v1 + 1216) == 0)
        {
          v59 = 0x646573756170;
          v60 = 0xE600000000000000;
        }

        else
        {
          v160 = *(v1 + 1216) == 0;
          v161 = v133 == 2;
          if (v161 && v160)
          {
            v59 = 0x64656D75736572;
          }

          else
          {
            v59 = 0x697469726F697270;
          }

          if (v161 && v160)
          {
            v60 = 0xE700000000000000;
          }

          else
          {
            v60 = 0xEB0000000064657ALL;
          }
        }
      }

      else
      {
        v59 = 0x64656C65636E6163;
        v60 = 0xE800000000000000;
      }
    }

    v187 = *(v1 + 1232);
    v162 = *(v1 + 1104);
    v163 = *(v1 + 1056);
    v164 = sub_1002346CC(v59, v60, (v1 + 936));

    *(v57 + 14) = v164;
    _os_log_impl(&_mh_execute_header, v53, v54, "Creating installation %{public}lld to handle event: %{public}s", v57, 0x16u);
    sub_10000710C(v58);

    v187(v162, v163);
  }

  else
  {
    v90 = *(v1 + 1232);
    v91 = *(v1 + 1104);
    v92 = *(v1 + 1056);

    v90(v91, v92);
  }

  return _swift_task_switch(sub_1005560E0, 0, 0);
}

uint64_t sub_1005560E0()
{
  sub_100005934(v0 + 248, v0 + 448, &qword_1007875B8, &unk_1006B2A60);
  if (*(v0 + 472))
  {
    sub_1001DFDBC((v0 + 448), v0 + 408);
    v1 = *(v0 + 968);

    return _swift_task_switch(sub_100556924, v1, 0);
  }

  else
  {
    sub_1000032A8(v0 + 448, &qword_1007875B8, &unk_1006B2A60);
    v2 = swift_task_alloc();
    *(v0 + 1280) = v2;
    *v2 = v0;
    v2[1] = sub_100556200;

    return sub_100324F98(v0 + 568);
  }
}

uint64_t sub_100556200()
{

  if (v0)
  {

    v1 = sub_1005563F4;
  }

  else
  {
    v1 = sub_100556318;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100556318()
{
  sub_1001DFDBC((v0 + 568), v0 + 528);
  v5 = *(v0 + 552);
  v1 = *(v0 + 552);
  v2 = sub_100006D8C((v0 + 528), v1);
  *(v0 + 512) = v5;
  v3 = sub_10020A748((v0 + 488));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_10000710C((v0 + 528));

  return _swift_task_switch(sub_1005565CC, 0, 0);
}

uint64_t sub_1005563F4()
{
  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  sub_1000032A8(v0 + 568, &qword_100780620, &qword_1006A1F70);
  v1 = swift_task_alloc();
  *(v0 + 1288) = v1;
  *v1 = v0;
  v1[1] = sub_1005564B8;

  return sub_100324A90(v0 + 488);
}

uint64_t sub_1005564B8()
{
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v2 = sub_100556660;
  }

  else
  {
    v2 = sub_1005565CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005565CC()
{
  sub_10020A980(v0 + 488, v0 + 608);
  sub_10020AD90(v0 + 608, v0 + 248, &qword_1007875B8, &unk_1006B2A60);
  sub_1001DFDBC((v0 + 488), v0 + 408);
  v1 = *(v0 + 968);

  return _swift_task_switch(sub_100556924, v1, 0);
}

uint64_t sub_10055667C(uint64_t a1)
{
  static Logger.install.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 1272);
  if (v4)
  {
    v6 = *(v1 + 1264);
    v29 = *(v1 + 1216);
    v30 = *(v1 + 1224);
    v28 = *(v1 + 1208);
    v7 = *(v1 + 1200);
    v8 = *(v1 + 1192);
    v27 = *(v1 + 153);
    v9 = swift_slowAlloc();
    v10 = v5;
    v11 = swift_slowAlloc();
    *v9 = 134349314;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating installation %{public}lld failed: %{public}@", v9, 0x16u);
    sub_1000032A8(v11, &qword_10077F920, &qword_10069E6A0);

    sub_1003D802C(v28, v29, v30, v27);
  }

  else
  {
    v13 = *(v1 + 1224);
    v14 = *(v1 + 1216);
    v15 = *(v1 + 1208);
    v16 = *(v1 + 1200);
    v17 = *(v1 + 1192);
    v18 = *(v1 + 153);

    sub_1003D802C(v15, v14, v13, v18);
  }

  v19 = *(v1 + 1040);
  v20 = *(v1 + 1016);
  v21 = *(v1 + 1008);
  (*(v1 + 1232))(*(v1 + 1072), *(v1 + 1056));
  (*(v20 + 8))(v19, v21);
  v22 = *(v1 + 1152);
  v23 = *(v1 + 968);
  v24 = swift_task_alloc();
  *(v1 + 1184) = v24;
  *v24 = v1;
  v24[1] = sub_10055404C;
  v25 = *(v1 + 1120);

  return AsyncStream.Iterator.next(isolation:)(v1 + 112, v23, v22, v25);
}

uint64_t sub_100556924()
{
  v1 = v0[158];
  sub_100005934(v0[121] + v0[143], (v0 + 2), &qword_100784E10, &qword_1006AD788);
  v2 = swift_task_alloc();
  v0[163] = v2;
  v2[2] = v1;
  v2[3] = v0 + 2;
  v2[4] = v0 + 51;
  v3 = swift_task_alloc();
  v0[164] = v3;
  *v3 = v0;
  v3[1] = sub_100556A34;
  v4 = v0[155];

  return sub_1003B63A0(sub_100567108, v2, v4);
}

uint64_t sub_100556A34(uint64_t a1)
{
  v3 = *v2;
  v3[165] = a1;
  v3[166] = v1;

  if (v1)
  {
    v4 = v3[121];
    v5 = sub_100557A70;
  }

  else
  {
    v6 = v3[121];
    sub_1000032A8((v3 + 2), &qword_100784E10, &qword_1006AD788);
    v5 = sub_100556B98;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100556B98()
{
  v1 = *(v0 + 1320);
  if (v1)
  {
    *(v0 + 232) = type metadata accessor for IPA_AppInstall(0);
    *(v0 + 240) = &off_100763A38;
    *(v0 + 208) = v1;
  }

  else
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
  }

  v2 = *(v0 + 1264);
  swift_beginAccess();
  sub_1005B7C44(v0 + 208, v2);
  swift_endAccess();
  sub_10000710C((v0 + 408));
  v3 = *(v0 + 1168);
  v4 = *(v0 + 968);
  swift_beginAccess();
  v5 = *(v4 + v3);
  if (*(v5 + 16) && (v6 = sub_10052BA64(*(v0 + 1264)), (v7 & 1) != 0))
  {
    sub_10020A980(*(v5 + 56) + 40 * v6, v0 + 328);
  }

  else
  {
    *(v0 + 360) = 0;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
  }

  swift_endAccess();
  if (!*(v0 + 352))
  {
    sub_1000032A8(v0 + 328, &qword_100787560, &qword_1006B2950);
    goto LABEL_17;
  }

  sub_1001F0C48(&qword_1007875C0, &qword_1006B2A70);
  type metadata accessor for IPA_AppInstall(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v24 = *(v0 + 1224);
    v25 = *(v0 + 1216);
    v26 = *(v0 + 1208);
    v27 = *(v0 + 1200);
    v28 = *(v0 + 1192);
    v29 = *(v0 + 153);
    static Logger.install.getter();
    v30 = v28;
    v31 = v27;
    sub_1003D8008(v26, v25, v24, v29);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    sub_1003D802C(v26, v25, v24, v29);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 153);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *(v0 + 904) = v36;
      *v35 = 136315394;
      if (v34 <= 1)
      {
        if (v34)
        {
          v38 = 0x64656C696166;
        }

        else
        {
          v38 = 0x6574656C706D6F63;
        }

        if (v34)
        {
          v37 = 0xE600000000000000;
        }

        else
        {
          v37 = 0xE900000000000064;
        }
      }

      else if (v34 == 2)
      {
        v37 = 0xE800000000000000;
        v38 = 0x73736572676F7270;
      }

      else if (v34 == 3)
      {
        v37 = 0xEB00000000726564;
        v38 = 0x6C6F686563616C70;
      }

      else
      {
        v85 = *(v0 + 1208);
        if (*(v0 + 1216) | *(v0 + 1224) | v85)
        {
          if (v85 == 1 && *(v0 + 1216) == 0)
          {
            v37 = 0xE600000000000000;
            v38 = 0x646573756170;
          }

          else
          {
            v86 = *(v0 + 1216) == 0;
            v87 = v85 == 2;
            if (v87 && v86)
            {
              v38 = 0x64656D75736572;
            }

            else
            {
              v38 = 0x697469726F697270;
            }

            if (v87 && v86)
            {
              v37 = 0xE700000000000000;
            }

            else
            {
              v37 = 0xEB0000000064657ALL;
            }
          }
        }

        else
        {
          v37 = 0xE800000000000000;
          v38 = 0x64656C65636E6163;
        }
      }

      v88 = *(v0 + 1264);
      v106 = *(v0 + 1224);
      v109 = *(v0 + 1232);
      v98 = *(v0 + 1216);
      v99 = *(v0 + 1272);
      v97 = *(v0 + 1208);
      v89 = *(v0 + 1200);
      v90 = *(v0 + 1192);
      v100 = *(v0 + 1056);
      v103 = *(v0 + 1096);
      v96 = *(v0 + 153);
      v91 = sub_1002346CC(v38, v37, (v0 + 904));

      *(v35 + 4) = v91;
      *(v35 + 12) = 2050;
      *(v35 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v32, v33, "Received unexpected coordinator event %s for '%{public}lld'", v35, 0x16u);
      sub_10000710C(v36);

      sub_1003D802C(v97, v98, v106, v96);
      v109(v103, v100);
    }

    else
    {
      v39 = *(v0 + 1272);
      v40 = *(v0 + 1224);
      v41 = *(v0 + 1216);
      v42 = *(v0 + 1208);
      v101 = v32;
      v43 = *(v0 + 1200);
      v44 = *(v0 + 1192);
      v104 = *(v0 + 1096);
      v107 = *(v0 + 1232);
      v45 = *(v0 + 1056);
      v46 = *(v0 + 153);

      sub_1003D802C(v42, v41, v40, v46);
      v107(v104, v45);
    }

    (*(*(v0 + 1016) + 8))(*(v0 + 1040), *(v0 + 1008));
    goto LABEL_57;
  }

  v8 = *(v0 + 1160);
  v9 = *(v0 + 1032);
  v10 = *(v0 + 968);
  v11 = *(*(v0 + 1016) + 16);
  v12 = *(v0 + 912);
  v11(v9, *(v0 + 1040), *(v0 + 1008));
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v10 + v8);
  *(v0 + 920) = v14;
  *(v10 + v8) = 0x8000000000000000;
  v15 = sub_1005225DC(v9);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_61;
  }

  LOBYTE(v9) = v16;
  if (*(v14 + 24) >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

LABEL_61:
    v95 = v15;
    sub_1005C6994();
    v15 = v95;
    goto LABEL_24;
  }

  v21 = *(v0 + 1032);
  sub_1005BED68(v20, isUniquelyReferenced_nonNull_native);
  v15 = sub_1005225DC(v21);
  if ((v9 & 1) == (v22 & 1))
  {
LABEL_24:
    v47 = *(v0 + 920);
    v48 = *(v0 + 1264);
    if (v9)
    {
      v49 = v12;
      *(v47[7] + 8 * v15) = v48;
    }

    else
    {
      v50 = *(v0 + 1032);
      v51 = *(v0 + 1016);
      v52 = *(v0 + 1008);
      v47[(v15 >> 6) + 8] |= 1 << v15;
      v53 = v15;
      v54 = v11(v47[6] + *(v51 + 72) * v15, v50, v52);
      *(v47[7] + 8 * v53) = v48;
      v58 = v47[2];
      v19 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v19)
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v54, v55, v56, v57);
      }

      v49 = v12;
      v47[2] = v59;
    }

    v102 = *(v0 + 1216);
    v105 = *(v0 + 1224);
    v60 = *(v0 + 1208);
    v61 = *(v0 + 1200);
    v62 = *(v0 + 1160);
    v63 = *(v0 + 984);
    v64 = *(v0 + 976);
    v65 = *(v0 + 968);
    v66 = *(v0 + 153);
    v108 = *(*(v0 + 1016) + 8);
    v108(*(v0 + 1032), *(v0 + 1008));
    *(v65 + v62) = v47;

    swift_endAccess();
    v67 = type metadata accessor for TaskPriority();
    v68 = *(v67 - 8);
    (*(v68 + 56))(v63, 1, 1, v67);
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    *(v69 + 32) = v49;
    v70 = *(v0 + 176);
    *(v69 + 40) = *(v0 + 160);
    *(v69 + 56) = v70;
    *(v69 + 65) = *(v0 + 185);
    sub_100005934(v63, v64, &unk_100780380, &qword_10069E9E0);
    LODWORD(v64) = (*(v68 + 48))(v64, 1, v67);
    v71 = v61;
    sub_1003D8008(v60, v102, v105, v66);

    v72 = *(v0 + 976);
    if (v64 == 1)
    {
      sub_1000032A8(*(v0 + 976), &unk_100780380, &qword_10069E9E0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v68 + 8))(v72, v67);
    }

    v73 = *(v69 + 16);
    swift_unknownObjectRetain();

    if (v73)
    {
      swift_getObjectType();
      v74 = dispatch thunk of Actor.unownedExecutor.getter();
      v76 = v75;
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0;
      v76 = 0;
    }

    sub_1000032A8(*(v0 + 984), &unk_100780380, &qword_10069E9E0);
    v77 = swift_allocObject();
    *(v77 + 16) = &unk_1006B2A80;
    *(v77 + 24) = v69;
    if (v76 | v74)
    {
      *(v0 + 680) = 0;
      *(v0 + 688) = 0;
      *(v0 + 696) = v74;
      *(v0 + 704) = v76;
    }

    v78 = *(v0 + 1272);
    v79 = *(v0 + 1224);
    v80 = *(v0 + 1216);
    v81 = *(v0 + 1208);
    v82 = *(v0 + 1200);
    v83 = *(v0 + 1192);
    v84 = *(v0 + 153);
    swift_task_create();

    sub_1003D802C(v81, v80, v79, v84);
    v108(*(v0 + 1040), *(v0 + 1008));
LABEL_57:
    v92 = *(v0 + 1152);
    v93 = *(v0 + 968);
    v94 = swift_task_alloc();
    *(v0 + 1184) = v94;
    *v94 = v0;
    v94[1] = sub_10055404C;
    v57 = *(v0 + 1120);
    v54 = v0 + 112;
    v55 = v93;
    v56 = v92;

    return AsyncStream.Iterator.next(isolation:)(v54, v55, v56, v57);
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10055757C(uint64_t a1)
{
  v49 = *(v1 + 1216);
  v52 = *(v1 + 1224);
  v2 = *(v1 + 1208);
  v3 = *(v1 + 1200);
  v4 = *(v1 + 1192);
  v5 = *(v1 + 1040);
  v6 = *(v1 + 1024);
  v7 = *(v1 + 1016);
  v8 = *(v1 + 1008);
  v9 = *(v1 + 153);
  static Logger.install.getter();
  (*(v7 + 16))(v6, v5, v8);
  v10 = v4;
  v11 = v3;
  sub_1003D8008(v2, v49, v52, v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  sub_1003D802C(v2, v49, v52, v9);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v1 + 153);
    v15 = swift_slowAlloc();
    *(v1 + 928) = swift_slowAlloc();
    *v15 = 136446466;
    if (v14 <= 1)
    {
      if (v14)
      {
        v17 = 0x64656C696166;
      }

      else
      {
        v17 = 0x6574656C706D6F63;
      }

      if (v14)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v16 = 0xE900000000000064;
      }
    }

    else if (v14 == 2)
    {
      v16 = 0xE800000000000000;
      v17 = 0x73736572676F7270;
    }

    else if (v14 == 3)
    {
      v16 = 0xEB00000000726564;
      v17 = 0x6C6F686563616C70;
    }

    else
    {
      v24 = *(v1 + 1208);
      if (*(v1 + 1216) | *(v1 + 1224) | v24)
      {
        if (v24 == 1 && *(v1 + 1216) == 0)
        {
          v16 = 0xE600000000000000;
          v17 = 0x646573756170;
        }

        else
        {
          v25 = *(v1 + 1216) == 0;
          v26 = v24 == 2;
          if (v26 && v25)
          {
            v17 = 0x64656D75736572;
          }

          else
          {
            v17 = 0x697469726F697270;
          }

          if (v26 && v25)
          {
            v16 = 0xE700000000000000;
          }

          else
          {
            v16 = 0xEB0000000064657ALL;
          }
        }
      }

      else
      {
        v16 = 0xE800000000000000;
        v17 = 0x64656C65636E6163;
      }
    }

    v48 = *(v1 + 1088);
    v50 = *(v1 + 1232);
    v27 = *(v1 + 1024);
    v28 = *(v1 + 1016);
    v29 = *(v1 + 1008);
    v47 = *(v1 + 1056);
    v30 = sub_1002346CC(v17, v16, (v1 + 928));

    *(v15 + 4) = v30;
    *(v15 + 12) = 2082;
    sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v53 = *(v28 + 8);
    v53(v27, v29);
    v34 = sub_1002346CC(v31, v33, (v1 + 928));

    *(v15 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v12, v13, "Installation not found for %{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    v50(v48, v47);
  }

  else
  {
    v18 = *(v1 + 1232);
    v19 = *(v1 + 1088);
    v20 = *(v1 + 1056);
    v21 = *(v1 + 1024);
    v22 = *(v1 + 1016);
    v23 = *(v1 + 1008);

    v53 = *(v22 + 8);
    v53(v21, v23);
    v18(v19, v20);
  }

  v51 = *(v1 + 1224);
  v35 = *(v1 + 1216);
  v36 = *(v1 + 1208);
  v37 = *(v1 + 1200);
  v38 = *(v1 + 1192);
  v39 = *(v1 + 1040);
  v40 = *(v1 + 1008);
  v41 = *(v1 + 153);
  sub_100551CCC(v1 + 160);

  sub_1003D802C(v36, v35, v51, v41);
  v53(v39, v40);
  v42 = *(v1 + 1152);
  v43 = *(v1 + 968);
  v44 = swift_task_alloc();
  *(v1 + 1184) = v44;
  *v44 = v1;
  v44[1] = sub_10055404C;
  v45 = *(v1 + 1120);

  return AsyncStream.Iterator.next(isolation:)(v1 + 112, v43, v42, v45);
}

uint64_t sub_100557A70()
{
  sub_1000032A8(v0 + 16, &qword_100784E10, &qword_1006AD788);
  sub_10000710C((v0 + 408));
  static Logger.install.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1272);
  if (v3)
  {
    v5 = *(v0 + 1264);
    v28 = *(v0 + 1216);
    v29 = *(v0 + 1224);
    v27 = *(v0 + 1208);
    v6 = *(v0 + 1200);
    v7 = *(v0 + 1192);
    v26 = *(v0 + 153);
    v8 = swift_slowAlloc();
    v9 = v4;
    v10 = swift_slowAlloc();
    *v8 = 134349314;
    *(v8 + 4) = v5;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating installation %{public}lld failed: %{public}@", v8, 0x16u);
    sub_1000032A8(v10, &qword_10077F920, &qword_10069E6A0);

    sub_1003D802C(v27, v28, v29, v26);
  }

  else
  {
    v12 = *(v0 + 1224);
    v13 = *(v0 + 1216);
    v14 = *(v0 + 1208);
    v15 = *(v0 + 1200);
    v16 = *(v0 + 1192);
    v17 = *(v0 + 153);

    sub_1003D802C(v14, v13, v12, v17);
  }

  v18 = *(v0 + 1040);
  v19 = *(v0 + 1016);
  v20 = *(v0 + 1008);
  (*(v0 + 1232))(*(v0 + 1072), *(v0 + 1056));
  (*(v19 + 8))(v18, v20);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 968);
  v23 = swift_task_alloc();
  *(v0 + 1184) = v23;
  *v23 = v0;
  v23[1] = sub_10055404C;
  v24 = *(v0 + 1120);

  return AsyncStream.Iterator.next(isolation:)(v0 + 112, v22, v21, v24);
}

uint64_t sub_100557D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100214EFC;

  return sub_1003D63F8(a5);
}

void sub_100557DD4(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LogKey.Prefix();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_100274FF8(a2, 0, 0);
  v12 = sub_100563BA8(0, 0, v11, sub_100563B34, 0, v10);

  if (v12)
  {
    v13 = [v12 persistentID];
    v14 = sub_100535BE0(22, v12);
    if (!v14)
    {
      (*(v7 + 104))(v9, enum case for LogKey.Prefix.undefined(_:), v6);
      v15 = objc_allocWithZone(type metadata accessor for LogKey());
      v14 = LogKey.init(prefix:)();
    }

    v16 = v14;

    *a3 = v13;
    a3[1] = v16;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_100557F60@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  result = sub_100005934(a3, v12, &qword_100784E10, &qword_1006AD788);
  if (v12[3])
  {
    sub_10020A980(a4, v11);
    type metadata accessor for IPA_AppInstall(0);
    swift_allocObject();
    result = sub_1003D557C(a2, v9, v12, v11);
    if (v5)
    {

      result = 0;
    }

    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100558030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_1005580C0();
}

uint64_t sub_1005580C0()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  v1[12] = swift_task_alloc();
  sub_1001F0C48(&qword_1007873C0, &qword_1006B2660);
  v1[13] = swift_task_alloc();
  v2 = sub_1001F0C48(&qword_1007873C8, &qword_1006B2668);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100558250, v0, 0);
}

uint64_t sub_100558250()
{
  v1 = (v0[10] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies);
  v2 = swift_beginAccess();
  v4 = v1[3];
  if (v4)
  {
    v5 = *(*sub_100006D8C(v1, v4) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_thermalPressureMonitor);
    v0[20] = v5;
    v0[8] = v5;
    v6 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
    v7 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadLimit;
    v0[21] = v6;
    v0[22] = v7;
    v0[23] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;

    swift_beginAccess();
    v8 = sub_10042BD18();
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_1005583C8;
    v4 = &type metadata for ThermalPressureMonitor.AsyncIterator;
    v2 = (v0 + 26);
    v3 = v8;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v2, v4, v3);
}

uint64_t sub_1005583C8()
{
  *(*v1 + 200) = v0;

  swift_getObjectType();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100558820;
  }

  else
  {
    v4 = sub_100558524;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100558524()
{
  v1 = *(v0 + 80);
  *(v0 + 209) = *(v0 + 208);
  return _swift_task_switch(sub_100558548, v1, 0);
}

uint64_t sub_100558548(uint64_t a1)
{
  v2 = *(v1 + 209);
  if (v2 == 2)
  {

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    if (v2)
    {
      static Logger.install.getter();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Limiting maximum active count due to thermal pressure", v7, 2u);
      }

      v9 = *(v1 + 144);
      v8 = *(v1 + 152);
      v10 = *(v1 + 136);

      (*(v9 + 8))(v8, v10);
      v11 = 1;
    }

    else
    {
      v11 = 4;
    }

    v12 = *(v1 + 184);
    v13 = *(v1 + 104);
    v14 = *(v1 + 80);
    *(v14 + *(v1 + 176)) = v11;
    sub_100005934(v14 + v12, v13, &qword_1007873C0, &qword_1006B2660);
    v15 = sub_1001F0C48(&unk_100787228, &qword_1006B2558);
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v13, 1, v15);
    if (v17 == 1)
    {
      __break(1u);
    }

    else
    {
      v21 = *(v1 + 120);
      v20 = *(v1 + 128);
      v22 = *(v1 + 104);
      v23 = *(v1 + 112);
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v21 + 8))(v20, v23);
      (*(v16 + 8))(v22, v15);
      v24 = sub_10042BD18();
      v25 = swift_task_alloc();
      *(v1 + 192) = v25;
      *v25 = v1;
      v25[1] = sub_1005583C8;
      v18 = &type metadata for ThermalPressureMonitor.AsyncIterator;
      v17 = v1 + 208;
      v19 = v24;
    }

    return dispatch thunk of AsyncIteratorProtocol.next()(v17, v18, v19);
  }
}

uint64_t sub_100558820()
{
  *(v0 + 72) = *(v0 + 200);
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1005588AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10055894C, a4, 0);
}

uint64_t sub_10055894C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_1004A673C(0xD000000000000028, 0x80000001006CC190, v2, &unk_1006B2A08, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100558AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  v4[7] = swift_task_alloc();
  sub_1001F0C48(&qword_1007873C0, &qword_1006B2660);
  v4[8] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_1007873C8, &qword_1006B2668);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = sub_1001F0C48(&qword_1007875A0, &unk_1006B2A10);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for NetworkPath(0);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_1007875A8, &qword_1006B7650);
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_1007875B0, &unk_1006B2A20);
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  sub_1001F0C48(&qword_1007845D0, &unk_1006AC740);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_100558E10, a4, 0);
}

uint64_t sub_100558E10()
{
  v1 = v0[31];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[17];
  v6 = v0[18];
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  v7 = NWPathMonitor.init()();
  v0[32] = v7;
  v8 = *(v6 + 56);
  v0[33] = v8;
  v0[34] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v5);
  sub_1001EF31C(v7);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v9 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;
  v0[35] = v9;
  v0[36] = v10;
  swift_beginAccess();
  v11 = v0[35];
  v12 = v0[5];
  v13 = swift_task_alloc();
  v0[37] = v13;
  *v13 = v0;
  v13[1] = sub_100558FD0;
  v14 = v0[30];
  v15 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v14, v12, v11, v15);
}

uint64_t sub_100558FD0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1005590E0, v1, 0);
}

uint64_t sub_1005590E0()
{
  v65 = v0;
  v1 = v0[30];
  v2 = v0[17];
  v3 = *(v0[18] + 48);
  if (v3(v1, 1, v2) != 1)
  {
    v10 = v0[33];
    v62 = v0[31];
    v11 = v0[29];
    v12 = v0[21];
    v14 = v0[15];
    v13 = v0[16];
    sub_100566A40(v1, v12, type metadata accessor for NetworkPath);
    sub_100564730(v12, v11, type metadata accessor for NetworkPath);
    v10(v11, 0, 1, v2);
    v15 = *(v14 + 48);
    sub_100005934(v62, v13, &qword_1007845D0, &unk_1006AC740);
    sub_100005934(v11, v13 + v15, &qword_1007845D0, &unk_1006AC740);
    if (v3(v13, 1, v2) == 1)
    {
      v16 = v0[17];
      sub_1000032A8(v0[29], &qword_1007845D0, &unk_1006AC740);
      if (v3(v13 + v15, 1, v16) == 1)
      {
        sub_1000032A8(v0[16], &qword_1007845D0, &unk_1006AC740);
LABEL_17:
        sub_100566034(v0[21], type metadata accessor for NetworkPath);
        goto LABEL_18;
      }
    }

    else
    {
      v17 = v0[17];
      sub_100005934(v0[16], v0[28], &qword_1007845D0, &unk_1006AC740);
      v18 = v3(v13 + v15, 1, v17);
      v19 = v0[28];
      v20 = v0[29];
      if (v18 != 1)
      {
        v55 = v0[20];
        v56 = v0[16];
        sub_100566A40(v13 + v15, v55, type metadata accessor for NetworkPath);
        v57 = sub_1001F09DC(v19, v55);
        sub_100566034(v55, type metadata accessor for NetworkPath);
        sub_1000032A8(v20, &qword_1007845D0, &unk_1006AC740);
        sub_100566034(v19, type metadata accessor for NetworkPath);
        sub_1000032A8(v56, &qword_1007845D0, &unk_1006AC740);
        if (v57)
        {
          goto LABEL_17;
        }

LABEL_11:
        v21 = v0[21];
        v22 = v0[19];
        static Logger.install.getter();
        sub_100564730(v21, v22, type metadata accessor for NetworkPath);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        v25 = os_log_type_enabled(v23, v24);
        v26 = v0[31];
        v27 = v0[19];
        v28 = v0[13];
        v29 = v0[14];
        v30 = v0[12];
        if (v25)
        {
          v63 = v0[14];
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v64 = v32;
          *v31 = 136315138;
          v33 = sub_1001EED14();
          v61 = v26;
          v35 = v34;
          sub_100566034(v27, type metadata accessor for NetworkPath);
          v36 = sub_1002346CC(v33, v35, &v64);

          *(v31 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v23, v24, "#network %s", v31, 0xCu);
          sub_10000710C(v32);

          (*(v28 + 8))(v63, v30);
          v37 = v61;
        }

        else
        {

          sub_100566034(v27, type metadata accessor for NetworkPath);
          (*(v28 + 8))(v29, v30);
          v37 = v26;
        }

        sub_1000032A8(v37, &qword_1007845D0, &unk_1006AC740);
        v38 = v0[36];
        v39 = v0[33];
        v40 = v0[31];
        v41 = v0[17];
        v42 = v0[8];
        v43 = v0[5];
        sub_100564730(v0[21], v40, type metadata accessor for NetworkPath);
        v39(v40, 0, 1, v41);
        sub_100005934(v43 + v38, v42, &qword_1007873C0, &qword_1006B2660);
        v44 = sub_1001F0C48(&unk_100787228, &qword_1006B2558);
        v45 = *(v44 - 8);
        v46 = (*(v45 + 48))(v42, 1, v44);
        if (v46 == 1)
        {
          __break(1u);
          return AsyncStream.Iterator.next(isolation:)(v46, v47, v48, v49);
        }

        v50 = v0[21];
        v52 = v0[10];
        v51 = v0[11];
        v53 = v0[8];
        v54 = v0[9];
        swift_storeEnumTagMultiPayload();
        AsyncStream.Continuation.yield(_:)();
        (*(v52 + 8))(v51, v54);
        sub_100566034(v50, type metadata accessor for NetworkPath);
        (*(v45 + 8))(v53, v44);
LABEL_18:
        v58 = v0[35];
        v59 = v0[5];
        v60 = swift_task_alloc();
        v0[37] = v60;
        *v60 = v0;
        v60[1] = sub_100558FD0;
        v46 = v0[30];
        v49 = v0[25];
        v47 = v59;
        v48 = v58;

        return AsyncStream.Iterator.next(isolation:)(v46, v47, v48, v49);
      }

      sub_1000032A8(v0[29], &qword_1007845D0, &unk_1006AC740);
      sub_100566034(v19, type metadata accessor for NetworkPath);
    }

    sub_1000032A8(v0[16], &qword_1007875A0, &unk_1006B2A10);
    goto LABEL_11;
  }

  v4 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];

  (*(v6 + 8))(v5, v7);
  sub_1000032A8(v4, &qword_1007845D0, &unk_1006AC740);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100559864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1001F0C48(&qword_100787670, &qword_1006B2BF0);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for DownloadRequest(0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  sub_1001F0C48(&qword_100787678, &qword_1006B2BF8);
  v4[28] = swift_task_alloc();
  sub_1001F0C48(&qword_1007874D0, &qword_1006B2818);
  v4[29] = swift_task_alloc();
  v8 = sub_1001F0C48(&qword_100787680, &qword_1006B2C00);
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_100559AF4, a4, 0);
}

uint64_t sub_100559AF4()
{
  v1 = v0[29];
  v2 = v0[14];
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandStream;
  swift_beginAccess();
  sub_100005934(v2 + v3, v1, &qword_1007874D0, &qword_1006B2818);
  v4 = sub_1001F0C48(&qword_100787218, &qword_1006B2550);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[29];
    AsyncStream.makeAsyncIterator()();
    (*(v5 + 8))(v10, v4);
    v11 = sub_100562D1C(&qword_100784E18, type metadata accessor for AppInstallScheduler, byte_1006B25BC);
    v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadRequests;
    v0[33] = v11;
    v0[34] = v12;
    v0[35] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadRequests;
    v0[36] = 0;
    v13 = v0[14];
    v14 = swift_task_alloc();
    v0[37] = v14;
    *v14 = v0;
    v14[1] = sub_100559CCC;
    v9 = v0[30];
    v6 = v0[28];
    v7 = v13;
    v8 = v11;
  }

  return AsyncStream.Iterator.next(isolation:)(v6, v7, v8, v9);
}

uint64_t sub_100559CCC()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100559DDC, v1, 0);
}

int64_t sub_100559DDC()
{
  v1 = v0[28];
  if ((*(v0[26] + 48))(v1, 1, v0[25]) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);

    v2 = v0[1];

    return v2();
  }

  sub_100566A40(v1, v0[27], type metadata accessor for AppInstallScheduler.DownloadCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = v0 + 24;
    v16 = v0[24];
    v17 = v0[23];
    sub_100566A40(v0[27], v16, type metadata accessor for DownloadRequest);
    static Logger.install.getter();
    sub_100564730(v16, v17, type metadata accessor for DownloadRequest);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[23];
    if (v20)
    {
      v22 = v0[20];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = *(v21 + *(v22 + 32));
      sub_100566034(v21, type metadata accessor for DownloadRequest);
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Added download to the queue #downloadQueue", v23, 0xCu);
      sub_1000032A8(v24, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {

      sub_100566034(v21, type metadata accessor for DownloadRequest);
    }

    v33 = v0[24];
    v34 = v0[15];
    (*(v0[17] + 8))(v0[19], v0[16]);
    swift_beginAccess();
    sub_1005352E8(v33, v34);
    swift_endAccess();
    sub_1000032A8(v34, &qword_100787670, &qword_1006B2BF0);
    v26 = v0[36];
LABEL_17:
    sub_100566034(*v6, type metadata accessor for DownloadRequest);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0 + 22;
    v5 = v0[22];
    v7 = v0[21];
    sub_100566A40(v0[27], v5, type metadata accessor for DownloadRequest);
    static Logger.install.getter();
    sub_100564730(v5, v7, type metadata accessor for DownloadRequest);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[21];
    if (v10)
    {
      v12 = v0[20];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = *(v11 + *(v12 + 32));
      sub_100566034(v11, type metadata accessor for DownloadRequest);
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Removed download from the queue #downloadQueue", v13, 0xCu);
      sub_1000032A8(v14, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {

      sub_100566034(v11, type metadata accessor for DownloadRequest);
    }

    v27 = v0[35];
    v26 = v0[36];
    v28 = v0[22];
    v29 = v0[15];
    v30 = v0[14];
    (*(v0[17] + 8))(v0[18], v0[16]);
    swift_beginAccess();
    sub_1004FD298(v28, v29);
    swift_endAccess();
    sub_1000032A8(v29, &qword_100787670, &qword_1006B2BF0);
    swift_beginAccess();
    v31 = swift_task_alloc();
    *(v31 + 16) = v28;
    result = sub_10041E2B0(sub_100567AF4, v31);
    v32 = *(*(v30 + v27) + 16);
    if (v32 < result)
    {
      __break(1u);
      return result;
    }

    sub_100428FBC(result, v32);

    swift_endAccess();
    goto LABEL_17;
  }

  v26 = v0[36];
LABEL_18:
  v0[38] = v26;
  v35 = swift_task_alloc();
  v0[39] = v35;
  *v35 = v0;
  v35[1] = sub_10055A40C;

  return sub_10055A5CC();
}

uint64_t sub_10055A40C()
{
  v1 = *v0;
  v2 = *v0;

  v1[36] = v1[38];
  v3 = v1[33];
  v4 = v1[14];
  v5 = swift_task_alloc();
  v1[37] = v5;
  *v5 = v2;
  v5[1] = sub_100559CCC;
  v6 = v1[30];
  v7 = v1[28];

  return AsyncStream.Iterator.next(isolation:)(v7, v4, v3, v6);
}

uint64_t sub_10055A5CC()
{
  v1[86] = v0;
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v1[87] = swift_task_alloc();
  v2 = type metadata accessor for NWEndpoint();
  v1[88] = v2;
  v1[89] = *(v2 - 8);
  v1[90] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[91] = v3;
  v1[92] = *(v3 - 8);
  v1[93] = swift_task_alloc();
  type metadata accessor for NetworkPath(0);
  v1[94] = swift_task_alloc();
  v4 = type metadata accessor for DownloadRequest(0);
  v1[95] = v4;
  v5 = *(v4 - 8);
  v1[96] = v5;
  v1[97] = *(v5 + 64);
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[110] = v6;
  v1[111] = *(v6 - 8);
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();

  return _swift_task_switch(sub_10055A8E4, v0, 0);
}

uint64_t sub_10055A8E4()
{
  v72 = v0;
  v1 = *(v0 + 688);
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadRequests;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v4 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadRequests;
  *(v0 + 960) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadRequests;
  swift_beginAccess();
  v5 = *(*(v1 + v4) + 16);
  static Logger.install.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 688);
  if (v8)
  {
    v10 = v3 - v5;
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(*(v1 + v4) + 16);
    *(v11 + 22) = 2048;
    *(v11 + 24) = *(v9 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadLimit);

    _os_log_impl(&_mh_execute_header, v6, v7, "Polling %ld pending download(s), %ld/%ld active download(s) #downloadQueue", v11, 0x20u);
  }

  else
  {
  }

  v12 = *(v0 + 952);
  v13 = *(v0 + 888);
  v14 = *(v0 + 880);
  v15 = *(v13 + 8);
  *(v0 + 968) = v15;
  *(v0 + 976) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v14);
  v16 = *(v1 + v2);
  *(v0 + 984) = v16;
  v17 = *(v16 + 16);
  *(v0 + 992) = v17;
  *(v0 + 1000) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_activeDownloadLimit;
  *(v0 + 1008) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_installers;
  *(v0 + 1016) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_bagService;
  *(v0 + 1024) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies;

  v18 = swift_beginAccess();
  v21 = _swiftEmptyArrayStorage;
  if (v17)
  {
    v22 = 0;
    *(v0 + 1136) = enum case for NWEndpoint.url(_:);
    *(v0 + 1032) = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 1040) = v22;
      v23 = *(v0 + 984);
      if (v22 >= *(v23 + 16))
      {
        __break(1u);
        return _swift_task_switch(v18, v19, v20);
      }

      v24 = *(v0 + 1000);
      v25 = *(v0 + 960);
      v26 = *(v0 + 872);
      v27 = *(v0 + 768);
      v28 = *(v0 + 688);
      v29 = *(v27 + 80);
      *(v0 + 1140) = v29;
      v30 = *(v27 + 72);
      sub_100564730(v23 + ((v29 + 32) & ~v29) + v30 * v22, v26, type metadata accessor for DownloadRequest);
      v31 = *(v28 + v25);
      v32 = *(v31 + 16);
      if (v32 >= *(v28 + v24))
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_23;
      }

      v33 = *(v0 + 872);
      Hasher.init(_seed:)();
      v34 = *v33;
      Hasher._combine(_:)(*v33);
      v35 = Hasher._finalize()();
      v36 = -1 << *(v31 + 32);
      v37 = v35 & ~v36;
      v38 = *(v31 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8));

      if (((v38 >> v37) & 1) == 0)
      {
LABEL_22:

LABEL_23:
        v18 = sub_10055B18C;
        v19 = 0;
        v20 = 0;

        return _swift_task_switch(v18, v19, v20);
      }

      ++v22;
      v39 = ~v36;
      while (1)
      {
        v40 = *(v0 + 864);
        sub_100564730(*(v31 + 48) + v37 * v30, v40, type metadata accessor for DownloadRequest);
        v41 = *v40;
        sub_100566034(v40, type metadata accessor for DownloadRequest);
        if (v41 == v34)
        {
          break;
        }

        v37 = (v37 + 1) & v39;
        if (((*(v31 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v42 = *(v0 + 872);
      v43 = *(v0 + 792);

      static Logger.install.getter();
      sub_100564730(v42, v43, type metadata accessor for DownloadRequest);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 792);
      if (v46)
      {
        v48 = *(v0 + 760);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = *(v47 + *(v48 + 32));
        sub_100566034(v47, type metadata accessor for DownloadRequest);
        *(v49 + 4) = v51;
        *v50 = v51;
        _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Request already active #downloadQueue", v49, 0xCu);
        sub_1000032A8(v50, &qword_10077F920, &qword_10069E6A0);
      }

      else
      {

        sub_100566034(v47, type metadata accessor for DownloadRequest);
      }

      v52 = *(v0 + 992);
      v53 = *(v0 + 872);
      (*(v0 + 968))(*(v0 + 912), *(v0 + 880));
      v18 = sub_100566034(v53, type metadata accessor for DownloadRequest);
      if (v22 == v52)
      {
        v21 = *(v0 + 1032);
        goto LABEL_19;
      }
    }

    v66 = *(v0 + 872);

    sub_100566034(v66, type metadata accessor for DownloadRequest);
    v21 = *(v0 + 1032);
    if (v21[2])
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_19:

    if (v21[2])
    {
LABEL_20:
      static Logger.install.getter();

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 968);
      v58 = *(v0 + 904);
      v59 = *(v0 + 880);
      if (v56)
      {
        v70 = *(v0 + 880);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v71[0] = v61;
        *v60 = 134218242;
        *(v60 + 4) = v21[2];

        *(v60 + 12) = 2080;
        *(v0 + 680) = v21;
        v69 = v57;
        sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
        sub_100213FA0(&qword_1007803B0, &unk_10077FB40, &qword_10069E770, &protocol conformance descriptor for [A]);
        v62 = BidirectionalCollection<>.joined(separator:)();
        v64 = v63;

        v65 = sub_1002346CC(v62, v64, v71);

        *(v60 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v54, v55, "Started %ld download(s): %s #downloadQueue", v60, 0x16u);
        sub_10000710C(v61);

        v69(v58, v70);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v57(v58, v59);
      }

      goto LABEL_29;
    }
  }

LABEL_29:

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_10055B18C()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 744);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v6 = *(v0 + 704);
  v7 = *(*(v0 + 736) + 16);
  v7(v2, *(v0 + 872) + *(*(v0 + 760) + 24), v3);
  v7(v4, v2, v3);
  (*(v5 + 104))(v4, v1, v6);
  type metadata accessor for NWParameters();
  static NWParameters.udp.getter();
  type metadata accessor for NWConnection();
  swift_allocObject();
  v8 = NWConnection.init(to:using:)();
  *(v0 + 1048) = v8;
  v9 = swift_allocObject();
  *(v0 + 1056) = v9;
  *(v9 + 16) = 0;
  v10 = swift_task_alloc();
  *(v0 + 1064) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 1072) = v11;
  v12 = type metadata accessor for NWPath();
  *v11 = v0;
  v11[1] = sub_10055B370;
  v13 = *(v0 + 752);

  return withCheckedContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD000000000000025, 0x80000001006CAE40, sub_1003EED98, v10, v12);
}

uint64_t sub_10055B370()
{

  return _swift_task_switch(sub_10055B488, 0, 0);
}

uint64_t sub_10055B488()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 688);
  NWConnection.forceCancel()();

  (*(v5 + 8))(v4, v6);
  *(v0 + 1144) = sub_1001EE010(v3, *(v1 + *(v2 + 28) + 8));
  sub_100566034(v3, type metadata accessor for NetworkPath);

  return _swift_task_switch(sub_10055B590, v7, 0);
}

uint64_t sub_10055B590(uint64_t a1)
{
  v109 = v1;
  v2 = *(v1 + 872);
  if ((*(v1 + 1144) & 1) == 0)
  {
    v22 = *(v1 + 800);
    static Logger.install.getter();
    sub_100564730(v2, v22, type metadata accessor for DownloadRequest);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v1 + 800);
    if (v25)
    {
      v27 = *(v1 + 760);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = *(v26 + *(v27 + 32));
      sub_100566034(v26, type metadata accessor for DownloadRequest);
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Request policy not satisfied #downloadQueue", v28, 0xCu);
      sub_1000032A8(v29, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {

      sub_100566034(v26, type metadata accessor for DownloadRequest);
    }

    (*(v1 + 968))(*(v1 + 920), *(v1 + 880));
    v44 = *(v1 + 992);
    v45 = (*(v1 + 1040) + 1);
    sub_100566034(*(v1 + 872), type metadata accessor for DownloadRequest);
    if (v45 == v44)
    {
LABEL_12:
      v45 = *(v1 + 1032);
      goto LABEL_23;
    }

    v46 = *(v1 + 1040);
LABEL_28:
    v57 = (v46 + 1);
    while (1)
    {
      *(v1 + 1040) = v57;
      v75 = *(v1 + 984);
      if (v57 >= *(v75 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v76 = *(v1 + 1000);
      v77 = *(v1 + 960);
      v78 = *(v1 + 872);
      v79 = *(v1 + 768);
      v80 = *(v1 + 688);
      v81 = *(v79 + 80);
      *(v1 + 1140) = v81;
      v82 = *(v79 + 72);
      sub_100564730(v75 + ((v81 + 32) & ~v81) + v82 * v57, v78, type metadata accessor for DownloadRequest);
      v83 = *(v80 + v77);
      v84 = *(v83 + 16);
      if (v84 >= *(v80 + v76))
      {
        break;
      }

      if (!v84)
      {
        goto LABEL_43;
      }

      v85 = *(v1 + 872);
      Hasher.init(_seed:)();
      v86 = *v85;
      Hasher._combine(_:)(*v85);
      v87 = Hasher._finalize()();
      v88 = -1 << *(v83 + 32);
      v89 = v87 & ~v88;
      v90 = *(v83 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8));

      if (((v90 >> v89) & 1) == 0)
      {
LABEL_42:

LABEL_43:

        return _swift_task_switch(sub_10055B18C, 0, 0);
      }

      ++v57;
      v91 = ~v88;
      while (1)
      {
        v92 = *(v1 + 864);
        sub_100564730(*(v83 + 48) + v89 * v82, v92, type metadata accessor for DownloadRequest);
        v93 = *v92;
        sub_100566034(v92, type metadata accessor for DownloadRequest);
        if (v93 == v86)
        {
          break;
        }

        v89 = (v89 + 1) & v91;
        if (((*(v83 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      v94 = *(v1 + 872);
      v95 = *(v1 + 792);

      static Logger.install.getter();
      sub_100564730(v94, v95, type metadata accessor for DownloadRequest);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v1 + 792);
      if (v98)
      {
        v100 = *(v1 + 760);
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138412290;
        v103 = *(v99 + *(v100 + 32));
        sub_100566034(v99, type metadata accessor for DownloadRequest);
        *(v101 + 4) = v103;
        *v102 = v103;
        _os_log_impl(&_mh_execute_header, v96, v97, "[%@] Request already active #downloadQueue", v101, 0xCu);
        sub_1000032A8(v102, &qword_10077F920, &qword_10069E6A0);
      }

      else
      {

        sub_100566034(v99, type metadata accessor for DownloadRequest);
      }

      v45 = *(v1 + 992);
      v44 = *(v1 + 872);
      (*(v1 + 968))(*(v1 + 912), *(v1 + 880));
      sub_100566034(v44, type metadata accessor for DownloadRequest);
      if (v57 == v45)
      {
        goto LABEL_12;
      }
    }

    v104 = *(v1 + 872);

    sub_100566034(v104, type metadata accessor for DownloadRequest);
    v45 = *(v1 + 1032);
    if (*(v45 + 2))
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

  v3 = *(v1 + 1008);
  v4 = *(v1 + 688);
  v5 = *v2;
  *(v1 + 1080) = *v2;
  swift_beginAccess();
  v6 = *(v4 + v3);
  if (*(v6 + 16))
  {
    v7 = sub_10052BA64(v5);
    if (v8)
    {
      v9 = *(v1 + 872);
      v10 = *(v1 + 856);
      v11 = *(v1 + 848);
      sub_10020A980(*(v6 + 56) + 40 * v7, v1 + 112);
      swift_endAccess();
      static Logger.install.getter();
      sub_100564730(v9, v10, type metadata accessor for DownloadRequest);
      sub_100564730(v9, v11, type metadata accessor for DownloadRequest);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v1 + 856);
      v16 = *(v1 + 848);
      if (v14)
      {
        v17 = *(v1 + 760);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412546;
        v20 = *(v15 + *(v17 + 32));
        sub_100566034(v15, type metadata accessor for DownloadRequest);
        *(v18 + 4) = v20;
        *v19 = v20;
        *(v18 + 12) = 2050;
        v21 = *v16;
        sub_100566034(v16, type metadata accessor for DownloadRequest);
        *(v18 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Using installation %{public}lld to resume download #downloadQueue", v18, 0x16u);
        sub_1000032A8(v19, &qword_10077F920, &qword_10069E6A0);
      }

      else
      {
        sub_100566034(*(v1 + 848), type metadata accessor for DownloadRequest);

        sub_100566034(v15, type metadata accessor for DownloadRequest);
      }

      v49 = *(v1 + 1140);
      v50 = *(v1 + 872);
      v51 = *(v1 + 864);
      v52 = *(v1 + 840);
      v53 = *(v1 + 696);
      (*(v1 + 968))(*(v1 + 944), *(v1 + 880));
      sub_100564730(v50, v52, type metadata accessor for DownloadRequest);
      swift_beginAccess();
      sub_1003F2ED0(v51, v52);
      swift_endAccess();
      sub_100566034(v51, type metadata accessor for DownloadRequest);
      v54 = type metadata accessor for TaskPriority();
      (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
      sub_10020A980(v1 + 112, v1 + 472);
      sub_100564730(v50, v51, type metadata accessor for DownloadRequest);
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      sub_1001DFDBC((v1 + 472), v55 + 32);
      sub_100566A40(v51, v55 + ((v49 + 72) & ~v49), type metadata accessor for DownloadRequest);
      sub_1004A673C(0, 0, v53, &unk_1006B2C38, v55);

      sub_10000710C((v1 + 112));
      v44 = LogKey.stringValue.getter();
      v57 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v1 + 1032);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_52:
        v45 = sub_100009530(0, *(v45 + 2) + 1, 1, v45);
      }

      v60 = *(v45 + 2);
      v59 = *(v45 + 3);
      if (v60 >= v59 >> 1)
      {
        v45 = sub_100009530((v59 > 1), v60 + 1, 1, v45);
      }

      *(v45 + 2) = v60 + 1;
      v61 = &v45[16 * v60];
      *(v61 + 4) = v44;
      *(v61 + 5) = v57;
      v44 = *(v1 + 992);
      v62 = *(v1 + 1040) + 1;
      sub_100566034(*(v1 + 872), type metadata accessor for DownloadRequest);
      if (v62 == v44)
      {
LABEL_23:

        if (*(v45 + 2))
        {
LABEL_24:
          static Logger.install.getter();

          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();
          v65 = os_log_type_enabled(v63, v64);
          v66 = *(v1 + 968);
          v67 = *(v1 + 904);
          v68 = *(v1 + 880);
          if (v65)
          {
            v107 = *(v1 + 880);
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v108[0] = v70;
            *v69 = 134218242;
            *(v69 + 4) = *(v45 + 2);

            *(v69 + 12) = 2080;
            *(v1 + 680) = v45;
            v106 = v66;
            sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
            sub_100213FA0(&qword_1007803B0, &unk_10077FB40, &qword_10069E770, &protocol conformance descriptor for [A]);
            v71 = BidirectionalCollection<>.joined(separator:)();
            v73 = v72;

            v74 = sub_1002346CC(v71, v73, v108);

            *(v69 + 14) = v74;
            _os_log_impl(&_mh_execute_header, v63, v64, "Started %ld download(s): %s #downloadQueue", v69, 0x16u);
            sub_10000710C(v70);

            v106(v67, v107);
          }

          else
          {
            swift_bridgeObjectRelease_n();

            v66(v67, v68);
          }

LABEL_48:

          v105 = *(v1 + 8);

          return v105();
        }

LABEL_47:

        goto LABEL_48;
      }

      v46 = *(v1 + 1040);
      *(v1 + 1032) = v45;
      goto LABEL_28;
    }
  }

  v31 = *(v1 + 872);
  v32 = *(v1 + 832);
  v33 = *(v1 + 824);
  swift_endAccess();
  static Logger.install.getter();
  sub_100564730(v31, v32, type metadata accessor for DownloadRequest);
  sub_100564730(v31, v33, type metadata accessor for DownloadRequest);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v1 + 832);
  v38 = *(v1 + 824);
  if (v36)
  {
    v39 = *(v1 + 760);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412546;
    v42 = *(v37 + *(v39 + 32));
    sub_100566034(v37, type metadata accessor for DownloadRequest);
    *(v40 + 4) = v42;
    *v41 = v42;
    *(v40 + 12) = 2050;
    v43 = *v38;
    sub_100566034(v38, type metadata accessor for DownloadRequest);
    *(v40 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%@] Creating installation %{public}lld to resume download #downloadQueue", v40, 0x16u);
    sub_1000032A8(v41, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
    sub_100566034(*(v1 + 824), type metadata accessor for DownloadRequest);

    sub_100566034(v37, type metadata accessor for DownloadRequest);
  }

  (*(v1 + 968))(*(v1 + 936), *(v1 + 880));
  v47 = swift_task_alloc();
  *(v1 + 1088) = v47;
  *v47 = v1;
  v47[1] = sub_10055C470;

  return sub_100324F98(v1 + 232);
}

uint64_t sub_10055C470()
{

  if (v0)
  {

    v1 = sub_10055C660;
  }

  else
  {
    v1 = sub_10055C588;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10055C588()
{
  sub_1001DFDBC((v0 + 232), v0 + 192);
  v6 = *(v0 + 216);
  v1 = *(v0 + 216);
  v2 = sub_100006D8C((v0 + 192), v1);
  *(v0 + 176) = v6;
  v3 = sub_10020A748((v0 + 152));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_10000710C((v0 + 192));
  v4 = *(v0 + 688);

  return _swift_task_switch(sub_10055C854, v4, 0);
}

uint64_t sub_10055C660()
{
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 232) = 0u;
  sub_1000032A8(v0 + 232, &qword_100780620, &qword_1006A1F70);
  v1 = swift_task_alloc();
  *(v0 + 1096) = v1;
  *v1 = v0;
  v1[1] = sub_10055C728;

  return sub_100324A90(v0 + 152);
}

uint64_t sub_10055C728()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  v3 = *(v2 + 688);
  if (v0)
  {
    v4 = sub_10055CAB8;
  }

  else
  {
    v4 = sub_10055C854;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10055C854()
{
  v1 = v0[109];
  v2 = v0[86];
  v3 = *(v2 + 112);
  sub_100005934(v2 + v0[128], (v0 + 2), &qword_100784E10, &qword_1006AD788);
  v4 = swift_task_alloc();
  v0[139] = v4;
  v4[2] = v1;
  v4[3] = v0 + 2;
  v4[4] = v0 + 19;
  v5 = swift_task_alloc();
  v0[140] = v5;
  *v5 = v0;
  v5[1] = sub_10055C974;

  return sub_1003B68D0((v0 + 34), sub_100567B0C, v4, v3);
}

uint64_t sub_10055C974()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v3 = *(v2 + 688);

    v4 = sub_10055DF64;
  }

  else
  {
    v3 = *(v2 + 688);

    sub_1000032A8(v2 + 16, &qword_100784E10, &qword_1006AD788);
    v4 = sub_10055D398;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10055CAB8(uint64_t a1)
{
  v73 = v1;
  v2 = *(v1 + 872);
  v3 = *(v1 + 784);
  static Logger.install.getter();
  sub_100564730(v2, v3, type metadata accessor for DownloadRequest);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 968);
  v8 = *(v1 + 896);
  v9 = *(v1 + 880);
  v10 = *(v1 + 784);
  if (v6)
  {
    v11 = *(v1 + 760);
    v12 = swift_slowAlloc();
    v70 = v7;
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    v14 = *(v10 + *(v11 + 32));
    sub_100566034(v10, type metadata accessor for DownloadRequest);
    *(v12 + 4) = v14;
    *v13 = v14;
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    v13[1] = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failed to resume request: %{public}@ #downloadQueue", v12, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
    v7 = v70;
  }

  else
  {

    sub_100566034(v10, type metadata accessor for DownloadRequest);
  }

  v7(v8, v9);
  v16 = *(v1 + 1032);
  v17 = *(v1 + 992);
  v18 = *(v1 + 1040) + 1;
  v19 = sub_100566034(*(v1 + 872), type metadata accessor for DownloadRequest);
  if (v18 != v17)
  {
    v34 = *(v1 + 1040) + 1;
    *(v1 + 1032) = v16;
    while (1)
    {
      *(v1 + 1040) = v34;
      v35 = *(v1 + 984);
      if (v34 >= *(v35 + 16))
      {
        __break(1u);
        return _swift_task_switch(v19, v20, v21);
      }

      v36 = *(v1 + 1000);
      v37 = *(v1 + 960);
      v38 = *(v1 + 872);
      v39 = *(v1 + 768);
      v40 = *(v1 + 688);
      v41 = *(v39 + 80);
      *(v1 + 1140) = v41;
      v42 = *(v39 + 72);
      sub_100564730(v35 + ((v41 + 32) & ~v41) + v42 * v34, v38, type metadata accessor for DownloadRequest);
      v43 = *(v40 + v37);
      v44 = *(v43 + 16);
      if (v44 >= *(v40 + v36))
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_23;
      }

      v45 = *(v1 + 872);
      Hasher.init(_seed:)();
      v46 = *v45;
      Hasher._combine(_:)(*v45);
      v47 = Hasher._finalize()();
      v48 = -1 << *(v43 + 32);
      v49 = v47 & ~v48;
      v50 = *(v43 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8));

      if (((v50 >> v49) & 1) == 0)
      {
LABEL_22:

LABEL_23:
        v19 = sub_10055B18C;
        v20 = 0;
        v21 = 0;

        return _swift_task_switch(v19, v20, v21);
      }

      ++v34;
      v51 = ~v48;
      while (1)
      {
        v52 = *(v1 + 864);
        sub_100564730(*(v43 + 48) + v49 * v42, v52, type metadata accessor for DownloadRequest);
        v53 = *v52;
        sub_100566034(v52, type metadata accessor for DownloadRequest);
        if (v53 == v46)
        {
          break;
        }

        v49 = (v49 + 1) & v51;
        if (((*(v43 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v54 = *(v1 + 872);
      v55 = *(v1 + 792);

      static Logger.install.getter();
      sub_100564730(v54, v55, type metadata accessor for DownloadRequest);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v1 + 792);
      if (v58)
      {
        v60 = *(v1 + 760);
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        v63 = *(v59 + *(v60 + 32));
        sub_100566034(v59, type metadata accessor for DownloadRequest);
        *(v61 + 4) = v63;
        *v62 = v63;
        _os_log_impl(&_mh_execute_header, v56, v57, "[%@] Request already active #downloadQueue", v61, 0xCu);
        sub_1000032A8(v62, &qword_10077F920, &qword_10069E6A0);
      }

      else
      {

        sub_100566034(v59, type metadata accessor for DownloadRequest);
      }

      v64 = *(v1 + 992);
      v65 = *(v1 + 872);
      (*(v1 + 968))(*(v1 + 912), *(v1 + 880));
      v19 = sub_100566034(v65, type metadata accessor for DownloadRequest);
      if (v34 == v64)
      {
        v16 = *(v1 + 1032);
        goto LABEL_5;
      }
    }

    v66 = *(v1 + 872);

    sub_100566034(v66, type metadata accessor for DownloadRequest);
    v16 = *(v1 + 1032);
    if (*(v16 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_5:

  if (!*(v16 + 16))
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_6:
  static Logger.install.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v1 + 968);
  v26 = *(v1 + 904);
  v27 = *(v1 + 880);
  if (v24)
  {
    v71 = *(v1 + 880);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v72[0] = v29;
    *v28 = 134218242;
    *(v28 + 4) = *(v16 + 16);

    *(v28 + 12) = 2080;
    *(v1 + 680) = v16;
    v69 = v25;
    sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40, &qword_10069E770, &protocol conformance descriptor for [A]);
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v33 = sub_1002346CC(v30, v32, v72);

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Started %ld download(s): %s #downloadQueue", v28, 0x16u);
    sub_10000710C(v29);

    v69(v26, v71);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v25(v26, v27);
  }

LABEL_29:

  v67 = *(v1 + 8);

  return v67();
}

uint64_t sub_10055D398()
{
  v79 = v0;
  v1 = *(v0 + 1080);
  sub_100005934(v0 + 272, v0 + 312, &qword_100787560, &qword_1006B2950);
  swift_beginAccess();
  sub_1005B7C44(v0 + 312, v1);
  swift_endAccess();
  sub_100005934(v0 + 272, v0 + 392, &qword_100787560, &qword_1006B2950);
  if (*(v0 + 416))
  {
    v2 = *(v0 + 1140);
    v3 = *(v0 + 872);
    v4 = *(v0 + 864);
    v5 = *(v0 + 840);
    v6 = *(v0 + 696);
    sub_1001DFDBC((v0 + 392), v0 + 352);
    sub_100564730(v3, v5, type metadata accessor for DownloadRequest);
    swift_beginAccess();
    sub_1003F2ED0(v4, v5);
    swift_endAccess();
    sub_100566034(v4, type metadata accessor for DownloadRequest);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10020A980(v0 + 352, v0 + 432);
    sub_100564730(v3, v4, type metadata accessor for DownloadRequest);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    sub_1001DFDBC((v0 + 432), v8 + 32);
    sub_100566A40(v4, v8 + ((v2 + 72) & ~v2), type metadata accessor for DownloadRequest);
    sub_1004A673C(0, 0, v6, &unk_1006B2C28, v8);

    sub_10000710C((v0 + 352));
    sub_1000032A8(v0 + 272, &qword_100787560, &qword_1006B2950);
    sub_10000710C((v0 + 152));
    v9 = LogKey.stringValue.getter();
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 1032);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_41:
      v13 = sub_100009530(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_100009530((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v9;
    *(v16 + 5) = v11;
    v9 = *(v0 + 992);
    v17 = *(v0 + 1040) + 1;
    sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
    if (v17 != v9)
    {
      v18 = *(v0 + 1040);
      *(v0 + 1032) = v13;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = *(v0 + 872);
    v20 = *(v0 + 816);
    v21 = *(v0 + 808);
    sub_1000032A8(v0 + 392, &qword_100787560, &qword_1006B2950);
    static Logger.install.getter();
    sub_100564730(v19, v20, type metadata accessor for DownloadRequest);
    sub_100564730(v19, v21, type metadata accessor for DownloadRequest);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 816);
    v26 = *(v0 + 808);
    if (v24)
    {
      v27 = *(v0 + 760);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      v30 = *(v25 + *(v27 + 32));
      sub_100566034(v25, type metadata accessor for DownloadRequest);
      *(v28 + 4) = v30;
      *v29 = v30;
      *(v28 + 12) = 2050;
      v31 = *v26;
      sub_100566034(v26, type metadata accessor for DownloadRequest);
      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Received unexpected download resumption for '%{public}lld' #downloadQueue", v28, 0x16u);
      sub_1000032A8(v29, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {
      sub_100566034(*(v0 + 808), type metadata accessor for DownloadRequest);

      sub_100566034(v25, type metadata accessor for DownloadRequest);
    }

    (*(v0 + 968))(*(v0 + 928), *(v0 + 880));
    sub_1000032A8(v0 + 272, &qword_100787560, &qword_1006B2950);
    sub_10000710C((v0 + 152));
    v9 = *(v0 + 992);
    v13 = (*(v0 + 1040) + 1);
    sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
    if (v13 != v9)
    {
      v18 = *(v0 + 1040);
LABEL_16:
      v11 = (v18 + 1);
      while (1)
      {
        *(v0 + 1040) = v11;
        v44 = *(v0 + 984);
        if (v11 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v45 = *(v0 + 1000);
        v46 = *(v0 + 960);
        v47 = *(v0 + 872);
        v48 = *(v0 + 768);
        v49 = *(v0 + 688);
        v50 = *(v48 + 80);
        *(v0 + 1140) = v50;
        v51 = *(v48 + 72);
        sub_100564730(v44 + ((v50 + 32) & ~v50) + v51 * v11, v47, type metadata accessor for DownloadRequest);
        v52 = *(v49 + v46);
        v53 = *(v52 + 16);
        if (v53 >= *(v49 + v45))
        {
          break;
        }

        if (!v53)
        {
          goto LABEL_31;
        }

        v54 = *(v0 + 872);
        Hasher.init(_seed:)();
        v55 = *v54;
        Hasher._combine(_:)(*v54);
        v56 = Hasher._finalize()();
        v57 = -1 << *(v52 + 32);
        v58 = v56 & ~v57;
        v59 = *(v52 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8));

        if (((v59 >> v58) & 1) == 0)
        {
LABEL_30:

LABEL_31:

          return _swift_task_switch(sub_10055B18C, 0, 0);
        }

        ++v11;
        v60 = ~v57;
        while (1)
        {
          v61 = *(v0 + 864);
          sub_100564730(*(v52 + 48) + v58 * v51, v61, type metadata accessor for DownloadRequest);
          v62 = *v61;
          sub_100566034(v61, type metadata accessor for DownloadRequest);
          if (v62 == v55)
          {
            break;
          }

          v58 = (v58 + 1) & v60;
          if (((*(v52 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v63 = *(v0 + 872);
        v64 = *(v0 + 792);

        static Logger.install.getter();
        sub_100564730(v63, v64, type metadata accessor for DownloadRequest);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 792);
        if (v67)
        {
          v69 = *(v0 + 760);
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          v72 = *(v68 + *(v69 + 32));
          sub_100566034(v68, type metadata accessor for DownloadRequest);
          *(v70 + 4) = v72;
          *v71 = v72;
          _os_log_impl(&_mh_execute_header, v65, v66, "[%@] Request already active #downloadQueue", v70, 0xCu);
          sub_1000032A8(v71, &qword_10077F920, &qword_10069E6A0);
        }

        else
        {

          sub_100566034(v68, type metadata accessor for DownloadRequest);
        }

        v13 = *(v0 + 992);
        v9 = *(v0 + 872);
        (*(v0 + 968))(*(v0 + 912), *(v0 + 880));
        sub_100566034(v9, type metadata accessor for DownloadRequest);
        if (v11 == v13)
        {
          goto LABEL_11;
        }
      }

      v73 = *(v0 + 872);

      sub_100566034(v73, type metadata accessor for DownloadRequest);
      v13 = *(v0 + 1032);
      if (*(v13 + 2))
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }

LABEL_11:
    v13 = *(v0 + 1032);
  }

  if (*(v13 + 2))
  {
LABEL_13:
    static Logger.install.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 968);
    v36 = *(v0 + 904);
    v37 = *(v0 + 880);
    if (v34)
    {
      v77 = *(v0 + 880);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78[0] = v39;
      *v38 = 134218242;
      *(v38 + 4) = *(v13 + 2);

      *(v38 + 12) = 2080;
      *(v0 + 680) = v13;
      v76 = v35;
      sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
      sub_100213FA0(&qword_1007803B0, &unk_10077FB40, &qword_10069E770, &protocol conformance descriptor for [A]);
      v40 = BidirectionalCollection<>.joined(separator:)();
      v42 = v41;

      v43 = sub_1002346CC(v40, v42, v78);

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v32, v33, "Started %ld download(s): %s #downloadQueue", v38, 0x16u);
      sub_10000710C(v39);

      v76(v36, v77);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v35(v36, v37);
    }

    goto LABEL_37;
  }

LABEL_36:

LABEL_37:

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_10055DF64()
{
  v72 = v0;
  sub_1000032A8(v0 + 16, &qword_100784E10, &qword_1006AD788);
  sub_10000710C((v0 + 152));
  v1 = *(v0 + 872);
  v2 = *(v0 + 784);
  static Logger.install.getter();
  sub_100564730(v1, v2, type metadata accessor for DownloadRequest);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 968);
  v7 = *(v0 + 896);
  v8 = *(v0 + 880);
  v9 = *(v0 + 784);
  if (v5)
  {
    v10 = *(v0 + 760);
    v11 = swift_slowAlloc();
    v69 = v6;
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = *(v9 + *(v10 + 32));
    sub_100566034(v9, type metadata accessor for DownloadRequest);
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to resume request: %{public}@ #downloadQueue", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
    v6 = v69;
  }

  else
  {

    sub_100566034(v9, type metadata accessor for DownloadRequest);
  }

  v6(v7, v8);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 992);
  v17 = *(v0 + 1040) + 1;
  v18 = sub_100566034(*(v0 + 872), type metadata accessor for DownloadRequest);
  if (v17 != v16)
  {
    v33 = *(v0 + 1040) + 1;
    *(v0 + 1032) = v15;
    while (1)
    {
      *(v0 + 1040) = v33;
      v34 = *(v0 + 984);
      if (v33 >= *(v34 + 16))
      {
        __break(1u);
        return _swift_task_switch(v18, v19, v20);
      }

      v35 = *(v0 + 1000);
      v36 = *(v0 + 960);
      v37 = *(v0 + 872);
      v38 = *(v0 + 768);
      v39 = *(v0 + 688);
      v40 = *(v38 + 80);
      *(v0 + 1140) = v40;
      v41 = *(v38 + 72);
      sub_100564730(v34 + ((v40 + 32) & ~v40) + v41 * v33, v37, type metadata accessor for DownloadRequest);
      v42 = *(v39 + v36);
      v43 = *(v42 + 16);
      if (v43 >= *(v39 + v35))
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_23;
      }

      v44 = *(v0 + 872);
      Hasher.init(_seed:)();
      v45 = *v44;
      Hasher._combine(_:)(*v44);
      v46 = Hasher._finalize()();
      v47 = -1 << *(v42 + 32);
      v48 = v46 & ~v47;
      v49 = *(v42 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8));

      if (((v49 >> v48) & 1) == 0)
      {
LABEL_22:

LABEL_23:
        v18 = sub_10055B18C;
        v19 = 0;
        v20 = 0;

        return _swift_task_switch(v18, v19, v20);
      }

      ++v33;
      v50 = ~v47;
      while (1)
      {
        v51 = *(v0 + 864);
        sub_100564730(*(v42 + 48) + v48 * v41, v51, type metadata accessor for DownloadRequest);
        v52 = *v51;
        sub_100566034(v51, type metadata accessor for DownloadRequest);
        if (v52 == v45)
        {
          break;
        }

        v48 = (v48 + 1) & v50;
        if (((*(v42 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v53 = *(v0 + 872);
      v54 = *(v0 + 792);

      static Logger.install.getter();
      sub_100564730(v53, v54, type metadata accessor for DownloadRequest);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 792);
      if (v57)
      {
        v59 = *(v0 + 760);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = *(v58 + *(v59 + 32));
        sub_100566034(v58, type metadata accessor for DownloadRequest);
        *(v60 + 4) = v62;
        *v61 = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "[%@] Request already active #downloadQueue", v60, 0xCu);
        sub_1000032A8(v61, &qword_10077F920, &qword_10069E6A0);
      }

      else
      {

        sub_100566034(v58, type metadata accessor for DownloadRequest);
      }

      v63 = *(v0 + 992);
      v64 = *(v0 + 872);
      (*(v0 + 968))(*(v0 + 912), *(v0 + 880));
      v18 = sub_100566034(v64, type metadata accessor for DownloadRequest);
      if (v33 == v63)
      {
        v15 = *(v0 + 1032);
        goto LABEL_5;
      }
    }

    v65 = *(v0 + 872);

    sub_100566034(v65, type metadata accessor for DownloadRequest);
    v15 = *(v0 + 1032);
    if (*(v15 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_5:

  if (!*(v15 + 16))
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_6:
  static Logger.install.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 968);
  v25 = *(v0 + 904);
  v26 = *(v0 + 880);
  if (v23)
  {
    v70 = *(v0 + 880);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[0] = v28;
    *v27 = 134218242;
    *(v27 + 4) = *(v15 + 16);

    *(v27 + 12) = 2080;
    *(v0 + 680) = v15;
    v68 = v24;
    sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40, &qword_10069E770, &protocol conformance descriptor for [A]);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32 = sub_1002346CC(v29, v31, v71);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Started %ld download(s): %s #downloadQueue", v27, 0x16u);
    sub_10000710C(v28);

    v68(v25, v70);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v24(v25, v26);
  }

LABEL_29:

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10055E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10055E970, 0, 0);
}

uint64_t sub_10055E970()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 24);
  v6 = sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_100564730(v5, v2, type metadata accessor for DownloadRequest);
  swift_storeEnumTagMultiPayload();
  v7 = *v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100564730(v2, v1, type metadata accessor for AppInstallScheduler.ParkReason);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  sub_100566A40(v1, v10 + v9, type metadata accessor for AppInstallScheduler.ParkReason);

  sub_100494DB4(0, 0, v4, &unk_1006B2C40, v10);

  sub_100566034(v2, type metadata accessor for AppInstallScheduler.ParkReason);

  v11 = *(v0 + 8);

  return v11();
}

void sub_10055EB44(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  type metadata accessor for AppInstallEntity.Entity();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = v9;
  v13 = [v11 initWithPersistentID:v10 onConnection:v12];
  if (![v13 existsInDatabase])
  {
    goto LABEL_4;
  }

  sub_100533D00(34, v13);
  if (v5)
  {

LABEL_4:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  sub_100005934(a3, v24, &qword_100784E10, &qword_1006AD788);
  if (v24[3])
  {
    v14 = sub_1005AFEA0(v12, v10);
    if (v14)
    {
      v15 = v14;
      v16 = sub_100533B84(7, v14);
      if ((v16 & 1) == 0)
      {
        sub_100231CE8(v24, v20);
        sub_10020A980(a4, v19);
        v17 = type metadata accessor for IPA_AppInstall(0);
        swift_allocObject();
        v18 = sub_1003D557C(v10, v12, v20, v19);
        v22 = v17;
        v23 = &off_100763A38;

        *&v21 = v18;
        sub_1001DFDBC(&v21, a5);
        sub_10000710C(v24);
        return;
      }

      type metadata accessor for InternalError(0);
      sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {

      type metadata accessor for InternalError(0);
      sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_10000710C(v24);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10055EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10055EF5C, 0, 0);
}

uint64_t sub_10055EF5C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 24);
  v6 = sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_100564730(v5, v2, type metadata accessor for DownloadRequest);
  swift_storeEnumTagMultiPayload();
  v7 = *v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100564730(v2, v1, type metadata accessor for AppInstallScheduler.ParkReason);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  sub_100566A40(v1, v10 + v9, type metadata accessor for AppInstallScheduler.ParkReason);

  sub_100494DB4(0, 0, v4, &unk_1006B2C48, v10);

  sub_100566034(v2, type metadata accessor for AppInstallScheduler.ParkReason);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10055F130()
{

  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_bagService;
  v2 = type metadata accessor for BagService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_dependencies, &qword_100784E10, &qword_1006AD788);

  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandStream, &qword_1007874D0, &qword_1006B2818);
  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation, &qword_1007873C0, &qword_1006B2660);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10055F260()
{
  sub_10055F130();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10055F2B4(uint64_t a1)
{
  type metadata accessor for BagService();
  if (v1 <= 0x3F)
  {
    sub_10037F848(319, &qword_100787210, &qword_100787218, &qword_1006B2550);
    if (v2 <= 0x3F)
    {
      sub_10037F848(319, &qword_100787220, &unk_100787228, &qword_1006B2558);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10055F44C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  sub_1001F0C48(&qword_1007873B8, &qword_1006B2658);
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for AppInstallScheduler.DownloadCommand(0);
  v3[25] = swift_task_alloc();
  sub_1001F0C48(&qword_1007873C0, &qword_1006B2660);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_1007873C8, &qword_1006B2668);
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  type metadata accessor for DownloadRequest(0);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = sub_1001F0C48(&qword_1007873D0, &qword_1006B2670);
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_10055F730, v2, 0);
}

uint64_t sub_10055F730()
{
  v96 = v0;
  sub_100564730(v0[21], v0[45], type metadata accessor for AppInstallScheduler.ParkReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v0[27];
    v44 = v0[22];
    sub_100566A40(v0[45], v0[33], type metadata accessor for DownloadRequest);
    v45 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;
    swift_beginAccess();
    sub_100005934(v44 + v45, v43, &qword_1007873C0, &qword_1006B2660);
    v36 = sub_1001F0C48(&unk_100787228, &qword_1006B2558);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v43, 1, v36);
    if (result != 1)
    {
      v38 = v0[33];
      v39 = v0[31];
      v41 = v0[28];
      v40 = v0[29];
      v42 = v0[27];
      sub_100564730(v38, v0[25], type metadata accessor for DownloadRequest);
      goto LABEL_25;
    }

LABEL_53:
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v33 = v0[26];
    v34 = v0[22];
    sub_100566A40(v0[45], v0[32], type metadata accessor for DownloadRequest);
    v35 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_downloadCommandContinuation;
    swift_beginAccess();
    sub_100005934(v34 + v35, v33, &qword_1007873C0, &qword_1006B2660);
    v36 = sub_1001F0C48(&unk_100787228, &qword_1006B2558);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v33, 1, v36);
    if (result != 1)
    {
      v38 = v0[32];
      v40 = v0[29];
      v39 = v0[30];
      v41 = v0[28];
      v42 = v0[26];
      sub_100564730(v38, v0[25], type metadata accessor for DownloadRequest);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v40 + 8))(v39, v41);
      sub_100566034(v38, type metadata accessor for DownloadRequest);
      (*(v37 + 8))(v42, v36);
LABEL_48:

      v83 = v0[1];

      return v83();
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v46 = v0[44];
    v47 = v0[21];
    static Logger.install.getter();
    sub_100564730(v47, v46, type metadata accessor for AppInstallScheduler.ParkReason);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[44];
    if (!v50)
    {
      v66 = v0[37];
      v65 = v0[38];
      v67 = v0[36];

      sub_100566034(v51, type metadata accessor for AppInstallScheduler.ParkReason);
      (*(v66 + 8))(v65, v67);
LABEL_47:
      v78 = v0[45];
      v79 = v0[40];
      v80 = v0[41];
      v81 = v0[23];
      v82 = v0[20];
      sub_100564730(v0[21], v81, type metadata accessor for AppInstallScheduler.ParkReason);
      (*(v80 + 56))(v81, 0, 1, v79);
      swift_beginAccess();
      sub_1005B7FC4(v81, v82);
      swift_endAccess();
      sub_100566034(v78, type metadata accessor for AppInstallScheduler.ParkReason);
      goto LABEL_48;
    }

    v88 = v0 + 43;
    v53 = v0[42];
    v52 = v0[43];
    v54 = v0[20];
    v55 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v94[0] = v93;
    *v55 = 134218242;
    *(v55 + 4) = v54;
    *(v55 + 12) = 2082;
    sub_100564730(v51, v52, type metadata accessor for AppInstallScheduler.ParkReason);
    sub_100564730(v52, v53, type metadata accessor for AppInstallScheduler.ParkReason);
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 > 2)
    {
      v68 = 0x646573756170;
      v69 = 0xE800000000000000;
      v70 = 0x6E776F6474756873;
      if (v56 != 4)
      {
        v70 = 0x74726174736572;
        v69 = 0xE700000000000000;
      }

      if (v56 != 3)
      {
        v68 = v70;
      }

      v91 = v68;
      if (v56 == 3)
      {
        v71 = 0xE600000000000000;
      }

      else
      {
        v71 = v69;
      }
    }

    else
    {
      v57 = v0 + 42;
      if (!v56)
      {
        v91 = 0xD000000000000010;
        v58 = *v88;
        v59 = "enqueue download";
        goto LABEL_43;
      }

      if (v56 == 1)
      {
        v91 = 0xD000000000000010;
        v58 = *v88;
        v59 = "dequeue download";
LABEL_43:
        v71 = (v59 - 32) | 0x8000000000000000;
        sub_100566034(v58, type metadata accessor for AppInstallScheduler.ParkReason);
        v72 = v0 + 44;
LABEL_46:
        v73 = *v57;
        v74 = v0[37];
        v75 = v0[38];
        v76 = v0[36];
        sub_100566034(*v72, type metadata accessor for AppInstallScheduler.ParkReason);
        sub_100566034(v73, type metadata accessor for AppInstallScheduler.ParkReason);
        v77 = sub_1002346CC(v91, v71, v94);

        *(v55 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v48, v49, "Parking %lld for reason: %{public}s", v55, 0x16u);
        sub_10000710C(v93);

        (*(v74 + 8))(v75, v76);
        goto LABEL_47;
      }

      v71 = 0xE700000000000000;
      v91 = 0x6C6C6174736E69;
    }

    v72 = v0 + 43;
    v57 = v0 + 44;
    goto LABEL_46;
  }

  static Logger.install.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Shutting down %lld", v5, 0xCu);
  }

  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];
  v86 = v0[34];
  v9 = v0[22];
  v10 = v0[20];

  (*(v8 + 8))(v6, v7);
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  swift_beginAccess();
  sub_1005B7C44(v94, v10);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19AppInstallScheduler_coordinatorMap;
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v10;

  v13 = sub_100566600(v12, sub_100566094);

  v14 = v13 + 64;
  v15 = -1;
  v16 = -1 << v13[32];
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v13 + 8);
  v18 = (63 - v16) >> 6;
  v87 = v13;

  v20 = 0;
  v84 = v11;
  v85 = v9;
  while (v17)
  {
LABEL_16:
    v23 = v0[35];
    v24 = __clz(__rbit64(v17)) | (v20 << 6);
    v25 = *(v87 + 6);
    v26 = type metadata accessor for UUID();
    v89 = *(*(v26 - 8) + 72);
    v90 = *(v26 - 8);
    v92 = v26;
    (*(v90 + 16))(v23, v25 + v89 * v24);
    *(v23 + *(v86 + 48)) = *(*(v87 + 7) + 8 * v24);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v27 = v0[35];
    swift_beginAccess();
    v28 = sub_1005225DC(v27);
    if (v29)
    {
      v30 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v85 + v84);
      *&v94[0] = v32;
      *(v85 + v84) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1005C6994();
        v32 = *&v94[0];
      }

      (*(v90 + 8))(*(v32 + 48) + v30 * v89, v92);
      sub_1005C11B4(v30, v32);
      *(v85 + v84) = v32;
    }

    v17 &= v17 - 1;
    v21 = v0[35];
    swift_endAccess();
    result = sub_1000032A8(v21, &qword_1007873D0, &qword_1006B2670);
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v22 >= v18)
    {
      break;
    }

    v17 = *&v14[8 * v22];
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_16;
    }
  }

  v60 = v0[22];
  v61 = v0[20];

  v62 = *(v60 + 112);
  v63 = swift_task_alloc();
  v0[46] = v63;
  *(v63 + 16) = v61;
  v64 = swift_task_alloc();
  v0[47] = v64;
  *v64 = v0;
  v64[1] = sub_1005602BC;

  return sub_1005316D0(sub_100566780, v63, v62);
}

uint64_t sub_1005602BC()
{
  v2 = *v1;

  v3 = *(v2 + 176);
  if (v0)
  {

    v4 = sub_10056833C;
  }

  else
  {

    v4 = sub_100560418;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100560418()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100560534(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a2 onConnection:v11];
  if ([v12 existsInDatabase])
  {
    v13 = sub_100535BE0(22, v12);
    if (v13)
    {
      v14 = v13;
      v24 = v8;
      static Logger.install.getter();
      v15 = v14;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v23[1] = v3;
        v19 = v18;
        v20 = swift_slowAlloc();
        v23[0] = a3;
        v21 = v20;
        *v19 = 138412290;
        *(v19 + 4) = v15;
        *v20 = v14;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Shutting down", v19, 0xCu);
        sub_1000032A8(v21, &qword_10077F920, &qword_10069E6A0);
        a3 = v23[0];
      }

      else
      {
        v22 = v16;
        v16 = v15;
      }

      (*(v24 + 8))(v10, v7);
    }

    sub_100235C9C(v12);
  }

  *a3 = 0;
}

uint64_t sub_100560774(uint64_t a1)
{
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100564730(v2, v4, type metadata accessor for AppInstallScheduler.ParkReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0x646573756170;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x6E776F6474756873;
    }

    else
    {
      return 0x74726174736572;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    return 0x6C6C6174736E69;
  }

  else
  {
    sub_100566034(v4, type metadata accessor for AppInstallScheduler.ParkReason);
    return 0xD000000000000010;
  }
}

uint64_t sub_1005608F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  return _swift_task_switch(sub_100560918, 0, 0);
}

uint64_t sub_100560918()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[3];
  }

  else
  {
    v3 = v0[4];
    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);
    v2 = v4;
    os_unfair_lock_unlock((v3 + 24));
    if (!v4)
    {
      goto LABEL_6;
    }

    v1 = v0[3];
  }

  v5 = v1;
  sub_100625B04();

LABEL_6:
  v9 = (v0[5] + *v0[5]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100568300;
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_100560A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  return _swift_task_switch(sub_100560A84, 0, 0);
}

uint64_t sub_100560A84()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[3];
  }

  else
  {
    v3 = v0[4];
    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);
    v2 = v4;
    os_unfair_lock_unlock((v3 + 24));
    if (!v4)
    {
      goto LABEL_6;
    }

    v1 = v0[3];
  }

  v5 = v1;
  sub_100625B04();

LABEL_6:
  v9 = (v0[5] + *v0[5]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100560BC8;
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_100560BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100560CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  v6 = type metadata accessor for Logger();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[12] = a4;

  return _swift_task_switch(sub_100560E14, 0, 0);
}

uint64_t sub_100560E14()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  v4 = *(*(v0[14] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 120);
  v0[22] = v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *(v5 + 16) = v0 + 12;
  v6 = v4;

  return _swift_task_switch(sub_100560F00, 0, 0);
}

uint64_t sub_100560F00()
{
  sub_100005934(*(v0 + 168), *(v0 + 160), &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 192) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Start", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 176);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;
    v5 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_100231C24((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 200) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  sub_100005934(*(v0 + 160), v9, &unk_10077F8E0, &qword_10069F380);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 160), &unk_10077F8E0, &qword_10069F380);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v23 = *(v0 + 160);
    (*(v15 + 32))(v13, *(v0 + 152), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Start", 15, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0, &qword_10069F380);
  }

  *(v0 + 216) = v12;
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 224) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B2620;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_100561438;
  v21 = *(v0 + 104);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_10069F3A0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100561438()
{

  if (v0)
  {

    v1 = sub_100561724;
  }

  else
  {

    v1 = sub_1005615F8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1005615F8()
{
  v1 = *(v0 + 168);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100561724()
{
}

uint64_t sub_1005617C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  v6 = type metadata accessor for Logger();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[12] = a4;

  return _swift_task_switch(sub_100561918, 0, 0);
}

uint64_t sub_100561918()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  v4 = *(*(v0[14] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 120);
  v0[22] = v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *(v5 + 16) = v0 + 12;
  v6 = v4;

  return _swift_task_switch(sub_100561A04, 0, 0);
}

uint64_t sub_100561A04()
{
  sub_100005934(*(v0 + 168), *(v0 + 160), &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 192) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Cancel", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 176);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;
    v5 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 200) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  sub_100005934(*(v0 + 160), v9, &unk_10077F8E0, &qword_10069F380);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 160), &unk_10077F8E0, &qword_10069F380);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v23 = *(v0 + 160);
    (*(v15 + 32))(v13, *(v0 + 152), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Cancel", 16, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0, &qword_10069F380);
  }

  *(v0 + 216) = v12;
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 224) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B2978;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_100561F3C;
  v21 = *(v0 + 104);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B2980, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100561F3C()
{

  if (v0)
  {

    v1 = sub_100568344;
  }

  else
  {

    v1 = sub_100568488;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1005620FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  v7 = type metadata accessor for Logger();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[12] = a4;

  return _swift_task_switch(sub_100562258, 0, 0);
}

uint64_t sub_100562258()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = *(*(v0[14] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 120);
  v0[23] = v5;
  (*(v3 + 56))(v1, 1, 1, v2);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *(v6 + 16) = v0 + 12;
  *(v6 + 24) = v4;
  v7 = v5;

  return _swift_task_switch(sub_100562344, 0, 0);
}

uint64_t sub_100562344()
{
  sub_100005934(*(v0 + 176), *(v0 + 168), &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 200) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Resume", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 184);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;
    v5 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 208) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 216) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 160);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  sub_100005934(*(v0 + 168), v9, &unk_10077F8E0, &qword_10069F380);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 168), &unk_10077F8E0, &qword_10069F380);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 128);
    v23 = *(v0 + 168);
    (*(v15 + 32))(v13, *(v0 + 160), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Resume", 16, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0, &qword_10069F380);
  }

  *(v0 + 224) = v12;
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B2BB8;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *v20 = v0;
  v20[1] = sub_10056287C;
  v21 = *(v0 + 104);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B2BC0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10056287C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100562B5C;
  }

  else
  {
    v2 = sub_100562A2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100562A2C()
{
  v1 = *(v0 + 176);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100562B5C()
{
  v1 = *(v0 + 176);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  return _swift_task_switch(sub_100562C54, 0, 0);
}

uint64_t sub_100562C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100562D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100562D84(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  sub_100005934(a1 + 32, &v45, &qword_100781448, &unk_1006B20C0);
  v42 = v45;
  v43 = v46;
  v44 = v47;
  sub_1001F6498(v48, v41);
  v7 = *a3;
  v8 = sub_1005223D0(&v42);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v14) = v9;
  if (v7[3] < v13)
  {
    sub_1005B9ECC(v13, v6 & 1);
    v8 = sub_1005223D0(&v42);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v8;
  sub_1005C3FB4();
  v8 = v18;
  if (v14)
  {
LABEL_8:
    v16 = swift_allocError();
    swift_willThrow();
    v49 = v16;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000710C(v41);
      sub_10039DCC4(&v42);
    }

    goto LABEL_25;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v20 = v19[6] + 40 * v8;
  v21 = v42;
  v22 = v43;
  *(v20 + 32) = v44;
  *v20 = v21;
  *(v20 + 16) = v22;
  sub_1001F6498(v41, (v19[7] + 32 * v8));
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v12)
  {
    v19[2] = v24;
    if (v4 != 1)
    {
      v6 = a1 + 104;
      v14 = 1;
      while (v14 < *(a1 + 16))
      {
        sub_100005934(v6, &v45, &qword_100781448, &unk_1006B20C0);
        v42 = v45;
        v43 = v46;
        v44 = v47;
        sub_1001F6498(v48, v41);
        v25 = *a3;
        v26 = sub_1005223D0(&v42);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v12 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v12)
        {
          goto LABEL_22;
        }

        v31 = v27;
        if (v25[3] < v30)
        {
          sub_1005B9ECC(v30, 1);
          v26 = sub_1005223D0(&v42);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v31)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v34 = v33[6] + 40 * v26;
        v35 = v42;
        v36 = v43;
        *(v34 + 32) = v44;
        *v34 = v35;
        *(v34 + 16) = v36;
        sub_1001F6498(v41, (v33[7] + 32 * v26));
        v37 = v33[2];
        v12 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v12)
        {
          goto LABEL_23;
        }

        ++v14;
        v33[2] = v38;
        v6 += 72;
        if (v4 == v14)
        {
        }
      }

      goto LABEL_24;
    }
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  _StringGuts.grow(_:)(30);
  v39._object = 0x80000001006C4E90;
  v39._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v39);
  _print_unlocked<A, B>(_:_:)();
  v40._countAndFlagsBits = 39;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100563170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10020A980((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

void *sub_1005631A0(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1005663C8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100563230(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = type metadata accessor for UUID();
  v45 = *(v47 - 8);
  v8 = __chkstk_darwin(v47);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v36 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1001F0C48(&qword_100787140, &qword_1006B2390);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v45 + 16;
  v39 = result;
  v46 = v45 + 32;
  v16 = result + 64;
  v40 = a1;
  v37 = a4;
  v17 = v47;
  while (v14)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v45;
    v44 = *(v45 + 72);
    v25 = v41;
    (*(v45 + 16))(v41, v23 + v44 * v22, v17);
    v43 = *(a4[7] + 8 * v22);
    v26 = *(v24 + 32);
    v10 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_100562D1C(&qword_100781FF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v40;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v26)(*(v13 + 48) + v30 * v44, v10, v47);
    *(*(v13 + 56) + 8 * v30) = v43;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
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

uint64_t sub_1005635C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100214EFC;

  return sub_100560CBC(a1, a2, a3, v8);
}

uint64_t sub_100563680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1005635C8(a1, v4, v5, v1 + 4);
}

uint64_t sub_100563768()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10056380C;

  return sub_10063C2D0(0);
}

uint64_t sub_10056380C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100563904(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_100563744(a1, v4);
}

uint64_t sub_1005639B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100214EFC;

  return sub_1005617C0(a1, a2, a3, v8);
}

uint64_t sub_100563A94()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100568340;

  return sub_1006371A4();
}

void sub_100563B34(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for AppInstallEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_100563BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v42 = 0;
  type metadata accessor for AppInstallEntity.Entity();
  v10 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v11 = sub_10047EDB4();
  [v10 setPredicate:v11];

  if (a1)
  {
    v40 = a4;
    v12 = *(a1 + 16);
    if (v12)
    {
      v38 = a5;
      v39 = a6;

      v13 = a1 + 33;
      v14 = _swiftEmptyArrayStorage;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        v16 = *(v13 - 1);
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100009530(0, *(v14 + 2) + 1, 1, v14);
        }

        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_100009530((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v22 = &v14[16 * v21];
        *(v22 + 4) = v17;
        *(v22 + 5) = v19;
        v23 = sub_100234CBC(v16);
        v25 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100009530(0, *(v15 + 2) + 1, 1, v15);
        }

        v27 = *(v15 + 2);
        v26 = *(v15 + 3);
        if (v27 >= v26 >> 1)
        {
          v15 = sub_100009530((v26 > 1), v27 + 1, 1, v15);
        }

        *(v15 + 2) = v27 + 1;
        v28 = &v15[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
        v13 += 2;
        --v12;
      }

      while (v12);

      a6 = v39;
      a5 = v38;
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
      v15 = _swiftEmptyArrayStorage;
    }

    sub_100235974(v14);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setOrderingDirections:isa];

    sub_100235974(v15);

    v30 = Array._bridgeToObjectiveC()().super.isa;

    [v10 setOrderingProperties:v30];

    a4 = v40;
  }

  v31 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v10];
  v32 = swift_allocObject();
  v32[2] = &v42;
  v32[3] = a4;
  v32[4] = a5;
  v32[5] = a6;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1002398F8;
  *(v33 + 24) = v32;
  aBlock[4] = sub_100302FA4;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_10076A168;
  v34 = _Block_copy(aBlock);
  v35 = a6;

  [v31 enumeratePersistentIDsUsingBlock:v34];

  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    v37 = v42;

    return v37;
  }

  return result;
}

void sub_100563FE0(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, id *)@<X2>, _BYTE *a3@<X8>)
{
  v7 = a1;
  v6 = a1;
  a2(&v8, &v7);

  if (!v3)
  {
    *a3 = v8;
  }
}

uint64_t sub_100564054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1001F0E54;

  return sub_1005620FC(a1, a2, a3, v10, a5);
}

uint64_t sub_10056411C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 16) = a3;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_100564140, 0, 0);
}

uint64_t sub_100564140()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1002628F8;
  v2 = *(v0 + 16);

  return sub_10063CF28(v2);
}

uint64_t sub_1005641E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v42 = 1;
  type metadata accessor for AppInstallEntity.Entity();
  v10 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v11 = sub_10047EDB4();
  [v10 setPredicate:v11];

  if (a1)
  {
    v40 = a4;
    v12 = *(a1 + 16);
    if (v12)
    {
      v38 = a5;
      v39 = a6;

      v13 = a1 + 33;
      v14 = _swiftEmptyArrayStorage;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        v16 = *(v13 - 1);
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100009530(0, *(v14 + 2) + 1, 1, v14);
        }

        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_100009530((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v22 = &v14[16 * v21];
        *(v22 + 4) = v17;
        *(v22 + 5) = v19;
        v23 = sub_100234CBC(v16);
        v25 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100009530(0, *(v15 + 2) + 1, 1, v15);
        }

        v27 = *(v15 + 2);
        v26 = *(v15 + 3);
        if (v27 >= v26 >> 1)
        {
          v15 = sub_100009530((v26 > 1), v27 + 1, 1, v15);
        }

        *(v15 + 2) = v27 + 1;
        v28 = &v15[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
        v13 += 2;
        --v12;
      }

      while (v12);

      a6 = v39;
      a5 = v38;
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
      v15 = _swiftEmptyArrayStorage;
    }

    sub_100235974(v14);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setOrderingDirections:isa];

    sub_100235974(v15);

    v30 = Array._bridgeToObjectiveC()().super.isa;

    [v10 setOrderingProperties:v30];

    a4 = v40;
  }

  v31 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v10];
  v32 = swift_allocObject();
  v32[2] = &v42;
  v32[3] = a4;
  v32[4] = a5;
  v32[5] = a6;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1005669B4;
  *(v33 + 24) = v32;
  aBlock[4] = sub_100239904;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_100769FD8;
  v34 = _Block_copy(aBlock);
  v35 = a6;

  [v31 enumeratePersistentIDsUsingBlock:v34];

  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    v37 = v42;

    return v37;
  }

  return result;
}

void sub_100564624(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, id *)@<X2>, void *a3@<X8>)
{
  v7 = a1;
  v6 = a1;
  a2(&v8, &v7);

  if (!v3)
  {
    *a3 = v8;
  }
}

uint64_t sub_100564730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100564840(uint64_t a1, void *a2)
{
  v2 = sub_1005F1674();
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v45 = v3;

  v9 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v45 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100005934(*(v45 + 56) + 32 * v11, v44, &qword_100783A30, &unk_10069E960);
    v43[0] = v14;
    v43[1] = v13;
    sub_100005934(v44, &v33, &qword_100783A30, &unk_10069E960);
    if (*(&v34 + 1))
    {
      sub_1001F6498(&v33, v32);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v32, (&v40 + 8));
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
    }

    v7 &= v7 - 1;
    sub_1000032A8(v43, &qword_100785AC0, &qword_1006B26F0);
    if (*(&v39 + 1))
    {
      v35 = v40;
      v36 = v41;
      v37 = v42;
      v33 = v38;
      v34 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100362DC4(0, v31[2] + 1, 1, v31);
      }

      v16 = v31[2];
      v15 = v31[3];
      if (v16 >= v15 >> 1)
      {
        v31 = sub_100362DC4((v15 > 1), v16 + 1, 1, v31);
      }

      v31[2] = v16 + 1;
      v17 = &v31[9 * v16];
      *(v17 + 2) = v33;
      v18 = v34;
      v19 = v35;
      v20 = v36;
      v17[12] = v37;
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
    }

    else
    {
      sub_1000032A8(&v38, &qword_100787418, &qword_1006B26F8);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v31[2])
  {
    sub_1001F0C48(&qword_100786EA0, &unk_10069E930);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = _swiftEmptyDictionarySingleton;
  }

  *&v38 = v21;

  sub_100562D84(v22, 1, &v38);
  if (v28)
  {
    goto LABEL_26;
  }

  sub_100566F7C(a1);

  type metadata accessor for DDMUpdateEntity.Entity();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = a2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithPropertyValues:isa onConnection:v24];

  if (([v26 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError(0);
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v26;
}

id sub_100564C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1001F0C48(&qword_1007874B8, &unk_1006B27E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 72) = &protocol witness table for String;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v7 = sub_100529B48(inited);
  swift_setDeallocating();
  sub_1000032A8(inited + 32, &unk_100786F80, &unk_1006B2198);
  v8 = sub_1004E7348(v7);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v50 = v9;

  v15 = 0;
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = (*(v50 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_100005934(*(v50 + 56) + 32 * v17, v49, &qword_100783A30, &unk_10069E960);
    v48[0] = v20;
    v48[1] = v19;
    sub_100005934(v49, &v38, &qword_100783A30, &unk_10069E960);
    if (*(&v39 + 1))
    {
      sub_1001F6498(&v38, v37);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v37, (&v45 + 8));
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
    }

    v13 &= v13 - 1;
    sub_1000032A8(v48, &qword_100785AC0, &qword_1006B26F0);
    if (*(&v44 + 1))
    {
      v40 = v45;
      v41 = v46;
      v42 = v47;
      v38 = v43;
      v39 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100362DC4(0, v36[2] + 1, 1, v36);
      }

      v22 = v36[2];
      v21 = v36[3];
      if (v22 >= v21 >> 1)
      {
        v36 = sub_100362DC4((v21 > 1), v22 + 1, 1, v36);
      }

      v36[2] = v22 + 1;
      v23 = &v36[9 * v22];
      *(v23 + 2) = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v23[12] = v42;
      *(v23 + 4) = v25;
      *(v23 + 5) = v26;
      *(v23 + 3) = v24;
    }

    else
    {
      sub_1000032A8(&v43, &qword_100787418, &qword_1006B26F8);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  if (v36[2])
  {
    sub_1001F0C48(&qword_100786EA0, &unk_10069E930);
    v27 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v27 = _swiftEmptyDictionarySingleton;
  }

  *&v43 = v27;

  sub_100562D84(v28, 1, &v43);
  if (v34)
  {
    goto LABEL_26;
  }

  type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v29 initWithPropertyValues:isa onConnection:v30];

  if (([v32 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError(0);
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v32;
}

id sub_100565188(void *a1, void *a2)
{
  v2 = sub_1004D4A28();
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = v3;

  v9 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v32 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100005934(*(v32 + 56) + 32 * v11, v45, &qword_100783A30, &unk_10069E960);
    v44[0] = v14;
    v44[1] = v13;
    sub_100005934(v45, &v34, &qword_100783A30, &unk_10069E960);
    if (*(&v35 + 1))
    {
      sub_1001F6498(&v34, v33);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v33, (&v41 + 8));
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
    }

    v7 &= v7 - 1;
    sub_1000032A8(v44, &qword_100785AC0, &qword_1006B26F0);
    if (*(&v40 + 1))
    {
      v36 = v41;
      v37 = v42;
      v38 = v43;
      v34 = v39;
      v35 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100362DC4(0, v31[2] + 1, 1, v31);
      }

      v16 = v31[2];
      v15 = v31[3];
      if (v16 >= v15 >> 1)
      {
        v31 = sub_100362DC4((v15 > 1), v16 + 1, 1, v31);
      }

      v31[2] = v16 + 1;
      v17 = &v31[9 * v16];
      *(v17 + 2) = v34;
      v18 = v35;
      v19 = v36;
      v20 = v37;
      v17[12] = v38;
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
    }

    else
    {
      sub_1000032A8(&v39, &qword_100787418, &qword_1006B26F8);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v31[2])
  {
    sub_1001F0C48(&qword_100786EA0, &unk_10069E930);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = _swiftEmptyDictionarySingleton;
  }

  *&v39 = v21;

  sub_100562D84(v22, 1, &v39);
  if (v28)
  {
    goto LABEL_26;
  }

  v49 = a1[1];
  sub_1000032A8(&v49, &unk_10077FB40, &qword_10069E770);
  v48 = a1[2];
  sub_1000032A8(&v48, &qword_100784430, &qword_1006A2630);
  v47 = a1[3];
  sub_1000032A8(&v47, &qword_100784430, &qword_1006A2630);
  v46 = a1[4];
  sub_1000032A8(&v46, &qword_100782580, &qword_1006AE490);

  type metadata accessor for SecureStorageEntity.Entity();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = a2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithPropertyValues:isa onConnection:v24];

  if (([v26 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError(0);
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v26;
}

id sub_100565704(uint64_t a1, void *a2)
{
  v2 = sub_1004E5130();
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v47 = v3;

  v9 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v47 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100005934(*(v47 + 56) + 32 * v11, v44, &qword_100783A30, &unk_10069E960);
    v43[0] = v14;
    v43[1] = v13;
    sub_100005934(v44, &v33, &qword_100783A30, &unk_10069E960);
    if (*(&v34 + 1))
    {
      sub_1001F6498(&v33, v32);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v32, (&v40 + 8));
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
    }

    v7 &= v7 - 1;
    sub_1000032A8(v43, &qword_100785AC0, &qword_1006B26F0);
    if (*(&v39 + 1))
    {
      v35 = v40;
      v36 = v41;
      v37 = v42;
      v33 = v38;
      v34 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100362DC4(0, v31[2] + 1, 1, v31);
      }

      v16 = v31[2];
      v15 = v31[3];
      if (v16 >= v15 >> 1)
      {
        v31 = sub_100362DC4((v15 > 1), v16 + 1, 1, v31);
      }

      v31[2] = v16 + 1;
      v17 = &v31[9 * v16];
      *(v17 + 2) = v33;
      v18 = v34;
      v19 = v35;
      v20 = v36;
      v17[12] = v37;
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
    }

    else
    {
      sub_1000032A8(&v38, &qword_100787418, &qword_1006B26F8);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v31[2])
  {
    sub_1001F0C48(&qword_100786EA0, &unk_10069E930);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = _swiftEmptyDictionarySingleton;
  }

  *&v38 = v21;

  sub_100562D84(v22, 1, &v38);
  if (v28)
  {
    goto LABEL_26;
  }

  v46 = *(a1 + 8);
  sub_10023215C(&v46);
  v45 = *(a1 + 24);
  sub_10023215C(&v45);

  type metadata accessor for LicenseStorageEntity.Entity();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = a2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithPropertyValues:isa onConnection:v24];

  if (([v26 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError(0);
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v26;
}

id sub_100565BCC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v5 = a3();
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v50 = v6;

  v12 = 0;
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10)) | (v12 << 6);
    v15 = (*(v50 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_100005934(*(v50 + 56) + 32 * v14, v49, &qword_100783A30, &unk_10069E960);
    v48[0] = v17;
    v48[1] = v16;
    sub_100005934(v49, &v38, &qword_100783A30, &unk_10069E960);
    if (*(&v39 + 1))
    {
      sub_1001F6498(&v38, v37);
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_1001F6498(v37, (&v45 + 8));
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
    }

    v10 &= v10 - 1;
    sub_1000032A8(v48, &qword_100785AC0, &qword_1006B26F0);
    if (*(&v44 + 1))
    {
      v40 = v45;
      v41 = v46;
      v42 = v47;
      v38 = v43;
      v39 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100362DC4(0, v36[2] + 1, 1, v36);
      }

      v19 = v36[2];
      v18 = v36[3];
      if (v19 >= v18 >> 1)
      {
        v36 = sub_100362DC4((v18 > 1), v19 + 1, 1, v36);
      }

      v36[2] = v19 + 1;
      v20 = &v36[9 * v19];
      *(v20 + 2) = v38;
      v21 = v39;
      v22 = v40;
      v23 = v41;
      v20[12] = v42;
      *(v20 + 4) = v22;
      *(v20 + 5) = v23;
      *(v20 + 3) = v21;
    }

    else
    {
      sub_1000032A8(&v43, &qword_100787418, &qword_1006B26F8);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_26:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v36[2])
  {
    sub_1001F0C48(&qword_100786EA0, &unk_10069E930);
    v24 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v24 = _swiftEmptyDictionarySingleton;
  }

  *&v43 = v24;

  sub_100562D84(v25, 1, &v43);
  if (v31)
  {
    goto LABEL_26;
  }

  a4(0);
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = a2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = [v26 initWithPropertyValues:isa onConnection:v27];

  if (([v29 existsInDatabase] & 1) == 0)
  {
    type metadata accessor for InternalError(0);
    sub_100562D1C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  sub_100566034(a1, a5);
  return v29;
}

uint64_t sub_100566034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1005660A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_10051B078(v43);
  if (!v44)
  {
    goto LABEL_25;
  }

  v12 = *&v43[0];
  sub_1001DFDBC((v43 + 8), v42);
  v13 = *a5;
  result = sub_10052BA64(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1005BB454(v19, a4 & 1);
    result = sub_10052BA64(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1005C4C7C();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * result;
    sub_10020A980(*(*a5 + 56) + 40 * result, v41);
    sub_10000710C(v42);
    v24 = *(v22 + 56);
    sub_10000710C((v24 + v23));
    sub_1001DFDBC(v41, v24 + v23);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_1001DFDBC(v42, v26[7] + 40 * result);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_10051B078(v43);
    if (v44)
    {
      v20 = 1;
      do
      {
        v12 = *&v43[0];
        sub_1001DFDBC((v43 + 8), v42);
        v32 = *a5;
        result = sub_10052BA64(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_1005BB454(v36, 1);
          result = sub_10052BA64(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 40 * result;
          sub_10020A980(*(*a5 + 56) + 40 * result, v41);
          sub_10000710C(v42);
          v31 = *(v29 + 56);
          sub_10000710C((v31 + v30));
          sub_1001DFDBC(v41, v31 + v30);
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1001DFDBC(v42, v38[7] + 40 * result);
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_10051B078(v43);
      }

      while (v44);
    }

LABEL_25:
    sub_1001DFE18(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1005663C8(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, void))
{
  v25 = a2;
  v33 = a4;
  v26 = a1;
  v32 = type metadata accessor for UUID();
  result = __chkstk_darwin(v32);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v8 = 0;
  v34 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v29 = v6 + 16;
  v27 = 0;
  v28 = v6 + 8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_11:
    v36 = v16 | (v8 << 6);
    v19 = v34;
    v21 = v30;
    v20 = v31;
    v22 = v36;
    v23 = v32;
    (*(v31 + 16))(v30, v34[6] + *(v31 + 72) * v36, v32);
    LOBYTE(v19) = v33(v21, *(v19[7] + 8 * v22));
    result = (*(v20 + 8))(v21, v23);
    v14 = v35;
    if (v19)
    {
      *(v26 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_100563230(v26, v25, v27, v34);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_100563230(v26, v25, v27, v34);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100566600(uint64_t a1, uint64_t (*a2)(char *, void))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1005663C8(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1005631A0(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_1005667F4(void *a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  v3 = a1;
  v2(&v4);
}

unint64_t sub_10056688C()
{
  result = qword_100787400;
  if (!qword_100787400)
  {
    result = swift_getWitnessTable(byte_1006B6058, &type metadata for AppPackageEntity.Property, v0, v1);
    atomic_store(result, &qword_100787400);
  }

  return result;
}

uint64_t sub_100566A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100566B3C()
{
  result = qword_100787520;
  if (!qword_100787520)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1001F76D0(&qword_100787518, &unk_1006B8F60);
    v4[0] = sub_100562D1C(&qword_100787528, &type metadata accessor for ManagedAppStatus.Reason, &protocol conformance descriptor for ManagedAppStatus.Reason);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100787520);
  }

  return result;
}

uint64_t sub_100566C58@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t sub_100566C94()
{
  result = qword_1007852C8;
  if (!qword_1007852C8)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_1001F76D0(&qword_100781758, &qword_1006AD970);
    v4[0] = &protocol witness table for String;
    v4[1] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1007852C8);
  }

  return result;
}

uint64_t sub_100566D1C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
  }

  else
  {
    return a4(a1, a2);
  }
}

uint64_t sub_100566D9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1005639B8(a1, v4, v5, v1 + 4);
}

uint64_t sub_100566E60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_100563A70(a1, v4);
}

uint64_t sub_100567038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100558AA0(a1, v4, v5, v6);
}

uint64_t sub_100567128(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100557D38(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1005671E8()
{
  swift_unknownObjectRelease();

  sub_1003D802C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100567248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100557D38(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100567414(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return _objc_release_x1(a1, a2);
  }
}

uint64_t sub_1005674D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100552800(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100567598()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005675E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_1005533F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005676A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100552E1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005677B4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a12 >> 62 == 1)
  {
    sub_100007158(a3, a4);

    sub_100007158(a10, a11);
  }

  else
  {
    if (a12 >> 62)
    {
      return result;
    }

    sub_100007158(result, a2);
  }
}

uint64_t sub_100567854(uint64_t a1)
{
  v4 = *(type metadata accessor for AppInstallScheduler.ParkReason(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100564054(a1, v6, v7, v1 + 4, v1 + v5);
}

uint64_t sub_100567954(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10056411C(a1, v5, v4);
}

uint64_t sub_100567A40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100559864(a1, v4, v5, v6);
}

uint64_t sub_100567B2C(uint64_t a1)
{
  v4 = *(type metadata accessor for DownloadRequest(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10055EE50(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_100567C20()
{
  v1 = type metadata accessor for DownloadRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  sub_10000710C((v0 + 32));
  v5 = v0 + v3;
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[6];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  if (*(v0 + v3 + v1[11] + 16) != 1)
  {
  }

  v10 = v5 + v1[12];
  sub_1005677B4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80), *(v10 + 88), *(v10 + 96), *(v10 + 104));
  v11 = (v5 + v1[14]);
  if (v11[3])
  {
    sub_10000710C(v11);
  }

  sub_10000710C((v5 + v1[17]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100567E00(uint64_t a1)
{
  v4 = *(type metadata accessor for DownloadRequest(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_10055E864(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_100567EF4()
{
  v1 = *(type metadata accessor for AppInstallScheduler.ParkReason(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for DownloadRequest(0);
    v7 = v6[5];
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
    v9 = v6[6];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);

    if (*(v5 + v6[11] + 16) != 1)
    {
    }

    v11 = v5 + v6[12];
    sub_1005677B4(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80), *(v11 + 88), *(v11 + 96), *(v11 + 104));
    v12 = (v5 + v6[14]);
    if (v12[3])
    {
      sub_10000710C(v12);
    }

    sub_10000710C((v5 + v6[17]));
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100568104()
{
  result = qword_100787698;
  if (!qword_100787698)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1001F76D0(&qword_100787690, &qword_1006B2C58);
    v4[0] = sub_100562D1C(&qword_1007876A0, &type metadata accessor for ApprovedDeveloper, &protocol conformance descriptor for ApprovedDeveloper);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100787698);
  }

  return result;
}

uint64_t sub_1005681F0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
  }

  else
  {
    return a3(a1);
  }
}

uint64_t sub_100568200(uint64_t a1)
{
  result = type metadata accessor for DownloadRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100568344()
{

  return sub_100561724();
}

uint64_t sub_100568488()
{

  return sub_1005615F8();
}

void sub_10056850C(uint64_t a1, void *a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1001F0C48(&qword_100787758, &unk_1006B2D18);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_1001F0C48(&qword_100787758, &unk_1006B2D18);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005685BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CellularSettings.Prompt();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for EvaluatorDownload(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_100568838, 0, 0);
}

uint64_t sub_100568838(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = v1[2];
  static Logger.download.getter();
  sub_10056B348(v5, v2);
  sub_10056B348(v5, v3);
  sub_10056B348(v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  if (v8)
  {
    v12 = v1[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412802;
    v15 = *(v9 + v12[8]);
    sub_10056B3AC(v9);
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2048;
    v16 = *(v10 + v12[6]);
    sub_10056B3AC(v10);
    *(v13 + 14) = v16;
    *(v13 + 22) = 1024;
    LODWORD(v16) = *(v11 + v12[10]) & 1;
    sub_10056B3AC(v11);
    *(v13 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Evaluating download, size = %{iec-bytes}ld automatic = %{BOOL}d", v13, 0x1Cu);
    sub_1001F8084(v14);
  }

  else
  {
    sub_10056B3AC(v1[21]);
    sub_10056B3AC(v10);

    sub_10056B3AC(v9);
  }

  v17 = v1 + 24;
  v18 = v1[9];
  v19 = v1[2];
  v20 = *(v1[25] + 8);
  v20(v1[37], v1[24]);
  if (*(v19 + *(v18 + 40)))
  {
    v31 = v1[2];
    if (*(v31 + *(v1[9] + 36)) - 2 >= 2)
    {
      v149 = v20;
      if (*(v31 + *(v1[9] + 36)))
      {
        v34 = v1 + 36;
        v109 = v1[20];
        static Logger.download.getter();
        sub_10056B348(v31, v109);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        v110 = os_log_type_enabled(v37, v38);
        v40 = v1[20];
        if (v110)
        {
          v111 = v1[9];
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          v112 = *(v40 + *(v111 + 32));
          sub_10056B3AC(v40);
          *(v42 + 4) = v112;
          *v43 = v112;
          v34 = v1 + 36;
          v45 = "[%@] Implicitly denied - managed automatic downloads are disabled";
          goto LABEL_36;
        }
      }

      else
      {
        v51 = CellularIdentity.isRoaming.getter();
        v52 = v1[2];
        if ((v51 & 1) == 0)
        {
          v34 = v1 + 34;
          v114 = v1[18];
          static Logger.download.getter();
          sub_10056B348(v52, v114);
          v115 = Logger.logObject.getter();
          v116 = static os_log_type_t.default.getter();
          v117 = os_log_type_enabled(v115, v116);
          v118 = v1[18];
          if (v117)
          {
            v119 = v1[9];
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            *v120 = 138412290;
            v122 = *(v118 + *(v119 + 32));
            sub_10056B3AC(v118);
            *(v120 + 4) = v122;
            *v121 = v122;
            v34 = v1 + 34;
            _os_log_impl(&_mh_execute_header, v115, v116, "[%@] Implicitly allowed - managed automatic downloads are enabled", v120, 0xCu);
            sub_1001F8084(v121);
          }

          else
          {

            sub_10056B3AC(v118);
          }

          v156 = 1;
          goto LABEL_39;
        }

        v34 = v1 + 35;
        v53 = v1[19];
        static Logger.download.getter();
        sub_10056B348(v52, v53);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        v54 = os_log_type_enabled(v37, v38);
        v40 = v1[19];
        if (v54)
        {
          v55 = v1[9];
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          v56 = *(v40 + *(v55 + 32));
          sub_10056B3AC(v40);
          *(v42 + 4) = v56;
          *v43 = v56;
          v34 = v1 + 35;
          v45 = "[%@] Overriding managed automatic downloads policy - network is roaming";
          goto LABEL_36;
        }
      }
    }

    else
    {
      v32 = v1[4];
      v33 = type metadata accessor for ExpensiveNetworkEvaluator(0);
      sub_100006D8C((v32 + *(v33 + 20)), *(v32 + *(v33 + 20) + 24));
      if (CellularSettings.allowAutomaticDownloads.getter())
      {
        goto LABEL_5;
      }

      v149 = v20;
      v34 = v1 + 33;
      v35 = v1[17];
      v36 = v1[2];
      static Logger.download.getter();
      sub_10056B348(v36, v35);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v1[17];
      if (v39)
      {
        v41 = v1[9];
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = *(v40 + *(v41 + 32));
        sub_10056B3AC(v40);
        *(v42 + 4) = v44;
        *v43 = v44;
        v34 = v1 + 33;
        v45 = "[%@] Implicitly denied - automatic downloads are disabled";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v37, v38, v45, v42, 0xCu);
        sub_1001F8084(v43);

LABEL_38:
        v156 = 0;
LABEL_39:
        v91 = v149;
        goto LABEL_52;
      }
    }

    sub_10056B3AC(v40);
    goto LABEL_38;
  }

LABEL_5:
  if (CellularIdentity.isRoaming.getter() & 1) != 0 || (os_variant_has_internal_content() & 1) != 0 && (v46 = v1[4], v47 = type metadata accessor for ExpensiveNetworkEvaluator(0), sub_100006D8C((v46 + *(v47 + 20)), *(v46 + *(v47 + 20) + 24)), (CellularSettings.emulateRoaming.getter()))
  {
    v21 = v1[16];
    v22 = v1[2];
    static Logger.download.getter();
    sub_10056B348(v22, v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v1[16];
    if (v25)
    {
      v27 = v1[9];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = *(v26 + *(v27 + 32));
      sub_10056B3AC(v26);
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Overriding cellular prompt - network is roaming", v28, 0xCu);
      sub_1001F8084(v29);
    }

    else
    {

      sub_10056B3AC(v26);
    }

    v57 = v1[8];
    v58 = v1[5];
    v59 = v1[6];
    v20(v1[32], v1[24]);
    v50 = enum case for CellularSettings.Prompt.always(_:);
    (*(v59 + 104))(v57, enum case for CellularSettings.Prompt.always(_:), v58);
  }

  else
  {
    v48 = v1[4];
    v49 = type metadata accessor for ExpensiveNetworkEvaluator(0);
    sub_100006D8C((v48 + *(v49 + 20)), *(v48 + *(v49 + 20) + 24));
    CellularSettings.cellularData.getter();
    v50 = enum case for CellularSettings.Prompt.always(_:);
  }

  v34 = v1 + 8;
  v61 = v1[6];
  v60 = v1[7];
  v17 = v1 + 5;
  v62 = v1[5];
  (*(v61 + 16))(v60, v1[8], v62);
  v63 = (*(v61 + 88))(v60, v62);
  if (v63 == v50)
  {
    v64 = v1[14];
    v65 = v1[2];
    static Logger.download.getter();
    sub_10056B348(v65, v64);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v1[30];
    v70 = v1[24];
    v71 = v1[14];
    if (v68)
    {
      v154 = v1[30];
      v72 = v1[9];
      v147 = v1[6];
      v73 = swift_slowAlloc();
      v150 = v20;
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      v75 = *(v71 + *(v72 + 32));
      sub_10056B3AC(v71);
      *(v73 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&_mh_execute_header, v66, v67, "[%@] Implicitly denied - cellular prompt required", v73, 0xCu);
      sub_1001F8084(v74);

      v34 = v1 + 8;

      v150(v154, v70);
      v76 = v147;
    }

    else
    {
      v90 = v1[6];

      sub_10056B3AC(v71);
      v20(v69, v70);
      v76 = v90;
    }

    v156 = 0;
    v91 = *(v76 + 8);
    goto LABEL_52;
  }

  v77 = v1[2];
  if (v63 == enum case for CellularSettings.Prompt.never(_:))
  {
    v78 = v1[15];
    static Logger.download.getter();
    sub_10056B348(v77, v78);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v1[31];
    v83 = v1[24];
    v84 = v1[15];
    if (v81)
    {
      v155 = v1[31];
      v85 = v1[9];
      v148 = v1[6];
      v86 = swift_slowAlloc();
      v151 = v20;
      v87 = swift_slowAlloc();
      *v86 = 138412290;
      v88 = *(v84 + *(v85 + 32));
      sub_10056B3AC(v84);
      *(v86 + 4) = v88;
      *v87 = v88;
      _os_log_impl(&_mh_execute_header, v79, v80, "[%@] Implicitly allowed - cellular prompt disabled", v86, 0xCu);
      sub_1001F8084(v87);

      v34 = v1 + 8;

      v151(v155, v83);
      v89 = v148;
    }

    else
    {
      v113 = v1[6];

      sub_10056B3AC(v84);
      v20(v82, v83);
      v89 = v113;
    }

    v91 = *(v89 + 8);
    v156 = 1;
    goto LABEL_52;
  }

  v92 = v1[9];
  v93 = *(v1[6] + 8);
  v93(v1[7], v1[5]);
  v94 = *(v77 + *(v92 + 24));
  if (v94 <= 0)
  {
    v123 = v1[13];
    v124 = v1[2];
    static Logger.download.getter();
    sub_10056B348(v124, v123);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    v125 = os_log_type_enabled(v99, v100);
    v157 = v1[29];
    v102 = v1[24];
    v103 = v1[13];
    if (v125)
    {
      v145 = v93;
      v126 = v1[9];
      v146 = v1 + 8;
      v105 = swift_slowAlloc();
      v152 = v20;
      v106 = swift_slowAlloc();
      *v105 = 138412290;
      v127 = *(v103 + *(v126 + 32));
      sub_10056B3AC(v103);
      *(v105 + 4) = v127;
      *v106 = v127;
      v108 = "[%@] Implicitly denied - download size is unavailable";
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  v95 = v1[3];
  if (!v95)
  {
    v128 = v1[12];
    v129 = v1[2];
    static Logger.download.getter();
    sub_10056B348(v129, v128);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    v130 = os_log_type_enabled(v99, v100);
    v157 = v1[28];
    v102 = v1[24];
    v103 = v1[12];
    if (v130)
    {
      v145 = v93;
      v131 = v1[9];
      v146 = v1 + 8;
      v105 = swift_slowAlloc();
      v152 = v20;
      v106 = swift_slowAlloc();
      *v105 = 138412290;
      v132 = *(v103 + *(v131 + 32));
      sub_10056B3AC(v103);
      *(v105 + 4) = v132;
      *v106 = v132;
      v108 = "[%@] Implicitly denied - failed to load constraints";
      goto LABEL_48;
    }

LABEL_50:

    sub_10056B3AC(v103);
    v20(v157, v102);
    v156 = 0;
    goto LABEL_51;
  }

  v96 = [v95 sizeLimitForNetworkType:AMSNetworkTypeCellular];
  v97 = v1[2];
  if (v96 < v94)
  {
    v98 = v1[11];
    static Logger.download.getter();
    sub_10056B348(v97, v98);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    v101 = os_log_type_enabled(v99, v100);
    v157 = v1[27];
    v102 = v1[24];
    v103 = v1[11];
    if (v101)
    {
      v145 = v93;
      v104 = v1[9];
      v146 = v1 + 8;
      v105 = swift_slowAlloc();
      v152 = v20;
      v106 = swift_slowAlloc();
      *v105 = 138412290;
      v107 = *(v103 + *(v104 + 32));
      sub_10056B3AC(v103);
      *(v105 + 4) = v107;
      *v106 = v107;
      v108 = "[%@] Implicitly denied - exceeded cellular limit";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v99, v100, v108, v105, 0xCu);
      sub_1001F8084(v106);

      v34 = v146;

      v152(v157, v102);
      v156 = 0;
LABEL_49:
      v91 = v145;
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v135 = v1[10];
  static Logger.download.getter();
  sub_10056B348(v97, v135);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  v138 = os_log_type_enabled(v136, v137);
  v158 = v1[26];
  v139 = v1[24];
  v140 = v1[10];
  if (v138)
  {
    v145 = v93;
    v141 = v1[9];
    v142 = swift_slowAlloc();
    v153 = v20;
    v143 = swift_slowAlloc();
    *v142 = 138412290;
    v144 = *(v140 + *(v141 + 32));
    sub_10056B3AC(v140);
    *(v142 + 4) = v144;
    *v143 = v144;
    _os_log_impl(&_mh_execute_header, v136, v137, "[%@] Implicitly allowed - cellular limit applies", v142, 0xCu);
    sub_1001F8084(v143);

    v34 = v1 + 8;

    v153(v158, v139);
    v156 = 1;
    goto LABEL_49;
  }

  sub_10056B3AC(v140);
  v20(v158, v139);
  v156 = 1;
LABEL_51:
  v91 = v93;
LABEL_52:
  v91(*v34, *v17);

  v133 = v1[1];

  return v133(v156);
}

uint64_t sub_100569918(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_1001F0C48(&qword_100787758, &unk_1006B2D18);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_1005699E4, 0, 0);
}

uint64_t sub_1005699E4()
{
  v1 = v0;
  v2 = v0 + 2;
  v14 = v0 + 18;
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() bagForProfile:v8 profileVersion:v9];

  v11 = [v6 networkConstraintsForMediaType:v7 withBag:v10];
  v1[24] = v11;

  v1[2] = v1;
  v1[7] = v14;
  v1[3] = sub_100569C64;
  swift_continuation_init();
  v1[17] = v5;
  v12 = sub_10020A748(v1 + 14);
  sub_10056B460();
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  CheckedContinuation.init(continuation:function:)();
  (*(v3 + 32))(v12, v4, v5);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10056850C;
  v1[13] = &unk_10076B340;
  [v11 resultWithCompletion:?];
  (*(v3 + 8))(v12, v5);

  return _swift_continuation_await(v2);
}

uint64_t sub_100569C64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100569E34;
  }

  else
  {
    v2 = sub_100569D74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100569D74()
{
  v1 = *(v0 + 144);

  *(v0 + 208) = v1;
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_100569F04;
  v3 = *(v0 + 152);

  return sub_1005685BC(v3, v1);
}

uint64_t sub_100569E34(uint64_t a1)
{
  v2 = v1[24];
  swift_willThrow();

  v1[26] = 0;
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_100569F04;
  v4 = v1[19];

  return sub_1005685BC(v4, 0);
}

uint64_t sub_100569F04(__int16 a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_10056A004, 0, 0);
}

uint64_t sub_10056A004()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2(v1 & 0x1010101);
}

uint64_t sub_10056A078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v6 = type metadata accessor for NWInterface.InterfaceType();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for EvaluatorDownload(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[26] = v8;
  *v8 = v3;
  v8[1] = sub_10056A2D4;

  return sub_100569918(a1, a3);
}

uint64_t sub_10056A2D4(__int16 a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10056A3D4, 0, 0);
}

uint64_t sub_10056A3D4(uint64_t a1)
{
  v86 = v1;
  v2 = *(v1 + 256);
  v3 = (v2 >> 8) & 1;
  if (!v3 && (v2 & 1) == 0)
  {
    v4 = *(v1 + 16);
    v5 = *(v4 + *(*(v1 + 64) + 40));
    if (v5)
    {
      v24 = *(v1 + 120);
      v23 = *(v1 + 128);
      static Logger.download.getter();
      sub_10056B348(v4, v23);
      sub_10056B348(v4, v24);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v1 + 192);
      v30 = *(v1 + 144);
      v29 = *(v1 + 152);
      v32 = *(v1 + 120);
      v31 = *(v1 + 128);
      if (v27)
      {
        v83 = *(v1 + 192);
        v33 = *(v1 + 64);
        v81 = *(v1 + 144);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412546;
        v36 = *(v31 + *(v33 + 32));
        sub_10056B3AC(v31);
        *(v34 + 4) = v36;
        *v35 = v36;
        *(v34 + 12) = 2048;
        v37 = *(v32 + *(v33 + 24));
        sub_10056B3AC(v32);
        *(v34 + 14) = v37;
        v38 = "[%@] Download of size %{iec-bytes}ld exceeds cellular limit, but not prompting for automatic download.";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v25, v26, v38, v34, 0x16u);
        sub_1001F8084(v35);

        (*(v29 + 8))(v83, v81);
LABEL_21:
        LOBYTE(v2) = 0;
        v3 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (NWPath.isExpensive.getter() & 1) != 0 || (v7 = *(v1 + 48), v6 = *(v1 + 56), v8 = *(v1 + 40), (*(v7 + 104))(v6, enum case for NWInterface.InterfaceType.cellular(_:), v8), v9 = NWPath.usesInterfaceType(_:)(), (*(v7 + 8))(v6, v8), (v9))
      {
        v11 = *(v1 + 104);
        v10 = *(v1 + 112);
        v12 = *(v1 + 16);
        static Logger.download.getter();
        sub_10056B348(v12, v10);
        sub_10056B348(v12, v11);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        v15 = os_log_type_enabled(v13, v14);
        v17 = *(v1 + 104);
        v16 = *(v1 + 112);
        if (v15)
        {
          v18 = *(v1 + 64);
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412546;
          v21 = *(v16 + *(v18 + 32));
          sub_10056B3AC(v16);
          *(v19 + 4) = v21;
          *v20 = v21;
          *(v19 + 12) = 2048;
          v22 = *(v17 + *(v18 + 24));
          sub_10056B3AC(v17);
          *(v19 + 14) = v22;
          _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Download of size %{iec-bytes}ld exceeds cellular limit, asking how to proceed.", v19, 0x16u);
          sub_1001F8084(v20);
        }

        else
        {
          sub_10056B3AC(*(v1 + 104));

          sub_10056B3AC(v16);
        }

        v39 = *(v1 + 184);
        v40 = *(v1 + 144);
        v41 = *(v1 + 64);
        v42 = *(v1 + 16);
        v43 = *(*(v1 + 152) + 8);
        *(v1 + 216) = v43;
        v43(v39, v40);
        v44 = CellularIdentity.isRoaming.getter();
        v45 = (v42 + *(v41 + 20));
        v46 = v45[1];
        v47 = *(v42 + *(v41 + 24));
        v48 = (v5 >> 2) & 1;
        v49 = v44 & 1;
        v50 = *v45;
        if ((v5 & 2) != 0)
        {
          v51 = sub_1001F8108(v50, v46, v47, v49, v48);
        }

        else
        {
          v51 = sub_1001F887C(v50, v46, v47, v49, v48);
        }

        *(v1 + 224) = v51;

        return _swift_task_switch(sub_10056AB3C, v51, 0);
      }

      v53 = *(v1 + 72);
      v52 = *(v1 + 80);
      v54 = *(v1 + 16);
      static Logger.download.getter();
      sub_10056B348(v54, v52);
      sub_10056B348(v54, v53);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v25, v26);
      v29 = *(v1 + 152);
      v28 = *(v1 + 160);
      v30 = *(v1 + 144);
      v32 = *(v1 + 72);
      v31 = *(v1 + 80);
      if (v55)
      {
        v83 = *(v1 + 160);
        v56 = *(v1 + 64);
        v81 = *(v1 + 144);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412546;
        v57 = *(v31 + *(v56 + 32));
        sub_10056B3AC(v31);
        *(v34 + 4) = v57;
        *v35 = v57;
        *(v34 + 12) = 2048;
        v58 = *(v32 + *(v56 + 24));
        sub_10056B3AC(v32);
        *(v34 + 14) = v58;
        v38 = "[%@] Download of size %{iec-bytes}ld exceeds cellular limit, but not prompting for inexpensive network.";
        goto LABEL_10;
      }
    }

    sub_10056B3AC(v32);

    sub_10056B3AC(v31);
    (*(v29 + 8))(v28, v30);
    goto LABEL_21;
  }

LABEL_22:
  v82 = v3;
  v84 = v2;
  v59 = *(v1 + 136);
  v60 = *(v1 + 16);
  static Logger.download.getter();
  sub_10056B348(v60, v59);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v1 + 200);
  v66 = *(v1 + 144);
  v65 = *(v1 + 152);
  v67 = *(v1 + 136);
  if (v63)
  {
    v68 = *(v1 + 64);
    v80 = *(v1 + 200);
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v85 = v71;
    *v69 = 138412546;
    v72 = *(v67 + *(v68 + 32));
    sub_10056B3AC(v67);
    *(v69 + 4) = v72;
    *v70 = v72;
    *(v69 + 12) = 2080;
    *(v1 + 258) = v84 & 1;
    *(v1 + 259) = v82;
    v73 = String.init<A>(describing:)();
    v75 = sub_1002346CC(v73, v74, &v85);

    *(v69 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v61, v62, "[%@] Evaluation for download completed with result: %s", v69, 0x16u);
    sub_1001F8084(v70);

    sub_10000710C(v71);

    (*(v65 + 8))(v80, v66);
  }

  else
  {

    sub_10056B3AC(v67);
    (*(v65 + 8))(v64, v66);
  }

  if (v82)
  {
    v76 = 256;
  }

  else
  {
    v76 = 0;
  }

  v77 = v76 & 0xFFFFFFFE | v84 & 1;
  v78 = *(v1 + 8);

  return v78(v77);
}

uint64_t sub_10056AB3C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 232) = qword_100786178;

  return _swift_task_switch(sub_10056ABD4, v1, 0);
}

uint64_t sub_10056ABD4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = sub_10056B408();
  v4 = swift_task_alloc();
  v0[30] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_10056ACDC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 260, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10056ACDC()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_10056AE08, v1, 0);
}

uint64_t sub_10056AE08()
{

  *(v0 + 261) = *(v0 + 260);

  return _swift_task_switch(sub_10056AE78, 0, 0);
}

uint64_t sub_10056AE78(uint64_t a1)
{
  v47 = v1;
  v2 = *(v1 + 261);
  v3 = *(v1 + 16);
  v45 = v2;
  if (*(v1 + 261))
  {
    v4 = *(v1 + 88);
    static Logger.download.getter();
    sub_10056B348(v3, v4);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v1 + 216);
    v9 = *(v1 + 168);
    v10 = *(v1 + 144);
    v11 = *(v1 + 88);
    if (v7)
    {
      v12 = *(v1 + 64);
      v13 = swift_slowAlloc();
      v43 = v8;
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = *(v11 + *(v12 + 32));
      sub_10056B3AC(v11);
      *(v13 + 4) = v15;
      *v14 = v15;
      v16 = "[%@] We were asked to download later. Requiring inexpensive data.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, v6, v16, v13, 0xCu);
      sub_1001F8084(v14);

      v2 = v45;

      v43(v9, v10);
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *(v1 + 96);
    static Logger.download.getter();
    sub_10056B348(v3, v17);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v5, v6);
    v8 = *(v1 + 216);
    v9 = *(v1 + 176);
    v10 = *(v1 + 144);
    v11 = *(v1 + 96);
    if (v18)
    {
      v19 = *(v1 + 64);
      v13 = swift_slowAlloc();
      v43 = v8;
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v20 = *(v11 + *(v19 + 32));
      sub_10056B3AC(v11);
      *(v13 + 4) = v20;
      *v14 = v20;
      v16 = "[%@] We were asked to download now. Not requiring inexpensive data.";
      goto LABEL_6;
    }
  }

  sub_10056B3AC(v11);
  v8(v9, v10);
LABEL_8:
  v21 = *(v1 + 136);
  v22 = *(v1 + 16);
  static Logger.download.getter();
  sub_10056B348(v22, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v1 + 200);
  v28 = *(v1 + 144);
  v27 = *(v1 + 152);
  v29 = *(v1 + 136);
  if (v25)
  {
    v44 = *(v1 + 200);
    v30 = v2 == 0;
    v31 = *(v1 + 64);
    v42 = *(v1 + 144);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46 = v34;
    *v32 = 138412546;
    v35 = *(v29 + *(v31 + 32));
    sub_10056B3AC(v29);
    *(v32 + 4) = v35;
    *v33 = v35;
    *(v32 + 12) = 2080;
    *(v1 + 258) = v30;
    *(v1 + 259) = 1;
    v36 = String.init<A>(describing:)();
    v38 = sub_1002346CC(v36, v37, &v46);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Evaluation for download completed with result: %s", v32, 0x16u);
    sub_1001F8084(v33);

    sub_10000710C(v34);

    (*(v27 + 8))(v44, v42);
  }

  else
  {

    sub_10056B3AC(v29);
    (*(v27 + 8))(v26, v28);
  }

  if (v45)
  {
    v39 = 256;
  }

  else
  {
    v39 = 257;
  }

  v40 = *(v1 + 8);

  return v40(v39);
}

uint64_t sub_10056B348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EvaluatorDownload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10056B3AC(uint64_t a1)
{
  v2 = type metadata accessor for EvaluatorDownload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10056B408()
{
  result = qword_1007843A0;
  if (!qword_1007843A0)
  {
    v3 = type metadata accessor for SystemAlertCenter(255);
    result = swift_getWitnessTable(aM_25, v3, v0, v1);
    atomic_store(result, &qword_1007843A0);
  }

  return result;
}

unint64_t sub_10056B460()
{
  result = qword_100787760;
  if (!qword_100787760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100787760);
  }

  return result;
}

uint64_t type metadata accessor for ExpensiveNetworkEvaluator(uint64_t a1)
{
  result = qword_1007877C0;
  if (!qword_1007877C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}