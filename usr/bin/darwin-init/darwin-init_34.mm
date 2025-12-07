uint64_t sub_10027F300(uint64_t a1)
{
  v1 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v5 - 8);
  sub_1000039E8(&qword_1004AAD70, &qword_100404D90);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376260;
  static NameSpecification.Element.short.getter();
  static NameSpecification.Element.long.getter();
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  NameSpecification.init(arrayLiteral:)();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v6 = type metadata accessor for ArgumentHelp();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  return Flag<A>.init(wrappedValue:name:help:)();
}

void (*Apply.system.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  *(v3 + 56) = Flag.wrappedValue.modify();
  return sub_10028ECC8;
}

uint64_t Apply.timeout.getter()
{
  v1 = sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  Option.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v7;
}

double sub_10027F784@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *a1;
  v9 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  Option.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v10 = v13;
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_10027F8B8(__int128 *a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t Apply.timeout.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

void (*Apply.timeout.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  *(v3 + 56) = Option.wrappedValue.modify();
  return sub_10028ECC8;
}

uint64_t Apply.failureAction.getter()
{
  v1 = sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  Option.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v7[7];
}

uint64_t sub_10027FB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = *a1;
  v9 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  Option.wrappedValue.getter();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v11[7];
  return result;
}

uint64_t sub_10027FCA4(char *a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t Apply.failureAction.setter(char a1)
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

void (*Apply.failureAction.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  *(v3 + 56) = Option.wrappedValue.modify();
  return sub_10027FE38;
}

uint64_t sub_10027FE3C(uint64_t a1)
{
  v1 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v5 - 8);
  sub_1000039E8(&qword_1004AAD70, &qword_100404D90);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.short.getter();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v6 = type metadata accessor for ArgumentHelp();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_1002800AC(uint64_t *a1)
{
  v3 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = *a1;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  Flag.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  return v9[7];
}

uint64_t sub_1002801C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v6 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-v8];
  v10 = *a1;
  v11 = *a2;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  Flag.wrappedValue.getter();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v13[7];
  return result;
}

uint64_t sub_1002802F4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  Flag.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100280374(char a1, void *a2)
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  Flag.wrappedValue.setter();
  return swift_endAccess();
}

void (*Apply.quiet.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  *(v3 + 56) = Flag.wrappedValue.modify();
  return sub_10028ECC8;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Apply.validate()()
{
  v1 = v0;
  v2 = sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v10, v6);
  Option.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  if ((v14 & 1) == 0)
  {
    static Duration.zero.getter();
    if ((static Duration.< infix(_:_:)() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v11, v2);
  Option.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  if (v15 > 1u)
  {
    if (v15 != 2)
    {
      return;
    }
  }

  else if (v15)
  {

    goto LABEL_11;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_11:
    type metadata accessor for ValidationError();
    sub_10028EB80(&qword_1004AB958, &type metadata accessor for ValidationError, &protocol conformance descriptor for ValidationError);
    swift_allocError();
    ValidationError.init(_:)();
    swift_willThrow();
  }
}

uint64_t sub_100280814()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static RealComputer.shared;
  v0[11] = static RealComputer.shared;
  v0[5] = type metadata accessor for RealComputer();
  v0[6] = &protocol witness table for RealComputer;
  v0[2] = v1;
  swift_retain_n();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1001C08B8;

  return Apply.run(on:)((v0 + 2));
}

uint64_t Apply.run(on:)(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = sub_1000039E8(&qword_1004AE488, &qword_1004017F8);
  v2[34] = swift_task_alloc();
  v4 = sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();
  v5 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100280AFC, 0, 0);
}

uint64_t sub_100280AFC()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 232);
  v5 = os_transaction_create();
  v6 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  swift_beginAccess();
  v7 = *(v2 + 16);
  *(v0 + 344) = v7;
  *(v0 + 352) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v3);
  Flag.wrappedValue.getter();
  v8 = *(v2 + 8);
  *(v0 + 360) = v8;
  *(v0 + 368) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  if (*(v0 + 456) != 1)
  {
    goto LABEL_12;
  }

  v9 = *(v0 + 224);
  v10 = v9[3];
  v11 = v9[4];
  sub_10000E2A8(v9, v10);
  (*(v11 + 312))(v10, v11);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  sub_10000E2A8((v0 + 56), v13);
  if (qword_1004A9E90 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FilePath();
  v15 = sub_1000270B4(v14, kDInitDoneFilepath);
  v16 = FileSystem.fileExists(at:)(v15, v13, v12);
  sub_100003C3C((v0 + 56));
  if (v16)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000270B4(v17, qword_1004B00F8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "darwin-init has already run, exiting", v20, 2u);
    }

    swift_unknownObjectRelease();

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
LABEL_12:
    v23 = *(v0 + 224);
    sub_100281FAC(v23);
    v24 = v23[3];
    v25 = v23[4];
    sub_10000E2A8(v23, v24);
    if ((*(v25 + 144))(v24, v25) & 1) != 0 || (v30 = v23[3], v31 = v23[4], sub_10000E2A8(*(v0 + 224), v30), ((*(v31 + 160))(v30, v31) & 1) == 0) && (v32 = v23[3], v33 = v23[4], sub_10000E2A8(*(v0 + 224), v32), ((*(v33 + 168))(v32, v33)))
    {
      if ((_s10DarwinInit16EngineeringSSHCAO19disableGlobalAccessSbyFZ_0() & 1) == 0)
      {
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000270B4(v26, qword_1004B00F8);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "darwin-init failed to disable ESC SSH", v29, 2u);
        }
      }
    }

    v34 = v23[3];
    v35 = v23[4];
    sub_10000E2A8(*(v0 + 224), v34);
    if (((*(v35 + 56))(0x4F505F53555F6E65, 0xEB00000000584953, v34, v35) & 1) == 0)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000270B4(v36, qword_1004B00F8);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Unable to set locale", v39, 2u);
      }
    }

    v41 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 280);
    v43 = *(v0 + 232);
    v44 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
    *(v0 + 376) = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
    swift_beginAccess();
    v45 = *(v41 + 16);
    *(v0 + 384) = v45;
    *(v0 + 392) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v40, v43 + v44, v42);
    Option.wrappedValue.getter();
    v46 = *(v41 + 8);
    *(v0 + 400) = v46;
    *(v0 + 408) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v40, v42);
    v47 = *(v0 + 457);
    if (v47 == 3)
    {
      v49 = v23[3];
      v48 = v23[4];
      sub_10000E2A8(*(v0 + 224), v49);
      if ((*(v48 + 144))(v49, v48))
      {
        LOBYTE(v47) = 0;
      }

      else
      {
        LOBYTE(v47) = 2;
      }
    }

    *(v0 + 458) = v47;
    swift_beginAccess();
    Option.wrappedValue.setter();
    swift_endAccess();
    v50 = swift_task_alloc();
    *(v0 + 416) = v50;
    *v50 = v0;
    v50[1] = sub_1002811D8;
    v51 = *(v0 + 224);

    return Apply.apply(on:)(v51);
  }
}

uint64_t sub_1002811D8()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_100281384;
  }

  else
  {
    v2 = sub_1002812EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002812EC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100281384()
{
  v50 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 432) = sub_1000270B4(v1, qword_1004B00F8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "darwin-init apply failed: %@", v4, 0xCu);
    sub_100013F2C(v5, &qword_1004AA050, &unk_1003F2F10);
  }

  v7 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 336);
  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  v12 = *(v0 + 232);

  v8(v10, v12 + v9, v11);
  Flag.wrappedValue.getter();
  v7(v10, v11);
  if (*(v0 + 459) == 1)
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 224);
    *(v0 + 168) = 0;
    *(v0 + 176) = 0xE000000000000000;
    *(v0 + 216) = v13;
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    _print_unlocked<A, B>(_:_:)();
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = v14[3];
    v18 = v14[4];
    sub_10000E2A8(v14, v17);
    (*(v18 + 312))(v17, v18);
    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    sub_10000E2A8((v0 + 16), v19);
    *(v0 + 184) = v15;
    *(v0 + 192) = v16;
    if (qword_1004A9EA0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for FilePath();
    v22 = sub_1000270B4(v21, kDInitStatusFilepath);
    v23 = sub_100191574();
    sub_1002FA684(v0 + 184, v22, v19, &type metadata for DarwinInitApplyStatus, v20, v23);

    sub_100003C3C((v0 + 16));
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 296);
  v26 = *(v0 + 280);
  (*(v0 + 384))(v25, *(v0 + 232) + *(v0 + 376), v26);
  Option.wrappedValue.getter();
  v24(v25, v26);
  v27 = *(v0 + 460);
  *(v0 + 461) = v27;
  if (v27 > 1)
  {
    if (v27 == 2)
    {
    }
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      *(v0 + 200) = *(v0 + 424);
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
      if (swift_dynamicCast())
      {
        if (*(v0 + 208) >> 61)
        {
        }

        else
        {
          v29 = *(v0 + 272);
          v30 = *(v0 + 224);
          v31 = swift_projectBox();
          sub_100013E54(v31, v29, &qword_1004AE488, &qword_1004017F8);

          sub_100013F2C(v29, &qword_1004AB540, &qword_1003F69E8);

          v32 = v30[3];
          v33 = v30[4];
          sub_10000E2A8(v30, v32);
          if ((*(v33 + 144))(v32, v33))
          {
            v34 = 0x28093E61EE400000;
            v35 = 195;
LABEL_24:
            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v49 = v44;
              *v43 = 136315138;
              v45 = Duration.description.getter();
              v47 = sub_1000026C0(v45, v46, &v49);

              *(v43 + 4) = v47;
              _os_log_impl(&_mh_execute_header, v41, v42, "Sleeping for %s before running failure action.", v43, 0xCu);
              sub_100003C3C(v44);
            }

            static Clock<>.continuous.getter();
            v48 = swift_task_alloc();
            *(v0 + 440) = v48;
            *v48 = v0;
            v48[1] = sub_100281AFC;

            return sub_1002A872C(v34, v35, 0, 0, 1);
          }
        }
      }

      v34 = 0x40AAD21B3B700000;
      v35 = 3;
      goto LABEL_24;
    }
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "No failure action specified, exiting...", v38, 2u);
  }

  type metadata accessor for ExitCode();
  sub_10028EB80(&qword_1004AE9D0, &type metadata accessor for ExitCode, &protocol conformance descriptor for ExitCode);
  swift_allocError();
  static ExitCode.failure.getter();
  swift_willThrow();

  swift_unknownObjectRelease();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100281AFC()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  if (v0)
  {
    v3 = sub_100281F04;
  }

  else
  {
    v3 = sub_100281C64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100281C64()
{
  v1 = *(v0 + 224);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000E2A8(v1, v2);
  if ((*(v3 + 144))(v2, v3) & 1) != 0 && (v4 = *(v0 + 224), v5 = v4[3], v6 = v4[4], sub_10000E2A8(v4, v5), ((*(v6 + 152))(v5, v6)))
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Not running the failure action because a host is attached on the debug port.", v9, 2u);
    }

    type metadata accessor for ExitCode();
    sub_10028EB80(&qword_1004AE9D0, &type metadata accessor for ExitCode, &protocol conformance descriptor for ExitCode);
    swift_allocError();
    static ExitCode.failure.getter();
    swift_willThrow();
  }

  else
  {
    v10 = *(v0 + 461);
    v11 = *(v0 + 224);
    v12 = v11[3];
    v13 = v11[4];
    sub_10000E2A8(v11, v12);
    if (v10)
    {
      (*(v13 + 248))(v12, v13);
    }

    else
    {
      (*(v13 + 240))(v12, v13);
    }
  }

  swift_unknownObjectRelease();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100281F04()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_100281FAC(void *a1)
{
  v2 = v1;
  v4 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = OBJC_IVAR____TtC10DarwinInit5Apply__quiet;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  Flag.wrappedValue.getter();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (LOBYTE(aBlock[0]) == 1)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000270B4(v11, qword_1004B00F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Quiet mode enabled: suppressing stdout logging output";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_7:

    return;
  }

  v16 = stderr.getter();
  v17 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  v9(v7, v2 + v17, v4);
  Flag.wrappedValue.getter();
  v10(v7, v4);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_10000E2A8(a1, v18);
    v20 = (*(v19 + 256))(v18, v19);
    if (!v20)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000270B4(v30, qword_1004B00F8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_7;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Failed to fopen(/dev/console). Logging hook was NOT set.";
      goto LABEL_6;
    }

    v16 = v20;
  }

  static os_log_type_t.info.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10028EBD8;
  *(v23 + 24) = v21;
  *(v23 + 32) = 0;
  *(v23 + 40) = v22;
  aBlock[4] = sub_1001ECD80;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001ECD90;
  aBlock[3] = &unk_100491BF8;
  v24 = _Block_copy(aBlock);

  v25 = os_log_set_hook();

  _Block_release(v24);
  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = sub_10028ECB4;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  swift_beginAccess();
  v28 = *(v22 + 16);
  v29 = *(v22 + 24);
  *(v22 + 16) = v27;
  *(v22 + 24) = v26;
  sub_100031B5C(v28, v29);
}

uint64_t Apply.apply(on:)(uint64_t a1)
{
  v2[143] = v1;
  v2[142] = a1;
  v3 = type metadata accessor for ContinuousClock();
  v2[144] = v3;
  v2[145] = *(v3 - 8);
  v2[146] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock.Instant();
  v2[147] = v4;
  v2[148] = *(v4 - 8);
  v2[149] = swift_task_alloc();
  v2[150] = swift_task_alloc();
  v5 = sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  v2[151] = v5;
  v2[152] = *(v5 - 8);
  v2[153] = swift_task_alloc();
  v6 = type metadata accessor for Config(0);
  v2[154] = v6;
  v7 = *(v6 - 8);
  v2[155] = v7;
  v2[156] = *(v7 + 64);
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v8 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  v2[159] = v8;
  v2[160] = *(v8 - 8);
  v2[161] = swift_task_alloc();
  sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  v2[162] = swift_task_alloc();
  v9 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v2[163] = v9;
  v2[164] = *(v9 - 8);
  v2[165] = swift_task_alloc();

  return _swift_task_switch(sub_100282760, 0, 0);
}

uint64_t sub_100282760()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1136);
  v6 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v6, v3);
  Flag.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 258) = *(v0 + 257);
  v7 = v5[3];
  v8 = v5[4];
  sub_10000E2A8(v5, v7);
  (*(v8 + 312))(v7, v8);
  v9 = *(v0 + 880);
  v10 = *(v0 + 888);
  sub_10000E2A8((v0 + 856), v9);
  if (qword_1004A9E98 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FilePath();
  *(v0 + 1328) = v11;
  v12 = sub_1000270B4(v11, kDInitPersistStorage);
  FileSystem.mkdir(_:)(v12, v9, v10);
  sub_100003C3C((v0 + 856));
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1272);
  v16 = *(v0 + 1144);
  sub_100003B20(*(v0 + 1136), v0 + 768);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 760) = JSONDecoder.init()();
  *(v0 + 808) = 6;
  *(v0 + 816) = xmmword_100402E60;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0;
  v17 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  swift_beginAccess();
  (*(v14 + 16))(v13, v16 + v17, v15);
  Argument.wrappedValue.getter();
  (*(v14 + 8))(v13, v15);
  v18 = swift_task_alloc();
  *(v0 + 1336) = v18;
  *v18 = v0;
  v18[1] = sub_100282BC8;
  v19 = *(v0 + 1296);

  return ConfigLoader.load(from:)(v19);
}

uint64_t sub_100282BC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[168] = a1;
  v4[169] = v1;

  if (v1)
  {
    sub_100013F2C(v4[162], &qword_1004AB540, &qword_1003F69E8);

    return _swift_task_switch(sub_10028486C, 0, 0);
  }

  else
  {
    sub_100013F2C(v4[162], &qword_1004AB540, &qword_1003F69E8);
    v6 = swift_task_alloc();
    v4[170] = v6;
    *v6 = v5;
    v6[1] = sub_100282D88;
    v7 = v4[142];

    return Apply.prepare(configs:on:)((v4 + 33), a1, v7);
  }
}

uint64_t sub_100282D88()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {

    v2 = sub_100284958;
  }

  else
  {
    v2 = sub_100282EA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100282EA4()
{
  v96 = v0;
  v1 = *(v0 + 1344);
  *(v0 + 256) = *(v0 + 504);
  v2 = *(v0 + 472);
  *(v0 + 208) = *(v0 + 456);
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 488);
  v3 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 392);
  *(v0 + 160) = v3;
  v4 = *(v0 + 440);
  *(v0 + 176) = *(v0 + 424);
  *(v0 + 192) = v4;
  v5 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 328);
  *(v0 + 96) = v5;
  v6 = *(v0 + 376);
  *(v0 + 112) = *(v0 + 360);
  *(v0 + 128) = v6;
  v7 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 264);
  *(v0 + 32) = v7;
  v8 = *(v0 + 312);
  *(v0 + 48) = *(v0 + 296);
  *(v0 + 64) = v8;
  v9 = *(v1 + 16);
  *(v0 + 1376) = v9;
  if (v9)
  {
    v10 = *(v0 + 1240);
    *(v0 + 1384) = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
    *(v0 + 508) = *(v10 + 80);
    swift_beginAccess();
    *(v0 + 1392) = 0;
    v11 = *(v0 + 1344);
    if (*(v11 + 16))
    {
      v12 = *(v0 + 1264);
      v13 = *(v0 + 1232);
      sub_10028E9FC(v11 + ((*(v0 + 508) + 32) & ~*(v0 + 508)), v12, type metadata accessor for Config);
      v14 = (v12 + *(v13 + 56));
      if (!v14[1] || (v15 = v14[3]) == 0 || (v16 = v14[2], , sub_100292FFC(v16, v15), (v17 & 1) != 0))
      {
        v18 = *(v0 + 1224);
        v19 = *(v0 + 1216);
        v20 = *(v0 + 1208);
        (*(v19 + 16))(v18, *(v0 + 1144) + *(v0 + 1384), v20);
        Option.wrappedValue.getter();
        (*(v19 + 8))(v18, v20);
        if (*(v0 + 1064) == 1 && qword_1004A9F18 != -1)
        {
          swift_once();
        }
      }

      if (qword_1004A9F20 == -1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_25:
    v36 = type metadata accessor for Logger();
    sub_1000270B4(v36, qword_1004B00F8);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v95[0] = v40;
      *v39 = 136315138;
      v41 = Duration.description.getter();
      v43 = sub_1000026C0(v41, v42, v95);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Effective timeout is %s", v39, 0xCu);
      sub_100003C3C(v40);
    }

    v94 = *(v0 + 258);
    v90 = *(v0 + 1256);
    v91 = *(v0 + 1264);
    v44 = *(v0 + 1200);
    v45 = *(v0 + 1192);
    v46 = *(v0 + 1184);
    v47 = *(v0 + 1176);
    v48 = *(v0 + 1168);
    v89 = *(v0 + 1136);
    v49 = (*(v0 + 508) + 40) & ~*(v0 + 508);
    v92 = *(v0 + 1144);
    v93 = (*(v0 + 1248) + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    static ContinuousClock.Instant.now.getter();
    ContinuousClock.Instant.advanced(by:)();
    v50 = *(v46 + 8);
    *(v0 + 1400) = v50;
    *(v0 + 1408) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v45, v47);
    static Clock<>.continuous.getter();
    sub_10028E9FC(v91, v90, type metadata accessor for Config);
    sub_100003B20(v89, v0 + 896);
    v51 = swift_allocObject();
    *(v0 + 1416) = v51;
    v51[2] = _swiftEmptyArrayStorage;
    v51[3] = _swiftEmptyArrayStorage;
    v51[4] = v92;
    sub_10028EA64(v90, v51 + v49, type metadata accessor for Config);
    sub_100003C88((v0 + 896), v51 + v93);
    v52 = v51 + ((v93 + 47) & 0xFFFFFFFFFFFFFFF8);
    v53 = *(v0 + 224);
    *(v52 + 12) = *(v0 + 208);
    *(v52 + 13) = v53;
    *(v52 + 14) = *(v0 + 240);
    v52[240] = *(v0 + 256);
    v54 = *(v0 + 160);
    *(v52 + 8) = *(v0 + 144);
    *(v52 + 9) = v54;
    v55 = *(v0 + 192);
    *(v52 + 10) = *(v0 + 176);
    *(v52 + 11) = v55;
    v56 = *(v0 + 96);
    *(v52 + 4) = *(v0 + 80);
    *(v52 + 5) = v56;
    v57 = *(v0 + 128);
    *(v52 + 6) = *(v0 + 112);
    *(v52 + 7) = v57;
    v58 = *(v0 + 32);
    *v52 = *(v0 + 16);
    *(v52 + 1) = v58;
    v59 = *(v0 + 64);
    *(v52 + 2) = *(v0 + 48);
    *(v52 + 3) = v59;
    v52[241] = v94;

    sub_10028DB38(v0 + 16, v0 + 512);
    v60 = swift_task_alloc();
    *(v0 + 1424) = v60;
    v60[2] = v44;
    v60[3] = v48;
    v60[4] = &unk_100402EB0;
    v60[5] = v51;
    v61 = swift_task_alloc();
    *(v0 + 1432) = v61;
    v62 = sub_1000039E8(&qword_1004AE9D8, &qword_100402EB8);
    *v61 = v0;
    v61[1] = sub_100283A20;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 1072, 0, 0, 0xD000000000000018, 0x80000001004403B0, sub_10028DB94, v60, v62);
  }

  v21 = *(v0 + 1368);
  v22 = sub_10024EF94(_swiftEmptyArrayStorage, v1);

  if ((v22 & 1) == 0)
  {
    sub_10028DBF4();
    swift_allocError();
    *v33 = 0xD00000000000001CLL;
    v33[1] = 0x80000001004403D0;
    swift_willThrow();
    goto LABEL_20;
  }

  v23 = *(v0 + 104);
  v24 = *(v0 + 105);
  if (v24 != 5)
  {
    v23 = *(v0 + 105);
  }

  if (v23 < 2u)
  {
    goto LABEL_59;
  }

  v25 = *(v0 + 81);
  if (v25 == 2)
  {
    LOBYTE(v25) = *(v0 + 80);
  }

  if (v25)
  {
LABEL_59:
    v26 = *(v0 + 1136);
    v27 = v26[3];
    v28 = v26[4];
    sub_10000E2A8(v26, v27);
    (*(v28 + 216))(v27, v28);
    if (v21)
    {
      v95[0] = 0;
      v95[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      *(v0 + 1104) = 0;
      *(v0 + 1112) = 0xE000000000000000;
      v29._countAndFlagsBits = 0xD00000000000002ELL;
      v29._object = 0x80000001004403F0;
      String.append(_:)(v29);
      *(v0 + 1128) = v21;
      sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
      _print_unlocked<A, B>(_:_:)();
      v30 = *(v0 + 1104);
      v31 = *(v0 + 1112);
      sub_10028DBF4();
      swift_allocError();
      *v32 = v30;
      v32[1] = v31;
      swift_willThrow();

LABEL_20:
      sub_10028DBA0(v0 + 16);
      sub_1001C1C88(v0 + 760);
      goto LABEL_21;
    }
  }

  if (*(v0 + 258) == 1)
  {
    v63 = *(v0 + 1136);
    v64 = v63[3];
    v65 = v63[4];
    sub_10000E2A8(v63, v64);
    (*(v65 + 312))(v64, v65);
    v66 = *(v0 + 960);
    v67 = *(v0 + 968);
    sub_10000E2A8((v0 + 936), v66);
    *(v0 + 1088) = xmmword_1003772E0;
    if (qword_1004A9EA0 != -1)
    {
      swift_once();
    }

    v68 = sub_1000270B4(*(v0 + 1328), kDInitStatusFilepath);
    v69 = sub_100191574();
    sub_1002FA684(v0 + 1088, v68, v66, &type metadata for DarwinInitApplyStatus, v67, v69);
    if (v21)
    {
      sub_1001C1C88(v0 + 760);
      sub_10028DBA0(v0 + 16);
      sub_100003C3C((v0 + 936));
      goto LABEL_21;
    }

    sub_100003C3C((v0 + 936));
  }

  v70 = *(v0 + 33);
  if (v70 == 2)
  {
    LOBYTE(v70) = *(v0 + 32);
  }

  if (v70)
  {
    v71 = *(v0 + 1136);
    v72 = v71[3];
    v73 = v71[4];
    sub_10000E2A8(v71, v72);
    (*(v73 + 240))(v72, v73);
  }

  else if (v24 < 2 || v24 == 4)
  {
    v78 = *(v0 + 1136);
    v79 = v78[3];
    v80 = v78[4];
    sub_10000E2A8(v78, v79);
    (*(v80 + 232))(v24, v79, v80);
  }

  else
  {
    if (v24 != 5)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_1000270B4(v81, qword_1004B00F8);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Skipping userspace-reboot by request of configuration", v84, 2u);

        sub_10028DBA0(v0 + 16);
      }

      else
      {
        sub_10028DBA0(v0 + 16);
      }

      sub_1001C1C88(v0 + 760);
      goto LABEL_21;
    }

    if (*(v0 + 258) == 1)
    {
      v74 = *(v0 + 1136);
      v75 = v74[3];
      v76 = v74[4];
      sub_10000E2A8(v74, v75);
      v77 = (*(v76 + 224))(v75, v76);
      if (v77 != 5)
      {
        v85 = *(v0 + 1136);
        v86 = v85[3];
        v87 = v85[4];
        v88 = v77;
        sub_10000E2A8(v85, v86);
        (*(v87 + 232))(v88, v86, v87);
      }
    }
  }

  sub_1001C1C88(v0 + 760);
  sub_10028DBA0(v0 + 16);
LABEL_21:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100283A20()
{
  v2 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {

    v3 = sub_100284710;
  }

  else
  {
    v4 = *(v2 + 1400);
    v5 = *(v2 + 1200);
    v6 = *(v2 + 1176);
    v7 = *(v2 + 1168);
    v8 = *(v2 + 1160);
    v9 = *(v2 + 1152);

    *(v2 + 1448) = *(v2 + 1072);
    (*(v8 + 8))(v7, v9);
    v4(v5, v6);
    v3 = sub_100283BC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100283BC8()
{
  v94 = v0;
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1392) + 1;
  sub_1001F6788(*(v0 + 1264), type metadata accessor for Config);
  v3 = *(v0 + 1456);
  if (v2 == v1)
  {

    v4 = *(v0 + 1440);
    v5 = sub_10024EF94(*(v0 + 1448), *(v0 + 1344));

    if ((v5 & 1) == 0)
    {
      sub_10028DBF4();
      swift_allocError();
      *v28 = 0xD00000000000001CLL;
      v28[1] = 0x80000001004403D0;
      swift_willThrow();
      goto LABEL_18;
    }

    v6 = *(v0 + 104);
    v7 = *(v0 + 105);
    if (v7 != 5)
    {
      v6 = *(v0 + 105);
    }

    if (v6 >= 2u)
    {
      v31 = *(v0 + 81);
      if (v31 == 2)
      {
        if ((*(v0 + 80) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if ((v31 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v8 = *(v0 + 1136);
    v9 = v8[3];
    v10 = v8[4];
    sub_10000E2A8(v8, v9);
    (*(v10 + 216))(v9, v10);
    if (v4)
    {
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      *(v0 + 1104) = 0;
      *(v0 + 1112) = 0xE000000000000000;
      v11._countAndFlagsBits = 0xD00000000000002ELL;
      v11._object = 0x80000001004403F0;
      String.append(_:)(v11);
      *(v0 + 1128) = v4;
      sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
      _print_unlocked<A, B>(_:_:)();
      v12 = *(v0 + 1104);
      v13 = *(v0 + 1112);
      sub_10028DBF4();
      swift_allocError();
      *v14 = v12;
      v14[1] = v13;
      swift_willThrow();

LABEL_18:
      sub_10028DBA0(v0 + 16);
      sub_1001C1C88(v0 + 760);
      goto LABEL_19;
    }

LABEL_33:
    if (*(v0 + 258) == 1)
    {
      v59 = *(v0 + 1136);
      v60 = v59[3];
      v61 = v59[4];
      sub_10000E2A8(v59, v60);
      (*(v61 + 312))(v60, v61);
      v62 = *(v0 + 960);
      v63 = *(v0 + 968);
      sub_10000E2A8((v0 + 936), v62);
      *(v0 + 1088) = xmmword_1003772E0;
      if (qword_1004A9EA0 != -1)
      {
        swift_once();
      }

      v64 = sub_1000270B4(*(v0 + 1328), kDInitStatusFilepath);
      v65 = sub_100191574();
      sub_1002FA684(v0 + 1088, v64, v62, &type metadata for DarwinInitApplyStatus, v63, v65);
      if (v4)
      {
        sub_1001C1C88(v0 + 760);
        sub_10028DBA0(v0 + 16);
        sub_100003C3C((v0 + 936));
        goto LABEL_19;
      }

      sub_100003C3C((v0 + 936));
    }

    v66 = *(v0 + 33);
    if (v66 == 2)
    {
      LOBYTE(v66) = *(v0 + 32);
    }

    if (v66)
    {
      v67 = *(v0 + 1136);
      v68 = v67[3];
      v69 = v67[4];
      sub_10000E2A8(v67, v68);
      (*(v69 + 240))(v68, v69);
    }

    else if (v7 < 2 || v7 == 4)
    {
      v74 = *(v0 + 1136);
      v75 = v74[3];
      v76 = v74[4];
      sub_10000E2A8(v74, v75);
      (*(v76 + 232))(v7, v75, v76);
    }

    else
    {
      if (v7 != 5)
      {
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_1000270B4(v77, qword_1004B00F8);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "Skipping userspace-reboot by request of configuration", v80, 2u);

          sub_10028DBA0(v0 + 16);
        }

        else
        {
          sub_10028DBA0(v0 + 16);
        }

        sub_1001C1C88(v0 + 760);
        goto LABEL_19;
      }

      if (*(v0 + 258) == 1)
      {
        v70 = *(v0 + 1136);
        v71 = v70[3];
        v72 = v70[4];
        sub_10000E2A8(v70, v71);
        v73 = (*(v72 + 224))(v71, v72);
        if (v73 != 5)
        {
          v81 = *(v0 + 1136);
          v82 = v81[3];
          v83 = v81[4];
          v84 = v73;
          sub_10000E2A8(v81, v82);
          (*(v83 + 232))(v84, v82, v83);
        }
      }
    }

    sub_1001C1C88(v0 + 760);
    sub_10028DBA0(v0 + 16);
LABEL_19:

    v29 = *(v0 + 8);

    return v29();
  }

  v15 = *(v0 + 1448);
  v16 = *(v0 + 1392) + 1;
  *(v0 + 1392) = v16;
  v17 = *(v0 + 1344);
  if (v16 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v91 = v15;
    v92 = v3;
    v18 = *(v0 + 1264);
    v19 = *(v0 + 1232);
    sub_10028E9FC(v17 + ((*(v0 + 508) + 32) & ~*(v0 + 508)) + *(*(v0 + 1240) + 72) * v16, v18, type metadata accessor for Config);
    v20 = (v18 + *(v19 + 56));
    v21 = v20[3];
    if (v20[1])
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22 || (v23 = v20[2], , sub_100292FFC(v23, v21), (v24 & 1) != 0))
    {
      v25 = *(v0 + 1224);
      v26 = *(v0 + 1216);
      v27 = *(v0 + 1208);
      (*(v26 + 16))(v25, *(v0 + 1144) + *(v0 + 1384), v27);
      Option.wrappedValue.getter();
      (*(v26 + 8))(v25, v27);
      if (*(v0 + 1064) == 1 && qword_1004A9F18 != -1)
      {
        swift_once();
      }
    }

    if (qword_1004A9F20 == -1)
    {
      goto LABEL_27;
    }
  }

  swift_once();
LABEL_27:
  v32 = type metadata accessor for Logger();
  sub_1000270B4(v32, qword_1004B00F8);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v93[0] = v36;
    *v35 = 136315138;
    v37 = Duration.description.getter();
    v39 = sub_1000026C0(v37, v38, v93);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Effective timeout is %s", v35, 0xCu);
    sub_100003C3C(v36);
  }

  v90 = *(v0 + 258);
  v86 = *(v0 + 1256);
  v87 = *(v0 + 1264);
  v40 = *(v0 + 1200);
  v41 = *(v0 + 1192);
  v42 = *(v0 + 1184);
  v43 = *(v0 + 1176);
  v44 = *(v0 + 1168);
  v45 = (*(v0 + 508) + 40) & ~*(v0 + 508);
  v88 = *(v0 + 1144);
  v89 = (*(v0 + 1248) + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = *(v0 + 1136);
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v46 = *(v42 + 8);
  *(v0 + 1400) = v46;
  *(v0 + 1408) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v41, v43);
  static Clock<>.continuous.getter();
  sub_10028E9FC(v87, v86, type metadata accessor for Config);
  sub_100003B20(v85, v0 + 896);
  v47 = swift_allocObject();
  *(v0 + 1416) = v47;
  v47[2] = v91;
  v47[3] = v92;
  v47[4] = v88;
  sub_10028EA64(v86, v47 + v45, type metadata accessor for Config);
  sub_100003C88((v0 + 896), v47 + v89);
  v48 = v47 + ((v89 + 47) & 0xFFFFFFFFFFFFFFF8);
  v49 = *(v0 + 224);
  *(v48 + 12) = *(v0 + 208);
  *(v48 + 13) = v49;
  *(v48 + 14) = *(v0 + 240);
  v48[240] = *(v0 + 256);
  v50 = *(v0 + 160);
  *(v48 + 8) = *(v0 + 144);
  *(v48 + 9) = v50;
  v51 = *(v0 + 192);
  *(v48 + 10) = *(v0 + 176);
  *(v48 + 11) = v51;
  v52 = *(v0 + 96);
  *(v48 + 4) = *(v0 + 80);
  *(v48 + 5) = v52;
  v53 = *(v0 + 128);
  *(v48 + 6) = *(v0 + 112);
  *(v48 + 7) = v53;
  v54 = *(v0 + 32);
  *v48 = *(v0 + 16);
  *(v48 + 1) = v54;
  v55 = *(v0 + 64);
  *(v48 + 2) = *(v0 + 48);
  *(v48 + 3) = v55;
  v48[241] = v90;

  sub_10028DB38(v0 + 16, v0 + 512);
  v56 = swift_task_alloc();
  *(v0 + 1424) = v56;
  v56[2] = v40;
  v56[3] = v44;
  v56[4] = &unk_100402EB0;
  v56[5] = v47;
  v57 = swift_task_alloc();
  *(v0 + 1432) = v57;
  v58 = sub_1000039E8(&qword_1004AE9D8, &qword_100402EB8);
  *v57 = v0;
  v57[1] = sub_100283A20;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 1072, 0, 0, 0xD000000000000018, 0x80000001004403B0, sub_10028DB94, v56, v58);
}

uint64_t sub_100284710()
{
  v1 = v0[175];
  v2 = v0[158];
  v3 = v0[150];
  v4 = v0[147];
  v5 = v0[146];
  v6 = v0[145];
  v7 = v0[144];

  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  sub_10028DBA0((v0 + 2));
  sub_1001C1C88((v0 + 95));
  sub_1001F6788(v2, type metadata accessor for Config);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10028486C()
{
  sub_1001C1C88(v0 + 760);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100284958()
{
  sub_1001C1C88(v0 + 760);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Apply.prepare(configs:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[559] = v3;
  v4[558] = a3;
  v4[557] = a2;
  v4[556] = a1;
  v5 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v4[560] = v5;
  v4[561] = *(v5 - 8);
  v4[562] = swift_task_alloc();
  v6 = type metadata accessor for FilePath();
  v4[563] = v6;
  v4[564] = *(v6 - 8);
  v4[565] = swift_task_alloc();
  v4[566] = swift_task_alloc();
  v4[567] = sub_1000039E8(&qword_1004ABB80, &unk_100404690);
  v4[568] = swift_task_alloc();
  v4[569] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[570] = v7;
  v4[571] = *(v7 - 8);
  v4[572] = swift_task_alloc();
  v4[573] = swift_task_alloc();
  v8 = type metadata accessor for Config(0);
  v4[574] = v8;
  v4[575] = *(v8 - 8);
  v4[576] = swift_task_alloc();
  v9 = sub_1000039E8(&qword_1004AE9E8, &qword_100402EC0);
  v4[577] = v9;
  v4[578] = *(v9 - 8);
  v4[579] = swift_task_alloc();
  sub_1000039E8(&qword_1004AE9F0, &qword_100402EC8);
  v4[580] = swift_task_alloc();
  v4[581] = swift_task_alloc();

  return _swift_task_switch(sub_100284D3C, 0, 0);
}

uint64_t sub_100284D3C()
{
  v388 = v0;
  v1 = v0;
  static Validate.preflight(configs:)(*(v0 + 4456), (v0 + 16));
  v2 = *(v0 + 4464);
  memcpy((v0 + 744), (v0 + 16), 0x2D8uLL);
  sub_100013F2C(v0 + 744, &qword_1004AE9F8, &qword_100402ED0);
  v327 = (v0 + 3488);
  Globals.init()(v0 + 3488);
  v3 = v2[3];
  v4 = v2[4];
  sub_10000E2A8(v2, v3);
  v5 = (*(v4 + 224))(v3, v4);
  if (v5 != 5)
  {
    v6 = *(v0 + 3578);
    *(v0 + 3576) = v5;
    *(v0 + 3578) = v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  sub_10000E2A8(*(v0 + 4464), v8);
  if (((*(v7 + 208))(v8, v7) & 1) == 0)
  {
    *(v0 + 3528) = *(v0 + 3528);
    *(v0 + 3529) = 0;
  }

  v325 = v0 + 2000;
  v326 = v0 + 2248;
  v324 = v0 + 3736;
  v9 = *(v0 + 4624);
  v335 = *(v0 + 4616);
  v328 = *(v0 + 4600);
  v330 = *(v0 + 4592);
  v10 = *(v0 + 4568);
  v347 = *(v0 + 4544);
  v346 = *(v0 + 4536);
  v337 = *(v0 + 4608);
  v11 = *(v0 + 4456);
  *(v0 + 4408) = _swiftEmptyArrayStorage;
  v331 = (v9 + 48);
  v332 = (v9 + 56);
  v348 = v10;
  v345 = (v10 + 16);
  v333 = v11;

  v329 = 0;
  v12 = 0;
  v370 = v0;
  while (1)
  {
    v13 = *(v333 + 16);
    if (v12 == v13)
    {
      v14 = 1;
    }

    else
    {
      if (v12 >= v13)
      {
        __break(1u);
LABEL_180:
        swift_once();
        goto LABEL_120;
      }

      v15 = *(v1 + 4640);
      v16 = *(v1 + 4632);
      v17 = *(v1 + 4456) + ((*(v328 + 80) + 32) & ~*(v328 + 80)) + *(v328 + 72) * v12;
      v18 = *(v335 + 48);
      *v16 = v12;
      sub_10028E9FC(v17, v16 + v18, type metadata accessor for Config);
      sub_10003E154(v16, v15, &qword_1004AE9E8, &qword_100402EC0);
      v14 = 0;
      ++v12;
    }

    v19 = *(v1 + 4648);
    v20 = *(v1 + 4640);
    v21 = *(v1 + 4616);
    (*v332)(v20, v14, 1, v21);
    sub_10003E154(v20, v19, &qword_1004AE9F0, &qword_100402EC8);
    if ((*v331)(v19, 1, v21) == 1)
    {
      break;
    }

    v336 = v12;
    v22 = *(v1 + 4648);
    v23 = *v22;
    sub_10028EA64(v22 + *(v335 + 48), *(v1 + 4608), type metadata accessor for Config);
    v24 = *(v1 + 3512);
    v25 = *(v1 + 3520);
    v26 = *(v1 + 3528);
    v27 = *(v1 + 3529);
    v28 = *(v1 + 3530);

    swift_getAtKeyPath();
    v29 = *(v1 + 1732);
    if (v29 == 2 || (v28 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v27 != 2)
    {
      if ((v29 ^ v27))
      {

        sub_1000039E8(&qword_1004AEA18, &qword_100402EE8);
        sub_10000E720(&qword_1004AEA20, &qword_1004AEA18, &qword_100402EE8, &protocol conformance descriptor for Global<A, B>.Conflict);
        v334 = swift_allocError();
        *v257 = v24;
        *(v257 + 8) = v27 & 1;
        *(v257 + 16) = v23;
        *(v257 + 24) = v29 & 1;
        *(v257 + 32) = v25;
        swift_willThrow();
        *(v1 + 3512) = v24;
        *(v1 + 3520) = v25;
        *(v1 + 3528) = v26;
        *(v1 + 3529) = v27;
        *(v1 + 3530) = 1;
        goto LABEL_154;
      }

LABEL_16:

      goto LABEL_17;
    }

    v24 = v23;
    LOBYTE(v27) = v29;
LABEL_17:
    *(v1 + 3512) = v24;
    *(v1 + 3520) = v25;
    *(v1 + 3528) = v26;
    *(v1 + 3529) = v27;
    *(v1 + 3530) = v28;
    v30 = *(v1 + 3488);
    v31 = *(v1 + 3496);
    v32 = *(v1 + 3504);
    v33 = *(v1 + 3505);
    v34 = *(v1 + 3506);

    swift_getAtKeyPath();
    v35 = *(v1 + 1731);
    if (v35 == 2 || (v34 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v33 != 2)
    {
      if ((v35 ^ v33))
      {

        sub_1000039E8(&qword_1004AEA18, &qword_100402EE8);
        sub_10000E720(&qword_1004AEA20, &qword_1004AEA18, &qword_100402EE8, &protocol conformance descriptor for Global<A, B>.Conflict);
        v334 = swift_allocError();
        *v258 = v30;
        *(v258 + 8) = v33 & 1;
        *(v258 + 16) = v23;
        *(v258 + 24) = v35 & 1;
        *(v258 + 32) = v31;
        swift_willThrow();
        *(v1 + 3488) = v30;
        *(v1 + 3496) = v31;
        *(v1 + 3504) = v32;
        *(v1 + 3505) = v33;
        *(v1 + 3506) = 1;
        goto LABEL_154;
      }

LABEL_22:

      goto LABEL_23;
    }

    v30 = v23;
    LOBYTE(v33) = v35;
LABEL_23:
    *(v1 + 3488) = v30;
    *(v1 + 3496) = v31;
    *(v1 + 3504) = v32;
    *(v1 + 3505) = v33;
    *(v1 + 3506) = v34;
    v36 = *(v1 + 3536);
    v37 = *(v1 + 3544);
    v38 = *(v1 + 3552);
    v39 = *(v1 + 3553);
    v40 = *(v1 + 3554);

    swift_getAtKeyPath();
    v41 = *(v1 + 1730);
    if (v41 != 2 && (v40 & 1) != 0)
    {
      if (v39 == 2)
      {

        v36 = v23;
        LOBYTE(v39) = v41;
        goto LABEL_29;
      }

      if ((v41 ^ v39))
      {

        sub_1000039E8(&qword_1004AEA18, &qword_100402EE8);
        sub_10000E720(&qword_1004AEA20, &qword_1004AEA18, &qword_100402EE8, &protocol conformance descriptor for Global<A, B>.Conflict);
        v334 = swift_allocError();
        *v259 = v36;
        *(v259 + 8) = v39 & 1;
        *(v259 + 16) = v23;
        *(v259 + 24) = v41 & 1;
        *(v259 + 32) = v37;
        swift_willThrow();
        *(v1 + 3536) = v36;
        *(v1 + 3544) = v37;
        *(v1 + 3552) = v38;
        *(v1 + 3553) = v39;
        *(v1 + 3554) = 1;
        goto LABEL_154;
      }
    }

LABEL_29:
    *(v1 + 3536) = v36;
    *(v1 + 3544) = v37;
    *(v1 + 3552) = v38;
    *(v1 + 3553) = v39;
    *(v1 + 3554) = v40;
    v42 = *(v1 + 3560);
    v43 = *(v1 + 3568);
    v44 = *(v1 + 3576);
    v45 = *(v1 + 3577);
    v46 = *(v1 + 3578);
    *&v372 = v42;
    *(&v372 + 1) = v43;
    LOBYTE(v373) = v44;
    BYTE1(v373) = v45;
    BYTE2(v373) = v46;

    swift_getAtKeyPath();
    v47 = *(v1 + 1729);
    if (v47 == 5)
    {
    }

    else
    {
      sub_100287D7C(v47, v23);

      v43 = *(&v372 + 1);
      v42 = v372;
      v44 = v373;
      v45 = BYTE1(v373);
      v46 = BYTE2(v373);
    }

    *(v1 + 3560) = v42;
    *(v1 + 3568) = v43;
    *(v1 + 3576) = v44;
    *(v1 + 3577) = v45;
    *(v1 + 3578) = v46;
    v48 = *(v1 + 3584);
    v49 = *(v1 + 3592);
    v50 = *(v1 + 3600);
    v51 = *(v1 + 3608);
    v52 = *(v1 + 3616);
    v53 = *(v1 + 3624);
    v54 = *(v1 + 3632);
    LOBYTE(v372) = *(v1 + 3632);

    sub_1001D6F74(v52, v53);
    swift_getAtKeyPath();
    v55 = *(v1 + 4336);
    v360 = v51;
    invalidationId = v23;
    if (v55 == 1)
    {
      v56 = v50;
      goto LABEL_46;
    }

    v57 = *(v1 + 4328);
    if (!v54)
    {
      goto LABEL_45;
    }

    if (v53)
    {
      if (v53 == 1)
      {
        v56 = v50;
        v48 = v23;
        v52 = *(v1 + 4328);
        v53 = *(v1 + 4336);
        goto LABEL_46;
      }

      if (!v55)
      {
        goto LABEL_138;
      }

      if (v52 == v57 && v53 == v55)
      {
        v57 = v52;
        v55 = v53;
      }

      else
      {
        v58 = *(v1 + 4328);
        v59 = *(v1 + 4336);
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v55 = v59;
        v61 = v60;
        v57 = v58;
        if ((v61 & 1) == 0)
        {
LABEL_138:
          v359 = v50;
          v230 = v57;
          v231 = v55;
          sub_1000039E8(&qword_1004AEA08, &qword_100402EE0);
          sub_10000E720(&qword_1004AEA10, &qword_1004AEA08, &qword_100402EE0, &protocol conformance descriptor for Global<A, B>.Conflict);
          v1 = v370;
          v334 = swift_allocError();
          v232[4] = v230;
          v232[5] = v231;
          *v232 = v48;
          v232[1] = v52;
          v232[2] = v53;
          v232[3] = invalidationId;
          v232[6] = v49;
          swift_willThrow();
          sub_1001D6F74(v52, v53);

          v233 = v372;
          v234 = *(v370 + 3616);
          v235 = *(v370 + 3624);

          sub_1001D6F88(v234, v235);
          *(v370 + 3584) = v48;
          *(v370 + 3592) = v49;
          *(v370 + 3600) = v359;
          *(v370 + 3608) = v51;
          *(v370 + 3616) = v52;
          *(v370 + 3624) = v53;
          *(v370 + 3632) = v233;
LABEL_154:
          v260 = *(v1 + 4608);
          *&v372 = 0;
          *(&v372 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(28);
          *(v1 + 4360) = 0;
          *(v1 + 4368) = 0xE000000000000000;
          v261._object = 0x80000001004404D0;
          v261._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v261);
          *(v1 + 4440) = v334;
          sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
          _print_unlocked<A, B>(_:_:)();
          v262 = *(v1 + 4360);
          v263 = *(v1 + 4368);
          sub_10028DBF4();
          swift_allocError();
          *v264 = v262;
          v264[1] = v263;
          swift_willThrow();

          sub_1001F6788(v260, type metadata accessor for Config);
          v265 = v327[13];
          *(v326 + 192) = v327[12];
          *(v326 + 208) = v265;
          *(v326 + 224) = v327[14];
          *(v326 + 240) = *(v327 + 240);
          v266 = v327[9];
          *(v326 + 128) = v327[8];
          *(v326 + 144) = v266;
          v267 = v327[11];
          *(v326 + 160) = v327[10];
          *(v326 + 176) = v267;
          v268 = v327[5];
          *(v326 + 64) = v327[4];
          *(v326 + 80) = v268;
          v269 = v327[7];
          *(v326 + 96) = v327[6];
          *(v326 + 112) = v269;
          v270 = v327[1];
          *v326 = *v327;
          *(v326 + 16) = v270;
          v271 = v327[3];
          *(v326 + 32) = v327[2];
          *(v326 + 48) = v271;
          sub_10028DBA0(v326);

          v272 = *(v1 + 8);
          goto LABEL_155;
        }
      }

LABEL_45:
      v56 = v50;
      sub_1001D6F88(v57, v55);
      goto LABEL_46;
    }

    if (v55)
    {
      goto LABEL_138;
    }

    v56 = v50;
    v53 = 0;
LABEL_46:
    v62 = *(v370 + 3616);
    v63 = *(v370 + 3624);

    sub_1001D6F88(v62, v63);
    *(v370 + 3584) = v48;
    *(v370 + 3592) = v49;
    *(v370 + 3600) = v56;
    *(v370 + 3608) = v360;
    *(v370 + 3616) = v52;
    *(v370 + 3624) = v53;
    *(v370 + 3632) = v54;
    v64 = *(v370 + 3696);
    v65 = *(v370 + 3704);
    v66 = *(v370 + 3712);
    v67 = *(v370 + 3720);
    v68 = *(v370 + 3728);
    *&v372 = v64;
    *(&v372 + 1) = v65;
    *&v373 = v66;
    *(&v373 + 1) = v67;
    LOBYTE(v374) = v68;

    sub_1001C8518(v67, v69, v70, v71);
    swift_getAtKeyPath();
    v75 = *(v370 + 4416);
    if ((~v75 & 0xF000000000000007) != 0)
    {
      sub_1001C8518(*(v370 + 4416), v72, v73, v74);
      v76 = invalidationId;
      sub_100287FB8(v75, invalidationId, v77, v78);
      sub_1001C855C(v75);
      sub_1001C855C(v75);
      v65 = *(&v372 + 1);
      v64 = v372;
      v67 = *(&v373 + 1);
      v66 = v373;
      v68 = v374;
    }

    else
    {
      sub_1001C855C(*(v370 + 4416));
      v76 = invalidationId;
    }

    v79 = *(v370 + 3720);

    sub_1001C855C(v79);
    *(v370 + 3696) = v64;
    *(v370 + 3704) = v65;
    *(v370 + 3712) = v66;
    *(v370 + 3720) = v67;
    *(v370 + 3728) = v68;
    v80 = *(v370 + 3640);
    v81 = *(v370 + 3648);
    v82 = *(v370 + 3656);
    v83 = *(v370 + 3664);
    v84 = *(v370 + 3672);
    v85 = *(v370 + 3680);
    LOBYTE(v371) = *(v370 + 3688);

    sub_1001D6F74(v84, v85);
    swift_getAtKeyPath();
    v86 = *(v370 + 4400);
    v361 = v371;
    if (v86 == 1)
    {
      v87 = v83;
      v88 = v82;
      goto LABEL_63;
    }

    v89 = *(v370 + 4392);
    if (!v371)
    {
      goto LABEL_62;
    }

    if (v85)
    {
      if (v85 == 1)
      {
        v87 = v83;
        v88 = v82;
        v80 = v76;
        v84 = *(v370 + 4392);
        v85 = *(v370 + 4400);
        goto LABEL_63;
      }

      if (!v86)
      {
        goto LABEL_139;
      }

      if (v84 == v89 && v85 == v86)
      {
        v89 = v84;
        v86 = v85;
      }

      else
      {
        v90 = *(v370 + 4392);
        v91 = v76;
        v92 = *(v370 + 4400);
        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v86 = v92;
        v76 = v91;
        v94 = v93;
        v89 = v90;
        if ((v94 & 1) == 0)
        {
LABEL_139:
          v354 = v89;
          v356 = v86;
          sub_1000039E8(&qword_1004AEA08, &qword_100402EE0);
          v364 = v82;
          sub_10000E720(&qword_1004AEA10, &qword_1004AEA08, &qword_100402EE0, &protocol conformance descriptor for Global<A, B>.Conflict);
          v334 = swift_allocError();
          v236[4] = v354;
          v236[5] = v356;
          *v236 = v80;
          v236[1] = v84;
          v236[2] = v85;
          v236[3] = v76;
          v236[6] = v81;
          swift_willThrow();
          sub_1001D6F74(v84, v85);

          invalidationIdd = v371;
          v237 = *(v370 + 3672);
          v238 = *(v370 + 3680);

          sub_1001D6F88(v237, v238);
          *(v370 + 3640) = v80;
          v1 = v370;
          *(v370 + 3648) = v81;
          *(v370 + 3656) = v364;
          *(v370 + 3664) = v83;
          *(v370 + 3672) = v84;
          *(v370 + 3680) = v85;
          *(v370 + 3688) = invalidationIdd;
          goto LABEL_154;
        }
      }

LABEL_62:
      v87 = v83;
      v88 = v82;
      sub_1001D6F88(v89, v86);
      goto LABEL_63;
    }

    if (v86)
    {
      goto LABEL_139;
    }

    v87 = v83;
    v88 = v82;
    v85 = 0;
LABEL_63:
    v1 = v370;
    v95 = *(v370 + 3672);
    v96 = *(v370 + 3680);

    sub_1001D6F88(v95, v96);
    *(v370 + 3640) = v80;
    *(v370 + 3648) = v81;
    *(v370 + 3656) = v88;
    *(v370 + 3664) = v87;
    *(v370 + 3672) = v84;
    *(v370 + 3680) = v85;
    *(v370 + 3688) = v361;
    memmove((v370 + 1736), (v337 + 216), 0x101uLL);
    if (sub_100220C40((v370 + 1736)) == 1)
    {
      v97 = _swiftEmptyArrayStorage;
    }

    else
    {
      v98 = *(v370 + 1976);
      if (v98)
      {
        v99 = *(v98 + 16);
        if (v99)
        {
          *&v372 = _swiftEmptyArrayStorage;

          sub_10031118C(0, v99, 0);
          v97 = _swiftEmptyArrayStorage;
          v100 = v98 + 64;
          v101 = _HashTable.startBucket.getter();
          v102 = 0;
          v338 = v98 + 72;
          v339 = v99;
          v341 = v98 + 64;
          v343 = v98;
          while ((v101 & 0x8000000000000000) == 0 && v101 < 1 << *(v98 + 32))
          {
            if ((*(v100 + 8 * (v101 >> 6)) & (1 << v101)) == 0)
            {
              goto LABEL_159;
            }

            v355 = v101 >> 6;
            v104 = *(v1 + 4552);
            v349 = v102;
            v351 = *(v98 + 36);
            v105 = *(v346 + 48);
            v357 = *(v1 + 4560);
            v362 = *(v1 + 4584);
            v106 = *(v1 + 4544);
            v107 = *(v98 + 56);
            v108 = (*(v98 + 48) + 16 * v101);
            v110 = *v108;
            v109 = v108[1];
            v111 = (type metadata accessor for Config.Cryptex.Cryptex(0) - 8);
            sub_10028E9FC(v107 + *(*v111 + 72) * v101, v104 + v105, type metadata accessor for Config.Cryptex.Cryptex);
            *v106 = v110;
            *(v347 + 8) = v109;
            v112 = v106 + *(v346 + 48);
            sub_10028EA64(v104 + v105, v112, type metadata accessor for Config.Cryptex.Cryptex);
            v113 = v112 + v111[12];
            v114 = sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
            (*v345)(v362, v113 + *(v114 + 44), v357);

            sub_100013F2C(v106, &qword_1004ABB80, &unk_100404690);
            *&v372 = v97;
            v116 = v97[2];
            v115 = v97[3];
            if (v116 >= v115 >> 1)
            {
              sub_10031118C((v115 > 1), v116 + 1, 1);
              v97 = v372;
            }

            v1 = v370;
            v117 = *(v370 + 4584);
            v118 = *(v370 + 4560);
            v97[2] = v116 + 1;
            (*(v348 + 32))(v97 + ((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * v116, v117, v118);
            v98 = v343;
            v103 = 1 << *(v343 + 32);
            if (v101 >= v103)
            {
              goto LABEL_160;
            }

            v100 = v341;
            v119 = *(v341 + 8 * v355);
            if ((v119 & (1 << v101)) == 0)
            {
              goto LABEL_161;
            }

            if (v351 != *(v343 + 36))
            {
              goto LABEL_162;
            }

            v120 = v119 & (-2 << (v101 & 0x3F));
            if (v120)
            {
              v103 = __clz(__rbit64(v120)) | v101 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v121 = v355 << 6;
              v122 = (v338 + 8 * v355);
              v123 = v355 + 1;
              while (v123 < (v103 + 63) >> 6)
              {
                v125 = *v122++;
                v124 = v125;
                v121 += 64;
                ++v123;
                if (v125)
                {
                  sub_100220ACC(v101, v351, 0);
                  v103 = __clz(__rbit64(v124)) + v121;
                  goto LABEL_69;
                }
              }

              sub_100220ACC(v101, v351, 0);
            }

LABEL_69:
            v102 = v349 + 1;
            v101 = v103;
            if (v349 + 1 == v339)
            {

              goto LABEL_86;
            }
          }

          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:

LABEL_164:
          v273 = *(v1 + 4496);
          v274 = *(v1 + 4488);
          v275 = *(v1 + 4480);
          v276 = *(v1 + 4472);
          v277 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
          swift_beginAccess();
          (*(v274 + 16))(v273, v276 + v277, v275);
          Flag.wrappedValue.getter();
          (*(v274 + 8))(v273, v275);
          v278 = v327;
          if (*(v1 + 1733) == 1)
          {
            v279 = Logger.logObject.getter();
            v280 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v279, v280))
            {
              v281 = swift_slowAlloc();
              *v281 = 0;
              _os_log_impl(&_mh_execute_header, v279, v280, "Committing secure config parameters", v281, 2u);
            }

            v285 = *(v1 + 3720);
            v286 = v285;
            if ((~v285 & 0xF000000000000007) == 0)
            {
              v286 = *(v1 + 3712);
            }

            *&v372 = v286;
            v287 = *(v1 + 3672);
            v288 = *(v1 + 3680);
            v289 = v287;
            v290 = v288;
            if (v288 == 1)
            {
              v290 = *(v1 + 3664);
              v289 = *(v1 + 3656);
            }

            v291 = *(v1 + 4464);
            sub_1001C8518(v285, v282, v283, v284);
            sub_1001D6F74(v287, v288);
            sub_1001FA65C(&v372, v289, v290, v291);
            goto LABEL_177;
          }

LABEL_178:
          v292 = v278[13];
          v293 = v278[14];
          v294 = v278[11];
          *(v1 + 2936) = v278[12];
          *(v1 + 2952) = v292;
          *(v1 + 2968) = v293;
          v295 = v278[9];
          v296 = v278[10];
          v297 = v278[7];
          *(v1 + 2872) = v278[8];
          *(v1 + 2888) = v295;
          *(v1 + 2904) = v296;
          *(v1 + 2920) = v294;
          v298 = v278[5];
          v299 = v278[6];
          v300 = v278[3];
          *(v1 + 2808) = v278[4];
          *(v1 + 2824) = v298;
          *(v1 + 2840) = v299;
          *(v1 + 2856) = v297;
          v301 = v278[1];
          *(v1 + 2744) = *v278;
          *(v1 + 2760) = v301;
          v302 = v278[3];
          v304 = *v278;
          v303 = v278[1];
          v305 = v278[2];
          *(v1 + 2776) = v305;
          *(v1 + 2792) = v302;
          v306 = v278;
          v307 = *(v1 + 4448);
          *(v1 + 2984) = *(v306 + 240);
          *(v307 + 32) = v305;
          *(v307 + 48) = v300;
          *v307 = v304;
          *(v307 + 16) = v303;
          v308 = v306[4];
          v309 = v306[5];
          v310 = v306[7];
          *(v307 + 96) = v306[6];
          *(v307 + 112) = v310;
          *(v307 + 64) = v308;
          *(v307 + 80) = v309;
          v311 = v306[8];
          v312 = v306[9];
          v313 = v306[11];
          *(v307 + 160) = v306[10];
          *(v307 + 176) = v313;
          *(v307 + 128) = v311;
          *(v307 + 144) = v312;
          v314 = v306[12];
          v315 = v306[13];
          v316 = v306[14];
          *(v307 + 240) = *(v306 + 240);
          *(v307 + 208) = v315;
          *(v307 + 224) = v316;
          *(v307 + 192) = v314;
          v317 = v306[13];
          *(v1 + 2688) = v306[12];
          *(v1 + 2704) = v317;
          *(v1 + 2720) = v306[14];
          *(v1 + 2736) = *(v306 + 240);
          v318 = v306[9];
          *(v1 + 2624) = v306[8];
          *(v1 + 2640) = v318;
          v319 = v306[11];
          *(v1 + 2656) = v306[10];
          *(v1 + 2672) = v319;
          v320 = v306[5];
          *(v1 + 2560) = v306[4];
          *(v1 + 2576) = v320;
          v321 = v306[7];
          *(v1 + 2592) = v306[6];
          *(v1 + 2608) = v321;
          v322 = v306[1];
          *(v1 + 2496) = *v306;
          *(v1 + 2512) = v322;
          v323 = v306[3];
          *(v1 + 2528) = v306[2];
          *(v1 + 2544) = v323;
          sub_10028DB38(v1 + 2744, v1 + 2992);
          sub_10028DBA0(v1 + 2496);

          v272 = *(v1 + 8);
LABEL_155:

          return v272();
        }
      }

      v97 = _swiftEmptyArrayStorage;
    }

LABEL_86:
    sub_10034A574(v97);
    memmove((v1 + 1472), (v337 + 216), 0x101uLL);
    if (sub_100220C40((v1 + 1472)) != 1)
    {
      if (*(v1 + 1624))
      {
        v129 = *(v1 + 1672);
        if (v129)
        {
          v130 = *(v129 + 16);
          if (v130)
          {
            *&v372 = _swiftEmptyArrayStorage;

            sub_10031118C(0, v130, 0);
            v126 = _swiftEmptyArrayStorage;
            v131 = v129 + 64;
            v132 = _HashTable.startBucket.getter();
            v133 = 0;
            v340 = v129 + 72;
            v342 = v130;
            v350 = v129 + 64;
            v344 = v129;
            while ((v132 & 0x8000000000000000) == 0 && v132 < 1 << *(v129 + 32))
            {
              v135 = v132 >> 6;
              if ((*(v131 + 8 * (v132 >> 6)) & (1 << v132)) == 0)
              {
                goto LABEL_173;
              }

              v352 = v133;
              v136 = *(v1 + 4552);
              v353 = *(v129 + 36);
              v137 = *(v346 + 48);
              v358 = *(v1 + 4560);
              v363 = *(v1 + 4576);
              v138 = *(v1 + 4544);
              invalidationIdc = v126;
              v139 = *(v129 + 56);
              v140 = (*(v129 + 48) + 16 * v132);
              v142 = *v140;
              v141 = v140[1];
              v143 = (type metadata accessor for Config.Cryptex.Cryptex(0) - 8);
              sub_10028E9FC(v139 + *(*v143 + 72) * v132, v136 + v137, type metadata accessor for Config.Cryptex.Cryptex);
              *v138 = v142;
              *(v347 + 8) = v141;
              v144 = v138 + *(v346 + 48);
              v126 = invalidationIdc;
              sub_10028EA64(v136 + v137, v144, type metadata accessor for Config.Cryptex.Cryptex);
              v145 = v144 + v143[12];
              v146 = sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
              (*v345)(v363, v145 + *(v146 + 44), v358);

              sub_100013F2C(v138, &qword_1004ABB80, &unk_100404690);
              *&v372 = invalidationIdc;
              v148 = invalidationIdc[2];
              v147 = invalidationIdc[3];
              if (v148 >= v147 >> 1)
              {
                sub_10031118C((v147 > 1), v148 + 1, 1);
                v126 = v372;
              }

              v1 = v370;
              v149 = *(v370 + 4576);
              v150 = *(v370 + 4560);
              v126[2] = v148 + 1;
              (*(v348 + 32))(v126 + ((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * v148, v149, v150);
              v129 = v344;
              v134 = 1 << *(v344 + 32);
              v131 = v350;
              if (v132 >= v134)
              {
                goto LABEL_174;
              }

              v151 = *(v350 + 8 * v135);
              if ((v151 & (1 << v132)) == 0)
              {
                goto LABEL_175;
              }

              if (v353 != *(v344 + 36))
              {
                goto LABEL_176;
              }

              v152 = v151 & (-2 << (v132 & 0x3F));
              if (v152)
              {
                v134 = __clz(__rbit64(v152)) | v132 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v153 = v135 << 6;
                v154 = (v340 + 8 * v135);
                v155 = v135 + 1;
                while (v155 < (v134 + 63) >> 6)
                {
                  v157 = *v154++;
                  v156 = v157;
                  v153 += 64;
                  ++v155;
                  if (v157)
                  {
                    sub_100220ACC(v132, v353, 0);
                    v134 = __clz(__rbit64(v156)) + v153;
                    goto LABEL_95;
                  }
                }

                sub_100220ACC(v132, v353, 0);
              }

LABEL_95:
              v133 = v352 + 1;
              v132 = v134;
              if (v352 + 1 == v342)
              {

                goto LABEL_88;
              }
            }

            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:

            v278 = v327;
            goto LABEL_178;
          }
        }
      }
    }

    v126 = _swiftEmptyArrayStorage;
LABEL_88:
    v127 = *(v1 + 4608);
    sub_10034A574(v126);
    v128 = *(v337 + 8 + *(v330 + 40));

    sub_1001F6788(v127, type metadata accessor for Config);
    v12 = v336;
    if (v128)
    {

      v329 = 1;
    }
  }

  if (v329)
  {
    v158 = *(v1 + 3576);
    v159 = *(v1 + 3577);
    v160 = v159 == 5 ? *(v1 + 3576) : *(v1 + 3577);
    v161 = v160 > 4;
    v162 = (1 << v160) & 0x13;
    if (v161 || v162 == 0)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v248 = type metadata accessor for Logger();
      sub_1000270B4(v248, qword_1004B00F8);
      v249 = Logger.logObject.getter();
      v250 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v249, v250))
      {
        v251 = swift_slowAlloc();
        *v251 = 0;
        _os_log_impl(&_mh_execute_header, v249, v250, "Setting USRAction to userReboot because featureFlags were specified and USR was not set", v251, 2u);
      }

      v252 = *(v1 + 3568);
      v253 = *(v1 + 3578);
      *&v372 = *(v1 + 3560);
      *(&v372 + 1) = v252;
      LOBYTE(v373) = v158;
      BYTE1(v373) = v159;
      BYTE2(v373) = v253;
      sub_100287D7C(4, -1);
      v254 = *(&v372 + 1);
      v255 = v373;
      v256 = BYTE2(v373);
      *(v1 + 3560) = v372;
      *(v1 + 3568) = v254;
      *(v1 + 3576) = v255;
      *(v1 + 3578) = v256;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    goto LABEL_180;
  }

LABEL_120:
  v164 = type metadata accessor for Logger();
  *(v1 + 4656) = sub_1000270B4(v164, qword_1004B00F8);
  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v371 = v168;
    *v167 = 136315138;
    swift_beginAccess();
    v169 = v327[12];
    v170 = v327[13];
    v171 = v327[11];
    *(v324 + 192) = v169;
    *(v324 + 208) = v170;
    v172 = v327[13];
    *(v324 + 224) = v327[14];
    v174 = v327[8];
    v173 = v327[9];
    v175 = v327[7];
    *(v324 + 128) = v174;
    *(v324 + 144) = v173;
    v176 = v327[9];
    v178 = v327[10];
    v177 = v327[11];
    *(v324 + 160) = v178;
    *(v324 + 176) = v177;
    v180 = v327[4];
    v179 = v327[5];
    v181 = v327[3];
    *(v324 + 64) = v180;
    *(v324 + 80) = v179;
    v182 = v327[5];
    v184 = v327[6];
    v183 = v327[7];
    *(v324 + 96) = v184;
    *(v324 + 112) = v183;
    v185 = v327[1];
    *v324 = *v327;
    *(v324 + 16) = v185;
    v186 = v327[3];
    v188 = *v327;
    v187 = v327[1];
    v189 = v327[2];
    *(v324 + 32) = v189;
    *(v324 + 48) = v186;
    v384 = v169;
    v385 = v172;
    v386 = v327[14];
    v380 = v174;
    v381 = v176;
    v382 = v178;
    v383 = v171;
    v376 = v180;
    v377 = v182;
    v378 = v184;
    v379 = v175;
    v372 = v188;
    v373 = v187;
    *(v324 + 240) = *(v327 + 240);
    v387 = *(v327 + 240);
    v374 = v189;
    v375 = v181;
    sub_10028DB38(v324, v1 + 3984);
    v190 = Globals.description.getter();
    v192 = v191;
    v193 = v385;
    *(v325 + 192) = v384;
    *(v325 + 208) = v193;
    *(v325 + 224) = v386;
    *(v325 + 240) = v387;
    v194 = v381;
    *(v325 + 128) = v380;
    *(v325 + 144) = v194;
    v195 = v383;
    *(v325 + 160) = v382;
    *(v325 + 176) = v195;
    v196 = v377;
    *(v325 + 64) = v376;
    *(v325 + 80) = v196;
    v197 = v379;
    *(v325 + 96) = v378;
    *(v325 + 112) = v197;
    v198 = v373;
    *v325 = v372;
    *(v325 + 16) = v198;
    v199 = v375;
    *(v325 + 32) = v374;
    *(v325 + 48) = v199;
    sub_10028DBA0(v325);
    v200 = sub_1000026C0(v190, v192, &v371);

    *(v167 + 4) = v200;
    _os_log_impl(&_mh_execute_header, v165, v166, "Globals: %s", v167, 0xCu);
    sub_100003C3C(v168);
  }

  swift_beginAccess();
  v201 = *(v1 + 3616);
  v202 = *(v1 + 3624);
  v203 = v201;
  v204 = v202;
  if (v202 == 1)
  {
    v204 = *(v1 + 3608);
    v203 = *(v1 + 3600);
  }

  invalidationIda = v203;
  sub_1001D6F74(v201, v202);
  v205 = Logger.logObject.getter();
  v206 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v205, v206))
  {
    v207 = swift_slowAlloc();
    *v207 = 0;
    _os_log_impl(&_mh_execute_header, v205, v206, "Verifying that cryptex cache only contains contents accessible to current workload...", v207, 2u);
  }

  type metadata accessor for CryptexCacheInvalidator(0);
  v208 = swift_allocObject();
  if (qword_1004A9F08 != -1)
  {
    swift_once();
  }

  v209 = *(v1 + 4528);
  v210 = *(v1 + 4520);
  v211 = v1;
  v212 = *(v1 + 4512);
  v213 = *(v211 + 4504);
  v214 = sub_1000270B4(v213, kDarwinInitCacheRootDirectory);
  v215 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v216 = *(v212 + 16);
  v216(v208 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir, v214, v213);
  swift_beginAccess();
  v217 = v208 + v215;
  v218 = v216;
  v216(v210, v217, v213);
  FilePath.appending(_:)();
  (*(v212 + 32))(v208 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_invalidationIdPath, v209, v213);
  if (qword_1004A9DE8 != -1)
  {
    swift_once();
  }

  v219 = *(v211 + 4504);
  v220 = sub_1000270B4(v219, static Cache<>.defaultCacheDirectoryPath);
  v216(v208 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v220, v219);
  v221.value._countAndFlagsBits = invalidationIda;
  v221.value._object = v204;
  CryptexCacheInvalidator.verify(invalidationId:)(v221);

  v1 = v211;
  if (v222)
  {
    *&v372 = 0;
    *(&v372 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(96);
    v223 = *(&v372 + 1);
    *(v211 + 4344) = v372;
    *(v211 + 4352) = v223;
    v224._countAndFlagsBits = 0xD00000000000005ELL;
    v224._object = 0x8000000100440470;
    String.append(_:)(v224);
    *(v211 + 4432) = v222;
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v226 = Logger.logObject.getter();
  v227 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v226, v227))
  {
    v228 = swift_slowAlloc();
    *v228 = 0;
    _os_log_impl(&_mh_execute_header, v226, v227, "Successfully enforced that cryptex cache only contains contents accessible to current workload", v228, 2u);
  }

  v229 = *(v211 + 3528);
  if (*(v211 + 3529) != 2)
  {
    v229 = *(v211 + 3529);
  }

  if (v229)
  {

    goto LABEL_164;
  }

  type metadata accessor for CryptexCacheDelegate();
  v239 = swift_allocObject();
  *(v211 + 4664) = v239;
  v240 = Logger.logObject.getter();
  v241 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v240, v241))
  {
    v242 = swift_slowAlloc();
    *v242 = 0;
    _os_log_impl(&_mh_execute_header, v240, v241, "Purge cache entries from previous workload", v242, 2u);
  }

  v243 = *(v211 + 4528);
  v244 = *(v211 + 4504);

  v218(v243, v220, v244);
  sub_1000039E8(&qword_1004AEA00, &qword_100402ED8);
  swift_allocObject();

  v245 = sub_1002A6784(v243, v239, 0);
  *(v211 + 4672) = v245;
  if (!v245)
  {
    goto LABEL_163;
  }

  v246 = *(v211 + 4408);
  *(v211 + 4680) = v246;
  invalidationIdb = (*(*v245 + 192) + **(*v245 + 192));
  v247 = swift_task_alloc();
  *(v211 + 4688) = v247;
  *v247 = v211;
  v247[1] = sub_1002871EC;

  return invalidationIdb(v246);
}

uint64_t sub_1002871EC()
{
  *(*v1 + 4696) = v0;

  if (v0)
  {
    v2 = sub_1002877B8;
  }

  else
  {

    v2 = sub_100287308;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100287308()
{
  v62 = v0;
  v1 = (v0 + 3488);

  v2 = *(v0 + 4696);
  v3 = *(v0 + 4496);
  v4 = *(v0 + 4488);
  v5 = *(v0 + 4480);
  v6 = *(v0 + 4472);
  v7 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  (*(v4 + 16))(v3, v6 + v7, v5);
  Flag.wrappedValue.getter();
  (*(v4 + 8))(v3, v5);
  if (*(v0 + 1733) == 1)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Committing secure config parameters", v10, 2u);
    }

    v14 = *(v0 + 3720);
    v15 = v14;
    if ((~v14 & 0xF000000000000007) == 0)
    {
      v15 = *(v0 + 3712);
    }

    v61 = v15;
    v16 = *(v0 + 3672);
    v17 = *(v0 + 3680);
    v18 = v16;
    v19 = v17;
    if (v17 == 1)
    {
      v19 = *(v0 + 3664);
      v18 = *(v0 + 3656);
    }

    v20 = *(v0 + 4464);
    sub_1001C8518(v14, v11, v12, v13);
    sub_1001D6F74(v16, v17);
    sub_1001FA65C(&v61, v18, v19, v20);
    if (v2)
    {

      v21 = *(v0 + 3696);
      *(v0 + 3432) = *(v0 + 3680);
      *(v0 + 3448) = v21;
      *(v0 + 3464) = *(v0 + 3712);
      *(v0 + 3480) = *(v0 + 3728);
      v22 = *(v0 + 3632);
      *(v0 + 3368) = *(v0 + 3616);
      *(v0 + 3384) = v22;
      v23 = *(v0 + 3664);
      *(v0 + 3400) = *(v0 + 3648);
      *(v0 + 3416) = v23;
      v24 = *(v0 + 3568);
      *(v0 + 3304) = *(v0 + 3552);
      *(v0 + 3320) = v24;
      v25 = *(v0 + 3600);
      *(v0 + 3336) = *(v0 + 3584);
      *(v0 + 3352) = v25;
      v26 = *(v0 + 3504);
      *(v0 + 3240) = *v1;
      *(v0 + 3256) = v26;
      v27 = *(v0 + 3536);
      *(v0 + 3272) = *(v0 + 3520);
      *(v0 + 3288) = v27;
      sub_10028DBA0(v0 + 3240);

      v28 = *(v0 + 8);
      goto LABEL_12;
    }
  }

  v29 = *(v0 + 3696);
  v30 = *(v0 + 3712);
  v31 = *(v0 + 3664);
  *(v0 + 2936) = *(v0 + 3680);
  *(v0 + 2952) = v29;
  *(v0 + 2968) = v30;
  v32 = *(v0 + 3632);
  v33 = *(v0 + 3648);
  v34 = *(v0 + 3600);
  *(v0 + 2872) = *(v0 + 3616);
  *(v0 + 2888) = v32;
  *(v0 + 2904) = v33;
  *(v0 + 2920) = v31;
  v35 = *(v0 + 3568);
  v36 = *(v0 + 3584);
  v37 = *(v0 + 3536);
  *(v0 + 2808) = *(v0 + 3552);
  *(v0 + 2824) = v35;
  *(v0 + 2840) = v36;
  *(v0 + 2856) = v34;
  v38 = *(v0 + 3504);
  *(v0 + 2744) = *v1;
  *(v0 + 2760) = v38;
  v39 = *(v0 + 3536);
  v41 = *v1;
  v40 = *(v0 + 3504);
  v42 = *(v0 + 3520);
  *(v0 + 2776) = v42;
  *(v0 + 2792) = v39;
  v43 = *(v0 + 4448);
  *(v0 + 2984) = *(v0 + 3728);
  *(v43 + 32) = v42;
  *(v43 + 48) = v37;
  *v43 = v41;
  *(v43 + 16) = v40;
  v44 = *(v0 + 3552);
  v45 = *(v0 + 3568);
  v46 = *(v0 + 3600);
  *(v43 + 96) = *(v0 + 3584);
  *(v43 + 112) = v46;
  *(v43 + 64) = v44;
  *(v43 + 80) = v45;
  v47 = *(v0 + 3616);
  v48 = *(v0 + 3632);
  v49 = *(v0 + 3664);
  *(v43 + 160) = *(v0 + 3648);
  *(v43 + 176) = v49;
  *(v43 + 128) = v47;
  *(v43 + 144) = v48;
  v50 = *(v0 + 3680);
  v51 = *(v0 + 3696);
  v52 = *(v0 + 3712);
  *(v43 + 240) = *(v0 + 3728);
  *(v43 + 208) = v51;
  *(v43 + 224) = v52;
  *(v43 + 192) = v50;
  v53 = *(v0 + 3696);
  *(v0 + 2688) = *(v0 + 3680);
  *(v0 + 2704) = v53;
  *(v0 + 2720) = *(v0 + 3712);
  *(v0 + 2736) = *(v0 + 3728);
  v54 = *(v0 + 3632);
  *(v0 + 2624) = *(v0 + 3616);
  *(v0 + 2640) = v54;
  v55 = *(v0 + 3664);
  *(v0 + 2656) = *(v0 + 3648);
  *(v0 + 2672) = v55;
  v56 = *(v0 + 3568);
  *(v0 + 2560) = *(v0 + 3552);
  *(v0 + 2576) = v56;
  v57 = *(v0 + 3600);
  *(v0 + 2592) = *(v0 + 3584);
  *(v0 + 2608) = v57;
  v58 = *(v0 + 3504);
  *(v0 + 2496) = *v1;
  *(v0 + 2512) = v58;
  v59 = *(v0 + 3536);
  *(v0 + 2528) = *(v0 + 3520);
  *(v0 + 2544) = v59;
  sub_10028DB38(v0 + 2744, v0 + 2992);
  sub_10028DBA0(v0 + 2496);

  v28 = *(v0 + 8);
LABEL_12:

  return v28();
}

uint64_t sub_1002877B8()
{
  v59 = v0;

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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to purge cache entries from previous workload: %@", v3, 0xCu);
    sub_100013F2C(v4, &qword_1004AA050, &unk_1003F2F10);
  }

  else
  {
  }

  v6 = (v0 + 3488);
  v7 = *(v0 + 4496);
  v8 = *(v0 + 4488);
  v9 = *(v0 + 4480);
  v10 = *(v0 + 4472);
  v11 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  (*(v8 + 16))(v7, v10 + v11, v9);
  Flag.wrappedValue.getter();
  (*(v8 + 8))(v7, v9);
  if (*(v0 + 1733) == 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Committing secure config parameters", v14, 2u);
    }

    v18 = *(v0 + 3720);
    v19 = v18;
    if ((~v18 & 0xF000000000000007) == 0)
    {
      v19 = *(v0 + 3712);
    }

    v58 = v19;
    v20 = *(v0 + 3672);
    v21 = *(v0 + 3680);
    v22 = v20;
    v23 = v21;
    if (v21 == 1)
    {
      v23 = *(v0 + 3664);
      v22 = *(v0 + 3656);
    }

    v24 = *(v0 + 4464);
    sub_1001C8518(v18, v15, v16, v17);
    sub_1001D6F74(v20, v21);
    sub_1001FA65C(&v58, v22, v23, v24);
  }

  v25 = *(v0 + 3696);
  v26 = *(v0 + 3712);
  v27 = *(v0 + 3664);
  *(v0 + 2936) = *(v0 + 3680);
  *(v0 + 2952) = v25;
  *(v0 + 2968) = v26;
  v28 = *(v0 + 3632);
  v29 = *(v0 + 3648);
  v30 = *(v0 + 3600);
  *(v0 + 2872) = *(v0 + 3616);
  *(v0 + 2888) = v28;
  *(v0 + 2904) = v29;
  *(v0 + 2920) = v27;
  v31 = *(v0 + 3568);
  v32 = *(v0 + 3584);
  v33 = *(v0 + 3536);
  *(v0 + 2808) = *(v0 + 3552);
  *(v0 + 2824) = v31;
  *(v0 + 2840) = v32;
  *(v0 + 2856) = v30;
  v34 = *(v0 + 3504);
  *(v0 + 2744) = *v6;
  *(v0 + 2760) = v34;
  v35 = *(v0 + 3536);
  v37 = *v6;
  v36 = *(v0 + 3504);
  v38 = *(v0 + 3520);
  *(v0 + 2776) = v38;
  *(v0 + 2792) = v35;
  v39 = *(v0 + 4448);
  *(v0 + 2984) = *(v0 + 3728);
  *(v39 + 32) = v38;
  *(v39 + 48) = v33;
  *v39 = v37;
  *(v39 + 16) = v36;
  v40 = *(v0 + 3552);
  v41 = *(v0 + 3568);
  v42 = *(v0 + 3600);
  *(v39 + 96) = *(v0 + 3584);
  *(v39 + 112) = v42;
  *(v39 + 64) = v40;
  *(v39 + 80) = v41;
  v43 = *(v0 + 3616);
  v44 = *(v0 + 3632);
  v45 = *(v0 + 3664);
  *(v39 + 160) = *(v0 + 3648);
  *(v39 + 176) = v45;
  *(v39 + 128) = v43;
  *(v39 + 144) = v44;
  v46 = *(v0 + 3680);
  v47 = *(v0 + 3696);
  v48 = *(v0 + 3712);
  *(v39 + 240) = *(v0 + 3728);
  *(v39 + 208) = v47;
  *(v39 + 224) = v48;
  *(v39 + 192) = v46;
  v49 = *(v0 + 3696);
  *(v0 + 2688) = *(v0 + 3680);
  *(v0 + 2704) = v49;
  *(v0 + 2720) = *(v0 + 3712);
  *(v0 + 2736) = *(v0 + 3728);
  v50 = *(v0 + 3632);
  *(v0 + 2624) = *(v0 + 3616);
  *(v0 + 2640) = v50;
  v51 = *(v0 + 3664);
  *(v0 + 2656) = *(v0 + 3648);
  *(v0 + 2672) = v51;
  v52 = *(v0 + 3568);
  *(v0 + 2560) = *(v0 + 3552);
  *(v0 + 2576) = v52;
  v53 = *(v0 + 3600);
  *(v0 + 2592) = *(v0 + 3584);
  *(v0 + 2608) = v53;
  v54 = *(v0 + 3504);
  *(v0 + 2496) = *v6;
  *(v0 + 2512) = v54;
  v55 = *(v0 + 3536);
  *(v0 + 2528) = *(v0 + 3520);
  *(v0 + 2544) = v55;
  sub_10028DB38(v0 + 2744, v0 + 2992);
  sub_10028DBA0(v0 + 2496);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_100287D7C(uint64_t result, uint64_t a2)
{
  if (result != 5 && *(v2 + 18) == 1)
  {
    v3 = 7169394;
    v4 = *(v2 + 17);
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      else
      {
        if (v4 != 4)
        {
          *v2 = a2;
          *(v2 + 17) = result;
          return result;
        }

        v8 = 0xE700000000000000;
        v7 = 0x746C7561666564;
      }
    }

    else
    {
      v5 = 0x7665642D6D6572;
      v6 = 0xE400000000000000;
      if (v4 == 1)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v5 = 1701736302;
      }

      if (*(v2 + 17))
      {
        v7 = v5;
      }

      else
      {
        v7 = 7169394;
      }

      if (*(v2 + 17))
      {
        v8 = v6;
      }

      else
      {
        v8 = 0xE300000000000000;
      }
    }

    if (result <= 1u)
    {
      if (result)
      {
        v9 = 0xE700000000000000;
        v3 = 0x7665642D6D6572;
      }

      else
      {
        v9 = 0xE300000000000000;
      }
    }

    else if (result == 2)
    {
      v9 = 0xE400000000000000;
      v3 = 1701736302;
    }

    else if (result == 3)
    {
      v3 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
      v3 = 0x746C7561666564;
    }

    if (v7 == v3 && v8 == v9)
    {
    }

    else
    {
      v10 = result;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v14 = *v2;
        v13 = v2[1];
        sub_1000039E8(&qword_1004AEBB0, &qword_1004031D0);
        sub_10000E720(&qword_1004AEBB8, &qword_1004AEBB0, &qword_1004031D0, &protocol conformance descriptor for Global<A, B>.Conflict);
        swift_allocError();
        *v15 = v14;
        *(v15 + 8) = v4;
        *(v15 + 16) = a2;
        *(v15 + 24) = v10;
        *(v15 + 32) = v13;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_100287FB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    v18 = result;
    if (*(v4 + 32) == 1)
    {
      v5 = v4[3];
      if ((~v5 & 0xF000000000000007) != 0)
      {
        v17 = v4[3];
        sub_1001C8518(result, a2, a3, a4);
        sub_1001C8518(v5, v8, v9, v10);
        if ((_s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v17, &v18, v11) & 1) == 0)
        {
          v12 = v17;
          v13 = v18;
          v15 = *v4;
          v14 = v4[1];
          sub_1000039E8(&qword_1004AEBA0, &qword_1004031C8);
          sub_10000E720(&qword_1004AEBA8, &qword_1004AEBA0, &qword_1004031C8, &protocol conformance descriptor for Global<A, B>.Conflict);
          swift_allocError();
          *v16 = v15;
          v16[1] = v12;
          v16[2] = a2;
          v16[3] = v13;
          v16[4] = v14;
          swift_willThrow();
        }
      }

      else
      {
        *v4 = a2;
        v6 = result;

        result = sub_1001C855C(v5);
        v4[3] = v6;
      }
    }
  }

  return result;
}

uint64_t sub_10028813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 257) = a8;
  *(v8 + 544) = a7;
  *(v8 + 536) = a6;
  *(v8 + 528) = a5;
  *(v8 + 520) = a4;
  *(v8 + 504) = a2;
  *(v8 + 512) = a3;
  *(v8 + 496) = a1;
  v9 = type metadata accessor for ErrorReport(0);
  *(v8 + 552) = v9;
  *(v8 + 560) = *(v9 - 8);
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  v10 = type metadata accessor for Config(0);
  *(v8 + 584) = v10;
  *(v8 + 592) = *(v10 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_100288294, 0, 0);
}

uint64_t sub_100288294()
{
  v1 = *(v0 + 544);
  type metadata accessor for ErrorReporter();
  v2 = swift_allocObject();
  *(v0 + 624) = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  *(v0 + 256) = *(v1 + 240);
  *(v0 + 224) = v4;
  *(v0 + 240) = v5;
  *(v0 + 208) = v3;
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[11];
  *(v0 + 176) = v1[10];
  *(v0 + 192) = v8;
  *(v0 + 144) = v6;
  *(v0 + 160) = v7;
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[7];
  *(v0 + 112) = v1[6];
  *(v0 + 128) = v11;
  *(v0 + 80) = v9;
  *(v0 + 96) = v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[3];
  *(v0 + 48) = v1[2];
  *(v0 + 64) = v14;
  *(v0 + 16) = v12;
  *(v0 + 32) = v13;

  v15 = swift_task_alloc();
  *(v0 + 632) = v15;
  *v15 = v0;
  v15[1] = sub_1002883D8;
  v16 = *(v0 + 608);
  v17 = *(v0 + 536);
  v18 = *(v0 + 528);

  return Apply.apply@Sendable (_:on:env:reporter:)(v16, v18, v17, v0 + 16, v2);
}

uint64_t sub_1002883D8()
{
  *(*v1 + 640) = v0;

  if (v0)
  {

    v2 = sub_100289054;
  }

  else
  {
    v2 = sub_1002884FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002884FC()
{
  v100 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 600);
  sub_10028EA64(*(v0 + 608), v1, type metadata accessor for Config);
  sub_10028E9FC(v1, v2, type metadata accessor for Config);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 504);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10018CF3C(0, v4[2] + 1, 1, *(v0 + 504));
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_10018CF3C((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  v10 = *(v0 + 528);
  v4[2] = v6 + 1;
  sub_10028EA64(v7, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, type metadata accessor for Config);
  v11 = (v10 + *(v9 + 104));
  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_8;
  }

  v13 = v11[1];

  if (Array<A>.version.getter(v14) == 2)
  {
    sub_1001D6FE0(v12, v13);
LABEL_8:
    v15 = *(v0 + 624);
    v16 = *(v0 + 576);
    v17 = *(v0 + 552);
    sub_10028E9FC(*(v0 + 528), v16, type metadata accessor for Config);
    swift_beginAccess();
    *(v16 + *(v17 + 20)) = *(v15 + 16);
    *(v16 + *(v17 + 24)) = 0xF000000000000007;

    goto LABEL_10;
  }

  v18 = *(v0 + 624);
  v19 = *(v0 + 576);
  v20 = *(v0 + 552);
  sub_10028E9FC(*(v0 + 528), v19, type metadata accessor for Config);
  swift_beginAccess();
  v21 = *(v18 + 16);

  sub_1001D6FE0(v12, v13);
  *(v19 + *(v20 + 20)) = v21;
  *(v19 + *(v20 + 24)) = v13;
LABEL_10:
  sub_10028E9FC(*(v0 + 576), *(v0 + 568), type metadata accessor for ErrorReport);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v0 + 512);
  if ((v22 & 1) == 0)
  {
    v23 = sub_10018D378(0, v23[2] + 1, 1, *(v0 + 512));
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_10018D378((v24 > 1), v25 + 1, 1, v23);
  }

  v26 = *(v0 + 616);
  v27 = *(v0 + 568);
  v28 = *(v0 + 560);
  v29 = *(v0 + 528);
  v23[2] = v25 + 1;
  sub_10028EA64(v27, v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for ErrorReport);
  v30 = _s10DarwinInit6ConfigV2eeoiySbAC_ACtFZ_0(v26, v29);
  v31 = *(v0 + 640);
  if (v30)
  {
LABEL_23:
    if (*(v0 + 257) != 1)
    {
      v56 = *(v0 + 616);
      v57 = *(v0 + 576);

      sub_1001F6788(v57, type metadata accessor for ErrorReport);
      sub_1001F6788(v56, type metadata accessor for Config);
LABEL_32:
      v58 = *(v0 + 496);
      *v58 = v4;
      v58[1] = v23;

      v59 = *(v0 + 8);
      goto LABEL_52;
    }

    v42 = *v11;
    if (*v11)
    {
      v43 = v11[1];

      if (Array<A>.version.getter(v44) != 2)
      {
        v98 = v42;
        v99 = v43;
        if (v30 & ConfigOrigin.isSimple.getter())
        {
          v45 = (v0 + 384);
          v46 = *(v0 + 536);
          v47 = v46[3];
          v48 = v46[4];
          sub_10000E2A8(v46, v47);
          (*(v48 + 312))(v47, v48);
          v49 = *(v0 + 408);
          log = *(v0 + 416);
          sub_10000E2A8((v0 + 384), v49);
          *(v0 + 488) = v43;
          v50 = qword_1004A9E90;

          if (v50 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for FilePath();
          v52 = sub_1000270B4(v51, kDInitDoneFilepath);
          v53 = sub_1001B54D4();
          sub_1002FA684(v0 + 488, v52, v49, &type metadata for JSON, log, v53);
          if (v31)
          {
            v54 = *(v0 + 616);
            v55 = *(v0 + 576);
            sub_1001D6FE0(v42, v43);

LABEL_38:

            sub_1001F6788(v55, type metadata accessor for ErrorReport);
            v68 = v54;
LABEL_44:
            sub_1001F6788(v68, type metadata accessor for Config);

            sub_100003C3C(v45);
            goto LABEL_51;
          }

          sub_1001D6FE0(v42, v43);

          goto LABEL_48;
        }
      }

      v98 = v42;
      v99 = v43;
      if (ConfigOrigin.isSimple.getter())
      {
        v45 = (v0 + 344);
        v60 = *(v0 + 536);
        v61 = v60[3];
        v62 = v60[4];
        sub_10000E2A8(v60, v61);
        (*(v62 + 312))(v61, v62);
        v63 = *(v0 + 368);
        loga = *(v0 + 376);
        sub_10000E2A8((v0 + 344), v63);
        if (qword_1004A9E90 != -1)
        {
          swift_once();
        }

        v64 = *(v0 + 616);
        v94 = *(v0 + 584);
        v65 = type metadata accessor for FilePath();
        v66 = sub_1000270B4(v65, kDInitDoneFilepath);
        v67 = sub_10028EB80(&qword_1004AC740, type metadata accessor for Config, &protocol conformance descriptor for Config);
        sub_1002FA684(v64, v66, v63, v94, loga, v67);
        if (v31)
        {
          v54 = *(v0 + 616);
          v55 = *(v0 + 576);
          sub_1001D6FE0(v42, v43);
          goto LABEL_38;
        }

        sub_1001D6FE0(v42, v43);
        goto LABEL_48;
      }

      sub_1001D6FE0(v42, v43);
    }

    v45 = (v0 + 264);
    v69 = *(v0 + 536);
    v70 = v69[3];
    v71 = v69[4];
    sub_10000E2A8(v69, v70);
    (*(v71 + 312))(v70, v71);
    v72 = *(v0 + 288);
    v73 = *(v0 + 296);
    sub_10000E2A8((v0 + 264), v72);
    *(v0 + 472) = v4;
    v74 = qword_1004A9E90;

    if (v74 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for FilePath();
    v76 = sub_1000270B4(v75, kDInitDoneFilepath);
    v77 = sub_1000039E8(&qword_1004AC730, &qword_1003F93E0);
    v78 = sub_1001EF784();
    sub_1002FA684(v0 + 472, v76, v72, v77, v73, v78);
    if (v31)
    {
      v79 = *(v0 + 616);
      v80 = *(v0 + 576);

      sub_1001F6788(v80, type metadata accessor for ErrorReport);
      v68 = v79;
      goto LABEL_44;
    }

LABEL_48:
    sub_100003C3C(v45);
    v81 = *(v0 + 536);
    v82 = v81[3];
    v83 = v81[4];
    sub_10000E2A8(v81, v82);
    (*(v83 + 312))(v82, v83);
    v84 = *(v0 + 328);
    v85 = *(v0 + 336);
    sub_10000E2A8((v0 + 304), v84);
    *(v0 + 480) = v23;
    v86 = qword_1004A9EB0;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for FilePath();
    v88 = sub_1000270B4(v87, kDInitErrorReportFilepath);
    v89 = sub_1000039E8(&qword_1004AEBE0, &unk_100403220);
    v90 = sub_10028EACC();
    sub_1002FA684(v0 + 480, v88, v84, v89, v85, v90);
    v91 = *(v0 + 616);
    v92 = *(v0 + 576);

    sub_1001F6788(v92, type metadata accessor for ErrorReport);
    sub_1001F6788(v91, type metadata accessor for Config);
    sub_100003C3C((v0 + 304));
    goto LABEL_32;
  }

  v32 = ErrorReport.jsonString(prettyPrinted:redacted:)(1, 1);
  if (!v33)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000270B4(v36, qword_1004B00F8);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      logb = v37;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v98 = v40;
      *v39 = 136315138;
      v41 = sub_1000026C0(v32._countAndFlagsBits, v32._object, &v98);

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, logb, v38, "Failed to fully apply config. Error report below:\n%s\n", v39, 0xCu);
      sub_100003C3C(v40);
    }

    else
    {
    }

    v31 = 0;
    goto LABEL_23;
  }

  v34 = *(v0 + 616);
  v35 = *(v0 + 576);

  sub_1001F6788(v35, type metadata accessor for ErrorReport);
  sub_1001F6788(v34, type metadata accessor for Config);

LABEL_51:

  v59 = *(v0 + 8);
LABEL_52:

  return v59();
}

uint64_t sub_100289054()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Apply.apply@Sendable (_:on:env:reporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 3568) = v5;
  *(v6 + 3560) = a5;
  *(v6 + 3552) = a3;
  *(v6 + 3544) = a2;
  *(v6 + 3536) = a1;
  v8 = type metadata accessor for Config(0);
  *(v6 + 3576) = v8;
  *(v6 + 3584) = *(v8 - 8);
  *(v6 + 3592) = swift_task_alloc();
  *(v6 + 3600) = swift_task_alloc();
  v9 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  *(v6 + 3608) = v9;
  *(v6 + 3616) = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *(a4 + 208);
  *(v6 + 3120) = *(a4 + 192);
  *(v6 + 3136) = v11;
  *(v6 + 3152) = *(a4 + 224);
  v12 = *(a4 + 144);
  *(v6 + 3056) = *(a4 + 128);
  *(v6 + 3072) = v12;
  v13 = *(a4 + 176);
  *(v6 + 3088) = *(a4 + 160);
  *(v6 + 3104) = v13;
  v14 = *(a4 + 80);
  *(v6 + 2992) = *(a4 + 64);
  *(v6 + 3008) = v14;
  v15 = *(a4 + 112);
  *(v6 + 3024) = *(a4 + 96);
  *(v6 + 3040) = v15;
  v16 = *(a4 + 16);
  *(v6 + 2928) = *a4;
  *(v6 + 2944) = v16;
  v17 = *(a4 + 48);
  *(v6 + 2960) = *(a4 + 32);
  *(v6 + 3624) = v10;
  *(v6 + 3168) = *(a4 + 240);
  *(v6 + 2976) = v17;

  return _swift_task_switch(sub_1002892AC, 0, 0);
}

uint64_t sub_1002892AC()
{
  v64 = v0;
  v1 = *(v0 + 3624);
  v2 = *(v0 + 3616);
  v3 = *(v0 + 3608);
  v4 = *(v0 + 3568);
  v5 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  *(v0 + 3632) = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  v6 = *(v2 + 16);
  *(v0 + 3640) = v6;
  *(v0 + 3648) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  Flag.wrappedValue.getter();
  v7 = *(v2 + 8);
  *(v0 + 3656) = v7;
  *(v0 + 3664) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (*(v0 + 3169) == 1)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000270B4(v8, qword_1004B00F8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Committing configuration.", v11, 2u);
    }

    v12 = *(v0 + 3552);
    v13 = *(v0 + 3544);

    sub_1001FA0F8(v13, v12);
  }

  v14 = *(v0 + 3544) + *(*(v0 + 3576) + 44);
  v15 = *(v14 + 40);
  if (*(v14 + 8))
  {
    v16 = v15 == 3;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000270B4(v17, qword_1004B00F8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      __dst[0] = v21;
      *v20 = 136315138;
      if (v15)
      {
        if (v15 == 1)
        {
          v22 = 0xE800000000000000;
          v23 = 0x6E776F6474756873;
        }

        else
        {
          v22 = 0xE400000000000000;
          v23 = 1953069157;
        }
      }

      else
      {
        v22 = 0xE600000000000000;
        v23 = 0x746F6F626572;
      }

      v24 = sub_1000026C0(v23, v22, __dst);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Setting failureAction to %s", v20, 0xCu);
      sub_100003C3C(v21);
    }

    *(v0 + 3173) = v15;
    swift_beginAccess();
    sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
    Option.wrappedValue.setter();
    swift_endAccess();
  }

  v25 = Config.jsonString(prettyPrinted:redacted:origin:)(1, 1, 0);
  *(v0 + 3672) = v25._object;
  if (v26)
  {

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v27 = *(v0 + 3584);
    v28 = *(v0 + 3544);
    sub_1000039E8(&qword_1004AA9C8, &qword_1003F4098);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100376A40;
    sub_10028E9FC(v28, v30 + v29, type metadata accessor for Config);
    static Validate.preflight(configs:)(v30, (v0 + 16));
    swift_setDeallocating();
    sub_1001F6788(v30 + v29, type metadata accessor for Config);
    swift_deallocClassInstance();
    memcpy((v0 + 1472), (v0 + 16), 0x2D8uLL);
    memcpy((v0 + 744), (v0 + 16), 0x2D8uLL);
    if (sub_1001D8458(v0 + 744) != 1)
    {
      v33 = *(v0 + 1376);
      if (v33)
      {
        v34 = *(v0 + 1368);
        sub_100013E54(v0 + 1472, v0 + 2200, &qword_1004AE9F8, &qword_100402ED0);
        v35 = qword_1004A9F20;

        if (v35 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000270B4(v36, qword_1004B00F8);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          __dst[0] = swift_slowAlloc();
          *v39 = 136315394;
          *(v39 + 4) = sub_1000026C0(v34, v33, __dst);
          *(v39 + 12) = 2080;

          v40 = sub_1000026C0(v25._countAndFlagsBits, v25._object, __dst);

          *(v39 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v37, v38, "Validating config under %s policy: %s", v39, 0x16u);
          swift_arrayDestroy();
        }

        memcpy(__dst, (v0 + 744), 0x2D8uLL);
        sub_10028CF60(v34, v33, __dst);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          __dst[0] = v44;
          *v43 = 136315138;
          v45 = sub_1000026C0(v34, v33, __dst);

          *(v43 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v41, v42, "darwin-init config is valid with respect to %s policy.", v43, 0xCu);
          sub_100003C3C(v44);

          sub_100013F2C(v0 + 1472, &qword_1004AE9F8, &qword_100402ED0);
        }

        else
        {

          sub_100013F2C(v0 + 1472, &qword_1004AE9F8, &qword_100402ED0);
        }
      }
    }

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    *(v0 + 3680) = sub_1000270B4(v46, qword_1004B00F8);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      __dst[0] = v50;
      *v49 = 136315138;

      v51 = sub_1000026C0(v25._countAndFlagsBits, v25._object, __dst);

      *(v49 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "Applying configuration: %s", v49, 0xCu);
      sub_100003C3C(v50);
    }

    v52 = *(v0 + 3136);
    *(v0 + 3368) = *(v0 + 3120);
    *(v0 + 3384) = v52;
    *(v0 + 3400) = *(v0 + 3152);
    *(v0 + 3416) = *(v0 + 3168);
    v53 = *(v0 + 3072);
    *(v0 + 3304) = *(v0 + 3056);
    *(v0 + 3320) = v53;
    v54 = *(v0 + 3104);
    *(v0 + 3336) = *(v0 + 3088);
    *(v0 + 3352) = v54;
    v55 = *(v0 + 3008);
    *(v0 + 3240) = *(v0 + 2992);
    *(v0 + 3256) = v55;
    v56 = *(v0 + 3040);
    *(v0 + 3272) = *(v0 + 3024);
    *(v0 + 3288) = v56;
    v57 = *(v0 + 2944);
    *(v0 + 3176) = *(v0 + 2928);
    *(v0 + 3192) = v57;
    v58 = *(v0 + 2976);
    *(v0 + 3208) = *(v0 + 2960);
    *(v0 + 3224) = v58;
    v59 = swift_task_alloc();
    *(v0 + 3688) = v59;
    *v59 = v0;
    v59[1] = sub_100289D74;
    v60 = *(v0 + 3592);
    v61 = *(v0 + 3560);
    v62 = *(v0 + 3552);

    return _s10DarwinInit6ConfigV5apply2on3env8reporterAcA8Computer_p_AA7GlobalsVAA13ErrorReporterCtYaAC08CriticalJ0OYKF(v60, v62, v0 + 3176, v61, v0 + 3496);
  }
}

uint64_t sub_100289D74()
{
  v2 = *v1;
  *(*v1 + 3696) = v0;

  if (v0)
  {
    v2[463] = v2[437];
    v2[464] = v2[438];
    v3 = sub_100289E98;
  }

  else
  {
    v3 = sub_10028A088;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100289E98()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[464];
    v4 = v0[463];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_10028DC48();
    swift_allocError();
    *v7 = v4;
    v7[1] = v3;

    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Critical error during apply: %@", v5, 0xCu);
    sub_100013F2C(v6, &qword_1004AA050, &unk_1003F2F10);
  }

  v9 = v0[464];
  v10 = v0[463];

  sub_10028DC48();
  swift_allocError();
  *v11 = v10;
  v11[1] = v9;
  swift_willThrow();
  sub_100013F2C((v0 + 184), &qword_1004AE9F8, &qword_100402ED0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10028A088()
{
  v34 = v0;
  v1 = *(v0 + 3656);
  v2 = *(v0 + 3640);
  v3 = *(v0 + 3632);
  v4 = *(v0 + 3624);
  v5 = *(v0 + 3608);
  v6 = *(v0 + 3568);
  sub_10028EA64(*(v0 + 3592), *(v0 + 3600), type metadata accessor for Config);
  v2(v4, v6 + v3, v5);
  Flag.wrappedValue.getter();
  v1(v4, v5);
  if (*(v0 + 3170) == 1)
  {
    v10 = *(*(v0 + 3576) + 80);
    v11 = *(*(v0 + 3544) + v10 + 8);
    v12 = *(v0 + 3600) + v10;
    v13 = *(v12 + 8);
    sub_1001C8518(v11, v7, v8, v9);
    sub_1001C855C(v13);
    *(v12 + 8) = v11;
  }

  v14 = Config.jsonString(prettyPrinted:redacted:origin:)(1, 1, 0);
  if (v15)
  {
    sub_1001F6788(*(v0 + 3600), type metadata accessor for Config);
    sub_100013F2C(v0 + 1472, &qword_1004AE9F8, &qword_100402ED0);

    v16 = *(v0 + 8);
  }

  else
  {
    swift_bridgeObjectRetain_n();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      v21 = sub_1000026C0(v14._countAndFlagsBits, v14._object, &v33);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Applied configuration: %s", v19, 0xCu);
      sub_100003C3C(v20);
    }

    else
    {
    }

    v22 = *(v0 + 3656);
    v23 = *(v0 + 3624);
    v24 = *(v0 + 3608);
    (*(v0 + 3640))(v23, *(v0 + 3568) + *(v0 + 3632), v24);
    Flag.wrappedValue.getter();
    v22(v23, v24);
    if (*(v0 + 3171) & 1) != 0 || (v25 = *(v0 + 3656), v26 = *(v0 + 3640), v27 = *(v0 + 3624), v28 = *(v0 + 3608), v29 = *(v0 + 3568), v30 = OBJC_IVAR____TtC10DarwinInit5Apply__quiet, swift_beginAccess(), v26(v27, v29 + v30, v28), Flag.wrappedValue.getter(), v25(v27, v28), (*(v0 + 3172)))
    {
      sub_100013F2C(v0 + 1472, &qword_1004AE9F8, &qword_100402ED0);
    }

    else
    {
      sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100376A40;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 32) = v14;

      print(_:separator:terminator:)();
      sub_100013F2C(v0 + 1472, &qword_1004AE9F8, &qword_100402ED0);
    }

    sub_10028EA64(*(v0 + 3600), *(v0 + 3536), type metadata accessor for Config);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_10028A4DC()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x74756F656D6974;
  v4 = 0x416572756C696166;
  if (v1 != 3)
  {
    v4 = 0x7465697571;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6574737973;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10028A578@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10028E2FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10028A5A0(uint64_t a1)
{
  v2 = sub_10028DCF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028A5DC(uint64_t a1)
{
  v2 = sub_10028DCF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Apply.deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  v2 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  v4 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  v7 = sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  v9 = sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v5(v0 + OBJC_IVAR____TtC10DarwinInit5Apply__quiet, v4);
  return v0;
}

uint64_t Apply.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  v2 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  v4 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  v7 = sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  v9 = sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v5(v0 + OBJC_IVAR____TtC10DarwinInit5Apply__quiet, v4);

  return swift_deallocClassInstance();
}

uint64_t Apply.__allocating_init()()
{
  v0 = swift_allocObject();
  Apply.init()();
  return v0;
}

uint64_t Apply.init()()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v35 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v2 - 8);
  v34 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v26 - v4;
  v6 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v13 = type metadata accessor for ArgumentHelp();
  v14 = *(v13 - 8);
  v31 = *(v14 + 56);
  v37 = v14 + 56;
  v28 = v13;
  v31(v12, 0, 1, v13);
  v15 = type metadata accessor for CompletionKind();
  v16 = *(v15 - 8);
  v29 = *(v16 + 56);
  v30 = v16 + 56;
  v27 = v15;
  v29(v8, 1, 1, v15);
  type metadata accessor for DInitConfigSource(0);
  sub_10028EB80(&qword_1004AB548, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
  v17 = v38;
  Argument.init<A>(help:completion:)();
  v18 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  v32 = v5;
  sub_10027F300(0);
  v19 = *(v39 + 32);
  v39 += 32;
  v33 = v19;
  v19(v17 + v18, v5, v36);
  v26 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  static NameSpecification.shortAndLong.getter();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v20 = v31;
  v31(v12, 0, 1, v13);
  v21 = v29;
  v29(v8, 1, 1, v15);
  static SingleValueParsingStrategy.next.getter();
  sub_10028DC9C();
  Option.init<A>(name:parsing:help:completion:)();
  v26 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  static NameSpecification.shortAndLong.getter();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v20(v12, 0, 1, v28);
  v21(v8, 1, 1, v27);
  static SingleValueParsingStrategy.next.getter();
  sub_1002205FC();
  v22 = v38;
  Option.init<A>(name:parsing:help:completion:)();
  v23 = OBJC_IVAR____TtC10DarwinInit5Apply__quiet;
  v24 = v32;
  sub_10027FE3C(0);
  v33(v22 + v23, v24, v36);
  return v22;
}

uint64_t Apply.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Apply.init(from:)(a1);
  return v2;
}

uint64_t Apply.init(from:)(void *a1)
{
  v93 = a1;
  v66 = sub_1000039E8(&qword_1004AE9B8, &qword_100404D30);
  v62 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v60 - v2;
  v69 = sub_1000039E8(&qword_1004AE9A8, &qword_100402E80);
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v60 - v3;
  v73 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v76 = &v60 - v4;
  v74 = sub_1000039E8(&qword_1004AEA38, &qword_100402EF8);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v86 = &v60 - v5;
  v6 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v6 - 8);
  v83 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  v92 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v85 = *(v95 - 8);
  v10 = __chkstk_darwin(v95);
  v61 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v70 = &v60 - v13;
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v16 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v19 - 8);
  v20 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v60 - v21;
  v23 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v90 = type metadata accessor for ArgumentHelp();
  v24 = *(v90 - 8);
  v79 = *(v24 + 56);
  v87 = v24 + 56;
  v79(v22, 0, 1, v90);
  v89 = type metadata accessor for CompletionKind();
  v25 = *(v89 - 8);
  v88 = *(v25 + 56);
  v91 = v25 + 56;
  v78 = v18;
  v88(v18, 1, 1, v89);
  type metadata accessor for DInitConfigSource(0);
  sub_10028EB80(&qword_1004AB548, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
  v71 = v23;
  Argument.init<A>(help:completion:)();
  v26 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  v80 = v15;
  sub_10027F300(0);
  v27 = *(v85 + 32);
  v81 = v85 + 32;
  v82 = v27;
  v67 = v26;
  v77 = v1;
  v27(v1 + v26, v15, v95);
  v28 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  static NameSpecification.shortAndLong.getter();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v29 = v79;
  v79(v22, 0, 1, v90);
  v30 = v78;
  v88(v78, 1, 1, v89);
  static SingleValueParsingStrategy.next.getter();
  sub_10028DC9C();
  v63 = v28;
  v31 = v30;
  Option.init<A>(name:parsing:help:completion:)();
  v32 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  static NameSpecification.shortAndLong.getter();
  static ArgumentVisibility.default.getter();
  v33 = v93;
  v34 = v77;
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v29(v22, 0, 1, v90);
  v35 = v95;
  v88(v31, 1, 1, v89);
  static SingleValueParsingStrategy.next.getter();
  sub_1002205FC();
  Option.init<A>(name:parsing:help:completion:)();
  v36 = OBJC_IVAR____TtC10DarwinInit5Apply__quiet;
  v37 = v80;
  sub_10027FE3C(0);
  v82(v34 + v36, v37, v35);
  sub_10000E2A8(v33, v33[3]);
  sub_10028DCF0();
  v38 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
  }

  else
  {
    v91 = v36;
    v39 = v71;
    v92 = v32;
    v40 = v72;
    v94[0] = 0;
    sub_10000E720(&qword_1004AEA48, &qword_1004AE988, &qword_100402E70, &protocol conformance descriptor for Argument<A>);
    v41 = v73;
    v42 = v74;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    swift_beginAccess();
    (*(v40 + 40))(v34 + v39, v76, v41);
    swift_endAccess();
    v94[0] = 1;
    v43 = sub_10000E720(&qword_1004AEA50, &qword_1004AE998, &qword_100402E78, &protocol conformance descriptor for Flag<A>);
    v44 = v70;
    v45 = v95;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v90 = v43;
    v47 = v67;
    swift_beginAccess();
    v49 = v85 + 40;
    v48 = *(v85 + 40);
    v48(v34 + v47, v44, v45);
    swift_endAccess();
    v94[0] = 2;
    sub_10000E720(&qword_1004AEA58, &qword_1004AE9A8, &qword_100402E80, &protocol conformance descriptor for Option<A>);
    v50 = v68;
    v51 = v69;
    v52 = v42;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v85 = v49;
    v53 = v63;
    swift_beginAccess();
    (*(v64 + 40))(v34 + v53, v50, v51);
    swift_endAccess();
    v94[0] = 3;
    sub_10000E720(&qword_1004AEA60, &qword_1004AE9B8, &qword_100404D30, &protocol conformance descriptor for Option<A>);
    v54 = v65;
    v55 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v56 = v92;
    swift_beginAccess();
    (*(v62 + 40))(&v56[v34], v54, v55);
    swift_endAccess();
    v94[0] = 4;
    v57 = v61;
    v58 = v95;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v75 + 8))(v86, v52);
    v59 = v91;
    swift_beginAccess();
    v48(v34 + v59, v57, v58);
    swift_endAccess();
  }

  sub_100003C3C(v93);
  return v34;
}

uint64_t sub_10028BC54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return Apply.run()();
}

uint64_t sub_10028BCE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = Apply.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_10028BD44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Apply.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10028BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return _swift_task_switch(sub_10028BDC0, a4, 0);
}

uint64_t sub_10028BDC0()
{
  v1 = *(v0 + 64);
  v2 = *(*v1 + 120);
  v3 = swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    (*(v0 + 72))(v3);
  }

  else
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = (*(v0 + 64) + *(**(v0 + 64) + 128));
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;

    sub_100031B5C(v7, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10028BEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v52 = a3;
  v50 = a2;
  v6 = type metadata accessor for ContinuousClock();
  v48 = *(v6 - 8);
  v49 = v6;
  v51 = *(v48 + 64);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContinuousClock.Instant();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_1000039E8(&qword_1004AB0A8, &qword_1003F5DE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v44 = &v43 - v13;
  v15 = sub_1000039E8(&qword_1004AEBC0, &qword_1004031D8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - v17;
  (*(v16 + 16))(&v43 - v17, a1, v15);
  sub_1000039E8(&qword_1004AEBC8, &qword_1004031E0);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v19 + *(*v19 + 120)) = 0;
  v20 = (v19 + *(*v19 + 128));
  *v20 = 0;
  v20[1] = 0;
  (*(v16 + 32))(v19 + *(*v19 + 112), v18, v15);
  v45 = type metadata accessor for TaskPriority();
  v21 = *(v45 - 8);
  v46 = *(v21 + 56);
  v47 = v21 + 56;
  v46(v14, 1, 1, v45);
  v22 = v10;
  v43 = v10;
  v23 = *(v10 + 16);
  v24 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v9;
  v23(v24, v50, v9);
  v27 = v48;
  v26 = v49;
  v28 = v8;
  (*(v48 + 16))(v8, v52, v49);
  v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v30 = (v11 + *(v27 + 80) + v29) & ~*(v27 + 80);
  v31 = (v51 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v43 + 32))(v32 + v29, v24, v25);
  (*(v27 + 32))(v32 + v30, v28, v26);
  *(v32 + v31) = v19;

  v33 = v44;
  v34 = sub_10028FC50(0, 0, v44, &unk_1004031F0, v32);
  v35 = v45;
  v36 = v46;
  v46(v33, 1, 1, v45);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v38 = v54;
  v37[4] = v53;
  v37[5] = v38;
  v37[6] = v19;

  v39 = sub_10028FC50(0, 0, v33, &unk_100403200, v37);
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  *(v40 + 24) = v39;
  v36(v33, 1, 1, v35);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v19;
  v41[5] = sub_10028E8E4;
  v41[6] = v40;
  sub_10028FC50(0, 0, v33, &unk_100403210, v41);
}

uint64_t sub_10028C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = a6;
  *(v6 + 96) = a4;
  v9 = type metadata accessor for ContinuousClock();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 144) = v10;
  *(v6 + 152) = *(v10 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  v11 = swift_task_alloc();
  *(v6 + 168) = v11;
  v12 = sub_10028EB80(&qword_1004AAFD0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v11 = v6;
  v11[1] = sub_10028C5D4;

  return static Task<>.sleep<A>(until:tolerance:clock:)(a4, v6 + 64, a5, v9, v12);
}

uint64_t sub_10028C5D4()
{

  if (v0)
  {
  }

  return _swift_task_switch(sub_10028C6EC, 0, 0);
}

uint64_t sub_10028C6EC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v13 = v0[14];
  (*(v1 + 16))(v2, v0[12], v4);
  (*(v6 + 16))(v3, v7, v5);
  v8 = sub_1000039E8(&qword_1004AEBD0, &qword_100403218);
  sub_10000E720(&qword_1004AEBD8, &qword_1004AEBD0, &qword_100403218, &protocol conformance descriptor for TimeoutError<A>);
  v9 = swift_allocError();
  v11 = v10;
  v0[22] = v9;
  (*(v1 + 32))(v10, v2, v4);
  (*(v6 + 32))(v11 + *(v8 + 36), v3, v5);

  return _swift_task_switch(sub_10028C860, v13, 0);
}

uint64_t sub_10028C860()
{
  v1 = v0[14];
  v2 = *(*v1 + 120);
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = v0[22];
    v4 = v0[14];
    *(v1 + v2) = 1;
    v0[11] = v3;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AEBC0, &qword_1004031D8);
    CheckedContinuation.resume(throwing:)();
    v5 = v4 + *(*v4 + 128);
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v8);
      sub_100031B5C(v6, v7);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10028C9C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 160) = v7;
  *v7 = v6;
  v7[1] = sub_10028CAB4;

  return v9(v6 + 112);
}

uint64_t sub_10028CAB4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10028CD9C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 152);
    v3 = sub_10028CBD0;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10028CBD0()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v0[22] = v2;
  v0[23] = v3;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  if ((*(v1 + v4) & 1) == 0)
  {
    v5 = v0[19];
    *(v1 + v4) = 1;
    v0[16] = v2;
    v0[17] = v3;

    sub_1000039E8(&qword_1004AEBC0, &qword_1004031D8);
    CheckedContinuation.resume(returning:)();
    v6 = v5 + *(*v5 + 128);
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);

      v7(v9);
      sub_100031B5C(v7, v8);
    }
  }

  return _swift_task_switch(sub_10028CD34, 0, 0);
}

uint64_t sub_10028CD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028CDB8()
{
  v1 = v0[19];
  v2 = *(*v1 + 120);
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = v0[21];
    v4 = v0[19];
    *(v1 + v2) = 1;
    v0[18] = v3;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AEBC0, &qword_1004031D8);
    CheckedContinuation.resume(throwing:)();
    v5 = v4 + *(*v4 + 128);
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v8);
      sub_100031B5C(v6, v7);
    }
  }

  return _swift_task_switch(sub_10028CF00, 0, 0);
}

uint64_t sub_10028CF00()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10028CF60(uint64_t a1, void *a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v7 = _findStringSwitchCase(cases:string:)(&off_100485A10, v6);

  if (v7 <= 1)
  {
    if (!v7)
    {
      v19 = __dst[80];
      v20 = __dst[81];
      memcpy(__srca, __src, sizeof(__srca));
      type metadata accessor for CustomerValidator(0);
      swift_allocObject();

      sub_1001D78FC(__dst, v25);
      v10 = a1;
      v11 = a2;
      v12 = v19;
      v13 = v20;
      goto LABEL_10;
    }

    if (v7 == 1)
    {
      v8 = __dst[80];
      v9 = __dst[81];
      type metadata accessor for CustomerProxyValidator(0);
      swift_allocObject();
      memcpy(__srca, __src, sizeof(__srca));

      sub_1001D78FC(__dst, v25);
      v10 = a1;
      v11 = a2;
      v12 = v8;
      v13 = v9;
LABEL_10:
      v16 = CustomerValidator.init(policy:requestedVersion:config:)(v10, v11, v12, v13, __srca);
      goto LABEL_11;
    }

LABEL_8:
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    String.append(_:)(v17);
    sub_1001E941C();
    swift_allocError();
    *v18 = 0xD000000000000020;
    v18[1] = 0x8000000100440B30;
    swift_willThrow();
    return;
  }

  if (v7 != 3)
  {
    if (v7 == 2)
    {
      v14 = __dst[80];
      v15 = __dst[81];
      memcpy(__srca, __src, sizeof(__srca));
      type metadata accessor for CarryValidator(0);
      swift_allocObject();

      sub_1001D78FC(__dst, v25);
      v16 = CarryValidator.init(policy:requestedVersion:config:)(a1, a2, v14, v15, __srca);
LABEL_11:
      __srca[0] = v16;
      sub_10027CD8C();

      return;
    }

    goto LABEL_8;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000270B4(v21, qword_1004B00F8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "darwin-init passed none value for config validation, no validation will be performed", v24, 2u);
  }
}

uint64_t sub_10028D268()
{
  v1 = type metadata accessor for Config(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = (v0 + v3);

  if (*(v0 + v3 + 8))
  {

    if (v5[7])
    {
    }
  }

  if (v5[20])
  {
  }

  if (v5[27])
  {

    if (v5[28])
    {
    }

    if (v5[46])
    {
    }
  }

  v6 = v5 + v1[9];

  v7 = &v6[*(sub_1000039E8(&qword_1004ACDA0, &qword_1003FA370) + 44)];
  v8 = type metadata accessor for Config.Diavlo(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v33 = v0;
    v9 = (v2 + 40) & ~v2;
    v10 = v2;
    v11 = v4;

    v12 = *(sub_1000039E8(&qword_1004ACD10, &qword_1003FA110) + 44);
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v7[v12], 1, v13))
    {
      (*(v14 + 8))(&v7[v12], v13);
    }

    v15 = &v7[*(v8 + 20)];

    v16 = *(v15 + 2);
    v4 = v11;
    v2 = v10;
    v3 = v9;
    v0 = v33;
    if (v16 >> 60 != 15)
    {
      sub_100031928(*(v15 + 1), v16);
    }
  }

  v17 = v5 + v1[11];

  if (*(v17 + 1))
  {
  }

  v18 = v5 + v1[12];

  if (*(v18 + 1))
  {
  }

  v19 = v5 + v1[13];

  if (*(v19 + 1))
  {
  }

  v20 = v5 + v1[14];

  if (*(v20 + 1))
  {
  }

  v21 = v5 + v1[16];

  if (*(v21 + 1))
  {

    if (*(v21 + 2))
    {
    }
  }

  v22 = v5 + v1[17];

  if (*(v22 + 1))
  {

    v23 = v22[40];
    if (v23 != 255)
    {
      sub_100218EFC(*(v22 + 4), v23 & 1);
    }
  }

  v24 = v5 + v1[20];

  if ((~*(v24 + 1) & 0xF000000000000007) != 0)
  {
  }

  v25 = v5 + v1[21];

  if (*(v25 + 1))
  {
  }

  v26 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = v5 + v1[22];

  if (*(v27 + 1))
  {
  }

  v28 = v5 + v1[23];

  v29 = v28[96];
  if (v29 != 255)
  {
    sub_10028D970(*(v28 + 1), *(v28 + 2), *(v28 + 3), *(v28 + 4), *(v28 + 5), *(v28 + 6), *(v28 + 7), *(v28 + 8), *(v28 + 9), *(v28 + 10), *(v28 + 11), v29 & 1);
  }

  v30 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;

  if (*(v5 + v1[26]))
  {
  }

  sub_100003C3C((v0 + v26));
  v31 = v0 + v30;

  if (*(v0 + v30 + 136) != 1)
  {
  }

  if (*(v31 + 192) != 1)
  {
  }

  if ((~*(v31 + 232) & 0xF000000000000007) != 0)
  {
  }

  return _swift_deallocObject(v0, v30 + 242, v2 | 7);
}

uint64_t sub_10028D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12)
  {
  }

  return result;
}

uint64_t sub_10028D9E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Config(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 241);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100001FE0;

  return sub_10028813C(a1, v8, v9, v10, v1 + v6, v1 + v7, v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8), v11);
}

unint64_t sub_10028DBF4()
{
  result = qword_1004AE9E0;
  if (!qword_1004AE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE9E0);
  }

  return result;
}

unint64_t sub_10028DC48()
{
  result = qword_1004AEA28;
  if (!qword_1004AEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEA28);
  }

  return result;
}

unint64_t sub_10028DC9C()
{
  result = qword_1004AEA30;
  if (!qword_1004AEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEA30);
  }

  return result;
}

unint64_t sub_10028DCF0()
{
  result = qword_1004AEA40;
  if (!qword_1004AEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEA40);
  }

  return result;
}

uint64_t type metadata accessor for Apply(uint64_t a1)
{
  result = qword_1004AEAA8;
  if (!qword_1004AEAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028DF08(uint64_t a1)
{
  sub_10028E170(319, &qword_1004AEAB8, &qword_1004AB540, &qword_1003F69E8, &type metadata accessor for Argument);
  if (v1 <= 0x3F)
  {
    sub_10028E120();
    if (v2 <= 0x3F)
    {
      sub_10028E170(319, &qword_1004AEAC8, &qword_1004AEAD0, &qword_100403078, &type metadata accessor for Option);
      if (v3 <= 0x3F)
      {
        sub_10028E170(319, &qword_1004AEAD8, &unk_1004AEAE0, &qword_100403080, &type metadata accessor for Option);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10028E120()
{
  if (!qword_1004AEAC0)
  {
    v0 = type metadata accessor for Flag();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AEAC0);
    }
  }
}

void sub_10028E170(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003A94(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10028E1F8()
{
  result = qword_1004AEB88;
  if (!qword_1004AEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEB88);
  }

  return result;
}

unint64_t sub_10028E250()
{
  result = qword_1004AEB90;
  if (!qword_1004AEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEB90);
  }

  return result;
}

unint64_t sub_10028E2A8()
{
  result = qword_1004AEB98;
  if (!qword_1004AEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEB98);
  }

  return result;
}

uint64_t sub_10028E2FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7465697571 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10028E4A8()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10028E60C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ContinuousClock() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100189CAC;

  return sub_10028C404(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_10028E794()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10028E7DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100001FE0;

  return sub_10028C9C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10028E8A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10028E8EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10028E934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100189CAC;

  return sub_10028BD9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10028E9FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028EA64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10028EACC()
{
  result = qword_1004AEBE8[0];
  if (!qword_1004AEBE8[0])
  {
    sub_100003A94(&qword_1004AEBE0, &unk_100403220);
    sub_10028EB80(&qword_1004AC928, type metadata accessor for ErrorReport, &protocol conformance descriptor for ErrorReport);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004AEBE8);
  }

  return result;
}

uint64_t sub_10028EB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028EBE4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10028EC24()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10028EC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_10028EC7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t withDeadline<A, B>(_:clock:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_10028ECF8, 0, 0);
}

uint64_t sub_10028ECF8()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10028EE04;
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000018, 0x80000001004403B0, sub_1002905F4, v2, v6);
}

uint64_t sub_10028EE04()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10028EF40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10028EF40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TimeoutError.deadline.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t TimeoutError.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = type metadata accessor for TimeoutError(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t SafeContinuation.inner.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = type metadata accessor for CheckedContinuation();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SafeContinuation.resumed.getter()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SafeContinuation.resumed.setter(char a1)
{
  v3 = *(*v1 + 120);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10028F318@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *(**a1 + 128));
  swift_beginAccess();
  v6 = *v3;
  v7 = v3[1];
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_10003DAB0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a2 = v9;
  a2[1] = v8;
  return sub_1000ADF68(v6, v7, v4, v5);
}

uint64_t sub_10028F3C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_100291048;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 128));
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1000ADF68(v3, v4, v10, v11);
  return sub_10028ECBC(v8, v9);
}

uint64_t SafeContinuation.resumeHandler.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  sub_1000ADF68(*v1, v1[1], v3, v4);
  return v2;
}

uint64_t SafeContinuation.resumeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10028ECBC(v6, v7);
}

uint64_t SafeContinuation.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SafeContinuation.init(with:)(a1);
  return v2;
}

uint64_t SafeContinuation.init(with:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + *(*v1 + 120)) = 0;
  v3 = (v1 + *(*v1 + 128));
  *v3 = 0;
  v3[1] = 0;
  v4 = *(*v1 + 112);
  v5 = type metadata accessor for CheckedContinuation();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t SafeContinuation.resume(returning:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14[-v5];
  v8 = *(v7 + 120);
  result = swift_beginAccess();
  if ((*(v1 + v8) & 1) == 0)
  {
    *(v1 + v8) = 1;
    (*(v4 + 16))(v6, a1, v3);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    v10 = v1 + *(*v1 + 128);
    result = swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v12 = *(v10 + 8);

      v11(v13);
      return sub_10028ECBC(v11, v12);
    }
  }

  return result;
}

uint64_t SafeContinuation.resume(throwing:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14[-v5];
  v8 = *(v7 + 120);
  result = swift_beginAccess();
  if ((*(v1 + v8) & 1) == 0)
  {
    *(v1 + v8) = 1;
    (*(v4 + 16))(v6, a1, v3);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(throwing:)();
    v10 = v1 + *(*v1 + 128);
    result = swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v12 = *(v10 + 8);

      v11(v13);
      return sub_10028ECBC(v11, v12);
    }
  }

  return result;
}

uint64_t SafeContinuation.onResume(perform:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000039E8(&qword_1004AB0A8, &qword_1003F5DE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_10028FC50(0, 0, v7, &unk_100403248, v9);
}

uint64_t sub_10028FBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10028FBEC, a4, 0);
}

uint64_t sub_10028FBEC()
{
  sub_10028FF10(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028FC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000039E8(&qword_1004AB0A8, &qword_1003F5DE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1002910A8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100291118(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100291118(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100291118(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10028FF10(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(*v2 + 120);
  v6 = swift_beginAccess();
  if (*(v2 + v5) == 1)
  {
    return a1(v6);
  }

  v8 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  return sub_10028ECBC(v9, v10);
}

uint64_t SafeContinuation.deinit()
{
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for CheckedContinuation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10028ECBC(*(v0 + *(*v0 + 128)), *(v0 + *(*v0 + 128) + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SafeContinuation.__deallocating_deinit()
{
  SafeContinuation.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002900F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a5;
  v57 = a8;
  v54 = a3;
  v55 = a4;
  v47 = a1;
  v49 = a6;
  v51 = *(a6 - 8);
  v52 = a2;
  v53 = *(v51 + 64);
  __chkstk_darwin(a1);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v42 - v12;
  v42 = &v42 - v12;
  v14 = sub_1000039E8(&qword_1004AB0A8, &qword_1003F5DE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  v43 = &v42 - v15;
  v17 = sub_100003A94(&qword_1004AB0A0, &unk_100377120);
  v46 = a7;
  v18 = type metadata accessor for CheckedContinuation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  type metadata accessor for SafeContinuation(0, a7, v17, &protocol self-conformance witness table for Error);
  (*(v19 + 16))(v21, v47, v18);
  v22 = swift_allocObject();
  SafeContinuation.init(with:)(v21);
  v45 = type metadata accessor for TaskPriority();
  v23 = *(v45 - 8);
  v44 = *(v23 + 56);
  v47 = v23 + 56;
  v44(v16, 1, 1, v45);
  v24 = v13;
  v25 = AssociatedTypeWitness;
  (*(v10 + 16))(v24, v52, AssociatedTypeWitness);
  v26 = v50;
  v27 = v51;
  v28 = v49;
  (*(v51 + 16))(v50, v54, v49);
  v29 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v30 = (v11 + *(v27 + 80) + v29) & ~*(v27 + 80);
  v31 = (v53 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v33 = v46;
  *(v32 + 4) = v28;
  *(v32 + 5) = v33;
  *(v32 + 6) = v57;
  (*(v10 + 32))(&v32[v29], v42, v25);
  (*(v27 + 32))(&v32[v30], v26, v28);
  *&v32[v31] = v22;

  v34 = v43;
  v35 = sub_10028FC50(0, 0, v43, &unk_100403398, v32);
  v44(v34, 1, 1, v45);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v38 = v56;
  v37 = v57;
  v36[4] = v28;
  v36[5] = v37;
  v36[6] = v55;
  v36[7] = v38;
  v36[8] = v22;

  v39 = sub_10028FC50(0, 0, v34, &unk_1004033A8, v36);
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  *(v40 + 24) = v39;

  SafeContinuation.onResume(perform:)(sub_10029243C, v40);
}

uint64_t sub_100290620()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100290668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100189CAC;

  return sub_10028FBC8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100290730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 120);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100290794(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(**a2 + 120);
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_100290800(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100290830(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002908D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v5 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10, v5);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(*(v5 - 8) + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100290B24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(*(v7 - 8) + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11, v7);
  }
}

uint64_t sub_100290E08(void *a1)
{
  result = type metadata accessor for CheckedContinuation();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100291070()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002910A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AB0A8, &qword_1003F5DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100291118(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB0A8, &qword_1003F5DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100291180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[8] = *(a7 - 8);
  v8[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_100291348, 0, 0);
}

uint64_t sub_100291348()
{
  (*(*(v0[13] - 8) + 56))(v0[16], 1, 1);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100291420;
  v2 = v0[16];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];

  return static Task<>.sleep<A>(until:tolerance:clock:)(v6, v2, v5, v3, v4);
}

uint64_t sub_100291420()
{
  v2 = *v1;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1002924BC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1002915B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002915B8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  (*(v0[11] + 16))(v1, v0[3], v0[10]);
  (*(v4 + 16))(v2, v7, v6);
  type metadata accessor for TimeoutError(0, v6, v3, v8);
  swift_getWitnessTable();
  v9 = swift_allocError();
  v0[18] = v9;
  TimeoutError.init(_:_:)(v1, v2, v6, v3, v10);
  v0[2] = v9;

  return _swift_task_switch(sub_1002916DC, v5, 0);
}

uint64_t sub_1002916DC()
{
  SafeContinuation.resume(throwing:)(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100291780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v8 = *(*a6 + 80);
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_1002918EC;

  return v12(v9);
}

uint64_t sub_1002918EC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100291AEC;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = sub_100291A08;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100291A08()
{
  SafeContinuation.resume(returning:)(*(v0 + 48));

  return _swift_task_switch(sub_100291A74, 0, 0);
}

uint64_t sub_100291A74()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100291AEC()
{
  v1 = v0[3];
  v0[2] = v0[8];
  return _swift_task_switch(sub_100291B10, v1, 0);
}

uint64_t sub_100291B10()
{
  SafeContinuation.resume(throwing:)(v0 + 16);

  return _swift_task_switch(sub_100291B7C, 0, 0);
}

uint64_t sub_100291B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100291BE4()
{
  Task.cancel()();

  Task.cancel()();
}

uint64_t sub_100291C54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100291D4C;

  return v6(a1);
}

uint64_t sub_100291D4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100291E44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100189CAC;

  return sub_100291C54(a1, v4);
}

uint64_t sub_100291EFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001FE0;

  return sub_100291C54(a1, v4);
}

uint64_t sub_100291FB4()
{
  v1 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_100292128(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + ((*(*(v5 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100189CAC;

  return sub_100291180(a1, v10, v11, v1 + v8, v1 + v9, v12, v5, v6);
}

uint64_t sub_1002922D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100292320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100001FE0;

  return sub_100291780(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002923FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10029243C()
{
  Task.cancel()();

  Task.cancel()();
}

uint64_t sub_1002924E8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100292704(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t DInitBool.encode(to:)(void *a1, uint64_t a2)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v3);
}

uint64_t sub_1002925AC(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v2);
}

Swift::Int sub_100292640()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002926B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100292704(void *a1)
{
  v3 = a1[3];
  sub_10000E2A8(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_10000E2A8(v5, v5[3]);
    LOBYTE(v3) = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100003C3C(v5);
    sub_100003C3C(a1);
  }

  return v3 & 1;
}

unint64_t sub_100292908()
{
  result = qword_1004AECF0;
  if (!qword_1004AECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AECF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitBool(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100292A28@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100292FFC(a1, a2);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  return result;
}

uint64_t sub_100292A58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100292B24(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100292B24(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1000C34F8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000C34F8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000C34F8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100292F90(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_100292FFC(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v4 = v3;

  v5 = v4 >> 14;
  v6 = v2 >> 14;
  if (v2 >> 14 != v4 >> 14)
  {
    Substring.subscript.getter();
    v7 = Character.isWhitespace.getter();

    if (v7)
    {
      while (1)
      {
        v6 = Substring.index(after:)() >> 14;
        if (v6 == v5)
        {
          break;
        }

        Substring.subscript.getter();
        v8 = Character.isWhitespace.getter();

        if ((v8 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      if (v5 < v6)
      {
        __break(1u);
LABEL_69:

        goto LABEL_20;
      }
    }
  }

  v9 = Substring.subscript.getter();
  v11 = v10;

  v49 = Substring.init(_:)();
  v50 = v12;
  v51 = v13;
  v52 = v14;
  v15 = v9 >> 14;
  if (v9 >> 14 != v11 >> 14)
  {
    v16 = &type metadata for Substring;
    v15 = v11 >> 14;
    while (1)
    {
      v17 = Substring.subscript.getter();

      v18 = Character.isNumber.getter();

      if ((v18 & 1) == 0)
      {

        goto LABEL_15;
      }

      sub_100293A64();
      v19 = &v49;
      dispatch thunk of RangeReplaceableCollection.insert(_:at:)();
      v20 = Substring.index(_:offsetBy:limitedBy:)();
      if (v21)
      {
        v20 = v11;
      }

      if (v15 < v20 >> 14)
      {
        break;
      }

      v9 = Substring.subscript.getter();
      v11 = v22;

      v15 = v11 >> 14;
      if (v9 >> 14 == v11 >> 14)
      {
        v15 = v9 >> 14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_15:
  v17 = v49;
  v23 = v50;
  if ((v50 ^ v49) < 0x4000)
  {
    goto LABEL_69;
  }

  v24 = v51;
  v48 = v52;
  v25 = sub_100292A58(v49, v50, v51, v52, 10);
  if ((v26 & 0x100) == 0)
  {
    v27 = v25;
    v28 = v26;

    if ((v28 & 1) == 0)
    {
      v47 = v27;
      goto LABEL_22;
    }

LABEL_20:

    return 0;
  }

  v29 = sub_10030B9AC(v17, v23, v24, v48, 10);
  v17 = v30;

  if (v17)
  {
    goto LABEL_20;
  }

  v47 = v29;
LABEL_22:
  v18 = v9 >> 14;
  v19 = v9;
  v16 = v15;
  if (v9 >> 14 != v15)
  {
    Substring.subscript.getter();
    v17 = Character.isWhitespace.getter();

    v19 = v9;
    v16 = (v9 >> 14);
    if (v17)
    {
      while (1)
      {
        v19 = Substring.index(after:)();
        v16 = (v19 >> 14);
        if (v19 >> 14 == v15)
        {
          break;
        }

        Substring.subscript.getter();
        v17 = v31;
        v18 = Character.isWhitespace.getter();

        if ((v18 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v16 = v15;
    }
  }

LABEL_28:
  if (v15 < v16)
  {
    __break(1u);
    goto LABEL_71;
  }

  v9 = Substring.subscript.getter();
  v33 = v32;

  v49 = Substring.init(_:)();
  v50 = v34;
  v51 = v35;
  v52 = v36;
  v16 = (v9 >> 14);
  if (v9 >> 14 != v33 >> 14)
  {
    v17 = &type metadata for Substring;
    v16 = (v33 >> 14);
    while (1)
    {
      v18 = Substring.subscript.getter();

      v15 = Character.isLetter.getter();

      if ((v15 & 1) == 0)
      {
        break;
      }

      sub_100293A64();
      v19 = &v49;
      dispatch thunk of RangeReplaceableCollection.insert(_:at:)();
      v37 = Substring.index(_:offsetBy:limitedBy:)();
      if (v38)
      {
        v37 = v33;
      }

      if (v16 < v37 >> 14)
      {
        goto LABEL_62;
      }

      v9 = Substring.subscript.getter();
      v33 = v39;

      v16 = (v33 >> 14);
      if (v9 >> 14 == v33 >> 14)
      {
        v16 = (v9 >> 14);
        goto LABEL_38;
      }
    }
  }

LABEL_38:
  v17 = v49;
  v18 = v50;
  v15 = v51;
  v19 = v52;
  if (sub_100292F90(29550, 0xE200000000000000, v49, v50, v51, v52) & 1) != 0 || (sub_100292F90(0x736F6E616ELL, 0xE500000000000000, v17, v18, v15, v19) & 1) != 0 || (sub_100292F90(0x6F6365736F6E616ELL, 0xEB0000000073646ELL, v17, v18, v15, v19))
  {

    v15 = 1000000000;
    goto LABEL_42;
  }

  if (sub_100292F90(29557, 0xE200000000000000, v17, v18, v15, v19) & 1) != 0 || (sub_100292F90(0x736F7263696DLL, 0xE600000000000000, v17, v18, v15, v19) & 1) != 0 || (sub_100292F90(0x6365736F7263696DLL, 0xEC00000073646E6FLL, v17, v18, v15, v19))
  {

    v15 = 1000000000000;
    goto LABEL_42;
  }

  if (sub_100292F90(29549, 0xE200000000000000, v17, v18, v15, v19) & 1) != 0 || (sub_100292F90(0x73696C6C696DLL, 0xE600000000000000, v17, v18, v15, v19) & 1) != 0 || (sub_100292F90(0x636573696C6C696DLL, 0xEC00000073646E6FLL, v17, v18, v15, v19))
  {

    v15 = 1000000000000000;
    goto LABEL_42;
  }

LABEL_63:
  if ((sub_100292F90(0, 0xE000000000000000, v17, v18, v15, v19) & 1) == 0 && (sub_100292F90(115, 0xE100000000000000, v17, v18, v15, v19) & 1) == 0 && (sub_100292F90(6514035, 0xE300000000000000, v17, v18, v15, v19) & 1) == 0 && (sub_100292F90(0x73646E6F636573, 0xE700000000000000, v17, v18, v15, v19) & 1) == 0)
  {
    goto LABEL_72;
  }

  v15 = 1000000000000000000;

  while (1)
  {
LABEL_42:
    v18 = v9 >> 14;
    v19 = v9;
    v40 = v16;
    if ((v9 >> 14) != v16)
    {
      Substring.subscript.getter();
      v17 = Character.isWhitespace.getter();

      v19 = v9;
      v40 = (v9 >> 14);
      if (v17)
      {
        while (1)
        {
          v19 = Substring.index(after:)();
          v40 = (v19 >> 14);
          if ((v19 >> 14) == v16)
          {
            break;
          }

          Substring.subscript.getter();
          v17 = v41;
          v18 = Character.isWhitespace.getter();

          if ((v18 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v40 = v16;
      }
    }

LABEL_48:
    if (v16 >= v40)
    {
      break;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    if (sub_100292F90(109, 0xE100000000000000, v17, v18, v15, v19) & 1) != 0 || (sub_100292F90(7235949, 0xE300000000000000, v17, v18, v15, v19) & 1) != 0 || (sub_100292F90(0x736574756E696DLL, 0xE700000000000000, v17, v18, v15, v19))
    {

      v46 = 60 * v47;
      if ((v47 * 60) >> 64 != (60 * v47) >> 63)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (sub_100292F90(29288, 0xE200000000000000, v17, v18, v15, v19))
      {
      }

      else
      {
        v17 = sub_100292F90(0x7372756F68, 0xE500000000000000, v17, v18, v15, v19);

        if ((v17 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v46 = 3600 * v47;
      if ((v47 * 3600) >> 64 != (3600 * v47) >> 63)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }
    }

    v15 = 1000000000000000000;
    v47 = v46;
  }

  v42 = Substring.subscript.getter();
  v44 = v43;

  if ((v42 ^ v44) >= 0x4000)
  {
    return 0;
  }

  return v15 * v47;
}

unint64_t sub_100293A64()
{
  result = qword_1004AECF8;
  if (!qword_1004AECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AECF8);
  }

  return result;
}

unint64_t Substring.collect(while:)(uint64_t (*a1)(void))
{
  v2 = v1;
  v16 = Substring.init(_:)();
  v3 = v1[1];
  v4 = v3 >> 14;
  if (v3 >> 14 == *v1 >> 14)
  {
    return v16;
  }

  while (1)
  {
    Substring.subscript.getter();
    v5 = a1();
    if (v15)
    {
    }

    if ((v5 & 1) == 0)
    {

      return v16;
    }

    sub_100293A64();
    dispatch thunk of RangeReplaceableCollection.insert(_:at:)();
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v7)
    {
      result = v3;
    }

    if (v4 < result >> 14)
    {
      break;
    }

    v8 = Substring.subscript.getter();
    v3 = v9;
    v11 = v10;
    v13 = v12;

    *v2 = v8;
    v2[1] = v3;
    v2[2] = v11;
    v2[3] = v13;
    v4 = v3 >> 14;
    if (v3 >> 14 == v8 >> 14)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

char *String.hexadecimalASCIIBytes.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_78;
  }

  v4 = HIBYTE(a2);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2);
  }

  else
  {
    LOBYTE(v5) = a1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = (a2 & 0x2000000000000000) == 0;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_9:
  v8 = (v7 / 2) & ~((v7 + (v7 >> 63)) >> 63);

  v9 = sub_100011D30(0, v8, 0, _swiftEmptyArrayStorage);
  if (v6)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v4 & 0xF;
  }

  if (v10)
  {
    v40 = 4 * v10;
    v41 = v10;
    v11 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    v13 = 15;
    v39 = v6;
    do
    {
      v14 = v13 & 0xC;
      v15 = v13;
      if (v14 == v12)
      {
        v15 = sub_1000C34F8(v13, a1, a2);
        v10 = v41;
      }

      v16 = v15 >> 16;
      if (v15 >> 16 >= v10)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        if (String.UTF8View._foreignCount()())
        {
          return 0;
        }

        v7 = String.UTF8View._foreignCount()();
        v4 = HIBYTE(a2);
        v6 = (a2 & 0x2000000000000000) == 0;
        goto LABEL_9;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v18 = String.UTF8View._foreignSubscript(position:)();
        v10 = v41;
      }

      else if (v6)
      {
        v17 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = _StringObject.sharedUTF8.getter();
          v10 = v41;
        }

        v18 = *(v17 + v16);
      }

      else
      {
        v42 = a1;
        v43 = a2 & 0xFFFFFFFFFFFFFFLL;
        v18 = *(&v42 + v16);
      }

      if ((v18 - 58) > 0xF5u)
      {
        v20 = 0;
        v21 = v18 - 48;
        if (v14 != v12)
        {
          goto LABEL_34;
        }
      }

      else if ((v18 - 103) > 0xF9u)
      {
        v20 = 0;
        v21 = v18 - 87;
        if (v14 != v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v19 = (v18 - 71);
        v20 = v19 < 0xFA;
        if (v19 >= 0xFA)
        {
          v21 = v18 - 55;
        }

        else
        {
          v21 = 0;
        }

        if (v14 != v12)
        {
LABEL_34:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_38;
        }
      }

      v23 = sub_1000C34F8(v13, a1, a2);
      v10 = v41;
      v13 = v23;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_35:
        v22 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_40;
      }

LABEL_38:
      if (v10 <= v13 >> 16)
      {
        goto LABEL_76;
      }

      v24 = String.UTF8View._foreignIndex(after:)();
      v10 = v41;
      v22 = v24;
LABEL_40:
      v25 = v22 & 0xC;
      v26 = v22;
      if (v25 == v12)
      {
        v26 = sub_1000C34F8(v22, a1, a2);
        v10 = v41;
      }

      v27 = v26 >> 16;
      if (v26 >> 16 >= v10)
      {
        goto LABEL_75;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v29 = String.UTF8View._foreignSubscript(position:)();
        v10 = v41;
      }

      else if (v6)
      {
        v28 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = _StringObject.sharedUTF8.getter();
          v10 = v41;
        }

        v29 = *(v28 + v27);
      }

      else
      {
        v42 = a1;
        v43 = a2 & 0xFFFFFFFFFFFFFFLL;
        v29 = *(&v42 + v27);
      }

      if ((v29 - 58) > 0xF5u)
      {
        v31 = 0;
        v32 = v29 - 48;
        if (v25 != v12)
        {
          goto LABEL_58;
        }
      }

      else if ((v29 - 103) > 0xF9u)
      {
        v31 = 0;
        v32 = v29 - 87;
        if (v25 != v12)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v30 = (v29 - 71);
        v31 = v30 < 0xFA;
        if (v30 >= 0xFA)
        {
          v32 = v29 - 55;
        }

        else
        {
          v32 = 0;
        }

        if (v25 != v12)
        {
LABEL_58:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_64;
        }
      }

      v33 = sub_1000C34F8(v22, a1, a2);
      v10 = v41;
      v22 = v33;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_59:
        if (v20)
        {
          goto LABEL_71;
        }

        v13 = (v22 & 0xFFFFFFFFFFFF0000) + 65540;
        if (v31)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }

LABEL_64:
      if (v10 <= v22 >> 16)
      {
        goto LABEL_77;
      }

      v34 = String.UTF8View._foreignIndex(after:)();
      v10 = v41;
      if (v20 || (v13 = v34, v31))
      {
LABEL_71:

        return 0;
      }

LABEL_67:
      v36 = *(v9 + 2);
      v35 = *(v9 + 3);
      if (v36 >= v35 >> 1)
      {
        v37 = sub_100011D30((v35 > 1), v36 + 1, 1, v9);
        v10 = v41;
        v9 = v37;
      }

      LOBYTE(v6) = v39;
      *(v9 + 2) = v36 + 1;
      v9[v36 + 32] = v32 | (16 * v21);
    }

    while (v40 > v13 >> 14);
  }

  return v9;
}

uint64_t type metadata accessor for DInitNVRAMConfig(uint64_t a1)
{
  result = qword_1004AED98;
  if (!qword_1004AED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DInitNVRAMConfig.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DInitNVRAMConfig(0) + 20);

  return sub_10029414C(a1, v3);
}

uint64_t sub_10029414C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AE260, &unk_100401630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294204()
{
  if (*v0)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x746E656D75677261;
  }
}

uint64_t sub_100294240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100294320(uint64_t a1)
{
  v2 = sub_10029471C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10029435C(uint64_t a1)
{
  v2 = sub_10029471C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitNVRAMConfig.init(arguments:source:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v4 = &a3[*(type metadata accessor for DInitNVRAMConfig(0) + 20)];

  return sub_1002943E4(a2, v4);
}

uint64_t sub_1002943E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AE260, &unk_100401630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DInitNVRAMConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_1000039E8(&qword_1004AE260, &unk_100401630);
  __chkstk_darwin(v20);
  v5 = &v16 - v4;
  v21 = sub_1000039E8(&qword_1004AED00, &qword_100403538);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DInitNVRAMConfig(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E2A8(a1, a1[3]);
  sub_10029471C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v17 = v8;
  v11 = v10;
  v12 = v19;
  v23 = 0;
  sub_100294770();
  v13 = v21;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v11;
  *v11 = v24;
  v22 = 1;
  sub_1002947C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v13);
  v14 = v16;
  sub_1002943E4(v5, &v16[*(v17 + 20)]);
  sub_100294880(v14, v18);
  sub_100003C3C(a1);
  return sub_100295AB0(v14, type metadata accessor for DInitNVRAMConfig);
}

unint64_t sub_10029471C()
{
  result = qword_1004AED08;
  if (!qword_1004AED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED08);
  }

  return result;
}

unint64_t sub_100294770()
{
  result = qword_1004AED10;
  if (!qword_1004AED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED10);
  }

  return result;
}

unint64_t sub_1002947C4()
{
  result = qword_1004AED18;
  if (!qword_1004AED18)
  {
    sub_100003A94(&qword_1004AE260, &unk_100401630);
    sub_100295688(&qword_1004AE578, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
    sub_1001D81C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED18);
  }

  return result;
}

uint64_t sub_100294880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitNVRAMConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DInitNVRAMConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AED20, &qword_100403540);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_10029471C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_100294AA8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for DInitNVRAMConfig(0);
    v10[13] = 1;
    sub_1000039E8(&qword_1004AE260, &unk_100401630);
    sub_100294AFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100294AA8()
{
  result = qword_1004AED28;
  if (!qword_1004AED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED28);
  }

  return result;
}

unint64_t sub_100294AFC()
{
  result = qword_1004AED30;
  if (!qword_1004AED30)
  {
    sub_100003A94(&qword_1004AE260, &unk_100401630);
    sub_100295688(&qword_1004AE530, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
    sub_1001D7020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED30);
  }

  return result;
}

uint64_t static DInitNVRAMConfig.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 != 4)
  {
    if (v5 != 4)
    {
      if (v4 == 3)
      {
        if (v5 == 3)
        {
          goto LABEL_3;
        }
      }

      else if (v5 != 3)
      {
        v8 = 0xE800000000000000;
        v9 = 0x6E776F6474756873;
        if (v4 != 1)
        {
          v9 = 1953069157;
          v8 = 0xE400000000000000;
        }

        if (*a1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0x746F6F626572;
        }

        if (v4)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0xE600000000000000;
        }

        v12 = 0xE800000000000000;
        v13 = 0x6E776F6474756873;
        if (v5 != 1)
        {
          v13 = 1953069157;
          v12 = 0xE400000000000000;
        }

        if (*a2)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0x746F6F626572;
        }

        if (*a2)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0xE600000000000000;
        }

        if (v10 == v14 && v11 == v15)
        {

          goto LABEL_3;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_3;
        }
      }
    }

    return 0;
  }

  if (v5 != 4)
  {
    return 0;
  }

LABEL_3:
  v6 = *(type metadata accessor for DInitNVRAMConfig(0) + 20);

  return sub_10029514C(&a1[v6], &a2[v6]);
}

uint64_t sub_100294D50(__int128 *a1, unsigned __int8 *a2)
{
  v3 = a1[3];
  v56 = a1[2];
  v57 = v3;
  v58 = a1[4];
  v59 = *(a1 + 10);
  v4 = a1[1];
  v54 = *a1;
  v55 = v4;
  v5 = *(a1 + 88);
  v6 = *a2;
  v7 = *(a2 + 17);
  v49 = *(a2 + 1);
  v50 = v7;
  v8 = *(a2 + 33);
  v9 = *(a2 + 49);
  v10 = *(a2 + 65);
  *(v53 + 15) = *(a2 + 10);
  v52 = v9;
  v53[0] = v10;
  v51 = v8;
  v11 = a2[88];
  if ((v5 & 1) == 0)
  {
    v18 = a1[3];
    *&v40[32] = a1[2];
    *&v40[48] = v18;
    *&v40[64] = a1[4];
    *&v40[80] = *(a1 + 10);
    v19 = a1[1];
    *v40 = *a1;
    *&v40[16] = v19;
    v41 = v5;
    if ((v11 & 1) == 0)
    {
      if (((v6 ^ v40[0]) & 1) == 0)
      {
        v28 = a1[3];
        v35 = a1[2];
        v36 = v28;
        v37 = a1[4];
        v38 = *(a1 + 10);
        v29 = a1[1];
        v33 = *a1;
        v34 = v29;
        v39 = v5;
        v30 = a1;
        sub_100013E54(v40, v31, &qword_1004AD2C0, &qword_1003FC380);
        sub_100013E54(v30, v31, &qword_1004AD2C0, &qword_1003FC380);
        sub_100013E54(a2, v31, &qword_1004AD2C0, &qword_1003FC380);
        goto LABEL_13;
      }

      v25 = a1[3];
      v35 = a1[2];
      v36 = v25;
      v37 = a1[4];
      v38 = *(a1 + 10);
      v26 = a1[1];
      v33 = *a1;
      v34 = v26;
      v39 = v5;
      v27 = a1;
      sub_100013E54(v40, v31, &qword_1004AD2C0, &qword_1003FC380);
      sub_100013E54(v27, v31, &qword_1004AD2C0, &qword_1003FC380);
      sub_100013E54(a2, v31, &qword_1004AD2C0, &qword_1003FC380);
      v23 = &v33;
      v21 = &qword_1004AD2C0;
      v22 = &qword_1003FC380;
LABEL_8:
      sub_100013F2C(v23, v21, v22);
      return 0;
    }

    v20 = a1;
    sub_100013E54(v40, &v33, &qword_1004AD2C0, &qword_1003FC380);
    a1 = v20;
LABEL_7:
    *&v40[32] = v56;
    *&v40[48] = v57;
    *&v40[64] = v58;
    *&v40[80] = v59;
    *v40 = v54;
    *&v40[16] = v55;
    v41 = v5;
    v42 = v6;
    v44 = v50;
    v43 = v49;
    *&v47[15] = *(v53 + 15);
    *v47 = v53[0];
    v46 = v52;
    v45 = v51;
    v48 = v11;
    sub_100013E54(a1, &v33, &qword_1004AD2C0, &qword_1003FC380);
    sub_100013E54(a2, &v33, &qword_1004AD2C0, &qword_1003FC380);
    v21 = &unk_1004AEE00;
    v22 = &unk_100403758;
    v23 = v40;
    goto LABEL_8;
  }

  if ((a2[88] & 1) == 0)
  {
    goto LABEL_7;
  }

  v40[0] = v6;
  *&v40[1] = *(a2 + 1);
  *&v40[17] = *(a2 + 17);
  *&v40[65] = *(a2 + 65);
  *&v40[49] = *(a2 + 49);
  *&v40[33] = *(a2 + 33);
  *&v40[80] = *(a2 + 10);
  v41 = v11;
  v31[0] = *v40;
  v31[1] = *&v40[16];
  v32 = *&v40[80];
  v31[3] = *&v40[48];
  v31[4] = *&v40[64];
  v31[2] = *&v40[32];
  v12 = a1[1];
  v60[0] = *a1;
  v60[1] = v12;
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  v61 = *(a1 + 10);
  v60[3] = v14;
  v60[4] = v15;
  v60[2] = v13;
  v16 = a1;
  v17 = _s10DarwinInit6ConfigV8TailspinV2eeoiySbAE_AEtFZ_0(v60, v31);
  sub_100013E54(v16, &v33, &qword_1004AD2C0, &qword_1003FC380);
  sub_100013E54(a2, &v33, &qword_1004AD2C0, &qword_1003FC380);
  sub_100013F2C(v40, &qword_1004AD2C0, &qword_1003FC380);
  if (!v17)
  {
    v35 = v56;
    v36 = v57;
    v37 = v58;
    v38 = v59;
    v33 = v54;
    v34 = v55;
    v39 = v5;
    v21 = &qword_1004AD2C0;
    v22 = &qword_1003FC380;
    v23 = &v33;
    goto LABEL_8;
  }

  v35 = v56;
  v36 = v57;
  v37 = v58;
  v38 = v59;
  v33 = v54;
  v34 = v55;
  v39 = v5;
LABEL_13:
  sub_100013F2C(&v33, &qword_1004AD2C0, &qword_1003FC380);
  return 1;
}

uint64_t sub_10029514C(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004AE260, &unk_100401630);
  v7 = __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_1000039E8(&qword_1004AEDF8, &unk_100403748);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v19 - v14;
  v16 = *(v13 + 56);
  sub_100013E54(a1, &v19 - v14, &qword_1004AE260, &unk_100401630);
  sub_100013E54(v20, &v15[v16], &qword_1004AE260, &unk_100401630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100013E54(v15, v9, &qword_1004AE260, &unk_100401630);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      memcpy(v21, &v15[v16], sizeof(v21));
      v17 = static DInitConfig.== infix(_:_:)();
      memcpy(v22, v21, sizeof(v22));
      sub_1001D711C(v22);
      memcpy(v23, v9, 0x2D8uLL);
      sub_1001D711C(v23);
LABEL_9:
      sub_100013F2C(v15, &qword_1004AE260, &unk_100401630);
      return v17 & 1;
    }

    memcpy(v23, v9, 0x2D8uLL);
    sub_1001D711C(v23);
  }

  else
  {
    sub_100013E54(v15, v11, &qword_1004AE260, &unk_100401630);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001C7BF0(&v15[v16], v5);
      v17 = _s10DarwinInit17DInitConfigSourceO2eeoiySbAC_ACtFZ_0(v11, v5);
      sub_100295AB0(v5, type metadata accessor for DInitConfigSource);
      sub_100295AB0(v11, type metadata accessor for DInitConfigSource);
      goto LABEL_9;
    }

    sub_100295AB0(v11, type metadata accessor for DInitConfigSource);
  }

  sub_100013F2C(v15, &qword_1004AEDF8, &unk_100403748);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10029544C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 4)
  {
    if (v5 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 4)
    {
      return 0;
    }

    v6 = a1;
    v7 = a2;
    v8 = a3;
    v9 = _s10DarwinInit19DInitNVRAMArgumentsV2eeoiySbAC_ACtFZ_0(v4, v5);
    a3 = v8;
    a2 = v7;
    v10 = v9;
    a1 = v6;
    if (!v10)
    {
      return 0;
    }
  }

  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];

  return sub_10029514C(v12, v13);
}

uint64_t DInitNVRAMConfig.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (v3 == 4 || (Hasher._combine(_:)(1u), v3 == 3))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  type metadata accessor for DInitNVRAMConfig(0);
  return sub_1002503A0(a1);
}

Swift::Int DInitNVRAMConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitNVRAMConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100295604()
{
  Hasher.init(_seed:)();
  DInitNVRAMConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100295688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002956E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 4;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1000039E8(&qword_1004AE260, &unk_100401630);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1002957B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_1000039E8(&qword_1004AE260, &unk_100401630);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100295864(uint64_t a1)
{
  sub_1002958E8();
  if (v1 <= 0x3F)
  {
    sub_100295938(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002958E8()
{
  if (!qword_1004AEDA8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AEDA8);
    }
  }
}

void sub_100295938(uint64_t a1)
{
  if (!qword_1004AEDB0)
  {
    v2 = type metadata accessor for DInitConfigSource(255);
    v4 = type metadata accessor for Either(a1, v2, &type metadata for DInitConfig, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1004AEDB0);
    }
  }
}

unint64_t sub_1002959AC()
{
  result = qword_1004AEDE0;
  if (!qword_1004AEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEDE0);
  }

  return result;
}

unint64_t sub_100295A04()
{
  result = qword_1004AEDE8;
  if (!qword_1004AEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEDE8);
  }

  return result;
}

unint64_t sub_100295A5C()
{
  result = qword_1004AEDF0;
  if (!qword_1004AEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEDF0);
  }

  return result;
}

uint64_t sub_100295AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Log.Operation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 2003789939;
  }

  if (a1 == 1)
  {
    return 0x6D6165727473;
  }

  return 0x7463656C6C6F63;
}

uint64_t sub_100295B60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6165727473;
  if (v2 != 1)
  {
    v4 = 0x7463656C6C6F63;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2003789939;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D6165727473;
  if (*a2 != 1)
  {
    v8 = 0x7463656C6C6F63;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2003789939;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100295C54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100295CEC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100295D70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100295E04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit3LogV9OperationO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100295E34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D6165727473;
  if (v2 != 1)
  {
    v5 = 0x7463656C6C6F63;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2003789939;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100295E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100298ADC();

  return RawRepresentable<>.init(argument:)();
}

uint64_t sub_100295EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100298ADC();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_100295F50()
{
  v0 = sub_1000039E8(&qword_1004AAD78, &unk_1003F52C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Log.configuration);
  sub_1000270B4(v3, static Log.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Log.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Log.configuration);
}

uint64_t static Log.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Log.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Log.operation.getter()
{
  sub_1000039E8(&qword_1004AEE08, &qword_100403760);
  Argument.wrappedValue.getter();
  return v1;
}

uint64_t (*Log.operation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AEE08, &qword_100403760);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Log.additionalArguments.getter()
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AEE10, &qword_100403768);
  Argument.wrappedValue.getter();
  return v1;
}

uint64_t sub_100296314@<X0>(void *a1@<X8>)
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AEE10, &qword_100403768);
  result = Argument.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10029637C(uint64_t *a1)
{
  type metadata accessor for Log(0);

  sub_1000039E8(&qword_1004AEE10, &qword_100403768);
  return Argument.wrappedValue.setter();
}

uint64_t Log.additionalArguments.setter(uint64_t a1)
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AEE10, &qword_100403768);
  return Argument.wrappedValue.setter();
}

uint64_t (*Log.additionalArguments.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AEE10, &qword_100403768);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_100197120;
}

uint64_t Log.debug.getter()
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  Flag.wrappedValue.getter();
  return v1;
}

void *sub_100296534@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10029659C(char *a1)
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  return Flag.wrappedValue.setter();
}

uint64_t Log.debug.setter(char a1)
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  return Flag.wrappedValue.setter();
}

uint64_t (*Log.debug.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Log.compact.getter()
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  Flag.wrappedValue.getter();
  return v1;
}

void *sub_100296744@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002967AC(char *a1)
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  return Flag.wrappedValue.setter();
}

uint64_t Log.compact.setter(char a1)
{
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  return Flag.wrappedValue.setter();
}

uint64_t (*Log.compact.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Log.run()()
{
  sub_1000039E8(&qword_1004A6B08, &unk_100376270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376BB0;
  *(inited + 32) = 6778732;
  *(inited + 40) = 0xE300000000000000;
  sub_1000039E8(&qword_1004AEE08, &qword_100403760);
  Argument.wrappedValue.getter();
  if (__s1[0])
  {
    if (__s1[0] == 1)
    {
      v1 = 0xE600000000000000;
      v2 = 0x6D6165727473;
    }

    else
    {
      v1 = 0xE700000000000000;
      v2 = 0x7463656C6C6F63;
    }
  }

  else
  {
    v1 = 0xE400000000000000;
    v2 = 2003789939;
  }

  *(inited + 48) = v2;
  *(inited + 56) = v1;
  v27 = inited;
  Argument.wrappedValue.getter();
  if (__s1[0] <= 1u)
  {
    sub_10034A28C(&off_100488E28);
  }

  type metadata accessor for Log(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  Flag.wrappedValue.getter();
  if (__s1[0] == 1)
  {
    sub_10034A28C(&off_100488E68);
  }

  Flag.wrappedValue.getter();
  if (__s1[0] == 1)
  {
    sub_10034A28C(&off_100488EA8);
  }

  v3 = *(v27 + 16);
  v22 = v27;
  v21 = (v27 + 40);
  while (1)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_1003110C8(0, v3, 0);
    v4 = v26;
    if (v3)
    {
      break;
    }

LABEL_28:
    *__s1 = v4;
    sub_10034A1A0(&off_100488EE8);
    v13 = *__s1;
    if (!*(*__s1 + 16))
    {
      goto LABEL_41;
    }

    v14 = execvp(*(*__s1 + 32), (*__s1 + 32));
    v15 = *(v13 + 16);
    if (v15)
    {

      v16 = 32;
      do
      {
        v17 = *(v13 + v16);
        if (v17)
        {
          free(v17);
        }

        v16 += 8;
        --v15;
      }

      while (v15);
    }

    if (v14 != -1)
    {

      return;
    }

    v18 = errno.getter();
    if (v18 != 4)
    {
      *__s1 = v18;
      v19 = v18;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v20 = v19;

      return;
    }
  }

  v5 = 0;
  v6 = v21;
  v7 = *(v22 + 16);
  while (v7 != v5)
  {
    if (v5 >= *(v22 + 16))
    {
      goto LABEL_40;
    }

    v8 = *v6;
    if ((*v6 & 0x1000000000000000) != 0)
    {
LABEL_27:

      sub_1000039E8(&qword_1004AEE18, &qword_100403770);
      _StringGuts._slowWithCString<A>(_:)();
      goto LABEL_23;
    }

    if ((v8 & 0x2000000000000000) != 0)
    {
      *__s1 = *(v6 - 1);
      v24 = v8 & 0xFFFFFFFFFFFFFFLL;

      v9 = __s1;
    }

    else
    {
      if ((*(v6 - 1) & 0x1000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v9 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    v25 = strdup(v9);
LABEL_23:

    v10 = v25;
    v26 = v4;
    v12 = v4[2];
    v11 = v4[3];
    if (v12 >= v11 >> 1)
    {
      sub_1003110C8((v11 > 1), v12 + 1, 1);
      v4 = v26;
    }

    ++v5;
    v4[2] = v12 + 1;
    v4[v12 + 4] = v10;
    v6 += 2;
    if (v3 == v5)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

unint64_t sub_100296CF0()
{
  v1 = 0x6F6974617265706FLL;
  v2 = 0x6775626564;
  if (*v0 != 2)
  {
    v2 = 0x746361706D6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}