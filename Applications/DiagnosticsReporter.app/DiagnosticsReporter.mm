uint64_t sub_100001904(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39[1] = a2;
  v39[2] = a3;
  v6 = type metadata accessor for FBKFeedbackForm.Question();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v39[0] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  swift_unknownObjectUnownedInit();
  sub_1000021E8(a1, v3 + 24);
  v12 = a1[3];
  v13 = a1[4];
  sub_10000224C(a1, v12);
  (*(v13 + 24))(v12, v13);
  v14 = String.lowercased()();

  strcpy(v42, "framework-");
  BYTE3(v42[1]) = 0;
  HIDWORD(v42[1]) = -369098752;
  String.append(_:)(v14);

  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v42, "ios-framework-");
  HIBYTE(v42[1]) = -18;
  String.append(_:)(v14);
  v15 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());

  v16 = FBKFeedbackForm.init(identifier:)();
  v17 = a1[3];
  v18 = a1[4];
  sub_10000224C(a1, v17);
  if ((*(v18 + 24))(v17, v18) == 0x63696E6150 && v19 == 0xE500000000000000)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  String.LocalizationValue.init(_:)();
  static Locale.current.getter();
  if ((String.init(localized:defaultValue:table:bundle:locale:comment:)() != 0x7865546C6167654CLL || v21 != 0xEE00726F72724574) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    dispatch thunk of FBKFeedbackForm.localizedAttachmentLegalText.setter();
LABEL_10:
    v22 = a1[3];
    v23 = a1[4];
    sub_10000224C(a1, v22);
    (*(v23 + 32))(v22, v23);
    dispatch thunk of FBKFeedbackForm.attachments.setter();
    v25 = v40;
    v24 = v41;
    v26 = *(v40 + 104);
    v26(v8, enum case for FBKFeedbackForm.Question.title(_:), v41);
    dispatch thunk of FBKFeedbackForm.prefill(question:answer:)();

    v27 = *(v25 + 8);
    v27(v8, v24);
    if (sub_1000018B8())
    {
      strcpy(v8, ":is_internal");
      v8[13] = 0;
      *(v8 + 7) = -5120;
      v26(v8, enum case for FBKFeedbackForm.Question.custom(_:), v24);
      dispatch thunk of FBKFeedbackForm.prefill(question:answer:)();
      v27(v8, v24);
    }

    v28 = objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
    v29 = v16;
    v30 = FBKFeedbackDraftViewController.init(feedbackForm:)();
    *(v3 + 16) = v30;
    v31 = v30;

    dispatch thunk of FBKFeedbackDraftViewController.delegate.setter();

    sub_100002E20(a1);
    return v4;
  }

  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v42[0] = 0xD000000000000029;
  v42[1] = 0x800000010000DF80;
  v33 = String._bridgeToObjectiveC()();
  v34 = MGGetStringAnswer();

  if (!v34)
  {
    __break(1u);
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000217C()
{
  sub_100002E20((v0 + 24));
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000021E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000224C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100002290(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002DA0(v6, qword_10001A458);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_100009110(a1, a2, v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Controller complete with ID: %{public}s", v9, 0xCu);
    sub_100002E20(v10);
  }

  sub_1000021E8(v3 + 24, v14);
  v11 = sub_100004C6C(&_swiftEmptyArrayStorage);
  sub_100005340(0, v14, v11);

  sub_100002E6C(v14, &qword_1000196C8, &unk_10000EEE0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_100002458(uint64_t a1)
{
  v2 = v1;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002DA0(v3, qword_10001A458);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136446210;
    v8 = FBKDraftError.description.getter();
    v10 = sub_100009110(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Controller failed to start, error: %{public}s", v6, 0xCu);
    sub_100002E20(v7);
  }

  sub_1000021E8(v2 + 24, v16);
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000ED90;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  FBKDraftError.description.getter();
  v12 = String._bridgeToObjectiveC()();

  *(inited + 48) = v12;
  v13 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100002E6C(inited + 32, &qword_1000196E0, &unk_10000EED0);
  sub_100005340(1u, v16, v13);

  sub_100002E6C(v16, &qword_1000196C8, &unk_10000EEE0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t sub_1000026A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002DA0(v9, qword_10001A458);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v3;
    v13 = v12;
    v27[0] = swift_slowAlloc();
    *v13 = 136380931;
    sub_100002ECC(&qword_1000196E8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_100009110(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = FBKAttachmentError.description.getter();
    v20 = sub_100009110(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Controller failed to attach, url: %{private}s error  %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    v3 = v26;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_1000021E8(v3 + 24, v27);
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000ED90;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  FBKAttachmentError.description.getter();
  v22 = String._bridgeToObjectiveC()();

  *(inited + 48) = v22;
  v23 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100002E6C(inited + 32, &qword_1000196E0, &unk_10000EED0);
  sub_100005340(2u, v27, v23);

  return sub_100002E6C(v27, &qword_1000196C8, &unk_10000EEE0);
}

void sub_100002A2C()
{
  v1 = v0;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DA0(v2, qword_10001A458);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Controller cancelled.", v5, 2u);
  }

  sub_1000021E8(v1 + 24, v9);
  v6 = sub_100004C6C(&_swiftEmptyArrayStorage);
  sub_100005340(6u, v9, v6);

  sub_100002E6C(v9, &qword_1000196C8, &unk_10000EEE0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_100002B84(void *a1)
{
  v2 = v1;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002DA0(v4, qword_10001A458);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    type metadata accessor for FBKSubmissionError();
    sub_100002ECC(&qword_1000196D0, &type metadata accessor for FBKSubmissionError, &protocol conformance descriptor for FBKSubmissionError);
    v10 = Error.localizedDescription.getter();
    v12 = sub_100009110(v10, v11, v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to submit feedback.%s", v8, 0xCu);
    sub_100002E20(v9);
  }

  sub_1000021E8(v2 + 24, v16);
  v13 = sub_100004C6C(&_swiftEmptyArrayStorage);
  sub_100005340(1u, v16, v13);

  sub_100002E6C(v16, &qword_1000196C8, &unk_10000EEE0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t sub_100002DA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002DD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002E20(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002E6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002DD8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100002F14(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v58 = a3;
  v4 = sub_100002DD8(&qword_1000196F0, &qword_10000EE28);
  v5 = __chkstk_darwin(v4 - 8);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v55 = &v54 - v8;
  v9 = __chkstk_darwin(v7);
  v54 = &v54 - v10;
  __chkstk_darwin(v9);
  v12 = &v54 - v11;
  v13 = sub_100002DD8(&qword_1000196F8, &qword_10000EE30);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_100002DD8(&qword_100019700, qword_10000F1C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v54 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v54 - v24;
  v26 = &a2[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  swift_beginAccess();
  if (!*(v26 + 1))
  {
    goto LABEL_4;
  }

  URL.init(fileURLWithPath:)();

  sub_1000036EC(v23, v18);
  v27 = *(v20 + 8);
  v27(v23, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100002E6C(v18, &qword_100019700, qword_10000F1C0);
LABEL_4:
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100002DA0(v28, qword_10001A458);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Invalid log_path.", v31, 2u);
    }

LABEL_9:
    v32 = v58;
    *(v58 + 32) = 0;
    *v32 = 0u;
    v32[1] = 0u;
    return;
  }

  (*(v20 + 32))(v25, v18, v19);
  v33 = v57;
  if (v57 <= 1)
  {
    if (!v57)
    {
      sub_100009E54(0, a2, v15);
      v46 = type metadata accessor for PanicLog(0);
      if ((*(*(v46 - 8) + 48))(v15, 1, v46) == 1)
      {
        v27(v25, v19);
        v38 = &qword_1000196F8;
        v39 = &qword_10000EE30;
        v40 = v15;
        goto LABEL_26;
      }

      v53 = v58;
      *(v58 + 24) = v46;
      v53[4] = &off_100014C68;
      v43 = sub_100003F30(v53);
      v44 = type metadata accessor for PanicLog;
      v45 = v15;
      goto LABEL_34;
    }

    if (v57 == 1)
    {
      (*(v20 + 16))(v23, v25, v19);
      v34 = v54;
      v35 = v54;
      v36 = 3;
      goto LABEL_21;
    }

LABEL_27:
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100002DA0(v48, qword_10001A458);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v49, v50, "Invalid Log Type %ld", v51, 0xCu);
    }

    v27(v25, v19);
    goto LABEL_9;
  }

  if (v57 != 2)
  {
    if (v57 == 3)
    {
      (*(v20 + 16))(v23, v25, v19);
      v34 = v55;
      v35 = v55;
      v36 = 1;
      goto LABEL_21;
    }

    if (v57 == 4)
    {
      (*(v20 + 16))(v23, v25, v19);
      v34 = v56;
      v35 = v56;
      v36 = 2;
LABEL_21:
      sub_100005D20(v36, v23, v35);
      v41 = type metadata accessor for CrashLog(0);
      if ((*(*(v41 - 8) + 48))(v34, 1, v41) == 1)
      {
        v27(v25, v19);
        v38 = &qword_1000196F0;
        v39 = &qword_10000EE28;
        v40 = v34;
        goto LABEL_26;
      }

      v42 = v58;
      *(v58 + 24) = v41;
      v42[4] = &off_100014AD0;
      v43 = sub_100003F30(v42);
      v44 = type metadata accessor for CrashLog;
      v45 = v34;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  (*(v20 + 16))(v23, v25, v19);
  sub_100005D20(0, v23, v12);
  v37 = type metadata accessor for CrashLog(0);
  if ((*(*(v37 - 8) + 48))(v12, 1, v37) == 1)
  {
    v27(v25, v19);
    v38 = &qword_1000196F0;
    v39 = &qword_10000EE28;
    v40 = v12;
LABEL_26:
    sub_100002E6C(v40, v38, v39);
    v47 = v58;
    *v58 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0;
    return;
  }

  v52 = v58;
  *(v58 + 24) = v37;
  v52[4] = &off_100014AD0;
  v43 = sub_100003F30(v52);
  v44 = type metadata accessor for CrashLog;
  v45 = v12;
LABEL_34:
  sub_100003F94(v45, v43, v44);
  v27(v25, v19);
}

uint64_t sub_1000036EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_100002DD8(&qword_100019700, qword_10000F1C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v45 = [objc_opt_self() defaultManager];
  v16 = URL.checkResourceIsReachable()();
  if (!v17)
  {
    if (v16)
    {
      URL.resolvingSymlinksInPath()();
      URL.path.getter();
      v18 = String._bridgeToObjectiveC()();

      v19 = v45;
      v20 = [v45 fileExistsAtPath:v18];

      if (v20)
      {
        URL.path.getter();
        v21 = String._bridgeToObjectiveC()();

        v22 = [v19 isReadableFileAtPath:v21];

        if (v22)
        {

          v23 = v44;
          (*(v7 + 32))(v44, v15, v6);
LABEL_16:
          v41 = 0;
          return (*(v7 + 56))(v23, v41, 1, v6);
        }

        v46 = 0;
        v47 = 0xE000000000000000;
        _StringGuts.grow(_:)(26);

        v24 = 0x800000010000E280;
        v25 = 0xD000000000000018;
      }

      else
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v24 = 0x800000010000E260;
        v25 = 0xD000000000000016;
      }

      v46 = v25;
      v47 = v24;
      v26._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v26);

      sub_100004054(v46, v47);

      swift_willThrow();
      (*(v7 + 8))(v15, v6);
    }

    else
    {
      sub_100004054(0xD000000000000018, 0x800000010000E240);
      swift_willThrow();
    }
  }

  sub_100003CF0(v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {

    v40 = *(v7 + 32);
    v40(v13, v5, v6);
    v23 = v44;
    v40(v44, v13, v6);
    goto LABEL_16;
  }

  sub_100002E6C(v5, &qword_100019700, qword_10000F1C0);
  if (qword_100019510 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100002DA0(v27, qword_10001A440);
  (*(v7 + 16))(v10, a1, v6);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46 = v31;
    *v30 = 136446466;
    sub_100003FFC(v31, v32);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v7 + 8))(v10, v6);
    v36 = sub_100009110(v33, v35, &v46);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2082;
    swift_getErrorValue();
    v37 = Error.localizedDescription.getter();
    v39 = sub_100009110(v37, v38, &v46);

    *(v30 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Error accessing %{public}s. %{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v41 = 1;
  v23 = v44;
  return (*(v7 + 56))(v23, v41, 1, v6);
}

uint64_t sub_100003CF0@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - v9;
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  URL.deletingLastPathComponent()();
  URL.appendingPathComponent(_:isDirectory:)();
  v13 = *(v4 + 8);
  v13(v7, v3);
  URL.lastPathComponent.getter();
  URL.appendingPathComponent(_:)();

  v13(v10, v3);
  v14 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    (*(v4 + 32))(a2, v12, v3);
    v17 = 0;
  }

  else
  {
    v13(v12, v3);
    v17 = 1;
  }

  return (*(v4 + 56))(a2, v17, 1, v3);
}

uint64_t *sub_100003F30(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100003FFC(uint64_t a1, uint64_t a2)
{
  result = qword_1000196E8;
  if (!qword_1000196E8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000196E8);
  }

  return result;
}

id sub_100004054(uint64_t a1, uint64_t a2)
{
  sub_100002DD8(&qword_100019708, &qword_10000EE38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000ED90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_100004E78(inited);
  swift_setDeallocating();
  sub_100002E6C(inited + 32, &qword_100019710, &qword_10000EE40);
  v6 = objc_allocWithZone(NSError);
  v7 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithDomain:v7 code:1 userInfo:isa];

  return v9;
}

uint64_t sub_1000041A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = sub_1000049EC(&v32), (v5 & 1) == 0))
  {
    sub_100004A30(&v32);
    goto LABEL_9;
  }

  sub_100004D70(*(a1 + 56) + 32 * v4, v35);
  sub_100004A30(&v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100002DA0(v8, qword_10001A458);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v32 = v12;
      *v11 = 136315138;
      v13 = Dictionary.description.getter();
      v15 = sub_100009110(v13, v14, &v32);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Missing or malformed options in launch parameters: %s", v11, 0xCu);
      sub_100002E20(v12);
    }

    goto LABEL_19;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v6 = sub_1000049EC(&v32), (v7 & 1) == 0))
  {
    sub_100004A30(&v32);
    goto LABEL_14;
  }

  sub_100004D70(*(a1 + 56) + 32 * v6, v35);
  sub_100004A30(&v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100002DA0(v16, qword_10001A458);

    v9 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v32 = v19;
      *v18 = 136315138;
      v20 = Dictionary.description.getter();
      v22 = sub_100009110(v20, v21, &v32);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v17, "Missing or malformed type in launch parameters: %s", v18, 0xCu);
      sub_100002E20(v19);
    }

    goto LABEL_18;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for DiagnosticsReporterLaunchOptions();
  sub_100004E20();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v26 = v32;
  v27 = sub_100008688(0x65707974uLL);
  if (v28)
  {
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100002DA0(v29, qword_10001A458);
    v9 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = 1701869940;
      _os_log_impl(&_mh_execute_header, v9, v30, "Log type value does not match a know type: %ld", v31, 0xCu);
    }

LABEL_18:
    sub_100004DCC(0x736E6F6974706FLL, 0xE700000000000000);
LABEL_19:

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_20;
  }

  sub_100002F14(v27, v26, &v32);

  sub_100004DCC(0x736E6F6974706FLL, 0xE700000000000000);
  sub_100004A84(&v36);
  v36 = v32;
  v37 = v33;
  v38 = v34;
  sub_100004FA8(&v36, a2, &qword_1000196C8, &unk_10000EEE0);
LABEL_20:
  sub_100004FA8(&v36, &v32, &qword_1000196C8, &unk_10000EEE0);
  if (*(&v33 + 1))
  {
    sub_100004A84(&v36);
    v23 = &v32;
  }

  else
  {
    sub_100004A84(&v32);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v24 = sub_100004C6C(&_swiftEmptyArrayStorage);
    sub_100005340(3u, &v32, v24);

    sub_100004A84(&v32);
    v23 = &v36;
  }

  return sub_100004A84(v23);
}

void *sub_100004924(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100004944@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_100004974(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100004AEC(a1, a2, v4);
}

unint64_t sub_1000049EC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004BA4(a1, v4);
}

uint64_t sub_100004A84(uint64_t a1)
{
  v2 = sub_100002DD8(&qword_1000196C8, &unk_10000EEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100004BA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005020(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100004A30(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100004C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002DD8(&qword_100019728, qword_10000EE50);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100004974(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100004D70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004DCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100004E20()
{
  result = qword_100019718;
  if (!qword_100019718)
  {
    type metadata accessor for DiagnosticsReporterLaunchOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019718);
  }

  return result;
}

unint64_t sub_100004E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002DD8(&qword_100019720, &qword_10000EE48);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004FA8(v4, &v13, &qword_100019710, &qword_10000EE40);
      v5 = v13;
      v6 = v14;
      result = sub_100004974(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005010(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100004FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002DD8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100005010(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Int sub_10000509C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002DD8(&qword_100019728, qword_10000EE50);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100005340(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 32) = 0x737574617473;
  *(inited + 16) = xmmword_10000ED90;
  *(inited + 40) = 0xE600000000000000;
  v5 = String._bridgeToObjectiveC()();

  *(inited + 48) = v5;
  v6 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100005BFC(inited + 32);
  if (*(a2 + 24))
  {
    sub_100005CB0(a2, v110);
    v7 = v111;
    if (!v111)
    {
      goto LABEL_87;
    }

    v8 = v112;
    sub_10000224C(v110, v111);
    v9 = (*(v8 + 56))(v7, v8);
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v105 = v9;

    v15 = 0;
    while (v13)
    {
      v18 = v15;
LABEL_14:
      v19 = __clz(__rbit64(v13)) | (v18 << 6);
      v20 = (*(v105 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v105 + 56) + 8 * v19);

      v108 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_100004974(v22, v21);
      v27 = *(v6 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_82;
      }

      v31 = v26;
      if (*(v6 + 24) >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v6;
        }

        else
        {
          v98 = v25;
          sub_100002DD8(&qword_100019728, qword_10000EE50);
          v37 = static _DictionaryStorage.copy(original:)();
          v32 = v37;
          if (*(v6 + 16))
          {
            v38 = (v37 + 64);
            v39 = (v6 + 64);
            v40 = ((1 << *(v32 + 32)) + 63) >> 6;
            if (v32 != v6 || v38 >= &v39[8 * v40])
            {
              memmove(v38, v39, 8 * v40);
            }

            v41 = 0;
            *(v32 + 16) = *(v6 + 16);
            v42 = 1 << *(v6 + 32);
            if (v42 < 64)
            {
              v43 = ~(-1 << v42);
            }

            else
            {
              v43 = -1;
            }

            v44 = v43 & *(v6 + 64);
            v45 = (v42 + 63) >> 6;
            v99 = v45;
            if (v44)
            {
              do
              {
                v46 = __clz(__rbit64(v44));
                v103 = (v44 - 1) & v44;
LABEL_37:
                v49 = v46 | (v41 << 6);
                v50 = (*(v6 + 48) + 16 * v49);
                v51 = v50[1];
                v101 = *(*(v6 + 56) + 8 * v49);
                v52 = (*(v32 + 48) + 16 * v49);
                *v52 = *v50;
                v52[1] = v51;
                *(*(v32 + 56) + 8 * v49) = v101;

                v53 = v101;
                v45 = v99;
                v44 = v103;
              }

              while (v103);
            }

            v47 = v41;
            while (1)
            {
              v41 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_86;
              }

              if (v41 >= v45)
              {
                break;
              }

              v48 = *(v6 + 64 + 8 * v41);
              ++v47;
              if (v48)
              {
                v46 = __clz(__rbit64(v48));
                v103 = (v48 - 1) & v48;
                goto LABEL_37;
              }
            }
          }

          v25 = v98;
        }
      }

      else
      {
        sub_10000509C(v30, isUniquelyReferenced_nonNull_native);
        v32 = v6;
        v25 = sub_100004974(v22, v21);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_88;
        }
      }

      v13 &= v13 - 1;
      if (v31)
      {
        v16 = *(v32 + 56);
        v17 = *(v16 + 8 * v25);
        *(v16 + 8 * v25) = v108;
      }

      else
      {
        *(v32 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v34 = (*(v32 + 48) + 16 * v25);
        *v34 = v22;
        v34[1] = v21;
        *(*(v32 + 56) + 8 * v25) = v108;
        v35 = *(v32 + 16);
        v29 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v29)
        {
          goto LABEL_84;
        }

        *(v32 + 16) = v36;
      }

      v15 = v18;
      v6 = v32;
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        sub_100002E20(v110);
        goto LABEL_41;
      }

      v13 = *(v10 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_41:
    v54 = 1 << *(a3 + 32);
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v56 = v55 & *(a3 + 64);
    v57 = (v54 + 63) >> 6;

    v58 = 0;
    while (v56)
    {
      v61 = v58;
LABEL_52:
      v62 = __clz(__rbit64(v56)) | (v61 << 6);
      v63 = (*(a3 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      v66 = *(*(a3 + 56) + 8 * v62);

      v109 = v66;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v6;
      v68 = sub_100004974(v65, v64);
      v70 = *(v6 + 16);
      v71 = (v69 & 1) == 0;
      v29 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v29)
      {
        goto LABEL_81;
      }

      v73 = v69;
      if (*(v6 + 24) >= v72)
      {
        if (v67)
        {
          v74 = v6;
        }

        else
        {
          v100 = v68;
          sub_100002DD8(&qword_100019728, qword_10000EE50);
          v79 = static _DictionaryStorage.copy(original:)();
          v74 = v79;
          if (*(v6 + 16))
          {
            v80 = (v79 + 64);
            v81 = (v6 + 64);
            v82 = ((1 << *(v74 + 32)) + 63) >> 6;
            if (v74 != v6 || v80 >= &v81[8 * v82])
            {
              memmove(v80, v81, 8 * v82);
            }

            v83 = 0;
            *(v74 + 16) = *(v6 + 16);
            v84 = 1 << *(v6 + 32);
            if (v84 < 64)
            {
              v85 = ~(-1 << v84);
            }

            else
            {
              v85 = -1;
            }

            v86 = v85 & *(v6 + 64);
            v87 = (v84 + 63) >> 6;
            v102 = v87;
            if (v86)
            {
              do
              {
                v88 = __clz(__rbit64(v86));
                v106 = (v86 - 1) & v86;
LABEL_75:
                v91 = v88 | (v83 << 6);
                v92 = (*(v6 + 48) + 16 * v91);
                v93 = v92[1];
                v104 = *(*(v6 + 56) + 8 * v91);
                v94 = (*(v74 + 48) + 16 * v91);
                *v94 = *v92;
                v94[1] = v93;
                *(*(v74 + 56) + 8 * v91) = v104;

                v95 = v104;
                v87 = v102;
                v86 = v106;
              }

              while (v106);
            }

            v89 = v83;
            while (1)
            {
              v83 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_85;
              }

              if (v83 >= v87)
              {
                break;
              }

              v90 = *(v6 + 64 + 8 * v83);
              ++v89;
              if (v90)
              {
                v88 = __clz(__rbit64(v90));
                v106 = (v90 - 1) & v90;
                goto LABEL_75;
              }
            }
          }

          v68 = v100;
        }
      }

      else
      {
        sub_10000509C(v72, v67);
        v74 = v110[0];
        v68 = sub_100004974(v65, v64);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_88;
        }
      }

      v56 &= v56 - 1;
      if (v73)
      {
        v59 = *(v74 + 56);
        v60 = *(v59 + 8 * v68);
        *(v59 + 8 * v68) = v109;
      }

      else
      {
        *(v74 + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v76 = (*(v74 + 48) + 16 * v68);
        *v76 = v65;
        v76[1] = v64;
        *(*(v74 + 56) + 8 * v68) = v109;
        v77 = *(v74 + 16);
        v29 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v29)
        {
          goto LABEL_83;
        }

        *(v74 + 16) = v78;
      }

      v58 = v61;
      v6 = v74;
    }

    while (1)
    {
      v61 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v61 >= v57)
      {

        v96 = String._bridgeToObjectiveC()();
        sub_100005C64();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        AnalyticsSendEvent();

        return;
      }

      v56 = *(a3 + 64 + 8 * v61);
      ++v58;
      if (v56)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100005BFC(uint64_t a1)
{
  v2 = sub_100002DD8(&qword_1000196E0, &unk_10000EED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005C64()
{
  result = qword_100019730;
  if (!qword_100019730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019730);
  }

  return result;
}

uint64_t sub_100005CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002DD8(&qword_1000196C8, &unk_10000EEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005D20@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = a1;
  v6 = type metadata accessor for URL();
  v74 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v65 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v68 = &v60[-v10];
  v11 = type metadata accessor for CrashLog(0);
  v72 = *(v11 - 1);
  v12 = __chkstk_darwin(v11);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (v14 + *(v12 + 32));
  *v15 = 0x6873617243;
  v15[1] = 0xE500000000000000;
  if (v5 == 4)
  {
    v16 = 3;
  }

  else
  {
    v16 = a1;
  }

  *(v14 + 16) = v16;
  v17 = *(v7 + 16);
  v66 = *(v12 + 28);
  (v17)(v14 + v66, a2, v6);
  sub_100002DD8(&qword_100019738, &qword_10000EF00);
  v70 = v7;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10000ED90;
  v71 = a2;
  v67 = v17;
  (v17)(v19 + v18, a2, v6);
  v20 = v11[9];
  v64 = v19;
  *(v14 + v20) = v19;
  v69 = sub_100004E78(&_swiftEmptyArrayStorage);
  if (!v16)
  {
    goto LABEL_9;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v22 = &off_100014D88;
  v23 = &type metadata for CriticalPolicy;
  if (v21)
  {
    goto LABEL_10;
  }

  if (v16 == 1)
  {
LABEL_9:

    v22 = &off_100014D88;
    v23 = &type metadata for CriticalPolicy;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      v23 = &type metadata for DefaultPolicy;
      v22 = &off_100014A08;
    }
  }

LABEL_10:
  v25 = v67;
  *(&v78 + 1) = v23;
  v79 = v22;
  v26 = v11[11];
  sub_100006E2C(&v77, &v26[v14]);
  type metadata accessor for IPSReport();
  v27 = v71;
  v28 = v74;
  (v25)(v68, v71, v74);
  if (IPSReport.__allocating_init(reportPath:)())
  {
    v68 = v11;
    v29 = v11[10];
    v30 = dispatch thunk of IPSReport.headerJson.getter();

    *(v14 + v29) = v30;
    *v14 = dispatch thunk of IPSReport.body.getter();
    *(v14 + 8) = v31;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v35 = __DataStorage.init(capacity:)();
    v77 = 0uLL;
    v36 = __chkstk_darwin(v35);
    *&v60[-48] = v27;
    *&v60[-40] = v32;
    *&v60[-32] = v34;
    *&v60[-24] = 128;
    *&v60[-16] = &v77;
    v75 = 0;
    v76 = v36;
    sub_100006D50(sub_100006E44);

    v37 = *(&v77 + 1);
    if (*(&v77 + 1))
    {
      v38 = v77;

      (*(v70 + 8))(v27, v74);
    }

    else
    {
      v51 = v74;
      if (*(v30 + 16) && (v52 = sub_100004974(1701667182, 0xE400000000000000), (v53 & 1) != 0))
      {
        sub_100004D70(*(v30 + 56) + 32 * v52, &v77);
      }

      else
      {

        v77 = 0u;
        v78 = 0u;
      }

      (*(v70 + 8))(v27, v51);
      if (*(&v78 + 1))
      {
        v56 = swift_dynamicCast();
        if (v56)
        {
          v37 = v76;
        }

        else
        {
          v37 = 0;
        }

        if (v56)
        {
          v38 = v75;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        sub_100006E68(&v77);
        v37 = 0;
        v38 = 0;
      }
    }

    v57 = v68;
    v58 = (v14 + *(v68 + 12));
    *v58 = v38;
    v58[1] = v37;
    *(v14 + 17) = 0;
    v59 = v73;
    sub_100006ED0(v14, v73);
    (*(v72 + 56))(v59, 0, 1, v57);
    return sub_100006F34(v14);
  }

  else
  {
    v68 = v26;
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100002DA0(v39, qword_10001A458);
    v40 = v65;
    (v25)(v65, v27, v28);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v62 = v43;
      v67 = swift_slowAlloc();
      *&v77 = v67;
      *v43 = 136446210;
      v63 = v41;
      v44 = URL.absoluteString.getter();
      v46 = v45;
      v61 = v42;
      v47 = *(v70 + 8);
      v47(v40, v28);
      v48 = sub_100009110(v44, v46, &v77);

      v49 = v62;
      v50 = v63;
      *(v62 + 1) = v48;
      _os_log_impl(&_mh_execute_header, v50, v61, "Unable to read header from URL: %{public}s", v49, 0xCu);
      sub_100002E20(v67);
    }

    else
    {

      v47 = *(v70 + 8);
      v47(v40, v28);
    }

    v47(v27, v28);
    v54 = v68;
    v47((v14 + v66), v28);

    sub_100002E20(&v54[v14]);
    return (*(v72 + 56))(v73, 1, 1, v11);
  }
}

uint64_t sub_10000657C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 4541505;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x647261646E617453;
    }

    if (v3 == 2)
    {
      v5 = 0x800000010000DE80;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x61576D6574737953;
    }

    else
    {
      v4 = 4541505;
    }

    if (v3)
    {
      v5 = 0xEE00676F64686374;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xD000000000000014;
  v8 = 0x800000010000DE80;
  if (a2 != 2)
  {
    v7 = 0x647261646E617453;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x61576D6574737953;
    v6 = 0xEE00676F64686374;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000066DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000067A8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100006860(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100006928@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000075E4(*a1);
  *a2 = result;
  return result;
}

void sub_100006958(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 4541505;
  v4 = 0x800000010000DE80;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x647261646E617453;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x61576D6574737953;
    v2 = 0xEE00676F64686374;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t type metadata accessor for CrashLog(uint64_t a1)
{
  result = qword_1000197A0;
  if (!qword_1000197A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100006A2C()
{
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000EEF0;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  v2 = *(v0 + *(type metadata accessor for CrashLog(0) + 40));
  if (*(v2 + 16) && (v3 = sub_100004974(1701667182, 0xE400000000000000), (v4 & 1) != 0) && (sub_100004D70(*(v2 + 56) + 32 * v3, v12), sub_100007598(), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v11;
  }

  else
  {
    sub_100007598();
    v5 = NSString.init(stringLiteral:)();
  }

  *(inited + 48) = v5;
  *(inited + 56) = 0x746E656469636E69;
  *(inited + 64) = 0xEB0000000064695FLL;
  if (*(v2 + 16) && (v6 = sub_100004974(0x746E656469636E69, 0xEB0000000064695FLL), (v7 & 1) != 0) && (sub_100004D70(*(v2 + 56) + 32 * v6, v12), sub_100007598(), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v11;
  }

  else
  {
    sub_100007598();
    v8 = NSString.init(stringLiteral:)();
  }

  *(inited + 72) = v8;
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = String._bridgeToObjectiveC()();
  v9 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100002DD8(&qword_1000196E0, &unk_10000EED0);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_100006C4C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

unint64_t sub_100006C94()
{
  v1 = 4541505;
  v2 = 0xD000000000000014;
  if (*(v0 + 16) != 2)
  {
    v2 = 0x647261646E617453;
  }

  if (*(v0 + 16))
  {
    v1 = 0x61576D6574737953;
  }

  if (*(v0 + 16) <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100006D18(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

void sub_100006D50(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

uint64_t sub_100006E2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100006E68(uint64_t a1)
{
  v2 = sub_100002DD8(&qword_100019740, qword_10000EF08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashLog(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006F34(uint64_t a1)
{
  v2 = type metadata accessor for CrashLog(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10000707C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10000713C(uint64_t a1)
{
  sub_100007380(319, &qword_1000197B0, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_100007260(319, v2);
      if (v3 <= 0x3F)
      {
        sub_1000072B8();
        if (v4 <= 0x3F)
        {
          sub_10000731C();
          if (v5 <= 0x3F)
          {
            sub_100007380(319, &qword_1000197D0, &type metadata for String);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100007260(uint64_t a1, uint64_t a2)
{
  if (!qword_1000197B8)
  {
    type metadata accessor for URL();
    v2 = type metadata accessor for Array();
    if (!v3)
    {
      atomic_store(v2, &qword_1000197B8);
    }
  }
}

void sub_1000072B8()
{
  if (!qword_1000197C0)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000197C0);
    }
  }
}

unint64_t sub_10000731C()
{
  result = qword_1000197C8;
  if (!qword_1000197C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000197C8);
  }

  return result;
}

void sub_100007380(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CrashLog.Type(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashLog.Type(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007544()
{
  result = qword_100019820;
  if (!qword_100019820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019820);
  }

  return result;
}

unint64_t sub_100007598()
{
  result = qword_100019828;
  if (!qword_100019828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019828);
  }

  return result;
}

unint64_t sub_1000075E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100014918, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100007630(uint64_t result)
{
  if (result)
  {
    __chkstk_darwin(result);
    return URL.withUnsafeFileSystemRepresentation<A>(_:)();
  }

  return result;
}

uint64_t sub_1000076B4(const char *a1, uint64_t a2, uint64_t a3, void *a4, size_t a5, uint64_t *a6)
{
  v10 = String.utf8CString.getter();
  v11 = getxattr(a1, (v10 + 32), a4, a5, 0, 0);

  if (v11 >= 1)
  {
    *a6 = String.init(validatingUTF8:)();
    a6[1] = v13;
  }

  return result;
}

id sub_1000077B4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_100007AE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog;
  result = sub_100005CB0(&v1[OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog], v13);
  if (!v13[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_100005CB0(&v1[v2], v12);
  if (!v12[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100007F34(v12);
  v5 = v4;
  v7 = v6;
  sub_100002E20(v12);
  sub_1000021E8(v13, v12);
  type metadata accessor for FeedbackController();
  swift_allocObject();
  v8 = sub_100001904(v12, v5, v7);
  sub_100002E20(v13);
  swift_unknownObjectUnownedAssign();
  v9 = OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController;
  *&v1[OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController] = v8;

  v10 = *&v1[v9];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = [*(v10 + 16) setModalInPresentation:1];
  v11 = *&v1[v9];
  if (v11)
  {
    return [v1 presentViewController:*(v11 + 16) animated:1 completion:0];
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t Array.appendIfNotNil(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(v3 - 8);
  v10 = __chkstk_darwin(v6);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  (*(v9 + 32))(v14, v8, v3);
  (*(v9 + 16))(v12, v14, v3);
  Array.append(_:)();
  return (*(v9 + 8))(v14, v3);
}

uint64_t sub_100007E58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100007ED0(v5, a2);
  sub_100002DA0(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100007ED0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100007F34(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_10000224C(a1, v2);
  v4 = *(v3 + 24);
  if (v4(v2, v3) == 0x63696E6150 && v5 == 0xE500000000000000)
  {

    goto LABEL_20;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_20:
    v23 = String._bridgeToObjectiveC()();
    v24 = [objc_opt_self() bundleWithIdentifier:v23];

    if (v24)
    {
      v47._countAndFlagsBits = 0xD00000000000001BLL;
      v47._object = 0x800000010000E450;
      v25._countAndFlagsBits = 0x6E6150656C746954;
      v25._object = 0xED0000534F696369;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v47);

      sub_100002DD8(&qword_100019958, &qword_10000F048);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10000ED90;
      v28 = String._bridgeToObjectiveC()();
      v29 = MGGetStringAnswer();

      if (v29)
      {
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = sub_10000850C();
        *(v27 + 32) = v30;
        *(v27 + 40) = v32;
        static String.localizedStringWithFormat(_:_:)();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v4(v2, v3) == 0x6873617243 && v8 == 0xE500000000000000)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v33 = a1[3];
  v34 = a1[4];
  sub_10000224C(a1, v33);
  if ((*(v34 + 64))(v33, v34) == 4541505 && v35 == 0xE300000000000000)
  {
    goto LABEL_31;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_32;
  }

  v38 = a1[3];
  v39 = a1[4];
  sub_10000224C(a1, v38);
  if ((*(v39 + 64))(v38, v39) == 0x61576D6574737953 && v40 == 0xEE00676F64686374)
  {
LABEL_31:

    goto LABEL_32;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v45)
  {
LABEL_32:
    v41 = String._bridgeToObjectiveC()();
    v42 = [objc_opt_self() bundleWithIdentifier:v41];

    if (v42)
    {
      v43._countAndFlagsBits = 0xD000000000000010;
      v48._object = 0x800000010000E490;
      v43._object = 0x800000010000E470;
      v48._countAndFlagsBits = 0xD000000000000028;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v48);

      static String.localizedStringWithFormat(_:_:)();

      return;
    }

    goto LABEL_38;
  }

LABEL_11:
  v11 = a1[3];
  v12 = a1[4];
  sub_10000224C(a1, v11);
  v13 = (*(v12 + 72))(v11, v12);
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() bundleWithIdentifier:v16];

  if (!v17)
  {
LABEL_39:
    __break(1u);
    return;
  }

  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E55;
  }

  v46._countAndFlagsBits = 0xD00000000000001BLL;
  v46._object = 0x800000010000E450;
  v20._countAndFlagsBits = 0x617243656C746954;
  v20._object = 0xEA00000000006873;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v17, v21, v46);

  sub_100002DD8(&qword_100019958, &qword_10000F048);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10000ED90;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_10000850C();
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  static String.localizedStringWithFormat(_:_:)();
}

unint64_t sub_10000850C()
{
  result = qword_100019960;
  if (!qword_100019960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019960);
  }

  return result;
}

Swift::Int sub_100008590()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100008604(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100008648@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100008688(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_100008688(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10000869C()
{
  result = qword_100019968;
  if (!qword_100019968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019968);
  }

  return result;
}

uint64_t sub_100008700()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100002DD8(&qword_1000199A8, &qword_10000F188);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100002E6C(v5, &qword_100019740, qword_10000EF08);
    return 0;
  }
}

void sub_1000088E4(void *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002DA0(v6, qword_10001A458);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100009110(0xD00000000000001BLL, 0x800000010000E5A0, v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_100002E20(v10);
  }

  if (a1)
  {
    v11 = [a1 userInfo];
    if (v11)
    {
      v12 = v11;
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000041A4(v13, v27);

      v14 = OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog;
      swift_beginAccess();
      sub_100009DD8(v27, v2 + v14);
      swift_endAccess();
    }

    else
    {
      v15 = a1;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = a1;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Context is missing user info dictionary: %@.", v18, 0xCu);
        sub_100002E6C(v19, &qword_1000199B8, &unk_10000F1A0);
      }
    }

    v21 = OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog;
    swift_beginAccess();
    sub_100005CB0(v2 + v21, v27);
    v22 = v27[3];
    v23 = sub_100002E6C(v27, &qword_1000196C8, &unk_10000EEE0);
    if (v22)
    {
      if (a2)
      {
        a2(v23);
      }
    }

    else
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Unable to decode diagnostic log from launch parameters.", v26, 2u);
      }

      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100008F8C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100009040(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000090B4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100009110(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100009110(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000091DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004D70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002E20(v11);
  return v7;
}

unint64_t sub_1000091DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000092E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000092E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100009334(a1, a2);
  sub_100009464(&off_1000148F0);
  return v3;
}

char *sub_100009334(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009550(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009550(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009464(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000095C4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100009550(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002DD8(&qword_1000199B0, &unk_10000F190);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000095C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002DD8(&qword_1000199B0, &unk_10000F190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1000096B8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id sub_1000096C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog;
  swift_beginAccess();
  result = sub_100005CB0(&v1[v2], v13);
  if (!v13[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_100005CB0(&v1[v2], v12);
  if (!v12[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100007F34(v12);
  v5 = v4;
  v7 = v6;
  sub_100002E20(v12);
  sub_1000021E8(v13, v12);
  type metadata accessor for FeedbackController();
  swift_allocObject();
  v8 = sub_100001904(v12, v5, v7);
  sub_100002E20(v13);
  swift_unknownObjectUnownedAssign();
  v9 = OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_feedbackController;
  *&v1[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_feedbackController] = v8;

  v10 = *&v1[v9];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = [*(v10 + 16) setModalInPresentation:1];
  v11 = *&v1[v9];
  if (v11)
  {
    return [v1 presentViewController:*(v11 + 16) animated:1 completion:0];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100009A98(void (*a1)(void))
{
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DA0(v2, qword_10001A458);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100009110(0xD000000000000026, 0x800000010000E5C0, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100002E20(v6);
  }

  if (a1)
  {
    a1();
  }
}

void *sub_100009BF0()
{
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002DA0(v0, qword_10001A458);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100009110(0xD00000000000001DLL, 0x800000010000E580, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100002E20(v4);
  }

  result = sub_100008700();
  if (result)
  {
    [result invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100009D7C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009D8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002DD8(&qword_1000196C8, &unk_10000EEE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100009E54@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a3;
  v5 = sub_100002DD8(&qword_100019700, qword_10000F1C0);
  __chkstk_darwin(v5 - 8);
  v107 = &v94 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v105 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v109 = &v94 - v12;
  v13 = __chkstk_darwin(v11);
  v97 = &v94 - v14;
  v15 = __chkstk_darwin(v13);
  v103 = &v94 - v16;
  __chkstk_darwin(v15);
  v18 = &v94 - v17;
  v19 = type metadata accessor for PanicLog(0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[v21[7]];
  *v24 = 0x63696E6150;
  v24[1] = 0xE500000000000000;
  v25 = &v23[v21[10]];
  *(v25 + 3) = &type metadata for CriticalPolicy;
  *(v25 + 4) = &off_100014D88;
  v98 = v25;
  v26 = &v23[v21[11]];
  *v26 = 0;
  v26[1] = 0;
  *v23 = a1 & 1;
  v27 = sub_100004E78(&_swiftEmptyArrayStorage);
  v28 = *(v19 + 32);
  v111 = v23;
  v108 = v28;
  *&v23[v28] = &_swiftEmptyArrayStorage;
  v102 = a2;
  v29 = &a2[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  swift_beginAccess();
  v30 = *(v29 + 1);
  v100 = v20;
  if (!v30)
  {
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100002DA0(v39, qword_10001A458);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v98;
    v44 = v101;
    if (v42)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Invalid log path", v45, 2u);
    }

    goto LABEL_53;
  }

  v110 = v7;
  v96 = v27;

  v99 = v18;
  URL.init(fileURLWithPath:)();

  v31 = objc_opt_self();
  result = [v31 defaultManager];
  if (!*(v29 + 1))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v33 = result;

  v34 = String._bridgeToObjectiveC()();

  v35 = [v33 fileExistsAtPath:v34];

  v36 = v101;
  v106 = v29;
  v104 = v19;
  if (v35)
  {
    v38 = v110;
    v37 = v111;
    (*(v8 + 16))(&v111[*(v19 + 24)], v99, v110);
LABEL_17:
    v59 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
    v60 = v102;
    swift_beginAccess();
    v61 = *(*&v60[v59] + 16);
    if (v61)
    {
      v103 = (v8 + 16);
      v107 = v8 + 32;

      v62 = (v95 + 40);
      v63 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v65 = *(v62 - 1);
        v64 = *v62;

        v66 = [v31 defaultManager];
        v67 = String._bridgeToObjectiveC()();
        v68 = [v66 fileExistsAtPath:v67];

        if (v68)
        {
          URL.init(fileURLWithPath:)();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_10000AF50(0, v63[2] + 1, 1, v63);
          }

          v38 = v110;
          v37 = v111;
          v70 = v63[2];
          v69 = v63[3];
          if (v70 >= v69 >> 1)
          {
            v63 = sub_10000AF50((v69 > 1), v70 + 1, 1, v63);
          }

          v63[2] = v70 + 1;
          (*(v8 + 32))(v63 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v70, v109, v38);
        }

        else
        {
          v71 = v106[1];
          if (!v71)
          {

            v38 = v110;
            v37 = v111;
            goto LABEL_21;
          }

          v37 = v111;
          if (v65 == *v106 && v71 == v64)
          {
          }

          else
          {
            v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v72 & 1) == 0)
            {
              v38 = v110;
              goto LABEL_21;
            }
          }

          v38 = v110;
          (*v103)(v105, v37 + *(v104 + 24), v110);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_10000AF50(0, v63[2] + 1, 1, v63);
          }

          v74 = v63[2];
          v73 = v63[3];
          if (v74 >= v73 >> 1)
          {
            v63 = sub_10000AF50((v73 > 1), v74 + 1, 1, v63);
          }

          v63[2] = v74 + 1;
          (*(v8 + 32))(v63 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v74, v105, v38);
        }

        *(v37 + v108) = v63;
LABEL_21:
        v62 += 2;
        if (!--v61)
        {

          v44 = v101;
          goto LABEL_41;
        }
      }
    }

    v44 = v36;
LABEL_41:
    type metadata accessor for IPSReport();
    v75 = v104;
    v76 = *(v104 + 24);
    (*(v8 + 16))(v97, &v76[v37], v38);
    v77 = IPSReport.__allocating_init(reportPath:)();
    v78 = v106;
    if (v77)
    {
      v79 = v37;
      v80 = *(v75 + 36);
      v81 = dispatch thunk of IPSReport.headerJson.getter();

      (*(v8 + 8))(v99, v38);

      *(v79 + v80) = v81;
      *(v79 + 1) = 0;
      sub_10000B1DC(v79, v44);
      (*(v100 + 56))(v44, 0, 1, v75);
      return sub_10000B240(v79);
    }

    v109 = v76;
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_100002DA0(v82, qword_10001A458);
    v83 = v102;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    LODWORD(v108) = v85;
    if (!os_log_type_enabled(v84, v85))
    {

      v93 = *(v8 + 8);
      v93(v99, v38);
      v19 = v104;
      v89 = v109;
      goto LABEL_49;
    }

    v86 = swift_slowAlloc();
    result = swift_slowAlloc();
    v112 = result;
    *v86 = 136446210;
    v87 = v78;
    v88 = v78[1];
    v89 = v109;
    if (v88)
    {
      v90 = result;
      v91 = *v87;

      v92 = sub_100009110(v91, v88, &v112);

      *(v86 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v84, v108, "Unable to read header from URL: %{public}s", v86, 0xCu);
      sub_100002E20(v90);

      v93 = *(v8 + 8);
      v38 = v110;
      v93(v99, v110);
      v19 = v104;
      v37 = v111;
LABEL_49:
      v93(&v89[v37], v38);

LABEL_51:

      goto LABEL_52;
    }

    goto LABEL_55;
  }

  v46 = v107;
  sub_100003CF0(v107);
  v38 = v110;
  if ((*(v8 + 48))(v46, 1, v110) != 1)
  {
    v57 = *(v8 + 32);
    v58 = v103;
    v57(v103, v46, v38);
    v37 = v111;
    v57(&v111[*(v19 + 24)], v58, v38);
    goto LABEL_17;
  }

  sub_10000B174(v46);
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100002DA0(v47, qword_10001A458);
  v48 = v102;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  v44 = v36;
  if (!os_log_type_enabled(v49, v50))
  {

    (*(v8 + 8))(v99, v38);
    goto LABEL_51;
  }

  v51 = v19;
  v52 = swift_slowAlloc();
  result = swift_slowAlloc();
  v113[0] = result;
  *v52 = 136446210;
  v53 = v106[1];
  if (v53)
  {
    v54 = result;
    v55 = *v106;

    v56 = sub_100009110(v55, v53, v113);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "Failed reading from URL: %{public}s and retired path.", v52, 0xCu);
    sub_100002E20(v54);

    (*(v8 + 8))(v99, v110);

    v19 = v51;
LABEL_52:
    v43 = v98;
LABEL_53:
    sub_100002E20(v43);
    return (*(v100 + 56))(v44, 1, 1, v19);
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_10000AA80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79616C70736944;
  }

  else
  {
    v3 = 1953722184;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x79616C70736944;
  }

  else
  {
    v5 = 1953722184;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10000AB20()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000AB9C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000AC04(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000AC7C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100014998, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10000ACDC(uint64_t *a1@<X8>)
{
  v2 = 1953722184;
  if (*v1)
  {
    v2 = 0x79616C70736944;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10000AD14()
{
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F1B0;
  *(inited + 32) = 0x746E656469636E69;
  *(inited + 40) = 0xEB0000000064695FLL;
  v2 = *(v0 + *(type metadata accessor for PanicLog(0) + 36));
  if (*(v2 + 16) && (v3 = sub_100004974(0x746E656469636E69, 0xEB0000000064695FLL), (v4 & 1) != 0) && (sub_100004D70(*(v2 + 56) + 32 * v3, v9), sub_100007598(), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v8;
  }

  else
  {
    sub_100007598();
    v5 = NSString.init(stringLiteral:)();
  }

  *(inited + 48) = v5;
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = String._bridgeToObjectiveC()();
  v6 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100002DD8(&qword_1000196E0, &unk_10000EED0);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_10000AE9C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_10000AEE4()
{
  if (*v0)
  {
    return 0x79616C70736944;
  }

  else
  {
    return 1953722184;
  }
}

uint64_t sub_10000AF18(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

void *sub_10000AF50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002DD8(&qword_100019738, &qword_10000EF00);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for PanicLog(uint64_t a1)
{
  result = qword_100019A18;
  if (!qword_100019A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B174(uint64_t a1)
{
  v2 = sub_100002DD8(&qword_100019700, qword_10000F1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PanicLog(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B240(uint64_t a1)
{
  v2 = type metadata accessor for PanicLog(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10000B388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10000B448(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    sub_100007260(319, v2);
    if (v3 <= 0x3F)
    {
      sub_1000072B8();
      if (v4 <= 0x3F)
      {
        sub_10000731C();
        if (v5 <= 0x3F)
        {
          sub_10000B534();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000B534()
{
  if (!qword_1000197D0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000197D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for PanicLog.Type(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PanicLog.Type(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000B6E4()
{
  result = qword_100019A68;
  if (!qword_100019A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019A68);
  }

  return result;
}

id DiagnosticsReporterLaunchOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DiagnosticsReporterLaunchOptions.files_to_attach.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10000B9F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10000BA84(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_10000BAE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_10000BB6C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id DiagnosticsReporterLaunchOptions.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach] = &_swiftEmptyArrayStorage;
  v2 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string];
  v4 = type metadata accessor for DiagnosticsReporterLaunchOptions();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

Swift::Int sub_10000BD48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000BDBC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000BE00()
{
  v1 = 0x687461705F676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x74735F63696E6170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F745F73656C6966;
  }
}

uint64_t sub_10000BE70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000C9D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000BEB0(uint64_t a1)
{
  v2 = sub_10000C264();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000BEEC(uint64_t a1)
{
  v2 = sub_10000C264();

  return CodingKey.debugDescription.getter(a1, v2);
}

id DiagnosticsReporterLaunchOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsReporterLaunchOptions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t DiagnosticsReporterLaunchOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100002DD8(&qword_100019A88, &qword_10000F2B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000224C(a1, a1[3]);
  sub_10000C264();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v13 = *(v3 + v9);
  v12 = 0;
  sub_100002DD8(&qword_100019A98, &qword_10000F2B8);
  sub_10000C698(&qword_100019AA0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v12 = 1;

  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

  swift_beginAccess();
  v11[7] = 2;

  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
}

unint64_t sub_10000C264()
{
  result = qword_100019A90;
  if (!qword_100019A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019A90);
  }

  return result;
}

uint64_t sub_10000C2B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *DiagnosticsReporterLaunchOptions.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_100002DD8(&qword_100019AA8, &qword_10000F2C0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v25 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  *&v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach] = &_swiftEmptyArrayStorage;
  v8 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string];
  *v9 = 0;
  v9[1] = 0;
  v30 = v9;
  sub_10000224C(a1, a1[3]);
  sub_10000C264();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002E20(a1);

    type metadata accessor for DiagnosticsReporterLaunchOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100002DD8(&qword_100019A98, &qword_10000F2B8);
    v29 = 0;
    sub_10000C698(&qword_100019AB0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v10 = v7;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v28;
    v12 = v25;
    swift_beginAccess();
    *&v3[v12] = v11;

    LOBYTE(v28) = 1;
    v13 = v24;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    swift_beginAccess();
    *v8 = v14;
    v8[1] = v16;

    v27 = 2;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = v19;
    v21 = v30;
    swift_beginAccess();
    *v21 = v18;
    v21[1] = v20;

    v22 = type metadata accessor for DiagnosticsReporterLaunchOptions();
    v26.receiver = v3;
    v26.super_class = v22;
    v3 = objc_msgSendSuper2(&v26, "init");
    (*(v23 + 8))(v10, v13);
    sub_100002E20(a1);
  }

  return v3;
}

uint64_t sub_10000C698(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C2B8(&qword_100019A98, &qword_10000F2B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_10000C704@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for DiagnosticsReporterLaunchOptions());
  result = DiagnosticsReporterLaunchOptions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagnosticsReporterLaunchOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiagnosticsReporterLaunchOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C8D0()
{
  result = qword_100019AE0;
  if (!qword_100019AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AE0);
  }

  return result;
}

unint64_t sub_10000C928()
{
  result = qword_100019AE8;
  if (!qword_100019AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AE8);
  }

  return result;
}

unint64_t sub_10000C980()
{
  result = qword_100019AF0;
  if (!qword_100019AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AF0);
  }

  return result;
}

uint64_t sub_10000C9D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F745F73656C6966 && a2 == 0xEF6863617474615FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x687461705F676F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74735F63696E6170 && a2 == 0xEC000000676E6972)
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

uint64_t sub_10000CB0C()
{
  sub_100002E20((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}