uint64_t sub_100354250(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v7 = v4 + 208;
    v6 = *(v4 + 208);
    v5 = *(v7 + 8);

    sub_100015D04(v6, v5);
    v8 = sub_1003554E0;
  }

  else
  {
    *(v4 + 267) = a1 & 1;
    v8 = sub_10035438C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10035438C()
{
  v122 = v0;
  v1 = *(v0 + 267);
  sub_100015D04(*(v0 + 208), *(v0 + 216));
  if (v1 == 1)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v3 = 43;
LABEL_6:
    *v2 = v3;
    swift_willThrow();
LABEL_33:

    v63 = *(v0 + 8);
LABEL_34:

    return v63();
  }

  v4 = *(v0 + 176);
  if ((v4 & 8) != 0 && (*(v0 + 265) & 1) == 0)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v3 = 6;
    goto LABEL_6;
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 96);
  v9 = *(v0 + 64);
  sub_100355618(*(v0 + 168));
  v10 = *(v8 + 20);
  v11 = *(v7 + 16);
  v11(v5, v9 + v10, v6);
  v12 = static Date.< infix(_:_:)();
  if ((v4 & 4) != 0 && (v12 & 1) == 0)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 112);
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097A228);
    sub_100356068(v14, v13);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 152);
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v118 = *(v0 + 112);
      v23 = swift_slowAlloc();
      v121[0] = swift_slowAlloc();
      *v23 = 136315394;
      sub_100355618(v20);
      v24 = Date.description.getter();
      v26 = v25;
      (*(v21 + 8))(v20, v22);
      v27 = sub_10000C4E4(v24, v26, v121);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      sub_100013E70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_1003560CC(v118);
      v31 = sub_10000C4E4(v28, v30, v121);

      *(v23 + 14) = v31;
      v32 = "Local device unlocked (%s) is after remote device unlocked (%s)";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v18, v19, v32, v23, 0x16u);
      swift_arrayDestroy();

LABEL_31:
      v57 = *(v0 + 160);
      v56 = *(v0 + 168);
      v58 = *(v0 + 120);
      v59 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v61 = 11;
LABEL_32:
      *v60 = v61;
      swift_willThrow();
      v62 = *(v59 + 8);
      v62(v57, v58);
      v62(v56, v58);
      goto LABEL_33;
    }

    v55 = *(v0 + 112);
    goto LABEL_30;
  }

  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    v37 = *(v0 + 176);
    Date.timeIntervalSince(_:)();
    if ((v37 & 0x1000) != 0 && fabs(v38) >= 1.0)
    {
      if (qword_100973660 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 104);
      v40 = *(v0 + 64);
      v41 = *(v0 + 72);
      v42 = type metadata accessor for Logger();
      sub_10000C4AC(v42, qword_10097A228);
      sub_100356068(v40, v39);
      v43 = v41;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v44 = *(v0 + 152);
        v46 = *(v0 + 120);
        v45 = *(v0 + 128);
        v119 = *(v0 + 104);
        v23 = swift_slowAlloc();
        v121[0] = swift_slowAlloc();
        *v23 = 136315394;
        sub_100355618(v44);
        v47 = Date.description.getter();
        v49 = v48;
        (*(v45 + 8))(v44, v46);
        v50 = sub_10000C4E4(v47, v49, v121);

        *(v23 + 4) = v50;
        *(v23 + 12) = 2080;
        sub_100013E70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        sub_1003560CC(v119);
        v54 = sub_10000C4E4(v51, v53, v121);

        *(v23 + 14) = v54;
        v32 = "Local device unlocked (%s) is before remote device unlocked (%s)";
        goto LABEL_13;
      }

      v55 = *(v0 + 104);
LABEL_30:

      sub_1003560CC(v55);
      goto LABEL_31;
    }
  }

  v33 = *(v0 + 176);
  if ((v33 & 0x20) != 0)
  {
    if (!sub_10034F8CC())
    {
      v57 = *(v0 + 160);
      v56 = *(v0 + 168);
      v58 = *(v0 + 120);
      v59 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v61 = 8;
      goto LABEL_32;
    }

    v33 = *(v0 + 176);
  }

  if ((v33 & 0x400) != 0 && (*(v0 + 264) & 1) == 0 && !sub_10034FC18())
  {
    v57 = *(v0 + 160);
    v56 = *(v0 + 168);
    v58 = *(v0 + 120);
    v59 = *(v0 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v61 = 22;
    goto LABEL_32;
  }

  Date.timeIntervalSinceNow.getter();
  v35 = v34;
  if (v34 < -480.0)
  {
    v65 = *(v0 + 120);
    v66 = *(v0 + 128);
    v67 = *(v0 + 88);
    v68 = *(v0 + 72);
    v69 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v68 + v69, v67);
    if ((*(v66 + 48))(v67, 1, v65) == 1)
    {
      v70 = *(v0 + 72);
      sub_100016C08(*(v0 + 88));
      v71 = v70 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
      v72 = *(v0 + 72);
      goto LABEL_47;
    }

    v73 = *(v0 + 144);
    v74 = *(v0 + 120);
    v75 = *(v0 + 128);
    (*(v75 + 32))(v73, *(v0 + 88), v74);
    Date.timeIntervalSinceNow.getter();
    v77 = v76;
    (*(v75 + 8))(v73, v74);
    v36 = v77 < -480.0;
  }

  else
  {
    v36 = 0;
  }

  v72 = *(v0 + 72);
  v71 = v72 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
  if (*(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions) == 1 && !v36)
  {
    if ((*(v0 + 176) & 0x10) == 0)
    {
      goto LABEL_72;
    }

LABEL_56:
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v88 = *(v0 + 72);
    v89 = type metadata accessor for Logger();
    sub_10000C4AC(v89, qword_10097A228);
    v90 = v88;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 72);
    if (!v93)
    {

      v91 = v94;
LABEL_71:

      goto LABEL_72;
    }

    v95 = swift_slowAlloc();
    *v95 = 67109632;
    v96 = *(&v94->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
    v102 = 0;
    if (*(v96 + 16) == 2)
    {
      v97 = *(v0 + 152);
      v98 = *(v0 + 120);
      v99 = *(v0 + 128);
      v11(v97, v96 + ((*(v99 + 80) + 32) & ~*(v99 + 80)), v98);
      Date.timeIntervalSinceNow.getter();
      v101 = v100;
      (*(v99 + 8))(v97, v98);
      if (v101 >= -480.0)
      {
        v102 = 1;
      }
    }

    v103 = *(v0 + 120);
    v104 = *(v0 + 128);
    v106 = *(v0 + 72);
    v105 = *(v0 + 80);
    *(v95 + 4) = v102;

    *(v95 + 8) = 1024;
    *(v95 + 10) = v35 >= -480.0;
    *(v95 + 14) = 1024;
    v107 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v106 + v107, v105);
    if ((*(v104 + 48))(v105, 1, v103) == 1)
    {
      sub_100016C08(*(v0 + 80));
    }

    else
    {
      v109 = *(v0 + 128);
      v108 = *(v0 + 136);
      v110 = *(v0 + 120);
      (*(v109 + 32))(v108, *(v0 + 80), v110);
      Date.timeIntervalSinceNow.getter();
      v112 = v111;
      (*(v109 + 8))(v108, v110);
      if (v112 >= -480.0)
      {
        v113 = 1;
        goto LABEL_70;
      }
    }

    v113 = 0;
LABEL_70:
    v114 = *(v0 + 72);
    *(v95 + 16) = v113;

    _os_log_impl(&_mh_execute_header, v91, v92, "Skipping motion check because one of the following is true: hasEnoughWakeRaises = %{BOOL}d requestingDeviceUnlockedRecently = %{BOOL}d unlockedRecently = %{BOOL}d", v95, 0x14u);

    goto LABEL_71;
  }

LABEL_47:
  *(v0 + 232) = v71;
  v78 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
  v79 = *(v0 + 176);
  if (*(v78 + 16) != 2)
  {
    if ((v79 & 0x10) != 0)
    {
      goto LABEL_52;
    }

LABEL_72:
    v115 = *(v0 + 168);
    v116 = *(v0 + 120);
    v117 = *(*(v0 + 128) + 8);
    v117(*(v0 + 160), v116);
    v117(v115, v116);

    v63 = *(v0 + 8);
    goto LABEL_34;
  }

  v80 = *(v0 + 152);
  v81 = *(v0 + 120);
  v82 = *(v0 + 128);
  v11(v80, v78 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v81);
  Date.timeIntervalSinceNow.getter();
  v84 = v83;
  (*(v82 + 8))(v80, v81);
  if ((v79 & 0x10) == 0)
  {
    goto LABEL_72;
  }

  if (v84 >= -480.0)
  {
    goto LABEL_56;
  }

  v72 = *(v0 + 72);
LABEL_52:
  v85 = (v72 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator);
  v86 = *v85;
  *(v0 + 240) = *v85;
  if (!v86)
  {
    v57 = *(v0 + 160);
    v56 = *(v0 + 168);
    v58 = *(v0 + 120);
    v59 = *(v0 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v61 = 7;
    goto LABEL_32;
  }

  *(v0 + 248) = v85[1];

  v120 = (v86 + *v86);
  v87 = swift_task_alloc();
  *(v0 + 256) = v87;
  *v87 = v0;
  v87[1] = sub_100355154;

  return v120();
}

uint64_t sub_100355154()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  sub_100015D04(v2, v1);

  return _swift_task_switch(sub_100355284, 0, 0);
}

uint64_t sub_100355284()
{
  **(v0 + 232) = 1;
  sub_100016CD0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(*(v0 + 128) + 8);
  v3(*(v0 + 160), v2);
  v3(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003553A8()
{
  type metadata accessor for SFAuthenticationErrorCode(0);
  sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
  swift_allocError();
  *v1 = 40;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003554E0()
{
  type metadata accessor for SFAuthenticationErrorCode(0);
  sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
  swift_allocError();
  *v1 = 43;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100355618@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  if (SFDeviceClassCodeGet() == 7)
  {
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedAndOnWristDate;
    swift_beginAccess();
    sub_1002E4E88(v1 + v9, v8);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (v12(v8, 1, v10) == 1)
    {
      static Date.distantFuture.getter();
      result = v12(v8, 1, v10);
      if (result == 1)
      {
        return result;
      }

      v14 = v8;
      return sub_100016C08(v14);
    }

    return (*(v11 + 32))(a1, v8, v10);
  }

  else
  {
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v1 + v15, v6);
    v16 = type metadata accessor for Date();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (v18(v6, 1, v16) == 1)
    {
      static Date.distantFuture.getter();
      result = v18(v6, 1, v16);
      if (result == 1)
      {
        return result;
      }

      v14 = v6;
      return sub_100016C08(v14);
    }

    return (*(v17 + 32))(a1, v6, v16);
  }
}

void sub_100355864(uint64_t a1)
{
  if (qword_100973660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A228);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "On wrist state changed", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1000163C8();
  }
}

void sub_1003559DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000163C8();
    sub_100016640();
    v3 = [objc_opt_self() availableDevices];
    sub_1000276B4(0, &qword_10097A2A0, BKDeviceDescriptor_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = v2;
      v6 = objc_opt_self();
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = v9;
        v2 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v18 = 0;
        v11 = [v6 deviceWithDescriptor:v9 error:&v18];
        if (v11)
        {
          v12 = v11;
          v13 = v18;

          objc_opt_self();
          v14 = swift_dynamicCastObjCClass();
          if (v14)
          {
            v15 = v14;

            v16 = *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_pearlDevice];
            *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_pearlDevice] = v15;

            return;
          }
        }

        else
        {
          v8 = v18;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        ++v7;
        if (v2 == i)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_21:
  }
}

void sub_100355E60(uint64_t a1)
{
  sub_1002A6BEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100355F48(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
  swift_beginAccess();
  sub_1000168F4(a1, v3 + v4);
  swift_endAccess();
  sub_100016964();
  return sub_100016C08(a1);
}

uint64_t sub_100356068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationSecurityRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003560CC(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationSecurityRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100356128()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100350770(v2);
}

uint64_t sub_1003561CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10035624C()
{
  v1 = *(sub_10028088C(&qword_10097A2B0, &qword_1007FD370) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100350CF4(v3, v0 + v2, v4);
}

uint64_t sub_1003562E8()
{
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1003563C4(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100356444()
{
  result = qword_10097A348;
  if (!qword_10097A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A348);
  }

  return result;
}

unint64_t sub_10035649C()
{
  result = qword_10097A350;
  if (!qword_10097A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A350);
  }

  return result;
}

unint64_t sub_1003564F4()
{
  result = qword_10097A358;
  if (!qword_10097A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A358);
  }

  return result;
}

unint64_t sub_10035654C()
{
  result = qword_10097A360;
  if (!qword_10097A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A360);
  }

  return result;
}

id sub_1003565B8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A368);
  sub_10000C4AC(v0, qword_10097A368);
  result = airdrop_log();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

void sub_100356650()
{
  v1 = v0;
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    if (qword_1009736A0 != -1)
    {
LABEL_47:
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097A368);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_32;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "IPA Handler: Device running in store demo mode";
    goto LABEL_39;
  }

  v7 = [objc_opt_self() sharedConnection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isAirDropAppInstallationAllowed];

    if (!v9)
    {
      if (qword_1009736A0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097A368);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_32;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "IPA Handler: AirDrop app installation not allowed";
      goto LABEL_39;
    }

    if (![v1 isJustFiles])
    {
      if (qword_1009736A0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097A368);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_32;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "IPA Handler: isJustFiles is false";
LABEL_39:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_32:

      return;
    }

    v10 = [v1 transfer];
    v11 = [v10 metaData];

    v12 = [v11 rawFiles];
    sub_10028088C(&unk_100974E50, &qword_1007FD600);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
    v15 = *(v13 + 16);
    v16 = kSFOperationFileNameKey;
    while (v15 != v14)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (!v16)
      {
        __break(1u);
        goto LABEL_49;
      }

      v18 = *(v13 + 8 * v14 + 32);
      sub_1000276B4(0, &qword_100974E28, NSString_ptr);
      sub_1002A5510();

      v19 = v16;
      AnyHashable.init<A>(_:)();
      if (!*(v18 + 16) || (v20 = sub_100570754(v38), (v21 & 1) == 0))
      {

        sub_100285E74(v38);
        goto LABEL_35;
      }

      sub_10000C5B0(*(v18 + 56) + 32 * v20, v39);
      sub_100285E74(v38);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_34:

LABEL_35:
        if (qword_1009736A0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000C4AC(v30, qword_10097A368);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          v6 = "IPA Handler: File is not IPA, ignoring...";
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      v22 = [v16 pathExtension];
      if (!v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String._bridgeToObjectiveC()();
      }

      v17 = SFIsIPA();

      ++v14;
      if ((v17 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v25 = [v1 transfer];
    v26 = [v25 metaData];

    LODWORD(v25) = [v26 senderIsMe];
    if (v25)
    {
      if (qword_1009736A0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000C4AC(v27, qword_10097A368);
      v3 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v3, v28, "IPA Handler: Transfer is me, can handle.", v29, 2u);
      }

      goto LABEL_32;
    }

    v31 = [objc_opt_self() defaultManager];
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 fileExistsAtPath:v32];

    if (qword_1009736A0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_10097A368);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v35, v36, "IPA Handler: Developer settings bundle exists? %{BOOL}d", v37, 8u);
    }
  }

  else
  {
LABEL_49:
    __break(1u);
  }
}

uint64_t sub_100356E58()
{
  v1 = v0;
  v2 = [v0 transfer];
  v3 = [v2 metaData];

  if ([v1 totalSharedItemsCount] != 1)
  {
    v34[3] = &type metadata for UInt;
    v34[4] = &protocol witness table for UInt;
    v34[0] = [v1 totalSharedItemsCount];
    v13 = 0xE300000000000000;
    v14 = 4280393;
    goto LABEL_9;
  }

  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = [v3 rawFiles];
  sub_10028088C(&unk_100974E50, &qword_1007FD600);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {
LABEL_16:

    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v5 + 32);

  v8 = kSFOperationFileNameKey;
  if (kSFOperationFileNameKey)
  {
    v34[0] = kSFOperationFileNameKey;
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    sub_1002A5510();
    v9 = v8;
    AnyHashable.init<A>(_:)();
    if (!*(v6 + 16))
    {
      goto LABEL_13;
    }

    v10 = sub_100570754(v29);
    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }

    v12 = v10;

    sub_10000C5B0(*(v6 + 56) + 32 * v12, v28);

    sub_100285E74(v29);
    sub_1000106E0(v28, &v30);
    v32 = &type metadata for String;
    v33 = sub_100026764();
    swift_dynamicCast();
    sub_1000121F8(&v31, v34);
    v13 = 0xEE00454C5449545FLL;
    v14 = 0x485449575F415049;
LABEL_9:
    sub_10028088C(&qword_10097A3C8, &qword_1007FD5D8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007F5670;
    sub_10028088C(&qword_10097A3D0, &qword_1007FD5E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = v14;
    *(inited + 40) = v13;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(v1, "totalSharedItemsCount")}];
    v17 = sub_100281A6C(inited);
    swift_setDeallocating();
    sub_100005508(inited + 32, &qword_10097A3D8, &qword_1007FD5E8);
    *(v15 + 32) = v17;
    sub_10028088C(&unk_10097A3E0, &unk_1007FD5F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v1 alertMessageLocalizedKeyForTypeDicts:isa];

    v20 = SFLocalizedStringForKey();
    if (v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007F8A70;
      v22 = [v1 senderName];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        *(v21 + 56) = &type metadata for String;
        *(v21 + 64) = sub_100026764();
        *(v21 + 32) = v24;
        *(v21 + 40) = v26;
        sub_1002A9938(v34, v21 + 72);
        v27 = static String.localizedStringWithFormat(_:_:)();

        sub_10000C60C(v34);
        return v27;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100357344()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "updatePossibleActions");
  v1 = [v0 transfer];
  v2 = [v1 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjectType();
  _typeName(_:qualified:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = SFLocalizedStringForKey();

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  if (v6)
  {
    v13 = String._bridgeToObjectiveC()();

    if (v10)
    {
LABEL_9:
      v14 = String._bridgeToObjectiveC()();

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_12:
  v15 = [objc_allocWithZone(SFAirDropAction) initWithTransferIdentifier:v11 actionIdentifier:v12 title:v13 singleItemTitle:v14 type:1];

  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    v23[4] = sub_100358B08;
    v23[5] = v16;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_10035835C;
    v23[3] = &unk_1008DD130;
    v17 = _Block_copy(v23);
    v18 = v0;

    [v15 setActionHandler:v17];
    _Block_release(v17);
    v19 = [v18 transfer];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1007FD580;
    *(v20 + 32) = v15;
    sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
    v21 = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 setPossibleActions:isa];
  }
}

uint64_t sub_1003576C0(uint64_t (*a1)(char a1, char a2, char a3), uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v88 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v111 = *(v11 - 8);
  v112 = v11;
  v12 = *(v111 + 64);
  v13 = __chkstk_darwin(v11);
  v102 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v101 = (&v84 - v14);
  v15 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v115 = *(v15 - 8);
  __chkstk_darwin(v15);
  v95 = (&v84 - v16);
  v17 = sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v18 = __chkstk_darwin(v17 - 8);
  v110 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v108 = &v84 - v20;
  v93 = v4;
  v92 = v5;
  v91 = v8;
  v90 = v7;
  v89 = v9;
  if (a1)
  {
    v21 = sub_100358D10;
    v22 = a1;
    v23 = a2;
  }

  else
  {
    v24 = [v116 completionHandler];
    v23 = swift_allocObject();
    *(v23 + 16) = v24;
    v21 = sub_100358B5C;
    v22 = sub_100358B34;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  *(v26 + 24) = v25;
  v94 = v26;

  sub_1000387D0(a1, a2);
  v27 = &selRef_shareUserDefaultsActivity;
  v28 = [v116 transfer];
  v29 = [v28 completedURLs];

  if (!v29)
  {
    v30 = _swiftEmptyArrayStorage;
    v31 = _swiftEmptyArrayStorage[2];
    if (v31)
    {
      goto LABEL_6;
    }

LABEL_17:

    if (qword_1009736A0 == -1)
    {
LABEL_18:
      v75 = type metadata accessor for Logger();
      sub_10000C4AC(v75, qword_10097A368);
      v76 = v116;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = v21;
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138412290;
        v82 = [v76 v27[505]];
        *(v80 + 4) = v82;
        *v81 = v82;
        _os_log_impl(&_mh_execute_header, v77, v78, "No completedURLs to install for %@", v80, 0xCu);
        sub_100005508(v81, &qword_100975400, &qword_1007F65D0);

        v21 = v79;
      }

      LOBYTE(aBlock) = 0;
      LOBYTE(v118) = 0;
      v117 = 1;
      (v21)(&aBlock, &v118, &v117);
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = v30[2];
  if (!v31)
  {
    goto LABEL_17;
  }

LABEL_6:

  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v87 = static OS_dispatch_queue.main.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100358B60;
  v86 = v32;
  *(v32 + 24) = v94;
  v96 = v30;
  v33 = v30[2];

  v107 = dispatch_group_create();
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v106 = swift_allocObject();
  *(v106 + 16) = 0;
  v34 = _swiftEmptyArrayStorage;
  v85 = v33;
  if (v33)
  {
    sub_10028088C(&qword_10097A3C0, &qword_1007FD5D0);
    v34 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v34[2] = v33;
    memset(v34 + 4, 2, v33);
  }

  v35 = 0;
  v105 = swift_allocObject();
  *(v105 + 16) = v34;
  v109 = v111 + 16;
  v104 = (v115 + 56);
  v103 = (v115 + 48);
  v116 = (v111 + 32);
  v99 = v12 + 7;
  v98 = &v121;
  v97 = v111 + 8;
  v100 = v31;
LABEL_9:
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v35 >= v96[2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = v111;
  v36 = v112;
  v38 = v96 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35;
  v39 = *(v15 + 48);
  v40 = v95;
  *v95 = v35;
  (*(v37 + 16))(v40 + v39, v38, v36);
  sub_10002C4E4(v40, v110, &qword_10097A3B0, &unk_1007FD5B0);
  v41 = 0;
  for (i = v35 + 1; ; i = v65)
  {
    v43 = v108;
    v44 = v110;
    (*v104)(v110, v41, 1, v15);
    sub_10002C4E4(v44, v43, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*v103)(v43, 1, v15) == 1)
    {
      break;
    }

    v45 = *v43;
    v46 = *(v15 + 48);
    v27 = v111;
    v47 = v112;
    v113 = *(v111 + 32);
    v21 = v101;
    v113(v101, v43 + v46, v112);
    v115 = i;
    v48 = v107;
    dispatch_group_enter(v107);
    v49 = swift_allocObject();
    v50 = v105;
    v49[2] = v106;
    v49[3] = v50;
    v49[4] = v45;
    v49[5] = v48;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_100358C08;
    *(v51 + 24) = v49;
    v114 = objc_opt_self();

    v52 = v48;
    URL._bridgeToObjectiveC()(v53);
    v55 = v54;
    v56 = v15;
    v57 = v102;
    (v27[2])(v102, v21, v47);
    v58 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v59 = (v99 + v58) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    v61 = v57;
    v15 = v56;
    v113((v60 + v58), v61, v47);
    v62 = (v60 + v59);
    v35 = v115;
    *v62 = sub_100358C14;
    v62[1] = v51;
    v123 = sub_100358C1C;
    v124 = v60;
    aBlock = _NSConcreteStackBlock;
    v120 = 1107296256;
    v121 = sub_1003E3364;
    v122 = &unk_1008DD2E8;
    v63 = _Block_copy(&aBlock);

    [v114 installApplication:v55 options:0 completion:v63];
    v64 = v63;
    v65 = v100;
    _Block_release(v64);

    (v27[1])(v21, v47);
    if (v35 != v65)
    {
      goto LABEL_9;
    }

    v41 = 1;
  }

  v66 = swift_allocObject();
  v67 = v85;
  v66[2] = v105;
  v66[3] = v67;
  v68 = v86;
  v66[4] = sub_100358BA8;
  v66[5] = v68;
  v123 = sub_100358BFC;
  v124 = v66;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_100011678;
  v122 = &unk_1008DD248;
  v69 = _Block_copy(&aBlock);

  v70 = v88;
  static DispatchQoS.unspecified.getter();
  v118 = _swiftEmptyArrayStorage;
  sub_1000142E4(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  v71 = v90;
  v72 = v93;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v73 = v87;
  v74 = v107;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v69);

  (*(v92 + 8))(v71, v72);
  (*(v89 + 8))(v70, v91);
}

void sub_10035835C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100358410(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  if (a3)
  {
    swift_errorRetain();
    if (qword_1009736A0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097A368);
    (*(v11 + 16))(v19, a4, v10);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = a3;
      v54 = v24;
      *v23 = 136315394;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v25 = String.init<A>(describing:)();
      v27 = sub_10000C4E4(v25, v26, &v54);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = URL.description.getter();
      v30 = v29;
      (*(v11 + 8))(v19, v10);
      v31 = sub_10000C4E4(v28, v30, &v54);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "IPA Handler: Failed to install app with error (%s for URL %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v19, v10);
    }

LABEL_13:
    v40 = 0;
    return v52(v40);
  }

  if (!a2)
  {
    if (qword_1009736A0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000C4AC(v42, qword_10097A368);
    (*(v11 + 16))(v17, a4, v10);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      *v45 = 136315138;
      sub_1000142E4(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v11 + 8))(v17, v10);
      v50 = sub_10000C4E4(v47, v49, &v54);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "IPA Handler: No error or success bundle ID for installing: %s", v45, 0xCu);
      sub_10000C60C(v46);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    goto LABEL_13;
  }

  if (qword_1009736A0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000C4AC(v32, qword_10097A368);
  (*(v11 + 16))(v14, a4, v10);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_10000C4E4(a1, a2, &v54);
    *(v35 + 12) = 2080;
    v36 = URL.description.getter();
    v38 = v37;
    (*(v11 + 8))(v14, v10);
    v39 = sub_10000C4E4(v36, v38, &v54);

    *(v35 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "IPA Handler: Successful app install '%s' for URL %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v40 = 1;
  return v52(v40);
}

uint64_t sub_100358B60(char a1, char a2, char a3)
{
  v4 = *(v3 + 16);
  v8 = a1;
  v7 = a2;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

uint64_t sub_100358BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 32);
  do
  {
    v4 = v2;
    if (!v2)
    {
      break;
    }

    v5 = *v3++;
    --v2;
  }

  while ((v5 & 1) != 0);
  return (*(v1 + 16))(v4 == 0, 0, 1);
}

uint64_t sub_100358C1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_100358410(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_100358D1C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A3F0);
  v1 = sub_10000C4AC(v0, qword_10097A3F0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100358DE4()
{
  v1 = type metadata accessor for SFPlatform();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  if (![v5 discoverableLevel])
  {
    sub_10002A73C();
  }

  if ([v5 screenStateSupportsAirDrop] && objc_msgSend(v5, "discoverableLevel") && objc_msgSend(v5, "wirelessEnabled") && objc_msgSend(v5, "bluetoothEnabledIncludingRestricted"))
  {
    static SFPlatform.watchOS.getter();
    v6 = static SFPlatform.isPlatform(_:)();
    (*(v2 + 8))(v4, v1);
    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100358F30()
{
  v1 = type metadata accessor for SFPlatform();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  if ([v5 discoverableLevel])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_10002A73C();
  }

  v7 = [v5 screenStateSupportsAirDrop];
  LOBYTE(v8) = 0;
  if (v7 && (v6 & 1) != 0)
  {
    if (![v5 wirelessEnabled] || !objc_msgSend(v5, "bluetoothEnabledIncludingRestricted"))
    {
      goto LABEL_11;
    }

    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes;
    swift_beginAccess();
    v8 = *(*(v0 + v9) + 16);
    if (v8)
    {
      v10 = [v5 bluetoothAddress];
      if (v10)
      {
        v11 = v10;
        v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        sub_100026AC0(v12, v14);
        static SFPlatform.watchOS.getter();
        LOBYTE(v11) = static SFPlatform.isPlatform(_:)();
        (*(v2 + 8))(v4, v1);
        LOBYTE(v8) = v11 ^ 1;
        return v8 & 1;
      }

LABEL_11:
      LOBYTE(v8) = 0;
    }
  }

  return v8 & 1;
}

void sub_1003590E8()
{
  v1 = v0;
  v2 = type metadata accessor for SFPlatform();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097A3F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting AirDrop Receive Connection Manager", v9, 2u);
  }

  static SFPlatform.tvOS.getter();
  v10 = static SFPlatform.isPlatform(_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if ((v10 & 1) == 0)
  {
    sub_100359310();
    if ([*(v1 + 48) screenStateSupportsAirDrop])
    {
      static SFPlatform.watchOS.getter();
      v12 = static SFPlatform.isPlatform(_:)();
      v11(v5, v2);
      if ((v12 & 1) == 0)
      {
        v13 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID;

        sub_1005C1F1C(v1 + v13, sub_10037098C, v1);
      }

      sub_100359850(0);
    }
  }
}

void sub_100359310()
{
  v1 = v0;
  v2 = type metadata accessor for SFPlatform();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 104);
  [v6 addObserver:v0 selector:"screenStateChangedWithNotification:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  [v6 addObserver:v0 selector:"screenStateChangedWithNotification:" name:@"com.apple.sharingd.MirroringStateChanged" object:0];
  [v6 addObserver:v0 selector:"appleIDChangedWithNotification:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
  [v6 addObserver:v0 selector:"discoverableModeChangedWithNotification:" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];
  [v6 addObserver:v0 selector:"deviceNameChangedWithNotification:" name:@"com.apple.sharingd.LocalHostNameChanged" object:0];
  [v6 addObserver:v0 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.WirelessModeChanged" object:0];
  [v6 addObserver:v0 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
  [v6 addObserver:v0 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.BluetoothPowerChanged" object:0];
  v7 = String._bridgeToObjectiveC()();
  [v6 addObserver:v0 selector:"contactHashsesChangedWithNotification:" name:v7 object:0];

  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = String._bridgeToObjectiveC()();
  [v8 initWithSuiteName:v9];

  swift_allocObject();
  swift_weakInit();
  v10 = objc_allocWithZone(type metadata accessor for SFUserDefaultObserver());
  v11 = SFUserDefaultObserver.init(key:storage:_:)();
  v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_togetherDefaultsObserver);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_togetherDefaultsObserver) = v11;

  static SFPlatform.macOS.getter();
  LOBYTE(v8) = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    [v6 addObserver:v1 selector:"consoleUserChangedWithNotification:" name:@"com.apple.sharingd.ConsoleUserChanged" object:0];
  }

  v13 = [SFNotificationAirDropCellularUsageChanged UTF8String];
  sub_1002DDC10();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100370A64;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006935D4;
  aBlock[3] = &unk_1008DD4D8;
  v16 = _Block_copy(aBlock);

  swift_beginAccess();
  v17 = notify_register_dispatch(v13, (v1 + 112), v14, v16);
  swift_endAccess();
  _Block_release(v16);

  if (v17)
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_10097A3F0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to register for cellular usage changed notifications with status %u", v21, 8u);
    }
  }
}

void sub_100359850(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_10035FAFC(a1);
  if (v3)
  {
    if (v3 != 1)
    {
      return;
    }

    if (!*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer))
    {
      goto LABEL_17;
    }
  }

  else if (!*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer))
  {
    if (!v3)
    {
      if (sub_100358DE4())
      {
        v33 = v1[6];
        v34 = v1[11];
        v35 = objc_allocWithZone(type metadata accessor for SDAirDropApplicationServiceServer());
        v36 = v33;

        v37 = sub_10040B974(v36, v34, v1, &off_1008DD350);

        v38 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer);
        *v38 = v37;
        v38[1] = &off_1008DFBE0;
        oslog = v37;
        swift_unknownObjectRelease();
        sub_100409758();
        goto LABEL_31;
      }

      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000C4AC(v39, qword_10097A3F0);
      oslog = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v30))
      {
        goto LABEL_31;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Ignoring Application Service Server Start";
LABEL_24:
      _os_log_impl(&_mh_execute_header, oslog, v30, v32, v31, 2u);

LABEL_31:

      return;
    }

LABEL_17:
    if (sub_100358F30())
    {
      v11 = v1[6];
      v12 = v1[7];
      v13 = v1[9];
      v14 = v1[11];
      v15 = v2[12];
      v16 = type metadata accessor for SDAirDropBonjourServer();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener] = 0;
      v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_serverType] = 1;
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_connections] = _swiftEmptyArrayStorage;
      v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility] = 0;
      v18 = &v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_delegate];
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceStatus] = v11;
      v19 = type metadata accessor for SDAirDropDeviceSupportManager();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_deviceStatus] = v11;
      *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_nearbyAgent] = v12;
      v43.receiver = v20;
      v43.super_class = v19;
      v21 = v11;
      v22 = v12;
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceSupportManager] = objc_msgSendSuper2(&v43, "init");
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_sessionLogger] = v14;
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_idmsService] = v13;
      *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_queue] = v15;
      *(v18 + 1) = &off_1008DD350;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SFAirDropUserDefaults();

      v23 = v13;
      v24 = v15;
      v25 = static SFAirDropUserDefaults.shared.getter();
      LOBYTE(v18) = SFAirDropUserDefaults.privacyImprovements.getter();

      v17[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_privacyImprovements] = v18 & 1;
      v42.receiver = v17;
      v42.super_class = v16;
      v26 = objc_msgSendSuper2(&v42, "init");
      v27 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer);
      *v27 = v26;
      v27[1] = &off_1008DD6B8;
      v28 = v26;
      swift_unknownObjectRelease();
      sub_1003710F8();

      return;
    }

    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_10097A3F0);
    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v30))
    {
      goto LABEL_31;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Ignoring Bonjour Server Start";
    goto LABEL_24;
  }

  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v5))
  {
    goto LABEL_31;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v41 = v7;
  *v6 = 136315138;
  if (v3)
  {
    v8 = 0x2072756F6A6E6F42;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v9 = 0xEE00726576726553;
  }

  else
  {
    v9 = 0x800000010078D790;
  }

  v10 = sub_10000C4E4(v8, v9, &v41);

  *(v6 + 4) = v10;
  _os_log_impl(&_mh_execute_header, oslog, v5, "Server already exists for type %s", v6, 0xCu);
  sub_10000C60C(v7);
}

uint64_t sub_100359E00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_10028088C(&qword_10097A640, &qword_1007FD770);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_10028088C(&qword_10097A648, &qword_1007FD778);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for SDAirDropServerConnection(0);
  v2[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_100359F68, v3, 0);
}

uint64_t sub_100359F68()
{
  sub_1003708C4(v0[2], v0[11], type metadata accessor for SDAirDropServerConnection);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v1 = v0[11];
    v2 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v3 = type metadata accessor for UUID();
    (*(*(v3 - 8) + 8))(v1 + v2, v3);
  }

  v4 = v0[9];
  NWConnection.start(queue:)();

  v5 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v0[13] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[14] = v7;
  v0[15] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v4, 1, 1, v5);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_10035A100;
  v9 = v0[9];
  v10 = v0[2];

  return sub_10035AD88(v9, v10);
}

uint64_t sub_10035A100()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 32);
  v5 = *v0;

  sub_100005508(v2, &qword_10097A648, &qword_1007FD778);
  v6 = *(v4 + 48);
  *(v1 + 168) = v6;
  v7 = swift_task_alloc();
  *(v1 + 136) = v7;
  *v7 = v5;
  v7[1] = sub_10035A2B0;
  v8 = *(v1 + 64);

  return sub_1005ABEB8(v8, v3 + v6);
}

uint64_t sub_10035A2B0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_10035ABA8;
  }

  else
  {
    v4 = sub_10035A3DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035A3DC()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  sub_10000FF90(v0[8], v4, &qword_10097A640, &qword_1007FD770);
  sub_10000ED10(v4 + *(v5 + 48), v3, type metadata accessor for SDAirDropServerConnectionIdentity);
  v1(v3, 0, 1, v2);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_10035A4E8;
  v7 = v0[9];
  v8 = v0[2];

  return sub_10035AD88(v7, v8);
}

uint64_t sub_10035A4E8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);

  sub_100005508(v2, &qword_10097A648, &qword_1007FD778);
  sub_10037092C(v3, type metadata accessor for SDAirDropMessage);

  return _swift_task_switch(sub_10035A65C, v1, 0);
}

uint64_t sub_10035A65C()
{
  v33 = v0;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  sub_10000FF90(v1, v2, &qword_10097A640, &qword_1007FD770);
  sub_10000FF90(v1, v3, &qword_10097A640, &qword_1007FD770);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v30 = v10;
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v11 = 136315394;
    sub_10000FF90(v8, v7, &qword_10097A640, &qword_1007FD770);
    v12 = *(v10 + 48);
    v31 = v6;
    v13 = sub_1005ADA80();
    v15 = v14;
    sub_100005508(v8, &qword_10097A640, &qword_1007FD770);
    sub_10037092C(v7 + v12, type metadata accessor for SDAirDropServerConnectionIdentity);
    sub_10037092C(v7, type metadata accessor for SDAirDropMessage);
    v16 = sub_10000C4E4(v13, v15, &v32);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_10000FF90(v9, v7, &qword_10097A640, &qword_1007FD770);
    v17 = *(v30 + 48);
    v18 = sub_100562218();
    v20 = v19;
    sub_100005508(v9, &qword_10097A640, &qword_1007FD770);
    sub_10037092C(v7, type metadata accessor for SDAirDropMessage);
    sub_10037092C(v7 + v17, type metadata accessor for SDAirDropServerConnectionIdentity);
    v21 = sub_10000C4E4(v18, v20, &v32);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v31, "Message id: %s, message: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);

    sub_100005508(v23, &qword_10097A640, &qword_1007FD770);
    sub_100005508(v22, &qword_10097A640, &qword_1007FD770);
  }

  v24 = *(v0 + 168);
  v25 = *(v0 + 64);
  v26 = swift_task_alloc();
  *(v0 + 160) = v26;
  *v26 = v0;
  v26[1] = sub_10035A9DC;
  v27 = *(v0 + 64);
  v28 = *(v0 + 16);

  return sub_10035B228(v27, v28, v25 + v24);
}

uint64_t sub_10035A9DC()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_10035AAEC, v1, 0);
}

uint64_t sub_10035AAEC()
{
  sub_100005508(*(v0 + 64), &qword_10097A640, &qword_1007FD770);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035ABA8()
{
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A3F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error receiving message %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10035AD88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for NWConnection.State();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for SDAirDropServerConnection(0);
  v3[12] = v6;
  v7 = *(v6 - 8);
  v3[13] = v7;
  v3[14] = *(v7 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_10035AF6C, v8, 0);
}

uint64_t sub_10035AF6C()
{
  sub_1003708C4(v0[3], v0[16], type metadata accessor for SDAirDropServerConnection);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v1 = v0[16];
    v2 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v3 = type metadata accessor for UUID();
    (*(*(v3 - 8) + 8))(v1 + v2, v3);
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  NWConnection.state.getter();
  (*(v7 + 104))(v5, enum case for NWConnection.State.ready(_:), v6);
  v8 = static NWConnection.State.== infix(_:_:)();
  v9 = *(v7 + 8);
  v9(v5, v6);
  v9(v4, v6);
  if (v8)
  {
    sub_100367834(v0[2], v0[3]);
  }

  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];
  sub_10000FF90(v0[2], v13, &qword_10097A648, &qword_1007FD778);
  sub_1003708C4(v16, v10, type metadata accessor for SDAirDropServerConnection);
  v17 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v18 = (v12 + *(v11 + 80) + v17) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  sub_10002C4E4(v13, v19 + v17, &qword_10097A648, &qword_1007FD778);
  sub_10000ED10(v10, v19 + v18, type metadata accessor for SDAirDropServerConnection);

  NWConnection.stateUpdateHandler.setter();

  v20 = v0[1];

  return v20();
}

uint64_t sub_10035B228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  _s12ErrorRequestVMa(0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  _s15ExchangeRequestVMa(0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = _s13UploadRequestVMa(0);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  _s10AskRequestVMa(0);
  v4[35] = swift_task_alloc();
  v4[36] = _s12HelloRequestVMa(0);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for SDAirDropMessage(0);
  v4[41] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[42] = static AirDropActor.shared;

  return _swift_task_switch(sub_10035B41C, v5, 0);
}

uint64_t sub_10035B41C()
{
  v138 = v0;
  sub_1003708C4(*(v0 + 192), *(v0 + 328), type metadata accessor for SDAirDropMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v45 = *(v0 + 208);
        v47 = *(v0 + 192);
        v46 = *(v0 + 200);
        sub_10000ED10(*(v0 + 328), *(v0 + 312), _s12HelloRequestVMa);
        *(v0 + 384) = sub_10036463C(v45, v46, v47);
        if (qword_1009736A8 != -1)
        {
          swift_once();
        }

        v49 = *(v0 + 304);
        v48 = *(v0 + 312);
        v50 = type metadata accessor for Logger();
        sub_10000C4AC(v50, qword_10097A3F0);
        sub_1003708C4(v48, v49, _s12HelloRequestVMa);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        v53 = os_log_type_enabled(v51, v52);
        v54 = *(v0 + 304);
        if (v53)
        {
          v55 = *(v0 + 288);
          v56 = *(v0 + 296);
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v136 = v58;
          *v57 = 136315138;
          sub_1003708C4(v54, v56, _s12HelloRequestVMa);
          _StringGuts.grow(_:)(16);

          strcpy(v137, "HELLO request ");
          HIBYTE(v137[1]) = -18;
          *(v0 + 552) = *(v56 + *(v55 + 20));
          v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v59);

          sub_10037092C(v56, _s12HelloRequestVMa);
          sub_10037092C(v54, _s12HelloRequestVMa);
          v60 = sub_10000C4E4(v137[0], v137[1], &v136);

          *(v57 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v51, v52, "Received HELLO request %s", v57, 0xCu);
          sub_10000C60C(v58);
        }

        else
        {

          sub_10037092C(v54, _s12HelloRequestVMa);
        }

        v118 = swift_task_alloc();
        *(v0 + 392) = v118;
        *v118 = v0;
        v118[1] = sub_10035C918;
        v119 = *(v0 + 312);
        v120 = *(v0 + 200);

        return sub_10063A720(v119, v120);
      case 2:
        v103 = *(v0 + 328);
        v104 = *(v0 + 208);
        v106 = *(v0 + 192);
        v105 = *(v0 + 200);
        v107 = *v103;
        *(v0 + 344) = *v103;
        v108 = *(v103 + 8);
        *(v0 + 352) = v108;
        v109 = *(v103 + 16);
        v110 = *(v103 + 24);
        *(v0 + 360) = sub_10036463C(v104, v105, v106);
        if (qword_1009736A8 != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        sub_10000C4AC(v111, qword_10097A3F0);
        sub_1002A9924(v107, v108);
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();
        sub_10028BCC0(v107, v108);
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v137[0] = v115;
          *v114 = 136315138;
          v135 = v109;
          v134 = v110;
          if (v108 >> 60 == 15)
          {
            v116 = 0x800000010078D760;
            v117 = 0xD00000000000002ALL;
          }

          else
          {
            v117 = Data.description.getter();
            v116 = v130;
          }

          v131 = sub_10000C4E4(v117, v116, v137);

          *(v114 + 4) = v131;
          _os_log_impl(&_mh_execute_header, v112, v113, "Received DISCOVER request {senderRecordData: %s}", v114, 0xCu);
          sub_10000C60C(v115);

          v109 = v135;
          v110 = v134;
        }

        else
        {
        }

        v132 = swift_task_alloc();
        *(v0 + 368) = v132;
        *v132 = v0;
        v132[1] = sub_10035C6F0;
        v133 = *(v0 + 200);

        return sub_100638B44(v107, v108, v109, v110, v133);
      case 4:
        v18 = *(v0 + 208);
        v20 = *(v0 + 192);
        v19 = *(v0 + 200);
        sub_10000ED10(*(v0 + 328), *(v0 + 280), _s10AskRequestVMa);
        *(v0 + 408) = sub_10036463C(v18, v19, v20);
        if (qword_1009736A8 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000C4AC(v21, qword_10097A3F0);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "Received ASK request", v24, 2u);
        }

        v25 = swift_task_alloc();
        *(v0 + 416) = v25;
        *v25 = v0;
        v25[1] = sub_10035CB54;
        v26 = *(v0 + 280);
        v27 = *(v0 + 200);

        return sub_10063AECC(v26, v27);
    }

LABEL_29:
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000C4AC(v61, qword_10097A3F0);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unsupported message type", v64, 2u);
    }

    v65 = *(v0 + 328);

    v66 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1000053E8(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v66 - 8) + 104))(v67, enum case for SFAirDropReceive.Failure.badRequest(_:), v66);
    swift_willThrow();
    sub_10037092C(v65, type metadata accessor for SDAirDropMessage);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Missing handler after failure", v70, 2u);
    }

    sub_1005ADD74(0);

    v71 = *(v0 + 8);

    return v71();
  }

  if (EnumCaseMultiPayload > 9)
  {
    if (EnumCaseMultiPayload == 10)
    {
      v85 = *(v0 + 328);
      v86 = *(v0 + 208);
      v88 = *(v0 + 192);
      v87 = *(v0 + 200);
      v89 = *(v85 + 16);
      *(v0 + 16) = *v85;
      *(v0 + 32) = v89;
      v91 = *(v85 + 48);
      v90 = *(v85 + 64);
      v92 = *(v85 + 32);
      *(v0 + 96) = *(v85 + 80);
      *(v0 + 64) = v91;
      *(v0 + 80) = v90;
      *(v0 + 48) = v92;
      *(v0 + 480) = sub_10036463C(v86, v87, v88);
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_10000C4AC(v93, qword_10097A3F0);
      sub_1003398A0(v0 + 16, v0 + 104);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();
      sub_1003398D8(v0 + 16);
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v137[0] = v97;
        *v96 = 136315138;
        v98 = *(v0 + 80);
        v99 = *(v0 + 88);

        v100 = sub_10000C4E4(v98, v99, v137);

        *(v96 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v94, v95, "Received IDENTITY-SHARE request %s", v96, 0xCu);
        sub_10000C60C(v97);
      }

      v101 = swift_task_alloc();
      *(v0 + 488) = v101;
      *v101 = v0;
      v101[1] = sub_10035D208;
      v102 = *(v0 + 200);

      return sub_10063F5EC(v0 + 16, v102);
    }

    if (EnumCaseMultiPayload == 12)
    {
      v29 = *(v0 + 208);
      v31 = *(v0 + 192);
      v30 = *(v0 + 200);
      sub_10000ED10(*(v0 + 328), *(v0 + 232), _s12ErrorRequestVMa);
      *(v0 + 504) = sub_10036463C(v29, v30, v31);
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 224);
      v32 = *(v0 + 232);
      v34 = type metadata accessor for Logger();
      sub_10000C4AC(v34, qword_10097A3F0);
      sub_1003708C4(v32, v33, _s12ErrorRequestVMa);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 224);
      if (v37)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v137[0] = v40;
        *v39 = 136315138;
        type metadata accessor for SFAirDrop.TransferIdentifier();
        sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        sub_10037092C(v38, _s12ErrorRequestVMa);
        v44 = sub_10000C4E4(v41, v43, v137);

        *(v39 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v35, v36, "Received ERROR request %s", v39, 0xCu);
        sub_10000C60C(v40);
      }

      else
      {

        sub_10037092C(v38, _s12ErrorRequestVMa);
      }

      v127 = swift_task_alloc();
      *(v0 + 512) = v127;
      *v127 = v0;
      v127[1] = sub_10035D430;
      v128 = *(v0 + 232);
      v129 = *(v0 + 200);

      return sub_10063FD30(v128, v129);
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v2 = *(v0 + 208);
      v4 = *(v0 + 192);
      v3 = *(v0 + 200);
      sub_10000ED10(*(v0 + 328), *(v0 + 248), _s15ExchangeRequestVMa);
      *(v0 + 456) = sub_10036463C(v2, v3, v4);
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_10097A3F0);
      sub_1003708C4(v5, v6, _s15ExchangeRequestVMa);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 240);
      if (v10)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v137[0] = v13;
        *v12 = 136315138;
        type metadata accessor for SFAirDrop.TransferIdentifier();
        sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        sub_10037092C(v11, _s15ExchangeRequestVMa);
        v17 = sub_10000C4E4(v14, v16, v137);

        *(v12 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v8, v9, "Received EXCHANGE request %s", v12, 0xCu);
        sub_10000C60C(v13);
      }

      else
      {

        sub_10037092C(v11, _s15ExchangeRequestVMa);
      }

      v124 = swift_task_alloc();
      *(v0 + 464) = v124;
      *v124 = v0;
      v124[1] = sub_10035CFCC;
      v125 = *(v0 + 248);
      v126 = *(v0 + 200);

      return sub_10063EF58(v125, v126);
    }

    goto LABEL_29;
  }

  v72 = *(v0 + 208);
  v74 = *(v0 + 192);
  v73 = *(v0 + 200);
  sub_10000ED10(*(v0 + 328), *(v0 + 272), _s13UploadRequestVMa);
  *(v0 + 432) = sub_10036463C(v72, v73, v74);
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v76 = *(v0 + 264);
  v75 = *(v0 + 272);
  v77 = type metadata accessor for Logger();
  sub_10000C4AC(v77, qword_10097A3F0);
  sub_1003708C4(v75, v76, _s13UploadRequestVMa);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v0 + 264);
  if (v80)
  {
    v82 = *(v0 + 256);
    v83 = swift_slowAlloc();
    *v83 = 134217984;
    v84 = *(v81 + *(v82 + 20));
    sub_10037092C(v81, _s13UploadRequestVMa);
    *(v83 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v78, v79, "Received UPLOAD request %ld", v83, 0xCu);
  }

  else
  {
    sub_10037092C(*(v0 + 264), _s13UploadRequestVMa);
  }

  v121 = swift_task_alloc();
  *(v0 + 440) = v121;
  *v121 = v0;
  v121[1] = sub_10035CD90;
  v122 = *(v0 + 272);
  v123 = *(v0 + 200);

  return sub_10063C718(v122, v123);
}

uint64_t sub_10035C6F0()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_10035D8A8;
  }

  else
  {
    v4 = sub_10035C81C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035C81C()
{
  v1 = v0[45];
  sub_10028BCC0(v0[43], v0[44]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10035C918()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_10035DAA0;
  }

  else
  {
    v4 = sub_10035CA44;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035CA44()
{
  v1 = v0[48];
  sub_10037092C(v0[39], _s12HelloRequestVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10035CB54()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_10035DCAC;
  }

  else
  {
    v4 = sub_10035CC80;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035CC80()
{
  v1 = v0[51];
  sub_10037092C(v0[35], _s10AskRequestVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10035CD90()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_10035DEB8;
  }

  else
  {
    v4 = sub_10035CEBC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035CEBC()
{
  v1 = v0[54];
  sub_10037092C(v0[34], _s13UploadRequestVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10035CFCC()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_10035E0C4;
  }

  else
  {
    v4 = sub_10035D0F8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035D0F8()
{
  v1 = v0[57];
  sub_10037092C(v0[31], _s15ExchangeRequestVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10035D208()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_10035E2D0;
  }

  else
  {
    v4 = sub_10035D334;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035D334()
{
  v1 = *(v0 + 480);
  sub_1003398D8(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10035D430()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_10035E4C8;
  }

  else
  {
    v4 = sub_10035D55C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035D55C()
{
  v1 = v0[63];
  sub_10037092C(v0[29], _s12ErrorRequestVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10035D66C()
{
  v1 = *(*v0 + 336);

  return _swift_task_switch(sub_10035D798, v1, 0);
}

uint64_t sub_10035D798()
{
  v1 = *(v0 + 528);

  sub_1005ADD74(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10035D8A8()
{
  sub_10028BCC0(v0[43], v0[44]);
  v1 = v0[47];
  v2 = v0[45];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035DAA0()
{
  sub_10037092C(v0[39], _s12HelloRequestVMa);
  v1 = v0[50];
  v2 = v0[48];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035DCAC()
{
  sub_10037092C(v0[35], _s10AskRequestVMa);
  v1 = v0[53];
  v2 = v0[51];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035DEB8()
{
  sub_10037092C(v0[34], _s13UploadRequestVMa);
  v1 = v0[56];
  v2 = v0[54];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035E0C4()
{
  sub_10037092C(v0[31], _s15ExchangeRequestVMa);
  v1 = v0[59];
  v2 = v0[57];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035E2D0()
{
  sub_1003398D8((v0 + 2));
  v1 = v0[62];
  v2 = v0[60];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035E4C8()
{
  sub_10037092C(v0[29], _s12ErrorRequestVMa);
  v1 = v0[65];
  v2 = v0[63];
  v0[67] = v1;
  v0[66] = v2;
  v3 = qword_1009736A8;
  v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handling message %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  sub_1006408B0(v1);
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_10035D66C;
  v11 = v0[26];

  return sub_1003609F4(v11, v1);
}

uint64_t sub_10035E6D4(char a1, uint64_t a2)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = v2;
  *(v3 + 208) = a1;
  v4 = type metadata accessor for CodableError();
  *(v3 + 176) = v4;
  *(v3 + 184) = *(v4 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10035E7DC, v5, 0);
}

uint64_t sub_10035E7DC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v46 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  if (!*(v0 + 208))
  {
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors;
    swift_beginAccess();
    v18 = *(v4 + v17);
    v19 = type metadata accessor for NWError();
    sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    v20 = (*(v19 - 8) + 16);
    v44 = *v20;
    (*v20)(v21, v3, v19);

    CodableError.init(_:)();
    v22 = sub_100569328(v1, v18);

    v23 = *(v2 + 8);
    v23(v1, v46);
    if (v22)
    {
      goto LABEL_10;
    }

    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v42 = *(v0 + 176);
    v26 = *(v0 + 160);
    swift_allocError();
    v44(v27, v26, v19);
    CodableError.init(_:)();
    swift_beginAccess();
    sub_10046E5C8(v25, v24);
    swift_endAccess();
    v23(v25, v42);
    v16 = 0;
    goto LABEL_7;
  }

  if (*(v0 + 208) == 1)
  {
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServerErrors;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = type metadata accessor for NWError();
    sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    v8 = (*(v7 - 8) + 16);
    v43 = *v8;
    (*v8)(v9, v3, v7);

    CodableError.init(_:)();
    v10 = sub_100569328(v1, v6);

    v11 = *(v2 + 8);
    v11(v1, v46);
    if (v10)
    {
      goto LABEL_10;
    }

    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v41 = *(v0 + 176);
    v14 = *(v0 + 160);
    swift_allocError();
    v43(v15, v14, v7);
    CodableError.init(_:)();
    swift_beginAccess();
    sub_10046E5C8(v13, v12);
    swift_endAccess();
    v11(v13, v41);
    v16 = 1;
LABEL_7:
    sub_100359850(v16);
    goto LABEL_10;
  }

  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServerErrors;
  swift_beginAccess();
  v29 = *(v4 + v28);
  v30 = type metadata accessor for NWError();
  sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
  swift_allocError();
  v31 = (*(v30 - 8) + 16);
  v45 = *v31;
  (*v31)(v32, v3, v30);

  CodableError.init(_:)();
  v33 = sub_100569328(v1, v29);

  v34 = *(v2 + 8);
  v34(v1, v46);
  if ((v33 & 1) == 0)
  {
    v35 = *(v0 + 192);
    v36 = *(v0 + 200);
    v47 = *(v0 + 176);
    v37 = *(v0 + 160);
    swift_allocError();
    v45(v38, v37, v30);
    CodableError.init(_:)();
    swift_beginAccess();
    sub_10046E5C8(v36, v35);
    swift_endAccess();
    v34(v36, v47);
  }

LABEL_10:

  v39 = *(v0 + 8);

  return v39();
}

void sub_10035ED60(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v60 = a4;
  v61 = a5;
  v59 = a3;
  v53 = a2;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v56 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v54);
  v55 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v49 - v18;
  __chkstk_darwin(v17);
  v21 = v49 - v20;
  v63 = *(v13 + 16);
  v64 = a1;
  v63(v19, a1, v12);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions;
  swift_beginAccess();
  sub_10046E0A4(v21, v19);
  swift_endAccess();
  v62 = *(v13 + 8);
  v62(v21, v12);
  v23 = *(v6 + 48);
  if (![v23 discoverableLevel])
  {
    sub_10002A73C();
  }

  if (![v23 screenStateSupportsAirDrop] || !objc_msgSend(v23, "wirelessEnabled") || !*(*(v6 + v22) + 16))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000C4AC(v35, qword_10097A3F0);
    v27 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v36))
    {
      goto LABEL_17;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v27, v36, "Ignoring Near Field Server Start", v37, 2u);
LABEL_16:

LABEL_17:

    return;
  }

  v24 = (v6 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID);
  swift_beginAccess();
  if (*(*v24 + 16) && (sub_10000EBD4(v64), (v25 & 1) != 0))
  {
    swift_endAccess();
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_10097A3F0);
    v63(v16, v64, v12);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67[0] = v30;
      *v29 = 136315138;
      sub_1000053E8(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v62(v16, v12);
      v34 = sub_10000C4E4(v31, v33, v67);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Near Field server already running for transaction %s", v29, 0xCu);
      sub_10000C60C(v30);

      goto LABEL_16;
    }

    v62(v16, v12);
  }

  else
  {
    swift_endAccess();
    v38 = v63;
    v63(v21, v64, v12);
    v38(v19, v53, v12);
    v53 = type metadata accessor for SDAirDropNearFieldServer(0);
    v39 = objc_allocWithZone(v53);
    *&v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener] = 0;
    *&v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_networkListener] = 0;
    v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_serverType] = 2;
    *&v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_connections] = _swiftEmptyArrayStorage;
    v51 = &v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_delegate];
    *(v51 + 1) = 0;
    swift_unknownObjectWeakInit();
    v50 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_queue;
    v49[3] = sub_1002DDC10();
    v49[2] = "togetherDefaultsObserver";
    static DispatchQoS.default.getter();
    v67[0] = _swiftEmptyArrayStorage;
    v49[1] = sub_1000053E8(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_10028088C(&unk_10097A630, &unk_1007F5680);
    sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
    v52 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v57 + 104))(v56, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v58);
    *&v39[v50] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v51 + 1) = &off_1008DD350;
    swift_unknownObjectWeakAssign();
    v40 = v63;
    v63(&v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_transactionID], v21, v12);
    v41 = v60;
    *&v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_localIdentity] = v59;
    v42 = &v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_remotePublicKey];
    v43 = v61;
    *v42 = v41;
    v42[1] = v43;
    v40(&v39[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listenerUUID], v19, v12);
    swift_unknownObjectRetain();
    sub_100294008(v41, v43);
    v66.receiver = v39;
    v66.super_class = v53;
    v44 = objc_msgSendSuper2(&v66, "init");
    v45 = v62;
    v62(v19, v12);
    v45(v21, v12);
    v46 = v52;
    swift_beginAccess();
    v47 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *v46;
    *v46 = 0x8000000000000000;
    sub_10036FE24(v47, v64, isUniquelyReferenced_nonNull_native, &v65);
    *v46 = v65;
    swift_endAccess();
    sub_10050149C();
  }
}

void sub_10035F618(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v34[-v9];
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v11 - 8);
  v13 = &v34[-v12];
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (*(v15 + 16) && (v16 = sub_10000EBD4(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 16 * v16 + 8);
    swift_endAccess();
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_10036DC54(a1, v13);
    swift_endAccess();
    sub_100005508(v13, &unk_100976120, &qword_1007F9260);
    v19 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
    swift_beginAccess();
    if (*(*(v2 + v19) + 16))
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_10097A3F0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Near Field server has active connections, not stopping", v23, 2u);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      ObjectType = swift_getObjectType();
      (*(v18 + 64))(ObjectType, v18);
      (*(v5 + 16))(v10, a1, v4);
      swift_beginAccess();
      sub_1002AFD8C(0, 0, v10);
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_10097A3F0);
    (*(v5 + 16))(v8, a1, v4);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v27 = 136315138;
      sub_1000053E8(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v5 + 8))(v8, v4);
      v32 = sub_10000C4E4(v29, v31, v35);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Near Field server does not exist for transaction %s", v27, 0xCu);
      sub_10000C60C(v28);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_10035FAFC(uint64_t result)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v2 = &OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer;
  }

  v3 = (v1 + *v2);
  if (*v3)
  {
    v4 = result;
    v5 = v3[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 48);
    swift_unknownObjectRetain();
    if (v7(ObjectType, v5))
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000C4AC(v8, qword_10097A3F0);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136315138;
        if (v4)
        {
          v13 = 0x2072756F6A6E6F42;
        }

        else
        {
          v13 = 0xD00000000000001ALL;
        }

        if (v4)
        {
          v14 = 0xEE00726576726553;
        }

        else
        {
          v14 = 0x800000010078D790;
        }

        v15 = sub_10000C4E4(v13, v14, &v17);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "AirDrop %s is down, force stopping", v11, 0xCu);
        sub_10000C60C(v12);
      }

      v16 = (*(v5 + 40))(ObjectType, v5);
      sub_10002B8D0(v16, 1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10035FD60(void *a1, char a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = qword_1009735E0;

  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v12 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v13 + 32) = v8;
  *(v13 + 40) = v10;
  *(v13 + 48) = a2 & 1;

  sub_1002B3398(0, 0, v6, &unk_1007FD8B8, v13);
}

uint64_t sub_10035FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_10035FFE0, v7, 0);
}

uint64_t sub_10035FFE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100360084(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_100360084(uint64_t a1, char a2)
{
  v3 = sub_100549548();
  v5 = v3;
  v6 = v4;
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v7)
  {
    if (v3 == v3 >> 32)
    {
LABEL_15:
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000C4AC(v16, qword_10097A3F0);
      oslog = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v17, "Empty AirDrop hashses in advertisement, ignoring", v18, 2u);
      }

      sub_100026AC0(v5, v6);

      return;
    }
  }

  else if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097A3F0);
    sub_100294008(v5, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    sub_100026AC0(v5, v6);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v31[0] = osloga;
      *v11 = 136380675;
      *&v32 = sub_100467BE4(v5, v6);
      v27 = v10;
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v15 = sub_10000C4E4(v12, v14, v31);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v27, "Found BLE device - %{private}s", v11, 0xCu);
      sub_10000C60C(osloga);
    }

    if (sub_10036A1A4())
    {
      sub_100359850(1);
    }
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097A3F0);
    sub_100294008(v5, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    sub_100026AC0(v5, v6);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      oslogb = swift_slowAlloc();
      v31[0] = oslogb;
      *v22 = 136380675;
      *&v32 = sub_100467BE4(v5, v6);
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;

      v26 = sub_10000C4E4(v23, v25, v31);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Lost BLE device - %{private}s", v22, 0xCu);
      sub_10000C60C(oslogb);
    }

    swift_beginAccess();
    sub_10036DF20(v5, v6, &v32);
    swift_endAccess();
    sub_10028BCC0(v32, *(&v32 + 1));
    if ((sub_100358F30() & 1) == 0)
    {
      sub_10002B8D0(1, 0);
    }
  }

  sub_100026AC0(v5, v6);
}

uint64_t sub_1003605F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_100360698, v5, 0);
}

uint64_t sub_100360698()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100360884;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return sub_10053B210(v5, v3, v4);
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097A3F0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing delegate for start receive", v10, 2u);
    }

    v11 = v0[2];

    v12 = enum case for SFAirDropReceive.AskResponse.error(_:);
    v13 = type metadata accessor for SFAirDropReceive.AskResponse();
    (*(*(v13 - 8) + 104))(v11, v12, v13);
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100360884()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100360994, v1, 0);
}

uint64_t sub_100360994()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003609F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v3[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_100360AC4, v4, 0);
}

uint64_t sub_100360AC4()
{
  v19 = v0;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097A3F0);
  sub_1003708C4(v2, v1, type metadata accessor for SDAirDropServerConnectionIdentity);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = sub_1005ADA80();
    v12 = v11;
    sub_10037092C(v7, type metadata accessor for SDAirDropServerConnectionIdentity);
    v13 = sub_10000C4E4(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tearing down handler for server %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_10037092C(v7, type metadata accessor for SDAirDropServerConnectionIdentity);
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_100360CF8;
  v15 = v0[3];
  v16 = v0[2];

  return sub_100360E74(v16, v15);
}

uint64_t sub_100360CF8()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100360E08, v1, 0);
}

uint64_t sub_100360E08()
{
  sub_100362A30(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100360E74(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[41] = static AirDropActor.shared;

  return _swift_task_switch(sub_100360FF8, v5, 0);
}

uint64_t sub_100360FF8()
{
  v102 = v0;
  sub_1003708C4(v0[26], v0[40], type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[28];
      (*(v0[30] + 32))(v0[33], v0[40], v0[29]);
      v3 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
      v0[48] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
      swift_beginAccess();
      v4 = *(v2 + v3);
      if (*(v4 + 16))
      {
        v5 = sub_100570848(v0[33]);
        if (v6)
        {
          v7 = *(*(v4 + 56) + 8 * v5);
          v0[49] = v7;
          swift_endAccess();
          v7;
          v8 = swift_task_alloc();
          v0[50] = v8;
          *v8 = v0;
          v9 = sub_100362140;
LABEL_34:
          v8[1] = v9;
          v77 = v0[27];

          return sub_100641284(v77);
        }
      }

      swift_endAccess();
      v44 = v0[32];
      (*(v0[30] + 16))(v44, v0[33], v0[29]);
      swift_beginAccess();
      sub_1002AFA94(0, v44);
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v45 = v0[36];
      v46 = v0[26];
      v47 = type metadata accessor for Logger();
      sub_10000C4AC(v47, qword_10097A3F0);
      sub_1003708C4(v46, v45, type metadata accessor for SDAirDropServerConnectionIdentity);
      swift_retain_n();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v0[36];
        v99 = v0[33];
        v51 = v0[30];
        v95 = v0[48];
        log = v0[29];
        v52 = v0[28];
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v101 = v54;
        *v53 = 136315394;
        v55 = sub_1005ADA80();
        v57 = v56;
        sub_10037092C(v50, type metadata accessor for SDAirDropServerConnectionIdentity);
        v58 = sub_10000C4E4(v55, v57, &v101);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2048;
        v59 = *(*(v52 + v95) + 16);

        *(v53 + 14) = v59;

        v60 = "Removed handler for bonjour connection %s count: %ld";
LABEL_29:
        _os_log_impl(&_mh_execute_header, v48, v49, v60, v53, 0x16u);
        sub_10000C60C(v54);

        (*(v51 + 8))(v99, log);
        goto LABEL_38;
      }

      v72 = v0[36];
      v73 = v0[33];
    }

    else
    {
      v38 = v0[28];
      (*(v0[30] + 32))(v0[31], v0[40], v0[29]);
      v39 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
      v0[51] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
      swift_beginAccess();
      v40 = *(v38 + v39);
      if (*(v40 + 16))
      {
        v41 = sub_100570848(v0[31]);
        if (v42)
        {
          v43 = *(*(v40 + 56) + 8 * v41);
          v0[52] = v43;
          swift_endAccess();
          v43;
          v8 = swift_task_alloc();
          v0[53] = v8;
          *v8 = v0;
          v9 = sub_1003625BC;
          goto LABEL_34;
        }
      }

      swift_endAccess();
      v61 = v0[32];
      (*(v0[30] + 16))(v61, v0[31], v0[29]);
      swift_beginAccess();
      sub_1002AFA94(0, v61);
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v62 = v0[35];
      v63 = v0[26];
      v64 = type metadata accessor for Logger();
      sub_10000C4AC(v64, qword_10097A3F0);
      sub_1003708C4(v63, v62, type metadata accessor for SDAirDropServerConnectionIdentity);
      swift_retain_n();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v65 = v0[35];
        v51 = v0[30];
        v99 = v0[31];
        v66 = v0[28];
        v96 = v0[51];
        log = v0[29];
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v101 = v54;
        *v53 = 136315394;
        v67 = sub_1005ADA80();
        v69 = v68;
        sub_10037092C(v65, type metadata accessor for SDAirDropServerConnectionIdentity);
        v70 = sub_10000C4E4(v67, v69, &v101);

        *(v53 + 4) = v70;
        *(v53 + 12) = 2048;
        v71 = *(*(v66 + v96) + 16);

        *(v53 + 14) = v71;

        v60 = "Removed handler for quic connection %s count: %ld";
        goto LABEL_29;
      }

      v72 = v0[35];
      v73 = v0[31];
    }

    v74 = v0[29];
    v75 = v0[30];

    sub_10037092C(v72, type metadata accessor for SDAirDropServerConnectionIdentity);
    (*(v75 + 8))(v73, v74);
    goto LABEL_38;
  }

  v10 = v0[28];
  v11 = *v0[40];
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers;
  v0[42] = v11;
  v0[43] = v12;
  swift_beginAccess();
  v13 = *(v10 + v12);
  v14 = *(v13 + 16);
  v0[44] = 0;
  if (v14)
  {
    v15 = (v13 + 40);
    v16 = -v14;
    v17 = 1;
    while (1)
    {
      v18 = *(v15 - 1);
      v0[45] = v18;
      if (v11 == v18)
      {
        break;
      }

      v0[44] = v17;
      v15 += 2;
      ++v17;
      if (v16 + v17 == 1)
      {
        goto LABEL_10;
      }
    }

    v76 = *v15;
    v0[46] = *v15;
    swift_unknownObjectRetain();
    v76;
    v8 = swift_task_alloc();
    v0[47] = v8;
    *v8 = v0;
    v9 = sub_100361BDC;
    goto LABEL_34;
  }

LABEL_10:
  v19 = v0[28];
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourDiscoveryHandlers;
  swift_beginAccess();
  v21 = *(v19 + v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = (v21 + 32);
    while (v11 != *v24)
    {
      ++v23;
      v24 += 2;
      if (v22 == v23)
      {
        goto LABEL_14;
      }
    }

    swift_beginAccess();
    sub_1002CD060(v23);
    v81 = v80;
    swift_endAccess();
    swift_unknownObjectRelease();

    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v82 = v0[38];
    v83 = v0[26];
    v84 = type metadata accessor for Logger();
    sub_10000C4AC(v84, qword_10097A3F0);
    sub_1003708C4(v83, v82, type metadata accessor for SDAirDropServerConnectionIdentity);
    swift_retain_n();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v0[38];
    if (v87)
    {
      v89 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101 = v100;
      *v89 = 136315394;
      loga = v85;
      v90 = sub_1005ADA80();
      v92 = v91;
      sub_10037092C(v88, type metadata accessor for SDAirDropServerConnectionIdentity);
      v93 = sub_10000C4E4(v90, v92, &v101);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2048;
      v94 = *(*(v19 + v20) + 16);

      *(v89 + 14) = v94;

      _os_log_impl(&_mh_execute_header, loga, v86, "Removed handler for discovery bonjour connection %s count: %ld", v89, 0x16u);
      sub_10000C60C(v100);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();

      sub_10037092C(v88, type metadata accessor for SDAirDropServerConnectionIdentity);
    }

    goto LABEL_39;
  }

LABEL_14:
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v25 = v0[37];
  v26 = v0[26];
  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_10097A3F0);
  sub_1003708C4(v26, v25, type metadata accessor for SDAirDropServerConnectionIdentity);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[37];
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v101 = v33;
    *v32 = 136315138;
    v34 = sub_1005ADA80();
    v36 = v35;
    sub_10037092C(v31, type metadata accessor for SDAirDropServerConnectionIdentity);
    v37 = sub_10000C4E4(v34, v36, &v101);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Unable to remove matching handler for connection %s, likely already removed", v32, 0xCu);
    sub_10000C60C(v33);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_10037092C(v31, type metadata accessor for SDAirDropServerConnectionIdentity);
  }

LABEL_38:
  sub_100362A30(v0[26]);
LABEL_39:

  v79 = v0[1];

  return v79();
}

uint64_t sub_100361BDC()
{
  v1 = *(*v0 + 328);

  return _swift_task_switch(sub_100361CEC, v1, 0);
}

uint64_t sub_100361CEC()
{
  v34 = v0;
  v1 = v0[44];
  if (v1 >= *(*(v0[28] + v0[43]) + 16))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097A3F0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[43];
      v23 = v0[44];
      v25 = v0[28];
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = v23;
      *(v26 + 12) = 2048;
      *(v26 + 14) = *(*(v25 + v24) + 16);

      _os_log_impl(&_mh_execute_header, v21, v22, "Attempting to remove at index %ld but only have %ld handlers", v26, 0x16u);
    }

    else
    {
    }

    swift_unknownObjectRelease();

    v28 = v0[46];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_beginAccess();
    sub_1002CD060(v1);
    v3 = v2;
    swift_endAccess();
    swift_unknownObjectRelease();

    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v4 = v0[39];
    v5 = v0[26];
    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_10097A3F0);
    sub_1003708C4(v5, v4, type metadata accessor for SDAirDropServerConnectionIdentity);
    swift_retain_n();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[46];
    if (v9)
    {
      v31 = v0[43];
      v11 = v0[39];
      v12 = v0[28];
      v32 = v0[46];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v13 = 136315394;
      v15 = sub_1005ADA80();
      v17 = v16;
      sub_10037092C(v11, type metadata accessor for SDAirDropServerConnectionIdentity);
      v18 = sub_10000C4E4(v15, v17, &v33);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2048;
      v19 = *(*(v12 + v31) + 16);

      *(v13 + 14) = v19;

      _os_log_impl(&_mh_execute_header, v7, v8, "Removed handler for legacy bonjour connection %s count: %ld", v13, 0x16u);
      sub_10000C60C(v14);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      v27 = v0[39];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_10037092C(v27, type metadata accessor for SDAirDropServerConnectionIdentity);
    }
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_100362140()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 328);

  return _swift_task_switch(sub_100362268, v2, 0);
}

uint64_t sub_100362268()
{
  v29 = v0;
  v1 = v0[49];
  v2 = v0[32];
  (*(v0[30] + 16))(v2, v0[33], v0[29]);
  swift_beginAccess();
  sub_1002AFA94(0, v2);
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = v0[26];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097A3F0);
  sub_1003708C4(v4, v3, type metadata accessor for SDAirDropServerConnectionIdentity);
  swift_retain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v24 = v0[48];
    v8 = v0[36];
    v9 = v0[30];
    v26 = v0[29];
    v27 = v0[33];
    v10 = v0[28];
    v25 = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315394;
    v13 = sub_1005ADA80();
    v15 = v14;
    sub_10037092C(v8, type metadata accessor for SDAirDropServerConnectionIdentity);
    v16 = sub_10000C4E4(v13, v15, &v28);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    v17 = *(*(v10 + v24) + 16);

    *(v11 + 14) = v17;

    _os_log_impl(&_mh_execute_header, v6, v7, "Removed handler for bonjour connection %s count: %ld", v11, 0x16u);
    sub_10000C60C(v12);

    (*(v9 + 8))(v27, v26);
  }

  else
  {
    v18 = v0[36];
    v19 = v0[33];
    v20 = v0[29];
    v21 = v0[30];

    sub_10037092C(v18, type metadata accessor for SDAirDropServerConnectionIdentity);
    (*(v21 + 8))(v19, v20);
  }

  sub_100362A30(v0[26]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1003625BC()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 328);

  return _swift_task_switch(sub_1003626E4, v2, 0);
}

uint64_t sub_1003626E4()
{
  v29 = v0;
  v1 = v0[52];
  v2 = v0[32];
  (*(v0[30] + 16))(v2, v0[31], v0[29]);
  swift_beginAccess();
  sub_1002AFA94(0, v2);
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v3 = v0[35];
  v4 = v0[26];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097A3F0);
  sub_1003708C4(v4, v3, type metadata accessor for SDAirDropServerConnectionIdentity);
  swift_retain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v24 = v0[51];
    v8 = v0[35];
    v9 = v0[30];
    v10 = v0[28];
    v26 = v0[29];
    v27 = v0[31];
    v25 = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315394;
    v13 = sub_1005ADA80();
    v15 = v14;
    sub_10037092C(v8, type metadata accessor for SDAirDropServerConnectionIdentity);
    v16 = sub_10000C4E4(v13, v15, &v28);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    v17 = *(*(v10 + v24) + 16);

    *(v11 + 14) = v17;

    _os_log_impl(&_mh_execute_header, v6, v7, "Removed handler for quic connection %s count: %ld", v11, 0x16u);
    sub_10000C60C(v12);

    (*(v9 + 8))(v27, v26);
  }

  else
  {
    v18 = v0[35];
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[29];

    sub_10037092C(v18, type metadata accessor for SDAirDropServerConnectionIdentity);
    (*(v20 + 8))(v19, v21);
  }

  sub_100362A30(v0[26]);

  v22 = v0[1];

  return v22();
}

void sub_100362A30(uint64_t a1)
{
  v3 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003708C4(a1, v5, type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10037092C(v5, type metadata accessor for SDAirDropServerConnectionIdentity);
    if (sub_100358F30())
    {
      return;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v7 - 8) + 8))(v5, v7);
    if (sub_100358F30())
    {
      return;
    }

LABEL_6:
    sub_10002B8D0(1, 0);
    return;
  }

  if ((sub_100358DE4() & 1) == 0)
  {
    sub_10002B8D0(0, 0);
  }

  v8 = *(v1 + 48);
  if (![v8 discoverableLevel])
  {
    sub_10002A73C();
  }

  if (![v8 screenStateSupportsAirDrop] || !objc_msgSend(v8, "wirelessEnabled") || (v9 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions, swift_beginAccess(), !*(*(v1 + v9) + 16)))
  {
    sub_10002B8D0(2, 0);
  }

  v10 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v10 - 8) + 8))(v5, v10);
}

uint64_t sub_100362C20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Failure();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v2[16] = static AirDropActor.shared;

  return _swift_task_switch(sub_100362E30, v7, 0);
}

uint64_t sub_100362E30(uint64_t a1)
{
  v43 = v1;
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  SFAirDropReceive.Transfer.state.getter();
  if ((*(v3 + 88))(v2, v4) == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    v6 = v1[14];
    v5 = v1[15];
    v8 = v1[12];
    v7 = v1[13];
    (*(v1[11] + 96))(v8, v1[10]);
    v9 = sub_10028088C(&qword_10097A670, &unk_100804290);
    (*(v6 + 32))(v5, v8 + *(v9 + 48), v7);
    v10 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    (*(*(v10 - 8) + 8))(v8, v10);
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v12 = v1[8];
    v11 = v1[9];
    v13 = v1[7];
    v14 = v1[2];
    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097A3F0);
    (*(v12 + 16))(v11, v14, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v1[8];
    v19 = v1[9];
    v21 = v1[7];
    if (v18)
    {
      v39 = v1[7];
      v22 = v1[5];
      v23 = v1[6];
      v24 = v1[4];
      v25 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v25 = 136315138;
      v40 = v17;
      SFAirDropReceive.Transfer.id.getter();
      sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v22 + 8))(v23, v24);
      (*(v20 + 8))(v19, v39);
      v29 = sub_10000C4E4(v26, v28, &v42);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v16, v40, "Transfer failed, removing handler for transferID: %s", v25, 0xCu);
      sub_10000C60C(v41);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v33 = v1[14];
    v32 = v1[15];
    v34 = v1[13];
    SFAirDropReceive.Transfer.id.getter();
    sub_1000053E8(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v35 = swift_allocError();
    v1[17] = v35;
    (*(v33 + 16))(v36, v32, v34);
    v37 = swift_task_alloc();
    v1[18] = v37;
    *v37 = v1;
    v37[1] = sub_1003632B4;
    v38 = v1[6];

    return sub_1003634E8(v38, v35);
  }

  else
  {
    (*(v1[11] + 8))(v1[12], v1[10]);

    v30 = v1[1];

    return v30();
  }
}

uint64_t sub_1003632B4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100363444, v1, 0);
}

uint64_t sub_100363444()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003634E8(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[32] = static AirDropActor.shared;

  return _swift_task_switch(sub_10036360C, v5, 0);
}

uint64_t sub_10036360C()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
  v0[33] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = sub_100570848(v0[23]);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      v0[34] = v6;
      swift_endAccess();
      v6;
      v7 = swift_task_alloc();
      v0[35] = v7;
      *v7 = v0;
      v8 = sub_10036392C;
LABEL_14:
      v7[1] = v8;
      v28 = v0[24];

      return sub_100641284(v28);
    }
  }

  v9 = v0[25];
  swift_endAccess();
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
  v0[36] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_100570848(v0[23]);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      v0[37] = v14;
      swift_endAccess();
      v14;
      v7 = swift_task_alloc();
      v0[38] = v7;
      *v7 = v0;
      v8 = sub_100363DE8;
      goto LABEL_14;
    }
  }

  v15 = v0[25];
  v16 = v0[23];
  swift_endAccess();
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers;
  v0[39] = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers;
  swift_beginAccess();
  v18 = *(v15 + v17);
  v19 = swift_task_alloc();
  *(v19 + 16) = v16;

  v20 = sub_1002CCDE4(sub_10036FFFC, v19, v18);
  v22 = v21;

  v0[40] = v20;

  if ((v22 & 1) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v25 = *(v15 + v17);
      if (v20 < *(v25 + 16))
      {
        v26 = v25 + 16 * v20;
        v0[41] = *(v26 + 32);
        v27 = *(v26 + 40);
        v0[42] = v27;
        swift_unknownObjectRetain();
        v27;
        v7 = swift_task_alloc();
        v0[43] = v7;
        *v7 = v0;
        v8 = sub_100364218;
        goto LABEL_14;
      }
    }

    __break(1u);
    return result;
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10036392C()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100363A3C, v1, 0);
}

uint64_t sub_100363A3C()
{
  v31 = v0;
  v1 = v0[31];
  v2 = *(v0[27] + 16);
  v2(v1, v0[23], v0[26]);
  swift_beginAccess();
  sub_1002AFA94(0, v1);
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v3 = v0[30];
  v4 = v0[26];
  v5 = v0[23];
  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097A3F0);
  v2(v3, v5, v4);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[33];
    v9 = v0[30];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 136315394;
    sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000C4E4(v14, v16, &v30);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    v18 = *(*(v12 + v28) + 16);

    *(v13 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v7, v8, "Removed quic handler for transferID: %s count: %ld", v13, 0x16u);
    sub_10000C60C(v29);
  }

  else
  {
    v19 = v0[30];
    v20 = v0[26];
    v21 = v0[27];

    (*(v21 + 8))(v19, v20);
  }

  if ((sub_100358DE4() & 1) == 0)
  {
    sub_10002B8D0(0, 0);
  }

  v22 = *(v0[25] + 48);
  if (![v22 discoverableLevel])
  {
    sub_10002A73C();
  }

  if ([v22 screenStateSupportsAirDrop] && objc_msgSend(v22, "wirelessEnabled") && (v23 = v0[25], v24 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions, swift_beginAccess(), *(*(v23 + v24) + 16)))
  {
    v25 = v0[34];
  }

  else
  {
    v25 = v0[34];
    sub_10002B8D0(2, 0);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_100363DE8()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100363EF8, v1, 0);
}

uint64_t sub_100363EF8()
{
  v29 = v0;
  v1 = v0[31];
  v2 = *(v0[27] + 16);
  v2(v1, v0[23], v0[26]);
  swift_beginAccess();
  sub_1002AFA94(0, v1);
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[23];
  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097A3F0);
  v2(v3, v5, v4);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v26 = v0[36];
    v9 = v0[29];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136315394;
    sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000C4E4(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    v18 = *(*(v12 + v26) + 16);

    *(v13 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v7, v8, "Removed bonjour handler for transferID: %s count: %ld", v13, 0x16u);
    sub_10000C60C(v27);
  }

  else
  {
    v19 = v0[29];
    v20 = v0[26];
    v21 = v0[27];

    (*(v21 + 8))(v19, v20);
  }

  v22 = sub_100358F30();
  v23 = v0[37];
  if ((v22 & 1) == 0)
  {
    sub_10002B8D0(1, 0);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100364218()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100364328, v1, 0);
}

uint64_t sub_100364328()
{
  v31 = v0;
  v1 = v0[40];
  swift_beginAccess();
  sub_1002CD060(v1);
  v3 = v2;
  swift_endAccess();
  swift_unknownObjectRelease();

  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[23];
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097A3F0);
  (*(v5 + 16))(v4, v7, v6);
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v28 = v0[39];
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[25];
    v14 = v0[26];
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v15 = 136315394;
    sub_1000053E8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    v19 = sub_10000C4E4(v16, v18, &v30);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    v20 = *(*(v13 + v28) + 16);

    *(v15 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v9, v10, "Removed legacy bonjour handler for transferID: %s count: %ld", v15, 0x16u);
    sub_10000C60C(v29);
  }

  else
  {
    v22 = v0[27];
    v21 = v0[28];
    v23 = v0[26];

    (*(v22 + 8))(v21, v23);
  }

  v24 = sub_100358F30();
  v25 = v0[42];
  if ((v24 & 1) == 0)
  {
    sub_10002B8D0(1, 0);
  }

  swift_unknownObjectRelease();

  v26 = v0[1];

  return v26();
}

id sub_10036463C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v290 = a3;
  v310 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v309 = *(v310 - 8);
  __chkstk_darwin(v310);
  v308 = &v278 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = type metadata accessor for SFAirDrop.Progress();
  v302 = *(v305 - 8);
  __chkstk_darwin(v305);
  v303 = &v278 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v306 = *(v307 - 8);
  __chkstk_darwin(v307);
  v304 = &v278 - v8;
  v299 = type metadata accessor for SFAirDrop.AskProgress();
  v296 = *(v299 - 8);
  __chkstk_darwin(v299);
  v297 = &v278 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_10028088C(&qword_10097A690, &qword_1007FD7E8);
  v300 = *(v301 - 8);
  __chkstk_darwin(v301);
  v298 = &v278 - v10;
  v295 = sub_10028088C(&qword_10097A698, &unk_1007FD7F0);
  v294 = *(v295 - 8);
  __chkstk_darwin(v295);
  v293 = &v278 - v11;
  v313 = type metadata accessor for UUID();
  v292 = *(v313 - 8);
  __chkstk_darwin(v313);
  v291 = &v278 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v13 = *(v318 - 8);
  v14 = __chkstk_darwin(v318);
  Strong = &v278 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v316 = (&v278 - v17);
  __chkstk_darwin(v16);
  v19 = &v278 - v18;
  v20 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v21 = __chkstk_darwin(v20);
  v289 = (&v278 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v288 = &v278 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v278 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = (&v278 - v29);
  v31 = __chkstk_darwin(v28);
  v33 = &v278 - v32;
  __chkstk_darwin(v31);
  v35 = (&v278 - v34);
  v36 = a1;
  sub_1003708C4(a1, &v278 - v34, type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v311 = a1;
    if (EnumCaseMultiPayload == 1)
    {
      v38 = v316;
      (*(v13 + 32))(v316, v35, v318);
      v39 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
      swift_beginAccess();
      v40 = *(v4 + v39);
      if (*(v40 + 16) && (v41 = sub_100570848(v38), (v42 & 1) != 0))
      {
        v43 = *(*(v40 + 56) + 8 * v41);
        v44 = v38;
      }

      else
      {
        v317 = v13;
        v280 = *(v13 + 16);
        v315 = v19;
        (v280)(v19, v38, v318);
        v278 = type metadata accessor for SDAirDropServerConnectionIdentity;
        v314 = v33;
        sub_1003708C4(v36, v33, type metadata accessor for SDAirDropServerConnectionIdentity);
        v54 = v4[7];
        v282 = v4[6];
        v283 = v54;
        v284 = v4[8];
        v285 = v4[10];
        v286 = v4[12];
        Strong = swift_unknownObjectWeakLoadStrong();
        v287 = v4[5];
        v289 = type metadata accessor for SDAirDropReceiveHandler(0);
        v55 = objc_allocWithZone(v289);
        v281 = &v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_delegate];
        *(v281 + 1) = 0;
        swift_unknownObjectWeakInit();
        v279 = &v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
        *&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v290 = v4;
        v56 = &v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID];
        v57 = v291;
        UUID.init()();
        v58 = UUID.uuidString.getter();
        v60 = v59;
        v61 = v292;
        v62 = v313;
        (*(v292 + 8))(v57, v313);
        *v56 = v58;
        v56[1] = v60;
        v63 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
        v64 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
        (*(*(v64 - 8) + 56))(&v55[v63], 1, 1, v64);
        v65 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
        v66 = _s12HelloRequestVMa(0);
        (*(*(v66 - 8) + 56))(&v55[v65], 1, 1, v66);
        v67 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
        v68 = _s10AskRequestVMa(0);
        (*(*(v68 - 8) + 56))(&v55[v67], 1, 1, v68);
        v69 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
        v70 = _s13UploadRequestVMa(0);
        (*(*(v70 - 8) + 56))(&v55[v69], 1, 1, v70);
        v71 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
        v72 = _s15ExchangeRequestVMa(0);
        (*(*(v72 - 8) + 56))(&v55[v71], 1, 1, v72);
        v73 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
        v74 = type metadata accessor for SFAirDropReceive.FileInfo();
        (*(*(v74 - 8) + 56))(&v55[v73], 1, 1, v74);
        *&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter] = 0;
        v75 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
        v76 = type metadata accessor for SDAirDropServerConnection(0);
        v77 = *(*(v76 - 8) + 56);
        v77(&v55[v75], 1, 1, v76);
        v77(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection], 1, 1, v76);
        v77(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection], 1, 1, v76);
        v77(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection], 1, 1, v76);
        v77(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection], 1, 1, v76);
        v78 = &v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes];
        *v78 = 0;
        v78[8] = 1;
        v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia] = 0;
        (v280)(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id], v315, v318);
        v13 = v317;
        UUID.init()();
        (*(v61 + 32))(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v57, v62);
        sub_1003708C4(v314, &v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity], v278);
        v79 = v282;
        *&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus] = v282;
        v80 = v283;
        *&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent] = v283;
        v81 = v284;
        *&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService] = v284;
        *&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_pseudonymService] = v285;
        v82 = v286;
        *&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_queue] = v286;
        *(v281 + 1) = &off_1008DD338;
        swift_unknownObjectWeakAssign();
        *(v279 + 1) = v287;
        swift_unknownObjectWeakAssign();
        LOBYTE(v320) = 0;
        v83 = v79;
        v84 = v80;
        v85 = v81;

        v86 = v82;
        v87 = v293;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v294 + 32))(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation], v87, v295);
        (*(v296 + 104))(v297, enum case for SFAirDrop.AskProgress.notStarted(_:), v299);
        type metadata accessor for SFAirDropReceive.AskResponse();
        v88 = v298;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v300 + 32))(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation], v88, v301);
        (*(v302 + 104))(v303, enum case for SFAirDrop.Progress.notStarted(_:), v305);
        sub_10028088C(&qword_100975610, &qword_1007F89B0);
        v4 = v290;
        v89 = v304;
        v44 = v316;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v306 + 32))(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation], v89, v307);
        v90 = v308;
        SFAirDrop.NetworkMetrics.init()();
        (*(v309 + 32))(&v55[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics], v90, v310);
        v322.receiver = v55;
        v322.super_class = v289;
        v43 = objc_msgSendSuper2(&v322, "init");
        swift_unknownObjectRelease();
        sub_10037092C(v314, type metadata accessor for SDAirDropServerConnectionIdentity);
        (*(v13 + 8))(v315, v318);
      }

      v91 = v288;
      swift_endAccess();
      swift_beginAccess();
      v92 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v320 = *(v4 + v39);
      *(v4 + v39) = 0x8000000000000000;
      sub_100578B14(v92, v44, isUniquelyReferenced_nonNull_native);
      *(v4 + v39) = v320;
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_10000C4AC(v94, qword_10097A3F0);
      sub_1003708C4(v311, v91, type metadata accessor for SDAirDropServerConnectionIdentity);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v324 = v98;
        *v97 = 136315138;
        v99 = sub_1005ADA80();
        v101 = v100;
        sub_10037092C(v91, type metadata accessor for SDAirDropServerConnectionIdentity);
        v102 = sub_10000C4E4(v99, v101, &v324);

        *(v97 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v95, v96, "Added bonjour connection %s", v97, 0xCu);
        sub_10000C60C(v98);
      }

      else
      {

        sub_10037092C(v91, type metadata accessor for SDAirDropServerConnectionIdentity);
      }

      (*(v13 + 8))(v316, v318);
    }

    else
    {
      v317 = v13;
      v48 = Strong;
      (*(v13 + 32))(Strong, v35, v318);
      v49 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
      swift_beginAccess();
      v50 = *(v4 + v49);
      if (*(v50 + 16) && (v51 = sub_100570848(v48), (v52 & 1) != 0))
      {
        v53 = *(*(v50 + 56) + 8 * v51);
      }

      else
      {
        v279 = *(v317 + 16);
        v315 = v19;
        (v279)(v19, Strong, v318);
        v281 = type metadata accessor for SDAirDropServerConnectionIdentity;
        v314 = v33;
        sub_1003708C4(v36, v33, type metadata accessor for SDAirDropServerConnectionIdentity);
        v103 = v4[7];
        v282 = v4[6];
        v283 = v103;
        v284 = v4[8];
        v285 = v4[10];
        v286 = v4[12];
        v288 = swift_unknownObjectWeakLoadStrong();
        v287 = v4[5];
        v316 = type metadata accessor for SDAirDropReceiveHandler(0);
        v104 = objc_allocWithZone(v316);
        v280 = &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_delegate];
        *(v280 + 1) = 0;
        swift_unknownObjectWeakInit();
        v105 = &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
        *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v290 = v4;
        v106 = &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID];
        v107 = v291;
        UUID.init()();
        v108 = UUID.uuidString.getter();
        v110 = v109;
        v111 = v292;
        (*(v292 + 8))(v107, v313);
        *v106 = v108;
        v106[1] = v110;
        v112 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
        v113 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
        (*(*(v113 - 8) + 56))(&v104[v112], 1, 1, v113);
        v114 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
        v115 = _s12HelloRequestVMa(0);
        (*(*(v115 - 8) + 56))(&v104[v114], 1, 1, v115);
        v116 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
        v117 = _s10AskRequestVMa(0);
        (*(*(v117 - 8) + 56))(&v104[v116], 1, 1, v117);
        v118 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
        v119 = _s13UploadRequestVMa(0);
        (*(*(v119 - 8) + 56))(&v104[v118], 1, 1, v119);
        v120 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
        v121 = _s15ExchangeRequestVMa(0);
        (*(*(v121 - 8) + 56))(&v104[v120], 1, 1, v121);
        v122 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
        v123 = type metadata accessor for SFAirDropReceive.FileInfo();
        (*(*(v123 - 8) + 56))(&v104[v122], 1, 1, v123);
        *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter] = 0;
        v124 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
        v125 = type metadata accessor for SDAirDropServerConnection(0);
        v126 = *(*(v125 - 8) + 56);
        v126(&v104[v124], 1, 1, v125);
        v126(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection], 1, 1, v125);
        v126(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection], 1, 1, v125);
        v126(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection], 1, 1, v125);
        v126(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection], 1, 1, v125);
        v127 = &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes];
        *v127 = 0;
        v127[8] = 1;
        v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia] = 0;
        (v279)(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id], v315, v318);
        UUID.init()();
        (*(v111 + 32))(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v107, v313);
        sub_1003708C4(v314, &v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity], v281);
        v128 = v282;
        *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus] = v282;
        v129 = v283;
        *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent] = v283;
        v130 = v284;
        *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService] = v284;
        *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_pseudonymService] = v285;
        v131 = v286;
        *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_queue] = v286;
        *(v280 + 1) = &off_1008DD338;
        swift_unknownObjectWeakAssign();
        *(v105 + 1) = v287;
        swift_unknownObjectWeakAssign();
        LOBYTE(v320) = 0;
        v132 = v128;
        v133 = v129;
        v134 = v130;

        v135 = v131;
        v136 = v293;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v294 + 32))(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation], v136, v295);
        (*(v296 + 104))(v297, enum case for SFAirDrop.AskProgress.notStarted(_:), v299);
        type metadata accessor for SFAirDropReceive.AskResponse();
        v137 = v298;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v300 + 32))(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation], v137, v301);
        (*(v302 + 104))(v303, enum case for SFAirDrop.Progress.notStarted(_:), v305);
        sub_10028088C(&qword_100975610, &qword_1007F89B0);
        v4 = v290;
        v138 = v304;
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        (*(v306 + 32))(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation], v138, v307);
        v139 = v308;
        SFAirDrop.NetworkMetrics.init()();
        (*(v309 + 32))(&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics], v139, v310);
        v323.receiver = v104;
        v323.super_class = v316;
        v53 = objc_msgSendSuper2(&v323, "init");
        swift_unknownObjectRelease();
        sub_10037092C(v314, type metadata accessor for SDAirDropServerConnectionIdentity);
        v48 = Strong;
        (*(v317 + 8))(v315, v318);
      }

      v140 = v289;
      swift_endAccess();
      swift_beginAccess();
      v92 = v53;
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v320 = *(v4 + v49);
      *(v4 + v49) = 0x8000000000000000;
      sub_100578B14(v92, v48, v141);
      *(v4 + v49) = v320;
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v142 = type metadata accessor for Logger();
      sub_10000C4AC(v142, qword_10097A3F0);
      sub_1003708C4(v311, v140, type metadata accessor for SDAirDropServerConnectionIdentity);
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v324 = v146;
        *v145 = 136315138;
        v147 = sub_1005ADA80();
        v149 = v148;
        sub_10037092C(v140, type metadata accessor for SDAirDropServerConnectionIdentity);
        v150 = sub_10000C4E4(v147, v149, &v324);

        *(v145 + 4) = v150;
        _os_log_impl(&_mh_execute_header, v143, v144, "Added quic connection %s", v145, 0xCu);
        sub_10000C60C(v146);
      }

      else
      {

        sub_10037092C(v140, type metadata accessor for SDAirDropServerConnectionIdentity);
      }

      (*(v317 + 8))(v48, v318);
    }

    return v92;
  }

  v316 = v30;
  v317 = v13;
  Strong = v27;
  v45 = *v35;
  if (sub_100674748() == 0x65766F637369442FLL && v46 == 0xE900000000000072)
  {

    v47 = v36;
  }

  else
  {
    v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v47 = v36;
    if ((v151 & 1) == 0)
    {
      v215 = (v4 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers);
      swift_beginAccess();
      v216 = (*v215 + 32);
      v217 = *(*v215 + 16) + 1;
      while (--v217)
      {
        v155 = v216 + 2;
        v218 = *v216;
        v216 += 2;
        if (v45 == v218)
        {
LABEL_42:
          v219 = *(v155 - 1);
          swift_unknownObjectRelease();
          return v219;
        }
      }

      v221 = v291;
      UUID.init()();
      v315 = v19;
      SFAirDrop.TransferIdentifier.init(_:)();
      v280 = type metadata accessor for SDAirDropServerConnectionIdentity;
      v314 = v33;
      sub_1003708C4(v36, v33, type metadata accessor for SDAirDropServerConnectionIdentity);
      v222 = v4[7];
      v283 = v4[6];
      v284 = v222;
      v285 = v4[8];
      v286 = v4[10];
      v287 = v4[12];
      v316 = swift_unknownObjectWeakLoadStrong();
      v288 = v4[5];
      v289 = type metadata accessor for SDAirDropReceiveHandler(0);
      v223 = objc_allocWithZone(v289);
      v290 = v215;
      v224 = v223;
      v282 = &v223[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_delegate];
      *(v282 + 1) = 0;
      swift_unknownObjectWeakInit();
      v281 = &v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
      *&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v311 = v47;
      v225 = &v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID];
      UUID.init()();
      v226 = UUID.uuidString.getter();
      v228 = v227;
      v229 = v292;
      v230 = v313;
      (*(v292 + 8))(v221, v313);
      *v225 = v226;
      v225[1] = v228;
      v231 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
      v232 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
      (*(*(v232 - 8) + 56))(&v224[v231], 1, 1, v232);
      v233 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
      v234 = _s12HelloRequestVMa(0);
      (*(*(v234 - 8) + 56))(&v224[v233], 1, 1, v234);
      v235 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
      v236 = _s10AskRequestVMa(0);
      (*(*(v236 - 8) + 56))(&v224[v235], 1, 1, v236);
      v237 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
      v238 = _s13UploadRequestVMa(0);
      (*(*(v238 - 8) + 56))(&v224[v237], 1, 1, v238);
      v239 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
      v240 = _s15ExchangeRequestVMa(0);
      (*(*(v240 - 8) + 56))(&v224[v239], 1, 1, v240);
      v241 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
      v242 = type metadata accessor for SFAirDropReceive.FileInfo();
      (*(*(v242 - 8) + 56))(&v224[v241], 1, 1, v242);
      *&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter] = 0;
      v243 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
      v244 = type metadata accessor for SDAirDropServerConnection(0);
      v245 = *(*(v244 - 8) + 56);
      v245(&v224[v243], 1, 1, v244);
      v245(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection], 1, 1, v244);
      v245(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection], 1, 1, v244);
      v245(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection], 1, 1, v244);
      v245(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection], 1, 1, v244);
      v246 = &v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes];
      *v246 = 0;
      v246[8] = 1;
      v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia] = 0;
      (*(v317 + 16))(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id], v315, v318);
      UUID.init()();
      (*(v229 + 32))(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v221, v230);
      sub_1003708C4(v314, &v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity], v280);
      v247 = v283;
      *&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus] = v283;
      v248 = v284;
      *&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent] = v284;
      v249 = v285;
      *&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService] = v285;
      *&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_pseudonymService] = v286;
      v250 = v287;
      *&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_queue] = v287;
      *(v282 + 1) = &off_1008DD338;
      swift_unknownObjectWeakAssign();
      *(v281 + 1) = v288;
      swift_unknownObjectWeakAssign();
      LOBYTE(v320) = 0;
      v251 = v247;
      v252 = v248;
      v253 = v249;

      v254 = v250;
      v255 = v293;
      SFProgressContinuation.init(_:initialProgress:file:line:)();
      (*(v294 + 32))(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation], v255, v295);
      (*(v296 + 104))(v297, enum case for SFAirDrop.AskProgress.notStarted(_:), v299);
      type metadata accessor for SFAirDropReceive.AskResponse();
      v256 = v298;
      SFProgressContinuation.init(_:initialProgress:file:line:)();
      (*(v300 + 32))(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation], v256, v301);
      (*(v302 + 104))(v303, enum case for SFAirDrop.Progress.notStarted(_:), v305);
      sub_10028088C(&qword_100975610, &qword_1007F89B0);
      v257 = v304;
      SFProgressContinuation.init(_:initialProgress:file:line:)();
      (*(v306 + 32))(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation], v257, v307);
      v258 = v308;
      SFAirDrop.NetworkMetrics.init()();
      (*(v309 + 32))(&v224[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics], v258, v310);
      v321.receiver = v224;
      v259 = v290;
      v321.super_class = v289;
      v260 = objc_msgSendSuper2(&v321, "init");
      swift_unknownObjectRelease();
      sub_10037092C(v314, type metadata accessor for SDAirDropServerConnectionIdentity);
      (*(v317 + 8))(v315, v318);
      swift_beginAccess();
      v261 = *v259;
      swift_unknownObjectRetain();
      v92 = v260;
      v262 = swift_isUniquelyReferenced_nonNull_native();
      *v259 = v261;
      v263 = v311;
      if ((v262 & 1) == 0)
      {
        v261 = sub_10028E320(0, v261[2] + 1, 1, v261);
        *v259 = v261;
      }

      v265 = v261[2];
      v264 = v261[3];
      if (v265 >= v264 >> 1)
      {
        v261 = sub_10028E320((v264 > 1), v265 + 1, 1, v261);
      }

      v261[2] = v265 + 1;
      v266 = &v261[2 * v265];
      v266[4] = v45;
      v266[5] = v92;
      *v259 = v261;
      swift_endAccess();
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v267 = type metadata accessor for Logger();
      sub_10000C4AC(v267, qword_10097A3F0);
      v268 = v263;
      v269 = Strong;
      sub_1003708C4(v268, Strong, type metadata accessor for SDAirDropServerConnectionIdentity);
      swift_retain_n();
      v206 = Logger.logObject.getter();
      v270 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v206, v270))
      {

        swift_unknownObjectRelease();

        sub_10037092C(v269, type metadata accessor for SDAirDropServerConnectionIdentity);
        return v92;
      }

      v271 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      v320 = v272;
      *v271 = 136315394;
      v273 = sub_1005ADA80();
      v275 = v274;
      sub_10037092C(v269, type metadata accessor for SDAirDropServerConnectionIdentity);
      v276 = sub_10000C4E4(v273, v275, &v320);

      *(v271 + 4) = v276;
      *(v271 + 12) = 2048;
      v277 = *(*v290 + 16);

      *(v271 + 14) = v277;

      _os_log_impl(&_mh_execute_header, v206, v270, "Added legacy bonjour connection %s count: %ld", v271, 0x16u);
      sub_10000C60C(v272);

      goto LABEL_52;
    }
  }

  v152 = (v4 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourDiscoveryHandlers);
  swift_beginAccess();
  v153 = (*v152 + 32);
  v154 = *(*v152 + 16) + 1;
  while (--v154)
  {
    v155 = v153 + 2;
    v156 = *v153;
    v153 += 2;
    if (v45 == v156)
    {
      goto LABEL_42;
    }
  }

  v157 = v291;
  UUID.init()();
  v315 = v19;
  v158 = v157;
  SFAirDrop.TransferIdentifier.init(_:)();
  v282 = type metadata accessor for SDAirDropServerConnectionIdentity;
  v314 = v33;
  sub_1003708C4(v47, v33, type metadata accessor for SDAirDropServerConnectionIdentity);
  v159 = v4[7];
  v283 = v4[6];
  v284 = v159;
  v285 = v4[8];
  v286 = v4[10];
  v287 = v4[12];
  Strong = swift_unknownObjectWeakLoadStrong();
  v288 = v4[5];
  v289 = type metadata accessor for SDAirDropReceiveHandler(0);
  v160 = objc_allocWithZone(v289);
  v290 = v152;
  v161 = v160;
  v281 = &v160[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_delegate];
  *(v281 + 1) = 0;
  swift_unknownObjectWeakInit();
  v280 = &v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
  *&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v162 = &v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID];
  UUID.init()();
  v163 = UUID.uuidString.getter();
  v165 = v164;
  v166 = v292;
  v167 = v313;
  (*(v292 + 8))(v158, v313);
  *v162 = v163;
  v162[1] = v165;
  v168 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
  v169 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
  (*(*(v169 - 8) + 56))(&v161[v168], 1, 1, v169);
  v170 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
  v171 = _s12HelloRequestVMa(0);
  (*(*(v171 - 8) + 56))(&v161[v170], 1, 1, v171);
  v172 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
  v173 = _s10AskRequestVMa(0);
  (*(*(v173 - 8) + 56))(&v161[v172], 1, 1, v173);
  v174 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
  v175 = _s13UploadRequestVMa(0);
  (*(*(v175 - 8) + 56))(&v161[v174], 1, 1, v175);
  v176 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
  v177 = _s15ExchangeRequestVMa(0);
  (*(*(v177 - 8) + 56))(&v161[v176], 1, 1, v177);
  v178 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
  v179 = type metadata accessor for SFAirDropReceive.FileInfo();
  (*(*(v179 - 8) + 56))(&v161[v178], 1, 1, v179);
  *&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter] = 0;
  v180 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
  v181 = type metadata accessor for SDAirDropServerConnection(0);
  v182 = *(*(v181 - 8) + 56);
  v311 = v47;
  v182(&v161[v180], 1, 1, v181);
  v182(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection], 1, 1, v181);
  v182(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection], 1, 1, v181);
  v182(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection], 1, 1, v181);
  v182(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection], 1, 1, v181);
  v183 = &v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes];
  *v183 = 0;
  v183[8] = 1;
  v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia] = 0;
  (*(v317 + 16))(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id], v315, v318);
  UUID.init()();
  (*(v166 + 32))(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v158, v167);
  sub_1003708C4(v314, &v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity], v282);
  v184 = v283;
  *&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus] = v283;
  v185 = v284;
  *&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent] = v284;
  v186 = v285;
  *&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService] = v285;
  *&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_pseudonymService] = v286;
  v187 = v287;
  *&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_queue] = v287;
  *(v281 + 1) = &off_1008DD338;
  swift_unknownObjectWeakAssign();
  *(v280 + 1) = v288;
  swift_unknownObjectWeakAssign();
  LOBYTE(v320) = 0;
  v188 = v184;
  v189 = v185;
  v190 = v186;

  v191 = v187;
  v192 = v293;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v294 + 32))(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation], v192, v295);
  (*(v296 + 104))(v297, enum case for SFAirDrop.AskProgress.notStarted(_:), v299);
  type metadata accessor for SFAirDropReceive.AskResponse();
  v193 = v298;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v300 + 32))(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation], v193, v301);
  (*(v302 + 104))(v303, enum case for SFAirDrop.Progress.notStarted(_:), v305);
  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  v194 = v304;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v306 + 32))(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation], v194, v307);
  v195 = v308;
  SFAirDrop.NetworkMetrics.init()();
  (*(v309 + 32))(&v161[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics], v195, v310);
  v319.receiver = v161;
  v196 = v290;
  v319.super_class = v289;
  v197 = objc_msgSendSuper2(&v319, "init");
  swift_unknownObjectRelease();
  sub_10037092C(v314, type metadata accessor for SDAirDropServerConnectionIdentity);
  (*(v317 + 8))(v315, v318);
  swift_beginAccess();
  v198 = *v196;
  swift_unknownObjectRetain();
  v92 = v197;
  v199 = swift_isUniquelyReferenced_nonNull_native();
  *v196 = v198;
  v200 = v311;
  if ((v199 & 1) == 0)
  {
    v198 = sub_10028E320(0, v198[2] + 1, 1, v198);
    *v196 = v198;
  }

  v201 = v316;
  v203 = v198[2];
  v202 = v198[3];
  if (v203 >= v202 >> 1)
  {
    v198 = sub_10028E320((v202 > 1), v203 + 1, 1, v198);
  }

  v198[2] = v203 + 1;
  v204 = &v198[2 * v203];
  v204[4] = v45;
  v204[5] = v92;
  *v196 = v198;
  swift_endAccess();
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v205 = type metadata accessor for Logger();
  sub_10000C4AC(v205, qword_10097A3F0);
  sub_1003708C4(v200, v201, type metadata accessor for SDAirDropServerConnectionIdentity);
  swift_retain_n();
  v206 = Logger.logObject.getter();
  v207 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v320 = v209;
    *v208 = 136315394;
    v210 = sub_1005ADA80();
    v212 = v211;
    sub_10037092C(v201, type metadata accessor for SDAirDropServerConnectionIdentity);
    v213 = sub_10000C4E4(v210, v212, &v320);

    *(v208 + 4) = v213;
    *(v208 + 12) = 2048;
    v214 = *(*v290 + 16);

    *(v208 + 14) = v214;

    _os_log_impl(&_mh_execute_header, v206, v207, "Added discovery bonjour connection %s count: %ld", v208, 0x16u);
    sub_10000C60C(v209);

LABEL_52:

    swift_unknownObjectRelease();
    return v92;
  }

  swift_unknownObjectRelease();

  sub_10037092C(v201, type metadata accessor for SDAirDropServerConnectionIdentity);
  return v92;
}

uint64_t sub_100367834(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v35 = type metadata accessor for SDAirDropServerConnection(0);
  v40 = *(v35 - 8);
  v3 = *(v40 + 64);
  v4 = __chkstk_darwin(v35);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v34 - v5;
  v6 = sub_10028088C(&qword_10097A648, &qword_1007FD778);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v34 - v14;
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  sub_10000FF90(a1, v8, &qword_10097A648, &qword_1007FD778);
  v37 = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100005508(v8, &qword_10097A648, &qword_1007FD778);
  }

  sub_10000ED10(v8, v17, type metadata accessor for SDAirDropServerConnectionIdentity);
  sub_1003708C4(v17, v15, type metadata accessor for SDAirDropServerConnectionIdentity);
  v19 = v17;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v20 - 8) + 8))(v15, v20);
    v21 = v39;
    v22 = v36;
    sub_1003708C4(v39, v36, type metadata accessor for SDAirDropServerConnection);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v23 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 8))(v22 + v23, v24);
    }

    NWConnection.nw.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v41;
    sub_1003708C4(v21, v41, type metadata accessor for SDAirDropServerConnection);
    v27 = v38;
    sub_1003708C4(v19, v38, type metadata accessor for SDAirDropServerConnectionIdentity);
    v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v29 = (v3 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (*(v37 + 80) + v29 + 8) & ~*(v37 + 80);
    v31 = swift_allocObject();
    sub_10000ED10(v26, v31 + v28, type metadata accessor for SDAirDropServerConnection);
    *(v31 + v29) = v25;
    sub_10000ED10(v27, v31 + v30, type metadata accessor for SDAirDropServerConnectionIdentity);
    aBlock[4] = sub_100370124;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DD3E8;
    v32 = _Block_copy(aBlock);

    nw_connection_set_read_close_handler();
    _Block_release(v32);
    swift_unknownObjectRelease();
    v33 = v19;
  }

  else
  {
    sub_10037092C(v17, type metadata accessor for SDAirDropServerConnectionIdentity);
    v33 = v15;
  }

  return sub_10037092C(v33, type metadata accessor for SDAirDropServerConnectionIdentity);
}

uint64_t sub_100367D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a2;
  v31 = a1;
  v28 = type metadata accessor for NWConnection.State();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v28);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropServerConnection(0);
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_10097A648, &qword_1007FD778);
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  sub_10000FF90(v29, v12, &qword_10097A648, &qword_1007FD778);
  sub_1003708C4(v30, v8, type metadata accessor for SDAirDropServerConnection);
  v18 = v28;
  (*(v4 + 16))(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v28);
  v19 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v20 = (v10 + *(v26 + 80) + v19) & ~*(v26 + 80);
  v21 = (v7 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v17;
  sub_10002C4E4(v12, &v22[v19], &qword_10097A648, &qword_1007FD778);
  sub_10000ED10(v8, &v22[v20], type metadata accessor for SDAirDropServerConnection);
  (*(v4 + 32))(&v22[v21], v24, v18);
  sub_1002B2844(0, 0, v15, &unk_1007FD818, v22);
}

uint64_t sub_100368138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_100368160, 0, 0);
}

uint64_t sub_100368160()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100368260;
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);

    return sub_10036840C(v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100368260()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1003683A8;
  }

  else
  {

    v2 = sub_10036837C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003683A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_10028088C(&qword_10097A648, &qword_1007FD778);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NWError();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for NWConnection.State();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_100368628, v8, 0);
}

uint64_t sub_100368628()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v2 + 16))(v1, v0[4], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for NWConnection.State.waiting(_:))
  {
    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[11];
    v8 = v0[12];
    (*(v0[18] + 96))(v5, v0[17]);
    (*(v8 + 32))(v6, v5, v7);
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[11];
    v12 = v0[12];
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097A3F0);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[11];
    v21 = v0[12];
    if (v17)
    {
      v87 = v14;
      v22 = swift_slowAlloc();
      v89 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v87(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop connection waiting with error %@", v22, 0xCu);
      sub_100005508(v23, &qword_100975400, &qword_1007F65D0);

      v26(v89, v20);
    }

    else
    {

      v47 = *(v21 + 8);
      v47(v19, v20);
      v47(v18, v20);
    }

    goto LABEL_26;
  }

  if (v4 == enum case for NWConnection.State.failed(_:))
  {
    v27 = v0[19];
    v28 = v0[14];
    v29 = v0[11];
    v30 = v0[12];
    (*(v0[18] + 96))(v27, v0[17]);
    (*(v30 + 32))(v28, v27, v29);
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v31 = v0[13];
    v32 = v0[14];
    v33 = v0[11];
    v34 = v0[12];
    v35 = type metadata accessor for Logger();
    sub_10000C4AC(v35, qword_10097A3F0);
    v36 = *(v34 + 16);
    v36(v31, v32, v33);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v41 = v0[12];
    v40 = v0[13];
    v42 = v0[11];
    v88 = v36;
    if (v39)
    {
      v43 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v43 = 138412290;
      sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v36(v44, v40, v42);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = *(v41 + 8);
      v46(v40, v42);
      *(v43 + 4) = v45;
      *v86 = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop connection failed with error %@", v43, 0xCu);
      sub_100005508(v86, &qword_100975400, &qword_1007F65D0);
    }

    else
    {

      v46 = *(v41 + 8);
      v46(v40, v42);
    }

    v53 = v0[14];
    v54 = v0[11];
    v55 = v0[2];
    sub_1005ADD74(0);
    sub_1000053E8(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    v56 = swift_allocError();
    v88(v57, v53, v54);
    sub_10036918C(v55, v56);
    v46(v53, v54);

    goto LABEL_26;
  }

  if (v4 == enum case for NWConnection.State.setup(_:))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000C4AC(v48, qword_10097A3F0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_25;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "AirDrop connection setting up";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_25:

    goto LABEL_26;
  }

  if (v4 == enum case for NWConnection.State.preparing(_:))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_10000C4AC(v58, qword_10097A3F0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_25;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "AirDrop connection preparing";
    goto LABEL_24;
  }

  if (v4 == enum case for NWConnection.State.ready(_:))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000C4AC(v61, qword_10097A3F0);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "AirDrop connection ready", v64, 2u);
    }

    v65 = v0[8];
    v66 = v0[9];
    v67 = v0[7];
    v68 = v0[2];

    sub_10000FF90(v68, v67, &qword_10097A648, &qword_1007FD778);
    if ((*(v66 + 48))(v67, 1, v65) == 1)
    {
      sub_100005508(v0[7], &qword_10097A648, &qword_1007FD778);
    }

    else
    {
      v75 = v0[9];
      v74 = v0[10];
      v76 = v0[8];
      v77 = v0[6];
      v78 = v0[3];
      sub_10000ED10(v0[7], v74, type metadata accessor for SDAirDropServerConnectionIdentity);
      sub_1003708C4(v74, v77, type metadata accessor for SDAirDropServerConnectionIdentity);
      (*(v75 + 56))(v77, 0, 1, v76);
      sub_100367834(v77, v78);
      sub_100005508(v77, &qword_10097A648, &qword_1007FD778);
      sub_10037092C(v74, type metadata accessor for SDAirDropServerConnectionIdentity);
    }
  }

  else if (v4 == enum case for NWConnection.State.cancelled(_:))
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000C4AC(v69, qword_10097A3F0);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "AirDrop connection invalidated", v72, 2u);
    }

    v73 = v0[2];

    sub_100369520(v73);
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000C4AC(v79, qword_10097A3F0);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Unknown AirDrop connection state", v82, 2u);
    }

    v84 = v0[18];
    v83 = v0[19];
    v85 = v0[17];

    (*(v84 + 8))(v83, v85);
  }

LABEL_26:

  v59 = v0[1];

  return v59();
}

uint64_t sub_10036918C(uint64_t a1, uint64_t a2)
{
  v25[0] = a2;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = v25 - v4;
  v6 = sub_10028088C(&qword_10097A648, &qword_1007FD778);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v25 - v14;
  sub_10000FF90(a1, v8, &qword_10097A648, &qword_1007FD778);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100005508(v8, &qword_10097A648, &qword_1007FD778);
  }

  sub_10000ED10(v8, v15, type metadata accessor for SDAirDropServerConnectionIdentity);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_1003708C4(v15, v13, type metadata accessor for SDAirDropServerConnectionIdentity);
  v18 = v25[1];

  v19 = v25[0];
  swift_errorRetain();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v20 = static AirDropActor.shared;
  v21 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v18;
  sub_10000ED10(v13, v24 + v22, type metadata accessor for SDAirDropServerConnectionIdentity);
  *(v24 + v23) = v19;

  sub_1002B3098(0, 0, v5, &unk_1007FD830, v24);

  return sub_10037092C(v15, type metadata accessor for SDAirDropServerConnectionIdentity);
}

uint64_t sub_100369520(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v29 = &v28 - v3;
  v4 = sub_10028088C(&qword_10097A648, &qword_1007FD778);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_10000FF90(a1, v6, &qword_10097A648, &qword_1007FD778);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100005508(v6, &qword_10097A648, &qword_1007FD778);
  }

  sub_10000ED10(v6, v16, type metadata accessor for SDAirDropServerConnectionIdentity);
  sub_1003708C4(v16, v14, type metadata accessor for SDAirDropServerConnectionIdentity);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v18 - 8) + 8))(v14, v18);
    v19 = type metadata accessor for TaskPriority();
    v20 = v29;
    (*(*(v19 - 8) + 56))(v29, 1, 1, v19);
    sub_1003708C4(v16, v11, type metadata accessor for SDAirDropServerConnectionIdentity);
    v21 = qword_1009735E0;
    v22 = v28;

    if (v21 != -1)
    {
      swift_once();
    }

    v23 = static AirDropActor.shared;
    v24 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v25 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v26 = swift_allocObject();
    v26[2] = v23;
    v26[3] = v24;
    v26[4] = v22;
    sub_10000ED10(v11, v26 + v25, type metadata accessor for SDAirDropServerConnectionIdentity);

    sub_1002B3098(0, 0, v20, &unk_1007FD840, v26);

    v27 = v16;
  }

  else
  {
    sub_10037092C(v16, type metadata accessor for SDAirDropServerConnectionIdentity);
    v27 = v14;
  }

  return sub_10037092C(v27, type metadata accessor for SDAirDropServerConnectionIdentity);
}

uint64_t sub_100369958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_10097A3F0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "AirDrop connection read close event", v15, 2u);
  }

  sub_1005ADD74(0);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_1003708C4(a3, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SDAirDropServerConnectionIdentity);
  v17 = qword_1009735E0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v19 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v20 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = a2;
  sub_10000ED10(v8, v21 + v20, type metadata accessor for SDAirDropServerConnectionIdentity);

  sub_1002B3398(0, 0, v11, &unk_1007FD808, v21);
}

uint64_t sub_100369C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_100369D20, v6, 0);
}

uint64_t sub_100369D20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    type metadata accessor for CancellationError();
    sub_1000053E8(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    v2 = swift_allocError();
    *(v0 + 80) = v2;
    CancellationError.init()();
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_100369E84;
    v4 = *(v0 + 56);

    return sub_100360E74(v4, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100369E84()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100369FD4, v1, 0);
}

uint64_t sub_100369FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100005C04;

  return sub_100360E74(a5, a6);
}

uint64_t sub_10036A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_100360E74(a5, 0);
}

uint64_t sub_10036A1A4()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if ([v2 discoverableLevel] || (sub_10002A73C() & 1) != 0)
  {
    if ([v2 discoverableLevel] == 2)
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000C4AC(v3, qword_10097A3F0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Device in everyone mode", v6, 2u);
      }

LABEL_16:
      v11 = sub_100549548();
      v13 = v12;
      swift_beginAccess();
      sub_10046E8A8(v19, v11, v13);
      swift_endAccess();
      sub_100026AC0(v19[0], v19[1]);
      return 1;
    }

    if (sub_10046A478() & 1) != 0 || (sub_10002A73C())
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_10097A3F0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Device found needs contact check", v10, 2u);
      }

      if (sub_100549664(v2, *(v1 + 56)))
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097A3F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Device has AirDrop discovery OFF", v18, 2u);
    }
  }

  return 0;
}

uint64_t sub_10036A4B8(uint64_t a1)
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1002B3098(0, 0, v3, &unk_1007FD8E0, v7);
  }

  return result;
}

uint64_t sub_10036A5D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_1002B3098(0, 0, v4, &unk_1007FD8C8, v8);
  }

  return result;
}

void sub_10036A6F8(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState);
  v4 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState + 8);
  if (v4)
  {
    if (v4 == 1)
    {
      if (a2 == 1)
      {
        return;
      }
    }

    else if (a2 >= 2)
    {
      if (*v3 == a1 && v4 == a2)
      {
        return;
      }

      v14 = a1;
      v15 = a2;
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v15;
      v17 = v16;
      a1 = v14;
      if (v17)
      {
        return;
      }
    }

    v5 = a1;
    v6 = a2;
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097A3F0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "AppleID change detected, stopping servers", v10, 2u);
    }

    v11 = *v3;
    v12 = v3[1];
    *v3 = v5;
    v3[1] = v6;
    sub_100371020(v5, v6);
    sub_10037100C(v11, v12);
    sub_10002B8D0(1, 1);
    sub_10002B8D0(0, 1);

    sub_10002B8D0(2, 1);
  }

  else
  {
    *v3 = a1;
    v3[1] = a2;

    sub_100371020(a1, a2);
  }
}

uint64_t sub_10036A914()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = [v1 wirelessEnabled];
  *(v0 + 24) = v2;
  v3 = [v1 bluetoothEnabledIncludingRestricted];
  *(v0 + 25) = v3;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097A3F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v2;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Wireless/Bluetooth state changed - Wireless: %{BOOL}d Bluetooth: %{BOOL}d", v7, 0xEu);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_10036AAC0, v8, 0);
}

uint64_t sub_10036AAC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) & *(v0 + 25) & 1;
  if (v2 != *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastWirelessBluetoothStateEnabled))
  {
    *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastWirelessBluetoothStateEnabled) = v2;
    sub_10002A290();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10036AB88()
{
  v1 = [*(v0[2] + 48) myAppleID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 1;
  }

  v0[3] = v3;
  v0[4] = v5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10036AC6C, v6, 0);
}

uint64_t sub_10036AC6C()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10036A6F8(v2, v1);
  sub_10037100C(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10036AD2C()
{
  v16 = v0;
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A3F0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = [*(v4 + 48) localHostName];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0x8000000100789F30;
      v9 = 0xD000000000000015;
    }

    v12 = sub_10000C4E4(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device name changed %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  *(v0 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10036AF4C, v13, 0);
}

uint64_t sub_10036AF4C()
{
  sub_10002B8D0(1, 1);
  sub_10002B8D0(0, 1);
  sub_10002B8D0(2, 1);
  if (sub_100358DE4())
  {
    sub_100359850(0);
    if (sub_100358F30())
    {
      sub_100359850(1);
    }
  }

  v1 = *(v0 + 24);

  return _swift_task_switch(sub_10036AFFC, v1, 0);
}

uint64_t sub_10036AFFC()
{
  sub_10002A290();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036B09C()
{
  *(v0 + 24) = [*(*(v0 + 16) + 48) discoverableLevel];
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_10036B14C, v1, 0);
}

uint64_t sub_10036B14C()
{
  sub_10036B1AC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_10036B1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-v5];
  v7 = type metadata accessor for SFPlatform();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastDiscoverableLevel) != a1)
  {
    *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastDiscoverableLevel) = a1;
    static SFPlatform.watchOS.getter();
    v11 = static SFPlatform.isPlatform(_:)();
    (*(v8 + 8))(v10, v7);
    if ((v11 & 1) == 0)
    {
      sub_1005C1F44(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID);
      v12 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes;
      swift_beginAccess();
      *(v2 + v12) = &_swiftEmptySetSingleton;
    }

    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes;
    swift_beginAccess();
    *(v2 + v13) = &_swiftEmptySetSingleton;

    sub_10002B8D0(1, 1);
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097A3F0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v15, v16, "Discoverability mode changed stopping server - new mode: %ld", v17, 0xCu);
    }

    sub_10002A290();
    v18 = *(v2 + 72);
    type metadata accessor for SFAirDropUserDefaults();
    v19 = static SFAirDropUserDefaults.shared.getter();
    v20 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v20)
    {
      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
      v22 = qword_1009735E0;
      v23 = v18;
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = static AirDropActor.shared;
      v25 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = v25;
      v26[4] = v23;

      sub_1002B3098(0, 0, v6, &unk_100805190, v26);
    }
  }
}

uint64_t sub_10036B5B4()
{
  if ([*(*(v0 + 16) + 48) currentConsoleUser])
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097A3F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "User is logged in, starting app service server if needed", v4, 2u);
    }

    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v5 = static AirDropActor.shared;
    v6 = sub_10036B894;
  }

  else
  {
    if (qword_1009736A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097A3F0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "User logged out, stopping servers", v10, 2u);
    }

    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v5 = static AirDropActor.shared;
    v6 = sub_10036B814;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10036B814()
{
  sub_10002B8D0(1, 1);
  sub_10002B8D0(0, 1);
  sub_10002B8D0(2, 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036B894()
{
  sub_100359850(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036B918()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  v5 = Notification.userInfo.getter();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v12[1] = 0xD000000000000037;
  v12[2] = 0x800000010078D8C0;
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_100570754(v13), (v8 & 1) == 0))
  {

    sub_100285E74(v13);
LABEL_9:
    v14 = 0u;
    v15 = 0u;
    return sub_100005508(&v14, &unk_1009746F0, &qword_1007F90B0);
  }

  sub_10000C5B0(*(v6 + 56) + 32 * v7, &v14);
  sub_100285E74(v13);

  if (!*(&v15 + 1))
  {
    return sub_100005508(&v14, &unk_1009746F0, &qword_1007F90B0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    if (v13[0])
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v1;

      sub_1002B3098(0, 0, v4, &unk_1007FD8F8, v11);
    }
  }

  return result;
}

uint64_t sub_10036BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10036BBAC, 0, 0);
}

uint64_t sub_10036BBAC()
{
  v0[4] = *(v0[2] + 72);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  v0[5] = static AirDropActor.shared;

  return _swift_task_switch(sub_10036BC54, v1, 0);
}

uint64_t sub_10036BC54()
{
  type metadata accessor for SFAirDropUserDefaults();
  v1 = static SFAirDropUserDefaults.shared.getter();
  v2 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v2)
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = sub_1000053E8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v4;
    v9 = v4;

    sub_1002B3098(0, 0, v5, &unk_1007FD900, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10036BECC()
{
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A3F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    type metadata accessor for SFAirDropUserDefaults();
    v5 = static SFAirDropUserDefaults.shared.getter();
    v6 = SFAirDropUserDefaults.cellularUsageEnabled.getter();

    *(v4 + 4) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cellular usage changed to %{BOOL}d", v4, 8u);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  *(v0 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10036C05C, v7, 0);
}

uint64_t sub_10036C05C()
{
  sub_10002B8D0(1, 1);
  sub_10002B8D0(0, 1);
  sub_10002B8D0(2, 1);
  if (sub_100358DE4())
  {
    sub_100359850(0);
    if (sub_100358F30())
    {
      sub_100359850(1);
    }
  }

  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1003710F4, v1, 0);
}

uint64_t sub_10036C12C()
{
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A3F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Together defaults changed", v4, 2u);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v0 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10036C05C, v5, 0);
}

id *sub_10036C284()
{
  sub_10004C60C((v0 + 2));
  sub_10004C60C((v0 + 4));

  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_10037100C(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState + 8));

  return v0;
}

uint64_t sub_10036C420()
{
  sub_10036C284();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropReceiveConnectionManager(uint64_t a1)
{
  result = qword_10097A4B8;
  if (!qword_10097A4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10036C4CC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10036C658()
{
  v1 = v0;
  sub_10028088C(&qword_10097A6E0, &unk_1007FD870);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void *sub_10036C7F0()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&unk_100977340, &unk_1007FA1C0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1003708C4(*(v6 + 48) + v21, v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
        result = sub_10000ED10(v5, *(v8 + 48) + v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10036CA24(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10036CB54()
{
  v1 = v0;
  sub_10028088C(&unk_10097A700, &unk_1007FD890);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10036CCBC()
{
  v1 = v0;
  sub_10028088C(&unk_10097F0B0, &qword_1007FD8D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10036CDFC()
{
  v1 = v0;
  sub_10028088C(&qword_10097A720, &unk_100804CB0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100294008(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_10036CF94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10036D0D4()
{
  v1 = v0;
  sub_10028088C(&qword_10097A6F8, &unk_100804C90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_10036D1E0()
{
  v1 = v0;
  sub_10028088C(&unk_10097F0E0, &unk_1007FD980);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_10036D330()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_10097A6D0, &unk_1007FD860);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1003708C4(*(v6 + 48) + v21, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        result = sub_10000ED10(v5, *(v8 + 48) + v21, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10036D53C()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_10097A6C8, &unk_100804C50);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1003708C4(*(v6 + 48) + v21, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_10000ED10(v5, *(v8 + 48) + v21, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10036D770(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_10028088C(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void sub_10036D9BC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 32 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v24 = (*(v6 + 48) + v19);
        *v24 = *v20;
        v24[1] = v21;
        v24[2] = v22;
        v24[3] = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_10036DB18(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10036C658();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10036ED98(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10036DC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000053E8(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1000053E8(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036D770(&type metadata accessor for UUID, &unk_100977310, &unk_1007FA1A0);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10036EF5C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

double sub_10036DF20@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_64:
    result = 0.0;
    *a3 = xmmword_1007F8A80;
    return result;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v45 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v42 = v15;
  v40 = a2;
  v41 = HIDWORD(a1) - a1;
  v43 = v11;
  v44 = BYTE6(a2);
  v39 = a1;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_67;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_68;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v44;
        if (v14)
        {
          v27 = v41;
          if (v42)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
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
      goto LABEL_73;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_62;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v47 = v18;
        *&v47[8] = v17;
        v47[10] = BYTE2(v17);
        v47[11] = BYTE3(v17);
        v47[12] = BYTE4(v17);
        v47[13] = BYTE5(v17);
        sub_100294008(v18, v17);
        v11 = v43;
        goto LABEL_61;
      }

      a2 = (v18 >> 32) - v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_69;
      }

      sub_100294008(v18, v17);
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v33))
        {
          goto LABEL_72;
        }

        v31 += v18 - v33;
      }

LABEL_58:
      __DataStorage._length.getter();
      a1 = v39;
      a2 = v40;
      sub_100330108(v31, v39, v40, v47);
      sub_100026AC0(v18, v17);
      v8 = v6 + 56;
      v11 = v43;
      if (v47[0])
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    if (v19 == 2)
    {
      a2 = *(v18 + 16);
      v30 = *(v18 + 24);
      sub_100294008(v18, v17);
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v32 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v32))
        {
          goto LABEL_71;
        }

        v31 += a2 - v32;
      }

      v26 = __OFSUB__(v30, a2);
      a2 = v30 - a2;
      if (v26)
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }

    *&v47[6] = 0;
    *v47 = 0;
    sub_100294008(v18, v17);
LABEL_61:
    sub_100330108(v47, a1, a2, &v46);
    sub_100026AC0(v18, v17);
    if (v46)
    {
      goto LABEL_62;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v45))
  {
LABEL_36:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_62:
  a2 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v37;
  *v47 = *v37;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_63;
  }

LABEL_73:
  sub_10036CDFC();
  v35 = *v47;
LABEL_63:
  *a3 = *(*(v35 + 48) + 16 * v10);
  sub_10036F264(v10);
  *a2 = *v47;
  return result;
}

uint64_t sub_10036E36C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_10036EC40(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for SDAirDropSendConnection(0);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10036CF94(&qword_100977360, &qword_1007FA1E0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10036F438(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_10036E504@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  Hasher.init(_seed:)();
  sub_10032CD80(v22);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v19 = v1;
    v20 = v3;
    v21 = a1;
    v11 = ~v9;
    v12 = *(v4 + 72);
    while (1)
    {
      sub_1003708C4(*(v7 + 48) + v12 * v10, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v13 = sub_100331670();
      sub_10037092C(v6, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        a1 = v21;
        goto LABEL_10;
      }
    }

    v15 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v15;
    v22[0] = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036D53C();
      v17 = v22[0];
    }

    a1 = v21;
    sub_10000ED10(*(v17 + 48) + v12 * v10, v21, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    sub_10036FBA4(v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint, sub_10032CD80, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v14 = 0;
    *v15 = v22[0];
LABEL_10:
    v3 = v20;
  }

  else
  {
    v14 = 1;
  }

  return (*(v4 + 56))(a1, v14, 1, v3);
}

uint64_t sub_10036E788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_10032D3D4(v24);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1003708C4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v15 = sub_100331F88(v8, a1);
      sub_10037092C(v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036C7F0();
      v19 = v24[0];
    }

    a2 = v23;
    sub_10000ED10(*(v19 + 48) + v14 * v12, v23, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10036F5D8(v12);
    v16 = 0;
    *v17 = v24[0];
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_10036E9BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_10032D050(v24);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1003708C4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v15 = sub_100331B60(v8, a1);
      sub_10037092C(v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036D330();
      v19 = v24[0];
    }

    a2 = v23;
    sub_10000ED10(*(v19 + 48) + v14 * v12, v23, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    sub_10036FBA4(v12, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint, sub_10032D050, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v16 = 0;
    *v17 = v24[0];
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_10036EC40(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_10046FFFC(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for SDAirDropSendConnection(0);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_10036F438(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10036ED98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10036EF5C(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1000053E8(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_10036F264(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        sub_100294008(v11, v12);
        Data.hash(into:)();
        v13 = Hasher._finalize()();
        sub_100026AC0(v11, v12);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + 16 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}