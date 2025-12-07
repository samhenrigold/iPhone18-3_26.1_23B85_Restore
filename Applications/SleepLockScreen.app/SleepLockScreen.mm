int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v3, v4, 0, 0);
  return 0;
}

__n128 sub_100001C38(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001C44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001C64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_100001CA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001CB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001CD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100001D20(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100001D74()
{
  swift_getObjectType();
  v3 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier));
  return v3;
}

void sub_100001DDC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v2[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame];
  if (v2[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame + 32])
  {
    if (*(a1 + 32))
    {
      return;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    v33.origin.x = v4;
    v33.origin.y = v5;
    v33.size.width = v6;
    v33.size.height = v7;
    if (CGRectEqualToRect(*v12, v33))
    {
      return;
    }
  }

  static Logger.mode.getter();
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[1] = v13;
    v32 = v17;
    *v16 = 136446466;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10000D820(v18, v19, &v32);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = v12[32];
    v22 = *(v12 + 1);
    v29 = *v12;
    v30 = v22;
    v31 = v21;
    sub_1000039A0(0, &qword_10001D128, type metadata accessor for CGRect, &type metadata accessor for Optional);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000D820(v23, v24, &v32);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Calculated new visibleContentFrame: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v11, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    sub_100005560();
  }
}

id sub_1000020AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  result = CGRectEqualToRect(*&v5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds], v33);
  if ((result & 1) == 0)
  {
    static Logger.mode.getter();
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v16;
      v32 = v20;
      *v19 = 136446466;
      v21 = _typeName(_:qualified:)();
      v23 = sub_10000D820(v21, v22, &v32);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = *(v14 + 1);
      v30 = *v14;
      v31 = v24;
      type metadata accessor for CGRect(0);
      v25 = String.init<A>(describing:)();
      v27 = sub_10000D820(v25, v26, &v32);

      *(v19 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s] Received new safeContentBounds: %s", v19, 0x16u);
      swift_arrayDestroy();
      v16 = v29;
    }

    (*(v11 + 8))(v13, v10);
    return [v16 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100002320(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003854();
  v11 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000038A0;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003B0C;
  aBlock[3] = &unk_100018BD8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000038C0();
  sub_1000039A0(0, &qword_10001D120, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100003918();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1000025B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsLayout];
  }
}

uint64_t sub_100002610(_BYTE *a1, uint64_t a2)
{
  sub_1000039A0(0, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  if (*a1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();

      if (v9)
      {
        dispatch thunk of LockScreenContentModel.alarm.getter();
        sub_100005230(v6);

        sub_1000037C8(v6);
      }
    }

    return dispatch thunk of LockScreenContentModel.alarmButtonPressed.setter();
  }

  return result;
}

void sub_100002734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    static Logger.mode.getter();
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      v14 = sub_100001D74();
      v16 = sub_10000D820(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] traitCollectionDidChange", v12, 0xCu);
      sub_10000377C(v13);
    }

    (*(v4 + 8))(v6, v3);
    [v9 setNeedsLayout];
  }
}

void sub_100002954()
{
  if (*&v0[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView])
  {
    [v0 addSubview:?];
    v1 = *&v0[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugSafeContentBoundsView];
    if (v1)
    {
      v2 = *&v0[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugActualContentBoundsView];
      if (v2)
      {
        v3 = v1;
        v13 = v2;
        v4 = [v13 layer];
        v5 = objc_opt_self();
        v6 = [v5 blueColor];
        v7 = [v6 colorWithAlphaComponent:0.3];

        v8 = [v7 CGColor];
        [v4 setBackgroundColor:v8];

        [v0 addSubview:v13];
        [v0 sendSubviewToBack:v13];
        v9 = [v3 layer];
        v10 = [v5 greenColor];
        v11 = [v10 colorWithAlphaComponent:0.1];

        v12 = [v11 CGColor];
        [v9 setBackgroundColor:v12];

        [v0 addSubview:v3];
        [v0 sendSubviewToBack:v3];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100002B98()
{
  ObjectType = swift_getObjectType();
  v103 = type metadata accessor for LockScreenContentState();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v106 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v99 - v8;
  __chkstk_darwin(v7);
  v11 = &v99 - v10;
  v12 = type metadata accessor for LockScreenContainerView();
  v109.receiver = v0;
  v109.super_class = v12;
  objc_msgSendSuper2(&v109, "layoutSubviews");
  static Logger.mode.getter();
  v13 = v0;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v105 = ObjectType;
  v107 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v108 = v18;
    *v17 = 136446210;
    *&v110[0] = _typeName(_:qualified:)();
    *(&v110[0] + 1) = v19;
    v20._countAndFlagsBits = 58;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    String.append(_:)(*&v13[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier]);
    v21 = v4;
    v22 = sub_10000D820(*&v110[0], *(&v110[0] + 1), &v108);

    *(v17 + 4) = v22;
    v4 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] layoutSubviews", v17, 0xCu);
    sub_10000377C(v18);

    v3 = v107;
  }

  v23 = *(v4 + 8);
  v23(v11, v3);
  v24 = *&v13[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugSafeContentBoundsView];
  if (v24)
  {
    [v24 setFrame:{*&v13[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds], *&v13[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 8], *&v13[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 16], *&v13[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 24]}];
  }

  v25 = &v13[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
  v26 = *&v13[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 16];
  v100 = objc_opt_self();
  v27 = [v100 mainScreen];
  [v27 _referenceBounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v112.origin.x = v29;
  v112.origin.y = v31;
  v112.size.width = v33;
  v112.size.height = v35;
  v36 = CGRectGetWidth(v112) < 414.0;
  v37 = 92.0;
  if (!v36)
  {
    v37 = 102.0;
  }

  v38 = v26 - v37;
  Height = CGRectGetHeight(*v25);
  static Logger.mode.getter();
  v40 = v13;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  v43 = os_log_type_enabled(v41, v42);
  v104 = v23;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v44 = 136446466;
    *&v110[0] = _typeName(_:qualified:)();
    *(&v110[0] + 1) = v45;
    v46._countAndFlagsBits = 58;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    String.append(_:)(*&v40[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier]);
    v47 = v4;
    v48 = sub_10000D820(*&v110[0], *(&v110[0] + 1), &v108);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2082;
    *v110 = v38;
    *(v110 + 1) = Height;
    type metadata accessor for CGSize(0);
    v49 = String.init<A>(describing:)();
    v51 = sub_10000D820(v49, v50, &v108);

    *(v44 + 14) = v51;
    v4 = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "[%{public}s] targetSize: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    v23 = v104;

    v52 = v9;
    v53 = v107;
  }

  else
  {

    v52 = v9;
    v53 = v3;
  }

  v23(v52, v53);
  v56 = v106;
  v57 = OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView;
  v58 = *&v40[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView];
  if (!v58)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  LODWORD(v54) = 1112014848;
  LODWORD(v55) = 1112014848;
  [v58 systemLayoutSizeFittingSize:v38 withHorizontalFittingPriority:Height verticalFittingPriority:{v54, v55}];
  v60 = v59;
  v62 = v61;
  static Logger.mode.getter();
  v63 = v40;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v66 = 136446466;
    *&v110[0] = _typeName(_:qualified:)();
    *(&v110[0] + 1) = v67;
    v68._countAndFlagsBits = 58;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);
    String.append(_:)(*&v63[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier]);
    v69 = sub_10000D820(*&v110[0], *(&v110[0] + 1), &v108);
    v105 = v4;
    v70 = v69;

    *(v66 + 4) = v70;
    *(v66 + 12) = 2082;
    *v110 = v60;
    *(v110 + 1) = v62;
    type metadata accessor for CGSize(0);
    v71 = String.init<A>(describing:)();
    v73 = sub_10000D820(v71, v72, &v108);

    *(v66 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "[%{public}s] size: %{public}s", v66, 0x16u);
    swift_arrayDestroy();

    v104(v106, v107);
  }

  else
  {

    v23(v56, v107);
  }

  x = v25->origin.x;
  y = v25->origin.y;
  width = v25->size.width;
  v77 = v25->size.height;
  v113.origin.x = v25->origin.x;
  v113.origin.y = y;
  v113.size.width = width;
  v113.size.height = v77;
  MidX = CGRectGetMidX(v113);
  v114.origin.x = x;
  v114.origin.y = y;
  v114.size.width = width;
  v114.size.height = v77;
  CGRectGetMidY(v114);
  v79 = v101;
  dispatch thunk of LockScreenContentModel.state.getter();
  v80 = (*(v102 + 88))(v79, v103);
  if (v80 == enum case for LockScreenContentState.loading(_:) || v80 == enum case for LockScreenContentState.windDown(_:) || v80 == enum case for LockScreenContentState.bedtime(_:))
  {
    v90 = v25->origin.y;
  }

  else
  {
    if (v80 != enum case for LockScreenContentState.wakeUpGreeting(_:))
    {
LABEL_30:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v81 = [v100 mainScreen];
    [v81 _referenceBounds];
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;

    v115.origin.x = v83;
    v115.origin.y = v85;
    v115.size.width = v87;
    v115.size.height = v89;
    CGRectGetMidX(v115);
    v116.origin.x = v83;
    v116.origin.y = v85;
    v116.size.width = v87;
    v116.size.height = v89;
    v90 = CGRectGetMidY(v116) + v62 / -2.5;
  }

  v91 = *&v40[v57];
  if (!v91)
  {
    goto LABEL_27;
  }

  [v91 setFrame:{MidX + v60 * -0.5, v90, v60, v62}];
  v92 = *&v40[v57];
  if (!v92)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v92 frame];
  v93 = &v63[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame];
  v110[0] = *&v63[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame];
  v110[1] = *&v63[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame + 16];
  v111 = v63[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame + 32];
  *v93 = v94;
  *(v93 + 1) = v95;
  *(v93 + 2) = v96;
  *(v93 + 3) = v97;
  v93[32] = 0;
  sub_100001DDC(v110);
  result = *&v63[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugActualContentBoundsView];
  if (!result)
  {
    return result;
  }

  if (v93[32])
  {
    goto LABEL_29;
  }

  return [result setFrame:{*v93, *(v93 + 1), *(v93 + 2), *(v93 + 3)}];
}

id sub_100003554(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    [a1 translationInView:v1];
    if (fabs(v4) >= fabs(v5))
    {
      if (v4 >= 0.0)
      {
        return dispatch thunk of LockScreenContentModel.moveDemoStateBackward()();
      }

      else
      {
        return dispatch thunk of LockScreenContentModel.moveDemoStateForward()();
      }
    }

    else
    {
      return dispatch thunk of LockScreenContentModel.toggleDemoMode()();
    }
  }

  return result;
}

id sub_100003674(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LockScreenContainerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000377C(void *a1)
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

uint64_t sub_1000037C8(uint64_t a1)
{
  sub_1000039A0(0, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100003854()
{
  result = qword_10001D440;
  if (!qword_10001D440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D440);
  }

  return result;
}

uint64_t sub_1000038A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000038C0()
{
  result = qword_10001D470;
  if (!qword_10001D470)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D470);
  }

  return result;
}

unint64_t sub_100003918()
{
  result = qword_10001D480;
  if (!qword_10001D480)
  {
    sub_1000039A0(255, &qword_10001D120, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D480);
  }

  return result;
}

void sub_1000039A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100003A04()
{
  v1 = v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_modelSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_alarmSheetSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView____lazy_storage___screenBounds;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = (v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100003B0C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100003B50()
{
  swift_getObjectType();
  v3 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier));
  return v3;
}

uint64_t sub_100003BB8()
{
  [*(v0 + 16) invalidate];

  return _swift_deallocClassInstance(v0, 24, 7);
}

char *sub_100003C00()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView] = 0;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_lockScreenStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentStateObserver] = 0;
  v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible] = 0;
  v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_didConfigureHostConnection] = 0;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences] = 0;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection] = 0;
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  sub_10000F2DC(8, v10, v12, v13);

  v14 = static String._fromSubstring(_:)();
  v16 = v15;

  v17 = &v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier];
  *v17 = v14;
  v17[1] = v16;
  v18 = objc_allocWithZone(type metadata accessor for LockScreenContentModel());

  p_opt_class_meths = &OBJC_PROTOCOL___UITraitEnvironment.opt_class_meths;
  *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model] = LockScreenContentModel.init(debugIdentifier:)();
  v20 = type metadata accessor for LockScreenViewController();
  v36.receiver = v1;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", 0, 0);
  static Logger.mode.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    v26 = sub_100003B50();
    v28 = sub_10000D820(v26, v27, &v35);
    v34 = v2;
    v29 = v28;

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] init", v24, 0xCu);
    sub_10000377C(v25);

    p_opt_class_meths = (&OBJC_PROTOCOL___UITraitEnvironment + 48);

    (*(v3 + 8))(v5, v34);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v30 = *(p_opt_class_meths[39] + v21);
  v31 = LockScreenContentModel.stateDidChange.getter();

  v35 = v31;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000FDDC(0);
  sub_10000E10C(&unk_10001D560, sub_10000FDDC, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v32 = Publisher<>.sink(receiveValue:)();

  *&v21[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentStateObserver] = v32;

  return v21;
}

void sub_10000405C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100004EB0(a1);
  }
}

id sub_100004110()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v16 = _typeName(_:qualified:)();
    v17 = v10;
    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    String.append(_:)(*&v5[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v12 = sub_10000D820(v16, v17, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] deinit", v8, 0xCu);
    sub_10000377C(v9);
  }

  (*(v2 + 8))(v4, v1);
  v13 = type metadata accessor for LockScreenViewController();
  v19.receiver = v5;
  v19.super_class = v13;
  return objc_msgSendSuper2(&v19, "dealloc");
}

void sub_1000043DC()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LockScreenViewController();
  v47.receiver = v0;
  v47.super_class = v5;
  objc_msgSendSuper2(&v47, "viewDidLoad");
  static Logger.mode.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  p_opt_class_meths = (&OBJC_PROTOCOL___UITraitEnvironment + 48);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46 = v11;
    *v10 = 136446210;
    v44 = _typeName(_:qualified:)();
    v45 = v12;
    v13._countAndFlagsBits = 58;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    String.append(_:)(*&v6[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v14 = sub_10000D820(v44, v45, &v46);
    p_opt_class_meths = &OBJC_PROTOCOL___UITraitEnvironment.opt_class_meths;

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] view did load", v10, 0xCu);
    sub_10000377C(v11);
  }

  (*(v2 + 8))(v4, v1);
  v15 = *&v6[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model];
  v16 = (p_opt_class_meths[38] + v6);
  v17 = *v16;
  v18 = v16[1];
  v19 = objc_allocWithZone(type metadata accessor for LockScreenContainerView());
  v20 = v6;
  v21 = v15;

  v22 = sub_10000F428(v21, v20, v17, v18, v19);

  v23 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView;
  v24 = *&v20[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView];
  *&v20[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView] = v22;
  v25 = v22;

  v26 = [objc_opt_self() mainScreen];
  [v26 _referenceBounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setFrame:{v28, v30, v32, v34}];
  v35 = *&v20[v23];
  if (!v35)
  {
    __break(1u);
    goto LABEL_9;
  }

  v36 = v35;
  v37 = String._bridgeToObjectiveC()();
  [v36 setAccessibilityIdentifier:v37];

  v38 = [v20 view];
  if (!v38)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!*&v20[v23])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v39 = v38;
  [v38 addSubview:?];

  v40 = [v20 view];
  if (v40)
  {
    v41 = v40;
    v42 = String._bridgeToObjectiveC()();
    [v41 setAccessibilityIdentifier:v42];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_100004878(char a1, SEL *a2, const char *a3, ...)
{
  swift_getObjectType();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LockScreenViewController();
  v26.receiver = v3;
  v26.super_class = v11;
  objc_msgSendSuper2(&v26, *a2, a1 & 1);
  static Logger.mode.getter();
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136446210;
    v23 = _typeName(_:qualified:)();
    v24 = v18;
    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    String.append(_:)(*&v12[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v20 = sub_10000D820(v23, v24, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, v22, v16, 0xCu);
    sub_10000377C(v17);
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_100004AFC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    static Logger.mode.getter();
    v19 = v5;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v22 = 136446466;
      v37 = _typeName(_:qualified:)();
      v38 = v23;
      v24._countAndFlagsBits = 58;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      String.append(_:)(*&v19[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v25 = sub_10000D820(v37, v38, &v41);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v37 = *&a1;
      v38 = *&a2;
      v39 = a3;
      v40 = a4;
      type metadata accessor for CGRect(0);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000D820(v26, v27, &v41);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] update layout with safe bounds: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v13, v10);
    v29 = *&v19[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView];
    if (v29)
    {
      v30 = &v29[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
      v31 = *&v29[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
      v32 = *&v29[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 8];
      v33 = *&v29[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 16];
      v34 = *&v29[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds + 24];
      *v30 = a1;
      v30[1] = a2;
      v30[2] = a3;
      v30[3] = a4;
      v35 = v29;
      sub_1000020AC(v31, v32, v33, v34);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_100004EB0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LockScreenContentState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v32 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v27[-v7];
  v9 = type metadata accessor for Logger();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.mode.getter();
  v12 = *(v4 + 16);
  v12(v8, a1, v3);
  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v9;
    v17 = v16;
    v29 = swift_slowAlloc();
    v36 = v29;
    *v17 = 136446466;
    v34 = _typeName(_:qualified:)();
    v35 = v18;
    v28 = v15;
    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    String.append(_:)(*&v13[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v20 = sub_10000D820(v34, v35, &v36);
    ObjectType = v13;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v12(v32, v8, v3);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v4 + 8))(v8, v3);
    v25 = sub_10000D820(v22, v24, &v36);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v28, "[%{public}s] updated content state: %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v33 + 8))(v11, v30);
  }

  else
  {

    (*(v4 + 8))(v8, v3);
    (*(v33 + 8))(v11, v9);
  }

  return sub_10000955C();
}

void sub_100005230(uint64_t a1)
{
  v2 = v1;
  sub_10000FC54(0, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Alarm();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_10000E780(a1, v6, &qword_10001D4F0, &type metadata accessor for Alarm);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_10000E800(v6, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional, sub_10000FC54);
      sub_100006808(1u);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_100005770(v10);
      (*(v8 + 8))(v10, v7);
    }

    v16 = *(v2 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model);
    dispatch thunk of LockScreenContentModel.didInteractWithAlarm(_:)();
  }

  else
  {
    __break(1u);
  }
}

void *sub_100005560()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v15 = _typeName(_:qualified:)();
    v16 = v10;
    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    String.append(_:)(*&v5[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v12 = sub_10000D820(v15, v16, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] contentSizeDidChange", v8, 0xCu);
    sub_10000377C(v9);
  }

  (*(v2 + 8))(v4, v1);
  result = sub_100007234();
  if (result)
  {
    [result didChangeStyle];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100005770(uint64_t a1)
{
  v98 = a1;
  ObjectType = swift_getObjectType();
  sub_10000FC54(0, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v93 = &ObjectType - v2;
  v3 = type metadata accessor for Alarm();
  v105 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v86 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v102 = &ObjectType - v7;
  v8 = __chkstk_darwin(v6);
  v101 = &ObjectType - v9;
  v85 = v10;
  __chkstk_darwin(v8);
  v12 = &ObjectType - v11;
  v91 = type metadata accessor for Logger();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LockScreenViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass:{ObjCClassFromMetadata, ObjectType}];
  v107._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0xD000000000000012;
  v18._object = 0x8000000100012EE0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v107._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v107);
  countAndFlagsBits = v20._countAndFlagsBits;
  object = v20._object;

  v21 = [v16 bundleForClass:ObjCClassFromMetadata];
  v108._object = 0xE000000000000000;
  v22._object = 0x8000000100012F00;
  v22._countAndFlagsBits = 0xD000000000000010;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v108._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v108);
  v95 = v24._countAndFlagsBits;
  v97 = v24._object;

  v25 = [v16 bundleForClass:ObjCClassFromMetadata];
  v109._object = 0xE000000000000000;
  v26._object = 0x8000000100012F20;
  v27 = v98;
  v26._countAndFlagsBits = 0xD000000000000010;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v109._countAndFlagsBits = 0;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v28, v109);
  v87 = v29._countAndFlagsBits;
  v96 = v29._object;

  v30 = [v16 bundleForClass:ObjCClassFromMetadata];
  v110._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000012;
  v31._object = 0x8000000100012F40;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v110._countAndFlagsBits = 0;
  v92 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v110);

  static Logger.mode.getter();
  v33 = v105;
  v35 = v105 + 16;
  v34 = *(v105 + 16);
  v36 = v12;
  v34(v12, v27, v3);
  v34(v101, v27, v3);
  v37 = v33;
  v99 = v34;
  v88 = v35;
  v34(v102, v27, v3);
  v89 = v14;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v104 = v3;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136446978;
    v43 = _typeName(_:qualified:)();
    v45 = sub_10000D820(v43, v44, aBlock);

    *(v41 + 4) = v45;
    *(v41 + 12) = 1026;
    v46 = Alarm.isSleepAlarm.getter() & 1;
    v47 = *(v105 + 8);
    v47(v36, v104);
    *(v41 + 14) = v46;
    *(v41 + 18) = 1026;
    v48 = v101;
    v49 = Alarm.isSnoozed.getter() & 1;
    v47(v48, v104);
    *(v41 + 20) = v49;
    *(v41 + 24) = 1026;
    v3 = v104;
    v50 = v102;
    v51 = Alarm.isFiring.getter() & 1;
    v47(v50, v3);
    v37 = v105;
    *(v41 + 26) = v51;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%{public}s] creating remote alert alarm - is sleep: %{BOOL,public}d, is snoozed: %{BOOL,public}d, is firing: %{BOOL,public}d", v41, 0x1Eu);
    sub_10000377C(v42);
    v27 = v98;
  }

  else
  {
    v52 = *(v33 + 8);
    v52(v102, v3);
    v52(v101, v3);
    v52(v36, v3);
  }

  (*(v90 + 8))(v89, v91);
  v53 = v93;
  v99(v93, v27, v3);
  (*(v37 + 56))(v53, 0, 1, v3);
  static Alarm.statusText(for:includeTime:allowSnoozeCountdown:isShortFormat:)();
  v55 = v54;
  sub_10000E800(v53, &qword_10001D4F0, &type metadata accessor for Alarm, &type metadata accessor for Optional, sub_10000FC54);
  v56 = v94;
  if (v55)
  {
    v57 = String._bridgeToObjectiveC()();
  }

  else
  {
    v57 = 0;
  }

  v58 = [objc_allocWithZone(SBSRemoteContentAlert) initWithTitle:0 message:v57 preferredStyle:0];

  v59 = objc_allocWithZone(SBSRemoteContentAlertAction);
  v60 = String._bridgeToObjectiveC()();
  v61 = [v59 initWithTitle:v60 style:0];

  [v58 addAction:v61];
  if (Alarm.isActive.getter() & 1) != 0 || (Alarm.isSleepAlarm.getter())
  {
    v62 = objc_allocWithZone(SBSRemoteContentAlertAction);
    v63 = String._bridgeToObjectiveC()();
    v64 = [v62 initWithTitle:v63 style:2];

    [v58 addAction:v64];
  }

  v65 = objc_allocWithZone(SBSRemoteContentAlertAction);
  v66 = String._bridgeToObjectiveC()();

  v67 = [v65 initWithTitle:v66 style:1];

  [v58 addAction:v67];
  v56[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible] = 1;
  sub_10000955C();
  v68 = sub_100007234();
  if (v68)
  {
    v69 = v68;
    v70 = v86;
    v71 = v27;
    v72 = v104;
    v99(v86, v71, v104);
    v73 = v105;
    v74 = (*(v105 + 80) + 40) & ~*(v105 + 80);
    v75 = (v85 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    v77 = countAndFlagsBits;
    *(v76 + 2) = v56;
    *(v76 + 3) = v77;
    *(v76 + 4) = object;
    (*(v73 + 32))(&v76[v74], v70, v72);
    v78 = &v76[v75];
    v79 = v97;
    *v78 = v95;
    v78[1] = v79;
    v80 = &v76[(v75 + 23) & 0xFFFFFFFFFFFFFFF8];
    v81 = v96;
    *v80 = v87;
    v80[1] = v81;
    aBlock[4] = sub_10000EB58;
    aBlock[5] = v76;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006800;
    aBlock[3] = &unk_100018F10;
    v82 = _Block_copy(aBlock);
    v83 = v56;

    [v69 presentAlert:v58 replyBlock:v82];

    swift_unknownObjectRelease();
    _Block_release(v82);
  }

  else
  {
  }
}

uint64_t sub_100006188(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a8;
  v38 = a6;
  v39 = a7;
  v35 = a3;
  v36 = a4;
  v37 = a9;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v45 = *(v13 - 8);
  v46 = v13;
  __chkstk_darwin(v13);
  v40 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Alarm();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  v42 = static OS_dispatch_queue.main.getter();
  (*(v16 + 16))(v18, a5, v15);
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a1;
  v22 = v36;
  *(v21 + 4) = v35;
  *(v21 + 5) = v22;
  (*(v16 + 32))(&v21[v19], v18, v15);
  v23 = &v21[v20];
  v24 = v39;
  *v23 = v38;
  v23[1] = v24;
  v25 = &v21[(v20 + 23) & 0xFFFFFFFFFFFFFFF8];
  v26 = v37;
  *v25 = v41;
  v25[1] = v26;
  aBlock[4] = sub_10000ED18;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003B0C;
  aBlock[3] = &unk_100018F60;
  v27 = _Block_copy(aBlock);
  v28 = a2;
  v29 = a1;

  v30 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000E10C(&qword_10001D470, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC54(0, &qword_10001D120, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100003918();
  v32 = v43;
  v31 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v42;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v47 + 8))(v32, v31);
  return (*(v45 + 8))(v30, v46);
}

void sub_1000065B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible) = 0;
  sub_10000955C();
  v15 = [a2 title];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == a3 && v19 == a4)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v34 = Alarm.isSleepAlarm.getter();
    sub_100006808(v34 & 1);
    return;
  }

LABEL_7:
  v22 = [a2 title];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == a6 && v26 == a7)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v38 = *(a1 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model);
    dispatch thunk of LockScreenContentModel.dismissActiveAlarm(_:)();
    v35 = v38;
    goto LABEL_24;
  }

LABEL_13:
  v29 = [a2 title];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (v31 == a8 && v33 == a9)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {
      return;
    }
  }

  v39 = *(a1 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model);
  dispatch thunk of LockScreenContentModel.skipUpcomingOccurrenceAlarm()();
  v35 = v39;
LABEL_24:
}

uint64_t sub_100006808(unsigned int a1)
{
  ObjectType = swift_getObjectType();
  v77 = type metadata accessor for Logger();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v3 = &v71[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v75 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v79 = &v71[-v8];
  sub_10000FC54(0, &qword_10001D4C8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v71[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v71[-v17];
  __chkstk_darwin(v16);
  v80 = &v71[-v19];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = objc_allocWithZone(LSApplicationRecord);
  v24 = sub_10000D200(v20, v22, 1);
  v78 = v3;
  v72 = a1;
  if (!v24)
  {
LABEL_2:
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    v28 = objc_allocWithZone(LSApplicationRecord);
    v29 = sub_10000D200(v25, v27, 1);
    v35 = v80;
    if (v29)
    {
      v36 = v29;
      v37 = [v29 applicationState];
      v38 = [v37 isInstalled];

      if (v38)
      {
        v39 = HKSPSleepURL();
        if (v39)
        {
          v40 = v39;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v5 + 56))(v18, 0, 1, v4);
        }

        else
        {

          (*(v5 + 56))(v18, 1, 1, v4);
        }

        sub_10000E6EC(v18, v35);
        goto LABEL_18;
      }
    }

    v30 = HKSPSleepFocusConfigurationURL();
    if (v30)
    {
      v31 = v30;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 56))(v15, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v15, 1, 1, v4);
    }

    v41 = v79;
    sub_10000E6EC(v15, v35);
    goto LABEL_19;
  }

  v32 = v24;
  v33 = [v24 applicationState];
  v34 = [v33 isInstalled];

  if ((v34 & 1) == 0)
  {

    goto LABEL_2;
  }

  v35 = v80;
  URL.init(string:)();

LABEL_18:
  v41 = v79;
LABEL_19:
  sub_10000E780(v35, v12, &qword_10001D4C8, &type metadata accessor for URL);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_10000E800(v35, &qword_10001D4C8, &type metadata accessor for URL, &type metadata accessor for Optional, sub_10000FC54);
    v42 = v12;
  }

  else
  {
    (*(v5 + 32))(v41, v12, v4);
    v43 = [objc_opt_self() defaultWorkspace];
    if (v43)
    {
      v45 = v43;
      URL._bridgeToObjectiveC()(v44);
      v47 = v46;
      sub_10000FC54(0, &qword_10001D4D8, sub_10000E860, &type metadata accessor for _ContiguousArrayStorage);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000111B0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v49;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v50;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_10000E8C4(inited);
      swift_setDeallocating();
      sub_10000E860();
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v72 = [v45 openSensitiveURL:v47 withOptions:isa];
    }

    else
    {
      v72 = 2;
    }

    v52 = v78;
    static Logger.mode.getter();
    v53 = v75;
    (*(v5 + 16))(v75, v41, v4);
    v54 = v74;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v57 = 136446722;
      v81 = _typeName(_:qualified:)();
      v82 = v58;
      v59._countAndFlagsBits = 58;
      v59._object = 0xE100000000000000;
      String.append(_:)(v59);
      String.append(_:)(*&v54[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v60 = sub_10000D820(v81, v82, v83);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2082;
      sub_10000E10C(&qword_10001D4D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v64 = *(v5 + 8);
      v64(v53, v4);
      v65 = sub_10000D820(v61, v63, v83);

      *(v57 + 14) = v65;
      *(v57 + 22) = 2082;
      LOBYTE(v81) = v72;
      v66 = String.init<A>(describingOptional:)();
      v68 = sub_10000D820(v66, v67, v83);

      *(v57 + 24) = v68;
      _os_log_impl(&_mh_execute_header, v55, v56, "[%{public}s] opening %{public}s, success: %{public}s", v57, 0x20u);
      swift_arrayDestroy();

      (*(v76 + 8))(v78, v77);
      v64(v79, v4);
    }

    else
    {

      v69 = *(v5 + 8);
      v69(v53, v4);
      (*(v76 + 8))(v52, v77);
      v69(v41, v4);
    }

    v42 = v80;
  }

  return sub_10000E800(v42, &qword_10001D4C8, &type metadata accessor for URL, &type metadata accessor for Optional, sub_10000FC54);
}

uint64_t sub_100007234()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_didConfigureHostConnection) != 1)
  {
    static Logger.mode.getter();
    v9 = v0;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v23[0] = v13;
      *v12 = 136446210;
      *&aBlock = _typeName(_:qualified:)();
      *(&aBlock + 1) = v14;
      v15._countAndFlagsBits = 58;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      String.append(_:)(*&v9[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v16 = sub_10000D820(aBlock, *(&aBlock + 1), v23);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] requested remote content host proxy before configuring connection", v12, 0xCu);
      sub_10000377C(v13);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v21 = sub_10000E6E4;
  v22 = v5;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_100007850;
  *(&v20 + 1) = &unk_100018EC0;
  v6 = _Block_copy(&aBlock);
  v7 = v0;

  v8 = [v7 _remoteViewControllerProxyWithErrorHandler:v6];
  _Block_release(v6);
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v20 = 0u;
  }

  v23[0] = aBlock;
  v23[1] = v20;
  if (!*(&v20 + 1))
  {
    sub_10000E800(v23, &unk_10001D4B0, &type metadata for Any[8], &type metadata accessor for Optional, sub_10000FA6C);
    return 0;
  }

  sub_10000FD74(0, &qword_10001D4B8, &protocolRef_SBSRemoteContentHostInterface);
  if (swift_dynamicCast())
  {
    return v18[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000075B4(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v8 = a2;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v4;
    v12 = v11;
    v23 = swift_slowAlloc();
    *v12 = 136446466;
    v21 = _typeName(_:qualified:)();
    v22 = v13;
    v14._countAndFlagsBits = 58;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    String.append(_:)(*&v8[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v15 = sub_10000D820(v21, v22, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v21 = a1;
    swift_errorRetain();
    sub_10000D14C(0, &qword_10001D4C0, &unk_10001D450, &protocol descriptor for Error, sub_10000FD10);
    v16 = String.init<A>(describing:)();
    v18 = sub_10000D820(v16, v17, &v23);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] error acquiring remote content host proxy: %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    return (*(v5 + 8))(v7, v20);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_100007850(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10000791C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v59 = *(v8 - 8);
  __chkstk_darwin(v8);
  v58 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v54[-v11];
  a1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_didConfigureHostConnection] = 1;
  BSDeserializeCGRectFromXPCDictionaryWithKey();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  static Logger.mode.getter();
  swift_unknownObjectRetain();
  v21 = a1;

  swift_unknownObjectRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v24 = os_log_type_enabled(v22, v23);
  v60 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v56 = v4;
    v26 = v25;
    v62 = swift_slowAlloc();
    *v26 = 136446978;
    v55 = v23;
    v27 = sub_100003B50();
    v29 = sub_10000D820(v27, v28, &v62);
    v57 = v8;
    v30 = v29;

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    v61[0] = a2;
    sub_10000F27C(0, &qword_10001D500, &type metadata for AnyHashable, &protocol witness table for AnyHashable, &type metadata accessor for Dictionary);

    v31 = String.init<A>(describingOptional:)();
    v33 = sub_10000D820(v31, v32, &v62);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2082;
    *v61 = v14;
    *&v61[1] = v16;
    *&v61[2] = v18;
    *&v61[3] = v20;
    type metadata accessor for CGRect(0);
    v34 = String.init<A>(describing:)();
    v36 = sub_10000D820(v34, v35, &v62);

    *(v26 + 24) = v36;
    *(v26 + 32) = 2082;
    v8 = v57;
    v61[0] = a4;
    sub_10000FD74(0, &qword_10001D508, &protocolRef_OS_xpc_object);
    swift_unknownObjectRetain();
    v37 = String.init<A>(describingOptional:)();
    v39 = sub_10000D820(v37, v38, &v62);

    *(v26 + 34) = v39;
    _os_log_impl(&_mh_execute_header, v22, v55, "[%{public}s] configure with userInfo: %{public}s, bounds: %{public}s endpoint: %{public}s", v26, 0x2Au);
    swift_arrayDestroy();
  }

  v40 = *(v59 + 8);
  v40(v12, v8);
  if (a4)
  {
    v41 = swift_unknownObjectRetain();
    sub_10000AE88(v41);
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = v58;
    static Logger.mode.getter();
    v43 = v60;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v57 = v8;
      v48 = v47;
      v61[0] = v47;
      *v46 = 136446210;
      v49 = sub_100003B50();
      v51 = sub_10000D820(v49, v50, v61);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%{public}s] cannot connect to sleepd due to nil endpoint", v46, 0xCu);
      sub_10000377C(v48);

      v53 = v57;
      v52 = v58;
    }

    else
    {

      v52 = v42;
      v53 = v8;
    }

    v40(v52, v53);
  }

  sub_100004AFC(v14, v16, v18, v20);
}

uint64_t sub_100007E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_10000EDEC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v12._object = 0x8000000100013010;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000080A8()
{
  swift_getObjectType();
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;
    v23 = _typeName(_:qualified:)();
    v24 = v14;
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    String.append(_:)(*&v8[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v16 = sub_10000D820(v23, v24, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] didChangeContentBounds called, requesting content bounds using ObjC shim", v12, 0xCu);
    sub_10000377C(v13);

    v3 = v22;
  }

  (*(v5 + 8))(v7, v4);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  type metadata accessor for MainActor();
  v18 = v8;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  sub_10000887C(0, 0, v3, &unk_1000112D0, v20);
}

uint64_t sub_1000083B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100008450, v6, v5);
}

uint64_t sub_100008450()
{

  v1 = sub_100007234();
  if (v1)
  {
    v2 = v1;
    v3 = v0[8];
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v0[6] = sub_10000E6A4;
    v0[7] = v5;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100008808;
    v0[5] = &unk_100018E70;
    v6 = _Block_copy(v0 + 2);
    v7 = v3;

    [v4 getContentBoundsWithBlock:v6 interface:v2];
    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  v8 = v0[1];

  return v8();
}

void sub_100008594(void *a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v17 = 136446466;
    v25 = _typeName(_:qualified:)();
    v26 = v18;
    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    String.append(_:)(*&v14[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v20 = sub_10000D820(v25, v26, &v29);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v25 = *&a2;
    v26 = *&a3;
    v27 = a4;
    v28 = a5;
    type metadata accessor for CGRect(0);
    v21 = String.init<A>(describing:)();
    v23 = sub_10000D820(v21, v22, &v29);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] received new bounds: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v11 + 8))(v13, v10);
  sub_100004AFC(a2, a3, a4, a5);
}

uint64_t sub_100008808(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(v10, a2, a3, a4, a5);
}

uint64_t sub_10000887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E780(a3, v25 - v10, &qword_10001D430, &type metadata accessor for TaskPriority);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000E800(v11, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);
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

      sub_10000E800(a3, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);

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

  sub_10000E800(a3, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);
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

uint64_t sub_100008C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E780(a3, v25 - v10, &qword_10001D430, &type metadata accessor for TaskPriority);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000E800(v11, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);
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
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_10000FA6C(0, &qword_10001D4F8, &type metadata for () + 8, &type metadata accessor for Optional);

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

      sub_10000E800(v25[0], &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);

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

  sub_10000E800(a3, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional, sub_10000FC54);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_10000FA6C(0, &qword_10001D4F8, &type metadata for () + 8, &type metadata accessor for Optional);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000090A0(void *a1, void (*a2)(xpc_object_t), uint64_t a3)
{
  v43 = a3;
  v45 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  static Logger.mode.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v42 = v5;
    v14 = v4;
    v15 = v13;
    v16 = swift_slowAlloc();
    v46[0] = v16;
    *v15 = 136446210;
    v17 = sub_100003B50();
    v19 = sub_10000D820(v17, v18, v46);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] getInlinePresentationContentFrame called, returning content size", v15, 0xCu);
    sub_10000377C(v16);

    v4 = v14;
    v5 = v42;
  }

  v20 = *(v5 + 8);
  result = v20(v9, v4);
  v22 = *&v10[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView];
  v23 = v44;
  if (v22)
  {
    v24 = v22 + OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if ((*(v24 + 32) & 1) == 0)
    {
      v27 = *(v24 + 16);
      v28 = *(v24 + 24);
      v25 = *v24;
      v26 = *(v24 + 8);
    }

    static Logger.mode.getter();
    v29 = v10;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v32 = 136446466;
      v33 = sub_100003B50();
      v35 = sub_10000D820(v33, v34, &v47);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      v46[0] = v25;
      v46[1] = v26;
      v46[2] = v27;
      v46[3] = v28;
      type metadata accessor for CGRect(0);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000D820(v36, v37, &v47);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%{public}s] frame: %{public}s", v32, 0x16u);
      swift_arrayDestroy();

      v39 = v44;
    }

    else
    {

      v39 = v23;
    }

    v20(v39, v4);
    v40 = xpc_dictionary_create(0, 0, 0);
    BSSerializeCGRectToXPCDictionaryWithKey();
    if (v45)
    {
      v45(v40);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10000955C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v170 = *(v2 - 8);
  v171 = v2;
  v3 = __chkstk_darwin(v2);
  v164 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v176 = &v154 - v5;
  v6 = type metadata accessor for LockScreenContentState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v160 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v161 = &v154 - v11;
  v12 = __chkstk_darwin(v10);
  v159 = &v154 - v13;
  v14 = __chkstk_darwin(v12);
  v169 = &v154 - v15;
  v16 = __chkstk_darwin(v14);
  v158 = &v154 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v154 - v19;
  v21 = __chkstk_darwin(v18);
  v157 = &v154 - v22;
  v23 = __chkstk_darwin(v21);
  v163 = &v154 - v24;
  v25 = __chkstk_darwin(v23);
  v168 = &v154 - v26;
  v27 = __chkstk_darwin(v25);
  v172 = &v154 - v28;
  v29 = __chkstk_darwin(v27);
  v156 = &v154 - v30;
  __chkstk_darwin(v29);
  v32 = &v154 - v31;
  v33 = type metadata accessor for DispatchPredicate();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = (&v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v36 = static OS_dispatch_queue.main.getter();
  (*(v34 + 104))(v36, enum case for DispatchPredicate.onQueue(_:), v33);
  v37 = _dispatchPreconditionTest(_:)();
  (*(v34 + 8))(v36, v33);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_71;
  }

  v155 = v20;
  v38 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model;
  v39 = *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model];
  dispatch thunk of LockScreenContentModel.state.getter();

  v40 = v7[11];
  LODWORD(v39) = v40(v32, v6);
  v41 = enum case for LockScreenContentState.loading(_:);
  v42 = v7[1];
  v174 = v7 + 1;
  v175 = v42;
  v42(v32, v6);
  if (v39 == v41)
  {
    v43 = v176;
    static Logger.mode.getter();
    v44 = v1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v179[0] = v48;
      *v47 = 136446210;
      v177 = _typeName(_:qualified:)();
      v178 = v49;
      v50._countAndFlagsBits = 58;
      v50._object = 0xE100000000000000;
      String.append(_:)(v50);
      String.append(_:)(*&v44[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v51 = sub_10000D820(v177, v178, v179);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}s] skipping updating content preferences while in loading state", v47, 0xCu);
      sub_10000377C(v48);
    }

    return (*(v170 + 8))(v43, v171);
  }

  v53 = *&v1[v38];
  v54 = v156;
  dispatch thunk of LockScreenContentModel.state.getter();

  v176 = v1;
  v173 = v38;
  v55 = *&v1[v38];
  v56 = v54;
  v57 = v55;
  v58 = dispatch thunk of LockScreenContentModel.hideTime.getter();

  v59 = v7[2];
  v60 = v172;
  v59(v172, v56, v6);
  v166 = v40;
  v167 = v7 + 11;
  v61 = v40(v60, v6);
  LODWORD(v172) = enum case for LockScreenContentState.windDown(_:);
  v89 = v61 == v41;
  v165 = v41;
  v62 = v157;
  if (v89)
  {
LABEL_10:
    v63 = v56;
    v64 = v175;
    v175(v63, v6);
    v156 = 0;
    goto LABEL_14;
  }

  if (v61 != v172 && v61 != enum case for LockScreenContentState.bedtime(_:))
  {
    if (v61 != enum case for LockScreenContentState.wakeUpGreeting(_:))
    {
      goto LABEL_71;
    }

    goto LABEL_10;
  }

  v65 = v56;
  v64 = v175;
  v175(v65, v6);
  v66 = 2;
  if ((v58 & 1) == 0)
  {
    v66 = 0;
  }

  v156 = v66;
LABEL_14:
  v67 = *&v176[v173];
  v68 = v168;
  dispatch thunk of LockScreenContentModel.state.getter();

  v69 = v163;
  v59(v163, v68, v6);
  v70 = v166(v69, v6);
  if (v70 == v165)
  {
    LODWORD(v163) = enum case for LockScreenContentState.bedtime(_:);
LABEL_16:
    v71 = 1;
    goto LABEL_21;
  }

  if (v70 == v172)
  {
    LODWORD(v163) = enum case for LockScreenContentState.bedtime(_:);
    v71 = 2;
  }

  else
  {
    if (v70 != enum case for LockScreenContentState.bedtime(_:))
    {
      if (v70 != enum case for LockScreenContentState.wakeUpGreeting(_:))
      {
        goto LABEL_71;
      }

      LODWORD(v163) = enum case for LockScreenContentState.bedtime(_:);
      goto LABEL_16;
    }

    v71 = 3;
    LODWORD(v163) = v70;
  }

LABEL_21:
  v154 = v71;
  v64(v168, v6);
  v72 = *&v176[v173];
  dispatch thunk of LockScreenContentModel.state.getter();

  v73 = v155;
  v59(v155, v62, v6);
  v74 = v166(v73, v6);
  if (v74 == v165)
  {
    LODWORD(v155) = 0;
    LODWORD(v168) = enum case for LockScreenContentState.wakeUpGreeting(_:);
  }

  else
  {
    LODWORD(v168) = enum case for LockScreenContentState.wakeUpGreeting(_:);
    LODWORD(v155) = 1;
    if (v74 != v172 && v74 != v163)
    {
      if (v74 != v168)
      {
        goto LABEL_71;
      }

      LODWORD(v155) = 0;
      LODWORD(v168) = v74;
    }
  }

  v64(v62, v6);
  v75 = v176;
  v76 = v173;
  v77 = *&v176[v173];
  v78 = v158;
  dispatch thunk of LockScreenContentModel.state.getter();

  v175(v78, v6);
  v79 = *&v75[v76];
  dispatch thunk of LockScreenContentModel.state.getter();

  v175(v78, v6);
  v80 = *&v75[v76];
  dispatch thunk of LockScreenContentModel.state.getter();

  v81 = v78;
  v82 = v175;
  v175(v81, v6);
  v83 = *&v75[v76];
  v84 = v169;
  dispatch thunk of LockScreenContentModel.state.getter();

  v85 = v159;
  v59(v159, v84, v6);
  v86 = v166;
  v87 = v166(v85, v6);
  v88 = v165;
  v89 = v87 == v165 || v87 == v172;
  v90 = v89 || v87 == v163;
  v91 = !v90;
  if (!v90 && v87 != v168)
  {
    goto LABEL_71;
  }

  v82(v169, v6);
  v92 = *&v176[v173];
  v93 = v161;
  dispatch thunk of LockScreenContentModel.state.getter();

  v94 = v160;
  v59(v160, v93, v6);
  v95 = v86(v94, v6);
  v96 = 3;
  if (v95 == v88 || v95 == v172)
  {
    v97 = v91;
    goto LABEL_44;
  }

  v97 = v91;
  if (v95 != v163)
  {
    if (v95 == v168)
    {
      v96 = 4;
      goto LABEL_44;
    }

LABEL_71:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_44:
  v98 = v93;
  v99 = v96;
  v82(v98, v6);
  sub_10000FC54(0, &qword_10001D488, sub_10000E178, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000111C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v101;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v102;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v103;
  v104 = v155;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v105;
  *(inited + 120) = Int._bridgeToObjectiveC()();
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v106;
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  *(inited + 152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 160) = v107;
  v108 = v176;
  v175 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible;
  *(inited + 168) = Bool._bridgeToObjectiveC()();
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v109;
  *(inited + 192) = Bool._bridgeToObjectiveC()();
  *(inited + 200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 208) = v110;
  *(inited + 216) = Bool._bridgeToObjectiveC()();
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v111;
  *(inited + 240) = Int._bridgeToObjectiveC()();
  sub_10000E3F8(inited);
  v112 = v97;
  swift_setDeallocating();
  sub_10000E178(0);
  swift_arrayDestroy();
  v113 = objc_allocWithZone(SBSRemoteContentPreferences);
  sub_10000E4F0(0, &qword_10001D498, NSNumber_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v115 = [v113 initWithConfiguration:isa];

  v116 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences;
  v117 = *&v108[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences];
  *&v108[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences] = v115;

  v118 = v164;
  static Logger.mode.getter();
  v119 = v108;
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();

  LODWORD(v173) = v121;
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v169 = v99;
    v123 = v122;
    v172 = swift_slowAlloc();
    v179[0] = v172;
    *v123 = 136448770;
    v177 = _typeName(_:qualified:)();
    v178 = v124;
    v174 = v119;
    v125._countAndFlagsBits = 58;
    v125._object = 0xE100000000000000;
    String.append(_:)(v125);
    String.append(_:)(*(v174 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier));
    v126 = sub_10000D820(v177, v178, v179);
    LODWORD(v168) = v112;
    v127 = v126;

    *(v123 + 4) = v127;
    *(v123 + 12) = 2082;
    v177 = *&v108[v116];
    v128 = v177;
    sub_10000E4F0(0, &qword_10001D4A0, SBSRemoteContentPreferences_ptr);
    v129 = v128;
    v130 = String.init<A>(describingOptional:)();
    v132 = sub_10000D820(v130, v131, v179);

    *(v123 + 14) = v132;
    *(v123 + 22) = 2082;
    v177 = v156;
    v133 = dispatch thunk of CustomStringConvertible.description.getter();
    v135 = sub_10000D820(v133, v134, v179);

    *(v123 + 24) = v135;
    *(v123 + 32) = 2082;
    v177 = v154;
    v136 = dispatch thunk of CustomStringConvertible.description.getter();
    v138 = sub_10000D820(v136, v137, v179);

    *(v123 + 34) = v138;
    *(v123 + 42) = 2082;
    if (v104)
    {
      v139 = 1702195828;
    }

    else
    {
      v139 = 0x65736C6166;
    }

    if (v104)
    {
      v140 = 0xE400000000000000;
    }

    else
    {
      v140 = 0xE500000000000000;
    }

    v141 = sub_10000D820(v139, v140, v179);

    *(v123 + 44) = v141;
    *(v123 + 52) = 2082;
    v177 = 4;
    v142 = dispatch thunk of CustomStringConvertible.description.getter();
    v144 = sub_10000D820(v142, v143, v179);

    *(v123 + 54) = v144;
    *(v123 + 62) = 2082;
    *(v123 + 64) = sub_10000D820(1702195828, 0xE400000000000000, v179);
    *(v123 + 72) = 2082;
    if (*(v175 + v108))
    {
      v145 = 1702195828;
    }

    else
    {
      v145 = 0x65736C6166;
    }

    if (*(v175 + v108))
    {
      v146 = 0xE400000000000000;
    }

    else
    {
      v146 = 0xE500000000000000;
    }

    v147 = sub_10000D820(v145, v146, v179);

    *(v123 + 74) = v147;
    *(v123 + 82) = 2082;
    *(v123 + 84) = sub_10000D820(1702195828, 0xE400000000000000, v179);
    *(v123 + 92) = 2082;
    if (v168)
    {
      v148 = 1702195828;
    }

    else
    {
      v148 = 0x65736C6166;
    }

    if (v168)
    {
      v149 = 0xE400000000000000;
    }

    else
    {
      v149 = 0xE500000000000000;
    }

    v150 = sub_10000D820(v148, v149, v179);

    *(v123 + 94) = v150;
    *(v123 + 102) = 2082;
    v177 = v169;
    v151 = dispatch thunk of CustomStringConvertible.description.getter();
    v153 = sub_10000D820(v151, v152, v179);

    *(v123 + 104) = v153;
    _os_log_impl(&_mh_execute_header, v120, v173, "[%{public}s] updating content preferences %{public}s, dateTime: %{public}s, background: %{public}s, reduceWhitePoint: %{public}s, homeGestureMode: %{public}s, suppressNotifications: %{public}s, suppressBottomEdgeContent: %{public}s, presentInline: %{public}s, dismissOnTap: %{public}s, preferredNotificationListMode: %{public}s", v123, 0x70u);
    swift_arrayDestroy();

    (*(v170 + 8))(v164, v171);
  }

  else
  {

    (*(v170 + 8))(v118, v171);
  }

  result = sub_100007234();
  if (result)
  {
    [result didChangeStyle];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  type metadata accessor for MainActor();
  v8[6] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A6F0, v10, v9);
}

uint64_t sub_10000A6F0()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(*(v0 + 40) + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences);
    v4 = v3;
    v2(v3);
  }

  **(v0 + 16) = v1 == 0;
  v5 = *(v0 + 8);

  return v5();
}

void *sub_10000A954(char *a1, unint64_t a2)
{
  v43 = a2;
  v3 = type metadata accessor for Logger();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LockScreenContentState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v36 - v9;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model;
  v14 = *&a1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model];
  dispatch thunk of LockScreenContentModel.state.getter();

  LODWORD(v14) = (*(v6 + 88))(v12, v5);
  v15 = enum case for LockScreenContentState.wakeUpGreeting(_:);
  v16 = *(v6 + 8);
  v16(v12, v5);
  if (v14 == v15)
  {
    if (v43 > 8)
    {
      goto LABEL_14;
    }

    if (((1 << v43) & 0x7B) == 0)
    {
      v17 = *&a1[v13];
      dispatch thunk of LockScreenContentModel.dismissWakeUpGreeting()();
    }
  }

  v37 = v13;
  v18 = *&a1[v13];
  v19 = v38;
  dispatch thunk of LockScreenContentModel.state.getter();

  v20 = v39;
  (*(v6 + 104))(v39, enum case for LockScreenContentState.bedtime(_:), v5);
  v21 = static LockScreenContentState.== infix(_:_:)();
  v16(v20, v5);
  v16(v19, v5);
  v22 = v43;
  v23 = v40;
  if (v21)
  {
    if (v43 <= 8)
    {
      if (((1 << v43) & 0x17B) == 0)
      {
        v24 = *&a1[v37];
        dispatch thunk of LockScreenContentModel.dismissSleepLock()();
      }

      goto LABEL_9;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_9:
  static Logger.mode.getter();
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v28 = 136446466;
    v29 = sub_100003B50();
    v31 = sub_10000D820(v29, v30, &v45);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    v44 = v22;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = sub_10000D820(v32, v33, &v45);

    *(v28 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] did dismiss, type: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
  }

  (*(v41 + 8))(v23, v42);
  result = sub_10000C0CC();
  if (result)
  {
    [result didDismissWithReason:v22];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000AE88(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v64 - v7;
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  sub_10000FC54(0, &qword_10001D460, sub_10000D0A4, &type metadata accessor for Published.Publisher);
  v12 = v11;
  v13 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v64 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    type metadata accessor for LockScreenClient(0);
    v21 = swift_allocObject();
    sub_10000D0A4(0);
    aBlock = 0;
    v75 = 0;
    Published.init(initialValue:)();
    swift_beginAccess();
    sub_10000FC54(0, &qword_10001D358, sub_10000D0A4, &type metadata accessor for Published);
    Published.projectedValue.getter();
    swift_endAccess();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10000DFA8;
    *(v23 + 24) = v22;
    sub_10000DFE0();
    v24 = Publisher<>.sink(receiveValue:)();

    (*(v13 + 8))(v15, v12);
    *&v2[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_lockScreenStateObserver] = v24;

    static Logger.mode.getter();
    v25 = v2;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = a1;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v73 = v30;
      *v29 = 136446210;
      aBlock = _typeName(_:qualified:)();
      v75 = v31;
      v32._countAndFlagsBits = 58;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      String.append(_:)(*&v25[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v33 = sub_10000D820(aBlock, v75, &v73);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] creating connection", v29, 0xCu);
      sub_10000377C(v30);

      a1 = v28;
    }

    v70 = *(v71 + 8);
    v70(v10, v72);
    v34 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    [v34 _setEndpoint:a1];
    v35 = objc_allocWithZone(NSXPCConnection);
    v65 = v34;
    v36 = [v35 initWithListenerEndpoint:v34];
    v37 = HKSPSleepLockScreenClientInterface();
    [v36 setExportedInterface:v37];

    v66 = v21;
    [v36 setExportedObject:v21];
    v38 = HKSPSleepLockScreenServerInterface();
    [v36 setRemoteObjectInterface:v38];

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78 = sub_10000E068;
    v79 = v39;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100003B0C;
    v77 = &unk_100018D30;
    v40 = _Block_copy(&aBlock);

    [v36 setInterruptionHandler:v40];
    _Block_release(v40);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78 = sub_10000E0A8;
    v79 = v41;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100003B0C;
    v77 = &unk_100018D58;
    v42 = _Block_copy(&aBlock);

    [v36 setInvalidationHandler:v42];
    _Block_release(v42);
    v43 = v67;
    static Logger.mode.getter();
    v44 = v25;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v73 = v48;
      *v47 = 136446210;
      aBlock = _typeName(_:qualified:)();
      v75 = v49;
      v50._countAndFlagsBits = 58;
      v50._object = 0xE100000000000000;
      String.append(_:)(v50);
      String.append(_:)(*&v44[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v51 = sub_10000D820(aBlock, v75, &v73);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}s] resuming connection", v47, 0xCu);
      sub_10000377C(v48);
    }

    v70(v43, v72);
    [v36 resume];
    type metadata accessor for LockScreenViewController.DaemonConnectionWrapper();
    v52 = swift_allocObject();
    *(v52 + 16) = v36;
    *&v44[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection] = v52;
    v53 = v36;

    v54 = v68;
    static Logger.mode.getter();
    v55 = v44;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v73 = v59;
      *v58 = 136446210;
      aBlock = _typeName(_:qualified:)();
      v75 = v60;
      v61._countAndFlagsBits = 58;
      v61._object = 0xE100000000000000;
      String.append(_:)(v61);
      String.append(_:)(*&v55[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
      v62 = sub_10000D820(aBlock, v75, &v73);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v56, v57, "[%{public}s] requested connect", v58, 0xCu);
      sub_10000377C(v59);
    }

    v70(v54, v72);
    v63 = sub_10000C0CC();
    if (v63)
    {
      [v63 connect];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10000B8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    static Logger.mode.getter();

    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v13 = 136446722;
      HIDWORD(v27) = v12;
      v14 = sub_100003B50();
      v16 = sub_10000D820(v14, v15, &v31);
      v29 = v4;
      v17 = v16;

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = NSStringFromHKSPSleepLockScreenState();
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_10000D820(v19, v21, &v31);

      *(v13 + 14) = v22;
      *(v13 + 22) = 2082;
      v30 = a2;
      sub_10000D7A0(0, &qword_10001D370, &type metadata accessor for Dictionary);

      v23 = String.init<A>(describingOptional:)();
      v25 = sub_10000D820(v23, v24, &v31);

      *(v13 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v11, BYTE4(v27), "[%{public}s] update to state: %{public}s, user info: %{public}s", v13, 0x20u);
      swift_arrayDestroy();

      (*(v5 + 8))(v7, v29);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v26 = *&v10[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_model];
    dispatch thunk of LockScreenContentModel.lockScreenState.setter();
  }
}

void *sub_10000BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
    v15 = static OS_dispatch_queue.main.getter();
    v21 = v9;
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    aBlock[4] = a3;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003B0C;
    aBlock[3] = v22;
    v18 = _Block_copy(aBlock);
    v19 = v14;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000E10C(&qword_10001D470, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000FC54(0, &qword_10001D120, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    sub_100003918();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v21);
  }

  return result;
}

uint64_t sub_10000BEC8(void *a1, const char *a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    v19 = _typeName(_:qualified:)();
    v20 = v14;
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    String.append(_:)(*&v8[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v16 = sub_10000D820(v19, v20, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, v18, v12, 0xCu);
    sub_10000377C(v13);
  }

  (*(v5 + 8))(v7, v4);
  *&v8[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection] = 0;
}

void *sub_10000C0CC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E4F0(0, &qword_10001D440, OS_dispatch_queue_ptr);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = *&v1[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection];
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      v32 = sub_10000DF28;
      v33 = v14;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_10000C770;
      v31 = &unk_100018CB8;
      v15 = _Block_copy(&aBlock);

      v16 = v13;
      v17 = v1;

      v18 = [v16 remoteObjectProxyWithErrorHandler:v15];
      _Block_release(v15);

      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_10000FD74(0, &qword_10001D448, &protocolRef_HKSPSleepLockScreenServer);
      if (swift_dynamicCast())
      {
        return v34;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      static Logger.mode.getter();
      v19 = v1;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = v23;
        *v22 = 136446210;
        aBlock = _typeName(_:qualified:)();
        v29 = v24;
        v25._countAndFlagsBits = 58;
        v25._object = 0xE100000000000000;
        String.append(_:)(v25);
        String.append(_:)(*&v19[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
        v26 = sub_10000D820(aBlock, v29, &v34);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] requested remote server proxy before starting sleepd connection", v22, 0xCu);
        sub_10000377C(v23);
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C4F0(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.mode.getter();
  v8 = a2;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v4;
    v12 = v11;
    v23 = swift_slowAlloc();
    *v12 = 136446466;
    v21 = _typeName(_:qualified:)();
    v22 = v13;
    v14._countAndFlagsBits = 58;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    String.append(_:)(*&v8[OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_debugIdentifier]);
    v15 = sub_10000D820(v21, v22, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v21 = a1;
    swift_errorRetain();
    sub_10000FD10(0, &qword_10001D450, &protocol descriptor for Error);
    v16 = String.init<A>(describing:)();
    v18 = sub_10000D820(v16, v17, &v23);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] error acquiring remote server proxy: %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    return (*(v5 + 8))(v7, v20);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_10000C778(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10000C874()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C984, v8, v7);
}

uint64_t sub_10000C984()
{
  v1 = v0[6];

  if (v1)
  {
    v1 = sub_10000CA50(v0[6]);
  }

  v2 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;
  v0[3] = v1;

  static Published.subscript.setter();
  v3 = v0[1];

  return v3();
}

Swift::Int sub_10000CA50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000D7A0(0, &qword_10001D438, &type metadata accessor for _DictionaryStorage);
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000DF48(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000D810(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000D810(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000D810(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000D810(v32, (v2[7] + 32 * v10));
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

uint64_t sub_10000CEC4()
{
  v1 = OBJC_IVAR____TtC15SleepLockScreen16LockScreenClient__state;
  sub_10000FC54(0, &qword_10001D358, sub_10000D0A4, &type metadata accessor for Published);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for LockScreenClient(uint64_t a1)
{
  result = qword_10001D348;
  if (!qword_10001D348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CFE4(uint64_t a1)
{
  sub_10000FC54(319, &qword_10001D358, sub_10000D0A4, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000D0A4(uint64_t a1)
{
  if (!qword_10001D360)
  {
    type metadata accessor for HKSPSleepLockScreenState(255);
    sub_10000D14C(255, &qword_10001D368, &unk_10001D370, &type metadata accessor for Dictionary, sub_10000D7A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10001D360);
    }
  }
}

void sub_10000D14C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_10000D1A8()
{
  result = qword_10001D378;
  if (!qword_10001D378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10001D378);
  }

  return result;
}

id sub_10000D200(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

double sub_10000D2DC@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10000D360(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000D3E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000FE88;

  return sub_10000C8E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000D4F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000D5F0;

  return v6(a1);
}

uint64_t sub_10000D5F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D6E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FE88;

  return sub_10000D4F8(a1, v4);
}

void sub_10000D7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_10000D1A8();
    v7 = a3(a1, &type metadata for AnyHashable, v6, &protocol witness table for AnyHashable);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_OWORD *sub_10000D810(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000D820(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000D8EC(v11, 0, 0, 1, a1, a2);
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
    sub_10000DF48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000377C(v11);
  return v7;
}

unint64_t sub_10000D8EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000D9F8(a5, a6);
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

char *sub_10000D9F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000DA44(a1, a2);
  sub_10000DB74(&off_100018A10);
  return v3;
}

char *sub_10000DA44(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000DC60(v5, 0);
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
        v7 = sub_10000DC60(v10, 0);
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

uint64_t sub_10000DB74(uint64_t result)
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

  result = sub_10000DCEC(result, v11, 1, v3);
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

void *sub_10000DC60(uint64_t a1, uint64_t a2)
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

  sub_10000FA6C(0, &qword_10001D458, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000DCEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FA6C(0, &qword_10001D458, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

unint64_t sub_10000DDF8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000DE70(a1, a2, v4);
}

unint64_t sub_10000DE70(uint64_t a1, uint64_t a2, uint64_t a3)
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

double sub_10000DF30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10000DF48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000DFE0()
{
  result = qword_10001D468;
  if (!qword_10001D468)
  {
    sub_10000FC54(255, &qword_10001D460, sub_10000D0A4, &type metadata accessor for Published.Publisher);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D468);
  }

  return result;
}

uint64_t sub_10000E10C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000E178(uint64_t a1)
{
  if (!qword_10001D490)
  {
    sub_10000E4F0(255, &qword_10001D498, NSNumber_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10001D490);
    }
  }
}

uint64_t sub_10000E1F0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10000E2E4;

  return v5(v2 + 32);
}

uint64_t sub_10000E2E4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_10000E3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E538(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000DDF8(v5, v6);
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

uint64_t sub_10000E4F0(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_10000E538(uint64_t a1)
{
  if (!qword_10001D4A8)
  {
    sub_10000E4F0(255, &qword_10001D498, NSNumber_ptr);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_10001D4A8);
    }
  }
}

uint64_t sub_10000E5B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E5F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000FE88;

  return sub_1000083B8(a1, v4, v5, v6);
}

uint64_t sub_10000E6AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E6EC(uint64_t a1, uint64_t a2)
{
  sub_10000FC54(0, &qword_10001D4C8, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E780(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_10000FC54(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_10000E860()
{
  if (!qword_10001D4E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10001D4E0);
    }
  }
}

unint64_t sub_10000E8C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F27C(0, &qword_10001D4E8, &type metadata for String, &protocol witness table for String, &type metadata accessor for _DictionaryStorage);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E9F4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000DDF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D810(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10000E9F4(uint64_t a1, uint64_t a2)
{
  sub_10000E860();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EA58()
{
  v1 = type metadata accessor for Alarm();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000EB58(void *a1)
{
  v3 = *(type metadata accessor for Alarm() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100006188(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10000EC10()
{
  v1 = type metadata accessor for Alarm();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_10000ED18()
{
  v1 = *(type metadata accessor for Alarm() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1000065B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10000EE14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EE60()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000EEC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000EF9C;

  return sub_10000A654(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10000EF9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000F090()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F0C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FE88;

  return sub_10000E1F0(a1, v4);
}

uint64_t sub_10000F180(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EF9C;

  return sub_10000E1F0(a1, v4);
}

void sub_10000F27C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, char *))
{
  if (!*a2)
  {
    v6 = (a5)(0, a3, &type metadata for Any[8], a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_10000F2DC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

void sub_10000F378()
{
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_containerView) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_lockScreenStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_isAlertVisible) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_didConfigureHostConnection) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_contentPreferences) = 0;
  *(v0 + OBJC_IVAR____TtC15SleepLockScreen24LockScreenViewController_daemonConnection) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_10000F428(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  sub_10000FA6C(0, &qword_10001D510, &type metadata for Bool, &type metadata accessor for Published.Publisher);
  v46[0] = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - v11;
  v13 = type metadata accessor for LockScreenContentView();
  __chkstk_darwin(v13 - 8);
  v14 = &a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_visibleContentFrame];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_modelSubscriber] = 0;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_alarmSheetSubscriber] = 0;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_delegate + 8] = 0;
  v15 = swift_unknownObjectWeakInit();
  v16 = &a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView____lazy_storage___screenBounds];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = &a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_safeContentBounds];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_contentView] = 0;
  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_model] = a1;
  *(v15 + 8) = &off_100018C00;
  swift_unknownObjectWeakAssign();
  v19 = &a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugIdentifier];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = a1;
  LockScreenContentView.init(model:)();
  sub_10000FABC(0);
  v22 = objc_allocWithZone(v21);
  v23 = _UIHostingView.init(rootView:)();
  v24 = *&a5[v18];
  *&a5[v18] = v23;

  v25 = objc_opt_self();
  v26 = [v25 hksp_internalUserDefaults];
  v27 = [v26 hksp_lockScreenDebugMode];

  v28 = 0;
  if (v27)
  {
    v28 = [objc_allocWithZone(UIView) init];
  }

  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugSafeContentBoundsView] = v28;
  v29 = [v25 hksp_internalUserDefaults];
  v30 = [v29 hksp_lockScreenDebugMode];

  if (v30)
  {
    v31 = [objc_allocWithZone(UIView) init];
  }

  else
  {
    v31 = 0;
  }

  *&a5[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_debugActualContentBoundsView] = v31;
  v32 = type metadata accessor for LockScreenContainerView();
  v47.receiver = a5;
  v47.super_class = v32;
  v33 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100002954();
  type metadata accessor for LockScreenContentModel();
  sub_10000E10C(&qword_10001D528, &type metadata accessor for LockScreenContentModel, &protocol conformance descriptor for LockScreenContentModel);
  v46[1] = ObservableObject<>.objectWillChange.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ObservableObjectPublisher();
  v34 = Publisher<>.sink(receiveValue:)();

  *&v33[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_modelSubscriber] = v34;

  dispatch thunk of LockScreenContentModel.$alarmButtonPressed.getter();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v20;
  sub_10000FBD8();
  v37 = v20;
  v38 = v46[0];
  v39 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v38);
  *&v33[OBJC_IVAR____TtC15SleepLockScreen23LockScreenContainerView_alarmSheetSubscriber] = v39;

  v40 = [v25 hksp_internalUserDefaults];
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 BOOLForKey:v41];

  if (v42)
  {
    v43 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v33 action:"didPan:"];
    [v33 addGestureRecognizer:v43];
  }

  sub_10000FC54(0, &qword_10001D538, sub_10000FCB8, &type metadata accessor for _ContiguousArrayStorage);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000111D0;
  *(v44 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v44 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000FD74(0, &qword_10001D550, &protocolRef_UITraitEnvironment);
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v33;
}

void sub_10000FA6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10000FABC(uint64_t a1)
{
  if (!qword_10001D518)
  {
    type metadata accessor for LockScreenContentView();
    sub_10000E10C(&qword_10001D520, &type metadata accessor for LockScreenContentView, &protocol conformance descriptor for LockScreenContentView);
    v1 = type metadata accessor for _UIHostingView();
    if (!v2)
    {
      atomic_store(v1, &qword_10001D518);
    }
  }
}

uint64_t sub_10000FB50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FB90()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000FBD8()
{
  result = qword_10001D530;
  if (!qword_10001D530)
  {
    sub_10000FA6C(255, &qword_10001D510, &type metadata for Bool, &type metadata accessor for Published.Publisher);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D530);
  }

  return result;
}

void sub_10000FC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_10000FCB8()
{
  result = qword_10001D540;
  if (!qword_10001D540)
  {
    sub_10000FD10(255, &qword_10001D548, &protocol descriptor for UITraitDefinition);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_10001D540);
  }

  return result;
}

uint64_t sub_10000FD10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000FD74(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10000FDDC(uint64_t a1)
{
  if (!qword_10001D558)
  {
    type metadata accessor for LockScreenContentState();
    v1 = type metadata accessor for PassthroughSubject();
    if (!v2)
    {
      atomic_store(v1, &qword_10001D558);
    }
  }
}

uint64_t sub_10000FFA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[LockScreenViewController] received boundsDictionary in ObjC shim", v14, 2u);
  }

  BSDeserializeCGRectFromXPCDictionaryWithKey();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  return (*(*(a1 + 32) + 16))(v6, v8, v10, v12);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}