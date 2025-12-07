void sub_100001E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001E30(uint64_t a1)
{
  sub_100001E88();
  result = objc_getClass("TVRViewServiceConfigContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100016E38();
  }

  qword_100026600 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100001E88()
{
  v1[0] = 0;
  if (!qword_100026608)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100001F84;
    v1[4] = &unk_100020AC0;
    v1[5] = v1;
    v2 = off_100020AA8;
    v3 = 0;
    qword_100026608 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100026608)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100001F84(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100026608 = result;
  return result;
}

Class sub_100001FF8(uint64_t a1)
{
  sub_100001E88();
  result = objc_getClass("TVRViewServiceManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100016E60();
  }

  qword_100026610 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002050()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026620);
  v1 = sub_100003F94(v0, qword_100026620);
  v2 = sub_100005D50();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100002138(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000021A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100002244;
}

void sub_100002244(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1000022CC()
{
  v1 = (v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_deviceIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100002324(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_deviceIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000023F4()
{
  v1 = (v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_deviceModelCode);
  swift_beginAccess();
  return *v1 | (v1[1] << 8);
}

uint64_t sub_100002444(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_deviceModelCode);
  result = swift_beginAccess();
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  return result;
}

void sub_100002504()
{
  v56.receiver = v0;
  v56.super_class = type metadata accessor for TVSetupStartViewController();
  objc_msgSendSuper2(&v56, "viewDidLoad");
  sub_1000160D0(0x415F50555F544553, 0xEF56545F454C5050);
  v1 = String._bridgeToObjectiveC()();

  [v0 setTitle:v1];

  sub_1000060DC(0, 0);
  sub_1000160D0(0x50555F544553, 0xE600000000000000);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = String._bridgeToObjectiveC()();

  v54 = sub_100002D70;
  v55 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DC0;
  v53 = &unk_100020BE0;
  v4 = _Block_copy(aBlock);
  v5 = [objc_opt_self() actionWithTitle:v3 style:0 handler:v4];

  _Block_release(v4);

  v51 = v5;

  if (((*((swift_isaMask & *v0) + 0xA0))() & 0x100) == 0)
  {
    sub_100007B7C();
  }

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() imageNamed:v6];

  v50 = v7;
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];
  [v8 setContentMode:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 contentView];
  [v9 addSubview:v8];

  v10 = sub_100002E88(0, &qword_100025FB8, UIImageView_ptr);
  v53 = v10;
  aBlock[0] = v8;
  v11 = v8;
  [v11 frame];
  v13 = v12;
  [v11 frame];
  v15 = v14;
  if (v10)
  {
    v16 = sub_100002ED0(aBlock, v10);
    v17 = *(v10 - 8);
    __chkstk_darwin(v16, v16);
    v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = v11;
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v10);
    sub_100002F14(aBlock);
  }

  else
  {
    v22 = v11;
    v21 = 0;
  }

  v49 = objc_opt_self();
  v23 = [v49 constraintWithItem:v11 attribute:7 relatedBy:0 toItem:v21 attribute:8 multiplier:v13 / v15 constant:0.0];

  swift_unknownObjectRelease();
  [v11 addConstraint:v23];

  sub_100002E40(&qword_100025FC0, &unk_1000183B0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000183A0;
  v25 = [v11 centerXAnchor];
  v26 = [v0 contentView];
  v27 = [v26 mainContentGuide];

  v28 = [v27 centerXAnchor];
  v29 = [v25 constraintEqualToAnchor:v28];

  *(v24 + 32) = v29;
  v30 = [v11 centerYAnchor];
  v31 = [v0 contentView];
  v32 = [v31 mainContentGuide];

  v33 = [v32 centerYAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];

  *(v24 + 40) = v34;
  v35 = [v11 topAnchor];
  v36 = [v0 contentView];
  v37 = [v36 mainContentGuide];

  v38 = [v37 topAnchor];
  v39 = [v35 constraintGreaterThanOrEqualToAnchor:v38];

  *(v24 + 48) = v39;
  v40 = [v11 bottomAnchor];
  v41 = [v0 contentView];
  v42 = [v41 mainContentGuide];

  v43 = [v42 bottomAnchor];
  v44 = [v40 constraintLessThanOrEqualToAnchor:v43];

  *(v24 + 56) = v44;
  v45 = [v11 heightAnchor];

  v46 = [v45 constraintEqualToConstant:75.0];
  *(v24 + 64) = v46;
  sub_100002E88(0, &qword_100025FC8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:isa];
}

uint64_t sub_100002D38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100002D70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100003B6C();
  }
}

void sub_100002DC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100002E28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002E88(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_100002ED0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002F14(void *a1)
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

void sub_100002FA8(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TVSetupStartViewController();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() mainQueue];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_100003A1C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100003A24;
  v9[3] = &unk_100020C08;
  v7 = _Block_copy(v9);

  v8 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

void sub_100003140(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v69 - v11;
  __chkstk_darwin(v10, v13);
  v15 = &v69 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (qword_100026618 != -1)
    {
      swift_once();
    }

    v73 = v8;
    v18 = type metadata accessor for Logger();
    v19 = sub_100003F94(v18, qword_100026620);
    v20 = *(v4 + 16);
    v20(v15, a1, v3);
    v76 = a1;
    v72 = v20;
    v20(v12, a1, v3);
    v75 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v74 = v4;
    if (v23)
    {
      v70 = v22;
      v71 = v17;
      v24 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v80[0] = v69;
      *v24 = 136315394;
      v25 = Notification.name.getter();
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v77 = *(v4 + 8);
      v77(v15, v3);
      v29 = sub_100004030(v26, v28, v80);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      if (!Notification.userInfo.getter())
      {
        sub_100004794(&_swiftEmptyArrayStorage);
      }

      v30 = Dictionary.description.getter();
      v32 = v31;

      v77(v12, v3);
      v33 = sub_100004030(v30, v32, v80);

      *(v24 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v21, v70, "Device setup notification: '%s', %s", v24, 0x16u);
      swift_arrayDestroy();

      v17 = v71;
    }

    else
    {

      v35 = *(v4 + 8);
      v35(v12, v3);
      v77 = v35;
      v34 = (v35)(v15, v3);
    }

    v36 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_isStarted;
    v37 = v76;
    if ((*(v17 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_isStarted) & 1) == 0)
    {
      v38 = (*((swift_isaMask & *v17) + 0x88))(v34);
      if (v39)
      {
        v40 = v39;
        v41 = v38;
        v42 = Notification.userInfo.getter();
        if (v42)
        {
          v43 = v42;
          v78 = 0x746553736465656ELL;
          v79 = 0xEA00000000007075;
          AnyHashable.init<A>(_:)();
          if (*(v43 + 16) && (v44 = sub_1000045D8(v80), (v45 & 1) != 0))
          {
            sub_100004670(*(v43 + 56) + 32 * v44, v81);
            sub_10000461C(v80);
            if ((swift_dynamicCast() & 1) != 0 && v78 == 1)
            {

LABEL_38:

              return;
            }
          }

          else
          {
            sub_10000461C(v80);
          }

          v78 = 0x4449656369766564;
          v79 = 0xE800000000000000;
          AnyHashable.init<A>(_:)();
          if (!*(v43 + 16) || (v46 = sub_1000045D8(v80), (v47 & 1) == 0))
          {

            sub_10000461C(v80);
            return;
          }

          sub_100004670(*(v43 + 56) + 32 * v46, v81);
          sub_10000461C(v80);

          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_38;
          }

          if (v78 == v41 && v40 == v79)
          {
          }

          else
          {
            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v62 & 1) == 0)
            {
LABEL_44:

              return;
            }
          }

          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&_mh_execute_header, v63, v64, "Setup started - auto dismissing.", v65, 2u);
          }

          if ((*((swift_isaMask & *v17) + 0x70))())
          {
            v67 = v66;
            ObjectType = swift_getObjectType();
            (*(v67 + 16))(v17, ObjectType, v67);

            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_44;
        }
      }
    }

    v48 = v73;
    v72(v73, v37, v3);
    v49 = v17;
    v50 = v17;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = 7104878;
      v54 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80[0] = v76;
      *v54 = 67109634;
      *(v54 + 4) = *(v49 + v36);

      *(v54 + 8) = 2080;
      v55 = (*((swift_isaMask & *v50) + 0x88))();
      if (!v56)
      {
        v55 = 7104878;
      }

      v57 = 0xE300000000000000;
      if (v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = 0xE300000000000000;
      }

      v59 = sub_100004030(v55, v58, v80);

      *(v54 + 10) = v59;
      *(v54 + 18) = 2080;
      if (Notification.userInfo.getter())
      {
        v53 = Dictionary.description.getter();
        v57 = v60;
      }

      v77(v48, v3);
      v61 = sub_100004030(v53, v57, v80);

      *(v54 + 20) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to handle device setup notification: isStarted=%{BOOL}d, deviceIdentifier=%s, userInfo=%s", v54, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v77(v48, v3);
    }
  }
}

uint64_t sub_100003A24(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

void sub_100003B6C()
{
  if ((*(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_isStarted) & 1) == 0)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_isStarted) = 1;
    if (qword_100026618 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003F94(v2, qword_100026620);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Tapped start button", v5, 2u);
    }

    sub_1000160D0(0x495443454E4E4F43, 0xEA0000000000474ELL);
    v6 = String._bridgeToObjectiveC()();

    [v1 showActivityIndicatorWithStatus:v6];

    if ((*((swift_isaMask & *v1) + 0x70))())
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v1, ObjectType, v8);

      swift_unknownObjectRelease();
    }
  }
}

id sub_100003D34(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView:a1];

  return v3;
}

id sub_100003D78(void *a1)
{
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_deviceIdentifier];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_deviceModelCode] = 256;
  v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_isStarted] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TVSetupStartViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithContentView:", a1);

  return v4;
}

id sub_100003E98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSetupStartViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void type metadata accessor for SFDeviceModelCode()
{
  if (!qword_100026270)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100026270);
    }
  }
}

uint64_t sub_100003F94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003FCC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100004030(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000040FC(v11, 0, 0, 1, a1, a2);
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
    sub_100004670(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002F14(v11);
  return v7;
}

unint64_t sub_1000040FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004208(a5, a6);
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

char *sub_100004208(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004254(a1, a2);
  sub_100004384(&off_100020B90);
  return v3;
}

char *sub_100004254(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004470(v5, 0);
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
        v7 = sub_100004470(v10, 0);
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

uint64_t sub_100004384(uint64_t result)
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

  result = sub_1000044E4(result, v11, 1, v3);
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

void *sub_100004470(uint64_t a1, uint64_t a2)
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

  sub_100002E40(&qword_100026008, qword_100018458);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000044E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002E40(&qword_100026008, qword_100018458);
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

unint64_t sub_1000045D8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000046CC(a1, v4);
}

uint64_t sub_100004670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000046CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100004930(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000461C(v8);
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

unint64_t sub_100004794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E40(&unk_100026320, qword_1000188F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000048B0(v4, v13);
      result = sub_1000045D8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100004920(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1000048B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E40(&qword_100026000, &qword_100018450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100004920(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100004A00(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16TVSetupUIService25TVSetupAuthViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100004A6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16TVSetupUIService25TVSetupAuthViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100002244;
}

uint64_t sub_100004B0C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TVSetupAuthViewController();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1 & 1);
  sub_1000160D0(0x49544E4548545541, 0xEE004E4F49544143);
  v3 = String._bridgeToObjectiveC()();

  [v1 setTitle:v3];

  sub_1000160D0(0xD00000000000001BLL, 0x800000010001B510);
  v4 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v4];

  sub_1000060DC(0, 0);
  return (*((swift_isaMask & *v1) + 0x70))(0);
}

void sub_100004CAC(int a1)
{
  [v1 hideActivityIndicator];
  v3 = "AUTHENTICATION_INSTRUCTIONS";
  if ((a1 & 0x10000) != 0)
  {
    v4 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = "";
    v4 = 0xD00000000000001BLL;
  }

  sub_1000160D0(v4, (v3 | 0x8000000000000000));
  v5 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v5];

  v6 = [v1 passcodeEntryView];
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];
}

uint64_t sub_100004DA8(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TVSetupAuthViewController();
  objc_msgSendSuper2(&v12, "didCompleteTextEntry:", a1);
  v3 = String._bridgeToObjectiveC()();
  [v1 showActivityIndicatorWithStatus:v3];

  result = (*((swift_isaMask & *v1) + 0x58))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = [a1 text];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    (*(v6 + 8))(v1, v9, v11, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100004F44(void *a1)
{
  *&v1[OBJC_IVAR____TtC16TVSetupUIService25TVSetupAuthViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TVSetupAuthViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithContentView:", a1);

  return v3;
}

id sub_10000500C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSetupAuthViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005050()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026640);
  v1 = sub_100003F94(v0, qword_100026640);
  v2 = sub_100005C8C();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000050DC()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100005178, v3, v2);
}

uint64_t sub_100005178()
{
  v1 = v0[2];
  v0[7] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10000527C;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10000527C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1000053DC, v3, v2);
}

uint64_t sub_1000053DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000543C(uint64_t a1, void *a2)
{
  v4 = sub_100002E40(&qword_100026040, &qword_1000184E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v9 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = aBlock - v11;
  v13 = *(v5 + 16);
  v13(aBlock - v11, a1, v4);
  v13(v9, v12, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v12, v4);
  v16 = [a2 transitionCoordinator];
  if (v16)
  {
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100005B94;
    *(v18 + 24) = v15;
    aBlock[4] = sub_100005C0C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005A88;
    aBlock[3] = &unk_100020CF0;
    v19 = _Block_copy(aBlock);

    [v17 animateAlongsideTransition:0 completion:v19];
    _Block_release(v19);
    if (qword_100026638 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003F94(v20, qword_100026640);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Navigation controller is in the middle of a transition, waiting for it to complete", v23, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    CheckedContinuation.resume(returning:)();
  }

  return (*(v5 + 8))(v9, v4);
}

void sub_100005784(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 transitionCoordinator];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v14[4] = sub_100005A80;
    v14[5] = v8;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100005A88;
    v14[3] = &unk_100020C78;
    v9 = _Block_copy(v14);

    [v7 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
    if (qword_100026638 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003F94(v10, qword_100026640);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Navigation controller is in the middle of a transition, waiting for it to complete", v13, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    a1();
  }
}

uint64_t sub_100005954(uint64_t (*a1)(void))
{
  if (qword_100026638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003F94(v2, qword_100026640);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Performing deferred block after navigation controller transition", v5, 2u);
  }

  return a1();
}

uint64_t sub_100005A48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100005AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B00()
{
  v1 = sub_100002E40(&qword_100026040, &qword_1000184E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100005C10()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026C60);
  sub_100003F94(v0, qword_100026C60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100005CD4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026C78);
  sub_100003F94(v0, qword_100026C78);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100005D98()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026C90);
  sub_100003F94(v0, qword_100026C90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100005E60()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026CA8);
  sub_100003F94(v0, qword_100026CA8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100005F28()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026CC0);
  sub_100003F94(v0, qword_100026CC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100005FCC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_100003F94(v4, a2);
}

uint64_t sub_100006044@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100003F94(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void sub_1000060DC(uint64_t a1, uint64_t a2)
{
  [v2 setDismissalType:1];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_100006310(a1, a2);
  v7 = String._bridgeToObjectiveC()();
  v10[4] = sub_10000629C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100002DC0;
  v10[3] = &unk_100020D68;
  v8 = _Block_copy(v10);
  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  [v2 setDismissButtonAction:v9];
}

uint64_t sub_100006260()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000629C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100010B14(0, 0, v1, v2);
  }
}

uint64_t sub_100006310(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100006338(uint64_t a1, uint64_t a2)
{
  [v2 setDismissalType:{objc_msgSend(v2, "dismissalType") | 1}];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_100006310(a1, a2);
  v7 = String._bridgeToObjectiveC()();
  v10[4] = sub_100006514;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100002DC0;
  v10[3] = &unk_100020DB8;
  v8 = _Block_copy(v10);
  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  [v2 setDismissButtonAction:v9];
}

uint64_t sub_1000064CC()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100006514()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v1();
    }

    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1000065A0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026688);
  v1 = sub_100003F94(v0, qword_100026688);
  v2 = sub_100005E18();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000662C()
{
  v1 = (v0 + OBJC_IVAR____TtC16TVSetupUIService29TVSetupProgressViewController_deviceModelCode);
  swift_beginAccess();
  return *v1 | (v1[1] << 8);
}

uint64_t sub_10000667C(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16TVSetupUIService29TVSetupProgressViewController_deviceModelCode);
  result = swift_beginAccess();
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  return result;
}

void sub_100006730()
{
  v47.receiver = v0;
  v47.super_class = type metadata accessor for TVSetupProgressViewController();
  objc_msgSendSuper2(&v47, "viewDidLoad");
  sub_1000160D0(0xD000000000000013, 0x800000010001B6F0);
  v1 = String._bridgeToObjectiveC()();

  [v0 setTitle:v1];

  sub_1000060DC(0, 0);
  if (((*((swift_isaMask & *v0) + 0x58))() & 0x100) == 0)
  {
    sub_100007B7C();
  }

  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() imageNamed:v2];

  v45 = v3;
  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  [v4 setContentMode:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v0 contentView];
  [v5 addSubview:v4];

  v6 = sub_100002E88(0, &qword_100025FB8, UIImageView_ptr);
  v46[3] = v6;
  v46[0] = v4;
  v7 = v4;
  [v7 frame];
  v9 = v8;
  [v7 frame];
  v11 = v10;
  if (v6)
  {
    v12 = sub_100002ED0(v46, v6);
    v13 = *(v6 - 8);
    __chkstk_darwin(v12, v12);
    v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = v7;
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v6);
    sub_100002F14(v46);
  }

  else
  {
    v18 = v7;
    v17 = 0;
  }

  v44 = objc_opt_self();
  v19 = [v44 constraintWithItem:v7 attribute:7 relatedBy:0 toItem:v17 attribute:8 multiplier:v9 / v11 constant:0.0];

  swift_unknownObjectRelease();
  [v7 addConstraint:v19];

  sub_100002E40(&qword_100025FC0, &unk_1000183B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000183A0;
  v21 = [v7 centerXAnchor];
  v22 = [v0 contentView];
  v23 = [v22 mainContentGuide];

  v24 = [v23 centerXAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];

  *(v20 + 32) = v25;
  v26 = [v7 centerYAnchor];
  v27 = [v0 contentView];
  v28 = [v27 mainContentGuide];

  v29 = [v28 centerYAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];

  *(v20 + 40) = v30;
  v31 = [v7 topAnchor];
  v32 = [v0 contentView];
  v33 = [v32 mainContentGuide];

  v34 = [v33 topAnchor];
  v35 = [v31 constraintGreaterThanOrEqualToAnchor:v34];

  *(v20 + 48) = v35;
  v36 = [v7 bottomAnchor];
  v37 = [v0 contentView];
  v38 = [v37 mainContentGuide];

  v39 = [v38 bottomAnchor];
  v40 = [v36 constraintLessThanOrEqualToAnchor:v39];

  *(v20 + 56) = v40;
  v41 = [v7 heightAnchor];

  v42 = [v41 constraintEqualToConstant:75.0];
  *(v20 + 64) = v42;
  sub_100002E88(0, &qword_100025FC8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 activateConstraints:isa];
}

void sub_100006E64(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (qword_100026680 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003F94(v4, qword_100026688);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    sub_10000725C(v3);
    v9 = String.init(cString:)();
    v11 = sub_100004030(v9, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleProgressEvent: %s", v7, 0xCu);
    sub_100002F14(v8);
  }

  if (v3 > 219)
  {
    if (v3 > 233)
    {
      if (v3 != 234)
      {
        if (v3 != 236)
        {
          goto LABEL_8;
        }

        v14 = "SETTING_UP_SECURITY";
        goto LABEL_19;
      }

      v16 = "SETTING_UP_APPLE_TV";
      v12 = 0xD000000000000012;
    }

    else
    {
      if (v3 != 220)
      {
        if (v3 != 230)
        {
          goto LABEL_8;
        }

        v14 = "WAITING_FOR_HOMEKIT";
LABEL_19:
        v13 = ((v14 - 32) | 0x8000000000000000);
        v12 = 0xD000000000000013;
        goto LABEL_26;
      }

      v16 = "SETTING_UP_SECURITY";
      v12 = 0xD000000000000011;
    }

    v13 = (v16 | 0x8000000000000000);
    goto LABEL_26;
  }

  if (v3 > 199)
  {
    if (v3 == 200)
    {
      v17 = String._bridgeToObjectiveC()();
      v18 = SFLocalizableWAPIStringKeyForKey();

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      sub_1000160D0(v19, v21);

      goto LABEL_27;
    }

    if (v3 != 210)
    {
      goto LABEL_8;
    }

    v15 = 0x415649544341;
LABEL_21:
    v12 = v15 & 0xFFFFFFFFFFFFLL | 0x4954000000000000;
    v13 = 0xEA0000000000474ELL;
    goto LABEL_26;
  }

  if (v3 == 35)
  {
    v15 = 0x43454E4E4F43;
    goto LABEL_21;
  }

LABEL_8:
  v12 = 0x5F474E4954544553;
  v13 = 0xEA00000000005055;
LABEL_26:
  sub_1000160D0(v12, v13);
LABEL_27:
  v22 = String._bridgeToObjectiveC()();

  [v2 showActivityIndicatorWithStatus:v22];
}

id sub_100007170(void *a1)
{
  *&v1[OBJC_IVAR____TtC16TVSetupUIService29TVSetupProgressViewController_deviceModelCode] = 256;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TVSetupProgressViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithContentView:", a1);

  return v3;
}

id sub_100007228()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSetupProgressViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

const char *sub_10000725C(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

uint64_t sub_100007AF0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_1000266A8);
  v1 = sub_100003F94(v0, qword_1000266A8);
  v2 = sub_100005C8C();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100007B88()
{
  v1 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_hardwareButtonsRequireConfirmation;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    sub_10000C608();
    return;
  }

  v2 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captureButtonInteraction;
  v3 = *(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captureButtonInteraction);
  if (v3)
  {
    v4 = *((swift_isaMask & *v0) + 0xD0);
    v5 = v3;
    if ((v4() & 1) == 0)
    {
      v6 = *(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController);
      if (v6)
      {
        v7 = [v6 view];
        if (!v7)
        {
          __break(1u);
          return;
        }

        v8 = v7;
        [v7 removeInteraction:v5];
      }

      v9 = *(v0 + v2);
      *(v0 + v2) = 0;

      sub_10000BF98();
    }
  }
}

uint64_t sub_100007C94()
{
  v1 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_hardwareButtonsRequireConfirmation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100007CD8(char a1)
{
  v3 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_hardwareButtonsRequireConfirmation;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_100007B88();
}

void (*sub_100007D2C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100007D90;
}

void sub_100007D90(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100007B88();
  }
}

uint64_t sub_100007DCC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100007E44()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_100002E40(&unk_100026390, &qword_100018908);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1000107C4(v9, &qword_100026090, &qword_100018590);
  }

  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003F94(v2, qword_1000266A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not get remote view controller proxy", v5, 2u);
  }

  return 0;
}

void *sub_100007FCC(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = v3;
  v8 = sub_100002E40(&qword_100026088, &qword_100018588);
  __chkstk_darwin(v8 - 8, v9);
  v11 = (&v40 - v10);
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003F94(v12, qword_1000266A8);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = &TVSetupRemoteLauncher__metaData;
  if (!os_log_type_enabled(v14, v15))
  {

    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_9;
  }

  v41 = v11;
  v42 = a3;
  a3 = a2;
  v16 = swift_slowAlloc();
  result = swift_slowAlloc();
  v45 = result;
  v16->flags = 136315138;
  if (!a1)
  {
    __break(1u);
    return result;
  }

  v11 = result;

  v18 = [v13 userInfo];
  if (!v18)
  {
LABEL_9:
    sub_100004794(&_swiftEmptyArrayStorage);
    goto LABEL_10;
  }

  v19 = v18;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_10:
  v20 = Dictionary.description.getter();
  v22 = v21;

  v23 = sub_100004030(v20, v22, &v45);

  *&v16->ivar_base_start = v23;
  _os_log_impl(&_mh_execute_header, v14, v15, "Main configuration: %s", v16, 0xCu);
  sub_100002F14(v11);

  a2 = a3;
  v11 = v41;
  v16 = &TVSetupRemoteLauncher__metaData;
LABEL_11:
  v24 = [v13 v16[55].weak_ivar_lyt];
  if (!v24)
  {
    v46 = 0u;
    v47 = 0u;
    goto LABEL_19;
  }

  v25 = v24;
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = 0xD000000000000010;
  v44 = 0x800000010001B4E0;
  AnyHashable.init<A>(_:)();
  if (!*(v26 + 16) || (v27 = sub_1000045D8(&v45), (v28 & 1) == 0))
  {

    sub_10000461C(&v45);
    v46 = 0u;
    v47 = 0u;
    goto LABEL_19;
  }

  sub_100004670(*(v26 + 56) + 32 * v27, &v46);
  sub_10000461C(&v45);

  if (!*(&v47 + 1))
  {
LABEL_19:
    sub_1000107C4(&v46, &qword_100026090, &qword_100018590);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    UUID.init(uuidString:)();

    v29 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceIdentifier;
    swift_beginAccess();
    sub_10001075C(v11, v4 + v29, &qword_100026088, &qword_100018588);
    swift_endAccess();
  }

LABEL_20:
  v30 = [v13 v16[55].weak_ivar_lyt];
  if (!v30)
  {
LABEL_27:
    v46 = 0u;
    v47 = 0u;
    goto LABEL_28;
  }

  v31 = v30;
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v46 = 0x6F4D656369766564;
  *(&v46 + 1) = 0xEF65646F436C6564;
  AnyHashable.init<A>(_:)();
  if (!*(v32 + 16) || (v33 = sub_1000045D8(&v45), (v34 & 1) == 0))
  {

    sub_10000461C(&v45);
    goto LABEL_27;
  }

  sub_100004670(*(v32 + 56) + 32 * v33, &v46);
  sub_10000461C(&v45);

  if (!*(&v47 + 1))
  {
LABEL_28:
    sub_1000107C4(&v46, &qword_100026090, &qword_100018590);
    goto LABEL_29;
  }

  if (!swift_dynamicCast())
  {
LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  v35 = v45;
LABEL_30:
  v36 = (v4 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceModelCode);
  *v36 = v35;
  v36[1] = 0;
  v37 = [v13 v16[55].weak_ivar_lyt];
  if (v37)
  {
    v38 = v37;
    v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v39 = 0;
  }

  *(v4 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_userInfo) = v39;

  result = sub_100007E44();
  if (result)
  {
    [result setAllowsAlertStacking:1];
    result = swift_unknownObjectRelease();
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

void *sub_10000865C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TVSetupAlertViewController(0);
  objc_msgSendSuper2(&v4, "viewWillAppear:", a1 & 1);
  result = sub_100007E44();
  if (result)
  {
    [result setStatusBarHidden:1 withDuration:0.0];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100008758(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002E40(&qword_100026088, &qword_100018588);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for TVSetupAlertViewController(0);
  v35.receiver = v2;
  v35.super_class = v13;
  objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003F94(v14, qword_1000266A8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "viewDidAppear(_:)", v17, 2u);
  }

  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 addObserver:v2 selector:"presentationControllerTransitionDidEnd:" name:UIPresentationControllerPresentationTransitionDidEndNotification object:0];

  v20 = [v18 defaultCenter];
  [v20 addObserver:v2 selector:"presentationControllerTransitionDidEnd:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:0];

  (*((swift_isaMask & *v2) + 0xD8))(1);
  type metadata accessor for TVSetupStartViewController();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceIdentifier;
  swift_beginAccess();
  sub_100010A3C(v2 + v22, v12, &qword_100026088, &qword_100018588);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_1000107C4(v12, &qword_100026088, &qword_100018588);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_1000107C4(v12, &qword_100026088, &qword_100018588);
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v5 + 8))(v8, v4);
    v24 = v27;
    v23 = v25;
  }

  (*((swift_isaMask & *v21) + 0x90))(v23, v24);
  v28 = *((swift_isaMask & *v21) + 0x78);
  v29 = swift_unknownObjectRetain();
  v28(v29, &off_100020EF8);
  (*((swift_isaMask & *v21) + 0xA8))(*(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceModelCode) | (*(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceModelCode + 1) << 8));
  v30 = *(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_startViewController);
  *(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_startViewController) = v21;
  v31 = v21;

  v32 = [v2 presentProxCardFlowWithDelegate:v2 initialViewController:v31];
  v33 = *(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController);
  *(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController) = v32;
}

id sub_100008C70(char a1)
{
  v2 = v1;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003F94(v4, qword_1000266A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "viewDidDisappear(_:)", v7, 2u);
  }

  v8 = sub_100007E44();
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    [v9 setIdleTimerDisabled:0 forReason:v10];

    swift_unknownObjectRelease();
  }

  v11 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_isDismissed;
  if ((*(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_isDismissed) & 1) == 0)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Main disappeared without dismiss (device locked?)... dismissing UI", v14, 2u);
    }

    *(v2 + v11) = 1;
    v15 = *(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController);
    if (v15)
    {
      v16 = swift_allocObject();
      v16[2] = sub_100008F90;
      v16[3] = 0;
      v16[4] = v2;
      aBlock[4] = sub_10000EFAC;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000A32C;
      aBlock[3] = &unk_100020E58;
      v17 = _Block_copy(aBlock);
      v18 = v15;
      v19 = v2;

      [v18 dismissViewControllerAnimated:1 completion:v17];
      _Block_release(v17);
    }
  }

  [*(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession) invalidate];
  (*((swift_isaMask & *v2) + 0xD8))(0);
  v21.receiver = v2;
  v21.super_class = type metadata accessor for TVSetupAlertViewController(0);
  return objc_msgSendSuper2(&v21, "viewDidDisappear:", a1 & 1);
}

void sub_100008F90()
{
  v0 = [objc_allocWithZone(SFClient) init];
  v2[4] = sub_100009058;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_1000092A8;
  v2[3] = &unk_1000211F0;
  v1 = _Block_copy(v2);
  [v0 reenableProxCardType:1 completion:v1];
  _Block_release(v1);
}

void sub_100009058(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1000266A0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003F94(v6, qword_1000266A8);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Prox card re-enabled.", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003F94(v1, qword_1000266A8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to re-enable prox card: %@", v3, 0xCu);
    sub_1000107C4(v4, &qword_1000262E8, &qword_1000188B8);

LABEL_10:

    return;
  }
}

void sub_1000092A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100009368(void *a1, char a2)
{
  v5 = sub_100002E40(&qword_1000262C8, &qword_100018870);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v27 - v7;
  v9 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_pushingViewControllers;
  swift_beginAccess();
  v10 = *&v2[v9];

  v11 = sub_100009648(a1, v10);

  if (v11)
  {
    if (qword_1000266A0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003F94(v12, qword_1000266A8);
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
      _os_log_impl(&_mh_execute_header, v14, v15, "Ignoring request to push already pushed view controller: %@", v16, 0xCu);
      sub_1000107C4(v17, &qword_1000262E8, &qword_1000188B8);
    }
  }

  else
  {
    swift_beginAccess();
    v19 = a1;
    v20 = v2;
    sub_10000DDEC(&v28, v19);
    v21 = v28;
    swift_endAccess();

    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    type metadata accessor for MainActor();
    v23 = v19;
    v24 = v20;
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = &protocol witness table for MainActor;
    *(v26 + 32) = v24;
    *(v26 + 40) = v23;
    *(v26 + 48) = a2 & 1;
    sub_100009B64(0, 0, v8, &unk_1000188B0, v26);
  }
}

uint64_t sub_100009648(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100002E88(0, &qword_1000262D0, UIViewController_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100009760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return _swift_task_switch(sub_1000097FC, v8, v7);
}

uint64_t sub_1000097FC()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController;
  *(v0 + 80) = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController;
  v3 = *(v1 + v2);
  *(v0 + 88) = v3;
  if (v3)
  {
    v3;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_10000995C;

    return sub_1000050DC();
  }

  else
  {

    v6 = *(v0 + 80);
    v7 = *(v0 + 104);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    sub_10000BF98();
    [*(v8 + v6) pushViewController:v9 animated:v7];
    swift_beginAccess();
    v10 = sub_10000E994(v9);
    swift_endAccess();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10000995C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100009A9C, v4, v3);
}

uint64_t sub_100009A9C()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_10000BF98();
  [*(v3 + v1) pushViewController:v4 animated:v2];
  swift_beginAccess();
  v5 = sub_10000E994(v4);
  swift_endAccess();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100009B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002E40(&qword_1000262C8, &qword_100018870);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_100010A3C(a3, v26 - v11, &qword_1000262C8, &qword_100018870);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000107C4(v12, &qword_1000262C8, &qword_100018870);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000107C4(a3, &qword_1000262C8, &qword_100018870);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000107C4(a3, &qword_1000262C8, &qword_100018870);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100009E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  type metadata accessor for MainActor();
  *(v6 + 32) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_100009F00, v8, v7);
}

uint64_t sub_100009F00()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController;
  *(v0 + 56) = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController;
  v3 = *(v1 + v2);
  *(v0 + 64) = v3;
  if (v3)
  {
    v3;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_10000A034;

    return sub_1000050DC();
  }

  else
  {

    v6 = *(v0 + 56);
    v7 = *(v0 + 80);
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    sub_10000BF98();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10000A034()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_10000A174, v4, v3);
}

uint64_t sub_10000A174()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_10000BF98();

  v5 = *(v0 + 8);

  return v5();
}

void sub_10000A210(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000BF98();
  }
}

void sub_10000A264(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_isDismissed] = 1;
  }
}

void *sub_10000A2C0(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  result = sub_100007E44();
  if (result)
  {
    [result dismiss];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000A32C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10000A370()
{
  v1 = sub_100002E40(&qword_100026088, &qword_100018588);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v33 - v3;
  v5 = [objc_opt_self() sharedConnection];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 isPasscodeSet];

  if (v7)
  {
    v8 = [objc_allocWithZone(SFDevice) init];
    v9 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceIdentifier;
    swift_beginAccess();
    sub_100010A3C(v0 + v9, v4, &qword_100026088, &qword_100018588);
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    isa = 0;
    if ((*(v11 + 48))(v4, 1, v10) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v11 + 8))(v4, v10);
    }

    [v8 setIdentifier:isa];

    v13 = *(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_userInfo);
    if (v13)
    {
      v41 = 0x6F6973726556736FLL;
      v42 = 0xE90000000000006ELL;

      AnyHashable.init<A>(_:)();
      if (*(v13 + 16))
      {
        v14 = sub_1000045D8(&aBlock);
        if (v15)
        {
          sub_100004670(*(v13 + 56) + 32 * v14, &v43);
          sub_10000461C(&aBlock);

          if (*(&v44 + 1))
          {
            if (swift_dynamicCast())
            {
              [v8 setOsVersion:aBlock];
            }

            goto LABEL_17;
          }

LABEL_16:
          sub_1000107C4(&v43, &qword_100026090, &qword_100018590);
LABEL_17:
          v19 = [objc_allocWithZone(SFDeviceSetupAppleTVSession) init];
          [v19 setPeerDevice:v8];
          [v19 setPresentingViewController:*(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController)];
          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v39 = sub_10001086C;
          v40 = v20;
          aBlock = _NSConcreteStackBlock;
          v36 = 1107296256;
          v37 = sub_10000AA20;
          v38 = &unk_100021150;
          v21 = _Block_copy(&aBlock);

          [v19 setProgressHandler:v21];
          _Block_release(v21);
          v22 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v39 = sub_1000108D8;
          v40 = v22;
          aBlock = _NSConcreteStackBlock;
          v36 = 1107296256;
          v37 = sub_10000A32C;
          v38 = &unk_100021178;
          v23 = _Block_copy(&aBlock);

          [v19 setPromptForCaptiveNetworkHandler:v23];
          _Block_release(v23);
          v24 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v39 = sub_100010928;
          v40 = v24;
          aBlock = _NSConcreteStackBlock;
          v36 = 1107296256;
          v37 = sub_10000A32C;
          v38 = &unk_1000211A0;
          v25 = _Block_copy(&aBlock);

          [v19 setPromptForHomeiCloudHandler:v25];
          _Block_release(v25);
          v26 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v39 = sub_1000109E4;
          v40 = v26;
          aBlock = _NSConcreteStackBlock;
          v36 = 1107296256;
          v37 = sub_10000AAB8;
          v38 = &unk_1000211C8;
          v27 = _Block_copy(&aBlock);

          [v19 setPromptForPINHandler:v27];
          _Block_release(v27);
          [v19 activate];
          v28 = *(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession);
          *(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession) = v19;
          v29 = v19;

          v30 = sub_100007E44();
          if (v30)
          {
            v31 = v30;
            v32 = String._bridgeToObjectiveC()();
            [v31 setIdleTimerDisabled:1 forReason:v32];

            swift_unknownObjectRelease();
          }

          return;
        }
      }

      sub_10000461C(&aBlock);
    }

    v43 = 0u;
    v44 = 0u;
    goto LABEL_16;
  }

  v16 = objc_allocWithZone(NSError);
  v17 = String._bridgeToObjectiveC()();
  v34 = [v16 initWithDomain:v17 code:301001 userInfo:0];

  sub_10000B1D4(v34, 0);
  v18 = v34;
}

uint64_t sub_10000AA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v4(a2, v5);
}

uint64_t sub_10000AAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_10000AB18(uint64_t a1, uint64_t a2)
{
  if (a1 > 79)
  {
    if ((a1 - 200) > 0x24 || ((1 << (a1 + 56)) & 0x1440100401) == 0)
    {
      if (a1 != 96)
      {
        if (a1 != 80)
        {
          return;
        }

        goto LABEL_10;
      }

      v12 = *(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_doneViewController);
      if (v12)
      {
        *(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_doneViewController) = 0;
      }

      if (qword_1000266A0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003F94(v13, qword_1000266A8);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Setup completed", v16, 2u);
      }

      v7 = 0;
      goto LABEL_32;
    }

LABEL_10:

    sub_10000B608(a1);
    return;
  }

  if (a1 == 20)
  {
    if (qword_1000266A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003F94(v3, qword_1000266A8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Setup finalized", v6, 2u);
    }

    v7 = 1;
LABEL_32:

    sub_10000B1D4(0, v7);
    return;
  }

  if (a1 != 30)
  {
    if (a1 != 70)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_36;
  }

  *&v28 = 28517;
  *(&v28 + 1) = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v9 = sub_1000045D8(v27), (v10 & 1) == 0))
  {
    sub_10000461C(v27);
LABEL_36:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_37;
  }

  sub_100004670(*(a2 + 56) + 32 * v9, &v28);
  sub_10000461C(v27);
  if (*(&v29 + 1))
  {
    sub_100002E88(0, &qword_1000262E0, NSError_ptr);
    if (swift_dynamicCast())
    {
      v11 = v27[0];
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_38;
  }

LABEL_37:
  sub_1000107C4(&v28, &qword_100026090, &qword_100018590);
  v11 = 0;
LABEL_38:
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003F94(v17, qword_1000266A8);
  v18 = v11;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27[0] = v22;
    *v21 = 136315138;
    *&v28 = v11;
    v23 = v18;
    sub_100002E40(&qword_1000262D8, &qword_1000188A0);
    v24 = String.init<A>(describing:)();
    v26 = sub_100004030(v24, v25, v27);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Setup failed: %s", v21, 0xCu);
    sub_100002F14(v22);
  }

  sub_10000B1D4(v11, 1);
}

void sub_10000AFEC(uint64_t a1)
{
  v2 = v1;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003F94(v4, qword_1000266A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "showAuth(flags:)", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_authViewController;
  v9 = *(v2 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_authViewController);
  if (v9)
  {
    v10 = *((swift_isaMask & *v9) + 0x70);
    v15 = v9;
    v10(a1);
  }

  else
  {
    type metadata accessor for TVSetupAuthViewController();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v12 = *((swift_isaMask & *v11) + 0x60);
    v13 = swift_unknownObjectRetain();
    v12(v13, &off_100020F10);
    v14 = *(v2 + v8);
    *(v2 + v8) = v11;
    v15 = v11;

    sub_100009368(v15, 1);
  }
}

void sub_10000B1D4(void *a1, char a2)
{
  v3 = v2;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003F94(v6, qword_1000266A8);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v39 = a1;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315138;
    v12 = v7;
    sub_100002E40(&qword_1000262D8, &qword_1000188A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100004030(v13, v14, &v40);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Show done: %s", v10, 0xCu);
    sub_100002F14(v11);
  }

  (*((swift_isaMask & *v3) + 0xD8))(0);
  v16 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_doneViewController;
  if (*(v3 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_doneViewController))
  {
    if ((a2 & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  type metadata accessor for TVSetupDoneViewController();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = *((swift_isaMask & *v17) + 0xA0);
  v19 = v7;
  v18(v39);
  v20 = *((swift_isaMask & *v17) + 0x70);
  v21 = swift_unknownObjectRetain();
  v20(v21, &off_100020F20);
  v22 = *(v3 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession);
  if (v22)
  {
    v22 = [v22 peerDevice];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 mediaRemoteID];

      if (v24)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = v27;
        v22 = v25;
        goto LABEL_14;
      }

      v22 = 0;
    }
  }

  v28 = 0;
LABEL_14:
  (*((swift_isaMask & *v17) + 0x88))(v22, v28);
  v29 = *(v3 + v16);
  *(v3 + v16) = v17;
  v30 = v17;

  sub_100009368(v30, 1);
  if ((a2 & 1) == 0)
  {
    return;
  }

LABEL_15:
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Invalidating session", v33, 2u);
  }

  v34 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession;
  [*(v3 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession) invalidate];
  v35 = *(v3 + v34);
  *(v3 + v34) = 0;

  v36 = sub_100007E44();
  if (v36)
  {
    v37 = v36;
    v38 = String._bridgeToObjectiveC()();
    [v37 setIdleTimerDisabled:0 forReason:v38];

    swift_unknownObjectRelease();
  }
}

void sub_10000B608(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002E40(&qword_1000262C8, &qword_100018870);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v38 - v6;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003F94(v8, qword_1000266A8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "showProgress(_:)", v11, 2u);
  }

  v12 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_progressViewController;
  v13 = *&v2[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_progressViewController];
  if (v13 || (type metadata accessor for TVSetupProgressViewController(), v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v15 = *&v2[v12], *&v2[v12] = v14, v16 = v14, v15, (*((swift_isaMask & *v16) + 0x60))(v2[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceModelCode] | (v2[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceModelCode + 1] << 8)), v16, (v13 = *&v2[v12]) != 0))
  {
    v17 = *((swift_isaMask & *v13) + 0x70);
    v18 = v13;
    v17(a1);

    v19 = *&v2[v12];
    if (v19)
    {
      v20 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController;
      v21 = *&v2[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController];
      if (v21)
      {
        v22 = v19;
        v23 = [v21 topViewController];
        if (v23)
        {
          v24 = v23;
          sub_100002E88(0, &qword_1000262D0, UIViewController_ptr);
          v38[0] = v22;
          v25 = static NSObject.== infix(_:_:)();

          if (v25)
          {
            v26 = v38[0];

            return;
          }
        }

        v27 = *&v2[v20];
        if (v27)
        {
          v28 = [v27 viewControllers];
          sub_100002E88(0, &qword_1000262D0, UIViewController_ptr);
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = v22;
          __chkstk_darwin(v30, v31);
          v38[-2] = &v39;
          LOBYTE(v28) = sub_10000EE34(sub_10001021C, &v38[-4], v29);

          if ((v28 & 1) == 0)
          {
            sub_100009368(v22, 1);

            return;
          }
        }
      }

      else
      {
        v32 = v19;
      }

      v33 = type metadata accessor for TaskPriority();
      (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
      type metadata accessor for MainActor();
      v34 = v19;
      v35 = v2;
      v36 = static MainActor.shared.getter();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = &protocol witness table for MainActor;
      *(v37 + 32) = v35;
      *(v37 + 40) = v34;
      *(v37 + 48) = 1;
      sub_100009B64(0, 0, v7, &unk_100018880, v37);
    }
  }
}

void sub_10000BA68()
{
  v1 = v0;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003F94(v2, qword_1000266A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "showCaptiveNetworkWarning()", v5, 2u);
  }

  type metadata accessor for TVSetupCaptiveNetworkWarningViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = *((swift_isaMask & *v6) + 0x68);
  v8 = swift_unknownObjectRetain();
  v7(v8, &off_100020F38);
  v9 = *(v1 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captiveNetworkWarningViewController);
  *(v1 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captiveNetworkWarningViewController) = v6;
  v10 = v6;

  sub_100009368(v10, 1);
}

uint64_t sub_10000BBF0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002E88(0, &qword_1000262A8, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_10001014C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A32C;
  aBlock[3] = &unk_100020F98;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000FFA4(&qword_1000262B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002E40(&qword_1000262B8, &qword_100018868);
  sub_100010170();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_10000BF98()
{
  v1 = v0;
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType >= 0)
    {
      v5 = 16 * (homeButtonType != 2);
    }

    else
    {
      v5 = 16;
    }

    if ((*((swift_isaMask & *v1) + 0xD0))())
    {
      v6 = sub_100010F58();
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();

      if (!v7)
      {
        ++v5;
      }
    }

    v8 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lastSetDesiredButtonEvents;
    if (v5 != *(v1 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lastSetDesiredButtonEvents))
    {
      if (qword_1000266A0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100003F94(v9, qword_1000266A8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = sub_100004030(0xD000000000000023, 0x800000010001C0E0, &v19);
        *(v12 + 12) = 2080;
        v13 = SBUIRemoteAlertServiceButtonEventDescription();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = sub_100004030(v14, v16, &v19);

        *(v12 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v10, v11, "%s: %s", v12, 0x16u);
        swift_arrayDestroy();
      }

      v18 = sub_100007E44();
      if (v18)
      {
        [v18 setDesiredHardwareButtonEvents:v5 & 0x1E];
        swift_unknownObjectRelease();
      }

      sub_10000C7E0();
      *(v1 + v8) = v5;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10000C23C(uint64_t a1)
{
  if (((*((swift_isaMask & *v1) + 0xD0))() & 1) != 0 && (v3 = sub_100010F58(), objc_opt_self(), v4 = swift_dynamicCastObjCClass(), v3, !v4))
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100010B14(sub_10000F010, v19, sub_10000F018, v20);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100002E88(0, &qword_1000260A0, SBUIRemoteAlertButtonAction_ptr);
      sub_1000100C4(&qword_1000260A8, &qword_1000260A0, SBUIRemoteAlertButtonAction_ptr);
      Set.Iterator.init(_cocoa:)();
      a1 = v24;
      v5 = v25;
      v6 = v26;
      v7 = v27;
      v8 = v28;
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

    v21 = v6;
    v12 = (v6 + 64) >> 6;
    if (a1 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v13 = v7;
      v14 = v8;
      v15 = v7;
      if (!v8)
      {
        break;
      }

LABEL_14:
      v16 = (v14 - 1) & v14;
      v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v17)
      {
LABEL_20:
        sub_10000EFD0(a1);
        return;
      }

      while (1)
      {
        [v17 sendResponseWithUnHandledEvents:{objc_msgSend(v17, "events", v21, v22)}];

        v7 = v15;
        v8 = v16;
        if ((a1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        v18 = __CocoaSet.Iterator.next()();
        if (v18)
        {
          v22 = v18;
          sub_100002E88(0, &qword_1000260A0, SBUIRemoteAlertButtonAction_ptr);
          swift_dynamicCast();
          v17 = v23;
          v15 = v7;
          v16 = v8;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_20;
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
        goto LABEL_20;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

void sub_10000C608()
{
  v1 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captureButtonInteraction;
  if (!*(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captureButtonInteraction) && ((*((swift_isaMask & *v0) + 0xD0))() & 1) != 0)
  {
    v2 = [objc_opt_self() _cameraCaptureShutterConfigurationWithOptionsProvider:0];
    sub_100002E88(0, &qword_100026298, _UIPhysicalButtonConfiguration_ptr);
    sub_1000100C4(&qword_1000262A0, &qword_100026298, _UIPhysicalButtonConfiguration_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = objc_allocWithZone(_UIPhysicalButtonInteraction);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v5 = [v3 initWithConfigurations:isa delegate:v0];

    v6 = *(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController);
    if (v6)
    {
      v7 = [v6 view];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;

      [v8 addInteraction:v5];
    }

    else
    {
    }

    v9 = *(v0 + v1);
    *(v0 + v1) = v5;
    v10 = v5;

    sub_10000BF98();
  }
}

void sub_10000C7E0()
{
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  MobileGestalt_get_homeButtonType();

  v3 = *((swift_isaMask & *v0) + 0xD0);
  if (v3())
  {
    v4 = sub_100010F58();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();

    if (!v5)
    {
      v6 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lockButtonAssertion;
      if (!*(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lockButtonAssertion))
      {
        v13 = [objc_opt_self() sharedInstance];
        v14 = [v13 beginConsumingPressesForButtonKind:2 eventConsumer:v0 priority:0];

        *(v0 + v6) = v14;
        goto LABEL_10;
      }
    }
  }

  v7 = MobileGestalt_get_current_device();
  if (!v7)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v8 = v7;
  MobileGestalt_get_homeButtonType();

  if ((v3() & 1) == 0 || (v9 = sub_100010F58(), objc_opt_self(), v10 = swift_dynamicCastObjCClass(), v9, v10))
  {
    v11 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lockButtonAssertion;
    v12 = *(v0 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lockButtonAssertion);
    if (v12)
    {
      [v12 invalidate];
      *(v0 + v11) = 0;
LABEL_10:

      swift_unknownObjectRelease();
    }
  }
}

id sub_10000C99C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_10000CA14(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_hardwareButtonsRequireConfirmation] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lockButtonAssertion] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession] = 0;
  v6 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceIdentifier;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceModelCode] = 256;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_userInfo] = 0;
  v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_isDismissed] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_startViewController] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_authViewController] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_doneViewController] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_progressViewController] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captiveNetworkWarningViewController] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_pushingViewControllers] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lastSetDesiredButtonEvents] = 0;
  *&v3[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captureButtonInteraction] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for TVSetupAlertViewController(0);
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10000CC14(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_10000CC58(void *a1)
{
  v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_hardwareButtonsRequireConfirmation] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lockButtonAssertion] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession] = 0;
  v3 = OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceIdentifier;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_deviceModelCode] = 256;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_userInfo] = 0;
  v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_isDismissed] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_startViewController] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_authViewController] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_doneViewController] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_progressViewController] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captiveNetworkWarningViewController] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_pushingViewControllers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_lastSetDesiredButtonEvents] = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_captureButtonInteraction] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TVSetupAlertViewController(0);
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10000CDF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSetupAlertViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000CF28()
{
  v1 = v0;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003F94(v2, qword_1000266A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "proxCardFlowDidDismiss()", v5, 2u);
  }

  v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_isDismissed] = 1;
  v6 = *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController];
  if (v6)
  {
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;
    v11[4] = sub_100010B10;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10000A32C;
    v11[3] = &unk_100020ED0;
    v8 = _Block_copy(v11);
    v9 = v6;
    v10 = v1;

    [v9 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }
}

uint64_t sub_10000D164(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = sub_100002E40(&qword_1000262F8, &qword_100018A80);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v61 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v61 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v61 - v18;
  v20 = swift_projectBox();
  swift_beginAccess();
  sub_100010A3C(v20, v6, &qword_1000262F8, &qword_100018A80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000107C4(v6, &qword_1000262F8, &qword_100018A80);
  }

  v66 = a2;
  (*(v8 + 32))(v19, v6, v7);
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100003F94(v22, qword_1000266A8);
  v62 = *(v8 + 16);
  v62(v16, v19, v7);
  v63 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v64 = v12;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v65 = v19;
    v28 = v27;
    v29 = swift_slowAlloc();
    v67 = v29;
    *v28 = 136315138;
    v30 = URL.debugDescription.getter();
    v32 = v31;
    v33 = v16;
    v34 = *(v8 + 8);
    v34(v33, v7);
    v35 = sub_100004030(v30, v32, &v67);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Open settings: %s", v28, 0xCu);
    sub_100002F14(v29);

    v19 = v65;
  }

  else
  {

    v36 = v16;
    v34 = *(v8 + 8);
    v34(v36, v7);
  }

  v37 = [objc_opt_self() defaultWorkspace];
  if (!v37)
  {
    return (v34)(v19, v7);
  }

  v39 = v37;
  URL._bridgeToObjectiveC()(v38);
  v41 = v40;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v67 = 0;
  v43 = [v39 openSensitiveURL:v41 withOptions:isa error:&v67];

  if (v43)
  {
    v44 = v67;
    return (v34)(v19, v7);
  }

  else
  {
    v66 = v34;
    v45 = v67;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v46 = v64;
    v62(v64, v19, v7);
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v65 = v19;
      v67 = v50;
      *v49 = 136315394;
      v51 = URL.debugDescription.getter();
      v52 = v46;
      v54 = v53;
      v63 = v8 + 8;
      v55 = v66;
      v66(v52, v7);
      v56 = sub_100004030(v51, v54, &v67);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      swift_getErrorValue();
      v57 = Error.localizedDescription.getter();
      v59 = sub_100004030(v57, v58, &v67);

      *(v49 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to open settings: %s %s", v49, 0x16u);
      swift_arrayDestroy();

      return (v55)(v65, v7);
    }

    else
    {

      v60 = v66;
      v66(v46, v7);
      return (v60)(v19, v7);
    }
  }
}

BOOL sub_10000D908(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000D938@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000D964@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10000DA70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000F150(a1);

  *a2 = v3;
  return result;
}

void *sub_10000DAB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000DACC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000DBC4;

  return v6(a1);
}

uint64_t sub_10000DBC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000DCBC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000DD34(a1, a2, v4);
}

unint64_t sub_10000DD34(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000DDEC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100002E88(0, &qword_1000262D0, UIViewController_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10000E024(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10000E214(v20 + 1);
    }

    v18 = v8;
    sub_10000E43C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100002E88(0, &qword_1000262D0, UIViewController_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10000E4C0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_10000E024(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002E40(&qword_1000262F0, &unk_1000188C0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100002E88(0, &qword_1000262D0, UIViewController_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000E214(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10000E214(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002E40(&qword_1000262F0, &unk_1000188C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_10000E43C(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10000E4C0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000E214(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000E630();
      goto LABEL_12;
    }

    sub_10000E780(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100002E88(0, &qword_1000262D0, UIViewController_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_10000E630()
{
  v1 = v0;
  sub_100002E40(&qword_1000262F0, &unk_1000188C0);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

Swift::Int sub_10000E780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002E40(&qword_1000262F0, &unk_1000188C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10000E994(void *a1)
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
      v7 = sub_10000EB2C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100002E88(0, &qword_1000262D0, UIViewController_ptr);
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
    sub_10000E630();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10000EC94(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_10000EB2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_10000E024(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100002E88(0, &qword_1000262D0, UIViewController_ptr);
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
  sub_10000EC94(v10);
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

unint64_t sub_10000EC94(unint64_t result)
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
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10000EE34(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t type metadata accessor for TVSetupAlertViewController(uint64_t a1)
{
  result = qword_100026728;
  if (!qword_100026728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000EFB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EFD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000F020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E40(&unk_100026310, &unk_1000188E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010A3C(v4, &v13, &qword_100026308, &qword_1000188D8);
      v5 = v13;
      v6 = v14;
      result = sub_10000DCBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100004920(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10000F150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_10000F188()
{
  v0[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_isDismissed] = 1;
  v1 = *&v0[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController];
  if (v1)
  {
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = v0;
    v6[4] = sub_100010B10;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10000A32C;
    v6[3] = &unk_100021128;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

void sub_10000F290(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003F94(v6, qword_1000266A8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (IsAppleInternalBuild())
    {

      v11 = a1;
      v12 = a2;
    }

    else
    {
      v12 = 0xE100000000000000;
      v11 = 42;
    }

    v13 = sub_100004030(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Trying PIN: %s", v9, 0xCu);
    sub_100002F14(v10);
  }

  v14 = *(v3 + OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_setupSession);
  if (v14)
  {
    v15 = v14;
    v16 = String._bridgeToObjectiveC()();
    [v15 pairSetupTryPIN:v16];
  }
}

void sub_10000F48C(unsigned __int8 a1)
{
  v3 = sub_100002E40(&qword_1000262F8, &qword_100018A80);
  __chkstk_darwin(v3, v4);
  v6 = &aBlock[-1] - v5;
  sub_100002E40(&qword_100026300, &qword_1000188D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018570;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v10 = sub_10000F020(inited);
  swift_setDeallocating();
  sub_100002E40(&qword_100026308, &qword_1000188D8);
  swift_arrayDestroy();
  v11 = swift_allocBox();
  v13 = v12;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v15 = String._bridgeToObjectiveC()();
      MGGetBoolAnswer();
    }
  }

  else if (!a1)
  {
    goto LABEL_7;
  }

  URL.init(string:)();
  sub_10001075C(v6, v13, &qword_1000262F8, &qword_100018A80);
LABEL_7:
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v10;
  v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_isDismissed] = 1;
  v17 = *&v1[OBJC_IVAR____TtC16TVSetupUIService26TVSetupAlertViewController_navigationViewController];
  if (v17)
  {
    v18 = v16;
    v19 = swift_allocObject();
    v19[2] = sub_100010754;
    v19[3] = v18;
    v19[4] = v1;
    aBlock[4] = sub_100010B10;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A32C;
    aBlock[3] = &unk_1000210D8;
    v20 = _Block_copy(aBlock);

    v21 = v17;

    v22 = v1;

    [v21 dismissViewControllerAnimated:1 completion:v20];

    _Block_release(v20);
  }

  else
  {
  }
}

void sub_10000F860()
{
  v1 = v0;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003F94(v2, qword_1000266A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received lock button press", v5, 2u);
  }

  if ((*((swift_isaMask & *v1) + 0xD0))())
  {
    v6 = sub_100010F58();
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();

    if (!v7)
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Confirming setup dismissal in response to lock button press", v10, 2u);
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100010B14(sub_100010AD4, v11, sub_100010AD8, v12);
    }
  }
}

void sub_10000FACC(void *a1)
{
  v2 = [a1 _numberOfStages] == 1 && objc_msgSend(a1, "_stagePhase") != 1;
  if (qword_1000266A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003F94(v3, qword_1000266A8);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received physical button action: %@", v7, 0xCu);
    sub_1000107C4(v8, &qword_1000262E8, &qword_1000188B8);
  }

  if (v2)
  {
    v10 = v4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Confirming setup dismissal in response to physical button action: %@", v13, 0xCu);
      sub_1000107C4(v14, &qword_1000262E8, &qword_1000188B8);
    }

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100010B14(sub_100010AD4, v16, sub_100010AD8, v17);
  }
}

void sub_10000FDC0(uint64_t a1)
{
  sub_10000FEA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000FEA4(uint64_t a1)
{
  if (!qword_1000260E0)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000260E0);
    }
  }
}

void sub_10000FF10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000FFA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000100C4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002E88(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010114()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100010170()
{
  result = qword_1000262C0;
  if (!qword_1000262C0)
  {
    sub_1000101D4(&qword_1000262B8, &qword_100018868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000262C0);
  }

  return result;
}

uint64_t sub_1000101D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100010288()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100010AE4;

  return sub_100009E64(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100010330()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010368(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010AE4;

  return sub_10000DACC(a1, v4);
}

uint64_t sub_100010420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000104D8;

  return sub_10000DACC(a1, v4);
}

uint64_t sub_1000104D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000105CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100010614()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000104D8;

  return sub_100009760(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1000106BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000106CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010714()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001075C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002E40(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000107C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E40(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100010824()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10001086C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000AB18(a1, a2);
  }
}

void sub_1000108D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000BA68();
  }
}

void sub_100010928()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_allocWithZone(NSError);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 initWithDomain:v3 code:301010 userInfo:0];

    sub_10000B1D4(v4, 0);
  }
}

void sub_1000109E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000AFEC(a1);
  }
}

uint64_t sub_100010A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002E40(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100010B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000160D0(0xD000000000000013, 0x800000010001C280);
  v7 = String._bridgeToObjectiveC()();
  v8 = SFAddSuffixForCurrentDeviceClass();

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_1000160D0(v9, v11);

  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  sub_1000160D0(0xD00000000000001FLL, 0x800000010001C2C0);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v15;
  sub_100006310(a3, a4);

  v17 = String._bridgeToObjectiveC()();

  v34 = sub_100011058;
  v35 = v16;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100002DC0;
  v33 = &unk_100021268;
  v18 = _Block_copy(&aBlock);

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  [v14 addAction:v20];
  sub_1000160D0(0x4C45434E4143, 0xE600000000000000);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_100006310(a1, a2);
  v22 = String._bridgeToObjectiveC()();

  v34 = sub_100011180;
  v35 = v21;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100002DC0;
  v33 = &unk_1000212B8;
  v23 = _Block_copy(&aBlock);

  v24 = [v19 actionWithTitle:v22 style:1 handler:v23];
  _Block_release(v23);

  [v14 addAction:v24];
  [v14 setPreferredAction:v20];
  v25 = v28;
  v26 = [v25 presentedViewController];
  if (v26)
  {
    do
    {
      v27 = v26;

      v26 = [v27 presentedViewController];
      v25 = v27;
    }

    while (v26);
  }

  else
  {
    v27 = v25;
  }

  [v27 presentViewController:v14 animated:1 completion:0];
}

id sub_100010F64(SEL *a1)
{
  v3 = v1;
  v4 = [v3 *a1];
  if (!v4)
  {
    return v3;
  }

  do
  {
    v5 = v4;

    v4 = [v5 *a1];
    v3 = v5;
  }

  while (v4);
  return v5;
}

uint64_t sub_100010FD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011010()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100011058()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v3 presentingViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      do
      {
        v5 = v4;

        v4 = [v5 presentingViewController];
        v6 = v5;
      }

      while (v4);
    }

    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_100011128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011140()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011180()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

Swift::Int sub_1000111F0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10001124C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000112C0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100011304()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_1000269C8);
  v1 = sub_100003F94(v0, qword_1000269C8);
  v2 = sub_100005EE0();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000113E0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10001144C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100002244;
}

uint64_t sub_1000114EC()
{
  v1 = (v0 + OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_deviceIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100011544(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_deviceIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_100011604()
{
  v1 = OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100011650(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_100011708(uint64_t a1)
{
  v204.receiver = v1;
  v204.super_class = type metadata accessor for TVSetupDoneViewController();
  objc_msgSendSuper2(&v204, "viewDidLoad");
  v2 = [v1 setDismissalType:3];
  v3 = *((swift_isaMask & *v1) + 0x98);
  v4 = (v3)(v2);
  if (v4)
  {

    v5 = 19279;
    v6 = 0xE200000000000000;
  }

  else
  {
    v5 = 0x4D45525F4E45504FLL;
    v6 = 0xEB0000000045544FLL;
  }

  sub_1000160D0(v5, v6);
  v7 = v3();
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v3();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 code];

    if (v10 == 301010)
    {
LABEL_7:

      v11 = &TVSetupRemoteLauncher__metaData;
      goto LABEL_11;
    }

    v12 = v3();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 code];

      if (v14 == 301042)
      {
        goto LABEL_7;
      }

LABEL_10:
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v16 = String._bridgeToObjectiveC()();

      v202 = sub_100014A2C;
      v203 = v15;
      aBlock = _NSConcreteStackBlock;
      v199 = 1107296256;
      v200 = sub_100002DC0;
      v201 = &unk_100021330;
      v17 = _Block_copy(&aBlock);
      v11 = &TVSetupRemoteLauncher__metaData;
      v18 = [objc_opt_self() actionWithTitle:v16 style:0 handler:v17];

      _Block_release(v17);

      v19 = [v1 addAction:v18];

LABEL_11:
      sub_1000160D0(0x45535F4F545F4F47, 0xEE0053474E495454);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v21 = String._bridgeToObjectiveC()();

      v202 = sub_100014C0C;
      v203 = v20;
      aBlock = _NSConcreteStackBlock;
      v199 = 1107296256;
      v200 = sub_100002DC0;
      v201 = &unk_100021358;
      v22 = _Block_copy(&aBlock);
      v23 = objc_opt_self();
      v24 = [v23 v11[51].ivar_lyt];

      _Block_release(v22);

      v26 = (v3)(v25);
      if (!v26)
      {
        v28 = String._bridgeToObjectiveC()();
        v29 = SFAddSuffixForCurrentDeviceClass();

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        sub_1000160D0(v30, v32);

        v33 = String._bridgeToObjectiveC()();

        [v1 setTitle:v33];

        sub_1000160D0(0xD000000000000011, 0x800000010001C320);
        v34 = String._bridgeToObjectiveC()();

        [v1 setSubtitle:v34];

        isa = String._bridgeToObjectiveC()();
        v35 = [objc_opt_self() imageNamed:isa];
LABEL_18:

        if (!v35)
        {
LABEL_21:

          return;
        }

        v50 = [objc_allocWithZone(UIImageView) initWithImage:v35];
        [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
        v197 = v24;
        v51 = [v1 contentView];
        [v51 addSubview:v50];

        v192 = objc_opt_self();
        sub_100002E40(&qword_100025FC0, &unk_1000183B0);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_100018950;
        v53 = [v50 centerXAnchor];
        v194 = v35;
        v54 = [v1 contentView];
        v55 = [v54 mainContentGuide];

        v56 = [v55 centerXAnchor];
        v57 = [v53 constraintEqualToAnchor:v56];

        *(v52 + 32) = v57;
        v58 = [v50 centerYAnchor];
        v59 = [v1 contentView];
        v60 = [v59 mainContentGuide];

        v61 = [v60 centerYAnchor];
        v62 = [v58 constraintEqualToAnchor:v61];

        *(v52 + 40) = v62;
        v63 = [v50 topAnchor];
        v64 = [v1 contentView];
        v65 = [v64 mainContentGuide];

        v66 = [v65 topAnchor];
        v67 = [v63 constraintGreaterThanOrEqualToAnchor:v66 constant:10.0];

        *(v52 + 48) = v67;
        v68 = [v50 bottomAnchor];

        v69 = [v1 contentView];
        v70 = [v69 mainContentGuide];

        v71 = [v70 bottomAnchor];
        v72 = [v68 constraintLessThanOrEqualToAnchor:v71 constant:-10.0];

        *(v52 + 56) = v72;
        sub_100002E88(0, &qword_100025FC8, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v192 activateConstraints:isa];
        v24 = v194;
        v73 = v197;
LABEL_20:

        goto LABEL_21;
      }

      isa = v26;
      if ([v26 code] == 301004 || objc_msgSend(isa, "code") == 301000)
      {
        v36 = String._bridgeToObjectiveC()();
        v37 = SFLocalizableWAPIStringKeyForKey();

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        sub_1000160D0(v38, v40);

        v41 = String._bridgeToObjectiveC()();

        [v1 setTitle:v41];

        v42 = String._bridgeToObjectiveC()();
        v43 = SFLocalizableWAPIStringKeyForKey();

        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        sub_1000160D0(v44, v46);

        v47 = String._bridgeToObjectiveC()();

        [v1 setSubtitle:v47];

        v48 = String._bridgeToObjectiveC()();
        v35 = [objc_opt_self() imageNamed:v48];

        v49 = [v1 addAction:v24];
LABEL_17:

        goto LABEL_18;
      }

      if ([isa code] == 301010)
      {
        sub_1000160D0(0xD000000000000015, 0x800000010001C490);
        v74 = String._bridgeToObjectiveC()();

        [v1 setTitle:v74];

        sub_1000160D0(0xD000000000000014, 0x800000010001C4B0);
        v75 = String._bridgeToObjectiveC()();

        [v1 setSubtitle:v75];

        v76 = String._bridgeToObjectiveC()();
        v77 = objc_opt_self();
        v78 = [v77 imageNamed:v76];

        v79 = [objc_allocWithZone(UIImageView) initWithImage:v78];
        v80 = v79;
        [v80 _setContinuousCornerRadius:17.5];
        v81 = [v80 layer];
        v82 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.21];
        v83 = [v82 CGColor];

        [v81 setBorderColor:v83];
        v84 = [v80 layer];
        [v84 setBorderWidth:1.0];

        v85 = [v80 layer];
        [v85 setMasksToBounds:1];

        v86 = String._bridgeToObjectiveC()();
        v87 = [v77 imageNamed:v86];

        v88 = [objc_allocWithZone(UIImageView) initWithImage:v87];
        v89 = v88;
        [v89 _setContinuousCornerRadius:17.5];
        v90 = [v89 layer];
        v91 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.21];
        v92 = [v91 CGColor];

        [v90 setBorderColor:v92];
        v93 = [v89 layer];
        [v93 setBorderWidth:1.0];

        v94 = [v89 layer];
        [v94 setMasksToBounds:1];

        sub_100002E40(&qword_100025FC0, &unk_1000183B0);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_100018930;
        *(v95 + 32) = v80;
        *(v95 + 40) = v89;
        v96 = objc_allocWithZone(UIStackView);
        sub_100002E88(0, &qword_100026420, UIView_ptr);
        v195 = v80;
        v193 = v89;
        v97 = Array._bridgeToObjectiveC()().super.isa;

        v98 = [v96 initWithArrangedSubviews:v97];

        [v98 setAxis:0];
        v99 = v98;
        [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v99 setClipsToBounds:0];
        v100 = objc_opt_self();
        v101 = [v100 clearColor];
        [v99 setBackgroundColor:v101];

        [v99 setSpacing:12.0];
        v102 = [v99 layer];
        v103 = [v100 blackColor];
        v104 = [v103 CGColor];

        [v102 setShadowColor:v104];
        v105 = [v99 layer];
        LODWORD(v106) = 1045220557;
        [v105 setShadowOpacity:v106];

        v107 = [v99 layer];
        [v107 setShadowRadius:10.0];

        v108 = [v99 layer];
        [v108 setShadowOffset:{0.0, 8.0}];

        v109 = [v1 contentView];
        [v109 addSubview:v99];

        v191 = objc_opt_self();
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_100018940;
        v111 = [v99 centerXAnchor];
        v112 = [v1 contentView];
        v113 = [v112 mainContentGuide];

        v114 = [v113 centerXAnchor];
        v115 = [v111 constraintEqualToAnchor:v114];

        *(v110 + 32) = v115;
        v116 = [v99 centerYAnchor];
        v117 = [v1 contentView];
        v118 = [v117 mainContentGuide];

        v119 = [v118 centerYAnchor];
        v120 = [v116 constraintEqualToAnchor:v119];

        *(v110 + 40) = v120;
        v121 = [v99 topAnchor];
        v122 = [v1 contentView];
        v123 = [v122 mainContentGuide];

        v124 = [v123 topAnchor];
        v125 = [v121 constraintGreaterThanOrEqualToAnchor:v124];

        *(v110 + 48) = v125;
        v126 = [v99 bottomAnchor];

        v127 = [v1 contentView];
        v128 = [v127 mainContentGuide];

        v129 = [v128 bottomAnchor];
        v130 = [v126 constraintLessThanOrEqualToAnchor:v129];

        *(v110 + 56) = v130;
        v131 = [v195 heightAnchor];
        v132 = [v131 constraintEqualToConstant:75.0];

        *(v110 + 64) = v132;
        v133 = [v195 widthAnchor];

        v134 = [v133 constraintEqualToConstant:75.0];
        *(v110 + 72) = v134;
        v135 = [v193 heightAnchor];
        v136 = [v135 constraintEqualToConstant:75.0];

        *(v110 + 80) = v136;
        v137 = [v193 widthAnchor];

        v138 = [v137 constraintEqualToConstant:75.0];
        *(v110 + 88) = v138;
        sub_100002E88(0, &qword_100025FC8, NSLayoutConstraint_ptr);
        v139 = Array._bridgeToObjectiveC()().super.isa;

        [v191 activateConstraints:v139];

        sub_1000160D0(0x45554E49544E4F43, 0xE800000000000000);
        v140 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v141 = String._bridgeToObjectiveC()();

        v202 = sub_1000152D0;
        v203 = v140;
        aBlock = _NSConcreteStackBlock;
        v199 = 1107296256;
        v200 = sub_100002DC0;
        v201 = &unk_1000213F8;
        v142 = _Block_copy(&aBlock);
        v50 = [v23 actionWithTitle:v141 style:0 handler:v142];

        _Block_release(v142);

        v73 = [v1 addAction:v50];

        goto LABEL_20;
      }

      if ([isa code] == 301005)
      {
        sub_1000160D0(0xD00000000000001ALL, 0x800000010001C450);
        v143 = String._bridgeToObjectiveC()();

        [v1 setTitle:v143];

        sub_1000160D0(0xD000000000000019, 0x800000010001C470);
        v144 = String._bridgeToObjectiveC()();

        [v1 setSubtitle:v144];

        v145 = String._bridgeToObjectiveC()();
        v35 = [objc_opt_self() imageNamed:v145];

        v49 = [v1 addAction:v24];
        goto LABEL_17;
      }

      if ([isa code] == 301001)
      {
        sub_1000160D0(0xD000000000000017, 0x800000010001C410);
        v146 = String._bridgeToObjectiveC()();

        [v1 setTitle:v146];

        v147 = String._bridgeToObjectiveC()();
        v148 = SFAddSuffixForCurrentDeviceClass();

        v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = v150;

        sub_1000160D0(v149, v151);

        v152 = String._bridgeToObjectiveC()();

        [v1 setSubtitle:v152];

        v153 = String._bridgeToObjectiveC()();
        v154 = [objc_opt_self() imageNamed:v153];

        if (v154)
        {
          v155 = [objc_opt_self() redColor];
          v35 = [v154 flattenedImageWithColor:v155];
        }

        else
        {
          v35 = 0;
        }

        v49 = [v1 addAction:v24];
        goto LABEL_17;
      }

      if ([isa code] == 301042)
      {
        sub_1000160D0(0xD000000000000012, 0x800000010001C3D0);
        v156 = String._bridgeToObjectiveC()();

        [v1 setTitle:v156];

        sub_1000160D0(0xD000000000000011, 0x800000010001C3F0);
        v157 = String._bridgeToObjectiveC()();

        [v1 setSubtitle:v157];

        v158 = objc_opt_self();
        v159 = [v158 configurationPreferringMulticolor];
        v160 = [objc_opt_self() systemFontOfSize:72.0 weight:UIFontWeightRegular];
        v161 = [v158 configurationWithFont:v160];

        v162 = [v159 configurationByApplyingConfiguration:v161];
        v163 = String._bridgeToObjectiveC()();
        v196 = [objc_opt_self() _systemImageNamed:v163 withConfiguration:v162];

        sub_1000160D0(0x4E5F455441445055, 0xEA0000000000574FLL);
        v164 = v11;
        v165 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v166 = String._bridgeToObjectiveC()();

        v202 = sub_1000152D0;
        v203 = v165;
        aBlock = _NSConcreteStackBlock;
        v199 = 1107296256;
        v200 = sub_100002DC0;
        v201 = &unk_1000213A8;
        v167 = _Block_copy(&aBlock);
        v168 = [v23 v164[51].ivar_lyt];

        _Block_release(v167);

        sub_1000160D0(0x4F4D5F4E5241454CLL, 0xEA00000000004552);
        v169 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v170 = String._bridgeToObjectiveC()();

        v202 = sub_100014C3C;
        v203 = v169;
        aBlock = _NSConcreteStackBlock;
        v199 = 1107296256;
        v200 = sub_100002DC0;
        v201 = &unk_1000213D0;
        v171 = _Block_copy(&aBlock);
        v172 = [v23 v164[51].ivar_lyt];

        _Block_release(v171);

        v35 = v196;

        goto LABEL_18;
      }

      if ([isa code] == 301021)
      {
        v173 = String._bridgeToObjectiveC()();
        v174 = SFLocalizableWAPIStringKeyForKey();

        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v176;

        sub_1000160D0(v175, v177);

        v178 = String._bridgeToObjectiveC()();

        [v1 setTitle:v178];

        if (!IsAppleInternalBuild())
        {
          v179 = String._bridgeToObjectiveC()();
          v35 = [objc_opt_self() imageNamed:v179];

          goto LABEL_38;
        }
      }

      else
      {
        sub_1000160D0(0xD000000000000013, 0x800000010001C340);
        sub_100002E40(&qword_100026418, qword_100018AC0);
        v180 = swift_allocObject();
        *(v180 + 16) = xmmword_100018920;
        v181 = [isa code];
        *(v180 + 56) = &type metadata for Int;
        *(v180 + 64) = &protocol witness table for Int;
        *(v180 + 32) = v181;
        String.init(format:_:)();

        v182 = String._bridgeToObjectiveC()();

        [v1 setTitle:v182];
      }

      v35 = 0;
LABEL_38:
      if (IsAppleInternalBuild())
      {
        v183 = [isa description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v184 = v11;

        v185 = String._bridgeToObjectiveC()();

        [v1 setSubtitle:v185];

        sub_1000160D0(0xD000000000000020, 0x800000010001C360);
        v186 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v187 = String._bridgeToObjectiveC()();

        v202 = sub_100014C24;
        v203 = v186;
        aBlock = _NSConcreteStackBlock;
        v199 = 1107296256;
        v200 = sub_100002DC0;
        v201 = &unk_100021380;
        v188 = _Block_copy(&aBlock);
        v189 = [v23 v184[51].ivar_lyt];

        _Block_release(v188);

        v190 = [v1 addAction:v189];
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100013874()
{
  v1 = v0;
  if (qword_1000269C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003F94(v2, qword_1000269C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Action button", v5, 2u);
  }

  v6 = (*((swift_isaMask & *v1) + 0x98))();
  if (v6)
  {
    v25 = v6;
    if ([v6 code] == 301000 || objc_msgSend(v25, "code") == 301004)
    {
      if (!(*((swift_isaMask & *v1) + 0x68))())
      {
LABEL_11:

        return;
      }

      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v1, 1, ObjectType, v8);
    }

    else if ([v25 code] == 301010)
    {
      if (!(*((swift_isaMask & *v1) + 0x68))())
      {
        goto LABEL_11;
      }

      v14 = v13;
      v15 = swift_getObjectType();
      (*(v14 + 8))(v1, v15, v14);
    }

    else if ([v25 code] == 301005)
    {
      if (!(*((swift_isaMask & *v1) + 0x68))())
      {
        goto LABEL_11;
      }

      v17 = v16;
      v18 = swift_getObjectType();
      (*(v17 + 16))(v1, 2, v18, v17);
    }

    else
    {
      v19 = [v25 code];
      v20 = (*((swift_isaMask & *v1) + 0x68))();
      v22 = v21;
      if (v19 == 301042)
      {
        if (!v20)
        {
          goto LABEL_11;
        }

        v23 = swift_getObjectType();
        (*(v22 + 16))(v1, 4, v23, v22);
      }

      else
      {
        if (!v20)
        {
          goto LABEL_11;
        }

        v24 = swift_getObjectType();
        (*(v22 + 16))(v1, 3, v24, v22);
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if ((*((swift_isaMask & *v1) + 0x68))())
  {
    v11 = v10;
    v12 = swift_getObjectType();
    (*(v11 + 16))(v1, 0, v12, v11);
    swift_unknownObjectRelease();
  }

  sub_100013C70();
}

void sub_100013C70()
{
  if (qword_1000269C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003F94(v1, qword_1000269C8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = (*((swift_isaMask & *v2) + 0x80))();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 7104878;
      v9 = 0xE300000000000000;
    }

    v10 = sub_100004030(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Launching the TVRemote with deviceIdentifier=%s", v5, 0xCu);
    sub_100002F14(v6);
  }

  else
  {
  }

  (*((swift_isaMask & *v2) + 0x80))();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [objc_opt_self() launchRemoteWithDeviceIdentifier:v12];
}

uint64_t sub_100013EA8()
{
  v1 = v0;
  v2 = type metadata accessor for URLComponents();
  v35 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002E40(&qword_1000262F8, &qword_100018A80);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v33 - v7;
  v9 = sub_100002E40(&qword_100026458, &qword_100018A88);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v33 - v11;
  if (qword_1000269C0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003F94(v13, qword_1000269C8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "handleReportBugButton()", v16, 2u);
  }

  sub_100002E40(&qword_100026460, &unk_100018A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018960;
  strcpy((inited + 32), "Classification");
  *(inited + 47) = -18;
  *(inited + 48) = 0x2073756F69726553;
  *(inited + 56) = 0xEB00000000677542;
  *(inited + 64) = 0x6E656E6F706D6F43;
  *(inited + 72) = 0xEB00000000444974;
  *(inited + 80) = 0x353634303532;
  *(inited + 88) = 0xE600000000000000;
  strcpy((inited + 96), "ComponentName");
  *(inited + 110) = -4864;
  *(inited + 112) = 0x565420656C707041;
  *(inited + 120) = 0xE800000000000000;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x800000010001C5A0;
  *(inited + 144) = 0x736775422077654ELL;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x800000010001C5C0;
  *(inited + 176) = 0xD000000000000028;
  *(inited + 184) = 0x800000010001C5E0;
  *(inited + 192) = 0x6375646F72706552;
  *(inited + 200) = 0xEF7974696C696269;
  strcpy((inited + 208), "I Didn't Try");
  *(inited + 221) = 0;
  *(inited + 222) = -5120;
  *(inited + 224) = 0x656C746954;
  *(inited + 232) = 0xE500000000000000;
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v37 = 0xD00000000000001BLL;
  v38 = 0x800000010001C610;
  v36 = (*((swift_isaMask & *v1) + 0x98))(v18);
  sub_100002E40(&qword_1000262D8, &qword_1000188A0);
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v20 = v38;
  *(inited + 240) = v37;
  *(inited + 248) = v20;
  v21 = sub_100015120(inited);
  swift_setDeallocating();
  sub_100002E40(&qword_100026468, &qword_100018AA0);
  swift_arrayDestroy();
  sub_100014514(v21);
  URLComponents.init(string:)();
  v22 = *(v35 + 48);
  result = v22(v12, 1, v2);
  if (!result)
  {

    result = URLComponents.queryItems.setter();
  }

  if (UIApp)
  {
    v24 = UIApp;

    if (v22(v12, 1, v2))
    {
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      v26 = 0;
    }

    else
    {
      v27 = v34;
      v28 = v35;
      (*(v35 + 16))(v34, v12, v2);
      URLComponents.url.getter();
      (*(v28 + 8))(v27, v2);
      v29 = type metadata accessor for URL();
      v30 = *(v29 - 8);
      v26 = 0;
      if ((*(v30 + 48))(v8, 1, v29) != 1)
      {
        URL._bridgeToObjectiveC()(v31);
        v26 = v32;
        (*(v30 + 8))(v8, v29);
      }
    }

    [v24 openURL:v26 withCompletionHandler:0];

    return sub_100015234(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *sub_100014514(uint64_t a1)
{
  v33 = type metadata accessor for URLQueryItem();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v31 = v6;
  v26 = v1;
  v36 = &_swiftEmptyArrayStorage;
  sub_100014F28(0, v7, 0);
  v8 = v36;
  v9 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v35 = *(a1 + 36);
  v29 = a1 + 64;
  v30 = v3 + 32;
  v27 = a1 + 72;
  v28 = v7;
  v32 = v3;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v35 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v34 = v12;
    v15 = a1;

    v16 = v31;
    URLQueryItem.init(name:value:)();

    v36 = v8;
    v18 = v8[2];
    v17 = v8[3];
    if (v18 >= v17 >> 1)
    {
      sub_100014F28((v17 > 1), v18 + 1, 1);
      v8 = v36;
    }

    v8[2] = v18 + 1;
    result = (*(v32 + 32))(v8 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v18, v16, v33);
    v13 = 1 << *(v15 + 32);
    if (v11 >= v13)
    {
      goto LABEL_25;
    }

    v9 = v29;
    v19 = *(v29 + 8 * v14);
    if ((v19 & (1 << v11)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v15;
    if (v35 != *(v15 + 36))
    {
      goto LABEL_27;
    }

    v20 = v19 & (-2 << (v11 & 0x3F));
    if (v20)
    {
      v13 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v14 << 6;
      v22 = v14 + 1;
      v23 = (v27 + 8 * v14);
      while (v22 < (v13 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_10001529C(v11, v35, 0);
          v13 = __clz(__rbit64(v24)) + v21;
          goto LABEL_20;
        }
      }

      result = sub_10001529C(v11, v35, 0);
LABEL_20:
      a1 = v15;
    }

    v12 = v34 + 1;
    v11 = v13;
    if (v34 + 1 == v28)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_100014860(void *a1)
{
  *&v1[OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_deviceIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_error] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TVSetupDoneViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithContentView:", a1);

  return v4;
}

id sub_100014960()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSetupDoneViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000149F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100014A2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1000269C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003F94(v2, qword_1000269C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Tapped done button", v5, 2u);
    }

    v6 = (*((swift_isaMask & *v1) + 0x68))();
    if (v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v1, 0, ObjectType, v8);
      v6 = swift_unknownObjectRelease();
    }

    v10 = (*((swift_isaMask & *v1) + 0x98))(v6);
    if (v10)
    {
      v11 = v10;

      v1 = v11;
    }

    else
    {
      sub_100013C70();
    }
  }
}

uint64_t sub_100014BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100014C3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*((swift_isaMask & *Strong) + 0x68))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(v1, 5, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_100014D04(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

unint64_t sub_100014D60()
{
  result = qword_100026428;
  if (!qword_100026428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026428);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVSetupDoneViewControllerDismissReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVSetupDoneViewControllerDismissReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_100014F28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014F48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014F48(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002E40(&qword_100026470, &qword_100018AA8);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
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
  v15 = *(type metadata accessor for URLQueryItem() - 8);
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

unint64_t sub_100015120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E40(&qword_100026478, &unk_100018AB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000DCBC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_100015234(uint64_t a1)
{
  v2 = sub_100002E40(&qword_100026458, &qword_100018A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001529C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000152D4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FCC(v0, qword_100026AE8);
  v1 = sub_100003F94(v0, qword_100026AE8);
  v2 = sub_100005FA8();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000153B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10001541C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100002244;
}

void sub_1000154BC(uint64_t a1)
{
  v2 = v1;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for TVSetupCaptiveNetworkWarningViewController();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  sub_1000060DC(0, 0);
  sub_1000160D0(0xD00000000000001DLL, 0x800000010001C650);
  v3 = String._bridgeToObjectiveC()();

  [v1 setTitle:v3];

  v4 = WiFiCopyCurrentNetworkInfo();
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      aBlock[0] = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  sub_1000160D0(0xD000000000000024, 0x800000010001C690);
  v6 = String._bridgeToObjectiveC()();

  [v2 setSubtitle:v6];

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() imageNamed:v7];

  if (v8)
  {
    v9 = [objc_opt_self() systemBlueColor];
    v10 = [v8 imageWithTintColor:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];
  [v11 setContentMode:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v2 contentView];
  [v12 addSubview:v11];

  v13 = [v2 contentView];
  v14 = [v13 mainContentGuide];

  v15 = objc_opt_self();
  sub_100002E40(&qword_100025FC0, &unk_1000183B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000183A0;
  v17 = [v11 centerXAnchor];
  v18 = [v14 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v11 centerYAnchor];
  v21 = [v14 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v23 = [v11 leadingAnchor];
  v24 = [v14 leadingAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

  *(v16 + 48) = v25;
  v26 = [v11 trailingAnchor];
  v27 = [v14 trailingAnchor];
  v28 = [v26 constraintLessThanOrEqualToAnchor:v27];

  *(v16 + 56) = v28;
  v29 = [v11 bottomAnchor];

  v30 = [v14 bottomAnchor];
  v31 = [v29 constraintLessThanOrEqualToAnchor:v30];

  *(v16 + 64) = v31;
  sub_100015CB0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];

  sub_1000160D0(0x45554E49544E4F43, 0xE800000000000000);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100015D34;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DC0;
  aBlock[3] = &unk_1000214D8;
  v35 = _Block_copy(aBlock);
  v36 = [objc_opt_self() actionWithTitle:v34 style:0 handler:v35];

  _Block_release(v35);

  v37 = [v2 addAction:v36];
}

unint64_t sub_100015C5C()
{
  result = qword_100026488;
  if (!qword_100026488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026488);
  }

  return result;
}

unint64_t sub_100015CB0()
{
  result = qword_100025FC8;
  if (!qword_100025FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025FC8);
  }

  return result;
}

uint64_t sub_100015CFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100015D34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100015DE4();
  }
}

uint64_t sub_100015D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100015DE4()
{
  if ((*(v0 + OBJC_IVAR____TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController_didTapContinue) & 1) == 0)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController_didTapContinue) = 1;
    if (qword_100026AE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003F94(v2, qword_100026AE8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Tapped continue button", v5, 2u);
    }

    sub_1000160D0(0x495443454E4E4F43, 0xEA0000000000474ELL);
    v6 = String._bridgeToObjectiveC()();

    [v1 showActivityIndicatorWithStatus:v6];

    if ((*((swift_isaMask & *v1) + 0x60))())
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v1, ObjectType, v8);

      swift_unknownObjectRelease();
    }
  }
}

id sub_100015FAC(void *a1)
{
  *&v1[OBJC_IVAR____TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController_didTapContinue] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TVSetupCaptiveNetworkWarningViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithContentView:", a1);

  return v3;
}

id sub_10001608C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSetupCaptiveNetworkWarningViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000160D0(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_10001618C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1000161C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100016258()
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_1000162E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
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

uint64_t sub_1000163A4(char a1)
{
  if (!a1)
  {
    return sub_1000160D0(0xD000000000000013, 0x800000010001C760);
  }

  if (a1 == 1)
  {
    v1 = "DEVICE_CLASS_IPOD";
  }

  else
  {
    v1 = "DEVICE_CLASS_IPHONE";
  }

  return sub_1000160D0(0xD000000000000011, (v1 | 0x8000000000000000));
}

uint64_t sub_1000163F8()
{
  if (qword_100026B00 != -1)
  {
    swift_once();
  }

  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetSInt32Answer();

  swift_beginAccess();
  v2 = qword_100026B08;
  if (*(qword_100026B08 + 16) && (v3 = sub_1000164F4(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v5 = 3;
  }

  swift_endAccess();
  return v5;
}

unint64_t sub_1000164CC()
{
  result = sub_100016760(&off_100021500);
  qword_100026B08 = result;
  return result;
}

unint64_t sub_1000164F4(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000166F4(v1, v2);
}

unint64_t sub_100016540()
{
  result = qword_100026550;
  if (!qword_100026550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceInfo.DeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceInfo.DeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000166F4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100016760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E40(&qword_100026558, "\nB");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 36); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000164F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

id sub_100016850()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100026C18 = result;
  return result;
}

uint64_t sub_100016B28()
{
  v0 = type metadata accessor for ImageResource();
  sub_100003FCC(v0, qword_100026D68);
  sub_100003F94(v0, qword_100026D68);
  if (qword_100026C10 != -1)
  {
    swift_once();
  }

  v1 = qword_100026C18;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100016C3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ImageResource();
  sub_100003FCC(v5, a2);
  sub_100003F94(v5, a2);
  if (qword_100026C10 != -1)
  {
    swift_once();
  }

  v6 = qword_100026C18;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100016D04(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ImageResource();

  return sub_100003F94(v4, a2);
}

uint64_t sub_100016D7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageResource();
  v7 = sub_100003F94(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}